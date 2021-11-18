// A2 Core Bridge

// should modularize as much as possible and just do messy rewiring here!

// one thread/core for now

// possible extended command modifiers
//    prefetch
//    larx
//    stcx
//    lwsync
//    hwsync
//    tlbsync
//    ici, icbi
//    dci, dcbi, etc
//    dcbtst
//    dcbz
//    tlbie, etc

// possible extended responses
//    errors
//    crit first, xfer# for larger bus width on core side
//    credits
//    resv valid
//    stcx comp/pass
//    sync ack
//    back inv val/addr

// possible extra functions
//    integrated L2
//    doorbell/mailbox (peer/broadcast msg/rsp/intr side channel crossbar)



// cores must be contiguous, starting at 0
`define CORE_TYPE_NONE 4'h0
`define CORE_TYPE_A2L2 4'h1
`define CORE_TYPE_WB1  4'h2
`define CORE_TYPE_WB2  4'h3

`define BUS_TYPE_NONE  4'h0
`define BUS_TYPE_WB1   4'h1
`define BUS_TYPE_WB2   4'h2

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
         4'h0: begin
         end
         4'h1: begin
            assign NUMCORES = NUMCORES + 1;
            // a2l2
         end
         4'h2: begin
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
         4'h3: begin
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
// Command Queues/Addr Compare/Bypass
//
// cores can have either 1 or 2 buses; assume single-cmd outstanding per, for now
// a2l2 could also allow 1 ld, 1 st credit and use 2 dedicated queues
reg  [77:0] cmd_queue_q[0:3][0:1];
wire [77:0] cmd_queue_d[0:3][0:1];
wire [77:0] cmd_queue_in[0:3][0:1];
wire [71:0] cmd_queue_out[0:3];
generate
   for (i = 0; i < 4; i++) begin
      case (CORE_TYPES[i*4:i*4+3])
         4'h0: begin
         end
         4'h1: begin
            // convert a2l2 to internal format
         end
         4'h2: begin
            // q[0] = i or d
            assign cmd_queue_in[i][0][77] = d_wb_cyc[i] & d_wb_stb[i];  // valid
            assign cmd_queue_in[i][0][76] = d_wb_we[i];
            assign cmd_queue_in[i][0][75:72] = d_wb_sel[i];
            assign cmd_queue_in[i][0][71:40] = d_wb_adr[i];
            assign cmd_queue_in[i][0][39:8] = d_wb_datw[i];
            assign cmd_queue_in[i][0][7:0] = ext_cmd[i];
         end
         4'h3: begin
            // q[0]=i, q[1]=d
            assign cmd_queue_in[i][0][77] = i_wb_cyc[i] & i_wb_stb[i];  // valid
            assign cmd_queue_in[i][0][76] = 'b0;
            assign cmd_queue_in[i][0][75:72] = 'b0000;
            assign cmd_queue_in[i][0][71:40] = d_wb_adr[i];
            assign cmd_queue_in[i][0][39:8] = 'h000000;
            assign cmd_queue_in[i][0][7:0] = ext_cmd[i];
            assign cmd_queue_in[i][0][77] = d_wb_cyc[i] & d_wb_stb[i];  // valid
            assign cmd_queue_in[i][0][76] = d_wb_we[i];
            assign cmd_queue_in[i][0][75:72] = d_wb_sel[i];
            assign cmd_queue_in[i][0][71:40] = d_wb_adr[i];
            assign cmd_queue_in[i][0][39:8] = d_wb_datw[i];
            assign cmd_queue_in[i][0][7:0] = ext_cmd[i];
         end
      endcase
   end
endgenerate

// ------------------------------------------------------------------------------------------------
// SMP

// larx/stcx
// assume:  if larx hits L1, core invalidates line automatically -> do not need to send back-invalidate
//          reservation granule is 32B (or use lcd of all cores)
//          one reservation per thread
//          reservation is set before core receives reload data

wire stcx_store [0:3];
wire resv_ra_hit [0:3];
wire resv_set [0:3];
wire resv_rst [0:3];
wire [27:0] resv_q [0:3]; // v, @31:5
wire [27:0] resv_d [0:3];

generate
   for (i = 0; i < 4; i++) begin

   end
endgenerate

// sync ack

// cache ops

// tlb ops

// ------------------------------------------------------------------------------------------------
// Arbitration
//
// LRU, etc. select from pending cmds
generate
   for (i = 0; i < 4; i++) begin
   end
endgenerate

// ------------------------------------------------------------------------------------------------
// Bus Out

generate
   if (BUS_TYPE == `BUS_TYPE_WB1) begin

   end else if (BUS_TYPE == `BUS_TYPE_WB2) begin

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

   end else begin
   end
endgenerate

// ------------------------------------------------------------------------------------------------
// Bus In

generate
   if (BUS_TYPE == `BUS_TYPE_WB1) begin

   end else if (BUS_TYPE == `BUS_TYPE_WB2) begin

      wire [65:0] bus_in;
      wire bus_i_wb_ack = bus_in[65];
      wire [31:0] bus_i_wb_datr = bus_in[64:33];
      wire bus_d_wb_ack = bus_in[32];
      wire [31:0] bus_d_wb_datr = bus_in[31:0];

   end else begin
   end
endgenerate

// ------------------------------------------------------------------------------------------------
// Response Queues

generate
   for (i = 0; i < 4; i++) begin
   end
endgenerate

// ------------------------------------------------------------------------------------------------
// Misc/Errors/Debug

generate
   for (i = 0; i < 4; i++) begin
   end
endgenerate

endmodule