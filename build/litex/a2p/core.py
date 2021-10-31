
import os

from migen import *

from litex import get_data_mod
from litex.soc.interconnect import wishbone
from litex.soc.interconnect.csr import *
from litex.soc.cores.cpu import CPU

dir = os.path.dirname(os.path.realpath(__file__))

# these select the top RTL file for each variant name
CPU_VARIANTS = {
    'AXI': 'A2P_AXI',
    'WB':  'A2P_WB',
    'standard': 'A2P_WB'   #wtf litex does this as default
}

GCC_FLAGS = {
   'WB' : '-fomit-frame-pointer -Wall -fno-builtin -nostdinc -fno-stack-protector -fexceptions -Wstrict-prototypes -Wold-style-definition -Wmissing-prototypes'
}

class A2P(CPU, AutoCSR):
    name                 = "a2p"
    human_name           = "a2p"
    variants             = CPU_VARIANTS
    data_width           = 32
    endianness           = "big"
    gcc_triple           = "powerpc-linux-gnu"
    linker_output_format = "elf32-powerpc"
    nop                  = "nop"
    io_regions           = {0x80000000: 0x80000000} # origin, length

    @property
    def mem_map(self):
        return {
            "rom":          0x00000000,
            "sram":         0x00004000,
            "main_ram":     0x40000000,
            "csr":          0xf0000000,
        }

    @property
    def gcc_flags(self):
        flags = GCC_FLAGS[self.variant]
        flags += " -D__a2p__"
        return flags

    def __init__(self, platform, variant='WB'):

         if variant == 'standard':
            variant = 'WB'

         self.platform         = platform
         self.variant          = variant
         self.human_name       = CPU_VARIANTS.get(variant, "A2P")
         self.external_variant = None
         self.reset            = Signal()
         self.interrupt        = Signal(32)
         self.interruptS       = Signal()
         self.ibus             = ibus = wishbone.Interface()
         self.dbus             = dbus = wishbone.Interface()
         self.periph_buses     = [ibus, dbus]
         self.memory_buses     = []
         self.enableDebug      = False
         self.enableJTAG       = False
         self.externalResetVector = 0

        # # #

         self.cpu_params = dict(
                i_clk                    = ClockSignal(),
                i_reset                  = ResetSignal() | self.reset,

                i_externalInterrupt  = self.interrupt[0],
                i_externalInterruptS = self.interruptS,
                i_timerInterrupt    = 0,
                i_softwareInterrupt = 0,

                o_iBusWB_ADR      = ibus.adr,
                o_iBusWB_DAT_MOSI = ibus.dat_w,
                o_iBusWB_SEL      = ibus.sel,
                o_iBusWB_CYC      = ibus.cyc,
                o_iBusWB_STB      = ibus.stb,
                o_iBusWB_WE       = ibus.we,
                o_iBusWB_CTI      = ibus.cti,
                o_iBusWB_BTE      = ibus.bte,
                i_iBusWB_DAT_MISO = ibus.dat_r,
                i_iBusWB_ACK      = ibus.ack,
                i_iBusWB_ERR      = ibus.err,

                o_dBusWB_ADR      = dbus.adr,
                o_dBusWB_DAT_MOSI = dbus.dat_w,
                o_dBusWB_SEL      = dbus.sel,
                o_dBusWB_CYC      = dbus.cyc,
                o_dBusWB_STB      = dbus.stb,
                o_dBusWB_WE       = dbus.we,
                o_dBusWB_CTI      = dbus.cti,
                o_dBusWB_BTE      = dbus.bte,
                i_dBusWB_DAT_MISO = dbus.dat_r,
                i_dBusWB_ACK      = dbus.ack,
                i_dBusWB_ERR      = dbus.err
            )

         self.cpu_params['i_externalResetVector'] = self.externalResetVector

         # these need to connect to top nets
         if self.enableDebug:
            self.cpu_params['i_debugReset'] = 0
            self.cpu_params['o_debug_resetOut'] = 0
            self.cpu_params['i_debug_bus_cmd_valid'] = 0
            self.cpu_params['i_debug_bus_cmd_ready'] = 0
            self.cpu_params['i_debug_bus_cmd_payload_wr'] = 0
            self.cpu_params['i_debug_bus_cmd_payload_address'] = 0
            self.cpu_params['i_debug_bus_cmd_payload_data'] = 0
            self.cpu_params['o_debug_bus_rsp_data'] = 0

         if self.enableJTAG:
            self.cpu_params['i_jtag_tms'] = 0
            self.cpu_params['i_jtag_tck'] = 0
            self.cpu_params['i_jtag_tdi'] = 0
            self.cpu_params['o_jtag_tdo'] = 0

    def set_reset_address(self, reset_address):
        assert not hasattr(self, "reset_address")
        self.reset_address = reset_address
        self.cpu_params.update(i_externalResetVector=Signal(32, reset=reset_address))

    @staticmethod
    def add_sources(platform, variant="WB"):
        cpu_filename = CPU_VARIANTS[variant] + ".v"
        vdir = os.path.join(dir, 'verilog')
        platform.add_source(os.path.join(vdir, cpu_filename))

    def use_external_variant(self, variant_filename):
        self.external_variant = True
        self.platform.add_source(variant_filename)

    def do_finalize(self):
        assert hasattr(self, "reset_address")
        if not self.external_variant:
            self.add_sources(self.platform, self.variant)
        self.specials += Instance("A2P_WB", **self.cpu_params)
