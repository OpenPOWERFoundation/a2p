`include "defs.v"

module gpr #(
   parameter EXPAND_TYPE=`INFERRED
) (
   input clk,
   input   [4:0] rd_adr_0,
   output [31:0] rd_dat_0,
   input   [4:0] rd_adr_1,
   output [31:0] rd_dat_1,
   input   [4:0] rd_adr_2,
   output [31:0] rd_dat_2,
   input         wr_en_0,
   input   [4:0] wr_adr_0,
   input  [31:0] wr_dat_0
);

generate case (EXPAND_TYPE)

   `INFERRED: begin
      reg [31:0] regFile [0:31] /* verilator public */ ;
      assign rd_dat_0 = regFile[rd_adr_0];
      assign rd_dat_1 = regFile[rd_adr_1];
      assign rd_dat_2 = regFile[rd_adr_2];
      always @ (posedge clk) begin
         if(wr_en_0) begin
            regFile[wr_adr_0] <= wr_dat_0;
         end
      end
   end
   `GPR_2R1W: begin
      /* veeerilator is parsing this when not gen'd */
      DFFRF_2R1W #() regFile01 (
         .CLK(clk),
         .RA(rd_adr_0),
         .DA(rd_dat_0),
         .RB(rd_adr_1),
         .DB(rd_dat_1),
         .RW(wr_adr_0),
         .WE(wr_en_0),
         .DW(wr_dat_0)
      );
      // should this be a ram_32x32?  any other diffs between reg/ram besides multiple we vs extra port?
      DFFRF_2R1W #() regFile23  (
         .CLK(clk),
         .RA(rd_adr_2),
         .DA(rd_dat_2),
         .RB('h0),
         .DB(),
         .RW(wr_adr_0),
         .WE(wr_en_0),
         .DW(wr_dat_0)
      );
   end
   `GPR_3R1W: begin
      reg_3r1w #() regFile (

      );
   end
   `GPR_RAM: begin
      ram_32x32 #() regFile0 (

      );
      ram_32x32 #() regFile1 (

      );
      ram_32x32 #() regFile2 (

      );
   end

endcase
endgenerate

endmodule