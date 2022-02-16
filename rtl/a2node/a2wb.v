// A2 Core Bridge

// adapt cores and buses with generic module
// one thread/core for now; multithread needs thread tag, deeper queues
// could include l2, or interface to wider bus to speed up cache line fetches

`include "defs.v"

module A2WB #(
   parameter [0:15] CORE_TYPES = {`CORE_TYPE_NONE, `CORE_TYPE_NONE, `CORE_TYPE_NONE, `CORE_TYPE_NONE},
   parameter [0:3] BUS_TYPE = `BUS_TYPE_WB2,
   parameter MAX_CORES = 4
) (
   input                   clk,
   input                   rst,
   input    [(`WB2_WB_OUT_START+1)*4-1:0]    cores_in,
   output   [(`WB2_WB_IN_START+1)*4-1:0]     cores_out,
   input    [127:0]        bus_in,
   output   [255:0]        bus_out
);

integer NUM_CORES;

genvar i;

// ------------------------------------------------------------------------------------------------
// I/O Connections

// cores must be contiguous, starting at 0

// core inputs to bridge:

/* wb1 core out:
assign c0_out = {wb_stb_0, wb_cyc_0, wb_we_0, wb_sel_0, wb_adr_0, wb_dat_o_0, 1'b0, 32'b0, 27'b0,   // 128
                 ext_in};                                                                           // 128
*/
/* wb2 core out:
assign c0_out = {i_wb_stb_0, i_wb_cyc_0, 1'b0     , 4'b0,      {i_wb_adr_0, 2'b0}, 32'b0,        1'b0, 32'b0, 27'b0,     // 128
                 d_wb_stb_0, d_wb_cyc_0, d_wb_we_0, d_wb_sel_0, d_wb_adr_0,        d_wb_dat_o_0, 1'b0, 32'b0, 27'b0,     // 128
                 ext_in};                                                                                                // 128
*/
/* a2l2 core out:
assign c0_in =  {i_wb_ack_0, i_wb_dat_i_0, 95'b0,  // 128
                 ext_out};                         // 128
*/

/*
bus out/in:
         assign bus_out[102] = bus_i_wb_cyc;
         assign bus_out[101] = bus_i_wb_stb;
         assign bus_out[100:71] = bus_i_wb_adr;
         assign bus_out[70] = bus_d_wb_cyc;
         assign bus_out[69] = bus_d_wb_stb;
         assign bus_out[68] = bus_d_wb_we;
         assign bus_out[67:64] = bus_d_wb_sel;
         assign bus_out[63:32] = bus_d_wb_adr;
         assign bus_out[31:0] = bus_d_wb_datw;

         assign bus_i_wb_ack = bus_in[65];
         assign bus_i_wb_datr = bus_in[64:33];
         assign bus_d_wb_ack = bus_in[32];
         assign bus_d_wb_datr = bus_in[31:0];
*/


wire [`WB2_WB_OUT_START:0]   core_in [0:3];
assign {core_in[0], core_in[1], core_in[2], core_in[3]} = cores_in;
wire [`WB2_WB_OUT_START:0]   core_out [0:3];
assign cores_out = {core_out[0], core_out[1], core_out[2], core_out[3]};

wire           i_wb_cyc [0:3];
wire           i_wb_stb [0:3];
wire [31:0]    i_wb_adr [0:3];
wire           i_wb_ack [0:3];
wire [31:0]    i_wb_datr[0:3];
wire           d_wb_cyc [0:3];
wire           d_wb_stb [0:3];
wire           d_wb_we [0:3];
wire [3:0]     d_wb_sel [0:3];
wire [31:0]    d_wb_adr [0:3];
wire [31:0]    d_wb_datw [0:3];
wire           d_wb_ack [0:3];
wire [31:0]    d_wb_datr [0:3];
wire [127:0]   ext_cmd [0:3];
wire [127:0]   ext_rsp [0:3];

wire [`CMD_SIZE-1:0]     cmd_out_0[0:3];
wire [`CMD_SIZE-1:0]     cmd_out_1[0:3];
wire [1:0]               cmd_taken[0:3];
wire [1:0]               cmd_complete[0:3];
wire [`CMD_SIZE-1:0]     req_0;
wire [`CMD_SIZE-1:0]     req_1;
wire [`RSP_SIZE-1:0]     core_rsp_0[0:3];
wire [`RSP_SIZE-1:0]     core_rsp_1[0:3];
wire [`RSP_SIZE-1:0]     rsp_0;
wire [`RSP_SIZE-1:0]     rsp_1;

