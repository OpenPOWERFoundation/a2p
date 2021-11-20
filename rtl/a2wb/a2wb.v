// A2 Core Bridge

// adapt cores and buses with generic module
// one thread/core for now; multithread needs thread tag, deeper queues

`include "defs.v"

module A2WB #(
   parameter [0:15] CORE_TYPES = {`CORE_TYPE_WB2, `CORE_TYPE_NONE, `CORE_TYPE_NONE, `CORE_TYPE_NONE},
   parameter [0:3] BUS_TYPE = `BUS_TYPE_WB2
) (
   input    clk,
   input    rst,
   input    [0:3] core_in,
   output   [0:3] core_out,
   input    bus_in,
   output   bus_out
);

integer NUMCORES = 0;

genvar i;

// ------------------------------------------------------------------------------------------------
// I/O Connections

// cores must be contiguous, starting at 0

wire i_wb_cyc [0:3];
wire i_wb_stb [0:3];
wire [31:2] i_wb_adr[0:3] ;
wire i_wb_ack [0:3];
wire [31:0] i_wb_datr[0:3];
wire d_wb_cyc [0:3];
wire d_wb_stb [0:3];
wire d_wb_we [0:3];
wire [3:0] d_wb_sel [0:3];
wire [31:0] d_wb_adr [0:3];
wire [31:0] d_wb_datw [0:3];
wire d_wb_ack [0:3];
wire [31:0] d_wb_datr[0:3];
wire [7:0] ext_cmd [0:3];
wire [7:0] ext_rsp [0:3];

generate
   for (i = 0; i < 4; i++) begin
      case (CORE_TYPES[i*4:i*4+3])
         `CORE_TYPE_NONE: begin
         end
         `CORE_TYPE_A2L2: begin
            assign NUMCORES = NUMCORES + 1;
            // a2l2
         end
         `CORE_TYPE_WB1: begin
            assign NUMCORES = NUMCORES + 1;

            wire [78:0] core_0_in;
            wire [32:0] core_out[i];
            assign d_wb_cyc[i] = core_in[i][78];
            assign d_wb_stb[i] = core_in[i][77];
            assign d_wb_we[i]  = core_in[i][76];
            assign d_wb_sel[i]  = core_in[i][75:72];
            assign d_wb_adr[i] = core_in[i][71:40];
            assign d_wb_datw[i] = core_in[i][39:8];
            assign ext_cmd[i] = core_in[i][7:0];
            assign core_out[i][32] = d_wb_ack[i];
            assign core_out[i][31:0] = d_wb_datr[i];
         end
         `CORE_TYPE_WB2: begin
            assign NUMCORES = NUMCORES + 1;

            wire [110:0] core_in[i];
            wire [65:0] core_out[i];
            assign i_wb_cyc[i] = core_in[i][110];
            assign i_wb_stb[i] = core_in[i][109];
            assign i_wb_adr[i] = core_in[i][108:79];
            assign d_wb_cyc[i] = core_in[i][78];
            assign d_wb_stb[i] = core_in[i][77];
            assign d_wb_we[i]  = core_in[i][76];
            assign d_wb_sel[i]  = core_in[i][75:72];
            assign d_wb_adr[i] = core_in[i][71:40];
            assign d_wb_datw[i] = core_in[i][39:8];
            assign ext_cmd[i] = core_in[i][7:0];
            assign core_out[i][65] = i_wb_ack[i];
            assign core_out[i][64:33] = i_wb_datr[i];
            assign core_out[i][32] = d_wb_ack[i];
            assign core_out[i][31:0] = d_wb_datr[i];
         end
      endcase
   end
endgenerate

// ------------------------------------------------------------------------------------------------
// Command Interfaces
//

