
module bus_wb2 # (

) (
   input                   clk,
   input                   rst,
   output                  rdy_i,
   output                  rdy_d,
   input  [`CMD_SIZE-1:0]  cmd_i,
   input  [`CMD_SIZE-1:0]  cmd_d,
   output [`RSP_SIZE-1:0]  rsp_i,
   output [`RSP_SIZE-1:0]  rsp_d,
   output                  i_wb_stb,
   output                  i_wb_cyc,
   output [31:0]           i_wb_adr,
   input                   i_wb_ack,
   input  [31:0]           i_wb_datr,
   output                  d_wb_stb,
   output                  d_wb_cyc,
   output                  d_wb_we,
   output [3:0]            d_wb_sel,
   output [31:0]           d_wb_adr,
   output [31:0]           d_wb_datw,
   input                   d_wb_ack,
   input  [31:0]           d_wb_datr
);

reg    [`CMD_SIZE-1:0]     cmd_i_q;
wire   [`CMD_SIZE-1:0]     cmd_i_d;
reg    [`CMD_SIZE-1:0]     cmd_d_q;
wire   [`CMD_SIZE-1:0]     cmd_d_d;
reg    [1:0]               cmdseq_i_q;
wire   [1:0]               cmdseq_i_d;
reg    [1:0]               cmdseq_d_q;
wire   [1:0]               cmdseq_d_d;
wire                       idle_i;
wire                       cmd_val_i;
wire                       ld_cmd_i;
wire                       rsp_val_i;
wire                       idle_d;
wire                       cmd_val_d;
wire                       ld_cmd_d;
wire                       rsp_val_d;

   // FF
   always @(posedge clk) begin

      if (rst) begin

         cmdseq_i_q = 2'b11;
         cmdseq_d_q = 2'b11;
         cmd_i_q = 'h0;
         cmd_d_q = 'h0;

      end else begin

         cmdseq_i_q = cmdseq_i_d;
         cmdseq_d_q = cmdseq_d_d;
         cmd_i_q = cmd_i_d;
         cmd_d_q = cmd_d_d;

      end
   end

   // super-simple; latch cmd -> send req -> rtn rsp

   assign cmd_val_i = cmd_i[`CMD_SIZE-1];

   //tbl cmdseq_i
   //n cmdseq_i_q                       cmdseq_i_d
   //n |  cmd_val_i                     |  ld_cmd_i
   //n |  | i_wb_ack                    |  |
   //n |  | |                           |  |
   //n |  | |                           |  |
   //n |  | |                           |  |      idle_i
   //n |  | |                           |  |      |
   //n |  | |                           |  |      |
   //b 10 | |                           10 |      |
   //t ii i i                           oo o      o
   //*------------------------------------------------
   //* Idle ******************************************
   //s 11 - -                           -- -      1
   //s 11 0 -                           11 0      -          * ...zzz...
   //s 11 1 -                           01 1      -
   //* Request Pending *******************************
   //s 01 - 0                           01 0      0
   //s 01 - 1                           11 0      0
   //*------------------------------------------------
   //tbl cmdseq_i

   assign cmd_i_d = ld_cmd_i ? cmd_i : {cmd_i_q[`CMD_VALID] & ~i_wb_ack, cmd_i_q[`CMD_VALID-1:0]};

   assign i_wb_stb = cmd_i_q[`CMD_VALID];
   assign i_wb_cyc = cmd_i_q[`CMD_VALID];
   assign i_wb_adr = cmd_i_q[`CMD_ADR];

   assign rdy_i = idle_i;
   assign rsp_i[`RSP_VALID] = i_wb_ack;
   assign rsp_i[`RSP_CORE_ID] = cmd_i_q[`CMD_CORE_ID];
   assign rsp_i[`RSP_DATA] = i_wb_datr;


   //wtf eventually move this to config unit; it will respond and block cmd val to bus unit
   // use adr compare to return coreid for d-read
   wire adr_coreid;
   assign adr_coreid = ~cmd_d_q[`CMD_WE] & (cmd_d_q[`CMD_ADR] == 32'b0); //wtf why is the adr cmp part segving verilator?????
   assign cmd_val_d = cmd_d[`CMD_VALID];

   //tbl cmdseq_d
   //n cmdseq_d_q                       cmdseq_d_d
   //n |  cmd_val_d                     |  ld_cmd_d
   //n |  | rsp_d_complete              |  |
   //n |  | |                           |  |
   //n |  | |                           |  |
   //n |  | |                           |  |      idle_d
   //n |  | |                           |  |      |
   //n |  | |                           |  |      |
   //b 10 | |                           10 |      |
   //t ii i i                           oo o      o
   //*------------------------------------------------
   //* Idle ******************************************
   //s 11 - -                           -- -      1
   //s 11 0 -                           11 0      -          * ...zzz...
   //s 11 1 -                           01 1      -
   //* Request Pending *******************************
   //s 01 - 0                           01 0      0
   //s 01 - 1                           11 0      0
   //*------------------------------------------------
   //tbl cmdseq_d

   //assign cmd_d_d = ld_cmd_d ? cmd_d : {cmd_d_q[`CMD_VALID] & ~d_wb_ack, cmd_d_q[`CMD_VALID-1:0]};
   assign cmd_d_d = ld_cmd_d ? cmd_d : {cmd_d_q[`CMD_VALID] & ~rsp_d_complete, cmd_d_q[`CMD_VALID-1:0]};

   //assign d_wb_cyc = cmd_d_q[`CMD_VALID];
   //assign d_wb_stb = cmd_d_q[`CMD_VALID];
   assign d_wb_cyc = cmd_d_q[`CMD_VALID] & ~adr_coreid;
   assign d_wb_stb = cmd_d_q[`CMD_VALID] & ~adr_coreid;
   assign d_wb_we = cmd_d_q[`CMD_WE];
   assign d_wb_sel = cmd_d_q[`CMD_SEL];
   assign d_wb_adr = cmd_d_q[`CMD_ADR];
   assign d_wb_datw = cmd_d_q[`CMD_DATW];

   assign rdy_d = idle_d;

   //assign rsp_d[`RSP_VALID] = d_wb_ack;
   wire rsp_d_complete;
   assign rsp_d_complete = d_wb_ack | (cmd_d_q[`CMD_VALID] & adr_coreid);
   assign rsp_d[`RSP_VALID] = rsp_d_complete;
   assign rsp_d[`RSP_CORE_ID] = cmd_d_q[`CMD_CORE_ID];
   //assign rsp_d[`RSP_DATA] = d_wb_datr;
   assign rsp_d[`RSP_DATA] = adr_coreid ? {6'b0, cmd_d_q[`CMD_CORE_ID], 24'b0} : d_wb_datr; // byte 3 = core_id

// Generated...
//vtable cmdseq_i
assign cmdseq_i_d[1] =
  (cmdseq_i_q[1] & cmdseq_i_q[0] & ~cmd_val_i) +
  (~cmdseq_i_q[1] & cmdseq_i_q[0] & i_wb_ack);
assign cmdseq_i_d[0] =
  (cmdseq_i_q[1] & cmdseq_i_q[0] & ~cmd_val_i) +
  (cmdseq_i_q[1] & cmdseq_i_q[0] & cmd_val_i) +
  (~cmdseq_i_q[1] & cmdseq_i_q[0] & ~i_wb_ack) +
  (~cmdseq_i_q[1] & cmdseq_i_q[0] & i_wb_ack);
assign ld_cmd_i =
  (cmdseq_i_q[1] & cmdseq_i_q[0] & cmd_val_i);
assign idle_i =
  (cmdseq_i_q[1] & cmdseq_i_q[0]);
//vtable cmdseq_i
//vtable cmdseq_d
assign cmdseq_d_d[1] =
  (cmdseq_d_q[1] & cmdseq_d_q[0] & ~cmd_val_d) +
  (~cmdseq_d_q[1] & cmdseq_d_q[0] & rsp_d_complete);
assign cmdseq_d_d[0] =
  (cmdseq_d_q[1] & cmdseq_d_q[0] & ~cmd_val_d) +
  (cmdseq_d_q[1] & cmdseq_d_q[0] & cmd_val_d) +
  (~cmdseq_d_q[1] & cmdseq_d_q[0] & ~rsp_d_complete) +
  (~cmdseq_d_q[1] & cmdseq_d_q[0] & rsp_d_complete);
assign ld_cmd_d =
  (cmdseq_d_q[1] & cmdseq_d_q[0] & cmd_val_d);
assign idle_d =
  (cmdseq_d_q[1] & cmdseq_d_q[0]);
//vtable cmdseq_d

endmodule
