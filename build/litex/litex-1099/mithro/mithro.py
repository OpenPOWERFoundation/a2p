#!/usr/bin/env python3

# A2P Test - just rom,ram,extra uart
# python3 a2p_cmod7_uarts_simple.py --csr-csv csr.csv --no-compile-software --build
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
from litex.soc.cores.uart import RS232PHY
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


# BaseSoC ------------------------------------------------------------------------------------------

from litex.soc.interconnect import wishbone


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

        # CRG ---------------------------------------------------------------------------------------
        self.submodules.crg = _CRG(platform, sys_clk_freq)

        # GPIO UARTs ---------------------------------------------------------------------------------
        pins = Record([("tx", 1), ("rx", 1)])
        pins.tx = platform.request('digital', 10)
        pins.rx = platform.request('digital', 11)

        self.submodules.uart_1_phy = RS232PHY(pins, sys_clk_freq, 115200, with_dynamic_baudrate=True)
        self.add_csr('uart_1_phy')
        self.submodules.uart_1 = UART(phy=self.uart_1_phy)
        self.add_csr('uart_1')


# Build --------------------------------------------------------------------------------------------

def main():

    parser = argparse.ArgumentParser(description="A2P/cmod7")
    parser.add_argument("--build",                  action="store_true", help="Build bitstream")
    parser.add_argument("--load",                   action="store_true", help="Load bitstream")
    parser.add_argument("--sys-clk-freq",           default=100e6,        help="System clock frequency (default: 100MHz)")

    builder_args(parser)
    soc_sdram_args(parser)
    args = parser.parse_args()

    print(args)

    soc = BaseSoC(
        sys_clk_freq           = int(float(args.sys_clk_freq)),
        #with_analyzer          = args.with_analyzer,
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