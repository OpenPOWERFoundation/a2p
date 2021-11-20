// Wishbone-Wishbone Command Interface

// allow single- or dual-wb in/out:
//    1/1 : passthru
//    1/2 : route to proper - but this requires indicator in extcmd to distinguish i vs. d
//    2/1 : arbitrate
//    2/2 : passthru
//
// also handle special ops when possible (dcbz, ...)

// select one command per output bus

// ext_cmd is not tied to i/d, but does it need to have multiple outstanding (nop=0, and valid that require i/d info also must have that info provided)
// needs ext_tkn if not tied to i/d; needs to set q valid if tied to i/d (based on ext i or d type)
// seems like these are all tied to an i or d and require a response, so shouldn't need i+d+ext outstanding?

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

`include "defs.v"

reg  [77:0] cmd_queue_q[0:1];
wire [77:0] cmd_queue_d[0:1];
wire [77:0] cmd_queue_in[0:1];
wire [77:0] cmd_queue_out;
reg  [7:0]  ext_queue_q;
wire [7:0]  ext_queue_d;
wire [7:0]  ext_queue_in;

module cmd_wb #(
   parameter CORE_TYPE = `CORE_TYPE_WB2,
   parameter BUS_TYPE = `BUS_TYPE_WB2
) (
   input          clk,
   input          rst,
   input          i_wb_cyc,
   input          i_wb_stb,
   input  [31:2]  i_wb_adr,
   input          d_wb_cyc,
   input          d_wb_stb,
   input          d_wb_we,
   input  [3:0]   d_wb_sel,
   input  [31:0]  d_wb_adr,
   input  [31:0]  d_wb_datw,
   input  [7:0]   ext_cmd,
   input  [2:0]   cmd_taken,       // bit vector, one per queued cmd (could simultaneously occur in some designs)
   output [77:0]  cmd_out_0,
   output [77:0]  cmd_out_1
);

case (CORE_TYPE)
   `CORE_TYPE_WB1: begin
      // q[0] = i or d
      assign cmd_queue_in[0][77] = d_wb_cyc & d_wb_stb;  // valid - may need ext decode too
      assign cmd_queue_in[0][76] = d_wb_we;
      assign cmd_queue_in[0][75:72] = d_wb_sel;
      assign cmd_queue_in[0][71:40] = d_wb_adr;
      assign cmd_queue_in[0][39:8] = d_wb_datw;
      assign cmd_queue_in[0][7:0] = ext_cmd;
      end
   `CORE_TYPE_WB2: begin
      // q[0]=i, q[1]=d
      assign cmd_queue_in[0][77] = i_wb_cyc & i_wb_stb;  // valid - may need ext decode too
      assign cmd_queue_in[0][76:72] = 'h0;
      assign cmd_queue_in[0][71:40] = {i_wb_adr, 2'b0};
      assign cmd_queue_in[0][39:8] = 'h0;
      assign cmd_queue_in[0][7:0] = ext_cmd;
      assign cmd_queue_in[1][77] = d_wb_cyc & d_wb_stb;  // valid - may need ext decode too
      assign cmd_queue_in[1][76] = d_wb_we;
      assign cmd_queue_in[1][75:72] = d_wb_sel;
      assign cmd_queue_in[1][71:40] = d_wb_adr;
      assign cmd_queue_in[1][39:8] = d_wb_datw;
      assign cmd_queue_in[1][7:0] = ext_cmd;
      assign ext_queue_in = ext_cmd;
   end
endcase

// queue routing/arbitration to cmd processing

// create generic command format out, handling i,d,ext!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// dual wb cmds may need taken AND next; depends though on what should be ordering; start with INORDER=1 parameter?

case (CORE_TYPE)
   `CORE_TYPE_WB1: begin
      case (BUS_TYPE)
         `BUS_TYPE_WB1: begin
            assign cmd_out_0 = cmd_queue_q[0];
         end
         `BUS_TYPE_WB2: begin
            assign cmd_out_0 = ext_queue_q[0] ? cmd_queue_q[1] : cmd_queue_q[7];  // select i vs d
         end
      endcase
   end
   `CORE_TYPE_WB2: begin
      case (BUS_TYPE)
         `BUS_TYPE_WB1:begin
            // both valid: send d
            // want selected bit; set first cycle; dont change once selected until not valid
            assign cmd_out_0 = cmd_queue_q[1][77] ? cmd_queue_q[1] : cmd_queue_q[0];
         end
         `BUS_TYPE_WB2: begin
            assign cmd_out_0 = cmd_queue_q[0];
            assign cmd_out_1 = cmd_queue_q[1];
         end
      endcase
   end
endcase

endmodule