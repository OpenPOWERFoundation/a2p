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

module cmd_wb #(
   parameter CORE_ID = 0,
   parameter CORE_TYPE = `CORE_TYPE_WB2,
   parameter BUS_TYPE = `BUS_TYPE_WB2
) (
   input                   clk,
   input                   rst,
   input                   i_wb_cyc,
   input                   i_wb_stb,
   input  [31:0]           i_wb_adr,
   input                   d_wb_cyc,
   input                   d_wb_stb,
   input                   d_wb_we,
   input  [3:0]            d_wb_sel,
   input  [31:0]           d_wb_adr,
   input  [31:0]           d_wb_datw,
   input  [127:0]          ext_cmd,
   input  [1:0]            cmd_taken,       // bit vector, one per queued cmd (could simultaneously occur in some designs)
   input  [1:0]            cmd_complete,    // bit vector, one per queued cmd (could simultaneously occur in some designs)
   output [`CMD_SIZE-1:0]  cmd_out_0,
   output [`CMD_SIZE-1:0]  cmd_out_1
);

reg  [`CMD_SIZE-1:0] cmd_queue_q[0:1];
wire [`CMD_SIZE-1:0] cmd_queue_d[0:1];
wire [`CMD_SIZE-1:0] cmd_queue_in[0:1];
wire [`CMD_SIZE-1:0] cmd_queue_out;
reg  [127:0]  ext_queue_q;
wire [127:0]  ext_queue_d;
wire [127:0]  ext_queue_in;

genvar i;

// FF
always @(posedge clk) begin

   if (rst) begin

      cmd_queue_q[0] = 'h0;
      cmd_queue_q[1] = 'h0;
      ext_queue_q = 'h0;

   end else begin

      cmd_queue_q[0] = cmd_queue_d[0];
      cmd_queue_q[1] = cmd_queue_d[1];
      ext_queue_q = ext_queue_d;

   end
end

case (CORE_TYPE)
   `CORE_TYPE_WB1: begin
      // q[0] = i or d
      assign cmd_queue_in[0][`CMD_VALID] = d_wb_cyc & d_wb_stb;      // valid - may need ext decode too
      assign cmd_queue_in[0][`CMD_CORE_ID] = CORE_ID;                // core id
      assign cmd_queue_in[0][`CMD_RSVD_0] = 1'b0;                    // rsvd (possible cores > 4)
      assign cmd_queue_in[0][`CMD_RSVD_1] = 1'b0;                    // rsvd (possible cores > 4)
      assign cmd_queue_in[0][`CMD_TAKEN] = 1'b0;                     // taken
      assign cmd_queue_in[0][`CMD_RSVD_2] = 1'b0;                    // rsp rcvd?
      assign cmd_queue_in[0][`CMD_RSVD_3] = 1'b0;
      assign cmd_queue_in[0][`CMD_WE] = d_wb_we;
      assign cmd_queue_in[0][`CMD_SEL] = d_wb_sel;
      assign cmd_queue_in[0][`CMD_ADR] = d_wb_adr;
      assign cmd_queue_in[0][`CMD_SIZE-46:`CMD_SIZE-77] = d_wb_datw;
      assign ext_queue_in[0] = ext_cmd;
      end
   `CORE_TYPE_WB2: begin
      // q[0]=i, q[1]=d
      assign cmd_queue_in[0][`CMD_VALID] = i_wb_cyc & i_wb_stb;      // valid - may need ext decode too
      assign cmd_queue_in[0][`CMD_CORE_ID] = CORE_ID;                // core id
      assign cmd_queue_in[0][`CMD_RSVD_0] = 1'b0;                    // rsvd (possible cores > 4)
      assign cmd_queue_in[0][`CMD_RSVD_1] = 1'b0;                    // rsvd (possible cores > 4)
      assign cmd_queue_in[0][`CMD_TAKEN] = 1'b0;                     // taken
      assign cmd_queue_in[0][`CMD_RSVD_2] = 1'b0;                    // rsp rcvd?
      assign cmd_queue_in[0][`CMD_RSVD_3] = 1'b0;
      assign cmd_queue_in[0][`CMD_WE] = 1'b0;
      assign cmd_queue_in[0][`CMD_SEL] = 4'b0;
      assign cmd_queue_in[0][`CMD_ADR] = i_wb_adr;
      assign cmd_queue_in[0][`CMD_DATW] = 32'b0;

      assign cmd_queue_in[1][`CMD_VALID] = d_wb_cyc & d_wb_stb;      // valid - may need ext decode too
      assign cmd_queue_in[1][`CMD_CORE_ID] = CORE_ID;                // core id
      assign cmd_queue_in[0][`CMD_RSVD_0] = 1'b0;                    // rsvd (possible cores > 4)
      assign cmd_queue_in[0][`CMD_RSVD_1] = 1'b0;                    // rsvd (possible cores > 4)
      assign cmd_queue_in[0][`CMD_TAKEN] = 1'b0;                     // taken
      assign cmd_queue_in[0][`CMD_RSVD_2] = 1'b0;                    // rsp rcvd?
      assign cmd_queue_in[0][`CMD_RSVD_3] = 1'b0;
      assign cmd_queue_in[1][`CMD_WE] = d_wb_we;
      assign cmd_queue_in[1][`CMD_SEL] = d_wb_sel;
      assign cmd_queue_in[1][`CMD_ADR] = d_wb_adr;
      assign cmd_queue_in[1][`CMD_DATW] = d_wb_datw;

      assign ext_queue_in = ext_cmd;
   end
endcase

// queue routing/arbitration to cmd processing

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
            assign cmd_out_0 = cmd_queue_q[1][`CMD_VALID] ? cmd_queue_q[1] : cmd_queue_q[0];
         end
         `BUS_TYPE_WB2: begin
            assign cmd_out_0 = cmd_queue_q[0];
            assign cmd_out_1 = cmd_queue_q[1];
         end
      endcase
   end
endcase

for (i = 0; i < 2; i++) begin
   // valid
   assign cmd_queue_d[i][`CMD_VALID] = cmd_queue_q[i][`CMD_VALID] ? ~cmd_complete[i] : cmd_queue_in[i][`CMD_VALID];
   // taken
   assign cmd_queue_d[i][`CMD_TAKEN] = cmd_queue_q[i][`CMD_VALID] ? (cmd_queue_q[i][`CMD_TAKEN] | cmd_taken[i]) & ~cmd_complete[i] : 1'b0;
   // rest
   assign cmd_queue_d[i][`CMD_VALID-1:`CMD_TAKEN+1] = cmd_queue_q[i][`CMD_VALID] ? cmd_queue_q[i][`CMD_VALID-1:`CMD_TAKEN+1] : cmd_queue_in[i][`CMD_VALID-1:`CMD_TAKEN+1];
   assign cmd_queue_d[i][`CMD_TAKEN-1:0] = cmd_queue_q[i][`CMD_VALID] ? cmd_queue_q[i][`CMD_TAKEN-1:0] : cmd_queue_in[i][`CMD_TAKEN-1:0];
end

endmodule