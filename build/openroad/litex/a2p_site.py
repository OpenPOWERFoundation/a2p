#!/usr/bin/python3

# A2P Caravel Site Test
# python3 a2p_site.py
#
# 1 or 2 cores
# Manager (wb is only slave)
# Async RAM interface  ** won't work - only half of io can be outputs **
#  use custom serial interface ~ 8 pins, 4B/32B packets
# UARTs
# I2C
# special-purpose GPIO
# Mgmt interface
# Beer on tap

import os
import argparse

from migen import *

# wtf - use local platform
from platforms import caravel_user

# wtf - use local core
# help python find package
import sys
binPath = os.path.dirname(os.path.realpath(__file__))
sys.path.append(os.path.join(binPath, 'a2p'))
# get core def
from a2p import A2P
# add to litex dict
from litex.soc.cores import cpu
cpu.CPUS['a2p'] = A2P

# local modules
sys.path.append(os.path.join(binPath, 'modules'))

from litex.soc.integration.soc import colorer
from litex.soc.integration.soc import SoCRegion
from litex.soc.integration.soc_core import *
from litex.soc.integration.soc_sdram import *
from litex.soc.integration.builder import *

from litex.soc.cores.led import LedChaser
from litex.soc.cores.gpio import GPIOIn
from litex.soc.cores.gpio import GPIOOut
from litex.soc.cores.bitbang import I2CMaster

from litex.soc.interconnect import wishbone
from litex.soc.interconnect import csr

from litex.soc.cores.uart import UART
from litex.soc.cores.uart import RS232PHY

# possibly use octspi with a memory controller to send/rcv 32b/128b data with header and crc?
#from litespi.common import *
#from litespi.phy.generic_sdr import LiteSPISDRPHYCore
#from litespi.phy.generic_ddr import LiteSPIDDRPHYCore


# BaseSoC ------------------------------------------------------------------------------------------

from litex.soc.interconnect import wishbone

def _to_signal(obj):
      return obj.raw_bits() if isinstance(obj, Record) else obj

