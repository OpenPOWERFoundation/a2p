#!/usr/bin/env python3

# A2P Test
# python3 a2p_cmod7_uarts.py --csr-csv csr.csv --no-compile-software --build
#

import os
import argparse

from migen import *

# local platform
from platforms import cmod7

# local core
import sys
binPath = os.path.dirname(os.path.realpath(__file__))
sys.path.append(os.path.join(binPath, 'a2p'))
from a2p import A2P
from litex.soc.cores import cpu
cpu.CPUS['a2p'] = A2P               # add to litex dict

# local modules
sys.path.append(os.path.join(binPath, 'modules'))

from litex.soc.cores.clock import *
from litex.soc.integration.soc import colorer
from litex.soc.integration.soc import SoCRegion
from litex.soc.integration.soc_core import *
from litex.soc.integration.soc_sdram import *
from litex.soc.integration.builder import *

from litex.soc.cores.led import LedChaser
from litex.soc.cores import dna, xadc
from litex.soc.cores.gpio import GPIOIn
from litex.soc.cores.gpio import GPIOOut
from litex.soc.cores.bitbang import I2CMaster

from litex.soc.interconnect import wishbone

from litex.soc.cores import uart
from litex.soc.cores.uart import UART
from litex.soc.cores.uart import UARTPHY
from litex.soc.cores.uart import UARTBone
from litex.soc.cores.uart import UARTWishboneBridge
from litex.soc.cores.uart import UARTCrossover
from litescope import LiteScopeAnalyzer

from litex.soc.interconnect.csr import *


# CRG ----------------------------------------------------------------------------------------------

class _CRG(Module):
    def __init__(self, platform, sys_clk_freq):
        self.rst = Signal()
        self.clock_domains.cd_sys       = ClockDomain()
        self.clock_domains.cd_sys2x     = ClockDomain(reset_less=True)
        self.clock_domains.cd_idelay    = ClockDomain()

        self.submodules.pll = pll = S7MMCM(speedgrade=-1)
        #wtf no idea how to modify the reset signal later (add btn0)
        self.comb += pll.reset.eq(self.rst)
        pll.register_clkin(platform.request("clk12"), 12e6)
        pll.create_clkout(self.cd_sys,       sys_clk_freq)
        pll.create_clkout(self.cd_sys2x,     2*sys_clk_freq)
        pll.create_clkout(self.cd_idelay,    200e6)
        platform.add_false_path_constraints(self.cd_sys.clk, pll.clkin)
        self.submodules.idelayctrl = S7IDELAYCTRL(self.cd_idelay)

class CSRDirectory(GenericBank, AutoCSR):
   def __init__(self, description='CSR Directory', busword=32, ordering='big'):
      AutoCSR.__init__(self)
      GenericBank.__init__(self, description, busword, ordering)


# BaseSoC ------------------------------------------------------------------------------------------

from litex.soc.interconnect import wishbone

def _to_signal(obj):
      return obj.raw_bits() if isinstance(obj, Record) else obj

