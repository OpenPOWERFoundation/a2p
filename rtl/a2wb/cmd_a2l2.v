// a2l2 default: allow 1 ld, 1 st credit and use 2 dedicated queues

`include "defs.v"

reg  [77:0] cmd_queue_q[0:3][0:1];
wire [77:0] cmd_queue_d[0:3][0:1];
wire [77:0] cmd_queue_in[0:3][0:1];
wire [71:0] cmd_queue_out[0:3];

module cmd_wb #(
   parameter CORE_TYPE = CORE_TYPE_A2L2
) (
);

endmodule