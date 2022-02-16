`include "defs.v"

module top #(
   parameter [0:15] CORE_TYPES = {`CORE_TYPE_WB2, `CORE_TYPE_WB2, `CORE_TYPE_WB2, `CORE_TYPE_WB2},
   parameter [0:3] BUS_TYPE = `BUS_TYPE_WB2
) (
   input                       clk,
   input                       rst,
   output                      wb_i_stb,
   output                      wb_i_cyc,
   output [31:0]               wb_i_adr,
   input                       wb_i_ack,
   input  [31:0]               wb_i_datr,
   output                      wb_d_stb,
   output                      wb_d_cyc,
   output [31:0]               wb_d_adr,
   output                      wb_d_we,
   output [3:0]                wb_d_sel,
   output [31:0]               wb_d_datw,
   input                       wb_d_ack,
   input  [31:0]               wb_d_datr
);

wire [`WB2_WB_IN_START:0] c0_in;
wire [`WB2_WB_OUT_START:0] c0_out;
wire [`WB2_WB_IN_START:0] c1_in;
wire [`WB2_WB_OUT_START:0] c1_out;
wire [`WB2_WB_IN_START:0] c2_in;
wire [`WB2_WB_OUT_START:0] c2_out;
wire [`WB2_WB_IN_START:0] c3_in;
wire [`WB2_WB_OUT_START:0] c3_out;

wire [`BUS_WB2_IN_START:0] wb_in;
wire [`BUS_WB2_OUT_START:0] wb_out;

wire              rst_0 /*verilator public*/;
wire              wb_i_stb_0;
wire              wb_i_cyc_0;
//wire              wb_i_we_0;
//wire   [3:0]      wb_i_sel_0;
wire   [31:2]     wb_i_adr_0;
//wire   [31:0]     wb_i_datw_0;
wire              wb_i_ack_0;
wire   [31:0]     wb_i_datr_0;
wire              wb_d_stb_0;
wire              wb_d_cyc_0;
wire              wb_d_we_0;
wire   [3:0]      wb_d_sel_0;
wire   [31:2]     wb_d_adr_0;
wire   [31:0]     wb_d_datw_0;
wire              wb_d_ack_0;
wire   [31:0]     wb_d_datr_0;
wire              ext_int_0;
wire              ext_int_s_0;
wire   [31:0]     ext_rst_vector_0;
wire              soft_int_0;
wire              timer_int_0;

wire              rst_1 /*verilator public*/;
wire              wb_i_stb_1;
wire              wb_i_cyc_1;
//wire              wb_i_we_1;
//wire   [3:0]      wb_i_sel_1;
wire   [31:2]     wb_i_adr_1;
//wire   [31:0]     wb_i_datw_1;
wire              wb_i_ack_1;
wire   [31:0]     wb_i_datr_1;
wire              wb_d_stb_1;
wire              wb_d_cyc_1;
wire              wb_d_we_1;
wire   [3:0]      wb_d_sel_1;
wire   [31:2]     wb_d_adr_1;
wire   [31:0]     wb_d_datw_1;
wire              wb_d_ack_1;
wire   [31:0]     wb_d_datr_1;
wire              ext_int_1;
wire              ext_int_s_1;
wire   [31:0]     ext_rst_vector_1;
wire              soft_int_1;
wire              timer_int_1;

wire              rst_2 /*verilator public*/;
wire              wb_i_stb_2;
wire              wb_i_cyc_2;
//wire              wb_i_we_2;
//wire   [3:0]      wb_i_sel_2;
wire   [31:2]     wb_i_adr_2;
//wire   [31:0]     wb_i_datw_2;
wire              wb_i_ack_2;
wire   [31:0]     wb_i_datr_2;
wire              wb_d_stb_2;
wire              wb_d_cyc_2;
wire              wb_d_we_2;
wire   [3:0]      wb_d_sel_2;
wire   [31:2]     wb_d_adr_2;
wire   [31:0]     wb_d_datw_2;
wire              wb_d_ack_2;
wire   [31:0]     wb_d_datr_2;
wire              ext_int_2;
wire              ext_int_s_2;
wire   [31:0]     ext_rst_vector_2;
wire              soft_int_2;
wire              timer_int_2;