class BaseSoC(SoCCore):

    def __init__(self, sys_clk_freq=int(50e6),
                       with_analyzer=False,
                       uart_baudrate=115200,
                       **kwargs):

        platform = cmod7.Platform()

        SoCCore.__init__(self, platform, sys_clk_freq, csr_data_width=32,
            #with_uart=True, uart_name='crossover+bridge', integrated_sram_size=0, integrated_rom_size=0,
            with_uart=True, integrated_sram_size=0, integrated_rom_size=0,
            ident="A2P", ident_version=True, uart_baudrate=uart_baudrate,
            cpu_type='a2p')

        #wtf no irq yet
        self.add_constant("UART_POLLING")

        # rom, sram are referenced by code linker so names must match!!!
        self.mem_map = {
         "csr":      0xFFF00000,
         "sram":     0x00100000,
         "rom":      0x00000000
        }

        self.csr_map = {
           'directory': 6,
           'uart' : 5,
           'ctrl' : 0xFFF02000
        }

        # CRG ---------------------------------------------------------------------------------------
        self.submodules.crg = _CRG(platform, sys_clk_freq)

        # CSR Directory -----------------------------------------------------------------------------

        # goes to csr(0) but dont see reset, and all the csr arent given addresses
        #  by the time this is done
        # also not showing in final csr's
        csrDirectory = CSRDirectory([
           # should be this probably, but 'CSRConstant' object has no attribute 'finalize'
           #CSRConstant(name='directory', value=0x08675309)
           CSRStorage(name='directory', reset=0x08675309),
           CSRStorage(name='csr_0800'),
           #CSRStorage(name='csr_1000'),
           #CSRStorage(name='csr_1800'),
           # ...
        ], 32, 'big')
        self.submodules.directory = csrDirectory
        self.add_csr('directory')

        # so can the reset values be set at the end, OR can all but loc 0 be added at the end??
        for c in csrDirectory.simple_csrs:
           print(c.name)

        # UART w/crossover --------------------------------------------------------------------------
        # uart_name="crossover+bridge"??? didn't help
        # lxserver --uart --uart-port /dev/ttyUSB1 connects
        # then litex_cli --regs fails with timeout
        # cd build; litex_cli --regs fails with no bases attritute
        #self.submodules.uart_xover = UARTCrossover()

        # ON-BOARD MEM ------------------------------------------------------------------------------

        rom_size = 0x10000
        with open('rom.init', 'r') as file:
          hexdata = file.read().replace('\n', '')

        outFile = open('mem_1.init', 'w') # write data immediately so available even if not building (sim)
        bytedata = []
        for i in range(0, len(hexdata), 8):
          data = int(hexdata[i+6:i+8] + hexdata[i+4:i+6] + hexdata[i+2:i+4] + hexdata[i:i+2], 16)  # BE->LE
          bytedata.append(data)
          outFile.write(hexdata[i+6:i+8] + hexdata[i+4:i+6] + hexdata[i+2:i+4] + hexdata[i:i+2] + '\n')
        romdata = bytedata
        outFile.close()
        if len(romdata)*4 > rom_size:
          self.logger.info('ROM {} {} {}.'.format(
            colorer('Read', color='red'),
            colorer(len(romdata)*4, color='red'),
            colorer('bytes for preload.  Too big!', color='red')))
          quit(-100)
        else:
           self.logger.info('ROM {} {} {}.'.format(
             colorer('Read', color='bright'),
             colorer(len(romdata)*4, color='cyan'),
             colorer('bytes for preload.  Wrote mem_1.init.', color='bright')))

        self.add_rom("rom", origin=self.mem_map["rom"], size=rom_size, contents=romdata)

        # Internal SRAM (64K) -----------------------------------------------------------------------
        #self.add_ram("sram", origin=self.mem_map["sram"], size=0x10000)

        # External SRAM (512K) -----------------------------------------------------------------------

        from issiram import ISSIRam
        platform.add_source("./modules/issiram.v")

        sram_bus = wishbone.Interface()
        pins = platform.request('issiram')
        mem = {
         'ce': pins.cen,
         'oe': pins.oen,
         'we': pins.wen,
         'adr': pins.addr,
         'dat': pins.data
        }
        sram = ISSIRam(self, ClockSignal(), ResetSignal(), sram_bus, mem)
        self.submodules.sram = sram
        self.bus.add_slave('sram', sram_bus,
                           SoCRegion(origin=self.mem_map['sram'], size=sram.size))
        self.logger.info("SRAM {} {} {}.".format(
            colorer('sram'),
            colorer("added", color="green"),
            self.bus.regions['sram']))

        # FPGA identification ------------------------------------------------------------------------
        self.submodules.dna = dna.DNA()
        self.add_csr("dna")

        # FPGA temperature/voltage -------------------------------------------------------------------
        self.submodules.xadc = xadc.XADC()
        self.add_csr("xadc")

        # Leds ---------------------------------------------------------------------------------------
        self.submodules.leds = LedChaser(
            pads         = platform.request_all("user_led"),
            sys_clk_freq = sys_clk_freq
        )
        self.add_csr("leds")

        # Buttons ------------------------------------------------------------------------------------
        self.submodules.buttons = GPIOIn(
            pads         = platform.request_all("user_btn")
        )
        self.add_csr("buttons")

        # GPIO I2C -----------------------------------------------------------------------------------
        i2c_0 = Record([("scl", 1), ("sda", 1)])
        i2c_0.scl = platform.request('pmod', 0)   # P1
        i2c_0.sda = platform.request('pmod', 1)   # P2
        #wtf needs to be 'i2c' for bios for now
        self.submodules.i2c = I2CMaster(i2c_0)
        self.add_csr('i2c')

        # GPIO UARTs ---------------------------------------------------------------------------------
        pins = Record([("tx", 1), ("rx", 1)])
        pins.tx = platform.request('digital', 10)
        pins.rx = platform.request('digital', 11)
        #self.submodules.uart_1 = UARTWishboneBridge(pins, sys_clk_freq, baudrate=115200)
        #self.add_wb_master(self.uart_1.wishbone)

        #self.submodules.uart_1 = UART(UARTPHY(pins, sys_clk_freq, 115200))
        #self.submodules.uart_1 = UARTBone(UARTPHY(pins, sys_clk_freq, 115200), sys_clk_freq)
        #self.add_csr('uart_1')

        self.submodules.uart_1_phy = UARTPHY(pins, sys_clk_freq, 115200)
        self.submodules.uart_1 = UARTBone(phy=self.uart_1_phy, clk_freq=sys_clk_freq)
        self.bus.add_master(name='uart_1', master=self.uart_1.wishbone)

        # GPIO Custom Serial -------------------------------------------------------------------------
        self.submodules.dshot_0 = GPIOOut(
            pads = platform.request("digital", 43)         # P48
        )
        self.add_csr("dshot_0")

        #wtf need to try...
        # Analyzer -----------------------------------------------------------------------------------
        if with_analyzer:
            analyzer_signals = [
                # IBus
                self.cpu.ibus.stb,
                self.cpu.ibus.cyc,
                self.cpu.ibus.adr,
                self.cpu.ibus.we,
                self.cpu.ibus.ack,
                self.cpu.ibus.sel,
                self.cpu.ibus.dat_w,
                self.cpu.ibus.dat_r,
                # DBus
                self.cpu.dbus.stb,
                self.cpu.dbus.cyc,
                self.cpu.dbus.adr,
                self.cpu.dbus.we,
                self.cpu.dbus.ack,
                self.cpu.dbus.sel,
                self.cpu.dbus.dat_w,
                self.cpu.dbus.dat_r,
            ]
            self.submodules.analyzer = LiteScopeAnalyzer(analyzer_signals,
                depth        = 512,
                clock_domain = "sys",
                csr_csv      = "analyzer.csv")
            self.add_csr("analyzer")

        # at this point, only 0:6 show up (7:10) show in print after finalization()
       # print(self.csr)
       # print('\n\n\n\n')

# Build --------------------------------------------------------------------------------------------

def main():

    parser = argparse.ArgumentParser(description="A2P/cmod7")
    parser.add_argument("--build",                  action="store_true", help="Build bitstream")
    parser.add_argument("--load",                   action="store_true", help="Load bitstream")
    parser.add_argument("--sys-clk-freq",           default=100e6,        help="System clock frequency (default: 100MHz)")
    parser.add_argument("--with-analyzer",          action="store_true", help="Include analyzer")

    builder_args(parser)
    soc_sdram_args(parser)
    args = parser.parse_args()

    print(args)

    soc = BaseSoC(
        sys_clk_freq           = int(float(args.sys_clk_freq)),
        with_analyzer          = args.with_analyzer,
        **soc_sdram_argdict(args)
    )

    builder = Builder(soc, **builder_argdict(args))
    # csrs arent all assigned by here either
    #print('wtf',soc.csr)
    builder.build(run=args.build)

    #wtf needs openocd!!!
    if args.load:
        prog = soc.platform.create_programmer()
        prog.load_bitstream(os.path.join(builder.gateware_dir, soc.build_name + ".bit"))

if __name__ == "__main__":
    main()
