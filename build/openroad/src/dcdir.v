`include "defs.v"

module dcdir #(
   parameter EXPAND_TYPE=`INFERRED,
   parameter LINES=128
) (
   input clk,
   input  [6:0]  rd_adr,
   output [21:0] rd_dat,
   input   [3:0] wr_en,
   input   [6:0] wr_adr,
   input  [21:0] wr_dat
);

generate case (EXPAND_TYPE)

   `INFERRED: begin
      reg [21:0] dir [0:LINES-1];
      assign rd_dat = dir[rd_adr];
      always @ (posedge clk) begin
         if(wr_en[0]) begin
            dir[wr_adr] <= wr_dat;
         end
      end
   end
   `DIR_RAM: begin
      wire [6:0] adr;
      wire [31:0] dat;
      assign adr = wr_en[0] ? wr_adr : rd_adr;
      assign rd_dat = dat[21:0];
      RAM128 #() dir (
         .CLK(clk),
         .EN0('b1),
         .A0(adr),
         .Do0(dat),
         .WE0(wr_en),
         .Di0({10'b0, wr_dat})
      );
   end

endcase
endgenerate

endmodule