// to do this, need to label scope and ref it
//if (BUS_TYPE == `BUS_TYPE_WB1) begin
   wire           bus_wb_cyc;
   wire           bus_wb_stb;
   wire           bus_wb_we;
   wire [3:0]     bus_wb_sel;
   wire [31:0]    bus_wb_adr;
   wire [31:0]    bus_wb_datw;
   wire           bus_wb_ack;
   wire [31:0]    bus_wb_datr;
//end

//if (BUS_TYPE == `BUS_TYPE_WB2) begin
   wire           bus_i_wb_cyc;
   wire           bus_i_wb_stb;
   wire [31:0]    bus_i_wb_adr;
   wire           bus_i_wb_ack;
   wire [31:0]    bus_i_wb_datr;
   wire           bus_i_rdy;
   wire           bus_d_wb_cyc;
   wire           bus_d_wb_stb;
   wire           bus_d_wb_we;
   wire [3:0]     bus_d_wb_sel;
   wire [31:0]    bus_d_wb_adr;
   wire [31:0]    bus_d_wb_datw;
   wire           bus_d_wb_ack;
   wire [31:0]    bus_d_wb_datr;
   wire           bus_d_rdy;
   wire           bus_i_wb_ack;
   wire [31:0]    bus_i_wb_datr;
   wire           bus_d_wb_ack;
   wire [31:0]    bus_d_wb_datr;
//end

