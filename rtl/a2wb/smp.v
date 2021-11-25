
module smp # (
) (

);

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

// sync ops

// cache ops

// tlb ops

endmodule