generate
   for (i = 0; i < 4; i++) begin
      case (CORE_TYPES[i*4:i*4+3])
         `CORE_TYPE_NONE: begin
         end
         `CORE_TYPE_A2L2: begin
            // convert a2l2 to internal format
         end
         `CORE_TYPE_WB1: begin
            cmd_wb #(.CORE_TYPE(CORE_TYPES[i*4:i*4+3]), .BUS_TYPE(BUS_TYPE)) core_in (
               .clk(clk),
               .rst(rst),
               .i_wb_cyc('b0),
               .i_wb_stb('b0),
               .i_wb_adr('h0),
               .d_wb_cyc(d_wb_cyc[i]),
               .d_wb_stb(d_wb_stb[i]),
               .d_wb_we(d_wb_we[i]),
               .d_wb_sel(d_wb_sel[i]),
               .d_wb_adr(d_wb_adr[i]),
               .d_wb_datw(d_wb_datw[i]),
               .ext_cmd(ext_cmd[i]),
               .cmd_taken('b0),
               .cmd_out_0(),
               .cmd_out_1()
            );
         end
         `CORE_TYPE_WB2: begin
            cmd_wb #(.CORE_TYPE(CORE_TYPES[i*4:i*4+3]), .BUS_TYPE(BUS_TYPE)) core_in (
               .clk(clk),
               .rst(rst),
               .i_wb_cyc(i_wb_cyc[i]),
               .i_wb_stb(i_wb_stb[i]),
               .i_wb_adr(i_wb_adr[i]),
               .d_wb_cyc(d_wb_cyc[i]),
               .d_wb_stb(d_wb_stb[i]),
               .d_wb_we(d_wb_we[i]),
               .d_wb_sel(d_wb_sel[i]),
               .d_wb_adr(d_wb_adr[i]),
               .d_wb_datw(d_wb_datw[i]),
               .ext_cmd(ext_cmd[i]),
               .cmd_taken('b0),
               .cmd_out_0(),
               .cmd_out_1()
            );
         end
      endcase
   end
endgenerate

// ------------------------------------------------------------------------------------------------
// Arbitration
//
// LRU, etc. select from pending cmds; also needs smp to stall some/all cmds
// do addr cmp here, if necessary? or could do in smp

arb #() arb (

);

// ------------------------------------------------------------------------------------------------
// SMP

// special ops: track resv, stall pending cmds, gen rsp
smp #() smp (

);

// ------------------------------------------------------------------------------------------------
// Bus Out
// commands to main bus

generate
   case(BUS_TYPE)
      `BUS_TYPE_WB1: begin
      end
      `BUS_TYPE_WB2: begin
         wire [101:0] bus_out;
         wire bus_i_wb_stb;
         assign bus_out[101] = bus_i_wb_stb;
         wire [31:2] bus_i_wb_adr;
         assign bus_out[100:71] = bus_i_wb_adr;
         wire bus_d_wb_cyc;
         assign bus_out[70] = bus_d_wb_cyc;
         wire bus_d_wb_stb;
         assign bus_out[69] = bus_d_wb_stb;
         wire bus_d_wb_we;
         assign bus_out[68] = bus_d_wb_we;
         wire [3:0] bus_d_wb_sel;
         assign bus_out[67:64] = bus_d_wb_sel;
         wire [31:0] bus_d_wb_adr;
         assign bus_out[63:32] = bus_d_wb_adr;
         wire [31:0] bus_d_wb_datw;
         assign bus_out[31:0] = bus_d_wb_datw;
         end
      endcase
endgenerate

// ------------------------------------------------------------------------------------------------
// Bus In
// responses from main bus

generate
   case(BUS_TYPE)
      `BUS_TYPE_WB1: begin
      end
      `BUS_TYPE_WB2: begin
         wire [65:0] bus_in;
         wire bus_i_wb_ack = bus_in[65];
         wire [31:0] bus_i_wb_datr = bus_in[64:33];
         wire bus_d_wb_ack = bus_in[32];
         wire [31:0] bus_d_wb_datr = bus_in[31:0];
      end
   endcase
endgenerate

// ------------------------------------------------------------------------------------------------
// Response Queues
// responses for cores

generate
   for (i = 0; i < 4; i++) begin
   end
endgenerate

// ------------------------------------------------------------------------------------------------
// Misc/Errors/Debug
// stuff

generate
   for (i = 0; i < 4; i++) begin
   end
endgenerate

endmodule