wire              rst_3 /*verilator public*/;
wire              wb_i_stb_3;
wire              wb_i_cyc_3;
//wire              wb_i_we_3;
//wire   [3:0]      wb_i_sel_3;
wire   [31:2]     wb_i_adr_3;
//wire   [31:0]     wb_i_datw_3;
wire              wb_i_ack_3;
wire   [31:0]     wb_i_datr_3;
wire              wb_d_stb_3;
wire              wb_d_cyc_3;
wire              wb_d_we_3;
wire   [3:0]      wb_d_sel_3;
wire   [31:2]     wb_d_adr_3;
wire   [31:0]     wb_d_datw_3;
wire              wb_d_ack_3;
wire   [31:0]     wb_d_datr_3;
wire              ext_int_3;
wire              ext_int_s_3;
wire   [31:0]     ext_rst_vector_3;
wire              soft_int_3;
wire              timer_int_3;


// core in/out viewed by core
assign c0_out = {wb_i_stb_0, wb_i_cyc_0, 1'b0     , 4'b0,       {wb_i_adr_0, 2'b0}, 32'b0,       1'b0, 32'b0, 24'b0,
                 wb_d_stb_0, wb_d_cyc_0, wb_d_we_0, wb_d_sel_0, {wb_d_adr_0, 2'b0}, wb_d_datw_0, 1'b0, 32'b0, 24'b0,
                 ext_int_0, ext_int_s_0, ext_rst_vector_0, soft_int_0, timer_int_0, 92'b0};

assign {wb_i_ack_0, wb_i_datr_0} = c0_in[`WB2_I_WB_IN_START:`WB2_I_WB_IN_START-32];
assign {wb_d_ack_0, wb_d_datr_0} = c0_in[`WB2_D_WB_IN_START:`WB2_D_WB_IN_START-32];

assign c1_out = {wb_i_stb_1, wb_i_cyc_1, 1'b0     , 4'b0,       {wb_i_adr_1, 2'b0}, 32'b0,       1'b0, 32'b0, 24'b0,
                 wb_d_stb_1, wb_d_cyc_1, wb_d_we_1, wb_d_sel_1, {wb_d_adr_1, 2'b0}, wb_d_datw_1, 1'b0, 32'b0, 24'b0,
                 ext_int_1, ext_int_s_1, ext_rst_vector_1, soft_int_1, timer_int_1, 92'b0};

assign {wb_i_ack_1, wb_i_datr_1} = c1_in[`WB2_I_WB_IN_START:`WB2_I_WB_IN_START-32];
assign {wb_d_ack_1, wb_d_datr_1} = c1_in[`WB2_D_WB_IN_START:`WB2_D_WB_IN_START-32];

assign c2_out = {wb_i_stb_2, wb_i_cyc_2, 1'b0     , 4'b0,       {wb_i_adr_2, 2'b0}, 32'b0,       1'b0, 32'b0, 24'b0,
                 wb_d_stb_2, wb_d_cyc_2, wb_d_we_2, wb_d_sel_2, {wb_d_adr_2, 2'b0}, wb_d_datw_2, 1'b0, 32'b0, 24'b0,
                 ext_int_2, ext_int_s_2, ext_rst_vector_2, soft_int_2, timer_int_2, 92'b0};

assign {wb_i_ack_2, wb_i_datr_2} = c2_in[`WB2_I_WB_IN_START:`WB2_I_WB_IN_START-32];
assign {wb_d_ack_2, wb_d_datr_2} = c2_in[`WB2_D_WB_IN_START:`WB2_D_WB_IN_START-32];

assign c3_out = {wb_i_stb_3, wb_i_cyc_3, 1'b0     , 4'b0,       {wb_i_adr_3, 2'b0}, 32'b0,       1'b0, 32'b0, 24'b0,
                 wb_d_stb_3, wb_d_cyc_3, wb_d_we_3, wb_d_sel_3, {wb_d_adr_3, 2'b0}, wb_d_datw_3, 1'b0, 32'b0, 24'b0,
                 ext_int_3, ext_int_s_3, ext_rst_vector_3, soft_int_3, timer_int_3, 92'b0};

assign {wb_i_ack_3, wb_i_datr_3} = c3_in[`WB2_I_WB_IN_START:`WB2_I_WB_IN_START-32];
assign {wb_d_ack_3, wb_d_datr_3} = c3_in[`WB2_D_WB_IN_START:`WB2_D_WB_IN_START-32];

// bus in/out viewed by bridge
assign {wb_i_stb, wb_i_cyc} = wb_out[`BUS_WB2_I_OUT_START:`BUS_WB2_I_OUT_START-1];
assign wb_i_adr = wb_out[`BUS_WB2_I_OUT_START-7:`BUS_WB2_I_OUT_START-38];
assign {wb_d_stb, wb_d_cyc, wb_d_we, wb_d_sel} = wb_out[`BUS_WB2_D_OUT_START:`BUS_WB2_D_OUT_START-6];
assign wb_d_adr = wb_out[`BUS_WB2_D_OUT_START-7:`BUS_WB2_D_OUT_START-38];
assign wb_d_datw = wb_out[`BUS_WB2_D_OUT_START-39:`BUS_WB2_D_OUT_START-70];

assign wb_in =  {wb_i_ack, wb_i_datr, 31'b0, wb_d_ack, wb_d_datr, 31'b0};

// may want to control resets with config, etc.
//assign rst_0 = rst;
//assign rst_1 = rst;
//assign rst_2 = rst;
//assign rst_3 = rst;

A2WB #(
   .CORE_TYPES(CORE_TYPES),
   .BUS_TYPE(BUS_TYPE)
) bridge (
   .clk(clk),
   .rst(rst),
   .cores_in({c0_out, c1_out, c2_out, c3_out}),
   .cores_out({c0_in, c1_in, c2_in, c3_in}),
   .bus_in(wb_in),
   .bus_out(wb_out)
);

A2P_4K1W c0 (
   .clk(clk),
	.reset(rst_0),
	.iBusWB_STB(wb_i_stb_0),
	.iBusWB_CYC(wb_i_cyc_0),
	.iBusWB_ADR(wb_i_adr_0),
	.iBusWB_WE(),
	.iBusWB_SEL(),
	.iBusWB_DAT_MOSI(),
	.iBusWB_ACK(wb_i_ack_0),
	.iBusWB_DAT_MISO(wb_i_datr_0),
	.iBusWB_ERR(1'd0),
	.iBusWB_BTE(),
	.iBusWB_CTI(),
	.dBusWB_STB(wb_d_stb_0),
	.dBusWB_CYC(wb_d_cyc_0),
	.dBusWB_WE(wb_d_we_0),
	.dBusWB_SEL(wb_d_sel_0),
	.dBusWB_ADR(wb_d_adr_0),
	.dBusWB_DAT_MOSI(wb_d_datw_0),
	.dBusWB_ACK(wb_d_ack_0),
	.dBusWB_DAT_MISO(wb_d_datr_0),
	.dBusWB_ERR(1'd0),
	.dBusWB_BTE(),
	.dBusWB_CTI(),
	.externalInterrupt(ext_int_0),
	.externalInterruptS(ext_int_s_0),
	.externalResetVector(ext_rst_vector_0),
	.softwareInterrupt(soft_int_0),
	.timerInterrupt(timer_int_0)
);

A2P_4K1W c1 (
   .clk(clk),
	.reset(rst_1),
	.iBusWB_STB(wb_i_stb_1),
	.iBusWB_CYC(wb_i_cyc_1),
	.iBusWB_ADR(wb_i_adr_1),
	.iBusWB_WE(),
	.iBusWB_SEL(),
	.iBusWB_DAT_MOSI(),
	.iBusWB_ACK(wb_i_ack_1),
	.iBusWB_DAT_MISO(wb_i_datr_1),
	.iBusWB_ERR(1'd0),
	.iBusWB_BTE(),
	.iBusWB_CTI(),
	.dBusWB_STB(wb_d_stb_1),
	.dBusWB_CYC(wb_d_cyc_1),
	.dBusWB_WE(wb_d_we_1),
	.dBusWB_SEL(wb_d_sel_1),
	.dBusWB_ADR(wb_d_adr_1),
	.dBusWB_DAT_MOSI(wb_d_datw_1),
	.dBusWB_ACK(wb_d_ack_1),
	.dBusWB_DAT_MISO(wb_d_datr_1),
	.dBusWB_ERR(1'd0),
	.dBusWB_BTE(),
	.dBusWB_CTI(),
	.externalInterrupt(ext_int_1),
	.externalInterruptS(ext_int_s_1),
	.externalResetVector(ext_rst_vector_1),
	.softwareInterrupt(soft_int_1),
	.timerInterrupt(timer_int_1)
);

A2P_4K1W c2 (
   .clk(clk),
	.reset(rst_2),
	.iBusWB_STB(wb_i_stb_2),
	.iBusWB_CYC(wb_i_cyc_2),
	.iBusWB_ADR(wb_i_adr_2),
	.iBusWB_WE(),
	.iBusWB_SEL(),
	.iBusWB_DAT_MOSI(),
	.iBusWB_ACK(wb_i_ack_2),
	.iBusWB_DAT_MISO(wb_i_datr_2),
	.iBusWB_ERR(1'd0),
	.iBusWB_BTE(),
	.iBusWB_CTI(),
	.dBusWB_STB(wb_d_stb_2),
	.dBusWB_CYC(wb_d_cyc_2),
	.dBusWB_WE(wb_d_we_2),
	.dBusWB_SEL(wb_d_sel_2),
	.dBusWB_ADR(wb_d_adr_2),
	.dBusWB_DAT_MOSI(wb_d_datw_2),
	.dBusWB_ACK(wb_d_ack_2),
	.dBusWB_DAT_MISO(wb_d_datr_2),
	.dBusWB_ERR(1'd0),
	.dBusWB_BTE(),
	.dBusWB_CTI(),
	.externalInterrupt(ext_int_2),
	.externalInterruptS(ext_int_s_2),
	.externalResetVector(ext_rst_vector_2),
	.softwareInterrupt(soft_int_2),
	.timerInterrupt(timer_int_2)
);

A2P_4K1W c3 (
   .clk(clk),
	.reset(rst_3),
	.iBusWB_STB(wb_i_stb_3),
	.iBusWB_CYC(wb_i_cyc_3),
	.iBusWB_ADR(wb_i_adr_3),
	.iBusWB_WE(),
	.iBusWB_SEL(),
	.iBusWB_DAT_MOSI(),
	.iBusWB_ACK(wb_i_ack_3),
	.iBusWB_DAT_MISO(wb_i_datr_3),
	.iBusWB_ERR(1'd0),
	.iBusWB_BTE(),
	.iBusWB_CTI(),
	.dBusWB_STB(wb_d_stb_3),
	.dBusWB_CYC(wb_d_cyc_3),
	.dBusWB_WE(wb_d_we_3),
	.dBusWB_SEL(wb_d_sel_3),
	.dBusWB_ADR(wb_d_adr_3),
	.dBusWB_DAT_MOSI(wb_d_datw_3),
	.dBusWB_ACK(wb_d_ack_3),
	.dBusWB_DAT_MISO(wb_d_datr_3),
	.dBusWB_ERR(1'd0),
	.dBusWB_BTE(),
	.dBusWB_CTI(),
	.externalInterrupt(ext_int_3),
	.externalInterruptS(ext_int_s_3),
	.externalResetVector(ext_rst_vector_3),
	.softwareInterrupt(soft_int_3),
	.timerInterrupt(timer_int_3)
);

endmodule
