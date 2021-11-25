
# virtual platform for efabless caravel user area
# tots general-purpose (no defined i/o for specific site being built)


from litex.build.generic_platform import *

'''
defines.v:`define MPRJ_IO_PADS_1 19        /* number of user GPIO pads on user1 side */
defines.v:`define MPRJ_IO_PADS_2 19        /* number of user GPIO pads on user2 side */

module user_project_wrapper #(
    parameter BITS = 32
`ifdef USE_POWER_PINS
    inout vdda1,	// User area 1 3.3V supply
    inout vdda2,	// User area 2 3.3V supply
    inout vssa1,	// User area 1 analog ground
    inout vssa2,	// User area 2 analog ground
    inout vccd1,	// User area 1 1.8V supply
    inout vccd2,	// User area 2 1.8v supply
    inout vssd1,	// User area 1 digital ground
    inout vssd2,	// User area 2 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // Analog (direct connection to GPIO pad---use with caution)
    // Note that analog I/O is not available on the 7 lowest-numbered
    // GPIO pads, and so the analog_io indexing is offset from the
    // GPIO indexing by 7 (also upper 2 GPIOs do not have analog_io).
    inout [`MPRJ_IO_PADS-10:0] analog_io,

    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq
);
'''

# IOs ----------------------------------------------------------------------------------------------

_io = [
    # Clk / Rst
    ('wb_clk_i', 0, Pins(1)),
    ('user_clock2', 0, Pins(1)),
    ("wb_rst_i", 0, Pins(1)),

    # WB Slave
    ('wbs_stb_i',  0, Pins(1)),
    ('wbs_cyc_i',  0, Pins(1)),
    ('wbs_we_i',  0, Pins(1)),
    ('wbs_sel_i',  0, Pins(4)),
    ('wbs_adr_i',  0, Pins(32)),
    ('wbs_dat_i',  0, Pins(32)),
    ('wbs_ack_o',  0, Pins(1)),
    ('wbs_dat_o',  0, Pins(32)),

   # GPIO
    ('in_in',  0, Pins(19)),
    ('in_out',  0, Pins(19)),
    ('in_oeb',  0, Pins(1)),
    ('analog_in',  0, Pins(1)),

    # Misc
    ('user_irq',  0, Pins(3)),

    # LA
    ('la_data_in',  0, Pins(128)),
    ('la_data_out',  0, Pins(128)),
    ('la_oenb',  0, Pins(128))
]

# Platform -----------------------------------------------------------------------------------------


# Platform -----------------------------------------------------------------------------------------

# this somehow appears to work
from platforms.virtual import VirtualPlatform

class Platform(VirtualPlatform):
    default_clk_name   = 'wb_clk_i'
    default_clk_period = 1e9/50e6

    def __init__(self):
        VirtualPlatform.__init__(self, 'caravel_user', _io)

    def do_finalize(self, fragment):
        VirtualPlatform.do_finalize(self, fragment)

'''
from litex.build.xilinx import XilinxPlatform, VivadoProgrammer

class Platform(XilinxPlatform):
    default_clk_name   = 'wb_clk_i'
    default_clk_period = 1e9/50e6

    def __init__(self):
        XilinxPlatform.__init__(self, "xc7a35t-CPG236-1", _io, toolchain="vivado")

    def do_finalize(self, fragment):
        XilinxPlatform.do_finalize(self, fragment)
'''