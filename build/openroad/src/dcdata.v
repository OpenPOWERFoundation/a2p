`include "defs.v"

module dcdata #(
   parameter EXPAND_TYPE=`INFERRED,
   parameter LINES=1024
) (
   input clk,
   input  [9:0]  rd_adr,
   output [31:0] rd_dat,
   input  [3:0]  wr_en,
   input  [9:0]  wr_adr,
   input  [31:0] wr_dat
);

generate case (EXPAND_TYPE)

   `INFERRED: begin
      reg [7:0] dir0 [0:LINES-1];
      reg [7:0] dir1 [0:LINES-1];
      reg [7:0] dir2 [0:LINES-1];
      reg [7:0] dir3 [0:LINES-1];
      assign rd_dat = {dir3[rd_adr],dir2[rd_adr],dir1[rd_adr],dir0[rd_adr]};
      always @ (posedge clk) begin
         if(wr_en[0]) begin
            dir0[wr_adr] <= wr_dat[7:0];
         end
         if(wr_en[1]) begin
            dir1[wr_adr] <= wr_dat[15:8];
         end
         if(wr_en[2]) begin
            dir2[wr_adr] <= wr_dat[23:16];
         end
         if(wr_en[3]) begin
            dir3[wr_adr] <= wr_dat[31:24];
         end
      end
   end
   `DIR_RAM: begin
      wire [9:0] adr;
      assign adr = |wr_en ? wr_adr : rd_adr;
      RAM1024 #() dir (
         .CLK(clk),
         .EN0('b1),
         .A0(adr),
         .Do0(rd_dat),
         .WE0(wr_en),
         .Di0(wr_dat)
      );
   end

endcase
endgenerate

endmodule