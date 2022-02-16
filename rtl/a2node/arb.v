`include "defs.v"

module arb # (
) (
   input                      clk,
   input                      rst,
   input                      bus_rdy_0,
   input                      bus_rdy_1,
   input  [`CMD_SIZE-1:0]     cmd_in_0_0,
   input  [`CMD_SIZE-1:0]     cmd_in_1_0,
   output [1:0]               cmd_tkn_0,
   input  [`CMD_SIZE-1:0]     cmd_in_0_1,
   input  [`CMD_SIZE-1:0]     cmd_in_1_1,
   output [1:0]               cmd_tkn_1,
   input  [`CMD_SIZE-1:0]     cmd_in_0_2,
   input  [`CMD_SIZE-1:0]     cmd_in_1_2,
   output [1:0]               cmd_tkn_2,
   input  [`CMD_SIZE-1:0]     cmd_in_0_3,
   input  [`CMD_SIZE-1:0]     cmd_in_1_3,
   output [1:0]               cmd_tkn_3,
   output [`CMD_SIZE-1:0]     cmd_out_0,
   output [`CMD_SIZE-1:0]     cmd_out_1
);

// fairly choose 1 or 2 (depending on output buses) cmds
// mark taken from queue
// obey restrictions from smp, addr cmp, etc. (cmd_stall)

//reg    [7:0]         pri_0_q;
//wire   [7:0]         pri_0_d;
reg    [1:0]         pri_0_q[0:3];
wire   [1:0]         pri_0_d[0:3];
wire   [7:0]         pri_update_0;
reg    [1:0]         pri_1_q[0:3];
wire   [1:0]         pri_1_d[0:3];
wire   [7:0]         pri_update_1;
wire   [3:0]         cmd_valids_0;
wire   [1:0]         cmd_sel_0;
wire                 cmd_out_val_0;
wire   [3:0]         cmd_valids_1;
wire   [1:0]         cmd_sel_1;
wire                 cmd_out_val_1;

integer i;

   // FF
   always @(posedge clk) begin

      if (rst) begin

         for (i = 0; i < 4; i++) begin
            pri_0_q[i] = i;
            pri_1_q[i] = i;
         end

      end else begin

         for (i = 0; i < 4; i++) begin
            pri_0_q[i] = pri_0_d[i];
            pri_1_q[i] = pri_1_d[i];
         end
      end

   end

   // select next commands; 00 is highest priority
   assign cmd_valids_0 = {cmd_in_0_0[`CMD_VALID],cmd_in_0_1[`CMD_VALID],cmd_in_0_2[`CMD_VALID],cmd_in_0_3[`CMD_VALID]};
   assign cmd_sel_0 = pri_sel(cmd_valids_0, pri_0_q);
   assign cmd_out_val_0 = bus_rdy_0 & (|cmd_valids_0);  //wtf depends if you want to allow it to change while bus is busy
   assign cmd_out_0 = cmd_sel_0 == 2'b00 ? cmd_in_0_0 :
                      cmd_sel_0 == 2'b01 ? cmd_in_0_1 :
                      cmd_sel_0 == 2'b10 ? cmd_in_0_2 :
                                           cmd_in_0_3;

   assign cmd_valids_1 = {cmd_in_1_0[`CMD_VALID],cmd_in_1_1[`CMD_VALID],cmd_in_1_2[`CMD_VALID],cmd_in_1_3[`CMD_VALID]};
   assign cmd_sel_1 = pri_sel(cmd_valids_1, pri_1_q);
   assign cmd_out_val_1 = bus_rdy_1 & (|cmd_valids_1);  //wtf depends if you want to allow it to change while bus is busy
   assign cmd_out_1 = cmd_sel_1 == 2'b00 ? cmd_in_1_0 :
                      cmd_sel_1 == 2'b01 ? cmd_in_1_1 :
                      cmd_sel_1 == 2'b10 ? cmd_in_1_2 :
                                           cmd_in_1_3;

   // update priorities if cmd selected
   assign pri_update_0 = pri_upd(cmd_sel_0, pri_0_q);

   assign pri_0_d[0] = cmd_out_val_0 ? pri_update_0[1:0] : pri_0_q[0];
   assign pri_0_d[1] = cmd_out_val_0 ? pri_update_0[3:2] : pri_0_q[1];
   assign pri_0_d[2] = cmd_out_val_0 ? pri_update_0[5:4] : pri_0_q[2];
   assign pri_0_d[3] = cmd_out_val_0 ? pri_update_0[7:6] : pri_0_q[3];

   assign pri_update_1 = pri_upd(cmd_sel_1, pri_1_q);

   assign pri_1_d[0] = cmd_out_val_1 ? pri_update_1[1:0] : pri_1_q[0];
   assign pri_1_d[1] = cmd_out_val_1 ? pri_update_1[3:2] : pri_1_q[1];
   assign pri_1_d[2] = cmd_out_val_1 ? pri_update_1[5:4] : pri_1_q[2];
   assign pri_1_d[3] = cmd_out_val_1 ? pri_update_1[7:6] : pri_1_q[3];

   // mark taken
   assign cmd_tkn_0[0] = cmd_out_val_0 & (cmd_sel_0 == 2'b00);
   assign cmd_tkn_1[0] = cmd_out_val_0 & (cmd_sel_0 == 2'b01);
   assign cmd_tkn_2[0] = cmd_out_val_0 & (cmd_sel_0 == 2'b10);
   assign cmd_tkn_3[0] = cmd_out_val_0 & (cmd_sel_0 == 2'b11);

   assign cmd_tkn_0[1] = cmd_out_val_1 & (cmd_sel_1 == 2'b00);
   assign cmd_tkn_1[1] = cmd_out_val_1 & (cmd_sel_1 == 2'b01);
   assign cmd_tkn_2[1] = cmd_out_val_1 & (cmd_sel_1 == 2'b10);
   assign cmd_tkn_3[1] = cmd_out_val_1 & (cmd_sel_1 == 2'b11);

endmodule

// could also account for configured thread/core priority
function [1:0] pri_sel (input [0:3] val, [1:0] pri[0:3]);
   begin
      pri_sel = 2'b00;
      if (val[0]) begin
         if (~(val[1] & pri[1] < pri[0]) | (val[2] & pri[2] < pri[0] | val[3] & pri[3] < pri[0])) begin
            assign pri_sel = 2'b00;
         end
      end
      if (val[1]) begin
         if (~(val[0] & pri[0] < pri[1]) | (val[2] & pri[2] < pri[1] | val[3] & pri[3] < pri[1])) begin
            assign pri_sel = 2'b01;
         end
      end
      if (val[2]) begin
         if (~(val[0] & pri[0] < pri[2]) | (val[1] & pri[1] < pri[2] | val[3] & pri[3] < pri[2])) begin
            assign pri_sel = 2'b10;
         end
      end
      if (val[3]) begin
         if (~(val[0] & pri[0] < pri[3]) | (val[1] & pri[1] < pri[3] | val[2] & pri[2] < pri[3])) begin
            assign pri_sel = 2'b11;
         end
      end
   end
endfunction


//function [7:0] pri_upd (input [1:0] sel, [1:0] p3, [1:0] p2, [1:0] p1, [1:0] p0);
function [7:0] pri_upd (input [1:0] sel, [1:0] pri[0:3]);
   begin
      if (sel == 2'b00) begin
         assign pri_upd[1:0] = 2'b11;
         assign pri_upd[3:2] = pri_up(pri[0], pri[1]);
         assign pri_upd[5:4] = pri_up(pri[0], pri[2]);
         assign pri_upd[7:6] = pri_up(pri[0], pri[3]);
      end
      if (sel == 2'b01) begin
         assign pri_upd[1:0] = pri_up(pri[1], pri[0]);
         assign pri_upd[3:2] = 2'b11;
         assign pri_upd[5:4] = pri_up(pri[1], pri[2]);
         assign pri_upd[7:6] = pri_up(pri[1], pri[3]);
      end
      if (sel == 2'b10) begin
         assign pri_upd[1:0] = pri_up(pri[2], pri[0]);
         assign pri_upd[3:2] = pri_up(pri[2], pri[1]);
         assign pri_upd[5:4] = 2'b11;
         assign pri_upd[7:6] = pri_up(pri[2], pri[3]);
      end
      if (sel == 2'b11) begin
         assign pri_upd[1:0] = pri_up(pri[3], pri[0]);
         assign pri_upd[3:2] = pri_up(pri[3], pri[1]);
         assign pri_upd[5:4] = pri_up(pri[3], pri[2]);
         assign pri_upd[7:6] = 2'b11;
      end
   end
endfunction

// raise priority by 1, if it's higher than lvl
function [1:0] pri_up(input [1:0] lvl, [1:0] pri);
   begin
      /* dont work!
      if (pri > lvl) begin
         if (pri == 2'b01)
            assign pri_up = 2'b00;
         if (pri == 2'b10)
            assign pri_up = 2'b01;
         if (pri == 2'b11)
            assign pri_up = 2'b10;
      else
         assign pri_up = pri;
      end
      */
      assign pri_up = pri > lvl ? pri - 1: pri; // 0 always sticks
   end
endfunction