class BaseSoC(SoCCore):

    def __init__(self, sys_clk_freq=50e6, uart_baudrate=115200,  **kwargs):

        platform = caravel_user.Platform()

        SoCCore.__init__(self, platform, 50e6, sys_clk_freq=50e6, cpu_type='a2p',
            csr_data_width=32, with_uart=False, integrated_sram_size=0, integrated_rom_size=0,
            ident='A2P Caravel Site Test', ident_version=True)

        # no irq yet
        self.add_constant('UART_POLLING')

        self.mem_map = {
         'csr':      0xFFF00000,
         'sram':     0x00000000,
         'mgmt':     0xE0000000
        }


        # I/O connections --------------------------------------------------------------------------
        # clk is connected by platform
        # make these exist even if unconnected so i/o are defined

        # --- clk/rst
        #self.sys_rst = Signal() #this creates sys_rst_1
        #self.comb += self.int_rst.eq(platform.request('wb_rst_i')) no idea how to connect to top level sigs that are magically gen'd
        # apprarently they give you a few things useful!
        self.sys_rst = ResetSignal()
        self.comb += self.sys_rst.eq(platform.request('wb_rst_i'))
        # but gens some whack logic
        # always @(*) begin
	     #   sys_rst <= 1'd0;
	     #   sys_rst <= wb_rst_i;
	     #   sys_rst <= int_rst;
        # end

        self.user_clock2 = Signal()
        self.comb += self.user_clock2.eq(platform.request('user_clock2'))

        # --- wb
        # options:
        #  * unused
        #  * user area is slave (config/test only)
        #  * user area is master/slave - not possible - NO MASTER SIGS!!!

        # slave interface for mgmt macro (core controls, etc.); could hang csr off it and interface through them
        # i suppose then you could let the csr be read/written by both sides, so you could do some polled mailbox messaging; probs could proxy i/o through pico
        # they would have to be r/w by 2 different wb's
        self.wb_mgmt = wishbone.Interface()
        self.wb_io = Record([('cyc', 1), ('stb', 1), ('we', 1), ('sel', 4), ('adr', 32), ('ack', 1), ('dat_r', 32), ('dat_w', 32),
                             ('cti', 1), ('bte', 32), ('err', 1)])
        self.wb_io.cyc = platform.request('wbs_cyc_i')
        self.wb_io.stb = platform.request('wbs_stb_i')
        self.wb_io.we = platform.request('wbs_we_i')
        self.wb_io.sel = platform.request('wbs_sel_i')
        self.wb_io.adr = platform.request('wbs_adr_i')
        self.wb_io.ack = platform.request('wbs_ack_o')
        self.wb_io.dat_r = platform.request('wbs_dat_o')
        self.wb_io.dat_w = platform.request('wbs_dat_i')
        self.wb_io.cti = Signal()
        self.wb_io.bte = Signal()
        self.wb_io.err = Signal()
        self.wb_mgmt.connect_to_pads(self.wb_io, mode='slave')

        #somehow get this built and then connected to 2 wb
        #self.wb_shared = wishbone.InterconnectShared(masters,slaves)
        self.mailbox = csr.CSRStorage(size=16, name='mailbox')
        self.add_csr('mailbox')

        # --- gpio
        self.in_in = Signal(19)
        self.comb += self.in_in.eq(platform.request('in_in'))
        self.in_out = Signal(19)
        self.comb += self.in_out.eq(platform.request('in_out'))
        self.in_oeb = Signal(19)
        self.comb += self.in_oeb.eq(platform.request('in_oeb'))
        # skip analog_in; too curvy

        # allocate
        uart_0_io = {
           'rx': self.in_in[0],
           'tx': self.in_out[0]
        }
        uart_1_io = {
           'rx': self.in_in[1],
           'tx': self.in_out[1]
        }
        i2c_io = {
           'scl': self.in_out[2],
           'sda': self.in_out[3]
        }
        dshot_io = self.in_out[3:6]
        # toss
        ram_io = {
          'ce': Signal(1),
           'oe': Signal(),    # self.in_out[7],
           'we': Signal(),    # self.in_out[8],
           'adr': Signal(19), # self.in_out[18:0],
           'dat': Signal(8)   # self.in_out[18:11]
        }

        # --- misc
        self.user_irq = Signal(3)
        self.comb += self.user_irq.eq(platform.request('user_irq'))

        # --- la
        self.la_data_in = Signal(128)
        self.comb += self.la_data_in.eq(platform.request('la_data_in'))
        self.la_data_out = Signal(128)
        self.comb += self.la_data_out.eq(platform.request('la_data_out'))
        self.la_oenb = Signal(128)
        self.comb += self.la_oenb.eq(platform.request('la_oenb'))

        # ON-BOARD MEM ------------------------------------------------------------------------------
        # None, unless a small 'ROM'-like device
        #self.add_rom('rom', origin=self.mem_map['rom'], size=rom_size, contents=romdata)

        # MANAGER -----------------------------------------------------------------------------------
        # service processor stuff controlled by the man

        # External SRAM (512K) -----------------------------------------------------------------------
        # GPIO-connected SRAM/FPGA

        #  *** doh, won't work - only half the i/o are outputs!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! ***
        # will have to resurrect custom serial i/o with fpga on other end

        from issiram import ISSIRam
        platform.add_source('./momv modules/issiram.v')

        sram_bus = wishbone.Interface()
        sram = ISSIRam(self, ClockSignal(), ResetSignal(), sram_bus, ram_io)
        self.submodules.sram = sram
         #     ERROR: Output port top.issiram.mem_adr (issiram) is connected to constants: { \basesoc_in_out [17:0] 1'x }
         #     Command exited with non-zero status 1
         #     Elapsed time: 0:12.27[h:]min:sec. CPU time: user 11.77 sys 0.48 (99%). Peak memory: 1468464KB.
         #     make: *** [Makefile:354: results/sky130hd/a2p_litex/output/20211125085224/base/1_1_yosys.v] Error 1
        self.bus.add_slave('sram', sram_bus, SoCRegion(origin=self.mem_map['sram'], size=sram.size))
        #self.logger.info('SRAM {} {} {}.'.format(
        #    colorer('sram'),
        #    colorer('added', color='green'),
        #    self.bus.regions['sram']))

        # Leds n LaserBeams -----------------------------------------------------------------------
        #self.submodules.leds = LedChaser(
        #    pads         = platform.request_all('user_led'),
        #    sys_clk_freq = sys_clk_freq
        #)
        #self.add_csr('leds')

        # Buttons n KillSwitches ------------------------------------------------------------------
        #self.submodules.buttons = GPIOIn(
        #    pads         = platform.request_all('user_btn')
        #)
        #self.add_csr('buttons')

        # GPIO I2C
        #wtf must be an elegant pythonic way to do this junk
        pins = Record([('scl', 1), ('sda', 1)])
        pins.scl = i2c_io['scl']
        pins.sda = i2c_io['sda']
        #wtf needs to be 'i2c' for bios for now
        self.submodules.i2c = I2CMaster(pins)
        self.add_csr('i2c')

        # GPIO UARTs = 2 pins per -----------------------------------------------------------------
        pins = Record([('rx', 1), ('tx', 1)])
        pins.rx = uart_0_io['rx']
        pins.tx = uart_0_io['tx']
        self.submodules.uart_0_phy = RS232PHY(pins, sys_clk_freq, with_dynamic_baudrate=True)
        self.add_csr('uart_0_phy')
        self.submodules.uart_0 = UART(phy=self.uart_0_phy)
        self.add_csr('uart_0')

        pins = Record([('rx', 1), ('tx', 1)])
        pins.rx = uart_1_io['tx']
        pins.tx = uart_1_io['tx']
        self.submodules.uart_1_phy = RS232PHY(pins, sys_clk_freq, with_dynamic_baudrate=True)
        self.add_csr('uart_1_phy')
        self.submodules.uart_1 = UART(phy=self.uart_1_phy)
        self.add_csr('uart_1')

        # DShot M0:M3 (no telemetry) = 4 pins -----------------------------------------------------
        #self.submodules.dshot = DShot(dshot_io)
        #self.add_csr('dshot')

# Build -------------------------------------------------------------------------------------------

def main():

    parser = argparse.ArgumentParser(description='A2P Caravel Test Site')

    builder_args(parser)
    soc_sdram_args(parser)
    args = parser.parse_args()

    soc = BaseSoC(**soc_sdram_argdict(args))
    builder = Builder(soc, **builder_argdict(args))

    soc.build_name = 'wtf' #wtf dont work!
    builder.build_name = 'wtf' #wtf dont work!
    builder.compile_software = False
    builder.csr_csv = 'csr.csv'
    builder.build(run=False)

if __name__ == "__main__":
    main()