generate
   assign NUM_CORES = 0;
   for (i = 0; i < MAX_CORES; i++) begin
      case (CORE_TYPES[i*4:i*4+3])
         `CORE_TYPE_NONE: begin
         end
         `CORE_TYPE_A2L2: begin
            assign NUM_CORES = NUM_CORES + 1;
            // a2l2
         end
         `CORE_TYPE_WB1: begin
            assign NUM_CORES = NUM_CORES + 1;
            assign d_wb_cyc[i] = core_in[i][`WB1_WB_OUT_START];
            assign d_wb_stb[i] = core_in[i][`WB1_WB_OUT_START-1];
            assign d_wb_we[i]  = core_in[i][`WB1_WB_OUT_START-2];
            assign d_wb_sel[i]  = core_in[i][`WB1_WB_OUT_START-3:`WB1_WB_OUT_START-6];
            assign d_wb_adr[i] = core_in[i][`WB1_WB_OUT_START-7:`WB1_WB_OUT_START-38];
            assign d_wb_datw[i] = core_in[i][`WB1_WB_OUT_START-39:`WB1_WB_OUT_START-70];
            assign ext_cmd[i] = core_in[i][`WB1_EXT_OUT_START:0];
            assign core_out[i][`WB1_WB_IN_START] = core_rsp_0[i][`RSP_VALID];
            assign core_out[i][`WB1_WB_IN_START-1:`WB1_WB_IN_START-32] = core_rsp_0[i][`RSP_DATA];
            assign core_out[i][`WB1_EXT_IN_START:0] = ext_rsp[i];
         end
         `CORE_TYPE_WB2: begin
            assign NUM_CORES = NUM_CORES + 1;
            assign i_wb_cyc[i] = core_in[i][`WB2_I_WB_OUT_START];
            assign i_wb_stb[i] = core_in[i][`WB2_I_WB_OUT_START-1];
            assign i_wb_adr[i] = core_in[i][`WB2_I_WB_OUT_START-7:`WB2_I_WB_OUT_START-38];
            assign d_wb_cyc[i] = core_in[i][`WB2_D_WB_OUT_START];
            assign d_wb_stb[i] = core_in[i][`WB2_D_WB_OUT_START-1];
            assign d_wb_we[i]  = core_in[i][`WB2_D_WB_OUT_START-2];
            assign d_wb_sel[i]  = core_in[i][`WB2_D_WB_OUT_START-3:`WB2_D_WB_OUT_START-6];
            assign d_wb_adr[i] = core_in[i][`WB2_D_WB_OUT_START-7:`WB2_D_WB_OUT_START-38];
            assign d_wb_datw[i] = core_in[i][`WB2_D_WB_OUT_START-39:`WB2_D_WB_OUT_START-70];
            assign ext_cmd[i] = core_in[i][`WB2_EXT_OUT_START:0];
            assign core_out[i][`WB2_I_WB_IN_START] = core_rsp_0[i][`RSP_VALID];
            assign core_out[i][`WB2_I_WB_IN_START-1:`WB2_I_WB_IN_START-32] = core_rsp_0[i][`RSP_DATA];
            assign core_out[i][`WB2_D_WB_IN_START] = core_rsp_1[i][`RSP_VALID];
            assign core_out[i][`WB2_D_WB_IN_START-1:`WB2_D_WB_IN_START-32] = core_rsp_1[i][`RSP_DATA];
            assign core_out[i][`WB2_EXT_IN_START:0] = ext_rsp[i];
         end
      endcase
   end
endgenerate

// ------------------------------------------------------------------------------------------------
// Command Interfaces
//

generate
   for (i = 0; i < MAX_CORES; i++) begin: cmd
      case (CORE_TYPES[i*4:i*4+3])
         `CORE_TYPE_NONE: begin
         end
         `CORE_TYPE_A2L2: begin
            // convert a2l2 to internal format
         end
         `CORE_TYPE_WB1: begin
            cmd_wb #(.CORE_ID(i), .CORE_TYPE(CORE_TYPES[i*4:i*4+3]), .BUS_TYPE(BUS_TYPE)) cmd_wb1 (
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
               .cmd_taken(cmd_taken[i]),
               .cmd_complete(cmd_complete[i]),
               .cmd_out_0(cmd_out_0[i]),
               .cmd_out_1(cmd_out_1[i])
            );
         end
         `CORE_TYPE_WB2: begin
            cmd_wb #(.CORE_ID(i), .CORE_TYPE(CORE_TYPES[i*4:i*4+3]), .BUS_TYPE(BUS_TYPE)) cmd_wb2 (
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
               .cmd_taken(cmd_taken[i]),
               .cmd_complete(cmd_complete[i]),
               .cmd_out_0(cmd_out_0[i]),
               .cmd_out_1(cmd_out_1[i])
            );
         end
      endcase
   end
endgenerate

// ------------------------------------------------------------------------------------------------
// Arbitration
//
// LRU, etc. select from pending cmds; also needs smp to stall some/all cmds
// do addr cmp here, if necessary? or could do in smp - important if multiple outstanding req's allowed
//  by any bus, which means there will be cmd and rsp queues with ordering requirements
// also needs to block cmds when bus is busy

// cmds include valid indicator
// cmd_taken is bit vector for cmds 1,0
// cmd_out's go to the bus; rsp_in's have to be associated with requesting core

arb #() arb (
   .clk(clk),
   .rst(rst),
   .cmd_in_0_0(cmd_out_0[0]),
   .cmd_in_1_0(cmd_out_1[0]),
   .cmd_tkn_0(cmd_taken[0]),
   .cmd_in_0_1(cmd_out_0[1]),
   .cmd_in_1_1(cmd_out_1[1]),
   .cmd_tkn_1(cmd_taken[1]),
   .cmd_in_0_2(cmd_out_0[2]),
   .cmd_in_1_2(cmd_out_1[2]),
   .cmd_tkn_2(cmd_taken[2]),
   .cmd_in_0_3(cmd_out_0[3]),
   .cmd_in_1_3(cmd_out_1[3]),
   .cmd_tkn_3(cmd_taken[3]),
   .bus_rdy_0(bus_i_rdy),
   .bus_rdy_1(bus_d_rdy),
   .cmd_out_0(req_0),
   .cmd_out_1(req_1)
);

// ------------------------------------------------------------------------------------------------
// SMP

// special ops: track resv, stall pending cmds, gen rsp
smp #() smp (

);

// ------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------
// Bus interface and logic can be replaced for different buses

// ------------------------------------------------------------------------------------------------
// Bus Out
// requests to main bus

generate begin: bus_wire_out
   case(BUS_TYPE)
      `BUS_TYPE_WB1: begin
         assign bus_out[`BUS_WB1_OUT_START] = bus_i_wb_cyc;
         assign bus_out[`BUS_WB1_OUT_START-1] = bus_wb_stb;
         assign bus_out[`BUS_WB1_OUT_START-2] = bus_wb_we;
         assign bus_out[`BUS_WB1_OUT_START-3:`BUS_WB1_OUT_START-6] = bus_wb_sel;
         assign bus_out[`BUS_WB1_OUT_START-7:`BUS_WB1_OUT_START-38] = bus_wb_adr;
         assign bus_out[`BUS_WB1_OUT_START-39:`BUS_WB1_OUT_START-70] = bus_wb_datw;
      end
      `BUS_TYPE_WB2: begin
         assign bus_out[`BUS_WB2_I_OUT_START] = bus_i_wb_cyc;
         assign bus_out[`BUS_WB2_I_OUT_START-1] = bus_i_wb_stb;
         assign bus_out[`BUS_WB2_I_OUT_START-7:`BUS_WB2_I_OUT_START-38] = bus_i_wb_adr;
         assign bus_out[`BUS_WB2_D_OUT_START] = bus_d_wb_cyc;
         assign bus_out[`BUS_WB2_D_OUT_START-1] = bus_d_wb_stb;
         assign bus_out[`BUS_WB2_D_OUT_START-2] = bus_d_wb_we;
         assign bus_out[`BUS_WB2_D_OUT_START-3:`BUS_WB2_D_OUT_START-6] = bus_d_wb_sel;
         assign bus_out[`BUS_WB2_D_OUT_START-7:`BUS_WB2_D_OUT_START-38] = bus_d_wb_adr;
         assign bus_out[`BUS_WB2_D_OUT_START-39:`BUS_WB2_D_OUT_START-70] = bus_d_wb_datw;
         end
      endcase
end
endgenerate

// ------------------------------------------------------------------------------------------------
// Bus In
// responses from main bus

generate begin: bus_wire_in
   case(BUS_TYPE)
      `BUS_TYPE_WB1: begin
         assign bus_wb_ack = bus_in[`BUS_WB1_IN_START];
         assign bus_wb_datr = bus_in[`BUS_WB1_IN_START-1:`BUS_WB1_IN_START-32];
      end
      `BUS_TYPE_WB2: begin
         assign bus_i_wb_ack = bus_in[`BUS_WB2_I_IN_START];
         assign bus_i_wb_datr = bus_in[`BUS_WB2_I_IN_START-1:`BUS_WB2_I_IN_START-32];
         assign bus_d_wb_ack = bus_in[`BUS_WB2_D_IN_START];
         assign bus_d_wb_datr = bus_in[`BUS_WB2_D_IN_START-1:`BUS_WB2_D_IN_START-32];
      end
   endcase
end
endgenerate

// ------------------------------------------------------------------------------------------------
// Bus Interface
// translate reqs and handle bus transactions

generate begin: bus
   case(BUS_TYPE)
      `BUS_TYPE_WB1: begin
         bus_wb1 #() bus(
            .clk(clk),
            .rst(rst),
            .rdy(bus_rdy),
            .cmd(req_0),
            .rsp(rsp_0),
            .wb_stb(bus_wb_stb),
            .wb_cyc(bus_wb_cyc),
            .wb_we(bus_wb_we),
            .wb_sel(bus_wb_sel),
            .wb_adr(bus_wb_adr),
            .wb_datw(bus_wb_datw),
            .wb_ack(bus_wb_ack),
            .wb_datr(bus_wb_datr)
         );
      end
      `BUS_TYPE_WB2: begin
         bus_wb2 #() bus(
            .clk(clk),
            .rst(rst),
            .rdy_i(bus_i_rdy),
            .rdy_d(bus_d_rdy),
            .cmd_i(req_0),
            .cmd_d(req_1),
            .rsp_i(rsp_0),
            .rsp_d(rsp_1),
            .i_wb_cyc(bus_i_wb_cyc),
            .i_wb_stb(bus_i_wb_stb),
            .i_wb_adr(bus_i_wb_adr),
            .i_wb_ack(bus_i_wb_ack),
            .i_wb_datr(bus_i_wb_datr),
            .d_wb_cyc(bus_d_wb_cyc),
            .d_wb_stb(bus_d_wb_stb),
            .d_wb_we(bus_d_wb_we),
            .d_wb_sel(bus_d_wb_sel),
            .d_wb_adr(bus_d_wb_adr),
            .d_wb_datw(bus_d_wb_datw),
            .d_wb_ack(bus_d_wb_ack),
            .d_wb_datr(bus_d_wb_datr)
         );
      end
   endcase
end
endgenerate

// ------------------------------------------------------------------------------------------------
// Response Queues
// responses for cores - just routing if no queues needed
// but should be component; rsp's are formatted differently based on core interface type, plus
//  a2l2 could support queues even if wb doesn't
// also, rsp may be gen'd from other units like smp, config, mailbox, etc.
generate begin: rsp
   for (i = 0; i < MAX_CORES; i++) begin
      assign core_rsp_0[i][`RSP_VALID] = rsp_0[`RSP_VALID] & (rsp_0[`RSP_CORE_ID] == i);
      assign core_rsp_0[i][`RSP_DATA] = rsp_0[`RSP_DATA];
      assign cmd_complete[i][0] = core_rsp_0[i][`RSP_VALID];
      assign core_rsp_1[i][`RSP_VALID] = rsp_1[`RSP_VALID] & (rsp_1[`RSP_CORE_ID] == i);
      assign core_rsp_1[i][`RSP_DATA] = rsp_1[`RSP_DATA];
      assign cmd_complete[i][1] = core_rsp_1[i][`RSP_VALID];
   end
end
endgenerate



// ------------------------------------------------------------------------------------------------
// Misc/Errors/Debug
// stuff

/*
generate begin: misc
   for (i = 0; i < MAX_CORES; i++) begin
   end
end
endgenerate
*/

endmodule