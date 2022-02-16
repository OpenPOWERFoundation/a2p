// a2wb defines

`define CORE_TYPE_NONE 4'h0
`define CORE_TYPE_A2L2 4'h1
`define CORE_TYPE_WB1  4'h2
`define CORE_TYPE_WB2  4'h3

`define BUS_TYPE_NONE  4'h0
`define BUS_TYPE_WB1   4'h1
`define BUS_TYPE_WB2   4'h2

// starting bits for core in/out subvectors

// out's are core out/bridge in

`define WB1_WB_OUT_START   383
`define WB1_EXT_OUT_START  `WB1_WB_OUT_START-128

`define WB2_WB_OUT_START   383
`define WB2_I_WB_OUT_START 383
`define WB2_D_WB_OUT_START `WB2_I_WB_OUT_START-128
`define WB2_EXT_OUT_START  `WB2_D_WB_OUT_START-128

// in's are bridge out/core in

`define WB1_WB_IN_START    383
`define WB1_EXT_IN_START   `WB1_WB_IN_START-128

`define WB2_WB_IN_START  383
`define WB2_I_WB_IN_START  383
`define WB2_D_WB_IN_START  `WB2_I_WB_IN_START-128
`define WB2_EXT_IN_START   `WB2_D_WB_IN_START-128

// starting bits for bus in/out subvectors

`define BUS_WB1_OUT_START 127
`define BUS_WB1_IN_START 127

`define BUS_WB2_OUT_START 255
`define BUS_WB2_I_OUT_START 255
`define BUS_WB2_D_OUT_START 127
`define BUS_WB2_IN_START 127
`define BUS_WB2_I_IN_START 127
`define BUS_WB2_D_IN_START 63


// internal

`define CMD_SIZE 77
`define CMD_VALID    `CMD_SIZE-1
`define CMD_CORE_ID  `CMD_SIZE-2:`CMD_SIZE-3
`define CMD_RSVD_0   `CMD_SIZE-4
`define CMD_RSVD_1   `CMD_SIZE-5
`define CMD_TAKEN    `CMD_SIZE-6
`define CMD_RSVD_2   `CMD_SIZE-7
`define CMD_RSVD_3   `CMD_SIZE-8
`define CMD_WE       `CMD_SIZE-9
`define CMD_SEL      `CMD_SIZE-10:`CMD_SIZE-13
`define CMD_ADR      `CMD_SIZE-14:`CMD_SIZE-45
`define CMD_DATW     `CMD_SIZE-46:`CMD_SIZE-77

`define RSP_SIZE 64
`define RSP_VALID    `RSP_SIZE-1
`define RSP_CORE_ID  `RSP_SIZE-2:`RSP_SIZE-3
`define RSP_RSVD_0   `RSP_SIZE-4:`RSP_SIZE-8
`define RSP_DATA     `RSP_SIZE-9:`RSP_SIZE-40


// main bus
`define WB1_BUS_OUT_START 127
`define WB1_BUS_IN_START 127
