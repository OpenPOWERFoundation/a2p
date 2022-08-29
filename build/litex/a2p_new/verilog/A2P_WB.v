// Generator : SpinalHDL v1.4.0    git head : ecb5a80b713566f417ea3ea061f9969e73770a7f
// Date      : 29/08/2022, 07:50:54
// Component : A2P_4K1W


`define TgtCtrlEnum_defaultEncoding_type [0:0]
`define TgtCtrlEnum_defaultEncoding_RT 1'b0
`define TgtCtrlEnum_defaultEncoding_RA 1'b1

`define CRMoveCtrlEnum_defaultEncoding_type [1:0]
`define CRMoveCtrlEnum_defaultEncoding_MCRF 2'b00
`define CRMoveCtrlEnum_defaultEncoding_MCRXRX 2'b01
`define CRMoveCtrlEnum_defaultEncoding_MTCRF 2'b10

`define Src1CtrlEnum_defaultEncoding_type [2:0]
`define Src1CtrlEnum_defaultEncoding_RA 3'b000
`define Src1CtrlEnum_defaultEncoding_RA_N 3'b001
`define Src1CtrlEnum_defaultEncoding_RA_NIA 3'b010
`define Src1CtrlEnum_defaultEncoding_RA_0 3'b011
`define Src1CtrlEnum_defaultEncoding_RS 3'b100

`define Src2CtrlEnum_defaultEncoding_type [2:0]
`define Src2CtrlEnum_defaultEncoding_RB 3'b000
`define Src2CtrlEnum_defaultEncoding_RB_0 3'b001
`define Src2CtrlEnum_defaultEncoding_RB_M1 3'b010
`define Src2CtrlEnum_defaultEncoding_RB_UI 3'b011
`define Src2CtrlEnum_defaultEncoding_RB_SI 3'b100
`define Src2CtrlEnum_defaultEncoding_RB_SH 3'b101
`define Src2CtrlEnum_defaultEncoding_RB_PCISD 3'b110
`define Src2CtrlEnum_defaultEncoding_RA 3'b111

`define AluCtrlEnum_defaultEncoding_type [1:0]
`define AluCtrlEnum_defaultEncoding_ADD 2'b00
`define AluCtrlEnum_defaultEncoding_BIT_1 2'b01
`define AluCtrlEnum_defaultEncoding_RIMI 2'b10
`define AluCtrlEnum_defaultEncoding_SPEC 2'b11

`define EndianEnum_defaultEncoding_type [0:0]
`define EndianEnum_defaultEncoding_BE 1'b0
`define EndianEnum_defaultEncoding_LE 1'b1

`define Src3CtrlEnum_defaultEncoding_type [1:0]
`define Src3CtrlEnum_defaultEncoding_CA 2'b00
`define Src3CtrlEnum_defaultEncoding_CA_0 2'b01
`define Src3CtrlEnum_defaultEncoding_CA_1 2'b10

`define DataSizeEnum_defaultEncoding_type [1:0]
`define DataSizeEnum_defaultEncoding_B 2'b00
`define DataSizeEnum_defaultEncoding_H 2'b01
`define DataSizeEnum_defaultEncoding_HA 2'b10
`define DataSizeEnum_defaultEncoding_W 2'b11

`define AluSpecCtrlEnum_defaultEncoding_type [2:0]
`define AluSpecCtrlEnum_defaultEncoding_CNTLZW 3'b000
`define AluSpecCtrlEnum_defaultEncoding_CNTTZW 3'b001
`define AluSpecCtrlEnum_defaultEncoding_POPCNTB 3'b010
`define AluSpecCtrlEnum_defaultEncoding_POPCNTW 3'b011
`define AluSpecCtrlEnum_defaultEncoding_CMPB 3'b100
`define AluSpecCtrlEnum_defaultEncoding_PRTYW 3'b101

`define AluBitwiseCtrlEnum_defaultEncoding_type [3:0]
`define AluBitwiseCtrlEnum_defaultEncoding_AND_1 4'b0000
`define AluBitwiseCtrlEnum_defaultEncoding_ANDC 4'b0001
`define AluBitwiseCtrlEnum_defaultEncoding_OR_1 4'b0010
`define AluBitwiseCtrlEnum_defaultEncoding_ORC 4'b0011
`define AluBitwiseCtrlEnum_defaultEncoding_XOR_1 4'b0100
`define AluBitwiseCtrlEnum_defaultEncoding_XORC 4'b0101
`define AluBitwiseCtrlEnum_defaultEncoding_EQV 4'b0110
`define AluBitwiseCtrlEnum_defaultEncoding_NAND_1 4'b0111
`define AluBitwiseCtrlEnum_defaultEncoding_NOR_1 4'b1000
`define AluBitwiseCtrlEnum_defaultEncoding_EXTSB 4'b1001
`define AluBitwiseCtrlEnum_defaultEncoding_EXTSH 4'b1010

`define AluRimiCtrlEnum_defaultEncoding_type [2:0]
`define AluRimiCtrlEnum_defaultEncoding_ROT 3'b000
`define AluRimiCtrlEnum_defaultEncoding_INS 3'b001
`define AluRimiCtrlEnum_defaultEncoding_SHIFTL 3'b010
`define AluRimiCtrlEnum_defaultEncoding_SHIFTR 3'b011
`define AluRimiCtrlEnum_defaultEncoding_SHIFTRA 3'b100

`define CRBusCmdEnum_defaultEncoding_type [4:0]
`define CRBusCmdEnum_defaultEncoding_NOP 5'b00000
`define CRBusCmdEnum_defaultEncoding_CR0 5'b00001
`define CRBusCmdEnum_defaultEncoding_CR1 5'b00010
`define CRBusCmdEnum_defaultEncoding_CR6 5'b00011
`define CRBusCmdEnum_defaultEncoding_CMP 5'b00100
`define CRBusCmdEnum_defaultEncoding_AND_1 5'b00101
`define CRBusCmdEnum_defaultEncoding_OR_1 5'b00110
`define CRBusCmdEnum_defaultEncoding_XOR_1 5'b00111
`define CRBusCmdEnum_defaultEncoding_NAND_1 5'b01000
`define CRBusCmdEnum_defaultEncoding_NOR_1 5'b01001
`define CRBusCmdEnum_defaultEncoding_EQV 5'b01010
`define CRBusCmdEnum_defaultEncoding_ANDC 5'b01011
`define CRBusCmdEnum_defaultEncoding_ORC 5'b01100
`define CRBusCmdEnum_defaultEncoding_MCRF 5'b01101
`define CRBusCmdEnum_defaultEncoding_MCRXRX 5'b01110
`define CRBusCmdEnum_defaultEncoding_MTOCRF 5'b01111
`define CRBusCmdEnum_defaultEncoding_MTCRF 5'b10000
`define CRBusCmdEnum_defaultEncoding_DEC 5'b10001
`define CRBusCmdEnum_defaultEncoding_LNK 5'b10010
`define CRBusCmdEnum_defaultEncoding_DECLNK 5'b10011

`define BranchCtrlEnum_defaultEncoding_type [2:0]
`define BranchCtrlEnum_defaultEncoding_NONE 3'b000
`define BranchCtrlEnum_defaultEncoding_BU 3'b001
`define BranchCtrlEnum_defaultEncoding_BC 3'b010
`define BranchCtrlEnum_defaultEncoding_BCLR 3'b011
`define BranchCtrlEnum_defaultEncoding_BCCTR 3'b100
`define BranchCtrlEnum_defaultEncoding_BCTAR 3'b101

`define EnvCtrlEnum_defaultEncoding_type [3:0]
`define EnvCtrlEnum_defaultEncoding_NONE 4'b0000
`define EnvCtrlEnum_defaultEncoding_MFMSR 4'b0001
`define EnvCtrlEnum_defaultEncoding_MTMSR 4'b0010
`define EnvCtrlEnum_defaultEncoding_SC 4'b0011
`define EnvCtrlEnum_defaultEncoding_SCV 4'b0100
`define EnvCtrlEnum_defaultEncoding_RFI 4'b0101
`define EnvCtrlEnum_defaultEncoding_RFSCV 4'b0110
`define EnvCtrlEnum_defaultEncoding_TW 4'b0111
`define EnvCtrlEnum_defaultEncoding_TWI 4'b1000

`define AluRimiAmtEnum_defaultEncoding_type [0:0]
`define AluRimiAmtEnum_defaultEncoding_IMM 1'b0
`define AluRimiAmtEnum_defaultEncoding_RB 1'b1

`define CRLogCtrlEnum_defaultEncoding_type [2:0]
`define CRLogCtrlEnum_defaultEncoding_AND_1 3'b000
`define CRLogCtrlEnum_defaultEncoding_OR_1 3'b001
`define CRLogCtrlEnum_defaultEncoding_XOR_1 3'b010
`define CRLogCtrlEnum_defaultEncoding_NAND_1 3'b011
`define CRLogCtrlEnum_defaultEncoding_NOR_1 3'b100
`define CRLogCtrlEnum_defaultEncoding_EQV 3'b101
`define CRLogCtrlEnum_defaultEncoding_ANDC 3'b110
`define CRLogCtrlEnum_defaultEncoding_ORC 3'b111

`define ExcpEnum_defaultEncoding_type [4:0]
`define ExcpEnum_defaultEncoding_NONE 5'b00000
`define ExcpEnum_defaultEncoding_SC 5'b00001
`define ExcpEnum_defaultEncoding_SCV 5'b00010
`define ExcpEnum_defaultEncoding_TRAP 5'b00011
`define ExcpEnum_defaultEncoding_RFI 5'b00100
`define ExcpEnum_defaultEncoding_RFSCV 5'b00101
`define ExcpEnum_defaultEncoding_DSI 5'b00110
`define ExcpEnum_defaultEncoding_DSI_PROT 5'b00111
`define ExcpEnum_defaultEncoding_DSS 5'b01000
`define ExcpEnum_defaultEncoding_ISI 5'b01001
`define ExcpEnum_defaultEncoding_ISI_PROT 5'b01010
`define ExcpEnum_defaultEncoding_ISS 5'b01011
`define ExcpEnum_defaultEncoding_ALG 5'b01100
`define ExcpEnum_defaultEncoding_PGM_ILL 5'b01101
`define ExcpEnum_defaultEncoding_PGM_PRV 5'b01110
`define ExcpEnum_defaultEncoding_FP 5'b01111
`define ExcpEnum_defaultEncoding_VEC 5'b10000
`define ExcpEnum_defaultEncoding_VSX 5'b10001
`define ExcpEnum_defaultEncoding_FAC 5'b10010
`define ExcpEnum_defaultEncoding_SR 5'b10011
`define ExcpEnum_defaultEncoding_MC 5'b10100
`define ExcpEnum_defaultEncoding_EXT 5'b10101
`define ExcpEnum_defaultEncoding_DEC 5'b10110
`define ExcpEnum_defaultEncoding_TR 5'b10111
`define ExcpEnum_defaultEncoding_PM 5'b11000


module InstructionCache (
  input               io_flush,
  input               io_cpu_prefetch_isValid,
  output reg          io_cpu_prefetch_haltIt,
  input      [31:0]   io_cpu_prefetch_pc,
  input               io_cpu_fetch_isValid,
  input               io_cpu_fetch_isStuck,
  input               io_cpu_fetch_isRemoved,
  input      [31:0]   io_cpu_fetch_pc,
  output     [31:0]   io_cpu_fetch_data,
  output              io_cpu_fetch_mmuBus_cmd_isValid,
  output     [31:0]   io_cpu_fetch_mmuBus_cmd_virtualAddress,
  output              io_cpu_fetch_mmuBus_cmd_bypassTranslation,
  input      [31:0]   io_cpu_fetch_mmuBus_rsp_physicalAddress,
  input               io_cpu_fetch_mmuBus_rsp_isIoAccess,
  input               io_cpu_fetch_mmuBus_rsp_allowRead,
  input               io_cpu_fetch_mmuBus_rsp_allowWrite,
  input               io_cpu_fetch_mmuBus_rsp_allowExecute,
  input               io_cpu_fetch_mmuBus_rsp_exception,
  input               io_cpu_fetch_mmuBus_rsp_refilling,
  output              io_cpu_fetch_mmuBus_spr_valid,
  output     [9:0]    io_cpu_fetch_mmuBus_spr_payload_id,
  output     [31:0]   io_cpu_fetch_mmuBus_spr_payload_data,
  output              io_cpu_fetch_mmuBus_end,
  input               io_cpu_fetch_mmuBus_busy,
  output     [31:0]   io_cpu_fetch_physicalAddress,
  output     [3:0]    io_cpu_fetch_exceptionType,
  input               io_cpu_fetch_bypassTranslation,
  output              io_cpu_fetch_haltIt,
  input               io_cpu_decode_isValid,
  input               io_cpu_decode_isStuck,
  input      [31:0]   io_cpu_decode_pc,
  output     [31:0]   io_cpu_decode_physicalAddress,
  output     [31:0]   io_cpu_decode_data,
  output              io_cpu_decode_cacheMiss,
  output              io_cpu_decode_error,
  output              io_cpu_decode_mmuRefilling,
  output              io_cpu_decode_mmuException,
  input               io_cpu_decode_isUser,
  output     [3:0]    io_cpu_decode_exceptionType,
  input               io_cpu_fill_valid,
  input      [31:0]   io_cpu_fill_payload,
  output              io_mem_cmd_valid,
  input               io_mem_cmd_ready,
  output     [31:0]   io_mem_cmd_payload_address,
  output     [2:0]    io_mem_cmd_payload_size,
  input               io_mem_rsp_valid,
  input      [31:0]   io_mem_rsp_payload_data,
  input               io_mem_rsp_payload_error,
  input               io_spr_valid,
  input      [9:0]    io_spr_payload_id,
  input      [31:0]   io_spr_payload_data,
  input               clk,
  input               reset
);
  reg        [21:0]   _zz_11_;
  reg        [31:0]   _zz_12_;
  wire                _zz_13_;
  wire                _zz_14_;
  wire       [0:0]    _zz_15_;
  wire       [0:0]    _zz_16_;
  wire       [21:0]   _zz_17_;
  reg                 _zz_1_;
  reg                 _zz_2_;
  reg                 lineLoader_fire;
  reg                 lineLoader_valid;
  (* syn_keep , keep *) reg        [31:0]   lineLoader_address /* synthesis syn_keep = 1 */ ;
  reg                 lineLoader_hadError;
  reg                 lineLoader_flushPending;
  reg        [7:0]    lineLoader_flushCounter;
  reg                 _zz_3_;
  reg                 lineLoader_cmdSent;
  reg                 lineLoader_wayToAllocate_willIncrement;
  wire                lineLoader_wayToAllocate_willClear;
  wire                lineLoader_wayToAllocate_willOverflowIfInc;
  wire                lineLoader_wayToAllocate_willOverflow;
  (* syn_keep , keep *) reg        [2:0]    lineLoader_wordIndex /* synthesis syn_keep = 1 */ ;
  wire                lineLoader_write_tag_0_valid;
  wire       [6:0]    lineLoader_write_tag_0_payload_address;
  wire                lineLoader_write_tag_0_payload_data_valid;
  wire                lineLoader_write_tag_0_payload_data_error;
  wire       [19:0]   lineLoader_write_tag_0_payload_data_address;
  wire                lineLoader_write_data_0_valid;
  wire       [9:0]    lineLoader_write_data_0_payload_address;
  wire       [31:0]   lineLoader_write_data_0_payload_data;
  wire                _zz_4_;
  wire       [6:0]    _zz_5_;
  wire                _zz_6_;
  wire                fetchStage_read_waysValues_0_tag_valid;
  wire                fetchStage_read_waysValues_0_tag_error;
  wire       [19:0]   fetchStage_read_waysValues_0_tag_address;
  wire       [21:0]   _zz_7_;
  wire       [9:0]    _zz_8_;
  wire                _zz_9_;
  wire       [31:0]   fetchStage_read_waysValues_0_data;
  reg        [31:0]   decodeStage_mmuRsp_physicalAddress;
  reg                 decodeStage_mmuRsp_isIoAccess;
  reg                 decodeStage_mmuRsp_allowRead;
  reg                 decodeStage_mmuRsp_allowWrite;
  reg                 decodeStage_mmuRsp_allowExecute;
  reg                 decodeStage_mmuRsp_exception;
  reg                 decodeStage_mmuRsp_refilling;
  reg                 decodeStage_hit_tags_0_valid;
  reg                 decodeStage_hit_tags_0_error;
  reg        [19:0]   decodeStage_hit_tags_0_address;
  wire                decodeStage_hit_hits_0;
  wire                decodeStage_hit_valid;
  reg        [31:0]   _zz_10_;
  wire       [31:0]   decodeStage_hit_data;
  wire                decodeStage_protError;
  reg [21:0] ways_0_tags [0:127];
  reg [31:0] ways_0_datas [0:1023];

  assign _zz_13_ = (! lineLoader_flushCounter[7]);
  assign _zz_14_ = (lineLoader_flushPending && (! (lineLoader_valid || io_cpu_fetch_isValid)));
  assign _zz_15_ = _zz_7_[0 : 0];
  assign _zz_16_ = _zz_7_[1 : 1];
  assign _zz_17_ = {lineLoader_write_tag_0_payload_data_address,{lineLoader_write_tag_0_payload_data_error,lineLoader_write_tag_0_payload_data_valid}};
  always @ (posedge clk) begin
    if(_zz_2_) begin
      ways_0_tags[lineLoader_write_tag_0_payload_address] <= _zz_17_;
    end
  end

  always @ (posedge clk) begin
    if(_zz_6_) begin
      _zz_11_ <= ways_0_tags[_zz_5_];
    end
  end

  always @ (posedge clk) begin
    if(_zz_1_) begin
      ways_0_datas[lineLoader_write_data_0_payload_address] <= lineLoader_write_data_0_payload_data;
    end
  end

  always @ (posedge clk) begin
    if(_zz_9_) begin
      _zz_12_ <= ways_0_datas[_zz_8_];
    end
  end

  always @ (*) begin
    _zz_1_ = 1'b0;
    if(lineLoader_write_data_0_valid)begin
      _zz_1_ = 1'b1;
    end
  end

  always @ (*) begin
    _zz_2_ = 1'b0;
    if(lineLoader_write_tag_0_valid)begin
      _zz_2_ = 1'b1;
    end
  end

  assign io_cpu_fetch_haltIt = io_cpu_fetch_mmuBus_busy;
  always @ (*) begin
    lineLoader_fire = 1'b0;
    if(io_mem_rsp_valid)begin
      if((lineLoader_wordIndex == (3'b111)))begin
        lineLoader_fire = 1'b1;
      end
    end
  end

  always @ (*) begin
    io_cpu_prefetch_haltIt = (lineLoader_valid || lineLoader_flushPending);
    if(_zz_13_)begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
    if((! _zz_3_))begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
    if(io_flush)begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
  end

  assign io_mem_cmd_valid = (lineLoader_valid && (! lineLoader_cmdSent));
  assign io_mem_cmd_payload_address = {lineLoader_address[31 : 5],5'h0};
  assign io_mem_cmd_payload_size = (3'b101);
  always @ (*) begin
    lineLoader_wayToAllocate_willIncrement = 1'b0;
    if((! lineLoader_valid))begin
      lineLoader_wayToAllocate_willIncrement = 1'b1;
    end
  end

  assign lineLoader_wayToAllocate_willClear = 1'b0;
  assign lineLoader_wayToAllocate_willOverflowIfInc = 1'b1;
  assign lineLoader_wayToAllocate_willOverflow = (lineLoader_wayToAllocate_willOverflowIfInc && lineLoader_wayToAllocate_willIncrement);
  assign _zz_4_ = 1'b1;
  assign lineLoader_write_tag_0_valid = ((_zz_4_ && lineLoader_fire) || (! lineLoader_flushCounter[7]));
  assign lineLoader_write_tag_0_payload_address = (lineLoader_flushCounter[7] ? lineLoader_address[11 : 5] : lineLoader_flushCounter[6 : 0]);
  assign lineLoader_write_tag_0_payload_data_valid = lineLoader_flushCounter[7];
  assign lineLoader_write_tag_0_payload_data_error = (lineLoader_hadError || io_mem_rsp_payload_error);
  assign lineLoader_write_tag_0_payload_data_address = lineLoader_address[31 : 12];
  assign lineLoader_write_data_0_valid = (io_mem_rsp_valid && _zz_4_);
  assign lineLoader_write_data_0_payload_address = {lineLoader_address[11 : 5],lineLoader_wordIndex};
  assign lineLoader_write_data_0_payload_data = io_mem_rsp_payload_data;
  assign _zz_5_ = io_cpu_prefetch_pc[11 : 5];
  assign _zz_6_ = (! io_cpu_fetch_isStuck);
  assign _zz_7_ = _zz_11_;
  assign fetchStage_read_waysValues_0_tag_valid = _zz_15_[0];
  assign fetchStage_read_waysValues_0_tag_error = _zz_16_[0];
  assign fetchStage_read_waysValues_0_tag_address = _zz_7_[21 : 2];
  assign _zz_8_ = io_cpu_prefetch_pc[11 : 2];
  assign _zz_9_ = (! io_cpu_fetch_isStuck);
  assign fetchStage_read_waysValues_0_data = _zz_12_;
  assign io_cpu_fetch_data = fetchStage_read_waysValues_0_data;
  assign io_cpu_fetch_mmuBus_cmd_isValid = io_cpu_fetch_isValid;
  assign io_cpu_fetch_mmuBus_cmd_virtualAddress = io_cpu_fetch_pc;
  assign io_cpu_fetch_mmuBus_cmd_bypassTranslation = io_cpu_fetch_bypassTranslation;
  assign io_cpu_fetch_mmuBus_end = ((! io_cpu_fetch_isStuck) || io_cpu_fetch_isRemoved);
  assign io_cpu_fetch_physicalAddress = io_cpu_fetch_mmuBus_rsp_physicalAddress;
  assign io_cpu_fetch_mmuBus_spr_valid = io_spr_valid;
  assign io_cpu_fetch_mmuBus_spr_payload_id = io_spr_payload_id;
  assign io_cpu_fetch_mmuBus_spr_payload_data = io_spr_payload_data;
  assign decodeStage_hit_hits_0 = (decodeStage_hit_tags_0_valid && (decodeStage_hit_tags_0_address == decodeStage_mmuRsp_physicalAddress[31 : 12]));
  assign decodeStage_hit_valid = (decodeStage_hit_hits_0 != (1'b0));
  assign decodeStage_hit_data = _zz_10_;
  assign io_cpu_decode_data = decodeStage_hit_data;
  assign io_cpu_decode_cacheMiss = (! decodeStage_hit_valid);
  assign io_cpu_decode_error = decodeStage_hit_tags_0_error;
  assign io_cpu_decode_mmuRefilling = decodeStage_mmuRsp_refilling;
  assign io_cpu_decode_mmuException = ((! decodeStage_mmuRsp_refilling) && decodeStage_mmuRsp_exception);
  assign decodeStage_protError = (io_cpu_decode_isValid && ((! decodeStage_mmuRsp_refilling) && ((! decodeStage_mmuRsp_allowRead) || (! decodeStage_mmuRsp_allowExecute))));
  assign io_cpu_decode_exceptionType = {{{decodeStage_mmuRsp_allowRead,decodeStage_mmuRsp_allowWrite},decodeStage_mmuRsp_allowExecute},decodeStage_protError};
  assign io_cpu_decode_physicalAddress = decodeStage_mmuRsp_physicalAddress;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      lineLoader_valid <= 1'b0;
      lineLoader_hadError <= 1'b0;
      lineLoader_flushPending <= 1'b1;
      lineLoader_cmdSent <= 1'b0;
      lineLoader_wordIndex <= (3'b000);
    end else begin
      if(lineLoader_fire)begin
        lineLoader_valid <= 1'b0;
      end
      if(lineLoader_fire)begin
        lineLoader_hadError <= 1'b0;
      end
      if(io_cpu_fill_valid)begin
        lineLoader_valid <= 1'b1;
      end
      if(io_flush)begin
        lineLoader_flushPending <= 1'b1;
      end
      if(_zz_14_)begin
        lineLoader_flushPending <= 1'b0;
      end
      if((io_mem_cmd_valid && io_mem_cmd_ready))begin
        lineLoader_cmdSent <= 1'b1;
      end
      if(lineLoader_fire)begin
        lineLoader_cmdSent <= 1'b0;
      end
      if(io_mem_rsp_valid)begin
        lineLoader_wordIndex <= (lineLoader_wordIndex + (3'b001));
        if(io_mem_rsp_payload_error)begin
          lineLoader_hadError <= 1'b1;
        end
      end
    end
  end

  always @ (posedge clk) begin
    if(io_cpu_fill_valid)begin
      lineLoader_address <= io_cpu_fill_payload;
    end
    if(_zz_13_)begin
      lineLoader_flushCounter <= (lineLoader_flushCounter + 8'h01);
    end
    _zz_3_ <= lineLoader_flushCounter[7];
    if(_zz_14_)begin
      lineLoader_flushCounter <= 8'h0;
    end
    if((! io_cpu_decode_isStuck))begin
      decodeStage_mmuRsp_physicalAddress <= io_cpu_fetch_mmuBus_rsp_physicalAddress;
      decodeStage_mmuRsp_isIoAccess <= io_cpu_fetch_mmuBus_rsp_isIoAccess;
      decodeStage_mmuRsp_allowRead <= io_cpu_fetch_mmuBus_rsp_allowRead;
      decodeStage_mmuRsp_allowWrite <= io_cpu_fetch_mmuBus_rsp_allowWrite;
      decodeStage_mmuRsp_allowExecute <= io_cpu_fetch_mmuBus_rsp_allowExecute;
      decodeStage_mmuRsp_exception <= io_cpu_fetch_mmuBus_rsp_exception;
      decodeStage_mmuRsp_refilling <= io_cpu_fetch_mmuBus_rsp_refilling;
    end
    if((! io_cpu_decode_isStuck))begin
      decodeStage_hit_tags_0_valid <= fetchStage_read_waysValues_0_tag_valid;
      decodeStage_hit_tags_0_error <= fetchStage_read_waysValues_0_tag_error;
      decodeStage_hit_tags_0_address <= fetchStage_read_waysValues_0_tag_address;
    end
    if((! io_cpu_decode_isStuck))begin
      _zz_10_ <= fetchStage_read_waysValues_0_data;
    end
  end


endmodule

module DataCache (
  input               io_cpu_execute_isValid,
  input      [31:0]   io_cpu_execute_address,
  input               io_cpu_execute_args_wr,
  input      [31:0]   io_cpu_execute_args_data,
  input      [1:0]    io_cpu_execute_args_size,
  input               io_cpu_memory_isValid,
  input               io_cpu_memory_isStuck,
  input               io_cpu_memory_isRemoved,
  output              io_cpu_memory_isWrite,
  input      [31:0]   io_cpu_memory_address,
  output              io_cpu_memory_mmuBus_cmd_isValid,
  output     [31:0]   io_cpu_memory_mmuBus_cmd_virtualAddress,
  output              io_cpu_memory_mmuBus_cmd_bypassTranslation,
  input      [31:0]   io_cpu_memory_mmuBus_rsp_physicalAddress,
  input               io_cpu_memory_mmuBus_rsp_isIoAccess,
  input               io_cpu_memory_mmuBus_rsp_allowRead,
  input               io_cpu_memory_mmuBus_rsp_allowWrite,
  input               io_cpu_memory_mmuBus_rsp_allowExecute,
  input               io_cpu_memory_mmuBus_rsp_exception,
  input               io_cpu_memory_mmuBus_rsp_refilling,
  output              io_cpu_memory_mmuBus_spr_valid,
  output     [9:0]    io_cpu_memory_mmuBus_spr_payload_id,
  output     [31:0]   io_cpu_memory_mmuBus_spr_payload_data,
  output              io_cpu_memory_mmuBus_end,
  input               io_cpu_memory_mmuBus_busy,
  input               io_cpu_memory_bypassTranslation,
  input               io_cpu_writeBack_isValid,
  input               io_cpu_writeBack_isStuck,
  input               io_cpu_writeBack_isUser,
  output reg          io_cpu_writeBack_haltIt,
  output              io_cpu_writeBack_isWrite,
  output reg [31:0]   io_cpu_writeBack_data,
  input      [31:0]   io_cpu_writeBack_address,
  output              io_cpu_writeBack_mmuException,
  output              io_cpu_writeBack_unalignedAccess,
  output reg          io_cpu_writeBack_accessError,
  output     [3:0]    io_cpu_writeBack_exceptionType,
  output reg          io_cpu_redo,
  input               io_cpu_flush_valid,
  output reg          io_cpu_flush_ready,
  output reg          io_mem_cmd_valid,
  input               io_mem_cmd_ready,
  output reg          io_mem_cmd_payload_wr,
  output reg [31:0]   io_mem_cmd_payload_address,
  output     [31:0]   io_mem_cmd_payload_data,
  output     [3:0]    io_mem_cmd_payload_mask,
  output reg [2:0]    io_mem_cmd_payload_length,
  output reg          io_mem_cmd_payload_last,
  input               io_mem_rsp_valid,
  input      [31:0]   io_mem_rsp_payload_data,
  input               io_mem_rsp_payload_error,
  input               clk,
  input               reset
);
  reg        [21:0]   _zz_10_;
  reg        [31:0]   _zz_11_;
  wire                _zz_12_;
  wire                _zz_13_;
  wire                _zz_14_;
  wire                _zz_15_;
  wire                _zz_16_;
  wire       [0:0]    _zz_17_;
  wire       [0:0]    _zz_18_;
  wire       [0:0]    _zz_19_;
  wire       [2:0]    _zz_20_;
  wire       [1:0]    _zz_21_;
  wire       [21:0]   _zz_22_;
  reg                 _zz_1_;
  reg                 _zz_2_;
  wire                haltCpu;
  reg                 tagsReadCmd_valid;
  reg        [6:0]    tagsReadCmd_payload;
  reg                 tagsWriteCmd_valid;
  reg        [0:0]    tagsWriteCmd_payload_way;
  reg        [6:0]    tagsWriteCmd_payload_address;
  reg                 tagsWriteCmd_payload_data_valid;
  reg                 tagsWriteCmd_payload_data_error;
  reg        [19:0]   tagsWriteCmd_payload_data_address;
  reg                 tagsWriteLastCmd_valid;
  reg        [0:0]    tagsWriteLastCmd_payload_way;
  reg        [6:0]    tagsWriteLastCmd_payload_address;
  reg                 tagsWriteLastCmd_payload_data_valid;
  reg                 tagsWriteLastCmd_payload_data_error;
  reg        [19:0]   tagsWriteLastCmd_payload_data_address;
  reg                 dataReadCmd_valid;
  reg        [9:0]    dataReadCmd_payload;
  reg                 dataWriteCmd_valid;
  reg        [0:0]    dataWriteCmd_payload_way;
  reg        [9:0]    dataWriteCmd_payload_address;
  reg        [31:0]   dataWriteCmd_payload_data;
  reg        [3:0]    dataWriteCmd_payload_mask;
  wire                _zz_3_;
  wire                DC_DIR_tagsReadRsp_valid;
  wire                DC_DIR_tagsReadRsp_error;
  wire       [19:0]   DC_DIR_tagsReadRsp_address;
  wire       [21:0]   _zz_4_;
  wire                _zz_5_;
  wire       [31:0]   DC_DIR_dataReadRsp;
  reg        [3:0]    _zz_6_;
  wire       [3:0]    stage0_mask;
  wire       [0:0]    stage0_colisions;
  reg                 stageA_request_wr;
  reg        [31:0]   stageA_request_data;
  reg        [1:0]    stageA_request_size;
  reg        [3:0]    stageA_mask;
  wire                stageA_wayHits_0;
  reg        [0:0]    stage0_colisions_regNextWhen;
  wire       [0:0]    _zz_7_;
  wire       [0:0]    stageA_colisions;
  reg                 stageB_request_wr;
  reg        [31:0]   stageB_request_data;
  reg        [1:0]    stageB_request_size;
  reg                 stageB_mmuRspFreeze;
  reg        [31:0]   stageB_mmuRsp_physicalAddress;
  reg                 stageB_mmuRsp_isIoAccess;
  reg                 stageB_mmuRsp_allowRead;
  reg                 stageB_mmuRsp_allowWrite;
  reg                 stageB_mmuRsp_allowExecute;
  reg                 stageB_mmuRsp_exception;
  reg                 stageB_mmuRsp_refilling;
  reg                 stageB_tagsReadRsp_0_valid;
  reg                 stageB_tagsReadRsp_0_error;
  reg        [19:0]   stageB_tagsReadRsp_0_address;
  reg        [31:0]   stageB_dataReadRsp_0;
  wire       [0:0]    _zz_8_;
  reg        [0:0]    stageB_waysHits;
  wire                stageB_waysHit;
  wire       [31:0]   stageB_dataMux;
  reg        [3:0]    stageB_mask;
  reg        [0:0]    stageB_colisions;
  reg                 stageB_loaderValid;
  reg                 stageB_flusher_valid;
  reg                 stageB_flusher_start;
  wire       [31:0]   stageB_requestDataBypass;
  wire                stageB_isAmo;
  reg                 stageB_memCmdSent;
  wire                stageB_protError;
  wire       [0:0]    _zz_9_;
  reg                 loader_valid;
  reg                 loader_counter_willIncrement;
  wire                loader_counter_willClear;
  reg        [2:0]    loader_counter_valueNext;
  reg        [2:0]    loader_counter_value;
  wire                loader_counter_willOverflowIfInc;
  wire                loader_counter_willOverflow;
  reg        [0:0]    loader_waysAllocator;
  reg                 loader_error;
  reg [21:0] DC_DIR_tags [0:127];
  reg [7:0] DC_DIR_data_symbol0 [0:1023];
  reg [7:0] DC_DIR_data_symbol1 [0:1023];
  reg [7:0] DC_DIR_data_symbol2 [0:1023];
  reg [7:0] DC_DIR_data_symbol3 [0:1023];
  reg [7:0] _zz_23_;
  reg [7:0] _zz_24_;
  reg [7:0] _zz_25_;
  reg [7:0] _zz_26_;

  assign _zz_12_ = (io_cpu_execute_isValid && (! io_cpu_memory_isStuck));
  assign _zz_13_ = ((((stageB_mmuRsp_refilling || io_cpu_writeBack_accessError) || io_cpu_writeBack_mmuException) || io_cpu_writeBack_unalignedAccess) || stageB_protError);
  assign _zz_14_ = (stageB_waysHit || (stageB_request_wr && (! stageB_isAmo)));
  assign _zz_15_ = (loader_valid && io_mem_rsp_valid);
  assign _zz_16_ = (stageB_mmuRsp_physicalAddress[11 : 5] != 7'h7f);
  assign _zz_17_ = _zz_4_[0 : 0];
  assign _zz_18_ = _zz_4_[1 : 1];
  assign _zz_19_ = loader_counter_willIncrement;
  assign _zz_20_ = {2'd0, _zz_19_};
  assign _zz_21_ = {loader_waysAllocator,loader_waysAllocator[0]};
  assign _zz_22_ = {tagsWriteCmd_payload_data_address,{tagsWriteCmd_payload_data_error,tagsWriteCmd_payload_data_valid}};
  always @ (posedge clk) begin
    if(_zz_3_) begin
      _zz_10_ <= DC_DIR_tags[tagsReadCmd_payload];
    end
  end

  always @ (posedge clk) begin
    if(_zz_2_) begin
      DC_DIR_tags[tagsWriteCmd_payload_address] <= _zz_22_;
    end
  end

  always @ (*) begin
    _zz_11_ = {_zz_26_, _zz_25_, _zz_24_, _zz_23_};
  end
  always @ (posedge clk) begin
    if(_zz_5_) begin
      _zz_23_ <= DC_DIR_data_symbol0[dataReadCmd_payload];
      _zz_24_ <= DC_DIR_data_symbol1[dataReadCmd_payload];
      _zz_25_ <= DC_DIR_data_symbol2[dataReadCmd_payload];
      _zz_26_ <= DC_DIR_data_symbol3[dataReadCmd_payload];
    end
  end

  always @ (posedge clk) begin
    if(dataWriteCmd_payload_mask[0] && _zz_1_) begin
      DC_DIR_data_symbol0[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[7 : 0];
    end
    if(dataWriteCmd_payload_mask[1] && _zz_1_) begin
      DC_DIR_data_symbol1[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[15 : 8];
    end
    if(dataWriteCmd_payload_mask[2] && _zz_1_) begin
      DC_DIR_data_symbol2[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[23 : 16];
    end
    if(dataWriteCmd_payload_mask[3] && _zz_1_) begin
      DC_DIR_data_symbol3[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[31 : 24];
    end
  end

  always @ (*) begin
    _zz_1_ = 1'b0;
    if((dataWriteCmd_valid && dataWriteCmd_payload_way[0]))begin
      _zz_1_ = 1'b1;
    end
  end

  always @ (*) begin
    _zz_2_ = 1'b0;
    if((tagsWriteCmd_valid && tagsWriteCmd_payload_way[0]))begin
      _zz_2_ = 1'b1;
    end
  end

  assign haltCpu = 1'b0;
  assign _zz_3_ = (tagsReadCmd_valid && (! io_cpu_memory_isStuck));
  assign _zz_4_ = _zz_10_;
  assign DC_DIR_tagsReadRsp_valid = _zz_17_[0];
  assign DC_DIR_tagsReadRsp_error = _zz_18_[0];
  assign DC_DIR_tagsReadRsp_address = _zz_4_[21 : 2];
  assign _zz_5_ = (dataReadCmd_valid && (! io_cpu_memory_isStuck));
  assign DC_DIR_dataReadRsp = _zz_11_;
  always @ (*) begin
    tagsReadCmd_valid = 1'b0;
    if(_zz_12_)begin
      tagsReadCmd_valid = 1'b1;
    end
  end

  always @ (*) begin
    tagsReadCmd_payload = 7'h0;
    if(_zz_12_)begin
      tagsReadCmd_payload = io_cpu_execute_address[11 : 5];
    end
  end

  always @ (*) begin
    dataReadCmd_valid = 1'b0;
    if(_zz_12_)begin
      dataReadCmd_valid = 1'b1;
    end
  end

  always @ (*) begin
    dataReadCmd_payload = 10'h0;
    if(_zz_12_)begin
      dataReadCmd_payload = io_cpu_execute_address[11 : 2];
    end
  end

  always @ (*) begin
    tagsWriteCmd_valid = 1'b0;
    if(stageB_flusher_valid)begin
      tagsWriteCmd_valid = stageB_flusher_valid;
    end
    if(_zz_13_)begin
      tagsWriteCmd_valid = 1'b0;
    end
    if(loader_counter_willOverflow)begin
      tagsWriteCmd_valid = 1'b1;
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_way = (1'bx);
    if(stageB_flusher_valid)begin
      tagsWriteCmd_payload_way = (1'b1);
    end
    if(loader_counter_willOverflow)begin
      tagsWriteCmd_payload_way = loader_waysAllocator;
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_address = 7'h0;
    if(stageB_flusher_valid)begin
      tagsWriteCmd_payload_address = stageB_mmuRsp_physicalAddress[11 : 5];
    end
    if(loader_counter_willOverflow)begin
      tagsWriteCmd_payload_address = stageB_mmuRsp_physicalAddress[11 : 5];
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_data_valid = 1'bx;
    if(stageB_flusher_valid)begin
      tagsWriteCmd_payload_data_valid = 1'b0;
    end
    if(loader_counter_willOverflow)begin
      tagsWriteCmd_payload_data_valid = 1'b1;
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_data_error = 1'bx;
    if(loader_counter_willOverflow)begin
      tagsWriteCmd_payload_data_error = (loader_error || io_mem_rsp_payload_error);
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_data_address = 20'h0;
    if(loader_counter_willOverflow)begin
      tagsWriteCmd_payload_data_address = stageB_mmuRsp_physicalAddress[31 : 12];
    end
  end

  always @ (*) begin
    dataWriteCmd_valid = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_mmuRsp_isIoAccess) begin
        if(_zz_14_)begin
          if((stageB_request_wr && stageB_waysHit))begin
            dataWriteCmd_valid = 1'b1;
          end
        end
      end
    end
    if(_zz_13_)begin
      dataWriteCmd_valid = 1'b0;
    end
    if(_zz_15_)begin
      dataWriteCmd_valid = 1'b1;
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_way = (1'bx);
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_mmuRsp_isIoAccess) begin
        if(_zz_14_)begin
          dataWriteCmd_payload_way = stageB_waysHits;
        end
      end
    end
    if(_zz_15_)begin
      dataWriteCmd_payload_way = loader_waysAllocator;
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_address = 10'h0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_mmuRsp_isIoAccess) begin
        if(_zz_14_)begin
          dataWriteCmd_payload_address = stageB_mmuRsp_physicalAddress[11 : 2];
        end
      end
    end
    if(_zz_15_)begin
      dataWriteCmd_payload_address = {stageB_mmuRsp_physicalAddress[11 : 5],loader_counter_value};
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_data = 32'h0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_mmuRsp_isIoAccess) begin
        if(_zz_14_)begin
          dataWriteCmd_payload_data = stageB_requestDataBypass;
        end
      end
    end
    if(_zz_15_)begin
      dataWriteCmd_payload_data = io_mem_rsp_payload_data;
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_mask = (4'bxxxx);
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_mmuRsp_isIoAccess) begin
        if(_zz_14_)begin
          dataWriteCmd_payload_mask = stageB_mask;
        end
      end
    end
    if(_zz_15_)begin
      dataWriteCmd_payload_mask = (4'b1111);
    end
  end

  always @ (*) begin
    case(io_cpu_execute_args_size)
      2'b00 : begin
        _zz_6_ = (4'b1000);
      end
      2'b01 : begin
        _zz_6_ = (4'b1100);
      end
      default : begin
        _zz_6_ = (4'b1111);
      end
    endcase
  end

  assign stage0_mask = (_zz_6_ >>> io_cpu_execute_address[1 : 0]);
  assign stage0_colisions[0] = (((dataWriteCmd_valid && dataWriteCmd_payload_way[0]) && (dataWriteCmd_payload_address == io_cpu_execute_address[11 : 2])) && ((stage0_mask & dataWriteCmd_payload_mask) != (4'b0000)));
  assign io_cpu_memory_mmuBus_cmd_isValid = io_cpu_memory_isValid;
  assign io_cpu_memory_mmuBus_cmd_virtualAddress = io_cpu_memory_address;
  assign io_cpu_memory_mmuBus_cmd_bypassTranslation = io_cpu_memory_bypassTranslation;
  assign io_cpu_memory_mmuBus_end = ((! io_cpu_memory_isStuck) || io_cpu_memory_isRemoved);
  assign io_cpu_memory_mmuBus_spr_valid = 1'b0;
  assign io_cpu_memory_mmuBus_spr_payload_id = 10'h0;
  assign io_cpu_memory_mmuBus_spr_payload_data = 32'h0;
  assign io_cpu_memory_isWrite = stageA_request_wr;
  assign stageA_wayHits_0 = ((io_cpu_memory_mmuBus_rsp_physicalAddress[31 : 12] == DC_DIR_tagsReadRsp_address) && DC_DIR_tagsReadRsp_valid);
  assign _zz_7_[0] = (((dataWriteCmd_valid && dataWriteCmd_payload_way[0]) && (dataWriteCmd_payload_address == io_cpu_memory_address[11 : 2])) && ((stageA_mask & dataWriteCmd_payload_mask) != (4'b0000)));
  assign stageA_colisions = (stage0_colisions_regNextWhen | _zz_7_);
  always @ (*) begin
    stageB_mmuRspFreeze = 1'b0;
    if((stageB_loaderValid || loader_valid))begin
      stageB_mmuRspFreeze = 1'b1;
    end
  end

  assign _zz_8_[0] = stageA_wayHits_0;
  assign stageB_waysHit = (stageB_waysHits != (1'b0));
  assign stageB_dataMux = stageB_dataReadRsp_0;
  always @ (*) begin
    stageB_loaderValid = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_mmuRsp_isIoAccess) begin
        if(! _zz_14_) begin
          if(io_mem_cmd_ready)begin
            stageB_loaderValid = 1'b1;
          end
        end
      end
    end
    if(_zz_13_)begin
      stageB_loaderValid = 1'b0;
    end
  end

  always @ (*) begin
    io_cpu_writeBack_haltIt = io_cpu_writeBack_isValid;
    if(stageB_flusher_valid)begin
      io_cpu_writeBack_haltIt = 1'b1;
    end
    if(io_cpu_writeBack_isValid)begin
      if(stageB_mmuRsp_isIoAccess)begin
        if((stageB_request_wr ? io_mem_cmd_ready : io_mem_rsp_valid))begin
          io_cpu_writeBack_haltIt = 1'b0;
        end
      end else begin
        if(_zz_14_)begin
          if(((! stageB_request_wr) || io_mem_cmd_ready))begin
            io_cpu_writeBack_haltIt = 1'b0;
          end
        end
      end
    end
    if(_zz_13_)begin
      io_cpu_writeBack_haltIt = 1'b0;
    end
  end

  always @ (*) begin
    io_cpu_flush_ready = 1'b0;
    if(stageB_flusher_start)begin
      io_cpu_flush_ready = 1'b1;
    end
  end

  assign stageB_requestDataBypass = stageB_request_data;
  assign stageB_isAmo = 1'b0;
  always @ (*) begin
    io_cpu_redo = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_mmuRsp_isIoAccess) begin
        if(_zz_14_)begin
          if((((! stageB_request_wr) || stageB_isAmo) && ((stageB_colisions & stageB_waysHits) != (1'b0))))begin
            io_cpu_redo = 1'b1;
          end
        end
      end
    end
    if((io_cpu_writeBack_isValid && stageB_mmuRsp_refilling))begin
      io_cpu_redo = 1'b1;
    end
    if(loader_valid)begin
      io_cpu_redo = 1'b1;
    end
  end

  always @ (*) begin
    io_cpu_writeBack_accessError = 1'b0;
    if(stageB_mmuRsp_isIoAccess)begin
      io_cpu_writeBack_accessError = (io_mem_rsp_valid && io_mem_rsp_payload_error);
    end else begin
      io_cpu_writeBack_accessError = ((stageB_waysHits & _zz_9_) != (1'b0));
    end
  end

  assign io_cpu_writeBack_mmuException = (io_cpu_writeBack_isValid && stageB_mmuRsp_exception);
  assign io_cpu_writeBack_unalignedAccess = (io_cpu_writeBack_isValid && (((stageB_request_size == (2'b10)) && (stageB_mmuRsp_physicalAddress[1 : 0] != (2'b00))) || ((stageB_request_size == (2'b01)) && (stageB_mmuRsp_physicalAddress[0 : 0] != (1'b0)))));
  assign io_cpu_writeBack_isWrite = stageB_request_wr;
  assign stageB_protError = (io_cpu_writeBack_isValid && ((! stageB_mmuRsp_refilling) && (((! stageB_mmuRsp_allowRead) && (! stageB_request_wr)) || ((! stageB_mmuRsp_allowWrite) && stageB_request_wr))));
  assign io_cpu_writeBack_exceptionType = {{{stageB_mmuRsp_allowRead,stageB_mmuRsp_allowWrite},stageB_mmuRsp_allowExecute},stageB_protError};
  always @ (*) begin
    io_mem_cmd_valid = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(stageB_mmuRsp_isIoAccess)begin
        io_mem_cmd_valid = (! stageB_memCmdSent);
      end else begin
        if(_zz_14_)begin
          if(stageB_request_wr)begin
            io_mem_cmd_valid = 1'b1;
          end
        end else begin
          if((! stageB_memCmdSent))begin
            io_mem_cmd_valid = 1'b1;
          end
        end
      end
    end
    if(_zz_13_)begin
      io_mem_cmd_valid = 1'b0;
    end
  end

  always @ (*) begin
    io_mem_cmd_payload_address = 32'h0;
    if(io_cpu_writeBack_isValid)begin
      if(stageB_mmuRsp_isIoAccess)begin
        io_mem_cmd_payload_address = {stageB_mmuRsp_physicalAddress[31 : 2],(2'b00)};
      end else begin
        if(_zz_14_)begin
          io_mem_cmd_payload_address = {stageB_mmuRsp_physicalAddress[31 : 2],(2'b00)};
        end else begin
          io_mem_cmd_payload_address = {stageB_mmuRsp_physicalAddress[31 : 5],5'h0};
        end
      end
    end
  end

  always @ (*) begin
    io_mem_cmd_payload_length = (3'bxxx);
    if(io_cpu_writeBack_isValid)begin
      if(stageB_mmuRsp_isIoAccess)begin
        io_mem_cmd_payload_length = (3'b000);
      end else begin
        if(_zz_14_)begin
          io_mem_cmd_payload_length = (3'b000);
        end else begin
          io_mem_cmd_payload_length = (3'b111);
        end
      end
    end
  end

  always @ (*) begin
    io_mem_cmd_payload_last = 1'bx;
    if(io_cpu_writeBack_isValid)begin
      if(stageB_mmuRsp_isIoAccess)begin
        io_mem_cmd_payload_last = 1'b1;
      end else begin
        if(_zz_14_)begin
          io_mem_cmd_payload_last = 1'b1;
        end else begin
          io_mem_cmd_payload_last = 1'b1;
        end
      end
    end
  end

  always @ (*) begin
    io_mem_cmd_payload_wr = stageB_request_wr;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_mmuRsp_isIoAccess) begin
        if(! _zz_14_) begin
          io_mem_cmd_payload_wr = 1'b0;
        end
      end
    end
  end

  assign io_mem_cmd_payload_mask = stageB_mask;
  assign io_mem_cmd_payload_data = stageB_requestDataBypass;
  always @ (*) begin
    if(stageB_mmuRsp_isIoAccess)begin
      io_cpu_writeBack_data = io_mem_rsp_payload_data;
    end else begin
      io_cpu_writeBack_data = stageB_dataMux;
    end
  end

  assign _zz_9_[0] = stageB_tagsReadRsp_0_error;
  always @ (*) begin
    loader_counter_willIncrement = 1'b0;
    if(_zz_15_)begin
      loader_counter_willIncrement = 1'b1;
    end
  end

  assign loader_counter_willClear = 1'b0;
  assign loader_counter_willOverflowIfInc = (loader_counter_value == (3'b111));
  assign loader_counter_willOverflow = (loader_counter_willOverflowIfInc && loader_counter_willIncrement);
  always @ (*) begin
    loader_counter_valueNext = (loader_counter_value + _zz_20_);
    if(loader_counter_willClear)begin
      loader_counter_valueNext = (3'b000);
    end
  end

  always @ (posedge clk) begin
    tagsWriteLastCmd_valid <= tagsWriteCmd_valid;
    tagsWriteLastCmd_payload_way <= tagsWriteCmd_payload_way;
    tagsWriteLastCmd_payload_address <= tagsWriteCmd_payload_address;
    tagsWriteLastCmd_payload_data_valid <= tagsWriteCmd_payload_data_valid;
    tagsWriteLastCmd_payload_data_error <= tagsWriteCmd_payload_data_error;
    tagsWriteLastCmd_payload_data_address <= tagsWriteCmd_payload_data_address;
    if((! io_cpu_memory_isStuck))begin
      stageA_request_wr <= io_cpu_execute_args_wr;
      stageA_request_data <= io_cpu_execute_args_data;
      stageA_request_size <= io_cpu_execute_args_size;
    end
    if((! io_cpu_memory_isStuck))begin
      stageA_mask <= stage0_mask;
    end
    if((! io_cpu_memory_isStuck))begin
      stage0_colisions_regNextWhen <= stage0_colisions;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_request_wr <= stageA_request_wr;
      stageB_request_data <= stageA_request_data;
      stageB_request_size <= stageA_request_size;
    end
    if(((! io_cpu_writeBack_isStuck) && (! stageB_mmuRspFreeze)))begin
      stageB_mmuRsp_physicalAddress <= io_cpu_memory_mmuBus_rsp_physicalAddress;
      stageB_mmuRsp_isIoAccess <= io_cpu_memory_mmuBus_rsp_isIoAccess;
      stageB_mmuRsp_allowRead <= io_cpu_memory_mmuBus_rsp_allowRead;
      stageB_mmuRsp_allowWrite <= io_cpu_memory_mmuBus_rsp_allowWrite;
      stageB_mmuRsp_allowExecute <= io_cpu_memory_mmuBus_rsp_allowExecute;
      stageB_mmuRsp_exception <= io_cpu_memory_mmuBus_rsp_exception;
      stageB_mmuRsp_refilling <= io_cpu_memory_mmuBus_rsp_refilling;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_tagsReadRsp_0_valid <= DC_DIR_tagsReadRsp_valid;
      stageB_tagsReadRsp_0_error <= DC_DIR_tagsReadRsp_error;
      stageB_tagsReadRsp_0_address <= DC_DIR_tagsReadRsp_address;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_dataReadRsp_0 <= DC_DIR_dataReadRsp;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_waysHits <= _zz_8_;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_mask <= stageA_mask;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_colisions <= stageA_colisions;
    end
    if(stageB_flusher_valid)begin
      if(_zz_16_)begin
        stageB_mmuRsp_physicalAddress[11 : 5] <= (stageB_mmuRsp_physicalAddress[11 : 5] + 7'h01);
      end
    end
    if(stageB_flusher_start)begin
      stageB_mmuRsp_physicalAddress[11 : 5] <= 7'h0;
    end
  end

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      stageB_flusher_valid <= 1'b0;
      stageB_flusher_start <= 1'b1;
      stageB_memCmdSent <= 1'b0;
      loader_valid <= 1'b0;
      loader_counter_value <= (3'b000);
      loader_waysAllocator <= (1'b1);
      loader_error <= 1'b0;
    end else begin
      if(stageB_flusher_valid)begin
        if(! _zz_16_) begin
          stageB_flusher_valid <= 1'b0;
        end
      end
      stageB_flusher_start <= ((((((! stageB_flusher_start) && io_cpu_flush_valid) && (! io_cpu_execute_isValid)) && (! io_cpu_memory_isValid)) && (! io_cpu_writeBack_isValid)) && (! io_cpu_redo));
      if(stageB_flusher_start)begin
        stageB_flusher_valid <= 1'b1;
      end
      if(io_mem_cmd_ready)begin
        stageB_memCmdSent <= 1'b1;
      end
      if((! io_cpu_writeBack_isStuck))begin
        stageB_memCmdSent <= 1'b0;
      end
      if(stageB_loaderValid)begin
        loader_valid <= 1'b1;
      end
      loader_counter_value <= loader_counter_valueNext;
      if(_zz_15_)begin
        loader_error <= (loader_error || io_mem_rsp_payload_error);
      end
      if(loader_counter_willOverflow)begin
        loader_valid <= 1'b0;
        loader_error <= 1'b0;
      end
      if((! loader_valid))begin
        loader_waysAllocator <= _zz_21_[0:0];
      end
    end
  end


endmodule

module A2P_WB (
  input      [31:0]   externalResetVector,
  input               timerInterrupt,
  input               externalInterrupt,
  input               softwareInterrupt,
  input               externalInterruptS,
  output reg          iBusWB_CYC /* verilator public */ ,
  output reg          iBusWB_STB /* verilator public */ ,
  input               iBusWB_ACK /* verilator public */ ,
  output              iBusWB_WE /* verilator public */ ,
  output     [29:0]   iBusWB_ADR /* verilator public */ ,
  input      [31:0]   iBusWB_DAT_MISO /* verilator public */ ,
  output     [31:0]   iBusWB_DAT_MOSI /* verilator public */ ,
  output     [3:0]    iBusWB_SEL /* verilator public */ ,
  input               iBusWB_ERR /* verilator public */ ,
  output     [1:0]    iBusWB_BTE /* verilator public */ ,
  output     [2:0]    iBusWB_CTI /* verilator public */ ,
  output              dBusWB_CYC /* verilator public */ ,
  output              dBusWB_STB /* verilator public */ ,
  input               dBusWB_ACK /* verilator public */ ,
  output              dBusWB_WE /* verilator public */ ,
  output     [29:0]   dBusWB_ADR /* verilator public */ ,
  input      [31:0]   dBusWB_DAT_MISO /* verilator public */ ,
  output     [31:0]   dBusWB_DAT_MOSI /* verilator public */ ,
  output     [3:0]    dBusWB_SEL /* verilator public */ ,
  input               dBusWB_ERR /* verilator public */ ,
  output     [1:0]    dBusWB_BTE /* verilator public */ ,
  output     [2:0]    dBusWB_CTI /* verilator public */ ,
  input               clk,
  input               reset
);
  wire                _zz_365_;
  wire                _zz_366_;
  wire                _zz_367_;
  wire                _zz_368_;
  wire                _zz_369_;
  wire                _zz_370_;
  wire                _zz_371_;
  wire                _zz_372_;
  reg                 _zz_373_;
  wire       [9:0]    _zz_374_;
  wire                _zz_375_;
  wire       [31:0]   _zz_376_;
  reg        [31:0]   _zz_377_;
  wire                _zz_378_;
  wire       [31:0]   _zz_379_;
  reg                 _zz_380_;
  wire                _zz_381_;
  wire                _zz_382_;
  wire                _zz_383_;
  wire       [31:0]   _zz_384_;
  wire                _zz_385_;
  wire                _zz_386_;
  reg        [53:0]   _zz_387_;
  reg        [31:0]   _zz_388_;
  reg        [31:0]   _zz_389_;
  reg        [31:0]   _zz_390_;
  reg        [31:0]   _zz_391_;
  wire                IBusCachedPlugin_cache_io_cpu_prefetch_haltIt;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_fetch_data;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_fetch_physicalAddress;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_haltIt;
  wire       [3:0]    IBusCachedPlugin_cache_io_cpu_fetch_exceptionType;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_cmd_isValid;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_cmd_virtualAddress;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_cmd_bypassTranslation;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_end;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_spr_valid;
  wire       [9:0]    IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_spr_payload_id;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_spr_payload_data;
  wire                IBusCachedPlugin_cache_io_cpu_decode_error;
  wire                IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling;
  wire                IBusCachedPlugin_cache_io_cpu_decode_mmuException;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_decode_data;
  wire                IBusCachedPlugin_cache_io_cpu_decode_cacheMiss;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_decode_physicalAddress;
  wire       [3:0]    IBusCachedPlugin_cache_io_cpu_decode_exceptionType;
  wire                IBusCachedPlugin_cache_io_mem_cmd_valid;
  wire       [31:0]   IBusCachedPlugin_cache_io_mem_cmd_payload_address;
  wire       [2:0]    IBusCachedPlugin_cache_io_mem_cmd_payload_size;
  wire                dataCache_1__io_cpu_memory_isWrite;
  wire                dataCache_1__io_cpu_memory_mmuBus_cmd_isValid;
  wire       [31:0]   dataCache_1__io_cpu_memory_mmuBus_cmd_virtualAddress;
  wire                dataCache_1__io_cpu_memory_mmuBus_cmd_bypassTranslation;
  wire                dataCache_1__io_cpu_memory_mmuBus_end;
  wire                dataCache_1__io_cpu_memory_mmuBus_spr_valid;
  wire       [9:0]    dataCache_1__io_cpu_memory_mmuBus_spr_payload_id;
  wire       [31:0]   dataCache_1__io_cpu_memory_mmuBus_spr_payload_data;
  wire                dataCache_1__io_cpu_writeBack_haltIt;
  wire       [31:0]   dataCache_1__io_cpu_writeBack_data;
  wire                dataCache_1__io_cpu_writeBack_mmuException;
  wire                dataCache_1__io_cpu_writeBack_unalignedAccess;
  wire                dataCache_1__io_cpu_writeBack_accessError;
  wire                dataCache_1__io_cpu_writeBack_isWrite;
  wire       [3:0]    dataCache_1__io_cpu_writeBack_exceptionType;
  wire                dataCache_1__io_cpu_flush_ready;
  wire                dataCache_1__io_cpu_redo;
  wire                dataCache_1__io_mem_cmd_valid;
  wire                dataCache_1__io_mem_cmd_payload_wr;
  wire       [31:0]   dataCache_1__io_mem_cmd_payload_address;
  wire       [31:0]   dataCache_1__io_mem_cmd_payload_data;
  wire       [3:0]    dataCache_1__io_mem_cmd_payload_mask;
  wire       [2:0]    dataCache_1__io_mem_cmd_payload_length;
  wire                dataCache_1__io_mem_cmd_payload_last;
  wire                _zz_392_;
  wire                _zz_393_;
  wire                _zz_394_;
  wire                _zz_395_;
  wire                _zz_396_;
  wire                _zz_397_;
  wire                _zz_398_;
  wire                _zz_399_;
  wire                _zz_400_;
  wire                _zz_401_;
  wire                _zz_402_;
  wire                _zz_403_;
  wire                _zz_404_;
  wire                _zz_405_;
  wire                _zz_406_;
  wire                _zz_407_;
  wire                _zz_408_;
  wire                _zz_409_;
  wire                _zz_410_;
  wire                _zz_411_;
  wire                _zz_412_;
  wire                _zz_413_;
  wire                _zz_414_;
  wire                _zz_415_;
  wire                _zz_416_;
  wire                _zz_417_;
  wire                _zz_418_;
  wire                _zz_419_;
  wire                _zz_420_;
  wire                _zz_421_;
  wire                _zz_422_;
  wire                _zz_423_;
  wire                _zz_424_;
  wire                _zz_425_;
  wire                _zz_426_;
  wire                _zz_427_;
  wire                _zz_428_;
  wire                _zz_429_;
  wire                _zz_430_;
  wire                _zz_431_;
  wire                _zz_432_;
  wire                _zz_433_;
  wire                _zz_434_;
  wire                _zz_435_;
  wire                _zz_436_;
  wire                _zz_437_;
  wire                _zz_438_;
  wire       [7:0]    _zz_439_;
  wire       [2:0]    _zz_440_;
  wire       [2:0]    _zz_441_;
  wire       [1:0]    _zz_442_;
  wire       [1:0]    _zz_443_;
  wire       [2:0]    _zz_444_;
  wire       [0:0]    _zz_445_;
  wire       [0:0]    _zz_446_;
  wire       [0:0]    _zz_447_;
  wire       [0:0]    _zz_448_;
  wire       [0:0]    _zz_449_;
  wire       [0:0]    _zz_450_;
  wire       [0:0]    _zz_451_;
  wire       [0:0]    _zz_452_;
  wire       [0:0]    _zz_453_;
  wire       [0:0]    _zz_454_;
  wire       [0:0]    _zz_455_;
  wire       [0:0]    _zz_456_;
  wire       [0:0]    _zz_457_;
  wire       [0:0]    _zz_458_;
  wire       [0:0]    _zz_459_;
  wire       [0:0]    _zz_460_;
  wire       [0:0]    _zz_461_;
  wire       [0:0]    _zz_462_;
  wire       [0:0]    _zz_463_;
  wire       [0:0]    _zz_464_;
  wire       [0:0]    _zz_465_;
  wire       [0:0]    _zz_466_;
  wire       [0:0]    _zz_467_;
  wire       [0:0]    _zz_468_;
  wire       [0:0]    _zz_469_;
  wire       [0:0]    _zz_470_;
  wire       [0:0]    _zz_471_;
  wire       [0:0]    _zz_472_;
  wire       [0:0]    _zz_473_;
  wire       [0:0]    _zz_474_;
  wire       [0:0]    _zz_475_;
  wire       [0:0]    _zz_476_;
  wire       [0:0]    _zz_477_;
  wire       [0:0]    _zz_478_;
  wire       [51:0]   _zz_479_;
  wire       [51:0]   _zz_480_;
  wire       [51:0]   _zz_481_;
  wire       [32:0]   _zz_482_;
  wire       [51:0]   _zz_483_;
  wire       [49:0]   _zz_484_;
  wire       [51:0]   _zz_485_;
  wire       [49:0]   _zz_486_;
  wire       [51:0]   _zz_487_;
  wire       [0:0]    _zz_488_;
  wire       [0:0]    _zz_489_;
  wire       [0:0]    _zz_490_;
  wire       [0:0]    _zz_491_;
  wire       [0:0]    _zz_492_;
  wire       [0:0]    _zz_493_;
  wire       [0:0]    _zz_494_;
  wire       [0:0]    _zz_495_;
  wire       [2:0]    _zz_496_;
  wire       [2:0]    _zz_497_;
  wire       [31:0]   _zz_498_;
  wire       [9:0]    _zz_499_;
  wire       [29:0]   _zz_500_;
  wire       [9:0]    _zz_501_;
  wire       [19:0]   _zz_502_;
  wire       [1:0]    _zz_503_;
  wire       [0:0]    _zz_504_;
  wire       [1:0]    _zz_505_;
  wire       [0:0]    _zz_506_;
  wire       [1:0]    _zz_507_;
  wire       [1:0]    _zz_508_;
  wire       [0:0]    _zz_509_;
  wire       [1:0]    _zz_510_;
  wire       [0:0]    _zz_511_;
  wire       [1:0]    _zz_512_;
  wire       [2:0]    _zz_513_;
  wire       [2:0]    _zz_514_;
  wire       [10:0]   _zz_515_;
  wire       [31:0]   _zz_516_;
  wire       [10:0]   _zz_517_;
  wire       [31:0]   _zz_518_;
  wire       [31:0]   _zz_519_;
  wire       [31:0]   _zz_520_;
  wire       [31:0]   _zz_521_;
  wire       [31:0]   _zz_522_;
  wire       [31:0]   _zz_523_;
  wire       [31:0]   _zz_524_;
  wire       [5:0]    _zz_525_;
  wire       [5:0]    _zz_526_;
  wire       [31:0]   _zz_527_;
  wire       [31:0]   _zz_528_;
  wire       [31:0]   _zz_529_;
  wire       [31:0]   _zz_530_;
  wire       [31:0]   _zz_531_;
  wire       [31:0]   _zz_532_;
  wire       [31:0]   _zz_533_;
  wire       [31:0]   _zz_534_;
  wire       [31:0]   _zz_535_;
  wire       [31:0]   _zz_536_;
  wire       [31:0]   _zz_537_;
  wire       [31:0]   _zz_538_;
  wire       [31:0]   _zz_539_;
  wire       [31:0]   _zz_540_;
  wire       [31:0]   _zz_541_;
  wire       [31:0]   _zz_542_;
  wire       [31:0]   _zz_543_;
  wire       [31:0]   _zz_544_;
  wire       [31:0]   _zz_545_;
  wire       [31:0]   _zz_546_;
  wire       [31:0]   _zz_547_;
  wire       [31:0]   _zz_548_;
  wire       [31:0]   _zz_549_;
  wire       [31:0]   _zz_550_;
  wire       [31:0]   _zz_551_;
  wire       [4:0]    _zz_552_;
  wire       [2:0]    _zz_553_;
  wire       [31:0]   _zz_554_;
  wire       [31:0]   _zz_555_;
  wire       [31:0]   _zz_556_;
  wire       [32:0]   _zz_557_;
  wire       [32:0]   _zz_558_;
  wire       [31:0]   _zz_559_;
  wire       [31:0]   _zz_560_;
  wire       [65:0]   _zz_561_;
  wire       [65:0]   _zz_562_;
  wire       [31:0]   _zz_563_;
  wire       [31:0]   _zz_564_;
  wire       [0:0]    _zz_565_;
  wire       [5:0]    _zz_566_;
  wire       [32:0]   _zz_567_;
  wire       [31:0]   _zz_568_;
  wire       [31:0]   _zz_569_;
  wire       [32:0]   _zz_570_;
  wire       [32:0]   _zz_571_;
  wire       [32:0]   _zz_572_;
  wire       [32:0]   _zz_573_;
  wire       [0:0]    _zz_574_;
  wire       [32:0]   _zz_575_;
  wire       [0:0]    _zz_576_;
  wire       [32:0]   _zz_577_;
  wire       [0:0]    _zz_578_;
  wire       [31:0]   _zz_579_;
  wire       [4:0]    _zz_580_;
  wire       [4:0]    _zz_581_;
  wire       [4:0]    _zz_582_;
  wire       [4:0]    _zz_583_;
  wire       [4:0]    _zz_584_;
  wire       [4:0]    _zz_585_;
  wire       [4:0]    _zz_586_;
  wire       [4:0]    _zz_587_;
  wire       [4:0]    _zz_588_;
  wire       [4:0]    _zz_589_;
  wire       [4:0]    _zz_590_;
  wire       [4:0]    _zz_591_;
  wire       [4:0]    _zz_592_;
  wire       [4:0]    _zz_593_;
  wire       [4:0]    _zz_594_;
  wire       [4:0]    _zz_595_;
  wire       [4:0]    _zz_596_;
  wire       [4:0]    _zz_597_;
  wire       [4:0]    _zz_598_;
  wire       [4:0]    _zz_599_;
  wire       [4:0]    _zz_600_;
  wire       [4:0]    _zz_601_;
  wire       [4:0]    _zz_602_;
  wire       [4:0]    _zz_603_;
  wire       [31:0]   _zz_604_;
  wire       [31:0]   _zz_605_;
  wire       [31:0]   _zz_606_;
  wire       [31:0]   _zz_607_;
  wire       [1:0]    _zz_608_;
  wire       [4:0]    _zz_609_;
  wire       [1:0]    _zz_610_;
  wire       [4:0]    _zz_611_;
  wire       [4:0]    _zz_612_;
  wire       [1:0]    _zz_613_;
  wire       [4:0]    _zz_614_;
  wire       [4:0]    _zz_615_;
  wire       [1:0]    _zz_616_;
  wire       [4:0]    _zz_617_;
  wire       [4:0]    _zz_618_;
  wire       [1:0]    _zz_619_;
  wire       [4:0]    _zz_620_;
  wire       [3:0]    _zz_621_;
  wire       [1:0]    _zz_622_;
  wire       [3:0]    _zz_623_;
  wire       [3:0]    _zz_624_;
  wire       [1:0]    _zz_625_;
  wire       [3:0]    _zz_626_;
  wire       [2:0]    _zz_627_;
  wire       [1:0]    _zz_628_;
  wire       [2:0]    _zz_629_;
  wire       [1:0]    _zz_630_;
  wire       [1:0]    _zz_631_;
  wire       [1:0]    _zz_632_;
  wire       [1:0]    _zz_633_;
  wire       [31:0]   _zz_634_;
  wire       [31:0]   _zz_635_;
  wire       [31:0]   _zz_636_;
  wire       [31:0]   _zz_637_;
  wire       [31:0]   _zz_638_;
  wire       [31:0]   _zz_639_;
  wire       [31:0]   _zz_640_;
  wire       [31:0]   _zz_641_;
  wire       [0:0]    _zz_642_;
  wire       [0:0]    _zz_643_;
  wire       [0:0]    _zz_644_;
  wire       [0:0]    _zz_645_;
  wire       [0:0]    _zz_646_;
  wire       [0:0]    _zz_647_;
  wire       [0:0]    _zz_648_;
  wire       [0:0]    _zz_649_;
  wire       [0:0]    _zz_650_;
  wire       [0:0]    _zz_651_;
  wire       [0:0]    _zz_652_;
  wire       [0:0]    _zz_653_;
  wire       [0:0]    _zz_654_;
  wire       [26:0]   _zz_655_;
  wire       [53:0]   _zz_656_;
  wire                _zz_657_;
  wire                _zz_658_;
  wire                _zz_659_;
  wire       [1:0]    _zz_660_;
  wire       [0:0]    _zz_661_;
  wire       [92:0]   _zz_662_;
  wire       [0:0]    _zz_663_;
  wire       [84:0]   _zz_664_;
  wire       [31:0]   _zz_665_;
  wire                _zz_666_;
  wire       [0:0]    _zz_667_;
  wire       [75:0]   _zz_668_;
  wire       [31:0]   _zz_669_;
  wire       [31:0]   _zz_670_;
  wire                _zz_671_;
  wire       [0:0]    _zz_672_;
  wire       [68:0]   _zz_673_;
  wire       [31:0]   _zz_674_;
  wire       [31:0]   _zz_675_;
  wire       [31:0]   _zz_676_;
  wire                _zz_677_;
  wire       [0:0]    _zz_678_;
  wire       [62:0]   _zz_679_;
  wire       [31:0]   _zz_680_;
  wire       [31:0]   _zz_681_;
  wire       [31:0]   _zz_682_;
  wire                _zz_683_;
  wire       [0:0]    _zz_684_;
  wire       [56:0]   _zz_685_;
  wire       [31:0]   _zz_686_;
  wire       [31:0]   _zz_687_;
  wire       [31:0]   _zz_688_;
  wire                _zz_689_;
  wire       [0:0]    _zz_690_;
  wire       [50:0]   _zz_691_;
  wire       [31:0]   _zz_692_;
  wire       [31:0]   _zz_693_;
  wire       [31:0]   _zz_694_;
  wire                _zz_695_;
  wire       [0:0]    _zz_696_;
  wire       [44:0]   _zz_697_;
  wire       [31:0]   _zz_698_;
  wire       [31:0]   _zz_699_;
  wire       [31:0]   _zz_700_;
  wire                _zz_701_;
  wire       [0:0]    _zz_702_;
  wire       [38:0]   _zz_703_;
  wire       [31:0]   _zz_704_;
  wire       [31:0]   _zz_705_;
  wire       [31:0]   _zz_706_;
  wire                _zz_707_;
  wire       [0:0]    _zz_708_;
  wire       [32:0]   _zz_709_;
  wire       [31:0]   _zz_710_;
  wire       [31:0]   _zz_711_;
  wire       [31:0]   _zz_712_;
  wire                _zz_713_;
  wire       [0:0]    _zz_714_;
  wire       [26:0]   _zz_715_;
  wire       [31:0]   _zz_716_;
  wire       [31:0]   _zz_717_;
  wire       [31:0]   _zz_718_;
  wire                _zz_719_;
  wire       [0:0]    _zz_720_;
  wire       [20:0]   _zz_721_;
  wire       [31:0]   _zz_722_;
  wire       [31:0]   _zz_723_;
  wire       [31:0]   _zz_724_;
  wire                _zz_725_;
  wire       [0:0]    _zz_726_;
  wire       [14:0]   _zz_727_;
  wire       [31:0]   _zz_728_;
  wire       [31:0]   _zz_729_;
  wire       [31:0]   _zz_730_;
  wire                _zz_731_;
  wire       [0:0]    _zz_732_;
  wire       [8:0]    _zz_733_;
  wire       [31:0]   _zz_734_;
  wire       [31:0]   _zz_735_;
  wire       [31:0]   _zz_736_;
  wire                _zz_737_;
  wire       [0:0]    _zz_738_;
  wire       [2:0]    _zz_739_;
  wire       [31:0]   _zz_740_;
  wire       [31:0]   _zz_741_;
  wire                _zz_742_;
  wire       [0:0]    _zz_743_;
  wire       [0:0]    _zz_744_;
  wire       [31:0]   _zz_745_;
  wire       [31:0]   _zz_746_;
  wire                _zz_747_;
  wire       [2:0]    _zz_748_;
  wire       [2:0]    _zz_749_;
  wire                _zz_750_;
  wire       [0:0]    _zz_751_;
  wire       [73:0]   _zz_752_;
  wire       [31:0]   _zz_753_;
  wire       [31:0]   _zz_754_;
  wire       [31:0]   _zz_755_;
  wire                _zz_756_;
  wire                _zz_757_;
  wire                _zz_758_;
  wire       [3:0]    _zz_759_;
  wire       [3:0]    _zz_760_;
  wire                _zz_761_;
  wire       [0:0]    _zz_762_;
  wire       [70:0]   _zz_763_;
  wire       [0:0]    _zz_764_;
  wire       [0:0]    _zz_765_;
  wire                _zz_766_;
  wire       [0:0]    _zz_767_;
  wire       [5:0]    _zz_768_;
  wire       [0:0]    _zz_769_;
  wire       [18:0]   _zz_770_;
  wire       [1:0]    _zz_771_;
  wire       [1:0]    _zz_772_;
  wire                _zz_773_;
  wire       [0:0]    _zz_774_;
  wire       [67:0]   _zz_775_;
  wire       [31:0]   _zz_776_;
  wire       [31:0]   _zz_777_;
  wire       [31:0]   _zz_778_;
  wire       [31:0]   _zz_779_;
  wire       [31:0]   _zz_780_;
  wire                _zz_781_;
  wire       [0:0]    _zz_782_;
  wire       [3:0]    _zz_783_;
  wire       [31:0]   _zz_784_;
  wire       [31:0]   _zz_785_;
  wire       [0:0]    _zz_786_;
  wire       [16:0]   _zz_787_;
  wire                _zz_788_;
  wire                _zz_789_;
  wire       [0:0]    _zz_790_;
  wire       [0:0]    _zz_791_;
  wire       [2:0]    _zz_792_;
  wire       [2:0]    _zz_793_;
  wire                _zz_794_;
  wire       [0:0]    _zz_795_;
  wire       [65:0]   _zz_796_;
  wire       [31:0]   _zz_797_;
  wire       [31:0]   _zz_798_;
  wire       [31:0]   _zz_799_;
  wire                _zz_800_;
  wire       [0:0]    _zz_801_;
  wire       [1:0]    _zz_802_;
  wire       [0:0]    _zz_803_;
  wire       [14:0]   _zz_804_;
  wire       [31:0]   _zz_805_;
  wire       [31:0]   _zz_806_;
  wire       [31:0]   _zz_807_;
  wire       [31:0]   _zz_808_;
  wire                _zz_809_;
  wire       [0:0]    _zz_810_;
  wire       [0:0]    _zz_811_;
  wire       [0:0]    _zz_812_;
  wire       [18:0]   _zz_813_;
  wire       [0:0]    _zz_814_;
  wire       [0:0]    _zz_815_;
  wire                _zz_816_;
  wire       [0:0]    _zz_817_;
  wire       [63:0]   _zz_818_;
  wire       [31:0]   _zz_819_;
  wire       [31:0]   _zz_820_;
  wire       [31:0]   _zz_821_;
  wire                _zz_822_;
  wire                _zz_823_;
  wire       [0:0]    _zz_824_;
  wire       [12:0]   _zz_825_;
  wire       [31:0]   _zz_826_;
  wire       [31:0]   _zz_827_;
  wire       [31:0]   _zz_828_;
  wire       [31:0]   _zz_829_;
  wire       [31:0]   _zz_830_;
  wire       [31:0]   _zz_831_;
  wire       [31:0]   _zz_832_;
  wire                _zz_833_;
  wire       [0:0]    _zz_834_;
  wire       [16:0]   _zz_835_;
  wire       [0:0]    _zz_836_;
  wire       [2:0]    _zz_837_;
  wire       [3:0]    _zz_838_;
  wire       [3:0]    _zz_839_;
  wire                _zz_840_;
  wire       [0:0]    _zz_841_;
  wire       [61:0]   _zz_842_;
  wire       [31:0]   _zz_843_;
  wire       [31:0]   _zz_844_;
  wire       [0:0]    _zz_845_;
  wire       [10:0]   _zz_846_;
  wire       [31:0]   _zz_847_;
  wire       [31:0]   _zz_848_;
  wire       [31:0]   _zz_849_;
  wire       [0:0]    _zz_850_;
  wire       [14:0]   _zz_851_;
  wire       [31:0]   _zz_852_;
  wire       [31:0]   _zz_853_;
  wire       [0:0]    _zz_854_;
  wire       [0:0]    _zz_855_;
  wire       [0:0]    _zz_856_;
  wire       [1:0]    _zz_857_;
  wire       [0:0]    _zz_858_;
  wire       [2:0]    _zz_859_;
  wire       [1:0]    _zz_860_;
  wire       [1:0]    _zz_861_;
  wire                _zz_862_;
  wire       [0:0]    _zz_863_;
  wire       [59:0]   _zz_864_;
  wire       [0:0]    _zz_865_;
  wire       [8:0]    _zz_866_;
  wire       [0:0]    _zz_867_;
  wire       [12:0]   _zz_868_;
  wire       [31:0]   _zz_869_;
  wire       [31:0]   _zz_870_;
  wire       [31:0]   _zz_871_;
  wire       [31:0]   _zz_872_;
  wire       [0:0]    _zz_873_;
  wire       [0:0]    _zz_874_;
  wire                _zz_875_;
  wire                _zz_876_;
  wire       [0:0]    _zz_877_;
  wire       [6:0]    _zz_878_;
  wire       [2:0]    _zz_879_;
  wire       [2:0]    _zz_880_;
  wire                _zz_881_;
  wire       [0:0]    _zz_882_;
  wire       [57:0]   _zz_883_;
  wire       [0:0]    _zz_884_;
  wire       [6:0]    _zz_885_;
  wire       [0:0]    _zz_886_;
  wire       [10:0]   _zz_887_;
  wire       [31:0]   _zz_888_;
  wire       [31:0]   _zz_889_;
  wire       [31:0]   _zz_890_;
  wire       [31:0]   _zz_891_;
  wire                _zz_892_;
  wire       [0:0]    _zz_893_;
  wire       [4:0]    _zz_894_;
  wire                _zz_895_;
  wire       [0:0]    _zz_896_;
  wire       [0:0]    _zz_897_;
  wire       [0:0]    _zz_898_;
  wire       [23:0]   _zz_899_;
  wire       [1:0]    _zz_900_;
  wire       [1:0]    _zz_901_;
  wire                _zz_902_;
  wire       [0:0]    _zz_903_;
  wire       [55:0]   _zz_904_;
  wire       [0:0]    _zz_905_;
  wire       [4:0]    _zz_906_;
  wire       [31:0]   _zz_907_;
  wire       [31:0]   _zz_908_;
  wire                _zz_909_;
  wire       [0:0]    _zz_910_;
  wire       [8:0]    _zz_911_;
  wire       [31:0]   _zz_912_;
  wire       [31:0]   _zz_913_;
  wire       [31:0]   _zz_914_;
  wire                _zz_915_;
  wire       [0:0]    _zz_916_;
  wire       [2:0]    _zz_917_;
  wire       [31:0]   _zz_918_;
  wire       [31:0]   _zz_919_;
  wire       [31:0]   _zz_920_;
  wire       [31:0]   _zz_921_;
  wire       [31:0]   _zz_922_;
  wire       [31:0]   _zz_923_;
  wire       [31:0]   _zz_924_;
  wire       [0:0]    _zz_925_;
  wire       [21:0]   _zz_926_;
  wire                _zz_927_;
  wire                _zz_928_;
  wire       [0:0]    _zz_929_;
  wire       [0:0]    _zz_930_;
  wire       [2:0]    _zz_931_;
  wire       [2:0]    _zz_932_;
  wire                _zz_933_;
  wire       [0:0]    _zz_934_;
  wire       [53:0]   _zz_935_;
  wire       [0:0]    _zz_936_;
  wire       [3:0]    _zz_937_;
  wire       [31:0]   _zz_938_;
  wire       [31:0]   _zz_939_;
  wire       [31:0]   _zz_940_;
  wire                _zz_941_;
  wire       [0:0]    _zz_942_;
  wire       [7:0]    _zz_943_;
  wire       [31:0]   _zz_944_;
  wire       [31:0]   _zz_945_;
  wire       [31:0]   _zz_946_;
  wire                _zz_947_;
  wire       [0:0]    _zz_948_;
  wire       [1:0]    _zz_949_;
  wire       [31:0]   _zz_950_;
  wire       [31:0]   _zz_951_;
  wire       [31:0]   _zz_952_;
  wire                _zz_953_;
  wire       [0:0]    _zz_954_;
  wire       [20:0]   _zz_955_;
  wire       [31:0]   _zz_956_;
  wire       [31:0]   _zz_957_;
  wire       [31:0]   _zz_958_;
  wire       [31:0]   _zz_959_;
  wire                _zz_960_;
  wire       [0:0]    _zz_961_;
  wire       [1:0]    _zz_962_;
  wire       [0:0]    _zz_963_;
  wire       [0:0]    _zz_964_;
  wire                _zz_965_;
  wire       [0:0]    _zz_966_;
  wire       [52:0]   _zz_967_;
  wire       [0:0]    _zz_968_;
  wire       [2:0]    _zz_969_;
  wire       [31:0]   _zz_970_;
  wire       [31:0]   _zz_971_;
  wire       [31:0]   _zz_972_;
  wire                _zz_973_;
  wire       [0:0]    _zz_974_;
  wire       [6:0]    _zz_975_;
  wire       [31:0]   _zz_976_;
  wire       [31:0]   _zz_977_;
  wire       [31:0]   _zz_978_;
  wire                _zz_979_;
  wire       [0:0]    _zz_980_;
  wire       [0:0]    _zz_981_;
  wire       [31:0]   _zz_982_;
  wire       [31:0]   _zz_983_;
  wire                _zz_984_;
  wire       [0:0]    _zz_985_;
  wire       [19:0]   _zz_986_;
  wire       [31:0]   _zz_987_;
  wire       [31:0]   _zz_988_;
  wire       [31:0]   _zz_989_;
  wire       [31:0]   _zz_990_;
  wire       [0:0]    _zz_991_;
  wire       [0:0]    _zz_992_;
  wire                _zz_993_;
  wire       [4:0]    _zz_994_;
  wire       [4:0]    _zz_995_;
  wire                _zz_996_;
  wire       [0:0]    _zz_997_;
  wire       [51:0]   _zz_998_;
  wire       [31:0]   _zz_999_;
  wire       [31:0]   _zz_1000_;
  wire                _zz_1001_;
  wire       [0:0]    _zz_1002_;
  wire       [0:0]    _zz_1003_;
  wire       [31:0]   _zz_1004_;
  wire       [31:0]   _zz_1005_;
  wire       [31:0]   _zz_1006_;
  wire                _zz_1007_;
  wire       [0:0]    _zz_1008_;
  wire       [4:0]    _zz_1009_;
  wire       [31:0]   _zz_1010_;
  wire       [31:0]   _zz_1011_;
  wire       [31:0]   _zz_1012_;
  wire       [31:0]   _zz_1013_;
  wire       [31:0]   _zz_1014_;
  wire       [31:0]   _zz_1015_;
  wire                _zz_1016_;
  wire       [0:0]    _zz_1017_;
  wire       [17:0]   _zz_1018_;
  wire       [31:0]   _zz_1019_;
  wire       [31:0]   _zz_1020_;
  wire       [31:0]   _zz_1021_;
  wire       [0:0]    _zz_1022_;
  wire       [2:0]    _zz_1023_;
  wire       [0:0]    _zz_1024_;
  wire       [0:0]    _zz_1025_;
  wire       [1:0]    _zz_1026_;
  wire       [1:0]    _zz_1027_;
  wire                _zz_1028_;
  wire       [0:0]    _zz_1029_;
  wire       [49:0]   _zz_1030_;
  wire       [31:0]   _zz_1031_;
  wire       [31:0]   _zz_1032_;
  wire       [31:0]   _zz_1033_;
  wire       [31:0]   _zz_1034_;
  wire       [31:0]   _zz_1035_;
  wire       [31:0]   _zz_1036_;
  wire                _zz_1037_;
  wire       [0:0]    _zz_1038_;
  wire       [2:0]    _zz_1039_;
  wire       [31:0]   _zz_1040_;
  wire       [0:0]    _zz_1041_;
  wire       [15:0]   _zz_1042_;
  wire       [0:0]    _zz_1043_;
  wire       [0:0]    _zz_1044_;
  wire       [31:0]   _zz_1045_;
  wire       [31:0]   _zz_1046_;
  wire       [0:0]    _zz_1047_;
  wire       [7:0]    _zz_1048_;
  wire       [4:0]    _zz_1049_;
  wire       [4:0]    _zz_1050_;
  wire                _zz_1051_;
  wire       [0:0]    _zz_1052_;
  wire       [47:0]   _zz_1053_;
  wire       [31:0]   _zz_1054_;
  wire       [31:0]   _zz_1055_;
  wire       [31:0]   _zz_1056_;
  wire                _zz_1057_;
  wire       [0:0]    _zz_1058_;
  wire       [0:0]    _zz_1059_;
  wire       [0:0]    _zz_1060_;
  wire       [13:0]   _zz_1061_;
  wire       [0:0]    _zz_1062_;
  wire       [5:0]    _zz_1063_;
  wire                _zz_1064_;
  wire       [0:0]    _zz_1065_;
  wire       [2:0]    _zz_1066_;
  wire       [0:0]    _zz_1067_;
  wire       [4:0]    _zz_1068_;
  wire       [0:0]    _zz_1069_;
  wire       [0:0]    _zz_1070_;
  wire                _zz_1071_;
  wire       [0:0]    _zz_1072_;
  wire       [45:0]   _zz_1073_;
  wire       [31:0]   _zz_1074_;
  wire       [31:0]   _zz_1075_;
  wire       [31:0]   _zz_1076_;
  wire       [31:0]   _zz_1077_;
  wire       [31:0]   _zz_1078_;
  wire                _zz_1079_;
  wire       [0:0]    _zz_1080_;
  wire       [11:0]   _zz_1081_;
  wire                _zz_1082_;
  wire       [0:0]    _zz_1083_;
  wire       [3:0]    _zz_1084_;
  wire       [31:0]   _zz_1085_;
  wire       [0:0]    _zz_1086_;
  wire       [0:0]    _zz_1087_;
  wire       [31:0]   _zz_1088_;
  wire       [31:0]   _zz_1089_;
  wire       [0:0]    _zz_1090_;
  wire       [2:0]    _zz_1091_;
  wire       [2:0]    _zz_1092_;
  wire       [2:0]    _zz_1093_;
  wire                _zz_1094_;
  wire       [0:0]    _zz_1095_;
  wire       [43:0]   _zz_1096_;
  wire       [31:0]   _zz_1097_;
  wire       [31:0]   _zz_1098_;
  wire       [31:0]   _zz_1099_;
  wire       [0:0]    _zz_1100_;
  wire       [9:0]    _zz_1101_;
  wire       [31:0]   _zz_1102_;
  wire       [31:0]   _zz_1103_;
  wire       [31:0]   _zz_1104_;
  wire                _zz_1105_;
  wire       [0:0]    _zz_1106_;
  wire       [1:0]    _zz_1107_;
  wire       [0:0]    _zz_1108_;
  wire       [0:0]    _zz_1109_;
  wire       [0:0]    _zz_1110_;
  wire       [0:0]    _zz_1111_;
  wire       [0:0]    _zz_1112_;
  wire       [0:0]    _zz_1113_;
  wire       [2:0]    _zz_1114_;
  wire       [2:0]    _zz_1115_;
  wire                _zz_1116_;
  wire       [0:0]    _zz_1117_;
  wire       [41:0]   _zz_1118_;
  wire       [0:0]    _zz_1119_;
  wire       [7:0]    _zz_1120_;
  wire       [31:0]   _zz_1121_;
  wire       [31:0]   _zz_1122_;
  wire       [31:0]   _zz_1123_;
  wire                _zz_1124_;
  wire                _zz_1125_;
  wire       [31:0]   _zz_1126_;
  wire       [31:0]   _zz_1127_;
  wire                _zz_1128_;
  wire       [0:0]    _zz_1129_;
  wire       [0:0]    _zz_1130_;
  wire       [0:0]    _zz_1131_;
  wire       [13:0]   _zz_1132_;
  wire       [1:0]    _zz_1133_;
  wire       [1:0]    _zz_1134_;
  wire                _zz_1135_;
  wire       [0:0]    _zz_1136_;
  wire       [39:0]   _zz_1137_;
  wire       [0:0]    _zz_1138_;
  wire       [5:0]    _zz_1139_;
  wire       [31:0]   _zz_1140_;
  wire       [31:0]   _zz_1141_;
  wire       [31:0]   _zz_1142_;
  wire       [31:0]   _zz_1143_;
  wire       [31:0]   _zz_1144_;
  wire       [31:0]   _zz_1145_;
  wire       [31:0]   _zz_1146_;
  wire       [0:0]    _zz_1147_;
  wire       [11:0]   _zz_1148_;
  wire                _zz_1149_;
  wire       [0:0]    _zz_1150_;
  wire       [0:0]    _zz_1151_;
  wire       [3:0]    _zz_1152_;
  wire       [3:0]    _zz_1153_;
  wire                _zz_1154_;
  wire       [0:0]    _zz_1155_;
  wire       [37:0]   _zz_1156_;
  wire       [0:0]    _zz_1157_;
  wire       [3:0]    _zz_1158_;
  wire       [0:0]    _zz_1159_;
  wire       [9:0]    _zz_1160_;
  wire       [31:0]   _zz_1161_;
  wire       [0:0]    _zz_1162_;
  wire       [1:0]    _zz_1163_;
  wire       [0:0]    _zz_1164_;
  wire       [6:0]    _zz_1165_;
  wire       [0:0]    _zz_1166_;
  wire       [0:0]    _zz_1167_;
  wire                _zz_1168_;
  wire       [0:0]    _zz_1169_;
  wire       [35:0]   _zz_1170_;
  wire                _zz_1171_;
  wire       [0:0]    _zz_1172_;
  wire       [1:0]    _zz_1173_;
  wire       [31:0]   _zz_1174_;
  wire       [31:0]   _zz_1175_;
  wire       [0:0]    _zz_1176_;
  wire       [7:0]    _zz_1177_;
  wire                _zz_1178_;
  wire       [0:0]    _zz_1179_;
  wire       [4:0]    _zz_1180_;
  wire       [0:0]    _zz_1181_;
  wire       [4:0]    _zz_1182_;
  wire       [3:0]    _zz_1183_;
  wire       [3:0]    _zz_1184_;
  wire                _zz_1185_;
  wire       [0:0]    _zz_1186_;
  wire       [33:0]   _zz_1187_;
  wire       [31:0]   _zz_1188_;
  wire                _zz_1189_;
  wire                _zz_1190_;
  wire       [0:0]    _zz_1191_;
  wire       [5:0]    _zz_1192_;
  wire       [31:0]   _zz_1193_;
  wire       [31:0]   _zz_1194_;
  wire       [31:0]   _zz_1195_;
  wire                _zz_1196_;
  wire       [0:0]    _zz_1197_;
  wire       [2:0]    _zz_1198_;
  wire                _zz_1199_;
  wire       [0:0]    _zz_1200_;
  wire       [2:0]    _zz_1201_;
  wire                _zz_1202_;
  wire       [0:0]    _zz_1203_;
  wire       [1:0]    _zz_1204_;
  wire       [0:0]    _zz_1205_;
  wire       [4:0]    _zz_1206_;
  wire       [10:0]   _zz_1207_;
  wire       [10:0]   _zz_1208_;
  wire                _zz_1209_;
  wire       [0:0]    _zz_1210_;
  wire       [31:0]   _zz_1211_;
  wire       [31:0]   _zz_1212_;
  wire       [31:0]   _zz_1213_;
  wire       [31:0]   _zz_1214_;
  wire       [31:0]   _zz_1215_;
  wire                _zz_1216_;
  wire       [0:0]    _zz_1217_;
  wire       [4:0]    _zz_1218_;
  wire       [31:0]   _zz_1219_;
  wire       [31:0]   _zz_1220_;
  wire       [31:0]   _zz_1221_;
  wire                _zz_1222_;
  wire       [0:0]    _zz_1223_;
  wire       [1:0]    _zz_1224_;
  wire       [31:0]   _zz_1225_;
  wire       [31:0]   _zz_1226_;
  wire       [0:0]    _zz_1227_;
  wire       [1:0]    _zz_1228_;
  wire       [31:0]   _zz_1229_;
  wire       [31:0]   _zz_1230_;
  wire                _zz_1231_;
  wire       [0:0]    _zz_1232_;
  wire       [0:0]    _zz_1233_;
  wire       [0:0]    _zz_1234_;
  wire       [3:0]    _zz_1235_;
  wire       [0:0]    _zz_1236_;
  wire       [9:0]    _zz_1237_;
  wire       [0:0]    _zz_1238_;
  wire       [0:0]    _zz_1239_;
  wire                _zz_1240_;
  wire       [0:0]    _zz_1241_;
  wire       [30:0]   _zz_1242_;
  wire       [31:0]   _zz_1243_;
  wire       [31:0]   _zz_1244_;
  wire       [31:0]   _zz_1245_;
  wire       [31:0]   _zz_1246_;
  wire       [0:0]    _zz_1247_;
  wire       [3:0]    _zz_1248_;
  wire       [31:0]   _zz_1249_;
  wire       [31:0]   _zz_1250_;
  wire       [31:0]   _zz_1251_;
  wire                _zz_1252_;
  wire       [0:0]    _zz_1253_;
  wire       [0:0]    _zz_1254_;
  wire       [31:0]   _zz_1255_;
  wire                _zz_1256_;
  wire       [0:0]    _zz_1257_;
  wire       [0:0]    _zz_1258_;
  wire       [31:0]   _zz_1259_;
  wire       [31:0]   _zz_1260_;
  wire       [31:0]   _zz_1261_;
  wire                _zz_1262_;
  wire       [0:0]    _zz_1263_;
  wire       [2:0]    _zz_1264_;
  wire       [0:0]    _zz_1265_;
  wire       [8:0]    _zz_1266_;
  wire       [0:0]    _zz_1267_;
  wire       [0:0]    _zz_1268_;
  wire                _zz_1269_;
  wire       [0:0]    _zz_1270_;
  wire       [29:0]   _zz_1271_;
  wire                _zz_1272_;
  wire       [0:0]    _zz_1273_;
  wire       [1:0]    _zz_1274_;
  wire       [31:0]   _zz_1275_;
  wire       [31:0]   _zz_1276_;
  wire       [31:0]   _zz_1277_;
  wire       [31:0]   _zz_1278_;
  wire       [31:0]   _zz_1279_;
  wire       [31:0]   _zz_1280_;
  wire       [31:0]   _zz_1281_;
  wire       [31:0]   _zz_1282_;
  wire       [31:0]   _zz_1283_;
  wire                _zz_1284_;
  wire       [0:0]    _zz_1285_;
  wire       [0:0]    _zz_1286_;
  wire                _zz_1287_;
  wire       [0:0]    _zz_1288_;
  wire       [6:0]    _zz_1289_;
  wire       [31:0]   _zz_1290_;
  wire       [31:0]   _zz_1291_;
  wire       [1:0]    _zz_1292_;
  wire       [1:0]    _zz_1293_;
  wire                _zz_1294_;
  wire       [0:0]    _zz_1295_;
  wire       [27:0]   _zz_1296_;
  wire       [31:0]   _zz_1297_;
  wire       [31:0]   _zz_1298_;
  wire       [31:0]   _zz_1299_;
  wire       [31:0]   _zz_1300_;
  wire       [31:0]   _zz_1301_;
  wire       [31:0]   _zz_1302_;
  wire       [31:0]   _zz_1303_;
  wire       [31:0]   _zz_1304_;
  wire       [31:0]   _zz_1305_;
  wire       [0:0]    _zz_1306_;
  wire       [4:0]    _zz_1307_;
  wire                _zz_1308_;
  wire       [0:0]    _zz_1309_;
  wire       [0:0]    _zz_1310_;
  wire       [2:0]    _zz_1311_;
  wire       [2:0]    _zz_1312_;
  wire                _zz_1313_;
  wire       [0:0]    _zz_1314_;
  wire       [25:0]   _zz_1315_;
  wire       [31:0]   _zz_1316_;
  wire       [31:0]   _zz_1317_;
  wire                _zz_1318_;
  wire       [0:0]    _zz_1319_;
  wire       [2:0]    _zz_1320_;
  wire       [31:0]   _zz_1321_;
  wire       [31:0]   _zz_1322_;
  wire       [31:0]   _zz_1323_;
  wire       [31:0]   _zz_1324_;
  wire       [31:0]   _zz_1325_;
  wire                _zz_1326_;
  wire       [0:0]    _zz_1327_;
  wire       [0:0]    _zz_1328_;
  wire       [0:0]    _zz_1329_;
  wire       [1:0]    _zz_1330_;
  wire       [2:0]    _zz_1331_;
  wire       [2:0]    _zz_1332_;
  wire                _zz_1333_;
  wire       [0:0]    _zz_1334_;
  wire       [23:0]   _zz_1335_;
  wire       [31:0]   _zz_1336_;
  wire       [31:0]   _zz_1337_;
  wire       [31:0]   _zz_1338_;
  wire                _zz_1339_;
  wire       [0:0]    _zz_1340_;
  wire       [0:0]    _zz_1341_;
  wire       [31:0]   _zz_1342_;
  wire       [31:0]   _zz_1343_;
  wire       [31:0]   _zz_1344_;
  wire       [31:0]   _zz_1345_;
  wire       [31:0]   _zz_1346_;
  wire       [31:0]   _zz_1347_;
  wire       [31:0]   _zz_1348_;
  wire                _zz_1349_;
  wire                _zz_1350_;
  wire                _zz_1351_;
  wire       [0:0]    _zz_1352_;
  wire       [0:0]    _zz_1353_;
  wire       [0:0]    _zz_1354_;
  wire       [1:0]    _zz_1355_;
  wire                _zz_1356_;
  wire       [0:0]    _zz_1357_;
  wire       [21:0]   _zz_1358_;
  wire       [31:0]   _zz_1359_;
  wire       [31:0]   _zz_1360_;
  wire       [31:0]   _zz_1361_;
  wire       [31:0]   _zz_1362_;
  wire       [31:0]   _zz_1363_;
  wire       [31:0]   _zz_1364_;
  wire       [31:0]   _zz_1365_;
  wire       [31:0]   _zz_1366_;
  wire       [31:0]   _zz_1367_;
  wire       [31:0]   _zz_1368_;
  wire       [31:0]   _zz_1369_;
  wire       [31:0]   _zz_1370_;
  wire                _zz_1371_;
  wire                _zz_1372_;
  wire       [0:0]    _zz_1373_;
  wire       [0:0]    _zz_1374_;
  wire                _zz_1375_;
  wire       [0:0]    _zz_1376_;
  wire       [19:0]   _zz_1377_;
  wire       [31:0]   _zz_1378_;
  wire                _zz_1379_;
  wire                _zz_1380_;
  wire                _zz_1381_;
  wire       [1:0]    _zz_1382_;
  wire       [1:0]    _zz_1383_;
  wire                _zz_1384_;
  wire       [0:0]    _zz_1385_;
  wire       [16:0]   _zz_1386_;
  wire       [31:0]   _zz_1387_;
  wire                _zz_1388_;
  wire                _zz_1389_;
  wire       [0:0]    _zz_1390_;
  wire       [1:0]    _zz_1391_;
  wire       [5:0]    _zz_1392_;
  wire       [5:0]    _zz_1393_;
  wire                _zz_1394_;
  wire       [0:0]    _zz_1395_;
  wire       [12:0]   _zz_1396_;
  wire       [31:0]   _zz_1397_;
  wire       [31:0]   _zz_1398_;
  wire       [31:0]   _zz_1399_;
  wire       [31:0]   _zz_1400_;
  wire       [31:0]   _zz_1401_;
  wire       [0:0]    _zz_1402_;
  wire       [2:0]    _zz_1403_;
  wire       [0:0]    _zz_1404_;
  wire       [1:0]    _zz_1405_;
  wire       [0:0]    _zz_1406_;
  wire       [30:0]   _zz_1407_;
  wire       [1:0]    _zz_1408_;
  wire       [1:0]    _zz_1409_;
  wire                _zz_1410_;
  wire       [0:0]    _zz_1411_;
  wire       [9:0]    _zz_1412_;
  wire       [31:0]   _zz_1413_;
  wire       [31:0]   _zz_1414_;
  wire       [0:0]    _zz_1415_;
  wire       [0:0]    _zz_1416_;
  wire       [31:0]   _zz_1417_;
  wire       [31:0]   _zz_1418_;
  wire                _zz_1419_;
  wire       [31:0]   _zz_1420_;
  wire       [31:0]   _zz_1421_;
  wire                _zz_1422_;
  wire       [0:0]    _zz_1423_;
  wire       [28:0]   _zz_1424_;
  wire                _zz_1425_;
  wire       [0:0]    _zz_1426_;
  wire       [3:0]    _zz_1427_;
  wire       [3:0]    _zz_1428_;
  wire       [3:0]    _zz_1429_;
  wire                _zz_1430_;
  wire       [0:0]    _zz_1431_;
  wire       [7:0]    _zz_1432_;
  wire       [31:0]   _zz_1433_;
  wire       [31:0]   _zz_1434_;
  wire       [31:0]   _zz_1435_;
  wire       [31:0]   _zz_1436_;
  wire       [0:0]    _zz_1437_;
  wire       [26:0]   _zz_1438_;
  wire       [31:0]   _zz_1439_;
  wire       [31:0]   _zz_1440_;
  wire       [31:0]   _zz_1441_;
  wire                _zz_1442_;
  wire       [0:0]    _zz_1443_;
  wire       [1:0]    _zz_1444_;
  wire                _zz_1445_;
  wire       [0:0]    _zz_1446_;
  wire       [1:0]    _zz_1447_;
  wire                _zz_1448_;
  wire       [0:0]    _zz_1449_;
  wire       [0:0]    _zz_1450_;
  wire                _zz_1451_;
  wire       [0:0]    _zz_1452_;
  wire       [5:0]    _zz_1453_;
  wire       [31:0]   _zz_1454_;
  wire       [31:0]   _zz_1455_;
  wire       [0:0]    _zz_1456_;
  wire       [24:0]   _zz_1457_;
  wire       [31:0]   _zz_1458_;
  wire       [31:0]   _zz_1459_;
  wire       [31:0]   _zz_1460_;
  wire                _zz_1461_;
  wire                _zz_1462_;
  wire       [31:0]   _zz_1463_;
  wire                _zz_1464_;
  wire                _zz_1465_;
  wire       [31:0]   _zz_1466_;
  wire       [31:0]   _zz_1467_;
  wire       [31:0]   _zz_1468_;
  wire       [0:0]    _zz_1469_;
  wire       [0:0]    _zz_1470_;
  wire       [3:0]    _zz_1471_;
  wire       [3:0]    _zz_1472_;
  wire                _zz_1473_;
  wire       [0:0]    _zz_1474_;
  wire       [3:0]    _zz_1475_;
  wire       [0:0]    _zz_1476_;
  wire       [22:0]   _zz_1477_;
  wire       [31:0]   _zz_1478_;
  wire       [31:0]   _zz_1479_;
  wire       [31:0]   _zz_1480_;
  wire       [31:0]   _zz_1481_;
  wire       [31:0]   _zz_1482_;
  wire       [31:0]   _zz_1483_;
  wire                _zz_1484_;
  wire       [0:0]    _zz_1485_;
  wire       [1:0]    _zz_1486_;
  wire       [0:0]    _zz_1487_;
  wire       [1:0]    _zz_1488_;
  wire       [9:0]    _zz_1489_;
  wire       [9:0]    _zz_1490_;
  wire                _zz_1491_;
  wire       [0:0]    _zz_1492_;
  wire       [1:0]    _zz_1493_;
  wire       [0:0]    _zz_1494_;
  wire       [20:0]   _zz_1495_;
  wire       [31:0]   _zz_1496_;
  wire       [31:0]   _zz_1497_;
  wire       [31:0]   _zz_1498_;
  wire                _zz_1499_;
  wire                _zz_1500_;
  wire       [0:0]    _zz_1501_;
  wire       [7:0]    _zz_1502_;
  wire                _zz_1503_;
  wire       [0:0]    _zz_1504_;
  wire       [0:0]    _zz_1505_;
  wire                _zz_1506_;
  wire                _zz_1507_;
  wire       [0:0]    _zz_1508_;
  wire       [17:0]   _zz_1509_;
  wire       [31:0]   _zz_1510_;
  wire       [31:0]   _zz_1511_;
  wire       [31:0]   _zz_1512_;
  wire                _zz_1513_;
  wire       [0:0]    _zz_1514_;
  wire       [4:0]    _zz_1515_;
  wire                _zz_1516_;
  wire                _zz_1517_;
  wire       [0:0]    _zz_1518_;
  wire       [3:0]    _zz_1519_;
  wire                _zz_1520_;
  wire       [0:0]    _zz_1521_;
  wire       [14:0]   _zz_1522_;
  wire       [31:0]   _zz_1523_;
  wire       [31:0]   _zz_1524_;
  wire       [31:0]   _zz_1525_;
  wire                _zz_1526_;
  wire       [0:0]    _zz_1527_;
  wire       [1:0]    _zz_1528_;
  wire       [31:0]   _zz_1529_;
  wire       [31:0]   _zz_1530_;
  wire       [31:0]   _zz_1531_;
  wire       [0:0]    _zz_1532_;
  wire       [0:0]    _zz_1533_;
  wire                _zz_1534_;
  wire       [0:0]    _zz_1535_;
  wire       [11:0]   _zz_1536_;
  wire       [31:0]   _zz_1537_;
  wire       [31:0]   _zz_1538_;
  wire       [31:0]   _zz_1539_;
  wire       [31:0]   _zz_1540_;
  wire       [31:0]   _zz_1541_;
  wire       [31:0]   _zz_1542_;
  wire                _zz_1543_;
  wire       [0:0]    _zz_1544_;
  wire       [3:0]    _zz_1545_;
  wire       [10:0]   _zz_1546_;
  wire       [10:0]   _zz_1547_;
  wire       [17:0]   _zz_1548_;
  wire       [0:0]    _zz_1549_;
  wire       [17:0]   _zz_1550_;
  wire       [0:0]    _zz_1551_;
  wire       [17:0]   _zz_1552_;
  wire       [0:0]    _zz_1553_;
  wire       `TgtCtrlEnum_defaultEncoding_type _zz_1_;
  wire       `TgtCtrlEnum_defaultEncoding_type _zz_2_;
  wire       `CRMoveCtrlEnum_defaultEncoding_type decode_DECODER_stageables_6;
  wire       `CRMoveCtrlEnum_defaultEncoding_type _zz_3_;
  wire       `CRMoveCtrlEnum_defaultEncoding_type _zz_4_;
  wire       `CRMoveCtrlEnum_defaultEncoding_type _zz_5_;
  wire                decode_DECODER_stageables_23;
  wire                execute_TARGET_MISSMATCH2;
  wire                decode_DECODER_stageables_32;
  wire       `Src1CtrlEnum_defaultEncoding_type decode_DECODER_stageables_36;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_6_;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_7_;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_8_;
  wire                decode_DECODER_stageables_42;
  wire                decode_DECODER_stageables_25;
  wire                execute_BRANCH_LINK;
  wire       `Src2CtrlEnum_defaultEncoding_type decode_DECODER_stageables_24;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_9_;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_10_;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_11_;
  wire                decode_DECODER_stageables_19;
  wire                execute_DECODER_stageables_35;
  wire                decode_DECODER_stageables_35;
  wire       `AluCtrlEnum_defaultEncoding_type decode_DECODER_stageables_7;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_12_;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_13_;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_14_;
  wire       `EndianEnum_defaultEncoding_type memory_MSR_ENDIAN;
  wire       `EndianEnum_defaultEncoding_type _zz_15_;
  wire       `EndianEnum_defaultEncoding_type _zz_16_;
  wire       `EndianEnum_defaultEncoding_type _zz_17_;
  wire       `EndianEnum_defaultEncoding_type _zz_18_;
  wire       `EndianEnum_defaultEncoding_type _zz_19_;
  wire       `EndianEnum_defaultEncoding_type _zz_20_;
  wire       `EndianEnum_defaultEncoding_type _zz_21_;
  wire       [31:0]   memory_SRC1;
  wire                decode_DECODER_stageables_21;
  wire                decode_DECODER_stageables_45;
  wire       [31:0]   memory_SRC_ADD;
  wire       `Src3CtrlEnum_defaultEncoding_type decode_DECODER_stageables_0;
  wire       `Src3CtrlEnum_defaultEncoding_type _zz_22_;
  wire       `Src3CtrlEnum_defaultEncoding_type _zz_23_;
  wire       `Src3CtrlEnum_defaultEncoding_type _zz_24_;
  wire       `DataSizeEnum_defaultEncoding_type memory_DECODER_stageables_5;
  wire       `DataSizeEnum_defaultEncoding_type _zz_25_;
  wire       `DataSizeEnum_defaultEncoding_type _zz_26_;
  wire       `DataSizeEnum_defaultEncoding_type _zz_27_;
  wire       `DataSizeEnum_defaultEncoding_type _zz_28_;
  wire       `DataSizeEnum_defaultEncoding_type _zz_29_;
  wire       `DataSizeEnum_defaultEncoding_type decode_DECODER_stageables_5;
  wire       `DataSizeEnum_defaultEncoding_type _zz_30_;
  wire       `DataSizeEnum_defaultEncoding_type _zz_31_;
  wire       `DataSizeEnum_defaultEncoding_type _zz_32_;
  wire                memory_DECODER_stageables_52;
  wire                execute_DECODER_stageables_52;
  wire                decode_DECODER_stageables_52;
  wire       [4:0]    decode_RT_ADDR;
  wire       [33:0]   memory_MUL_HH;
  wire       [33:0]   execute_MUL_HH;
  wire       [7:0]    decode_CR_FIELD_RD;
  wire                decode_DECODER_stageables_33;
  wire                execute_DECODER_stageables_28;
  wire                decode_DECODER_stageables_28;
  wire       [4:0]    writeBack_LOAD_UPDATE_ADDR;
  wire       [4:0]    memory_LOAD_UPDATE_ADDR;
  wire       [4:0]    execute_LOAD_UPDATE_ADDR;
  wire       [31:0]   writeBack_FORMAL_PC_NEXT;
  wire       [31:0]   memory_FORMAL_PC_NEXT;
  wire       [31:0]   execute_FORMAL_PC_NEXT;
  wire       [31:0]   decode_FORMAL_PC_NEXT;
  wire       [33:0]   execute_MUL_HL;
  wire                decode_DECODER_stageables_39;
  wire                decode_DECODER_stageables_1;
  wire       `AluSpecCtrlEnum_defaultEncoding_type decode_DECODER_stageables_56;
  wire       `AluSpecCtrlEnum_defaultEncoding_type _zz_33_;
  wire       `AluSpecCtrlEnum_defaultEncoding_type _zz_34_;
  wire       `AluSpecCtrlEnum_defaultEncoding_type _zz_35_;
  wire       [31:0]   execute_RB;
  wire       [31:0]   execute_MUL_LL;
  wire                decode_DECODER_stageables_13;
  wire                execute_XER_CA;
  wire                memory_DECODER_stageables_22;
  wire                execute_DECODER_stageables_22;
  wire                decode_DECODER_stageables_22;
  wire                decode_DECODER_stageables_31;
  wire                decode_DECODER_stageables_17;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type decode_DECODER_stageables_18;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_36_;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_37_;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_38_;
  wire                decode_DECODER_stageables_8;
  wire                decode_DECODER_stageables_44;
  wire                decode_DECODER_stageables_41;
  wire                execute_DECODER_stageables_3;
  wire                decode_DECODER_stageables_3;
  wire                execute_PREDICTION_CONTEXT_hazard;
  wire                execute_PREDICTION_CONTEXT_hit;
  wire       [19:0]   execute_PREDICTION_CONTEXT_line_source;
  wire       [1:0]    execute_PREDICTION_CONTEXT_line_branchWish;
  wire       [31:0]   execute_PREDICTION_CONTEXT_line_target;
  wire                decode_PREDICTION_CONTEXT_hazard;
  wire                decode_PREDICTION_CONTEXT_hit;
  wire       [19:0]   decode_PREDICTION_CONTEXT_line_source;
  wire       [1:0]    decode_PREDICTION_CONTEXT_line_branchWish;
  wire       [31:0]   decode_PREDICTION_CONTEXT_line_target;
  wire                execute_DECODER_stageables_14;
  wire                decode_DECODER_stageables_14;
  wire                execute_BRANCH_DO;
  wire       [31:0]   execute_NEXT_PC2;
  wire                memory_DECODER_stageables_38;
  wire                execute_DECODER_stageables_38;
  wire                decode_DECODER_stageables_38;
  wire                memory_DECODER_stageables_55;
  wire                decode_DECODER_stageables_55;
  wire       `AluRimiCtrlEnum_defaultEncoding_type decode_DECODER_stageables_15;
  wire       `AluRimiCtrlEnum_defaultEncoding_type _zz_39_;
  wire       `AluRimiCtrlEnum_defaultEncoding_type _zz_40_;
  wire       `AluRimiCtrlEnum_defaultEncoding_type _zz_41_;
  wire                decode_DECODER_stageables_10;
  wire       [4:0]    writeBack_REGFILE_WRITE_ADDR;
  wire       [4:0]    memory_REGFILE_WRITE_ADDR;
  wire       [4:0]    execute_REGFILE_WRITE_ADDR;
  wire       [31:0]   writeBack_LOAD_UPDATE_DATA;
  wire       [31:0]   memory_LOAD_UPDATE_DATA;
  wire       [31:0]   execute_LOAD_UPDATE_DATA;
  wire       [33:0]   execute_MUL_LH;
  wire                decode_DECODER_stageables_20;
  wire                decode_DECODER_stageables_29;
  wire                decode_DECODER_stageables_53;
  wire       [31:0]   execute_RA;
  wire                execute_XER_SO;
  wire       `CRBusCmdEnum_defaultEncoding_type _zz_42_;
  wire       `CRBusCmdEnum_defaultEncoding_type _zz_43_;
  wire       `CRBusCmdEnum_defaultEncoding_type execute_CR_WRITE_op;
  wire       [4:0]    execute_CR_WRITE_ba;
  wire       [4:0]    execute_CR_WRITE_bb;
  wire       [4:0]    execute_CR_WRITE_bt;
  wire       [31:0]   execute_CR_WRITE_imm;
  wire       [7:0]    execute_CR_WRITE_fxm;
  wire       `CRBusCmdEnum_defaultEncoding_type _zz_44_;
  wire       `CRBusCmdEnum_defaultEncoding_type _zz_45_;
  wire       `CRBusCmdEnum_defaultEncoding_type _zz_46_;
  wire                decode_DECODER_stageables_57;
  wire       [1:0]    memory_MEMORY_ADDRESS_LOW;
  wire       [1:0]    execute_MEMORY_ADDRESS_LOW;
  wire                memory_DECODER_stageables_54;
  wire                execute_DECODER_stageables_54;
  wire                decode_DECODER_stageables_54;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_47_;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_48_;
  wire                execute_XER_WRITE_validOV;
  wire                execute_XER_WRITE_validCA;
  wire       [1:0]    execute_XER_WRITE_imm;
  wire       [31:0]   execute_REGFILE_WRITE_DATA;
  wire                decode_DECODER_stageables_47;
  wire       [7:0]    execute_CR_FIELD_WR;
  wire       `EnvCtrlEnum_defaultEncoding_type memory_DECODER_stageables_48;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_49_;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_50_;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_51_;
  wire       `EnvCtrlEnum_defaultEncoding_type decode_DECODER_stageables_48;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_52_;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_53_;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_54_;
  wire                memory_DECODER_stageables_34;
  wire                execute_DECODER_stageables_34;
  wire                decode_DECODER_stageables_34;
  wire       `AluRimiAmtEnum_defaultEncoding_type decode_DECODER_stageables_43;
  wire       `AluRimiAmtEnum_defaultEncoding_type _zz_55_;
  wire       `AluRimiAmtEnum_defaultEncoding_type _zz_56_;
  wire       `AluRimiAmtEnum_defaultEncoding_type _zz_57_;
  wire                decode_DECODER_stageables_26;
  wire                decode_DECODER_stageables_37;
  wire       `CRLogCtrlEnum_defaultEncoding_type decode_DECODER_stageables_50;
  wire       `CRLogCtrlEnum_defaultEncoding_type _zz_58_;
  wire       `CRLogCtrlEnum_defaultEncoding_type _zz_59_;
  wire       `CRLogCtrlEnum_defaultEncoding_type _zz_60_;
  wire       [51:0]   memory_MUL_LOW;
  wire       `EnvCtrlEnum_defaultEncoding_type writeBack_DECODER_stageables_48;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_61_;
  wire                writeBack_DECODER_stageables_38;
  wire                execute_DECODER_stageables_39;
  wire                execute_DECODER_stageables_27;
  reg        `EnvCtrlEnum_defaultEncoding_type _zz_62_;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_63_;
  wire       `EnvCtrlEnum_defaultEncoding_type execute_DECODER_stageables_48;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_64_;
  reg        `EndianEnum_defaultEncoding_type _zz_65_;
  wire       [31:0]   writeBack_SRC_ADD;
  wire       [31:0]   memory_NEXT_PC2;
  wire       [31:0]   memory_PC;
  wire       [31:0]   memory_BRANCH_CALC;
  wire                memory_TARGET_MISSMATCH2;
  wire                memory_BRANCH_DO;
  wire       [31:0]   execute_BRANCH_CALC;
  wire       [31:0]   execute_PC;
  reg        [7:0]    _zz_66_;
  wire                decode_DECODER_stageables_4;
  wire       `BranchCtrlEnum_defaultEncoding_type decode_DECODER_stageables_12;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_67_;
  wire       [7:0]    writeBack_CR_FIELD_WR;
  wire                execute_BRANCH_DEC;
  wire                execute_DECODER_stageables_29;
  wire                memory_BRANCH_DEC;
  wire                memory_BRANCH_LINK;
  wire       [10:0]   memory_SPR_ID;
  wire                memory_DECODER_stageables_29;
  wire                memory_XER_WRITE_validOV;
  wire                memory_XER_WRITE_validCA;
  wire       [1:0]    memory_XER_WRITE_imm;
  wire       `CRBusCmdEnum_defaultEncoding_type memory_CR_WRITE_op;
  wire       [4:0]    memory_CR_WRITE_ba;
  wire       [4:0]    memory_CR_WRITE_bb;
  wire       [4:0]    memory_CR_WRITE_bt;
  wire       [31:0]   memory_CR_WRITE_imm;
  wire       [7:0]    memory_CR_WRITE_fxm;
  wire       `CRBusCmdEnum_defaultEncoding_type _zz_68_;
  wire                memory_DECODER_stageables_28;
  wire       `BranchCtrlEnum_defaultEncoding_type execute_DECODER_stageables_12;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_69_;
  wire       [7:0]    execute_CR_FIELD_RD;
  wire       [7:0]    memory_CR_FIELD_WR;
  reg        [31:0]   _zz_70_;
  wire                execute_DECODER_stageables_44;
  wire       [4:0]    execute_RT_ADDR;
  wire                execute_DECODER_stageables_23;
  wire                memory_DECODER_stageables_44;
  wire       [4:0]    memory_RT_ADDR;
  wire                memory_DECODER_stageables_3;
  wire                decode_DECODER_stageables_49;
  wire                decode_DECODER_stageables_46;
  wire                decode_DECODER_stageables_9;
  wire                writeBack_DECODER_stageables_44;
  wire       [4:0]    writeBack_RT_ADDR;
  reg        [31:0]   decode_RS;
  reg        [31:0]   decode_RB;
  reg        [31:0]   decode_RA;
  wire       [4:0]    decode_R2_ADDR;
  wire       [4:0]    decode_R1_ADDR;
  wire       [4:0]    decode_R0_ADDR;
  wire                execute_DECODER_stageables_32;
  wire                execute_DECODER_stageables_42;
  wire                execute_DECODER_stageables_37;
  wire       [1:0]    memory_SRC_CR;
  wire                memory_XER_SO;
  wire       [31:0]   memory_INSTRUCTION;
  wire                memory_DECODER_stageables_35;
  reg        [31:0]   _zz_71_;
  wire                memory_DECODER_stageables_14;
  wire                memory_DECODER_stageables_42;
  wire                writeBack_DECODER_stageables_28;
  wire                writeBack_DECODER_stageables_22;
  wire       [1:0]    writeBack_SRC_CR;
  wire                writeBack_DECODER_stageables_54;
  wire                writeBack_XER_SO;
  wire                writeBack_DECODER_stageables_34;
  wire       [33:0]   writeBack_MUL_HH;
  wire       [51:0]   writeBack_MUL_LOW;
  wire       [33:0]   memory_MUL_HL;
  wire       [33:0]   memory_MUL_LH;
  wire       [31:0]   memory_MUL_LL;
  wire                execute_DECODER_stageables_33;
  wire                memory_DECODER_stageables_8;
  wire                execute_DECODER_stageables_8;
  wire                writeBack_DECODER_stageables_8;
  wire                execute_DECODER_stageables_47;
  wire       [0:0]    execute_SRC3;
  wire       `Src3CtrlEnum_defaultEncoding_type execute_DECODER_stageables_0;
  wire       `Src3CtrlEnum_defaultEncoding_type _zz_72_;
  wire       `Src2CtrlEnum_defaultEncoding_type execute_DECODER_stageables_24;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_73_;
  wire       [31:0]   _zz_74_;
  wire       [31:0]   _zz_75_;
  wire       `Src1CtrlEnum_defaultEncoding_type execute_DECODER_stageables_36;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_76_;
  wire                decode_DECODER_stageables_16;
  reg        [7:0]    _zz_77_;
  wire       `CRBusCmdEnum_defaultEncoding_type _zz_78_;
  wire       `CRLogCtrlEnum_defaultEncoding_type execute_DECODER_stageables_50;
  wire       `CRLogCtrlEnum_defaultEncoding_type _zz_79_;
  wire       `CRMoveCtrlEnum_defaultEncoding_type execute_DECODER_stageables_6;
  wire       `CRMoveCtrlEnum_defaultEncoding_type _zz_80_;
  wire                execute_DECODER_stageables_45;
  wire                execute_DECODER_stageables_31;
  wire                execute_DECODER_stageables_26;
  wire                execute_DECODER_stageables_57;
  wire                execute_DECODER_stageables_19;
  wire       [1:0]    execute_SRC_CR;
  wire                execute_DECODER_stageables_10;
  wire                execute_DECODER_stageables_17;
  wire       [1:0]    execute_SRC_CAOV;
  wire                execute_DECODER_stageables_13;
  reg        [10:0]   _zz_81_;
  wire                execute_DECODER_stageables_4;
  wire       [4:0]    execute_R0_ADDR;
  wire       `TgtCtrlEnum_defaultEncoding_type execute_DECODER_stageables_11;
  wire       `TgtCtrlEnum_defaultEncoding_type _zz_82_;
  wire       `AluCtrlEnum_defaultEncoding_type execute_DECODER_stageables_7;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_83_;
  wire                execute_DECODER_stageables_25;
  wire                execute_DECODER_stageables_1;
  wire                execute_DECODER_stageables_21;
  wire       `AluSpecCtrlEnum_defaultEncoding_type execute_DECODER_stageables_56;
  wire       `AluSpecCtrlEnum_defaultEncoding_type _zz_84_;
  reg        [5:0]    _zz_85_;
  reg        [5:0]    _zz_85__30;
  reg        [5:0]    _zz_85__29;
  reg        [5:0]    _zz_85__28;
  reg        [5:0]    _zz_85__27;
  reg        [5:0]    _zz_85__26;
  reg        [5:0]    _zz_85__25;
  reg        [5:0]    _zz_85__24;
  reg        [5:0]    _zz_85__23;
  reg        [5:0]    _zz_85__22;
  reg        [5:0]    _zz_85__21;
  reg        [5:0]    _zz_85__20;
  reg        [5:0]    _zz_85__19;
  reg        [5:0]    _zz_85__18;
  reg        [5:0]    _zz_85__17;
  reg        [5:0]    _zz_85__16;
  reg        [5:0]    _zz_85__15;
  reg        [5:0]    _zz_85__14;
  reg        [5:0]    _zz_85__13;
  reg        [5:0]    _zz_85__12;
  reg        [5:0]    _zz_85__11;
  reg        [5:0]    _zz_85__10;
  reg        [5:0]    _zz_85__9;
  reg        [5:0]    _zz_85__8;
  reg        [5:0]    _zz_85__7;
  reg        [5:0]    _zz_85__6;
  reg        [5:0]    _zz_85__5;
  reg        [5:0]    _zz_85__4;
  reg        [5:0]    _zz_85__3;
  reg        [5:0]    _zz_85__2;
  reg        [5:0]    _zz_85__1;
  reg        [5:0]    _zz_85__0;
  reg        [3:0]    _zz_86_;
  reg        [3:0]    _zz_86__6;
  reg        [3:0]    _zz_86__5;
  reg        [3:0]    _zz_86__4;
  reg        [3:0]    _zz_86__3;
  reg        [3:0]    _zz_86__2;
  reg        [3:0]    _zz_86__1;
  reg        [3:0]    _zz_86__0;
  reg        [3:0]    _zz_87_;
  reg        [3:0]    _zz_87__6;
  reg        [3:0]    _zz_87__5;
  reg        [3:0]    _zz_87__4;
  reg        [3:0]    _zz_87__3;
  reg        [3:0]    _zz_87__2;
  reg        [3:0]    _zz_87__1;
  reg        [3:0]    _zz_87__0;
  reg        [3:0]    _zz_88_;
  reg        [3:0]    _zz_88__6;
  reg        [3:0]    _zz_88__5;
  reg        [3:0]    _zz_88__4;
  reg        [3:0]    _zz_88__3;
  reg        [3:0]    _zz_88__2;
  reg        [3:0]    _zz_88__1;
  reg        [3:0]    _zz_88__0;
  reg        [3:0]    _zz_89_;
  reg        [3:0]    _zz_89__6;
  reg        [3:0]    _zz_89__5;
  reg        [3:0]    _zz_89__4;
  reg        [3:0]    _zz_89__3;
  reg        [3:0]    _zz_89__2;
  reg        [3:0]    _zz_89__1;
  reg        [3:0]    _zz_89__0;
  reg        [31:0]   _zz_90_;
  reg        [31:0]   _zz_91_;
  reg        [31:0]   _zz_92_;
  reg        [31:0]   _zz_93_;
  reg        [31:0]   _zz_94_;
  reg        [31:0]   _zz_95_;
  reg        [31:0]   _zz_96_;
  reg        [31:0]   _zz_97_;
  reg        [31:0]   _zz_98_;
  reg        [31:0]   _zz_99_;
  wire       `AluRimiCtrlEnum_defaultEncoding_type execute_DECODER_stageables_15;
  wire       `AluRimiCtrlEnum_defaultEncoding_type _zz_100_;
  wire       `AluRimiAmtEnum_defaultEncoding_type execute_DECODER_stageables_43;
  wire       `AluRimiAmtEnum_defaultEncoding_type _zz_101_;
  wire       [31:0]   execute_SRC2;
  wire       [31:0]   execute_SRC1;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type execute_DECODER_stageables_18;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_102_;
  wire                execute_DECODER_stageables_53;
  wire       [10:0]   execute_SPR_ID;
  wire       [31:0]   writeBack_SRC1;
  wire                writeBack_DECODER_stageables_29;
  wire       [10:0]   writeBack_SPR_ID;
  wire                writeBack_XER_WRITE_validOV;
  wire                writeBack_XER_WRITE_validCA;
  wire       [1:0]    writeBack_XER_WRITE_imm;
  wire                writeBack_BRANCH_LINK;
  wire                writeBack_BRANCH_DEC;
  wire       `CRBusCmdEnum_defaultEncoding_type writeBack_CR_WRITE_op;
  wire       [4:0]    writeBack_CR_WRITE_ba;
  wire       [4:0]    writeBack_CR_WRITE_bb;
  wire       [4:0]    writeBack_CR_WRITE_bt;
  wire       [31:0]   writeBack_CR_WRITE_imm;
  wire       [7:0]    writeBack_CR_WRITE_fxm;
  wire       `CRBusCmdEnum_defaultEncoding_type _zz_103_;
  wire                _zz_104_;
  reg                 _zz_105_;
  wire       `TgtCtrlEnum_defaultEncoding_type decode_DECODER_stageables_11;
  wire       `TgtCtrlEnum_defaultEncoding_type _zz_106_;
  wire       [31:0]   decode_INSTRUCTION_ANTICIPATED;
  wire                decode;
  wire                decode_LEGAL_INSTRUCTION;
  wire       `AluSpecCtrlEnum_defaultEncoding_type _zz_107_;
  wire       `CRLogCtrlEnum_defaultEncoding_type _zz_108_;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_109_;
  wire       `AluRimiAmtEnum_defaultEncoding_type _zz_110_;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_111_;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_112_;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_113_;
  wire       `AluRimiCtrlEnum_defaultEncoding_type _zz_114_;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_115_;
  wire       `TgtCtrlEnum_defaultEncoding_type _zz_116_;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_117_;
  wire       `CRMoveCtrlEnum_defaultEncoding_type _zz_118_;
  wire       `DataSizeEnum_defaultEncoding_type _zz_119_;
  wire       `Src3CtrlEnum_defaultEncoding_type _zz_120_;
  reg        [31:0]   _zz_121_;
  wire                writeBack_SIGN_EXTEND;
  wire       `DataSizeEnum_defaultEncoding_type writeBack_DATA_SIZE;
  wire       `DataSizeEnum_defaultEncoding_type _zz_122_;
  wire       [1:0]    writeBack_MEMORY_ADDRESS_LOW;
  wire                writeBack_MEMORY_WR;
  wire       `EndianEnum_defaultEncoding_type writeBack_MSR_ENDIAN;
  wire       `EndianEnum_defaultEncoding_type _zz_123_;
  wire       [31:0]   writeBack_REGFILE_WRITE_DATA;
  wire                writeBack_MEMORY_ENABLE;
  wire       [31:0]   memory_REGFILE_WRITE_DATA;
  wire                memory_MEMORY_ENABLE;
  reg        [31:0]   _zz_124_;
  wire                execute_STORE_UPDATE;
  wire                execute_MEMORY_MANAGMENT;
  wire       [31:0]   execute_RS;
  wire                execute_MEMORY_WR;
  wire       [31:0]   execute_SRC_ADD;
  wire                execute_MEMORY_ENABLE;
  wire       `DataSizeEnum_defaultEncoding_type execute_DATA_SIZE;
  wire       `DataSizeEnum_defaultEncoding_type _zz_125_;
  wire       [31:0]   execute_INSTRUCTION;
  wire       `EndianEnum_defaultEncoding_type execute_MSR_ENDIAN;
  wire       `EndianEnum_defaultEncoding_type _zz_126_;
  wire                decode_MEMORY_ENABLE;
  wire                decode_FLUSH_ALL;
  reg                 _zz_127_;
  reg                 _zz_127__3;
  reg                 _zz_127__2;
  reg                 _zz_127__1;
  reg                 _zz_127__0;
  wire       [31:0]   decode_INSTRUCTION;
  reg        [31:0]   _zz_128_;
  wire       `EndianEnum_defaultEncoding_type decode_MSR_ENDIAN;
  wire       `EndianEnum_defaultEncoding_type _zz_129_;
  wire                memory_PREDICTION_CONTEXT_hazard;
  wire                memory_PREDICTION_CONTEXT_hit;
  wire       [19:0]   memory_PREDICTION_CONTEXT_line_source;
  wire       [1:0]    memory_PREDICTION_CONTEXT_line_branchWish;
  wire       [31:0]   memory_PREDICTION_CONTEXT_line_target;
  reg                 _zz_130_;
  reg        [31:0]   _zz_131_;
  wire       [31:0]   decode_PC;
  wire       [31:0]   writeBack_PC;
  wire       [31:0]   writeBack_INSTRUCTION;
  wire                sprReadBU_valid;
  wire       [31:0]   sprReadBU_payload_data;
  wire                sprReadSPR_valid;
  wire       [31:0]   sprReadSPR_payload_data;
  reg                 decode_arbitration_haltItself;
  reg                 decode_arbitration_haltByOther;
  reg                 decode_arbitration_removeIt;
  wire                decode_arbitration_flushIt;
  wire                decode_arbitration_flushNext;
  wire                decode_arbitration_isValid;
  wire                decode_arbitration_isStuck;
  wire                decode_arbitration_isStuckByOthers;
  wire                decode_arbitration_isFlushed;
  wire                decode_arbitration_isMoving;
  wire                decode_arbitration_isFiring;
  reg                 execute_arbitration_haltItself;
  reg                 execute_arbitration_haltByOther;
  reg                 execute_arbitration_removeIt;
  wire                execute_arbitration_flushIt;
  wire                execute_arbitration_flushNext;
  reg                 execute_arbitration_isValid;
  wire                execute_arbitration_isStuck;
  wire                execute_arbitration_isStuckByOthers;
  wire                execute_arbitration_isFlushed;
  wire                execute_arbitration_isMoving;
  wire                execute_arbitration_isFiring;
  reg                 memory_arbitration_haltItself;
  wire                memory_arbitration_haltByOther;
  reg                 memory_arbitration_removeIt;
  wire                memory_arbitration_flushIt;
  reg                 memory_arbitration_flushNext;
  reg                 memory_arbitration_isValid;
  wire                memory_arbitration_isStuck;
  wire                memory_arbitration_isStuckByOthers;
  wire                memory_arbitration_isFlushed;
  wire                memory_arbitration_isMoving;
  wire                memory_arbitration_isFiring;
  reg                 writeBack_arbitration_haltItself;
  wire                writeBack_arbitration_haltByOther;
  reg                 writeBack_arbitration_removeIt;
  reg                 writeBack_arbitration_flushIt;
  reg                 writeBack_arbitration_flushNext;
  reg                 writeBack_arbitration_isValid;
  wire                writeBack_arbitration_isStuck;
  wire                writeBack_arbitration_isStuckByOthers;
  wire                writeBack_arbitration_isFlushed;
  wire                writeBack_arbitration_isMoving;
  wire                writeBack_arbitration_isFiring;
  wire       [31:0]   lastStageInstruction /* verilator public */ ;
  wire       [31:0]   lastStagePc /* verilator public */ ;
  wire                lastStageIsValid /* verilator public */ ;
  wire                lastStageIsFiring /* verilator public */ ;
  reg                 IBusCachedPlugin_fetcherHalt;
  reg                 IBusCachedPlugin_incomingInstruction;
  wire                IBusCachedPlugin_fetchPrediction_cmd_hadBranch;
  wire       [31:0]   IBusCachedPlugin_fetchPrediction_cmd_targetPc;
  wire                IBusCachedPlugin_fetchPrediction_rsp_wasRight;
  wire       [31:0]   IBusCachedPlugin_fetchPrediction_rsp_finalPc;
  wire       [31:0]   IBusCachedPlugin_fetchPrediction_rsp_sourceLastWord;
  wire                IBusCachedPlugin_pcValids_0;
  wire                IBusCachedPlugin_pcValids_1;
  wire                IBusCachedPlugin_pcValids_2;
  wire                IBusCachedPlugin_pcValids_3;
  reg                 IBusCachedPlugin_decodeExceptionPort_valid;
  reg        [3:0]    IBusCachedPlugin_decodeExceptionPort_payload_code;
  reg        [31:0]   IBusCachedPlugin_decodeExceptionPort_payload_badAddr;
  reg        `ExcpEnum_defaultEncoding_type IBusCachedPlugin_decodeExceptionPort_payload_codePPC;
  wire       [6:0]    IBusCachedPlugin_decodeExceptionPort_payload_imm;
  wire                IBusCachedPlugin_mmuBus_cmd_isValid;
  wire       [31:0]   IBusCachedPlugin_mmuBus_cmd_virtualAddress;
  wire                IBusCachedPlugin_mmuBus_cmd_bypassTranslation;
  wire       [31:0]   IBusCachedPlugin_mmuBus_rsp_physicalAddress;
  wire                IBusCachedPlugin_mmuBus_rsp_isIoAccess;
  wire                IBusCachedPlugin_mmuBus_rsp_allowRead;
  wire                IBusCachedPlugin_mmuBus_rsp_allowWrite;
  wire                IBusCachedPlugin_mmuBus_rsp_allowExecute;
  wire                IBusCachedPlugin_mmuBus_rsp_exception;
  wire                IBusCachedPlugin_mmuBus_rsp_refilling;
  wire                IBusCachedPlugin_mmuBus_spr_valid;
  wire       [9:0]    IBusCachedPlugin_mmuBus_spr_payload_id;
  wire       [31:0]   IBusCachedPlugin_mmuBus_spr_payload_data;
  wire                IBusCachedPlugin_mmuBus_end;
  wire                IBusCachedPlugin_mmuBus_busy;
  wire                DBusCachedPlugin_mmuBus_cmd_isValid;
  wire       [31:0]   DBusCachedPlugin_mmuBus_cmd_virtualAddress;
  wire                DBusCachedPlugin_mmuBus_cmd_bypassTranslation;
  wire       [31:0]   DBusCachedPlugin_mmuBus_rsp_physicalAddress;
  wire                DBusCachedPlugin_mmuBus_rsp_isIoAccess;
  wire                DBusCachedPlugin_mmuBus_rsp_allowRead;
  wire                DBusCachedPlugin_mmuBus_rsp_allowWrite;
  wire                DBusCachedPlugin_mmuBus_rsp_allowExecute;
  wire                DBusCachedPlugin_mmuBus_rsp_exception;
  wire                DBusCachedPlugin_mmuBus_rsp_refilling;
  wire                DBusCachedPlugin_mmuBus_spr_valid;
  wire       [9:0]    DBusCachedPlugin_mmuBus_spr_payload_id;
  wire       [31:0]   DBusCachedPlugin_mmuBus_spr_payload_data;
  wire                DBusCachedPlugin_mmuBus_end;
  wire                DBusCachedPlugin_mmuBus_busy;
  reg                 DBusCachedPlugin_redoBranch_valid;
  wire       [31:0]   DBusCachedPlugin_redoBranch_payload;
  reg                 DBusCachedPlugin_exceptionBus_valid;
  reg        [3:0]    DBusCachedPlugin_exceptionBus_payload_code;
  reg        [31:0]   DBusCachedPlugin_exceptionBus_payload_badAddr;
  reg        `ExcpEnum_defaultEncoding_type DBusCachedPlugin_exceptionBus_payload_codePPC;
  wire       [6:0]    DBusCachedPlugin_exceptionBus_payload_imm;
  reg                 decodeExceptionPort_valid;
  reg        [3:0]    decodeExceptionPort_payload_code;
  reg        [31:0]   decodeExceptionPort_payload_badAddr;
  reg        `ExcpEnum_defaultEncoding_type decodeExceptionPort_payload_codePPC;
  wire       [6:0]    decodeExceptionPort_payload_imm;
  wire                BranchPlugin_jumpInterface_valid;
  wire       [31:0]   BranchPlugin_jumpInterface_payload;
  wire                BranchPlugin_branchExceptionPort_valid;
  wire       [3:0]    BranchPlugin_branchExceptionPort_payload_code;
  reg        [31:0]   BranchPlugin_branchExceptionPort_payload_badAddr;
  wire       `ExcpEnum_defaultEncoding_type BranchPlugin_branchExceptionPort_payload_codePPC;
  wire       [6:0]    BranchPlugin_branchExceptionPort_payload_imm;
  reg                 SPRPlugin_jumpInterface_valid;
  reg        [31:0]   SPRPlugin_jumpInterface_payload;
  wire                SPRPlugin_exceptionPendings_0;
  wire                SPRPlugin_exceptionPendings_1;
  wire                SPRPlugin_exceptionPendings_2;
  wire                SPRPlugin_exceptionPendings_3;
  wire                contextSwitching;
  wire       [1:0]    SPRPlugin_privilege;
  wire                SPRPlugin_forceMachineWire;
  reg                 SPRPlugin_msr_ir;
  wire                SPRPlugin_msr_dr;
  wire                SPRPlugin_msr_pr;
  reg                 SPRPlugin_selfException_valid;
  reg        [3:0]    SPRPlugin_selfException_payload_code;
  reg        [31:0]   SPRPlugin_selfException_payload_badAddr;
  reg        `ExcpEnum_defaultEncoding_type SPRPlugin_selfException_payload_codePPC;
  reg        [6:0]    SPRPlugin_selfException_payload_imm;
  wire                SPRPlugin_allowInterrupts;
  wire                SPRPlugin_allowException;
  wire                IBusCachedPlugin_externalFlush;
  wire                IBusCachedPlugin_jump_pcLoad_valid;
  wire       [31:0]   IBusCachedPlugin_jump_pcLoad_payload;
  wire       [2:0]    _zz_132_;
  wire       [2:0]    _zz_133_;
  wire                _zz_134_;
  wire                _zz_135_;
  wire                IBusCachedPlugin_fetchPc_output_valid;
  wire                IBusCachedPlugin_fetchPc_output_ready;
  wire       [31:0]   IBusCachedPlugin_fetchPc_output_payload;
  reg        [31:0]   IBusCachedPlugin_fetchPc_pcReg /* verilator public */ ;
  reg                 IBusCachedPlugin_fetchPc_correction;
  reg                 IBusCachedPlugin_fetchPc_correctionReg;
  wire                IBusCachedPlugin_fetchPc_corrected;
  wire                IBusCachedPlugin_fetchPc_pcRegPropagate;
  reg                 IBusCachedPlugin_fetchPc_booted;
  reg                 IBusCachedPlugin_fetchPc_inc;
  reg        [31:0]   IBusCachedPlugin_fetchPc_pc;
  wire                IBusCachedPlugin_fetchPc_predictionPcLoad_valid;
  wire       [31:0]   IBusCachedPlugin_fetchPc_predictionPcLoad_payload;
  wire                IBusCachedPlugin_fetchPc_redo_valid;
  wire       [31:0]   IBusCachedPlugin_fetchPc_redo_payload;
  reg                 IBusCachedPlugin_fetchPc_flushed;
  reg                 IBusCachedPlugin_iBusRsp_redoFetch;
  wire                IBusCachedPlugin_iBusRsp_stages_0_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_0_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_0_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_0_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_0_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_0_output_payload;
  reg                 IBusCachedPlugin_iBusRsp_stages_0_halt;
  wire                IBusCachedPlugin_iBusRsp_stages_1_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_1_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_1_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_1_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_1_output_payload;
  reg                 IBusCachedPlugin_iBusRsp_stages_1_halt;
  wire                IBusCachedPlugin_iBusRsp_stages_2_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_2_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_2_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_2_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_2_output_payload;
  reg                 IBusCachedPlugin_iBusRsp_stages_2_halt;
  wire                _zz_136_;
  wire                _zz_137_;
  wire                _zz_138_;
  wire                IBusCachedPlugin_iBusRsp_flush;
  wire                _zz_139_;
  reg                 _zz_140_;
  reg        [31:0]   _zz_141_;
  wire                _zz_142_;
  reg                 _zz_143_;
  reg        [31:0]   _zz_144_;
  reg                 IBusCachedPlugin_iBusRsp_readyForError;
  wire                IBusCachedPlugin_iBusRsp_output_valid;
  wire                IBusCachedPlugin_iBusRsp_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_output_payload_pc;
  wire                IBusCachedPlugin_iBusRsp_output_payload_rsp_error;
  reg        [31:0]   IBusCachedPlugin_iBusRsp_output_payload_rsp_inst;
  wire                IBusCachedPlugin_iBusRsp_output_payload_isRvc;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_0;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_1;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_2;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_3;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_4;
  wire                IBusCachedPlugin_predictor_historyWriteDelayPatched_valid;
  wire       [9:0]    IBusCachedPlugin_predictor_historyWriteDelayPatched_payload_address;
  wire       [19:0]   IBusCachedPlugin_predictor_historyWriteDelayPatched_payload_data_source;
  wire       [1:0]    IBusCachedPlugin_predictor_historyWriteDelayPatched_payload_data_branchWish;
  wire       [31:0]   IBusCachedPlugin_predictor_historyWriteDelayPatched_payload_data_target;
  reg                 IBusCachedPlugin_predictor_historyWrite_valid;
  wire       [9:0]    IBusCachedPlugin_predictor_historyWrite_payload_address;
  wire       [19:0]   IBusCachedPlugin_predictor_historyWrite_payload_data_source;
  reg        [1:0]    IBusCachedPlugin_predictor_historyWrite_payload_data_branchWish;
  wire       [31:0]   IBusCachedPlugin_predictor_historyWrite_payload_data_target;
  reg                 IBusCachedPlugin_predictor_writeLast_valid;
  reg        [9:0]    IBusCachedPlugin_predictor_writeLast_payload_address;
  reg        [19:0]   IBusCachedPlugin_predictor_writeLast_payload_data_source;
  reg        [1:0]    IBusCachedPlugin_predictor_writeLast_payload_data_branchWish;
  reg        [31:0]   IBusCachedPlugin_predictor_writeLast_payload_data_target;
  wire       [29:0]   _zz_145_;
  wire       [19:0]   IBusCachedPlugin_predictor_buffer_line_source;
  wire       [1:0]    IBusCachedPlugin_predictor_buffer_line_branchWish;
  wire       [31:0]   IBusCachedPlugin_predictor_buffer_line_target;
  wire       [53:0]   _zz_146_;
  reg                 IBusCachedPlugin_predictor_buffer_pcCorrected;
  wire                IBusCachedPlugin_predictor_buffer_hazard;
  reg        [19:0]   IBusCachedPlugin_predictor_line_source;
  reg        [1:0]    IBusCachedPlugin_predictor_line_branchWish;
  reg        [31:0]   IBusCachedPlugin_predictor_line_target;
  reg                 IBusCachedPlugin_predictor_buffer_hazard_regNextWhen;
  wire                IBusCachedPlugin_predictor_hazard;
  wire                IBusCachedPlugin_predictor_hit;
  wire                IBusCachedPlugin_predictor_fetchContext_hazard;
  wire                IBusCachedPlugin_predictor_fetchContext_hit;
  wire       [19:0]   IBusCachedPlugin_predictor_fetchContext_line_source;
  wire       [1:0]    IBusCachedPlugin_predictor_fetchContext_line_branchWish;
  wire       [31:0]   IBusCachedPlugin_predictor_fetchContext_line_target;
  reg                 IBusCachedPlugin_predictor_iBusRspContext_hazard;
  reg                 IBusCachedPlugin_predictor_iBusRspContext_hit;
  reg        [19:0]   IBusCachedPlugin_predictor_iBusRspContext_line_source;
  reg        [1:0]    IBusCachedPlugin_predictor_iBusRspContext_line_branchWish;
  reg        [31:0]   IBusCachedPlugin_predictor_iBusRspContext_line_target;
  wire                IBusCachedPlugin_predictor_iBusRspContextOutput_hazard;
  wire                IBusCachedPlugin_predictor_iBusRspContextOutput_hit;
  wire       [19:0]   IBusCachedPlugin_predictor_iBusRspContextOutput_line_source;
  wire       [1:0]    IBusCachedPlugin_predictor_iBusRspContextOutput_line_branchWish;
  wire       [31:0]   IBusCachedPlugin_predictor_iBusRspContextOutput_line_target;
  wire                IBusCachedPlugin_predictor_injectorContext_hazard;
  wire                IBusCachedPlugin_predictor_injectorContext_hit;
  wire       [19:0]   IBusCachedPlugin_predictor_injectorContext_line_source;
  wire       [1:0]    IBusCachedPlugin_predictor_injectorContext_line_branchWish;
  wire       [31:0]   IBusCachedPlugin_predictor_injectorContext_line_target;
  wire                iBus_cmd_valid;
  wire                iBus_cmd_ready;
  reg        [31:0]   iBus_cmd_payload_address;
  wire       [2:0]    iBus_cmd_payload_size;
  wire                iBus_rsp_valid;
  wire       [31:0]   iBus_rsp_payload_data;
  wire                iBus_rsp_payload_error;
  wire       [31:0]   _zz_147_;
  reg        [31:0]   IBusCachedPlugin_rspCounter;
  wire                IBusCachedPlugin_s0_tightlyCoupledHit;
  wire                IBusCachedPlugin_s1_bigEndian;
  reg                 IBusCachedPlugin_s1_tightlyCoupledHit;
  wire                IBusCachedPlugin_s2_bigEndian;
  reg                 IBusCachedPlugin_s2_tightlyCoupledHit;
  wire                IBusCachedPlugin_rsp_iBusRspOutputHalt;
  wire                IBusCachedPlugin_rsp_issueDetected;
  reg                 IBusCachedPlugin_rsp_redoFetch;
  wire                IBusCachedPlugin_rsp_bigEndian;
  wire                dBus_cmd_valid;
  wire                dBus_cmd_ready;
  wire                dBus_cmd_payload_wr;
  wire       [31:0]   dBus_cmd_payload_address;
  wire       [31:0]   dBus_cmd_payload_data;
  wire       [3:0]    dBus_cmd_payload_mask;
  wire       [2:0]    dBus_cmd_payload_length;
  wire                dBus_cmd_payload_last;
  wire                dBus_rsp_valid;
  wire       [31:0]   dBus_rsp_payload_data;
  wire                dBus_rsp_payload_error;
  wire                dataCache_1__io_mem_cmd_m2sPipe_valid;
  wire                dataCache_1__io_mem_cmd_m2sPipe_ready;
  wire                dataCache_1__io_mem_cmd_m2sPipe_payload_wr;
  wire       [31:0]   dataCache_1__io_mem_cmd_m2sPipe_payload_address;
  wire       [31:0]   dataCache_1__io_mem_cmd_m2sPipe_payload_data;
  wire       [3:0]    dataCache_1__io_mem_cmd_m2sPipe_payload_mask;
  wire       [2:0]    dataCache_1__io_mem_cmd_m2sPipe_payload_length;
  wire                dataCache_1__io_mem_cmd_m2sPipe_payload_last;
  reg                 dataCache_1__io_mem_cmd_m2sPipe_rValid;
  reg                 dataCache_1__io_mem_cmd_m2sPipe_rData_wr;
  reg        [31:0]   dataCache_1__io_mem_cmd_m2sPipe_rData_address;
  reg        [31:0]   dataCache_1__io_mem_cmd_m2sPipe_rData_data;
  reg        [3:0]    dataCache_1__io_mem_cmd_m2sPipe_rData_mask;
  reg        [2:0]    dataCache_1__io_mem_cmd_m2sPipe_rData_length;
  reg                 dataCache_1__io_mem_cmd_m2sPipe_rData_last;
  wire       [31:0]   _zz_148_;
  reg        [31:0]   DBusCachedPlugin_rspCounter;
  wire                execute_DBusCachedPlugin_bigEndian;
  reg        [1:0]    execute_DBusCachedPlugin_size;
  reg        [31:0]   _zz_149_;
  wire       [15:0]   _zz_150_;
  wire       [15:0]   _zz_151_;
  reg        [31:0]   _zz_152_;
  wire                writeBack_DBusCachedPlugin_bigEndian;
  reg        [31:0]   writeBack_DBusCachedPlugin_rspShifted;
  reg        [31:0]   writeBack_DBusCachedPlugin_rspFormated;
  reg        [15:0]   writeBack_DBusCachedPlugin_rspHW;
  wire       [15:0]   _zz_153_;
  wire       [15:0]   _zz_154_;
  wire                _zz_155_;
  reg        [15:0]   _zz_156_;
  wire       [79:0]   _zz_157_;
  wire                _zz_158_;
  wire                _zz_159_;
  wire                _zz_160_;
  wire                _zz_161_;
  wire                _zz_162_;
  wire                _zz_163_;
  wire                _zz_164_;
  wire                _zz_165_;
  wire                _zz_166_;
  wire                _zz_167_;
  wire                _zz_168_;
  wire                _zz_169_;
  wire                _zz_170_;
  wire                _zz_171_;
  wire                _zz_172_;
  wire                _zz_173_;
  wire                _zz_174_;
  wire                _zz_175_;
  wire                _zz_176_;
  wire                _zz_177_;
  wire                _zz_178_;
  wire                _zz_179_;
  wire                _zz_180_;
  wire                _zz_181_;
  wire                _zz_182_;
  wire                _zz_183_;
  wire                _zz_184_;
  wire                _zz_185_;
  wire                _zz_186_;
  wire                _zz_187_;
  wire                _zz_188_;
  wire                _zz_189_;
  wire                _zz_190_;
  wire                _zz_191_;
  wire                _zz_192_;
  wire                _zz_193_;
  wire                _zz_194_;
  wire                _zz_195_;
  wire                _zz_196_;
  wire                _zz_197_;
  wire                _zz_198_;
  wire                _zz_199_;
  wire                _zz_200_;
  wire                _zz_201_;
  wire                _zz_202_;
  wire                _zz_203_;
  wire                _zz_204_;
  wire                _zz_205_;
  wire                _zz_206_;
  wire                _zz_207_;
  wire                _zz_208_;
  wire                _zz_209_;
  wire                _zz_210_;
  wire                _zz_211_;
  wire                _zz_212_;
  wire                _zz_213_;
  wire                _zz_214_;
  wire                _zz_215_;
  wire                _zz_216_;
  wire                _zz_217_;
  wire                _zz_218_;
  wire                _zz_219_;
  wire                _zz_220_;
  wire                _zz_221_;
  wire                _zz_222_;
  wire       `Src3CtrlEnum_defaultEncoding_type _zz_223_;
  wire       `DataSizeEnum_defaultEncoding_type _zz_224_;
  wire       `CRMoveCtrlEnum_defaultEncoding_type _zz_225_;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_226_;
  wire       `TgtCtrlEnum_defaultEncoding_type _zz_227_;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_228_;
  wire       `AluRimiCtrlEnum_defaultEncoding_type _zz_229_;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_230_;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_231_;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_232_;
  wire       `AluRimiAmtEnum_defaultEncoding_type _zz_233_;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_234_;
  wire       `CRLogCtrlEnum_defaultEncoding_type _zz_235_;
  wire       `AluSpecCtrlEnum_defaultEncoding_type _zz_236_;
  reg                 _zz_237_;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress1;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress2;
  wire       [31:0]   decode_RegFilePlugin_raData_pre;
  wire       [31:0]   decode_RegFilePlugin_rbData_pre;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress3;
  wire       [31:0]   decode_RegFilePlugin_rsData;
  reg        [4:0]    _zz_238_;
  reg                 lastStageRegFileWrite_valid /* verilator public */ ;
  reg        [4:0]    lastStageRegFileWrite_payload_address /* verilator public */ ;
  reg        [31:0]   lastStageRegFileWrite_payload_data /* verilator public */ ;
  wire                UpdateRegFileWrite_valid /* verilator public */ ;
  wire                UpdateRegFileWrite_payload_valid /* verilator public */ ;
  wire       [4:0]    UpdateRegFileWrite_payload_address /* verilator public */ ;
  wire       [31:0]   UpdateRegFileWrite_payload_data /* verilator public */ ;
  reg                 writeBack_RegFilePlugin_crBusPort_valid;
  reg        `CRBusCmdEnum_defaultEncoding_type writeBack_RegFilePlugin_crBusPort_payload_op;
  wire       [4:0]    writeBack_RegFilePlugin_crBusPort_payload_ba;
  wire       [4:0]    writeBack_RegFilePlugin_crBusPort_payload_bb;
  wire       [4:0]    writeBack_RegFilePlugin_crBusPort_payload_bt;
  reg        [31:0]   writeBack_RegFilePlugin_crBusPort_payload_imm;
  wire       [7:0]    writeBack_RegFilePlugin_crBusPort_payload_fxm;
  reg                 writeBack_RegFilePlugin_xerBusPort_valid;
  wire                writeBack_RegFilePlugin_xerBusPort_payload_validOV;
  wire                writeBack_RegFilePlugin_xerBusPort_payload_validCA;
  wire       [1:0]    writeBack_RegFilePlugin_xerBusPort_payload_imm;
  reg                 writeBack_RegFilePlugin_sprWriteXERPort_valid;
  wire       [9:0]    writeBack_RegFilePlugin_sprWriteXERPort_payload_id;
  wire       [31:0]   writeBack_RegFilePlugin_sprWriteXERPort_payload_data;
  reg                 writeBack_RegFilePlugin_sprWriteCLTPort_valid;
  wire       [9:0]    writeBack_RegFilePlugin_sprWriteCLTPort_payload_id;
  wire       [31:0]   writeBack_RegFilePlugin_sprWriteCLTPort_payload_data;
  reg                 _zz_239_;
  reg                 _zz_240_;
  reg                 _zz_241_;
  reg        [1:0]    _zz_242_;
  reg                 _zz_243_;
  reg        [31:0]   ALU2_XER;
  reg                 ALU2_sprReadValid;
  wire                _zz_244_;
  reg        [23:0]   _zz_245_;
  wire                _zz_246_;
  reg        [15:0]   _zz_247_;
  reg        [31:0]   ALU2_bitwise;
  reg        [1:0]    ALU2_bitwise_enc_cr;
  reg        [2:0]    ALU2_bitwise_cr;
  reg        [4:0]    ALU2_amount;
  wire       [4:0]    ALU2_maskMB;
  wire       [4:0]    ALU2_maskME;
  reg        [31:0]   ALU2_mask;
  reg        [31:0]   ALU2_maskNorm;
  reg        [31:0]   ALU2_maskInvt;
  wire       [31:0]   ALU2_rimi;
  wire       [31:0]   _zz_248_;
  wire       [31:0]   _zz_249_;
  reg        [31:0]   _zz_250_;
  reg                 ALU2_sraw_ca;
  wire       [31:0]   ALU2_sraw_wtf;
  reg        [1:0]    ALU2_rimi_enc_cr;
  reg        [2:0]    ALU2_rimi_cr;
  reg        [5:0]    cntzero_lz;
  reg        [31:0]   _zz_251_;
  reg        [5:0]    cntzero_msb;
  reg        [5:0]    cntzero_tz;
  reg        [5:0]    cntzero_lsb;
  wire       [3:0]    popcnt_pb0;
  wire       [3:0]    popcnt_pb1;
  wire       [3:0]    popcnt_pb2;
  wire       [3:0]    popcnt_pb3;
  wire       [7:0]    _zz_252_;
  wire       [7:0]    _zz_253_;
  wire       [7:0]    _zz_254_;
  wire       [7:0]    _zz_255_;
  wire       [5:0]    popcnt_pw0;
  wire       [31:0]   _zz_256_;
  reg        [31:0]   popcnt_cmpb;
  wire                popcnt_prtyw;
  reg        [31:0]   ALU2_spec;
  reg        [31:0]   _zz_257_;
  reg                 _zz_258_;
  reg                 _zz_259_;
  reg        [31:0]   _zz_260_;
  reg        [4:0]    _zz_261_;
  reg                 ALU2_xer_ca;
  wire                ALU2_xer_ov;
  wire                ALU2_xer_so;
  wire                ALU2_xerBus_validOV;
  wire                ALU2_xerBus_validCA;
  wire       [1:0]    ALU2_xerBus_imm;
  reg        [2:0]    ALU2_alu_cr;
  reg        [2:0]    ALU2_cr0_val_a;
  wire       [3:0]    ALU2_cr0_val;
  wire                ALU2_cr_record;
  wire                ALU2_cr_mcrf;
  wire                ALU2_cr_update_valid;
  reg        `CRBusCmdEnum_defaultEncoding_type ALU2_crBus_op;
  reg        [4:0]    ALU2_crBus_ba;
  reg        [4:0]    ALU2_crBus_bb;
  reg        [4:0]    ALU2_crBus_bt;
  reg        [31:0]   ALU2_crBus_imm;
  reg        [7:0]    ALU2_crBus_fxm;
  wire       [4:0]    SRC1_ra;
  wire       [4:0]    SRC1_rb;
  wire       [4:0]    SRC1_rs;
  wire       [4:0]    SRC1_rt;
  reg        [31:0]   _zz_262_;
  wire                _zz_263_;
  reg        [15:0]   _zz_264_;
  reg        [31:0]   _zz_265_;
  reg        [0:0]    _zz_266_;
  wire       [32:0]   SRC2_adder;
  wire       [31:0]   SRC2_ra;
  wire       [31:0]   SRC2_rb;
  wire       [0:0]    SRC2_cin;
  wire       [1:0]    SRC2_add_cr;
  wire       [1:0]    SRC2_cmp_cr;
  wire                SRC2_ca;
  wire                SRC2_ov;
  reg                 _zz_267_;
  reg        [4:0]    _zz_268_;
  reg        [31:0]   _zz_269_;
  reg                 _zz_270_;
  reg        `CRBusCmdEnum_defaultEncoding_type _zz_271_;
  reg        [31:0]   _zz_272_;
  wire                MUL1_aSigned;
  wire                MUL1_bSigned;
  wire       [31:0]   MUL1_a;
  wire       [31:0]   MUL1_b;
  wire       [15:0]   MUL1_aULow;
  wire       [15:0]   MUL1_bULow;
  wire       [16:0]   MUL1_aSLow;
  wire       [16:0]   MUL1_bSLow;
  wire       [16:0]   MUL1_aHigh;
  wire       [16:0]   MUL1_bHigh;
  wire       [65:0]   MUL3_result;
  wire                MUL3_xer_ov;
  reg                 MUL3_xer_so;
  reg        [31:0]   MUL3_result32;
  wire       [1:0]    MUL3_cr;
  reg        [3:0]    MUL3_cr_decode;
  wire                MUL3_cr_record;
  reg        [32:0]   MULDIV_rs1;
  reg        [31:0]   MULDIV_rs2;
  reg        [64:0]   MULDIV_accumulator;
  wire                MULDIV_frontendOk;
  reg                 MULDIV1_needRevert;
  reg                 MULDIV1_counter_willIncrement;
  reg                 MULDIV1_counter_willClear;
  reg        [5:0]    MULDIV1_counter_valueNext;
  reg        [5:0]    MULDIV1_counter_value;
  wire                MULDIV1_counter_willOverflowIfInc;
  wire                MULDIV1_counter_willOverflow;
  reg                 MULDIV1_done;
  reg        [31:0]   MULDIV1_result;
  reg                 MULDIV1_crBusPort_valid;
  reg        `CRBusCmdEnum_defaultEncoding_type MULDIV1_crBusPort_payload_op;
  wire       [4:0]    MULDIV1_crBusPort_payload_ba;
  wire       [4:0]    MULDIV1_crBusPort_payload_bb;
  wire       [4:0]    MULDIV1_crBusPort_payload_bt;
  reg        [31:0]   MULDIV1_crBusPort_payload_imm;
  wire       [7:0]    MULDIV1_crBusPort_payload_fxm;
  reg                 MULDIV1_xerBusPort_valid;
  reg                 MULDIV1_xerBusPort_payload_validOV;
  reg                 MULDIV1_xerBusPort_payload_validCA;
  reg        [1:0]    MULDIV1_xerBusPort_payload_imm;
  wire       [31:0]   _zz_273_;
  wire       [32:0]   MULDIV1_stage_0_remainderShifted;
  wire       [32:0]   MULDIV1_stage_0_remainderMinusDenominator;
  wire       [31:0]   MULDIV1_stage_0_outRemainder;
  wire       [31:0]   MULDIV1_stage_0_outNumerator;
  wire       [31:0]   _zz_274_;
  wire                _zz_275_;
  reg                 _zz_276_;
  reg        [3:0]    _zz_277_;
  wire                _zz_278_;
  wire                _zz_279_;
  reg        [32:0]   _zz_280_;
  reg                 _zz_281_ /* verilator public */ ;
  reg                 _zz_282_ /* verilator public */ ;
  reg                 _zz_283_ /* verilator public */ ;
  wire                Hazards_writeBackWrites_valid;
  wire       [4:0]    Hazards_writeBackWrites_payload_address;
  wire       [31:0]   Hazards_writeBackWrites_payload_data;
  reg                 Hazards_writeBackBuffer_valid;
  reg        [4:0]    Hazards_writeBackBuffer_payload_address;
  reg        [31:0]   Hazards_writeBackBuffer_payload_data;
  wire                Hazards_addr0Match;
  wire                Hazards_addr1Match;
  wire                Hazards_addr2Match;
  wire                _zz_284_;
  wire                _zz_285_;
  wire                _zz_286_;
  wire                _zz_287_;
  wire                _zz_288_;
  wire                _zz_289_;
  wire                _zz_290_;
  wire                _zz_291_;
  wire                _zz_292_;
  wire                _zz_293_;
  reg                 _zz_294_;
  reg                 _zz_295_;
  reg                 _zz_296_;
  reg                 _zz_297_;
  reg                 _zz_298_;
  reg                 _zz_299_;
  reg                 _zz_300_;
  reg                 _zz_301_;
  reg        [3:0]    _zz_302_;
  reg                 _zz_303_;
  reg                 _zz_304_;
  reg                 _zz_305_;
  wire                _zz_306_;
  reg                 _zz_307_;
  reg                 _zz_308_;
  wire                _zz_309_;
  reg                 _zz_310_;
  reg                 _zz_311_;
  reg                 _zz_312_;
  reg                 _zz_313_;
  reg                 _zz_314_;
  reg                 _zz_315_;
  reg                 _zz_316_;
  reg                 _zz_317_;
  reg        [3:0]    _zz_318_;
  reg                 _zz_319_;
  reg                 _zz_320_;
  wire                _zz_321_;
  reg                 _zz_322_;
  reg                 _zz_323_;
  wire                _zz_324_;
  reg                 decode_BranchPlugin_bc;
  wire       [4:0]    decode_BranchPlugin_bi;
  wire       [2:0]    decode_BranchPlugin_crbiField;
  wire       [4:0]    decode_BranchPlugin_bo;
  wire                decode_BranchPlugin_crbiRead;
  reg        [7:0]    decode_BranchPlugin_crFieldRd;
  reg        [31:0]   execute_BranchPlugin_CR;
  reg        [31:0]   execute_BranchPlugin_CTR;
  reg        [31:0]   execute_BranchPlugin_LR;
  reg        [31:0]   execute_BranchPlugin_TAR;
  wire                execute_BranchPlugin_ctrOne;
  reg        [31:0]   execute_BranchPlugin_sprReadData;
  reg                 execute_BranchPlugin_sprReadValid;
  reg                 execute_BranchPlugin_crReadValid;
  reg        `CRBusCmdEnum_defaultEncoding_type execute_BranchPlugin_crBusPort_op;
  reg        [4:0]    execute_BranchPlugin_crBusPort_ba;
  reg        [4:0]    execute_BranchPlugin_crBusPort_bb;
  reg        [4:0]    execute_BranchPlugin_crBusPort_bt;
  reg        [31:0]   execute_BranchPlugin_crBusPort_imm;
  reg        [7:0]    execute_BranchPlugin_crBusPort_fxm;
  wire                execute_BranchPlugin_crBusPort_valid;
  reg        [3:0]    _zz_325_;
  wire       [3:0]    _zz_326_;
  wire                _zz_327_;
  reg        [5:0]    _zz_328_;
  wire       [31:0]   execute_BranchPlugin_li;
  wire                _zz_329_;
  reg        [15:0]   _zz_330_;
  wire       [31:0]   execute_BranchPlugin_bd;
  wire                _zz_331_;
  reg        [31:0]   execute_BranchPlugin_aaMask;
  reg        [31:0]   execute_BranchPlugin_branch_tgt0;
  reg        [31:0]   execute_BranchPlugin_branch_tgt1;
  wire                execute_BranchPlugin_use_li;
  wire       [31:0]   execute_BranchPlugin_branch_tgt2;
  reg        [31:0]   execute_BranchPlugin_branchAdder;
  wire       [4:0]    execute_BranchPlugin_opbi;
  wire       [2:0]    execute_BranchPlugin_crbiField;
  wire       [1:0]    execute_BranchPlugin_crbiBit;
  reg                 execute_BranchPlugin_crbi;
  wire                execute_BranchPlugin_ctrOK;
  wire       [4:0]    execute_BranchPlugin_bo;
  reg        [3:0]    execute_BranchPlugin_crBypassPort_field;
  wire       [0:0]    execute_BranchPlugin_crBypassPort_stageID;
  wire                execute_BranchPlugin_crBypassPort_valid;
  wire                execute_BranchPlugin_condOK;
  wire                execute_BranchPlugin_lk;
  reg                 _zz_332_;
  reg                 _zz_333_;
  reg                 _zz_334_;
  wire                memory_BranchPlugin_predictionMissmatch;
  reg                 MSR_VEC;
  reg                 MSR_VSX;
  reg                 MSR_EE;
  reg                 MSR_PR;
  reg                 MSR_FP;
  reg                 MSR_ME;
  reg                 MSR_FE0;
  reg                 MSR_FE1;
  reg                 MSR_IR;
  reg                 MSR_DR;
  reg                 MSR_PMM;
  reg                 MSR_RI;
  reg                 MSR_LE;
  reg        [31:0]   SPRPlugin_srr0;
  reg        [31:0]   SPRPlugin_srr1;
  reg        [31:0]   SPRPlugin_dar;
  reg        [31:0]   SPRPlugin_sprg3;
  reg        [31:0]   SPRPlugin_dsisr;
  (* ram_style = "block" *) reg        [31:0]   SPRPlugin_tb;
  wire                SPRPlugin_incTB;
  (* ram_style = "block" *) reg        [31:0]   SPRPlugin_dec;
  reg                 SPRPlugin_dec31Prev;
  reg                 SPRPlugin_intDec;
  reg                 SPRPlugin_intDecTkn;
  reg        [31:0]   SPRPlugin_minstret;
  reg                 SPRPlugin_exceptionPortCtrl_exceptionValids_decode;
  reg                 SPRPlugin_exceptionPortCtrl_exceptionValids_execute;
  reg                 SPRPlugin_exceptionPortCtrl_exceptionValids_memory;
  reg                 SPRPlugin_exceptionPortCtrl_exceptionValids_writeBack;
  reg                 SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
  reg                 SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
  reg                 SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
  reg                 SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
  reg        [3:0]    SPRPlugin_exceptionPortCtrl_exceptionContext_code;
  reg        [31:0]   SPRPlugin_exceptionPortCtrl_exceptionContext_badAddr;
  reg        `ExcpEnum_defaultEncoding_type SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC;
  reg        [6:0]    SPRPlugin_exceptionPortCtrl_exceptionContext_imm;
  wire       `ExcpEnum_defaultEncoding_type _zz_335_;
  wire       [1:0]    _zz_336_;
  wire                _zz_337_;
  wire       `ExcpEnum_defaultEncoding_type _zz_338_;
  reg                 _zz_339_;
  reg                 _zz_340_;
  reg                 _zz_341_;
  reg                 _zz_342_;
  reg                 SPRPlugin_interrupt_valid;
  reg        [3:0]    SPRPlugin_interrupt_code /* verilator public */ ;
  reg        [1:0]    SPRPlugin_interrupt_targetPrivilege;
  reg                 SPRPlugin_pipelineLiberator_pcValids_0;
  reg                 SPRPlugin_pipelineLiberator_pcValids_1;
  reg                 SPRPlugin_pipelineLiberator_pcValids_2;
  wire                SPRPlugin_pipelineLiberator_active;
  reg                 SPRPlugin_pipelineLiberator_done;
  wire                SPRPlugin_exception;
  reg        [31:0]   SPRPlugin_darSave;
  reg                 SPRPlugin_hadException;
  reg                 SPRPlugin_interruptJump /* verilator public */ ;
  reg        `ExcpEnum_defaultEncoding_type SPRPlugin_intType;
  reg        [31:0]   SPRPlugin_intSRR0;
  reg        [31:0]   _zz_343_;
  wire                execute_SPRPLUGIN_blockedBySideEffects;
  reg                 execute_SPRPLUGIN_sprHere;
  reg                 execute_SPRPLUGIN_illegalAccess;
  wire                _zz_344_;
  reg        [15:0]   _zz_345_;
  wire       [31:0]   execute_SPRPLUGIN_si;
  wire       [4:0]    execute_SPRPLUGIN_tmask;
  reg                 execute_SPRPLUGIN_trap;
  wire       [3:0]    execute_SPRPLUGIN_opExcp_code;
  wire       [31:0]   execute_SPRPLUGIN_opExcp_badAddr;
  wire       `ExcpEnum_defaultEncoding_type execute_SPRPLUGIN_opExcp_codePPC;
  wire       [6:0]    execute_SPRPLUGIN_opExcp_imm;
  reg                 _zz_346_;
  wire       [31:0]   execute_SPRPLUGIN_readData;
  wire       [31:0]   execute_SPRPLUGIN_readToWriteData;
  wire                execute_SPRPLUGIN_sprg3read;
  wire                execute_SPRPLUGIN_privViolation;
  wire                execute_SPRPLUGIN_readInstruction;
  wire                execute_SPRPLUGIN_readEnable;
  wire                execute_SPRPLUGIN_writeInstruction;
  wire                execute_SPRPLUGIN_writeEnable;
  reg        [10:0]   execute_SPRPLUGIN_SPRAddress;
  reg        [4:0]    decode_to_execute_R0_ADDR;
  reg        [51:0]   memory_to_writeBack_MUL_LOW;
  reg        `CRLogCtrlEnum_defaultEncoding_type decode_to_execute_DECODER_stageables_50;
  reg                 decode_to_execute_DECODER_stageables_37;
  reg                 decode_to_execute_DECODER_stageables_26;
  reg        `AluRimiAmtEnum_defaultEncoding_type decode_to_execute_DECODER_stageables_43;
  reg                 decode_to_execute_DECODER_stageables_34;
  reg                 execute_to_memory_DECODER_stageables_34;
  reg                 memory_to_writeBack_DECODER_stageables_34;
  reg        `EnvCtrlEnum_defaultEncoding_type decode_to_execute_DECODER_stageables_48;
  reg        `EnvCtrlEnum_defaultEncoding_type execute_to_memory_DECODER_stageables_48;
  reg        `EnvCtrlEnum_defaultEncoding_type memory_to_writeBack_DECODER_stageables_48;
  reg        [7:0]    execute_to_memory_CR_FIELD_WR;
  reg        [7:0]    memory_to_writeBack_CR_FIELD_WR;
  reg                 decode_to_execute_DECODER_stageables_47;
  reg        [31:0]   execute_to_memory_REGFILE_WRITE_DATA;
  reg        [31:0]   memory_to_writeBack_REGFILE_WRITE_DATA;
  reg        [31:0]   decode_to_execute_RS;
  reg                 execute_to_memory_XER_WRITE_validOV;
  reg                 execute_to_memory_XER_WRITE_validCA;
  reg        [1:0]    execute_to_memory_XER_WRITE_imm;
  reg                 memory_to_writeBack_XER_WRITE_validOV;
  reg                 memory_to_writeBack_XER_WRITE_validCA;
  reg        [1:0]    memory_to_writeBack_XER_WRITE_imm;
  reg        `BranchCtrlEnum_defaultEncoding_type decode_to_execute_DECODER_stageables_12;
  reg                 decode_to_execute_DECODER_stageables_54;
  reg                 execute_to_memory_DECODER_stageables_54;
  reg                 memory_to_writeBack_DECODER_stageables_54;
  reg        [1:0]    execute_to_memory_MEMORY_ADDRESS_LOW;
  reg        [1:0]    memory_to_writeBack_MEMORY_ADDRESS_LOW;
  reg                 decode_to_execute_DECODER_stageables_57;
  reg        `CRBusCmdEnum_defaultEncoding_type execute_to_memory_CR_WRITE_op;
  reg        [4:0]    execute_to_memory_CR_WRITE_ba;
  reg        [4:0]    execute_to_memory_CR_WRITE_bb;
  reg        [4:0]    execute_to_memory_CR_WRITE_bt;
  reg        [31:0]   execute_to_memory_CR_WRITE_imm;
  reg        [7:0]    execute_to_memory_CR_WRITE_fxm;
  reg        `CRBusCmdEnum_defaultEncoding_type memory_to_writeBack_CR_WRITE_op;
  reg        [4:0]    memory_to_writeBack_CR_WRITE_ba;
  reg        [4:0]    memory_to_writeBack_CR_WRITE_bb;
  reg        [4:0]    memory_to_writeBack_CR_WRITE_bt;
  reg        [31:0]   memory_to_writeBack_CR_WRITE_imm;
  reg        [7:0]    memory_to_writeBack_CR_WRITE_fxm;
  reg                 execute_to_memory_XER_SO;
  reg                 memory_to_writeBack_XER_SO;
  reg        [31:0]   decode_to_execute_RA;
  reg                 decode_to_execute_DECODER_stageables_53;
  reg                 decode_to_execute_DECODER_stageables_29;
  reg                 execute_to_memory_DECODER_stageables_29;
  reg                 memory_to_writeBack_DECODER_stageables_29;
  reg                 decode_to_execute_DECODER_stageables_20;
  reg        [33:0]   execute_to_memory_MUL_LH;
  reg        [31:0]   execute_to_memory_LOAD_UPDATE_DATA;
  reg        [31:0]   memory_to_writeBack_LOAD_UPDATE_DATA;
  reg                 decode_to_execute_DECODER_stageables_27;
  reg        [4:0]    execute_to_memory_REGFILE_WRITE_ADDR;
  reg        [4:0]    memory_to_writeBack_REGFILE_WRITE_ADDR;
  reg                 decode_to_execute_DECODER_stageables_51;
  reg                 execute_to_memory_DECODER_stageables_51;
  reg                 memory_to_writeBack_DECODER_stageables_51;
  reg                 decode_to_execute_DECODER_stageables_10;
  reg        `AluRimiCtrlEnum_defaultEncoding_type decode_to_execute_DECODER_stageables_15;
  reg                 decode_to_execute_DECODER_stageables_55;
  reg                 execute_to_memory_DECODER_stageables_55;
  reg                 memory_to_writeBack_DECODER_stageables_55;
  reg                 decode_to_execute_DECODER_stageables_38;
  reg                 execute_to_memory_DECODER_stageables_38;
  reg                 memory_to_writeBack_DECODER_stageables_38;
  reg        [31:0]   execute_to_memory_NEXT_PC2;
  reg                 execute_to_memory_BRANCH_DO;
  reg                 decode_to_execute_DECODER_stageables_14;
  reg                 execute_to_memory_DECODER_stageables_14;
  reg                 decode_to_execute_PREDICTION_CONTEXT_hazard;
  reg                 decode_to_execute_PREDICTION_CONTEXT_hit;
  reg        [19:0]   decode_to_execute_PREDICTION_CONTEXT_line_source;
  reg        [1:0]    decode_to_execute_PREDICTION_CONTEXT_line_branchWish;
  reg        [31:0]   decode_to_execute_PREDICTION_CONTEXT_line_target;
  reg                 execute_to_memory_PREDICTION_CONTEXT_hazard;
  reg                 execute_to_memory_PREDICTION_CONTEXT_hit;
  reg        [19:0]   execute_to_memory_PREDICTION_CONTEXT_line_source;
  reg        [1:0]    execute_to_memory_PREDICTION_CONTEXT_line_branchWish;
  reg        [31:0]   execute_to_memory_PREDICTION_CONTEXT_line_target;
  reg                 decode_to_execute_DECODER_stageables_3;
  reg                 execute_to_memory_DECODER_stageables_3;
  reg                 decode_to_execute_DECODER_stageables_41;
  reg                 decode_to_execute_DECODER_stageables_44;
  reg                 execute_to_memory_DECODER_stageables_44;
  reg                 memory_to_writeBack_DECODER_stageables_44;
  reg                 decode_to_execute_DECODER_stageables_8;
  reg                 execute_to_memory_DECODER_stageables_8;
  reg                 memory_to_writeBack_DECODER_stageables_8;
  reg        [31:0]   decode_to_execute_INSTRUCTION;
  reg        [31:0]   execute_to_memory_INSTRUCTION;
  reg        [31:0]   memory_to_writeBack_INSTRUCTION;
  reg        `AluBitwiseCtrlEnum_defaultEncoding_type decode_to_execute_DECODER_stageables_18;
  reg                 decode_to_execute_DECODER_stageables_17;
  reg        [1:0]    execute_to_memory_SRC_CR;
  reg        [1:0]    memory_to_writeBack_SRC_CR;
  reg                 decode_to_execute_DECODER_stageables_31;
  reg                 decode_to_execute_DECODER_stageables_22;
  reg                 execute_to_memory_DECODER_stageables_22;
  reg                 memory_to_writeBack_DECODER_stageables_22;
  reg                 decode_to_execute_DECODER_stageables_13;
  reg        [31:0]   execute_to_memory_MUL_LL;
  reg        [31:0]   decode_to_execute_RB;
  reg        `AluSpecCtrlEnum_defaultEncoding_type decode_to_execute_DECODER_stageables_56;
  reg                 decode_to_execute_DECODER_stageables_1;
  reg                 decode_to_execute_DECODER_stageables_4;
  reg                 decode_to_execute_DECODER_stageables_39;
  reg        [33:0]   execute_to_memory_MUL_HL;
  reg        [31:0]   decode_to_execute_FORMAL_PC_NEXT;
  reg        [31:0]   execute_to_memory_FORMAL_PC_NEXT;
  reg        [31:0]   memory_to_writeBack_FORMAL_PC_NEXT;
  reg        [4:0]    execute_to_memory_LOAD_UPDATE_ADDR;
  reg        [4:0]    memory_to_writeBack_LOAD_UPDATE_ADDR;
  reg                 decode_to_execute_DECODER_stageables_28;
  reg                 execute_to_memory_DECODER_stageables_28;
  reg                 memory_to_writeBack_DECODER_stageables_28;
  reg                 decode_to_execute_DECODER_stageables_33;
  reg        [7:0]    decode_to_execute_CR_FIELD_RD;
  reg        [33:0]   execute_to_memory_MUL_HH;
  reg        [33:0]   memory_to_writeBack_MUL_HH;
  reg        [4:0]    decode_to_execute_RT_ADDR;
  reg        [4:0]    execute_to_memory_RT_ADDR;
  reg        [4:0]    memory_to_writeBack_RT_ADDR;
  reg                 decode_to_execute_DECODER_stageables_52;
  reg                 execute_to_memory_DECODER_stageables_52;
  reg                 memory_to_writeBack_DECODER_stageables_52;
  reg        `DataSizeEnum_defaultEncoding_type decode_to_execute_DECODER_stageables_5;
  reg        `DataSizeEnum_defaultEncoding_type execute_to_memory_DECODER_stageables_5;
  reg        `DataSizeEnum_defaultEncoding_type memory_to_writeBack_DECODER_stageables_5;
  reg        `Src3CtrlEnum_defaultEncoding_type decode_to_execute_DECODER_stageables_0;
  reg        [31:0]   execute_to_memory_SRC_ADD;
  reg        [31:0]   memory_to_writeBack_SRC_ADD;
  reg                 decode_to_execute_DECODER_stageables_45;
  reg                 decode_to_execute_DECODER_stageables_21;
  reg        [31:0]   execute_to_memory_SRC1;
  reg        [31:0]   memory_to_writeBack_SRC1;
  reg        `EndianEnum_defaultEncoding_type decode_to_execute_MSR_ENDIAN;
  reg        `EndianEnum_defaultEncoding_type execute_to_memory_MSR_ENDIAN;
  reg        `EndianEnum_defaultEncoding_type memory_to_writeBack_MSR_ENDIAN;
  reg        `AluCtrlEnum_defaultEncoding_type decode_to_execute_DECODER_stageables_7;
  reg                 decode_to_execute_DECODER_stageables_35;
  reg                 execute_to_memory_DECODER_stageables_35;
  reg                 decode_to_execute_DECODER_stageables_19;
  reg        `Src2CtrlEnum_defaultEncoding_type decode_to_execute_DECODER_stageables_24;
  reg                 execute_to_memory_BRANCH_DEC;
  reg                 memory_to_writeBack_BRANCH_DEC;
  reg                 execute_to_memory_BRANCH_LINK;
  reg                 memory_to_writeBack_BRANCH_LINK;
  reg                 decode_to_execute_DECODER_stageables_25;
  reg                 decode_to_execute_DECODER_stageables_42;
  reg                 execute_to_memory_DECODER_stageables_42;
  reg        `Src1CtrlEnum_defaultEncoding_type decode_to_execute_DECODER_stageables_36;
  reg        [10:0]   execute_to_memory_SPR_ID;
  reg        [10:0]   memory_to_writeBack_SPR_ID;
  reg                 decode_to_execute_DECODER_stageables_32;
  reg        [31:0]   decode_to_execute_PC;
  reg        [31:0]   execute_to_memory_PC;
  reg        [31:0]   memory_to_writeBack_PC;
  reg        [31:0]   execute_to_memory_BRANCH_CALC;
  reg                 execute_to_memory_TARGET_MISSMATCH2;
  reg                 decode_to_execute_DECODER_stageables_23;
  reg        `CRMoveCtrlEnum_defaultEncoding_type decode_to_execute_DECODER_stageables_6;
  reg        `TgtCtrlEnum_defaultEncoding_type decode_to_execute_DECODER_stageables_11;
  reg        [10:0]   _zz_347_;
  reg                 execute_SPRPLUGIN_SPR_1025;
  reg                 execute_SPRPLUGIN_SPR_26;
  reg                 execute_SPRPLUGIN_SPR_27;
  reg                 execute_SPRPLUGIN_SPR_19;
  reg                 execute_SPRPLUGIN_SPR_259;
  reg                 execute_SPRPLUGIN_SPR_18;
  reg                 execute_SPRPLUGIN_SPR_268;
  reg                 execute_SPRPLUGIN_SPR_22;
  reg        [31:0]   _zz_348_;
  reg        [31:0]   _zz_349_;
  reg        [31:0]   _zz_350_;
  reg        [31:0]   _zz_351_;
  reg        [31:0]   _zz_352_;
  reg        [31:0]   _zz_353_;
  reg        [31:0]   _zz_354_;
  reg        [31:0]   _zz_355_;
  reg        [2:0]    _zz_356_;
  reg                 _zz_357_;
  reg        [31:0]   iBusWB_DAT_MISO_regNext;
  reg        [2:0]    _zz_358_;
  wire                _zz_359_;
  wire                _zz_360_;
  wire                _zz_361_;
  wire                _zz_362_;
  wire                _zz_363_;
  reg                 _zz_364_;
  reg        [31:0]   dBusWB_DAT_MISO_regNext;
  `ifndef SYNTHESIS
  reg [15:0] _zz_1__string;
  reg [15:0] _zz_2__string;
  reg [47:0] decode_DECODER_stageables_6_string;
  reg [47:0] _zz_3__string;
  reg [47:0] _zz_4__string;
  reg [47:0] _zz_5__string;
  reg [47:0] decode_DECODER_stageables_36_string;
  reg [47:0] _zz_6__string;
  reg [47:0] _zz_7__string;
  reg [47:0] _zz_8__string;
  reg [63:0] decode_DECODER_stageables_24_string;
  reg [63:0] _zz_9__string;
  reg [63:0] _zz_10__string;
  reg [63:0] _zz_11__string;
  reg [39:0] decode_DECODER_stageables_7_string;
  reg [39:0] _zz_12__string;
  reg [39:0] _zz_13__string;
  reg [39:0] _zz_14__string;
  reg [15:0] memory_MSR_ENDIAN_string;
  reg [15:0] _zz_15__string;
  reg [15:0] _zz_16__string;
  reg [15:0] _zz_17__string;
  reg [15:0] _zz_18__string;
  reg [15:0] _zz_19__string;
  reg [15:0] _zz_20__string;
  reg [15:0] _zz_21__string;
  reg [31:0] decode_DECODER_stageables_0_string;
  reg [31:0] _zz_22__string;
  reg [31:0] _zz_23__string;
  reg [31:0] _zz_24__string;
  reg [15:0] memory_DECODER_stageables_5_string;
  reg [15:0] _zz_25__string;
  reg [15:0] _zz_26__string;
  reg [15:0] _zz_27__string;
  reg [15:0] _zz_28__string;
  reg [15:0] _zz_29__string;
  reg [15:0] decode_DECODER_stageables_5_string;
  reg [15:0] _zz_30__string;
  reg [15:0] _zz_31__string;
  reg [15:0] _zz_32__string;
  reg [55:0] decode_DECODER_stageables_56_string;
  reg [55:0] _zz_33__string;
  reg [55:0] _zz_34__string;
  reg [55:0] _zz_35__string;
  reg [47:0] decode_DECODER_stageables_18_string;
  reg [47:0] _zz_36__string;
  reg [47:0] _zz_37__string;
  reg [47:0] _zz_38__string;
  reg [55:0] decode_DECODER_stageables_15_string;
  reg [55:0] _zz_39__string;
  reg [55:0] _zz_40__string;
  reg [55:0] _zz_41__string;
  reg [47:0] _zz_42__string;
  reg [47:0] _zz_43__string;
  reg [47:0] execute_CR_WRITE_op_string;
  reg [47:0] _zz_44__string;
  reg [47:0] _zz_45__string;
  reg [47:0] _zz_46__string;
  reg [39:0] _zz_47__string;
  reg [39:0] _zz_48__string;
  reg [39:0] memory_DECODER_stageables_48_string;
  reg [39:0] _zz_49__string;
  reg [39:0] _zz_50__string;
  reg [39:0] _zz_51__string;
  reg [39:0] decode_DECODER_stageables_48_string;
  reg [39:0] _zz_52__string;
  reg [39:0] _zz_53__string;
  reg [39:0] _zz_54__string;
  reg [23:0] decode_DECODER_stageables_43_string;
  reg [23:0] _zz_55__string;
  reg [23:0] _zz_56__string;
  reg [23:0] _zz_57__string;
  reg [47:0] decode_DECODER_stageables_50_string;
  reg [47:0] _zz_58__string;
  reg [47:0] _zz_59__string;
  reg [47:0] _zz_60__string;
  reg [39:0] writeBack_DECODER_stageables_48_string;
  reg [39:0] _zz_61__string;
  reg [39:0] _zz_62__string;
  reg [39:0] _zz_63__string;
  reg [39:0] execute_DECODER_stageables_48_string;
  reg [39:0] _zz_64__string;
  reg [15:0] _zz_65__string;
  reg [39:0] decode_DECODER_stageables_12_string;
  reg [39:0] _zz_67__string;
  reg [47:0] memory_CR_WRITE_op_string;
  reg [47:0] _zz_68__string;
  reg [39:0] execute_DECODER_stageables_12_string;
  reg [39:0] _zz_69__string;
  reg [31:0] execute_DECODER_stageables_0_string;
  reg [31:0] _zz_72__string;
  reg [63:0] execute_DECODER_stageables_24_string;
  reg [63:0] _zz_73__string;
  reg [47:0] execute_DECODER_stageables_36_string;
  reg [47:0] _zz_76__string;
  reg [47:0] _zz_78__string;
  reg [47:0] execute_DECODER_stageables_50_string;
  reg [47:0] _zz_79__string;
  reg [47:0] execute_DECODER_stageables_6_string;
  reg [47:0] _zz_80__string;
  reg [15:0] execute_DECODER_stageables_11_string;
  reg [15:0] _zz_82__string;
  reg [39:0] execute_DECODER_stageables_7_string;
  reg [39:0] _zz_83__string;
  reg [55:0] execute_DECODER_stageables_56_string;
  reg [55:0] _zz_84__string;
  reg [55:0] execute_DECODER_stageables_15_string;
  reg [55:0] _zz_100__string;
  reg [23:0] execute_DECODER_stageables_43_string;
  reg [23:0] _zz_101__string;
  reg [47:0] execute_DECODER_stageables_18_string;
  reg [47:0] _zz_102__string;
  reg [47:0] writeBack_CR_WRITE_op_string;
  reg [47:0] _zz_103__string;
  reg [15:0] decode_DECODER_stageables_11_string;
  reg [15:0] _zz_106__string;
  reg [55:0] _zz_107__string;
  reg [47:0] _zz_108__string;
  reg [39:0] _zz_109__string;
  reg [23:0] _zz_110__string;
  reg [47:0] _zz_111__string;
  reg [63:0] _zz_112__string;
  reg [47:0] _zz_113__string;
  reg [55:0] _zz_114__string;
  reg [39:0] _zz_115__string;
  reg [15:0] _zz_116__string;
  reg [39:0] _zz_117__string;
  reg [47:0] _zz_118__string;
  reg [15:0] _zz_119__string;
  reg [31:0] _zz_120__string;
  reg [15:0] writeBack_DATA_SIZE_string;
  reg [15:0] _zz_122__string;
  reg [15:0] writeBack_MSR_ENDIAN_string;
  reg [15:0] _zz_123__string;
  reg [15:0] execute_DATA_SIZE_string;
  reg [15:0] _zz_125__string;
  reg [15:0] execute_MSR_ENDIAN_string;
  reg [15:0] _zz_126__string;
  reg [15:0] decode_MSR_ENDIAN_string;
  reg [15:0] _zz_129__string;
  reg [63:0] IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string;
  reg [63:0] DBusCachedPlugin_exceptionBus_payload_codePPC_string;
  reg [63:0] decodeExceptionPort_payload_codePPC_string;
  reg [63:0] BranchPlugin_branchExceptionPort_payload_codePPC_string;
  reg [63:0] SPRPlugin_selfException_payload_codePPC_string;
  reg [31:0] _zz_223__string;
  reg [15:0] _zz_224__string;
  reg [47:0] _zz_225__string;
  reg [39:0] _zz_226__string;
  reg [15:0] _zz_227__string;
  reg [39:0] _zz_228__string;
  reg [55:0] _zz_229__string;
  reg [47:0] _zz_230__string;
  reg [63:0] _zz_231__string;
  reg [47:0] _zz_232__string;
  reg [23:0] _zz_233__string;
  reg [39:0] _zz_234__string;
  reg [47:0] _zz_235__string;
  reg [55:0] _zz_236__string;
  reg [47:0] writeBack_RegFilePlugin_crBusPort_payload_op_string;
  reg [47:0] ALU2_crBus_op_string;
  reg [47:0] _zz_271__string;
  reg [47:0] MULDIV1_crBusPort_payload_op_string;
  reg [47:0] execute_BranchPlugin_crBusPort_op_string;
  reg [63:0] SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string;
  reg [63:0] _zz_335__string;
  reg [63:0] _zz_338__string;
  reg [63:0] SPRPlugin_intType_string;
  reg [63:0] execute_SPRPLUGIN_opExcp_codePPC_string;
  reg [47:0] decode_to_execute_DECODER_stageables_50_string;
  reg [23:0] decode_to_execute_DECODER_stageables_43_string;
  reg [39:0] decode_to_execute_DECODER_stageables_48_string;
  reg [39:0] execute_to_memory_DECODER_stageables_48_string;
  reg [39:0] memory_to_writeBack_DECODER_stageables_48_string;
  reg [39:0] decode_to_execute_DECODER_stageables_12_string;
  reg [47:0] execute_to_memory_CR_WRITE_op_string;
  reg [47:0] memory_to_writeBack_CR_WRITE_op_string;
  reg [55:0] decode_to_execute_DECODER_stageables_15_string;
  reg [47:0] decode_to_execute_DECODER_stageables_18_string;
  reg [55:0] decode_to_execute_DECODER_stageables_56_string;
  reg [15:0] decode_to_execute_DECODER_stageables_5_string;
  reg [15:0] execute_to_memory_DECODER_stageables_5_string;
  reg [15:0] memory_to_writeBack_DECODER_stageables_5_string;
  reg [31:0] decode_to_execute_DECODER_stageables_0_string;
  reg [15:0] decode_to_execute_MSR_ENDIAN_string;
  reg [15:0] execute_to_memory_MSR_ENDIAN_string;
  reg [15:0] memory_to_writeBack_MSR_ENDIAN_string;
  reg [39:0] decode_to_execute_DECODER_stageables_7_string;
  reg [63:0] decode_to_execute_DECODER_stageables_24_string;
  reg [47:0] decode_to_execute_DECODER_stageables_36_string;
  reg [47:0] decode_to_execute_DECODER_stageables_6_string;
  reg [15:0] decode_to_execute_DECODER_stageables_11_string;
  `endif

  reg [53:0] IBusCachedPlugin_predictor_history [0:1023];
  reg [31:0] RegFilePlugin_regFile [0:31] /* verilator public */ ;
  function [6:0] zz_SPRPlugin_selfException_payload_imm(input dummy);
    begin
      zz_SPRPlugin_selfException_payload_imm = 7'h0;
      zz_SPRPlugin_selfException_payload_imm = 7'h0;
    end
  endfunction
  wire [6:0] _zz_1554_;

  assign _zz_392_ = (execute_DECODER_stageables_48 == `EnvCtrlEnum_defaultEncoding_TW);
  assign _zz_393_ = (writeBack_arbitration_isValid && writeBack_DECODER_stageables_44);
  assign _zz_394_ = 1'b1;
  assign _zz_395_ = (memory_arbitration_isValid && memory_DECODER_stageables_44);
  assign _zz_396_ = (execute_arbitration_isValid && execute_DECODER_stageables_44);
  assign _zz_397_ = (memory_arbitration_isValid && memory_DECODER_stageables_42);
  assign _zz_398_ = (writeBack_arbitration_isFiring && writeBack_DECODER_stageables_28);
  assign _zz_399_ = ((_zz_370_ && IBusCachedPlugin_cache_io_cpu_decode_cacheMiss) && (! _zz_127__3));
  assign _zz_400_ = ((_zz_370_ && IBusCachedPlugin_cache_io_cpu_decode_error) && (! _zz_127__2));
  assign _zz_401_ = ((_zz_370_ && (! IBusCachedPlugin_cache_io_cpu_decode_mmuException)) && (! _zz_127__1));
  assign _zz_402_ = IBusCachedPlugin_cache_io_cpu_decode_exceptionType[0];
  assign _zz_403_ = ((_zz_370_ && IBusCachedPlugin_cache_io_cpu_decode_mmuException) && (! _zz_127__0));
  assign _zz_404_ = ((_zz_370_ && IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling) && (! IBusCachedPlugin_rsp_issueDetected));
  assign _zz_405_ = ({decodeExceptionPort_valid,IBusCachedPlugin_decodeExceptionPort_valid} != (2'b00));
  assign _zz_406_ = (SPRPlugin_hadException || SPRPlugin_interruptJump);
  assign _zz_407_ = (writeBack_arbitration_isFiring && writeBack_DECODER_stageables_38);
  assign _zz_408_ = (writeBack_arbitration_isFiring && (writeBack_DECODER_stageables_48 == `EnvCtrlEnum_defaultEncoding_SC));
  assign _zz_409_ = (writeBack_arbitration_isFiring && ((writeBack_DECODER_stageables_48 == `EnvCtrlEnum_defaultEncoding_TW) || (writeBack_DECODER_stageables_48 == `EnvCtrlEnum_defaultEncoding_TWI)));
  assign _zz_410_ = (writeBack_arbitration_isFiring && (writeBack_DECODER_stageables_48 == `EnvCtrlEnum_defaultEncoding_SCV));
  assign _zz_411_ = (writeBack_arbitration_isFiring && (writeBack_DECODER_stageables_48 == `EnvCtrlEnum_defaultEncoding_RFI));
  assign _zz_412_ = (writeBack_arbitration_isFiring && (writeBack_DECODER_stageables_48 == `EnvCtrlEnum_defaultEncoding_RFSCV));
  assign _zz_413_ = (writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE);
  assign _zz_414_ = ((! dataCache_1__io_cpu_writeBack_mmuException) && dataCache_1__io_cpu_writeBack_exceptionType[0]);
  assign _zz_415_ = ((! dataCache_1__io_cpu_writeBack_exceptionType[3]) && (! writeBack_MEMORY_WR));
  assign _zz_416_ = ((! dataCache_1__io_cpu_writeBack_exceptionType[2]) && writeBack_MEMORY_WR);
  assign _zz_417_ = (! decode_LEGAL_INSTRUCTION);
  assign _zz_418_ = (decode && SPRPlugin_msr_pr);
  assign _zz_419_ = (! UpdateRegFileWrite_valid);
  assign _zz_420_ = (MULDIV_frontendOk && (! MULDIV1_done));
  assign _zz_421_ = (! memory_arbitration_isStuck);
  assign _zz_422_ = (memory_DECODER_stageables_35 && memory_INSTRUCTION[10]);
  assign _zz_423_ = (writeBack_arbitration_isValid && writeBack_DECODER_stageables_44);
  assign _zz_424_ = (1'b0 || (! _zz_284_));
  assign _zz_425_ = (memory_arbitration_isValid && memory_DECODER_stageables_44);
  assign _zz_426_ = (1'b0 || (! memory_DECODER_stageables_3));
  assign _zz_427_ = (execute_arbitration_isValid && execute_DECODER_stageables_44);
  assign _zz_428_ = (1'b0 || (! execute_DECODER_stageables_23));
  assign _zz_429_ = (memory_arbitration_isValid && execute_arbitration_isValid);
  assign _zz_430_ = (1'b0 ? (memory_CR_FIELD_WR != 8'h0) : ((memory_CR_FIELD_WR & execute_CR_FIELD_RD) != 8'h0));
  assign _zz_431_ = (1'b1 && (! 1'b0));
  assign _zz_432_ = (writeBack_arbitration_isValid && execute_arbitration_isValid);
  assign _zz_433_ = (1'b0 ? (writeBack_CR_FIELD_WR != 8'h0) : ((writeBack_CR_FIELD_WR & execute_CR_FIELD_RD) != 8'h0));
  assign _zz_434_ = (1'b1 && (! 1'b0));
  assign _zz_435_ = (! SPRPlugin_hadException);
  assign _zz_436_ = (iBus_cmd_valid || (_zz_356_ != (3'b000)));
  assign _zz_437_ = 1'b1;
  assign _zz_438_ = (((MSR_EE && SPRPlugin_intDec) && 1'b1) && (! 1'b0));
  assign _zz_439_ = execute_INSTRUCTION[19 : 12];
  assign _zz_440_ = execute_INSTRUCTION[20 : 18];
  assign _zz_441_ = execute_INSTRUCTION[20 : 18];
  assign _zz_442_ = (2'b00);
  assign _zz_443_ = (2'b00);
  assign _zz_444_ = execute_BranchPlugin_crBusPort_ba[2 : 0];
  assign _zz_445_ = _zz_157_[34 : 34];
  assign _zz_446_ = _zz_157_[45 : 45];
  assign _zz_447_ = _zz_157_[57 : 57];
  assign _zz_448_ = _zz_157_[38 : 38];
  assign _zz_449_ = _zz_157_[30 : 30];
  assign _zz_450_ = _zz_157_[48 : 48];
  assign _zz_451_ = _zz_157_[32 : 32];
  assign _zz_452_ = _zz_157_[60 : 60];
  assign _zz_453_ = _zz_157_[72 : 72];
  assign _zz_454_ = _zz_157_[46 : 46];
  assign _zz_455_ = _zz_157_[41 : 41];
  assign _zz_456_ = _zz_157_[54 : 54];
  assign _zz_457_ = _zz_157_[2 : 2];
  assign _zz_458_ = _zz_157_[19 : 19];
  assign _zz_459_ = _zz_157_[33 : 33];
  assign _zz_460_ = _zz_157_[44 : 44];
  assign _zz_461_ = _zz_157_[25 : 25];
  assign _zz_462_ = _zz_157_[12 : 12];
  assign _zz_463_ = _zz_157_[59 : 59];
  assign _zz_464_ = _zz_157_[56 : 56];
  assign _zz_465_ = _zz_157_[4 : 4];
  assign _zz_466_ = _zz_157_[20 : 20];
  assign _zz_467_ = _zz_157_[53 : 53];
  assign _zz_468_ = _zz_157_[75 : 75];
  assign _zz_469_ = _zz_157_[14 : 14];
  assign _zz_470_ = _zz_157_[31 : 31];
  assign _zz_471_ = _zz_157_[42 : 42];
  assign _zz_472_ = _zz_157_[73 : 73];
  assign _zz_473_ = _zz_157_[79 : 79];
  assign _zz_474_ = _zz_157_[74 : 74];
  assign _zz_475_ = _zz_157_[62 : 62];
  assign _zz_476_ = _zz_157_[47 : 47];
  assign _zz_477_ = _zz_157_[39 : 39];
  assign _zz_478_ = _zz_157_[52 : 52];
  assign _zz_479_ = ($signed(_zz_480_) + $signed(_zz_485_));
  assign _zz_480_ = ($signed(_zz_481_) + $signed(_zz_483_));
  assign _zz_481_ = 52'h0;
  assign _zz_482_ = {1'b0,memory_MUL_LL};
  assign _zz_483_ = {{19{_zz_482_[32]}}, _zz_482_};
  assign _zz_484_ = ({16'd0,memory_MUL_LH} <<< 16);
  assign _zz_485_ = {{2{_zz_484_[49]}}, _zz_484_};
  assign _zz_486_ = ({16'd0,memory_MUL_HL} <<< 16);
  assign _zz_487_ = {{2{_zz_486_[49]}}, _zz_486_};
  assign _zz_488_ = _zz_157_[5 : 5];
  assign _zz_489_ = _zz_157_[67 : 67];
  assign _zz_490_ = _zz_157_[61 : 61];
  assign _zz_491_ = _zz_157_[13 : 13];
  assign _zz_492_ = _zz_157_[24 : 24];
  assign _zz_493_ = _zz_157_[40 : 40];
  assign _zz_494_ = _zz_157_[71 : 71];
  assign _zz_495_ = _zz_157_[3 : 3];
  assign _zz_496_ = (_zz_132_ - (3'b001));
  assign _zz_497_ = {IBusCachedPlugin_fetchPc_inc,(2'b00)};
  assign _zz_498_ = {29'd0, _zz_497_};
  assign _zz_499_ = _zz_145_[9:0];
  assign _zz_500_ = (IBusCachedPlugin_iBusRsp_stages_1_input_payload >>> 2);
  assign _zz_501_ = _zz_500_[9:0];
  assign _zz_502_ = (IBusCachedPlugin_iBusRsp_stages_1_input_payload >>> 12);
  assign _zz_503_ = (memory_PREDICTION_CONTEXT_line_branchWish + _zz_505_);
  assign _zz_504_ = (memory_PREDICTION_CONTEXT_line_branchWish == (2'b10));
  assign _zz_505_ = {1'd0, _zz_504_};
  assign _zz_506_ = (memory_PREDICTION_CONTEXT_line_branchWish == (2'b01));
  assign _zz_507_ = {1'd0, _zz_506_};
  assign _zz_508_ = (memory_PREDICTION_CONTEXT_line_branchWish - _zz_510_);
  assign _zz_509_ = memory_PREDICTION_CONTEXT_line_branchWish[1];
  assign _zz_510_ = {1'd0, _zz_509_};
  assign _zz_511_ = (! memory_PREDICTION_CONTEXT_line_branchWish[1]);
  assign _zz_512_ = {1'd0, _zz_511_};
  assign _zz_513_ = (writeBack_MEMORY_WR ? (3'b111) : (3'b101));
  assign _zz_514_ = (writeBack_MEMORY_WR ? (3'b110) : (3'b100));
  assign _zz_515_ = writeBack_SPR_ID;
  assign _zz_516_ = (writeBack_PC + 32'h00000004);
  assign _zz_517_ = writeBack_SPR_ID;
  assign _zz_518_ = (execute_SRC1 <<< ALU2_amount);
  assign _zz_519_ = (execute_SRC1 >>> ALU2_amount);
  assign _zz_520_ = _zz_521_;
  assign _zz_521_ = ($signed(_zz_522_) >>> ALU2_amount);
  assign _zz_522_ = execute_SRC1;
  assign _zz_523_ = 32'hffffffff;
  assign _zz_524_ = _zz_523_;
  assign _zz_525_ = (6'h20 - _zz_526_);
  assign _zz_526_ = {1'd0, ALU2_amount};
  assign _zz_527_ = sprReadBU_payload_data;
  assign _zz_528_ = sprReadBU_payload_data;
  assign _zz_529_ = sprReadBU_payload_data;
  assign _zz_530_ = sprReadBU_payload_data;
  assign _zz_531_ = sprReadBU_payload_data;
  assign _zz_532_ = sprReadBU_payload_data;
  assign _zz_533_ = sprReadBU_payload_data;
  assign _zz_534_ = sprReadBU_payload_data;
  assign _zz_535_ = sprReadBU_payload_data;
  assign _zz_536_ = sprReadBU_payload_data;
  assign _zz_537_ = sprReadBU_payload_data;
  assign _zz_538_ = sprReadBU_payload_data;
  assign _zz_539_ = sprReadBU_payload_data;
  assign _zz_540_ = sprReadBU_payload_data;
  assign _zz_541_ = sprReadBU_payload_data;
  assign _zz_542_ = sprReadBU_payload_data;
  assign _zz_543_ = sprReadBU_payload_data;
  assign _zz_544_ = sprReadBU_payload_data;
  assign _zz_545_ = sprReadBU_payload_data;
  assign _zz_546_ = sprReadBU_payload_data;
  assign _zz_547_ = sprReadBU_payload_data;
  assign _zz_548_ = sprReadBU_payload_data;
  assign _zz_549_ = sprReadBU_payload_data;
  assign _zz_550_ = sprReadBU_payload_data;
  assign _zz_551_ = sprReadBU_payload_data;
  assign _zz_552_ = (5'h1f - execute_INSTRUCTION[10 : 6]);
  assign _zz_553_ = ((3'b111) - execute_INSTRUCTION[25 : 23]);
  assign _zz_554_ = 32'h0;
  assign _zz_555_ = 32'h0;
  assign _zz_556_ = 32'hffffffff;
  assign _zz_557_ = ({(1'b0),SRC2_ra} + {(1'b0),SRC2_rb});
  assign _zz_558_ = {32'd0, SRC2_cin};
  assign _zz_559_ = SRC2_ra;
  assign _zz_560_ = SRC2_rb;
  assign _zz_561_ = {{14{writeBack_MUL_LOW[51]}}, writeBack_MUL_LOW};
  assign _zz_562_ = ({32'd0,writeBack_MUL_HH} <<< 32);
  assign _zz_563_ = MUL3_result[63 : 32];
  assign _zz_564_ = writeBack_MUL_LOW[31 : 0];
  assign _zz_565_ = MULDIV1_counter_willIncrement;
  assign _zz_566_ = {5'd0, _zz_565_};
  assign _zz_567_ = {1'd0, MULDIV_rs2};
  assign _zz_568_ = MULDIV1_stage_0_remainderMinusDenominator[31:0];
  assign _zz_569_ = MULDIV1_stage_0_remainderShifted[31:0];
  assign _zz_570_ = {_zz_273_,(! MULDIV1_stage_0_remainderMinusDenominator[32])};
  assign _zz_571_ = _zz_572_;
  assign _zz_572_ = _zz_573_;
  assign _zz_573_ = ({1'b0,(MULDIV1_needRevert ? (~ _zz_274_) : _zz_274_)} + _zz_575_);
  assign _zz_574_ = MULDIV1_needRevert;
  assign _zz_575_ = {32'd0, _zz_574_};
  assign _zz_576_ = _zz_279_;
  assign _zz_577_ = {32'd0, _zz_576_};
  assign _zz_578_ = _zz_278_;
  assign _zz_579_ = {31'd0, _zz_578_};
  assign _zz_580_ = (5'h1f - execute_BranchPlugin_crBusPort_bt);
  assign _zz_581_ = (5'h1f - execute_BranchPlugin_crBusPort_ba);
  assign _zz_582_ = (5'h1f - execute_BranchPlugin_crBusPort_bb);
  assign _zz_583_ = (5'h1f - execute_BranchPlugin_crBusPort_bt);
  assign _zz_584_ = (5'h1f - execute_BranchPlugin_crBusPort_ba);
  assign _zz_585_ = (5'h1f - execute_BranchPlugin_crBusPort_bb);
  assign _zz_586_ = (5'h1f - execute_BranchPlugin_crBusPort_bt);
  assign _zz_587_ = (5'h1f - execute_BranchPlugin_crBusPort_ba);
  assign _zz_588_ = (5'h1f - execute_BranchPlugin_crBusPort_bb);
  assign _zz_589_ = (5'h1f - execute_BranchPlugin_crBusPort_bt);
  assign _zz_590_ = (5'h1f - execute_BranchPlugin_crBusPort_ba);
  assign _zz_591_ = (5'h1f - execute_BranchPlugin_crBusPort_bb);
  assign _zz_592_ = (5'h1f - execute_BranchPlugin_crBusPort_bt);
  assign _zz_593_ = (5'h1f - execute_BranchPlugin_crBusPort_ba);
  assign _zz_594_ = (5'h1f - execute_BranchPlugin_crBusPort_bb);
  assign _zz_595_ = (5'h1f - execute_BranchPlugin_crBusPort_bt);
  assign _zz_596_ = (5'h1f - execute_BranchPlugin_crBusPort_ba);
  assign _zz_597_ = (5'h1f - execute_BranchPlugin_crBusPort_bb);
  assign _zz_598_ = (5'h1f - execute_BranchPlugin_crBusPort_bt);
  assign _zz_599_ = (5'h1f - execute_BranchPlugin_crBusPort_ba);
  assign _zz_600_ = (5'h1f - execute_BranchPlugin_crBusPort_bb);
  assign _zz_601_ = (5'h1f - execute_BranchPlugin_crBusPort_bt);
  assign _zz_602_ = (5'h1f - execute_BranchPlugin_crBusPort_ba);
  assign _zz_603_ = (5'h1f - execute_BranchPlugin_crBusPort_bb);
  assign _zz_604_ = execute_BranchPlugin_li;
  assign _zz_605_ = execute_BranchPlugin_bd;
  assign _zz_606_ = ($signed(execute_BranchPlugin_branch_tgt1) + $signed(execute_BranchPlugin_branch_tgt2));
  assign _zz_607_ = ($signed(execute_BranchPlugin_branch_tgt1) + $signed(execute_BranchPlugin_branch_tgt2));
  assign _zz_608_ = ((2'b11) - execute_BranchPlugin_crbiBit);
  assign _zz_609_ = (_zz_611_ + 5'h1c);
  assign _zz_610_ = ((2'b11) - execute_BranchPlugin_crbiBit);
  assign _zz_611_ = {3'd0, _zz_610_};
  assign _zz_612_ = (_zz_614_ + 5'h18);
  assign _zz_613_ = ((2'b11) - execute_BranchPlugin_crbiBit);
  assign _zz_614_ = {3'd0, _zz_613_};
  assign _zz_615_ = (_zz_617_ + 5'h14);
  assign _zz_616_ = ((2'b11) - execute_BranchPlugin_crbiBit);
  assign _zz_617_ = {3'd0, _zz_616_};
  assign _zz_618_ = (_zz_620_ + 5'h10);
  assign _zz_619_ = ((2'b11) - execute_BranchPlugin_crbiBit);
  assign _zz_620_ = {3'd0, _zz_619_};
  assign _zz_621_ = (_zz_623_ + (4'b1100));
  assign _zz_622_ = ((2'b11) - execute_BranchPlugin_crbiBit);
  assign _zz_623_ = {2'd0, _zz_622_};
  assign _zz_624_ = (_zz_626_ + (4'b1000));
  assign _zz_625_ = ((2'b11) - execute_BranchPlugin_crbiBit);
  assign _zz_626_ = {2'd0, _zz_625_};
  assign _zz_627_ = (_zz_629_ + (3'b100));
  assign _zz_628_ = ((2'b11) - execute_BranchPlugin_crbiBit);
  assign _zz_629_ = {1'd0, _zz_628_};
  assign _zz_630_ = (_zz_631_ + (2'b00));
  assign _zz_631_ = ((2'b11) - execute_BranchPlugin_crbiBit);
  assign _zz_632_ = (_zz_336_ & (~ _zz_633_));
  assign _zz_633_ = (_zz_336_ - (2'b01));
  assign _zz_634_ = execute_SRC1;
  assign _zz_635_ = execute_SRC2;
  assign _zz_636_ = execute_SRC2;
  assign _zz_637_ = execute_SRC1;
  assign _zz_638_ = execute_SRC1;
  assign _zz_639_ = execute_SPRPLUGIN_si;
  assign _zz_640_ = execute_SPRPLUGIN_si;
  assign _zz_641_ = execute_SRC1;
  assign _zz_642_ = execute_SRC1[23 : 23];
  assign _zz_643_ = execute_SRC1[8 : 8];
  assign _zz_644_ = execute_SRC1[11 : 11];
  assign _zz_645_ = execute_SRC1[2 : 2];
  assign _zz_646_ = execute_SRC1[5 : 5];
  assign _zz_647_ = execute_SRC1[14 : 14];
  assign _zz_648_ = execute_SRC1[13 : 13];
  assign _zz_649_ = execute_SRC1[4 : 4];
  assign _zz_650_ = execute_SRC1[25 : 25];
  assign _zz_651_ = execute_SRC1[1 : 1];
  assign _zz_652_ = execute_SRC1[12 : 12];
  assign _zz_653_ = execute_SRC1[15 : 15];
  assign _zz_654_ = execute_SRC1[0 : 0];
  assign _zz_655_ = (iBus_cmd_payload_address >>> 5);
  assign _zz_656_ = {IBusCachedPlugin_predictor_historyWriteDelayPatched_payload_data_target,{IBusCachedPlugin_predictor_historyWriteDelayPatched_payload_data_branchWish,IBusCachedPlugin_predictor_historyWriteDelayPatched_payload_data_source}};
  assign _zz_657_ = 1'b1;
  assign _zz_658_ = 1'b1;
  assign _zz_659_ = 1'b1;
  assign _zz_660_ = {_zz_135_,_zz_134_};
  assign _zz_661_ = ((decode_INSTRUCTION & 32'hb4000000) == 32'h20000000);
  assign _zz_662_ = {((decode_INSTRUCTION & 32'hd4000000) == 32'h40000000),{_zz_215_,{_zz_180_,{((decode_INSTRUCTION & 32'hcc100000) == 32'h80100000),{_zz_175_,{_zz_174_,{_zz_186_,{_zz_663_,_zz_664_}}}}}}}};
  assign _zz_663_ = ((decode_INSTRUCTION & 32'hd4100000) == 32'h80100000);
  assign _zz_664_ = {_zz_185_,{_zz_182_,{_zz_178_,{_zz_177_,{_zz_176_,{((decode_INSTRUCTION & _zz_665_) == 32'h98020000),{_zz_170_,{_zz_666_,{_zz_667_,_zz_668_}}}}}}}}};
  assign _zz_665_ = 32'hbc020000;
  assign _zz_666_ = ((decode_INSTRUCTION & 32'hf8100000) == 32'h38100000);
  assign _zz_667_ = _zz_169_;
  assign _zz_668_ = {((decode_INSTRUCTION & 32'hbc080000) == 32'h98080000),{((decode_INSTRUCTION & 32'hbc100000) == 32'h98100000),{_zz_172_,{_zz_171_,{(_zz_669_ == _zz_670_),{_zz_671_,{_zz_672_,_zz_673_}}}}}}};
  assign _zz_669_ = (decode_INSTRUCTION & 32'hbc040000);
  assign _zz_670_ = 32'h98040000;
  assign _zz_671_ = ((decode_INSTRUCTION & 32'hfc200000) == 32'hd8200000);
  assign _zz_672_ = _zz_221_;
  assign _zz_673_ = {((decode_INSTRUCTION & 32'hfc000003) == 32'h44000001),{((decode_INSTRUCTION & 32'hd41f0000) == 32'h80000000),{((decode_INSTRUCTION & _zz_674_) == 32'h80000000),{(_zz_675_ == _zz_676_),{_zz_677_,{_zz_678_,_zz_679_}}}}}};
  assign _zz_674_ = 32'he41f0000;
  assign _zz_675_ = (decode_INSTRUCTION & 32'hcc1f0000);
  assign _zz_676_ = 32'h80000000;
  assign _zz_677_ = ((decode_INSTRUCTION & 32'hf81f0000) == 32'h38000000);
  assign _zz_678_ = ((decode_INSTRUCTION & 32'hfc3e0000) == 32'hd8000000);
  assign _zz_679_ = {((decode_INSTRUCTION & 32'hfc00003e) == 32'h4c000004),{((decode_INSTRUCTION & 32'hfc02003e) == 32'h7c02001e),{((decode_INSTRUCTION & _zz_680_) == 32'h7c10001e),{(_zz_681_ == _zz_682_),{_zz_683_,{_zz_684_,_zz_685_}}}}}};
  assign _zz_680_ = 32'hfc10003e;
  assign _zz_681_ = (decode_INSTRUCTION & 32'hfc08003e);
  assign _zz_682_ = 32'h7c08001e;
  assign _zz_683_ = ((decode_INSTRUCTION & 32'hfc04003e) == 32'h7c04001e);
  assign _zz_684_ = ((decode_INSTRUCTION & 32'hfc01003e) == 32'h7c01001e);
  assign _zz_685_ = {((decode_INSTRUCTION & 32'hfc00033e) == 32'h7c000316),{((decode_INSTRUCTION & 32'hfc0003ba) == 32'h7c000190),{((decode_INSTRUCTION & _zz_686_) == 32'h7c000110),{(_zz_687_ == _zz_688_),{_zz_689_,{_zz_690_,_zz_691_}}}}}};
  assign _zz_686_ = 32'hfc00037a;
  assign _zz_687_ = (decode_INSTRUCTION & 32'hfc0003da);
  assign _zz_688_ = 32'h7c000010;
  assign _zz_689_ = ((decode_INSTRUCTION & 32'hfc00067e) == 32'h7c00006e);
  assign _zz_690_ = ((decode_INSTRUCTION & 32'hfc00057e) == 32'h7c00006e);
  assign _zz_691_ = {((decode_INSTRUCTION & 32'hfc0004fe) == 32'h7c00006e),{((decode_INSTRUCTION & 32'hfc00073e) == 32'h7c000338),{((decode_INSTRUCTION & _zz_692_) == 32'h7c000038),{(_zz_693_ == _zz_694_),{_zz_695_,{_zz_696_,_zz_697_}}}}}};
  assign _zz_692_ = 32'hfc0005be;
  assign _zz_693_ = (decode_INSTRUCTION & 32'hfc0003fc);
  assign _zz_694_ = 32'h7c000214;
  assign _zz_695_ = ((decode_INSTRUCTION & 32'hfc00037e) == 32'h7c000050);
  assign _zz_696_ = ((decode_INSTRUCTION & 32'hfc0007be) == 32'h7c000734);
  assign _zz_697_ = {((decode_INSTRUCTION & 32'hfc04067e) == 32'h7c04002e),{((decode_INSTRUCTION & 32'hfc02067e) == 32'h7c02002e),{((decode_INSTRUCTION & _zz_698_) == 32'h7c0000f4),{(_zz_699_ == _zz_700_),{_zz_701_,{_zz_702_,_zz_703_}}}}}};
  assign _zz_698_ = 32'hfc0005fe;
  assign _zz_699_ = (decode_INSTRUCTION & 32'hfc0804fe);
  assign _zz_700_ = 32'h7c08002e;
  assign _zz_701_ = ((decode_INSTRUCTION & 32'hfc02057e) == 32'h7c02002e);
  assign _zz_702_ = ((decode_INSTRUCTION & 32'hfc04057e) == 32'h7c04002e);
  assign _zz_703_ = {((decode_INSTRUCTION & 32'hfc08057e) == 32'h7c08002e),{((decode_INSTRUCTION & 32'hfc01057e) == 32'h7c01002e),{((decode_INSTRUCTION & _zz_704_) == 32'h7c10002e),{(_zz_705_ == _zz_706_),{_zz_707_,{_zz_708_,_zz_709_}}}}}};
  assign _zz_704_ = 32'hfc10067e;
  assign _zz_705_ = (decode_INSTRUCTION & 32'hfc0204fe);
  assign _zz_706_ = 32'h7c02002e;
  assign _zz_707_ = ((decode_INSTRUCTION & 32'hfc01067e) == 32'h7c01002e);
  assign _zz_708_ = ((decode_INSTRUCTION & 32'hfc0404fe) == 32'h7c04002e);
  assign _zz_709_ = {((decode_INSTRUCTION & 32'hfc0006fe) == 32'h7c0002a6),{((decode_INSTRUCTION & 32'hfc1004fe) == 32'h7c10002e),{((decode_INSTRUCTION & _zz_710_) == 32'h7c01002e),{(_zz_711_ == _zz_712_),{_zz_713_,{_zz_714_,_zz_715_}}}}}};
  assign _zz_710_ = 32'hfc0104fe;
  assign _zz_711_ = (decode_INSTRUCTION & 32'hfc10057e);
  assign _zz_712_ = 32'h7c10002e;
  assign _zz_713_ = ((decode_INSTRUCTION & 32'hfc08067e) == 32'h7c08002e);
  assign _zz_714_ = ((decode_INSTRUCTION & 32'hfc00077e) == 32'h7c000078);
  assign _zz_715_ = {((decode_INSTRUCTION & 32'hfc0007be) == 32'h7c000630),{((decode_INSTRUCTION & 32'hfc00077e) == 32'h7c000026),{((decode_INSTRUCTION & _zz_716_) == 32'h7c000124),{(_zz_717_ == _zz_718_),{_zz_719_,{_zz_720_,_zz_721_}}}}}};
  assign _zz_716_ = 32'hfc0007ee;
  assign _zz_717_ = (decode_INSTRUCTION & 32'hfc00077e);
  assign _zz_718_ = 32'h7c000016;
  assign _zz_719_ = ((decode_INSTRUCTION & 32'hfc0007de) == 32'h7c000100);
  assign _zz_720_ = _zz_192_;
  assign _zz_721_ = {((decode_INSTRUCTION & 32'hfc0006fe) == 32'h4c000242),{((decode_INSTRUCTION & 32'hfc0007be) == 32'h4c000182),{((decode_INSTRUCTION & _zz_722_) == 32'h4c000182),{(_zz_723_ == _zz_724_),{_zz_725_,{_zz_726_,_zz_727_}}}}}};
  assign _zz_722_ = 32'hfc0005fe;
  assign _zz_723_ = (decode_INSTRUCTION & 32'hfc0007be);
  assign _zz_724_ = 32'h4c000202;
  assign _zz_725_ = ((decode_INSTRUCTION & 32'hfc0007f6) == 32'h7c000000);
  assign _zz_726_ = ((decode_INSTRUCTION & 32'hfc0007be) == 32'h4c000420);
  assign _zz_727_ = {((decode_INSTRUCTION & 32'hfc00077e) == 32'h4c000102),{((decode_INSTRUCTION & 32'hfc0007be) == 32'h7c000000),{((decode_INSTRUCTION & _zz_728_) == 32'h4c000042),{(_zz_729_ == _zz_730_),{_zz_731_,{_zz_732_,_zz_733_}}}}}};
  assign _zz_728_ = 32'hfc0005fe;
  assign _zz_729_ = (decode_INSTRUCTION & 32'hfc0007de);
  assign _zz_730_ = 32'h4c000000;
  assign _zz_731_ = ((decode_INSTRUCTION & 32'hfc0007fe) == 32'h7c0007ac);
  assign _zz_732_ = ((decode_INSTRUCTION & 32'hfc0007fe) == 32'h7c0001d6);
  assign _zz_733_ = {((decode_INSTRUCTION & 32'hfc1f003e) == 32'h7c00001e),{((decode_INSTRUCTION & 32'hfc0007fe) == 32'h7c000480),{((decode_INSTRUCTION & _zz_734_) == 32'h4c00012c),{(_zz_735_ == _zz_736_),{_zz_737_,{_zz_738_,_zz_739_}}}}}};
  assign _zz_734_ = 32'hfc0007fe;
  assign _zz_735_ = (decode_INSTRUCTION & 32'hfc0007fe);
  assign _zz_736_ = 32'h4c000064;
  assign _zz_737_ = ((decode_INSTRUCTION & 32'hfc0007fe) == 32'h4c0000a4);
  assign _zz_738_ = ((decode_INSTRUCTION & 32'hfc6007fe) == 32'h4c0004ac);
  assign _zz_739_ = {((decode_INSTRUCTION & 32'hfc1f04fe) == 32'h7c00002e),{((decode_INSTRUCTION & 32'hfc1f057e) == 32'h7c00002e),((decode_INSTRUCTION & 32'hfc1f067e) == 32'h7c00002e)}};
  assign _zz_740_ = (decode_INSTRUCTION & 32'hf8000000);
  assign _zz_741_ = 32'h70000000;
  assign _zz_742_ = ((decode_INSTRUCTION & 32'hbc000000) == 32'h34000000);
  assign _zz_743_ = _zz_184_;
  assign _zz_744_ = ((decode_INSTRUCTION & _zz_753_) == 32'h70000000);
  assign _zz_745_ = (decode_INSTRUCTION & 32'h00000100);
  assign _zz_746_ = 32'h00000100;
  assign _zz_747_ = ((decode_INSTRUCTION & 32'h00000180) == 32'h00000080);
  assign _zz_748_ = {(_zz_754_ == _zz_755_),{_zz_222_,_zz_756_}};
  assign _zz_749_ = (3'b000);
  assign _zz_750_ = ({_zz_158_,_zz_757_} != (2'b00));
  assign _zz_751_ = (_zz_758_ != (1'b0));
  assign _zz_752_ = {(_zz_759_ != _zz_760_),{_zz_761_,{_zz_762_,_zz_763_}}};
  assign _zz_753_ = 32'h70000538;
  assign _zz_754_ = (decode_INSTRUCTION & 32'h00000400);
  assign _zz_755_ = 32'h00000400;
  assign _zz_756_ = ((decode_INSTRUCTION & 32'h00000300) == 32'h00000200);
  assign _zz_757_ = ((decode_INSTRUCTION & 32'h80000100) == 32'h00000100);
  assign _zz_758_ = ((decode_INSTRUCTION & 32'h7800032a) == 32'h78000002);
  assign _zz_759_ = {_zz_164_,{_zz_160_,{_zz_764_,_zz_765_}}};
  assign _zz_760_ = (4'b0000);
  assign _zz_761_ = ({_zz_766_,{_zz_767_,_zz_768_}} != 8'h0);
  assign _zz_762_ = ({_zz_769_,_zz_770_} != 20'h0);
  assign _zz_763_ = {(_zz_771_ != _zz_772_),{_zz_773_,{_zz_774_,_zz_775_}}};
  assign _zz_764_ = (_zz_776_ == _zz_777_);
  assign _zz_765_ = _zz_163_;
  assign _zz_766_ = ((decode_INSTRUCTION & _zz_778_) == 32'ha8100000);
  assign _zz_767_ = (_zz_779_ == _zz_780_);
  assign _zz_768_ = {_zz_781_,{_zz_782_,_zz_783_}};
  assign _zz_769_ = (_zz_784_ == _zz_785_);
  assign _zz_770_ = {_zz_220_,{_zz_786_,_zz_787_}};
  assign _zz_771_ = {_zz_788_,_zz_789_};
  assign _zz_772_ = (2'b00);
  assign _zz_773_ = ({_zz_790_,_zz_791_} != (2'b00));
  assign _zz_774_ = (_zz_792_ != _zz_793_);
  assign _zz_775_ = {_zz_794_,{_zz_795_,_zz_796_}};
  assign _zz_776_ = (decode_INSTRUCTION & 32'h78000318);
  assign _zz_777_ = 32'h78000200;
  assign _zz_778_ = 32'ha8100000;
  assign _zz_779_ = (decode_INSTRUCTION & 32'hfc000000);
  assign _zz_780_ = 32'hac000000;
  assign _zz_781_ = ((decode_INSTRUCTION & _zz_797_) == 32'ha8040000);
  assign _zz_782_ = (_zz_798_ == _zz_799_);
  assign _zz_783_ = {_zz_800_,{_zz_801_,_zz_802_}};
  assign _zz_784_ = (decode_INSTRUCTION & 32'hc0100000);
  assign _zz_785_ = 32'h80100000;
  assign _zz_786_ = _zz_167_;
  assign _zz_787_ = {_zz_217_,{_zz_803_,_zz_804_}};
  assign _zz_788_ = ((decode_INSTRUCTION & _zz_805_) == 32'h00000040);
  assign _zz_789_ = ((decode_INSTRUCTION & _zz_806_) == 32'h0);
  assign _zz_790_ = _zz_222_;
  assign _zz_791_ = (_zz_807_ == _zz_808_);
  assign _zz_792_ = {_zz_809_,{_zz_810_,_zz_811_}};
  assign _zz_793_ = (3'b000);
  assign _zz_794_ = ({_zz_812_,_zz_813_} != 20'h0);
  assign _zz_795_ = (_zz_814_ != _zz_815_);
  assign _zz_796_ = {_zz_816_,{_zz_817_,_zz_818_}};
  assign _zz_797_ = 32'hfc040000;
  assign _zz_798_ = (decode_INSTRUCTION & 32'hfc080000);
  assign _zz_799_ = 32'ha8080000;
  assign _zz_800_ = ((decode_INSTRUCTION & _zz_819_) == 32'ha8020000);
  assign _zz_801_ = (_zz_820_ == _zz_821_);
  assign _zz_802_ = {_zz_822_,_zz_823_};
  assign _zz_803_ = _zz_186_;
  assign _zz_804_ = {_zz_185_,{_zz_824_,_zz_825_}};
  assign _zz_805_ = 32'h000000c0;
  assign _zz_806_ = 32'h00000280;
  assign _zz_807_ = (decode_INSTRUCTION & 32'h00000180);
  assign _zz_808_ = 32'h00000100;
  assign _zz_809_ = ((decode_INSTRUCTION & _zz_826_) == 32'h00000300);
  assign _zz_810_ = (_zz_827_ == _zz_828_);
  assign _zz_811_ = (_zz_829_ == _zz_830_);
  assign _zz_812_ = (_zz_831_ == _zz_832_);
  assign _zz_813_ = {_zz_833_,{_zz_834_,_zz_835_}};
  assign _zz_814_ = _zz_212_;
  assign _zz_815_ = (1'b0);
  assign _zz_816_ = ({_zz_836_,_zz_837_} != (4'b0000));
  assign _zz_817_ = (_zz_838_ != _zz_839_);
  assign _zz_818_ = {_zz_840_,{_zz_841_,_zz_842_}};
  assign _zz_819_ = 32'hfc020000;
  assign _zz_820_ = (decode_INSTRUCTION & 32'hfc010000);
  assign _zz_821_ = 32'ha8010000;
  assign _zz_822_ = ((decode_INSTRUCTION & _zz_843_) == 32'h780002a8);
  assign _zz_823_ = ((decode_INSTRUCTION & _zz_844_) == 32'ha8000000);
  assign _zz_824_ = _zz_183_;
  assign _zz_825_ = {_zz_182_,{_zz_845_,_zz_846_}};
  assign _zz_826_ = 32'h00000300;
  assign _zz_827_ = (decode_INSTRUCTION & 32'h00000140);
  assign _zz_828_ = 32'h00000140;
  assign _zz_829_ = (decode_INSTRUCTION & 32'h00000240);
  assign _zz_830_ = 32'h00000240;
  assign _zz_831_ = (decode_INSTRUCTION & 32'h60000030);
  assign _zz_832_ = 32'h60000030;
  assign _zz_833_ = ((decode_INSTRUCTION & _zz_847_) == 32'h60000020);
  assign _zz_834_ = (_zz_848_ == _zz_849_);
  assign _zz_835_ = {_zz_219_,{_zz_850_,_zz_851_}};
  assign _zz_836_ = (_zz_852_ == _zz_853_);
  assign _zz_837_ = {_zz_201_,{_zz_854_,_zz_855_}};
  assign _zz_838_ = {_zz_201_,{_zz_856_,_zz_857_}};
  assign _zz_839_ = (4'b0000);
  assign _zz_840_ = ({_zz_858_,_zz_859_} != (4'b0000));
  assign _zz_841_ = (_zz_860_ != _zz_861_);
  assign _zz_842_ = {_zz_862_,{_zz_863_,_zz_864_}};
  assign _zz_843_ = 32'h780003a8;
  assign _zz_844_ = 32'hfc0f0000;
  assign _zz_845_ = _zz_181_;
  assign _zz_846_ = {_zz_180_,{_zz_865_,_zz_866_}};
  assign _zz_847_ = 32'h60000024;
  assign _zz_848_ = (decode_INSTRUCTION & 32'hd0100000);
  assign _zz_849_ = 32'h90100000;
  assign _zz_850_ = _zz_218_;
  assign _zz_851_ = {_zz_214_,{_zz_867_,_zz_868_}};
  assign _zz_852_ = (decode_INSTRUCTION & 32'hbc000002);
  assign _zz_853_ = 32'h04000000;
  assign _zz_854_ = (_zz_869_ == _zz_870_);
  assign _zz_855_ = (_zz_871_ == _zz_872_);
  assign _zz_856_ = _zz_221_;
  assign _zz_857_ = {_zz_168_,_zz_196_};
  assign _zz_858_ = _zz_201_;
  assign _zz_859_ = {_zz_221_,{_zz_873_,_zz_874_}};
  assign _zz_860_ = {_zz_875_,_zz_876_};
  assign _zz_861_ = (2'b00);
  assign _zz_862_ = ({_zz_877_,_zz_878_} != 8'h0);
  assign _zz_863_ = (_zz_879_ != _zz_880_);
  assign _zz_864_ = {_zz_881_,{_zz_882_,_zz_883_}};
  assign _zz_865_ = _zz_179_;
  assign _zz_866_ = {_zz_178_,{_zz_884_,_zz_885_}};
  assign _zz_867_ = _zz_213_;
  assign _zz_868_ = {_zz_195_,{_zz_886_,_zz_887_}};
  assign _zz_869_ = (decode_INSTRUCTION & 32'h740004a2);
  assign _zz_870_ = 32'h440000a0;
  assign _zz_871_ = (decode_INSTRUCTION & 32'h74000462);
  assign _zz_872_ = 32'h44000060;
  assign _zz_873_ = _zz_197_;
  assign _zz_874_ = _zz_190_;
  assign _zz_875_ = ((decode_INSTRUCTION & _zz_888_) == 32'h28000000);
  assign _zz_876_ = ((decode_INSTRUCTION & _zz_889_) == 32'h78000040);
  assign _zz_877_ = (_zz_890_ == _zz_891_);
  assign _zz_878_ = {_zz_892_,{_zz_893_,_zz_894_}};
  assign _zz_879_ = {_zz_895_,{_zz_896_,_zz_897_}};
  assign _zz_880_ = (3'b000);
  assign _zz_881_ = ({_zz_898_,_zz_899_} != 25'h0);
  assign _zz_882_ = (_zz_900_ != _zz_901_);
  assign _zz_883_ = {_zz_902_,{_zz_903_,_zz_904_}};
  assign _zz_884_ = _zz_177_;
  assign _zz_885_ = {_zz_176_,{_zz_905_,_zz_906_}};
  assign _zz_886_ = (_zz_907_ == _zz_908_);
  assign _zz_887_ = {_zz_909_,{_zz_910_,_zz_911_}};
  assign _zz_888_ = 32'hfc000000;
  assign _zz_889_ = 32'h78000070;
  assign _zz_890_ = (decode_INSTRUCTION & 32'hd8000030);
  assign _zz_891_ = 32'h58000010;
  assign _zz_892_ = ((decode_INSTRUCTION & _zz_912_) == 32'h5c000000);
  assign _zz_893_ = (_zz_913_ == _zz_914_);
  assign _zz_894_ = {_zz_915_,{_zz_916_,_zz_917_}};
  assign _zz_895_ = ((decode_INSTRUCTION & _zz_918_) == 32'h78000020);
  assign _zz_896_ = (_zz_919_ == _zz_920_);
  assign _zz_897_ = (_zz_921_ == _zz_922_);
  assign _zz_898_ = (_zz_923_ == _zz_924_);
  assign _zz_899_ = {_zz_203_,{_zz_925_,_zz_926_}};
  assign _zz_900_ = {_zz_927_,_zz_928_};
  assign _zz_901_ = (2'b00);
  assign _zz_902_ = ({_zz_929_,_zz_930_} != (2'b00));
  assign _zz_903_ = (_zz_931_ != _zz_932_);
  assign _zz_904_ = {_zz_933_,{_zz_934_,_zz_935_}};
  assign _zz_905_ = _zz_175_;
  assign _zz_906_ = {_zz_936_,_zz_937_};
  assign _zz_907_ = (decode_INSTRUCTION & _zz_938_);
  assign _zz_908_ = 32'h60000128;
  assign _zz_909_ = (_zz_939_ == _zz_940_);
  assign _zz_910_ = _zz_941_;
  assign _zz_911_ = {_zz_942_,_zz_943_};
  assign _zz_912_ = 32'hfc000000;
  assign _zz_913_ = (decode_INSTRUCTION & _zz_944_);
  assign _zz_914_ = 32'h58000500;
  assign _zz_915_ = (_zz_945_ == _zz_946_);
  assign _zz_916_ = _zz_947_;
  assign _zz_917_ = {_zz_948_,_zz_949_};
  assign _zz_918_ = 32'h78000034;
  assign _zz_919_ = (decode_INSTRUCTION & _zz_950_);
  assign _zz_920_ = 32'h78000400;
  assign _zz_921_ = (decode_INSTRUCTION & _zz_951_);
  assign _zz_922_ = 32'h4c000000;
  assign _zz_923_ = (decode_INSTRUCTION & _zz_952_);
  assign _zz_924_ = 32'h60000010;
  assign _zz_925_ = _zz_953_;
  assign _zz_926_ = {_zz_954_,_zz_955_};
  assign _zz_927_ = (_zz_956_ == _zz_957_);
  assign _zz_928_ = (_zz_958_ == _zz_959_);
  assign _zz_929_ = _zz_960_;
  assign _zz_930_ = _zz_207_;
  assign _zz_931_ = {_zz_961_,_zz_962_};
  assign _zz_932_ = (3'b000);
  assign _zz_933_ = (_zz_963_ != _zz_964_);
  assign _zz_934_ = _zz_965_;
  assign _zz_935_ = {_zz_966_,_zz_967_};
  assign _zz_936_ = _zz_174_;
  assign _zz_937_ = {_zz_968_,_zz_969_};
  assign _zz_938_ = 32'h60000528;
  assign _zz_939_ = (decode_INSTRUCTION & _zz_970_);
  assign _zz_940_ = 32'h60000300;
  assign _zz_941_ = (_zz_971_ == _zz_972_);
  assign _zz_942_ = _zz_973_;
  assign _zz_943_ = {_zz_974_,_zz_975_};
  assign _zz_944_ = 32'hd8000508;
  assign _zz_945_ = (decode_INSTRUCTION & _zz_976_);
  assign _zz_946_ = 32'h58000200;
  assign _zz_947_ = (_zz_977_ == _zz_978_);
  assign _zz_948_ = _zz_979_;
  assign _zz_949_ = {_zz_980_,_zz_981_};
  assign _zz_950_ = 32'h78000418;
  assign _zz_951_ = 32'h7c000364;
  assign _zz_952_ = 32'h60000010;
  assign _zz_953_ = (_zz_982_ == _zz_983_);
  assign _zz_954_ = _zz_984_;
  assign _zz_955_ = {_zz_985_,_zz_986_};
  assign _zz_956_ = (decode_INSTRUCTION & _zz_987_);
  assign _zz_957_ = 32'h20000000;
  assign _zz_958_ = (decode_INSTRUCTION & _zz_988_);
  assign _zz_959_ = 32'h08000000;
  assign _zz_960_ = (_zz_989_ == _zz_990_);
  assign _zz_961_ = _zz_214_;
  assign _zz_962_ = {_zz_991_,_zz_992_};
  assign _zz_963_ = _zz_993_;
  assign _zz_964_ = (1'b0);
  assign _zz_965_ = (_zz_994_ != _zz_995_);
  assign _zz_966_ = _zz_996_;
  assign _zz_967_ = {_zz_997_,_zz_998_};
  assign _zz_968_ = (_zz_999_ == _zz_1000_);
  assign _zz_969_ = {_zz_1001_,{_zz_1002_,_zz_1003_}};
  assign _zz_970_ = 32'h60000318;
  assign _zz_971_ = (decode_INSTRUCTION & 32'hf4020000);
  assign _zz_972_ = 32'h90020000;
  assign _zz_973_ = ((decode_INSTRUCTION & _zz_1004_) == 32'h90040000);
  assign _zz_974_ = (_zz_1005_ == _zz_1006_);
  assign _zz_975_ = {_zz_1007_,{_zz_1008_,_zz_1009_}};
  assign _zz_976_ = 32'hd8000604;
  assign _zz_977_ = (decode_INSTRUCTION & 32'hd8000504);
  assign _zz_978_ = 32'h58000000;
  assign _zz_979_ = ((decode_INSTRUCTION & _zz_1010_) == 32'h58000028);
  assign _zz_980_ = (_zz_1011_ == _zz_1012_);
  assign _zz_981_ = (_zz_1013_ == _zz_1014_);
  assign _zz_982_ = (decode_INSTRUCTION & 32'h60000060);
  assign _zz_983_ = 32'h60000060;
  assign _zz_984_ = ((decode_INSTRUCTION & _zz_1015_) == 32'h60000020);
  assign _zz_985_ = _zz_220_;
  assign _zz_986_ = {_zz_1016_,{_zz_1017_,_zz_1018_}};
  assign _zz_987_ = 32'h20000040;
  assign _zz_988_ = 32'h28000000;
  assign _zz_989_ = (decode_INSTRUCTION & 32'h7800028a);
  assign _zz_990_ = 32'h78000202;
  assign _zz_991_ = _zz_213_;
  assign _zz_992_ = (_zz_1019_ == _zz_1020_);
  assign _zz_993_ = ((decode_INSTRUCTION & _zz_1021_) == 32'h78000300);
  assign _zz_994_ = {_zz_212_,{_zz_1022_,_zz_1023_}};
  assign _zz_995_ = 5'h0;
  assign _zz_996_ = ({_zz_1024_,_zz_1025_} != (2'b00));
  assign _zz_997_ = (_zz_1026_ != _zz_1027_);
  assign _zz_998_ = {_zz_1028_,{_zz_1029_,_zz_1030_}};
  assign _zz_999_ = (decode_INSTRUCTION & 32'h78000438);
  assign _zz_1000_ = 32'h78000028;
  assign _zz_1001_ = ((decode_INSTRUCTION & _zz_1031_) == 32'h80000000);
  assign _zz_1002_ = _zz_199_;
  assign _zz_1003_ = (_zz_1032_ == _zz_1033_);
  assign _zz_1004_ = 32'hdc040000;
  assign _zz_1005_ = (decode_INSTRUCTION & 32'hf4080000);
  assign _zz_1006_ = 32'h90080000;
  assign _zz_1007_ = ((decode_INSTRUCTION & _zz_1034_) == 32'h90020000);
  assign _zz_1008_ = (_zz_1035_ == _zz_1036_);
  assign _zz_1009_ = {_zz_1037_,{_zz_1038_,_zz_1039_}};
  assign _zz_1010_ = 32'hd8000468;
  assign _zz_1011_ = (decode_INSTRUCTION & 32'hd80002c8);
  assign _zz_1012_ = 32'h58000200;
  assign _zz_1013_ = (decode_INSTRUCTION & 32'hd8000384);
  assign _zz_1014_ = 32'h58000000;
  assign _zz_1015_ = 32'h60000120;
  assign _zz_1016_ = ((decode_INSTRUCTION & _zz_1040_) == 32'h10100000);
  assign _zz_1017_ = _zz_219_;
  assign _zz_1018_ = {_zz_167_,{_zz_1041_,_zz_1042_}};
  assign _zz_1019_ = (decode_INSTRUCTION & 32'h78000150);
  assign _zz_1020_ = 32'h78000140;
  assign _zz_1021_ = 32'h780003a8;
  assign _zz_1022_ = _zz_202_;
  assign _zz_1023_ = {_zz_201_,{_zz_1043_,_zz_1044_}};
  assign _zz_1024_ = (_zz_1045_ == _zz_1046_);
  assign _zz_1025_ = _zz_168_;
  assign _zz_1026_ = {_zz_205_,_zz_204_};
  assign _zz_1027_ = (2'b00);
  assign _zz_1028_ = ({_zz_1047_,_zz_1048_} != 9'h0);
  assign _zz_1029_ = (_zz_1049_ != _zz_1050_);
  assign _zz_1030_ = {_zz_1051_,{_zz_1052_,_zz_1053_}};
  assign _zz_1031_ = 32'he40f0000;
  assign _zz_1032_ = (decode_INSTRUCTION & 32'hcc0f0000);
  assign _zz_1033_ = 32'h80000000;
  assign _zz_1034_ = 32'hdc020000;
  assign _zz_1035_ = (decode_INSTRUCTION & 32'hf4040000);
  assign _zz_1036_ = 32'h90040000;
  assign _zz_1037_ = ((decode_INSTRUCTION & _zz_1054_) == 32'h90010000);
  assign _zz_1038_ = (_zz_1055_ == _zz_1056_);
  assign _zz_1039_ = {_zz_1057_,{_zz_1058_,_zz_1059_}};
  assign _zz_1040_ = 32'hd0100000;
  assign _zz_1041_ = _zz_218_;
  assign _zz_1042_ = {_zz_217_,{_zz_1060_,_zz_1061_}};
  assign _zz_1043_ = _zz_168_;
  assign _zz_1044_ = _zz_200_;
  assign _zz_1045_ = (decode_INSTRUCTION & 32'h7c000120);
  assign _zz_1046_ = 32'h4c000120;
  assign _zz_1047_ = _zz_189_;
  assign _zz_1048_ = {_zz_188_,{_zz_1062_,_zz_1063_}};
  assign _zz_1049_ = {_zz_1064_,{_zz_1065_,_zz_1066_}};
  assign _zz_1050_ = 5'h0;
  assign _zz_1051_ = ({_zz_1067_,_zz_1068_} != 6'h0);
  assign _zz_1052_ = (_zz_1069_ != _zz_1070_);
  assign _zz_1053_ = {_zz_1071_,{_zz_1072_,_zz_1073_}};
  assign _zz_1054_ = 32'hf4010000;
  assign _zz_1055_ = (decode_INSTRUCTION & 32'hdc010000);
  assign _zz_1056_ = 32'h90010000;
  assign _zz_1057_ = ((decode_INSTRUCTION & _zz_1074_) == 32'h90080000);
  assign _zz_1058_ = (_zz_1075_ == _zz_1076_);
  assign _zz_1059_ = (_zz_1077_ == _zz_1078_);
  assign _zz_1060_ = _zz_216_;
  assign _zz_1061_ = {_zz_1079_,{_zz_1080_,_zz_1081_}};
  assign _zz_1062_ = _zz_166_;
  assign _zz_1063_ = {_zz_1082_,{_zz_1083_,_zz_1084_}};
  assign _zz_1064_ = ((decode_INSTRUCTION & _zz_1085_) == 32'h48000004);
  assign _zz_1065_ = _zz_211_;
  assign _zz_1066_ = {_zz_210_,{_zz_1086_,_zz_1087_}};
  assign _zz_1067_ = (_zz_1088_ == _zz_1089_);
  assign _zz_1068_ = {_zz_211_,{_zz_1090_,_zz_1091_}};
  assign _zz_1069_ = _zz_207_;
  assign _zz_1070_ = (1'b0);
  assign _zz_1071_ = (_zz_206_ != (1'b0));
  assign _zz_1072_ = (_zz_1092_ != _zz_1093_);
  assign _zz_1073_ = {_zz_1094_,{_zz_1095_,_zz_1096_}};
  assign _zz_1074_ = 32'hdc080000;
  assign _zz_1075_ = (decode_INSTRUCTION & 32'hdc0f0000);
  assign _zz_1076_ = 32'h90000000;
  assign _zz_1077_ = (decode_INSTRUCTION & 32'hf40f0000);
  assign _zz_1078_ = 32'h90000000;
  assign _zz_1079_ = ((decode_INSTRUCTION & _zz_1097_) == 32'h20000000);
  assign _zz_1080_ = (_zz_1098_ == _zz_1099_);
  assign _zz_1081_ = {_zz_215_,{_zz_1100_,_zz_1101_}};
  assign _zz_1082_ = ((decode_INSTRUCTION & _zz_1102_) == 32'h40000020);
  assign _zz_1083_ = (_zz_1103_ == _zz_1104_);
  assign _zz_1084_ = {_zz_1105_,{_zz_1106_,_zz_1107_}};
  assign _zz_1085_ = 32'h78000004;
  assign _zz_1086_ = _zz_209_;
  assign _zz_1087_ = _zz_208_;
  assign _zz_1088_ = (decode_INSTRUCTION & 32'hd8000000);
  assign _zz_1089_ = 32'h0;
  assign _zz_1090_ = _zz_191_;
  assign _zz_1091_ = {_zz_210_,{_zz_1108_,_zz_1109_}};
  assign _zz_1092_ = {_zz_198_,{_zz_1110_,_zz_1111_}};
  assign _zz_1093_ = (3'b000);
  assign _zz_1094_ = ({_zz_1112_,_zz_1113_} != (2'b00));
  assign _zz_1095_ = (_zz_1114_ != _zz_1115_);
  assign _zz_1096_ = {_zz_1116_,{_zz_1117_,_zz_1118_}};
  assign _zz_1097_ = 32'hac000000;
  assign _zz_1098_ = (decode_INSTRUCTION & 32'h60000128);
  assign _zz_1099_ = 32'h60000100;
  assign _zz_1100_ = _zz_177_;
  assign _zz_1101_ = {_zz_176_,{_zz_1119_,_zz_1120_}};
  assign _zz_1102_ = 32'h40000024;
  assign _zz_1103_ = (decode_INSTRUCTION & 32'h40000028);
  assign _zz_1104_ = 32'h40000020;
  assign _zz_1105_ = ((decode_INSTRUCTION & _zz_1121_) == 32'h40000400);
  assign _zz_1106_ = (_zz_1122_ == _zz_1123_);
  assign _zz_1107_ = {_zz_1124_,_zz_1125_};
  assign _zz_1108_ = _zz_209_;
  assign _zz_1109_ = _zz_208_;
  assign _zz_1110_ = _zz_206_;
  assign _zz_1111_ = (_zz_1126_ == _zz_1127_);
  assign _zz_1112_ = _zz_205_;
  assign _zz_1113_ = _zz_204_;
  assign _zz_1114_ = {_zz_1128_,{_zz_1129_,_zz_1130_}};
  assign _zz_1115_ = (3'b000);
  assign _zz_1116_ = ({_zz_1131_,_zz_1132_} != 15'h0);
  assign _zz_1117_ = (_zz_1133_ != _zz_1134_);
  assign _zz_1118_ = {_zz_1135_,{_zz_1136_,_zz_1137_}};
  assign _zz_1119_ = _zz_175_;
  assign _zz_1120_ = {_zz_174_,{_zz_1138_,_zz_1139_}};
  assign _zz_1121_ = 32'h40000414;
  assign _zz_1122_ = (decode_INSTRUCTION & 32'h40000038);
  assign _zz_1123_ = 32'h40000008;
  assign _zz_1124_ = ((decode_INSTRUCTION & _zz_1140_) == 32'h0);
  assign _zz_1125_ = ((decode_INSTRUCTION & _zz_1141_) == 32'h0);
  assign _zz_1126_ = (decode_INSTRUCTION & 32'h780005e8);
  assign _zz_1127_ = 32'h78000080;
  assign _zz_1128_ = ((decode_INSTRUCTION & _zz_1142_) == 32'h4c000100);
  assign _zz_1129_ = (_zz_1143_ == _zz_1144_);
  assign _zz_1130_ = (_zz_1145_ == _zz_1146_);
  assign _zz_1131_ = _zz_203_;
  assign _zz_1132_ = {_zz_167_,{_zz_1147_,_zz_1148_}};
  assign _zz_1133_ = {_zz_1149_,_zz_168_};
  assign _zz_1134_ = (2'b00);
  assign _zz_1135_ = ({_zz_1150_,_zz_1151_} != (2'b00));
  assign _zz_1136_ = (_zz_1152_ != _zz_1153_);
  assign _zz_1137_ = {_zz_1154_,{_zz_1155_,_zz_1156_}};
  assign _zz_1138_ = _zz_170_;
  assign _zz_1139_ = {_zz_169_,{_zz_1157_,_zz_1158_}};
  assign _zz_1140_ = 32'hf0000000;
  assign _zz_1141_ = 32'hb0000004;
  assign _zz_1142_ = 32'h7c000104;
  assign _zz_1143_ = (decode_INSTRUCTION & 32'h7c000204);
  assign _zz_1144_ = 32'h4c000200;
  assign _zz_1145_ = (decode_INSTRUCTION & 32'h7c000444);
  assign _zz_1146_ = 32'h4c000040;
  assign _zz_1147_ = _zz_177_;
  assign _zz_1148_ = {_zz_176_,{_zz_1159_,_zz_1160_}};
  assign _zz_1149_ = ((decode_INSTRUCTION & _zz_1161_) == 32'h78000300);
  assign _zz_1150_ = _zz_198_;
  assign _zz_1151_ = _zz_193_;
  assign _zz_1152_ = {_zz_197_,{_zz_1162_,_zz_1163_}};
  assign _zz_1153_ = (4'b0000);
  assign _zz_1154_ = ({_zz_1164_,_zz_1165_} != 8'h0);
  assign _zz_1155_ = (_zz_1166_ != _zz_1167_);
  assign _zz_1156_ = {_zz_1168_,{_zz_1169_,_zz_1170_}};
  assign _zz_1157_ = _zz_172_;
  assign _zz_1158_ = {_zz_1171_,{_zz_1172_,_zz_1173_}};
  assign _zz_1159_ = (_zz_1174_ == _zz_1175_);
  assign _zz_1160_ = {_zz_175_,{_zz_1176_,_zz_1177_}};
  assign _zz_1161_ = 32'h78000318;
  assign _zz_1162_ = _zz_168_;
  assign _zz_1163_ = {_zz_196_,_zz_190_};
  assign _zz_1164_ = _zz_195_;
  assign _zz_1165_ = {_zz_1178_,{_zz_1179_,_zz_1180_}};
  assign _zz_1166_ = _zz_164_;
  assign _zz_1167_ = (1'b0);
  assign _zz_1168_ = ({_zz_1181_,_zz_1182_} != 6'h0);
  assign _zz_1169_ = (_zz_1183_ != _zz_1184_);
  assign _zz_1170_ = {_zz_1185_,{_zz_1186_,_zz_1187_}};
  assign _zz_1171_ = ((decode_INSTRUCTION & _zz_1188_) == 32'h4c000004);
  assign _zz_1172_ = _zz_171_;
  assign _zz_1173_ = {_zz_199_,_zz_1189_};
  assign _zz_1174_ = (decode_INSTRUCTION & 32'h7c000000);
  assign _zz_1175_ = 32'h0c000000;
  assign _zz_1176_ = _zz_174_;
  assign _zz_1177_ = {_zz_1190_,{_zz_1191_,_zz_1192_}};
  assign _zz_1178_ = ((decode_INSTRUCTION & _zz_1193_) == 32'h50000000);
  assign _zz_1179_ = (_zz_1194_ == _zz_1195_);
  assign _zz_1180_ = {_zz_1196_,{_zz_1197_,_zz_1198_}};
  assign _zz_1181_ = _zz_159_;
  assign _zz_1182_ = {_zz_1199_,{_zz_1200_,_zz_1201_}};
  assign _zz_1183_ = {_zz_1202_,{_zz_1203_,_zz_1204_}};
  assign _zz_1184_ = (4'b0000);
  assign _zz_1185_ = ({_zz_1205_,_zz_1206_} != 6'h0);
  assign _zz_1186_ = (_zz_1207_ != _zz_1208_);
  assign _zz_1187_ = {_zz_1209_,{_zz_1210_,_zz_1211_}};
  assign _zz_1188_ = 32'h4c00002c;
  assign _zz_1189_ = (_zz_1212_ == _zz_1213_);
  assign _zz_1190_ = (_zz_1214_ == _zz_1215_);
  assign _zz_1191_ = _zz_1216_;
  assign _zz_1192_ = {_zz_1217_,_zz_1218_};
  assign _zz_1193_ = 32'hf8000000;
  assign _zz_1194_ = (decode_INSTRUCTION & _zz_1219_);
  assign _zz_1195_ = 32'h58000200;
  assign _zz_1196_ = (_zz_1220_ == _zz_1221_);
  assign _zz_1197_ = _zz_1222_;
  assign _zz_1198_ = {_zz_1223_,_zz_1224_};
  assign _zz_1199_ = (_zz_1225_ == _zz_1226_);
  assign _zz_1200_ = _zz_158_;
  assign _zz_1201_ = {_zz_1227_,_zz_1228_};
  assign _zz_1202_ = (_zz_1229_ == _zz_1230_);
  assign _zz_1203_ = _zz_1231_;
  assign _zz_1204_ = {_zz_1232_,_zz_1233_};
  assign _zz_1205_ = _zz_189_;
  assign _zz_1206_ = {_zz_1234_,_zz_1235_};
  assign _zz_1207_ = {_zz_1236_,_zz_1237_};
  assign _zz_1208_ = 11'h0;
  assign _zz_1209_ = (_zz_1238_ != _zz_1239_);
  assign _zz_1210_ = _zz_1240_;
  assign _zz_1211_ = {_zz_1241_,_zz_1242_};
  assign _zz_1212_ = (decode_INSTRUCTION & _zz_1243_);
  assign _zz_1213_ = 32'h38000000;
  assign _zz_1214_ = (decode_INSTRUCTION & _zz_1244_);
  assign _zz_1215_ = 32'h040000a0;
  assign _zz_1216_ = (_zz_1245_ == _zz_1246_);
  assign _zz_1217_ = _zz_202_;
  assign _zz_1218_ = {_zz_1247_,_zz_1248_};
  assign _zz_1219_ = 32'hd8000282;
  assign _zz_1220_ = (decode_INSTRUCTION & _zz_1249_);
  assign _zz_1221_ = 32'h58000020;
  assign _zz_1222_ = (_zz_1250_ == _zz_1251_);
  assign _zz_1223_ = _zz_1252_;
  assign _zz_1224_ = {_zz_1253_,_zz_1254_};
  assign _zz_1225_ = (decode_INSTRUCTION & _zz_1255_);
  assign _zz_1226_ = 32'h04000000;
  assign _zz_1227_ = _zz_1256_;
  assign _zz_1228_ = {_zz_1257_,_zz_1258_};
  assign _zz_1229_ = (decode_INSTRUCTION & _zz_1259_);
  assign _zz_1230_ = 32'h40000000;
  assign _zz_1231_ = (_zz_1260_ == _zz_1261_);
  assign _zz_1232_ = _zz_194_;
  assign _zz_1233_ = _zz_1262_;
  assign _zz_1234_ = _zz_166_;
  assign _zz_1235_ = {_zz_1263_,_zz_1264_};
  assign _zz_1236_ = _zz_162_;
  assign _zz_1237_ = {_zz_1265_,_zz_1266_};
  assign _zz_1238_ = _zz_193_;
  assign _zz_1239_ = (1'b0);
  assign _zz_1240_ = (_zz_1267_ != _zz_1268_);
  assign _zz_1241_ = _zz_1269_;
  assign _zz_1242_ = {_zz_1270_,_zz_1271_};
  assign _zz_1243_ = 32'hf80f0000;
  assign _zz_1244_ = 32'h340004a0;
  assign _zz_1245_ = (decode_INSTRUCTION & 32'h34000460);
  assign _zz_1246_ = 32'h04000060;
  assign _zz_1247_ = _zz_201_;
  assign _zz_1248_ = {_zz_1272_,{_zz_1273_,_zz_1274_}};
  assign _zz_1249_ = 32'hd8000124;
  assign _zz_1250_ = (decode_INSTRUCTION & 32'hd8000026);
  assign _zz_1251_ = 32'h58000004;
  assign _zz_1252_ = ((decode_INSTRUCTION & _zz_1275_) == 32'h58000200);
  assign _zz_1253_ = (_zz_1276_ == _zz_1277_);
  assign _zz_1254_ = (_zz_1278_ == _zz_1279_);
  assign _zz_1255_ = 32'h0c000000;
  assign _zz_1256_ = ((decode_INSTRUCTION & _zz_1280_) == 32'h04000000);
  assign _zz_1257_ = (_zz_1281_ == _zz_1282_);
  assign _zz_1258_ = _zz_165_;
  assign _zz_1259_ = 32'h44000000;
  assign _zz_1260_ = (decode_INSTRUCTION & 32'hb0000000);
  assign _zz_1261_ = 32'h0;
  assign _zz_1262_ = ((decode_INSTRUCTION & _zz_1283_) == 32'h78000044);
  assign _zz_1263_ = _zz_194_;
  assign _zz_1264_ = {_zz_1284_,{_zz_1285_,_zz_1286_}};
  assign _zz_1265_ = _zz_188_;
  assign _zz_1266_ = {_zz_1287_,{_zz_1288_,_zz_1289_}};
  assign _zz_1267_ = (_zz_1290_ == _zz_1291_);
  assign _zz_1268_ = (1'b0);
  assign _zz_1269_ = (_zz_192_ != (1'b0));
  assign _zz_1270_ = (_zz_1292_ != _zz_1293_);
  assign _zz_1271_ = {_zz_1294_,{_zz_1295_,_zz_1296_}};
  assign _zz_1272_ = ((decode_INSTRUCTION & _zz_1297_) == 32'h78000028);
  assign _zz_1273_ = _zz_168_;
  assign _zz_1274_ = {_zz_200_,_zz_199_};
  assign _zz_1275_ = 32'hd8000244;
  assign _zz_1276_ = (decode_INSTRUCTION & 32'hd80002c4);
  assign _zz_1277_ = 32'h580000c0;
  assign _zz_1278_ = (decode_INSTRUCTION & 32'hd80000b2);
  assign _zz_1279_ = 32'h58000010;
  assign _zz_1280_ = 32'h14000000;
  assign _zz_1281_ = (decode_INSTRUCTION & 32'h48000000);
  assign _zz_1282_ = 32'h0;
  assign _zz_1283_ = 32'h78000066;
  assign _zz_1284_ = ((decode_INSTRUCTION & _zz_1298_) == 32'h3c000000);
  assign _zz_1285_ = (_zz_1299_ == _zz_1300_);
  assign _zz_1286_ = (_zz_1301_ == _zz_1302_);
  assign _zz_1287_ = ((decode_INSTRUCTION & _zz_1303_) == 32'h48000000);
  assign _zz_1288_ = (_zz_1304_ == _zz_1305_);
  assign _zz_1289_ = {_zz_161_,{_zz_1306_,_zz_1307_}};
  assign _zz_1290_ = (decode_INSTRUCTION & 32'h781001b8);
  assign _zz_1291_ = 32'h78100020;
  assign _zz_1292_ = {_zz_184_,_zz_1308_};
  assign _zz_1293_ = (2'b00);
  assign _zz_1294_ = ({_zz_1309_,_zz_1310_} != (2'b00));
  assign _zz_1295_ = (_zz_1311_ != _zz_1312_);
  assign _zz_1296_ = {_zz_1313_,{_zz_1314_,_zz_1315_}};
  assign _zz_1297_ = 32'h78000138;
  assign _zz_1298_ = 32'h7c000000;
  assign _zz_1299_ = (decode_INSTRUCTION & 32'h600001a4);
  assign _zz_1300_ = 32'h60000080;
  assign _zz_1301_ = (decode_INSTRUCTION & 32'h600002c2);
  assign _zz_1302_ = 32'h60000080;
  assign _zz_1303_ = 32'h58000000;
  assign _zz_1304_ = (decode_INSTRUCTION & 32'ha8000000);
  assign _zz_1305_ = 32'h20000000;
  assign _zz_1306_ = (_zz_1316_ == _zz_1317_);
  assign _zz_1307_ = {_zz_1318_,{_zz_1319_,_zz_1320_}};
  assign _zz_1308_ = ((decode_INSTRUCTION & _zz_1321_) == 32'h78000000);
  assign _zz_1309_ = (_zz_1322_ == _zz_1323_);
  assign _zz_1310_ = (_zz_1324_ == _zz_1325_);
  assign _zz_1311_ = {_zz_1326_,{_zz_1327_,_zz_1328_}};
  assign _zz_1312_ = (3'b000);
  assign _zz_1313_ = ({_zz_1329_,_zz_1330_} != (3'b000));
  assign _zz_1314_ = (_zz_1331_ != _zz_1332_);
  assign _zz_1315_ = {_zz_1333_,{_zz_1334_,_zz_1335_}};
  assign _zz_1316_ = (decode_INSTRUCTION & 32'ha0000108);
  assign _zz_1317_ = 32'h20000108;
  assign _zz_1318_ = ((decode_INSTRUCTION & _zz_1336_) == 32'h20000018);
  assign _zz_1319_ = (_zz_1337_ == _zz_1338_);
  assign _zz_1320_ = {_zz_1339_,{_zz_1340_,_zz_1341_}};
  assign _zz_1321_ = 32'h78000538;
  assign _zz_1322_ = (decode_INSTRUCTION & 32'h18000008);
  assign _zz_1323_ = 32'h18000000;
  assign _zz_1324_ = (decode_INSTRUCTION & 32'h18000280);
  assign _zz_1325_ = 32'h18000080;
  assign _zz_1326_ = ((decode_INSTRUCTION & _zz_1342_) == 32'h08000000);
  assign _zz_1327_ = (_zz_1343_ == _zz_1344_);
  assign _zz_1328_ = (_zz_1345_ == _zz_1346_);
  assign _zz_1329_ = (_zz_1347_ == _zz_1348_);
  assign _zz_1330_ = {_zz_1349_,_zz_1350_};
  assign _zz_1331_ = {_zz_1351_,{_zz_1352_,_zz_1353_}};
  assign _zz_1332_ = (3'b000);
  assign _zz_1333_ = ({_zz_1354_,_zz_1355_} != (3'b000));
  assign _zz_1334_ = 1'b0;
  assign _zz_1335_ = {_zz_1356_,{_zz_1357_,_zz_1358_}};
  assign _zz_1336_ = 32'ha0000018;
  assign _zz_1337_ = (decode_INSTRUCTION & 32'ha0000012);
  assign _zz_1338_ = 32'h20000010;
  assign _zz_1339_ = ((decode_INSTRUCTION & _zz_1359_) == 32'h20000000);
  assign _zz_1340_ = (_zz_1360_ == _zz_1361_);
  assign _zz_1341_ = (_zz_1362_ == _zz_1363_);
  assign _zz_1342_ = 32'h18000000;
  assign _zz_1343_ = (decode_INSTRUCTION & 32'h080000c0);
  assign _zz_1344_ = 32'h08000080;
  assign _zz_1345_ = (decode_INSTRUCTION & 32'h08000300);
  assign _zz_1346_ = 32'h08000200;
  assign _zz_1347_ = (decode_INSTRUCTION & 32'h18000000);
  assign _zz_1348_ = 32'h0;
  assign _zz_1349_ = ((decode_INSTRUCTION & _zz_1364_) == 32'h18000200);
  assign _zz_1350_ = ((decode_INSTRUCTION & _zz_1365_) == 32'h18000100);
  assign _zz_1351_ = ((decode_INSTRUCTION & _zz_1366_) == 32'h18000040);
  assign _zz_1352_ = (_zz_1367_ == _zz_1368_);
  assign _zz_1353_ = (_zz_1369_ == _zz_1370_);
  assign _zz_1354_ = _zz_191_;
  assign _zz_1355_ = {_zz_187_,_zz_1371_};
  assign _zz_1356_ = (_zz_1372_ != (1'b0));
  assign _zz_1357_ = (_zz_1373_ != _zz_1374_);
  assign _zz_1358_ = {_zz_1375_,{_zz_1376_,_zz_1377_}};
  assign _zz_1359_ = 32'ha000000c;
  assign _zz_1360_ = (decode_INSTRUCTION & 32'ha0000218);
  assign _zz_1361_ = 32'h20000200;
  assign _zz_1362_ = (decode_INSTRUCTION & 32'ha0000198);
  assign _zz_1363_ = 32'h20000000;
  assign _zz_1364_ = 32'h18000240;
  assign _zz_1365_ = 32'h18000500;
  assign _zz_1366_ = 32'h18000048;
  assign _zz_1367_ = (decode_INSTRUCTION & 32'h18000540);
  assign _zz_1368_ = 32'h18000100;
  assign _zz_1369_ = (decode_INSTRUCTION & 32'h180002c0);
  assign _zz_1370_ = 32'h18000040;
  assign _zz_1371_ = ((decode_INSTRUCTION & 32'h78000132) == 32'h78000010);
  assign _zz_1372_ = ((decode_INSTRUCTION & 32'h20000200) == 32'h20000200);
  assign _zz_1373_ = ((decode_INSTRUCTION & _zz_1378_) == 32'h20000000);
  assign _zz_1374_ = (1'b0);
  assign _zz_1375_ = ({_zz_1379_,_zz_1380_} != (2'b00));
  assign _zz_1376_ = (_zz_1381_ != (1'b0));
  assign _zz_1377_ = {(_zz_1382_ != _zz_1383_),{_zz_1384_,{_zz_1385_,_zz_1386_}}};
  assign _zz_1378_ = 32'h20000200;
  assign _zz_1379_ = ((decode_INSTRUCTION & 32'h04000000) == 32'h0);
  assign _zz_1380_ = ((decode_INSTRUCTION & 32'h20000600) == 32'h20000400);
  assign _zz_1381_ = ((decode_INSTRUCTION & 32'h7800038a) == 32'h78000202);
  assign _zz_1382_ = {_zz_168_,_zz_190_};
  assign _zz_1383_ = (2'b00);
  assign _zz_1384_ = (((decode_INSTRUCTION & _zz_1387_) == 32'h4c000400) != (1'b0));
  assign _zz_1385_ = ({_zz_1388_,_zz_1389_} != (2'b00));
  assign _zz_1386_ = {({_zz_1390_,_zz_1391_} != (3'b000)),{(_zz_1392_ != _zz_1393_),{_zz_1394_,{_zz_1395_,_zz_1396_}}}};
  assign _zz_1387_ = 32'h7c000404;
  assign _zz_1388_ = ((decode_INSTRUCTION & 32'hfc000000) == 32'h40000000);
  assign _zz_1389_ = ((decode_INSTRUCTION & 32'h7c0005e0) == 32'h4c000020);
  assign _zz_1390_ = ((decode_INSTRUCTION & _zz_1397_) == 32'h48000000);
  assign _zz_1391_ = {(_zz_1398_ == _zz_1399_),(_zz_1400_ == _zz_1401_)};
  assign _zz_1392_ = {_zz_162_,{_zz_189_,{_zz_1402_,_zz_1403_}}};
  assign _zz_1393_ = 6'h0;
  assign _zz_1394_ = ({_zz_173_,{_zz_1404_,_zz_1405_}} != (4'b0000));
  assign _zz_1395_ = ({_zz_1406_,_zz_1407_} != 32'h0);
  assign _zz_1396_ = {(_zz_1408_ != _zz_1409_),{_zz_1410_,{_zz_1411_,_zz_1412_}}};
  assign _zz_1397_ = 32'hfc000000;
  assign _zz_1398_ = (decode_INSTRUCTION & 32'h78000046);
  assign _zz_1399_ = 32'h48000040;
  assign _zz_1400_ = (decode_INSTRUCTION & 32'h780005e0);
  assign _zz_1401_ = 32'h48000020;
  assign _zz_1402_ = (_zz_1413_ == _zz_1414_);
  assign _zz_1403_ = {_zz_188_,{_zz_1415_,_zz_1416_}};
  assign _zz_1404_ = (_zz_1417_ == _zz_1418_);
  assign _zz_1405_ = {_zz_187_,_zz_1419_};
  assign _zz_1406_ = (_zz_1420_ == _zz_1421_);
  assign _zz_1407_ = {_zz_1422_,{_zz_1423_,_zz_1424_}};
  assign _zz_1408_ = {_zz_167_,_zz_1425_};
  assign _zz_1409_ = (2'b00);
  assign _zz_1410_ = ({_zz_1426_,_zz_1427_} != 5'h0);
  assign _zz_1411_ = (_zz_1428_ != _zz_1429_);
  assign _zz_1412_ = {_zz_1430_,{_zz_1431_,_zz_1432_}};
  assign _zz_1413_ = (decode_INSTRUCTION & 32'h40000120);
  assign _zz_1414_ = 32'h40000120;
  assign _zz_1415_ = _zz_166_;
  assign _zz_1416_ = (_zz_1433_ == _zz_1434_);
  assign _zz_1417_ = (decode_INSTRUCTION & 32'h7800020c);
  assign _zz_1418_ = 32'h78000200;
  assign _zz_1419_ = ((decode_INSTRUCTION & _zz_1435_) == 32'h78000010);
  assign _zz_1420_ = (decode_INSTRUCTION & 32'hc0100000);
  assign _zz_1421_ = 32'h00100000;
  assign _zz_1422_ = ((decode_INSTRUCTION & _zz_1436_) == 32'h00100000);
  assign _zz_1423_ = _zz_186_;
  assign _zz_1424_ = {_zz_185_,{_zz_1437_,_zz_1438_}};
  assign _zz_1425_ = ((decode_INSTRUCTION & _zz_1439_) == 32'h78000060);
  assign _zz_1426_ = (_zz_1440_ == _zz_1441_);
  assign _zz_1427_ = {_zz_1442_,{_zz_1443_,_zz_1444_}};
  assign _zz_1428_ = {_zz_1445_,{_zz_1446_,_zz_1447_}};
  assign _zz_1429_ = (4'b0000);
  assign _zz_1430_ = (_zz_1448_ != (1'b0));
  assign _zz_1431_ = (_zz_1449_ != _zz_1450_);
  assign _zz_1432_ = {_zz_1451_,{_zz_1452_,_zz_1453_}};
  assign _zz_1433_ = (decode_INSTRUCTION & 32'h40000022);
  assign _zz_1434_ = 32'h40000020;
  assign _zz_1435_ = 32'h78000272;
  assign _zz_1436_ = 32'h44100000;
  assign _zz_1437_ = (_zz_1454_ == _zz_1455_);
  assign _zz_1438_ = {_zz_184_,{_zz_1456_,_zz_1457_}};
  assign _zz_1439_ = 32'h78000170;
  assign _zz_1440_ = (decode_INSTRUCTION & 32'hb0000000);
  assign _zz_1441_ = 32'h10000000;
  assign _zz_1442_ = ((decode_INSTRUCTION & _zz_1458_) == 32'h58000200);
  assign _zz_1443_ = (_zz_1459_ == _zz_1460_);
  assign _zz_1444_ = {_zz_1461_,_zz_1462_};
  assign _zz_1445_ = ((decode_INSTRUCTION & _zz_1463_) == 32'h60000000);
  assign _zz_1446_ = _zz_166_;
  assign _zz_1447_ = {_zz_1464_,_zz_1465_};
  assign _zz_1448_ = ((decode_INSTRUCTION & _zz_1466_) == 32'h20000000);
  assign _zz_1449_ = (_zz_1467_ == _zz_1468_);
  assign _zz_1450_ = (1'b0);
  assign _zz_1451_ = ({_zz_1469_,_zz_1470_} != (2'b00));
  assign _zz_1452_ = (_zz_1471_ != _zz_1472_);
  assign _zz_1453_ = {_zz_1473_,{_zz_1474_,_zz_1475_}};
  assign _zz_1454_ = (decode_INSTRUCTION & 32'hec000000);
  assign _zz_1455_ = 32'h0c000000;
  assign _zz_1456_ = _zz_183_;
  assign _zz_1457_ = {_zz_182_,{_zz_1476_,_zz_1477_}};
  assign _zz_1458_ = 32'h5800020c;
  assign _zz_1459_ = (decode_INSTRUCTION & 32'h58000228);
  assign _zz_1460_ = 32'h58000020;
  assign _zz_1461_ = ((decode_INSTRUCTION & _zz_1478_) == 32'h580002c0);
  assign _zz_1462_ = ((decode_INSTRUCTION & _zz_1479_) == 32'h58000020);
  assign _zz_1463_ = 32'h68000000;
  assign _zz_1464_ = ((decode_INSTRUCTION & _zz_1480_) == 32'h60000008);
  assign _zz_1465_ = ((decode_INSTRUCTION & _zz_1481_) == 32'h60000024);
  assign _zz_1466_ = 32'h20000400;
  assign _zz_1467_ = (decode_INSTRUCTION & 32'h20000100);
  assign _zz_1468_ = 32'h20000000;
  assign _zz_1469_ = _zz_165_;
  assign _zz_1470_ = (_zz_1482_ == _zz_1483_);
  assign _zz_1471_ = {_zz_1484_,{_zz_1485_,_zz_1486_}};
  assign _zz_1472_ = (4'b0000);
  assign _zz_1473_ = ({_zz_1487_,_zz_1488_} != (3'b000));
  assign _zz_1474_ = (_zz_1489_ != _zz_1490_);
  assign _zz_1475_ = {_zz_1491_,{_zz_1492_,_zz_1493_}};
  assign _zz_1476_ = _zz_181_;
  assign _zz_1477_ = {_zz_180_,{_zz_1494_,_zz_1495_}};
  assign _zz_1478_ = 32'h580002c4;
  assign _zz_1479_ = 32'h5800042a;
  assign _zz_1480_ = 32'h6000000c;
  assign _zz_1481_ = 32'h6000002c;
  assign _zz_1482_ = (decode_INSTRUCTION & 32'h80000280);
  assign _zz_1483_ = 32'h0;
  assign _zz_1484_ = ((decode_INSTRUCTION & _zz_1496_) == 32'h0);
  assign _zz_1485_ = (_zz_1497_ == _zz_1498_);
  assign _zz_1486_ = {_zz_1499_,_zz_1500_};
  assign _zz_1487_ = _zz_164_;
  assign _zz_1488_ = {_zz_160_,_zz_163_};
  assign _zz_1489_ = {_zz_162_,{_zz_1501_,_zz_1502_}};
  assign _zz_1490_ = 10'h0;
  assign _zz_1491_ = (_zz_1503_ != (1'b0));
  assign _zz_1492_ = (_zz_1504_ != _zz_1505_);
  assign _zz_1493_ = {_zz_1506_,_zz_1507_};
  assign _zz_1494_ = _zz_179_;
  assign _zz_1495_ = {_zz_178_,{_zz_177_,{_zz_1508_,_zz_1509_}}};
  assign _zz_1496_ = 32'h08000000;
  assign _zz_1497_ = (decode_INSTRUCTION & 32'h80000200);
  assign _zz_1498_ = 32'h00000200;
  assign _zz_1499_ = ((decode_INSTRUCTION & 32'h60000000) == 32'h20000000);
  assign _zz_1500_ = ((decode_INSTRUCTION & 32'h80000080) == 32'h0);
  assign _zz_1501_ = ((decode_INSTRUCTION & _zz_1510_) == 32'h40000000);
  assign _zz_1502_ = {(_zz_1511_ == _zz_1512_),{_zz_1513_,{_zz_1514_,_zz_1515_}}};
  assign _zz_1503_ = ((decode_INSTRUCTION & 32'h78000212) == 32'h78000200);
  assign _zz_1504_ = _zz_160_;
  assign _zz_1505_ = (1'b0);
  assign _zz_1506_ = ({_zz_1516_,_zz_1517_} != (2'b00));
  assign _zz_1507_ = ({_zz_159_,{_zz_1518_,_zz_1519_}} != 6'h0);
  assign _zz_1508_ = _zz_176_;
  assign _zz_1509_ = {_zz_175_,{_zz_1520_,{_zz_1521_,_zz_1522_}}};
  assign _zz_1510_ = 32'h40000002;
  assign _zz_1511_ = (decode_INSTRUCTION & 32'h60000000);
  assign _zz_1512_ = 32'h40000000;
  assign _zz_1513_ = ((decode_INSTRUCTION & 32'h18000000) == 32'h10000000);
  assign _zz_1514_ = ((decode_INSTRUCTION & _zz_1523_) == 32'h0);
  assign _zz_1515_ = {(_zz_1524_ == _zz_1525_),{_zz_1526_,{_zz_1527_,_zz_1528_}}};
  assign _zz_1516_ = ((decode_INSTRUCTION & 32'h98000000) == 32'h0);
  assign _zz_1517_ = ((decode_INSTRUCTION & 32'h40000134) == 32'h40000010);
  assign _zz_1518_ = ((decode_INSTRUCTION & _zz_1529_) == 32'h40000020);
  assign _zz_1519_ = {(_zz_1530_ == _zz_1531_),{_zz_158_,{_zz_1532_,_zz_1533_}}};
  assign _zz_1520_ = ((decode_INSTRUCTION & 32'hf8000000) == 32'h30000000);
  assign _zz_1521_ = _zz_174_;
  assign _zz_1522_ = {_zz_173_,{_zz_1534_,{_zz_1535_,_zz_1536_}}};
  assign _zz_1523_ = 32'h90000000;
  assign _zz_1524_ = (decode_INSTRUCTION & 32'h40000028);
  assign _zz_1525_ = 32'h40000008;
  assign _zz_1526_ = ((decode_INSTRUCTION & 32'h40000110) == 32'h40000100);
  assign _zz_1527_ = ((decode_INSTRUCTION & _zz_1537_) == 32'h40000200);
  assign _zz_1528_ = {_zz_161_,(_zz_1538_ == _zz_1539_)};
  assign _zz_1529_ = 32'h40000020;
  assign _zz_1530_ = (decode_INSTRUCTION & 32'h40000010);
  assign _zz_1531_ = 32'h40000000;
  assign _zz_1532_ = ((decode_INSTRUCTION & _zz_1540_) == 32'h08000000);
  assign _zz_1533_ = ((decode_INSTRUCTION & _zz_1541_) == 32'h40000004);
  assign _zz_1534_ = ((decode_INSTRUCTION & 32'h78000030) == 32'h78000010);
  assign _zz_1535_ = _zz_172_;
  assign _zz_1536_ = {_zz_171_,{_zz_170_,{_zz_169_,{((decode_INSTRUCTION & 32'hfc000000) == 32'h50000000),{((decode_INSTRUCTION & _zz_1542_) == 32'h78000180),{_zz_168_,{_zz_1543_,{_zz_1544_,_zz_1545_}}}}}}}};
  assign _zz_1537_ = 32'h40000220;
  assign _zz_1538_ = (decode_INSTRUCTION & 32'h40000018);
  assign _zz_1539_ = 32'h40000000;
  assign _zz_1540_ = 32'h48000000;
  assign _zz_1541_ = 32'h40000104;
  assign _zz_1542_ = 32'h78000188;
  assign _zz_1543_ = ((decode_INSTRUCTION & 32'h38100458) == 32'h38100008);
  assign _zz_1544_ = ((decode_INSTRUCTION & 32'h78000524) == 32'h78000000);
  assign _zz_1545_ = {((decode_INSTRUCTION & 32'h38010478) == 32'h38010028),{((decode_INSTRUCTION & 32'h38020478) == 32'h38020028),{((decode_INSTRUCTION & 32'h38080478) == 32'h38080028),((decode_INSTRUCTION & 32'h38040478) == 32'h38040028)}}};
  assign _zz_1546_ = 11'h008;
  assign _zz_1547_ = 11'h009;
  assign _zz_1548_ = {{{{{{6'h0,MSR_VEC},(1'b0)},MSR_VSX},7'h0},MSR_EE},MSR_PR};
  assign _zz_1549_ = MSR_FP;
  assign _zz_1550_ = {{{{{{6'h0,MSR_VEC},(1'b0)},MSR_VSX},7'h0},MSR_EE},MSR_PR};
  assign _zz_1551_ = MSR_FP;
  assign _zz_1552_ = {{{{{{6'h0,MSR_VEC},(1'b0)},MSR_VSX},7'h02},MSR_EE},MSR_PR};
  assign _zz_1553_ = MSR_FP;
  always @ (posedge clk) begin
    if(_zz_130_) begin
      IBusCachedPlugin_predictor_history[IBusCachedPlugin_predictor_historyWriteDelayPatched_payload_address] <= _zz_656_;
    end
  end

  always @ (posedge clk) begin
    if(IBusCachedPlugin_iBusRsp_stages_0_output_ready) begin
      _zz_387_ <= IBusCachedPlugin_predictor_history[_zz_499_];
    end
  end

  always @ (posedge clk) begin
    if(_zz_657_) begin
      _zz_388_ <= RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress1];
    end
  end

  always @ (posedge clk) begin
    if(_zz_658_) begin
      _zz_389_ <= RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress2];
    end
  end

  always @ (posedge clk) begin
    if(_zz_659_) begin
      _zz_390_ <= RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress3];
    end
  end

  always @ (posedge clk) begin
    if(_zz_105_) begin
      RegFilePlugin_regFile[lastStageRegFileWrite_payload_address] <= lastStageRegFileWrite_payload_data;
    end
  end

  InstructionCache IBusCachedPlugin_cache (
    .io_flush                                     (_zz_365_                                                             ), //i
    .io_cpu_prefetch_isValid                      (_zz_366_                                                             ), //i
    .io_cpu_prefetch_haltIt                       (IBusCachedPlugin_cache_io_cpu_prefetch_haltIt                        ), //o
    .io_cpu_prefetch_pc                           (IBusCachedPlugin_iBusRsp_stages_0_input_payload[31:0]                ), //i
    .io_cpu_fetch_isValid                         (_zz_367_                                                             ), //i
    .io_cpu_fetch_isStuck                         (_zz_368_                                                             ), //i
    .io_cpu_fetch_isRemoved                       (IBusCachedPlugin_externalFlush                                       ), //i
    .io_cpu_fetch_pc                              (IBusCachedPlugin_iBusRsp_stages_1_input_payload[31:0]                ), //i
    .io_cpu_fetch_data                            (IBusCachedPlugin_cache_io_cpu_fetch_data[31:0]                       ), //o
    .io_cpu_fetch_mmuBus_cmd_isValid              (IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_cmd_isValid               ), //o
    .io_cpu_fetch_mmuBus_cmd_virtualAddress       (IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_cmd_virtualAddress[31:0]  ), //o
    .io_cpu_fetch_mmuBus_cmd_bypassTranslation    (IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_cmd_bypassTranslation     ), //o
    .io_cpu_fetch_mmuBus_rsp_physicalAddress      (IBusCachedPlugin_mmuBus_rsp_physicalAddress[31:0]                    ), //i
    .io_cpu_fetch_mmuBus_rsp_isIoAccess           (IBusCachedPlugin_mmuBus_rsp_isIoAccess                               ), //i
    .io_cpu_fetch_mmuBus_rsp_allowRead            (IBusCachedPlugin_mmuBus_rsp_allowRead                                ), //i
    .io_cpu_fetch_mmuBus_rsp_allowWrite           (IBusCachedPlugin_mmuBus_rsp_allowWrite                               ), //i
    .io_cpu_fetch_mmuBus_rsp_allowExecute         (IBusCachedPlugin_mmuBus_rsp_allowExecute                             ), //i
    .io_cpu_fetch_mmuBus_rsp_exception            (IBusCachedPlugin_mmuBus_rsp_exception                                ), //i
    .io_cpu_fetch_mmuBus_rsp_refilling            (IBusCachedPlugin_mmuBus_rsp_refilling                                ), //i
    .io_cpu_fetch_mmuBus_spr_valid                (IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_spr_valid                 ), //o
    .io_cpu_fetch_mmuBus_spr_payload_id           (IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_spr_payload_id[9:0]       ), //o
    .io_cpu_fetch_mmuBus_spr_payload_data         (IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_spr_payload_data[31:0]    ), //o
    .io_cpu_fetch_mmuBus_end                      (IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_end                       ), //o
    .io_cpu_fetch_mmuBus_busy                     (IBusCachedPlugin_mmuBus_busy                                         ), //i
    .io_cpu_fetch_physicalAddress                 (IBusCachedPlugin_cache_io_cpu_fetch_physicalAddress[31:0]            ), //o
    .io_cpu_fetch_exceptionType                   (IBusCachedPlugin_cache_io_cpu_fetch_exceptionType[3:0]               ), //o
    .io_cpu_fetch_bypassTranslation               (_zz_369_                                                             ), //i
    .io_cpu_fetch_haltIt                          (IBusCachedPlugin_cache_io_cpu_fetch_haltIt                           ), //o
    .io_cpu_decode_isValid                        (_zz_370_                                                             ), //i
    .io_cpu_decode_isStuck                        (_zz_371_                                                             ), //i
    .io_cpu_decode_pc                             (IBusCachedPlugin_iBusRsp_stages_2_input_payload[31:0]                ), //i
    .io_cpu_decode_physicalAddress                (IBusCachedPlugin_cache_io_cpu_decode_physicalAddress[31:0]           ), //o
    .io_cpu_decode_data                           (IBusCachedPlugin_cache_io_cpu_decode_data[31:0]                      ), //o
    .io_cpu_decode_cacheMiss                      (IBusCachedPlugin_cache_io_cpu_decode_cacheMiss                       ), //o
    .io_cpu_decode_error                          (IBusCachedPlugin_cache_io_cpu_decode_error                           ), //o
    .io_cpu_decode_mmuRefilling                   (IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling                    ), //o
    .io_cpu_decode_mmuException                   (IBusCachedPlugin_cache_io_cpu_decode_mmuException                    ), //o
    .io_cpu_decode_isUser                         (_zz_372_                                                             ), //i
    .io_cpu_decode_exceptionType                  (IBusCachedPlugin_cache_io_cpu_decode_exceptionType[3:0]              ), //o
    .io_cpu_fill_valid                            (_zz_373_                                                             ), //i
    .io_cpu_fill_payload                          (IBusCachedPlugin_cache_io_cpu_decode_physicalAddress[31:0]           ), //i
    .io_mem_cmd_valid                             (IBusCachedPlugin_cache_io_mem_cmd_valid                              ), //o
    .io_mem_cmd_ready                             (iBus_cmd_ready                                                       ), //i
    .io_mem_cmd_payload_address                   (IBusCachedPlugin_cache_io_mem_cmd_payload_address[31:0]              ), //o
    .io_mem_cmd_payload_size                      (IBusCachedPlugin_cache_io_mem_cmd_payload_size[2:0]                  ), //o
    .io_mem_rsp_valid                             (iBus_rsp_valid                                                       ), //i
    .io_mem_rsp_payload_data                      (iBus_rsp_payload_data[31:0]                                          ), //i
    .io_mem_rsp_payload_error                     (iBus_rsp_payload_error                                               ), //i
    .io_spr_valid                                 (_zz_237_                                                             ), //i
    .io_spr_payload_id                            (_zz_374_[9:0]                                                        ), //i
    .io_spr_payload_data                          (writeBack_SRC1[31:0]                                                 ), //i
    .clk                                          (clk                                                                  ), //i
    .reset                                        (reset                                                                )  //i
  );
  DataCache dataCache_1_ (
    .io_cpu_execute_isValid                        (_zz_375_                                                    ), //i
    .io_cpu_execute_address                        (_zz_376_[31:0]                                              ), //i
    .io_cpu_execute_args_wr                        (execute_MEMORY_WR                                           ), //i
    .io_cpu_execute_args_data                      (_zz_377_[31:0]                                              ), //i
    .io_cpu_execute_args_size                      (execute_DBusCachedPlugin_size[1:0]                          ), //i
    .io_cpu_memory_isValid                         (_zz_378_                                                    ), //i
    .io_cpu_memory_isStuck                         (memory_arbitration_isStuck                                  ), //i
    .io_cpu_memory_isRemoved                       (memory_arbitration_removeIt                                 ), //i
    .io_cpu_memory_isWrite                         (dataCache_1__io_cpu_memory_isWrite                          ), //o
    .io_cpu_memory_address                         (_zz_379_[31:0]                                              ), //i
    .io_cpu_memory_mmuBus_cmd_isValid              (dataCache_1__io_cpu_memory_mmuBus_cmd_isValid               ), //o
    .io_cpu_memory_mmuBus_cmd_virtualAddress       (dataCache_1__io_cpu_memory_mmuBus_cmd_virtualAddress[31:0]  ), //o
    .io_cpu_memory_mmuBus_cmd_bypassTranslation    (dataCache_1__io_cpu_memory_mmuBus_cmd_bypassTranslation     ), //o
    .io_cpu_memory_mmuBus_rsp_physicalAddress      (DBusCachedPlugin_mmuBus_rsp_physicalAddress[31:0]           ), //i
    .io_cpu_memory_mmuBus_rsp_isIoAccess           (_zz_380_                                                    ), //i
    .io_cpu_memory_mmuBus_rsp_allowRead            (DBusCachedPlugin_mmuBus_rsp_allowRead                       ), //i
    .io_cpu_memory_mmuBus_rsp_allowWrite           (DBusCachedPlugin_mmuBus_rsp_allowWrite                      ), //i
    .io_cpu_memory_mmuBus_rsp_allowExecute         (DBusCachedPlugin_mmuBus_rsp_allowExecute                    ), //i
    .io_cpu_memory_mmuBus_rsp_exception            (DBusCachedPlugin_mmuBus_rsp_exception                       ), //i
    .io_cpu_memory_mmuBus_rsp_refilling            (DBusCachedPlugin_mmuBus_rsp_refilling                       ), //i
    .io_cpu_memory_mmuBus_spr_valid                (dataCache_1__io_cpu_memory_mmuBus_spr_valid                 ), //o
    .io_cpu_memory_mmuBus_spr_payload_id           (dataCache_1__io_cpu_memory_mmuBus_spr_payload_id[9:0]       ), //o
    .io_cpu_memory_mmuBus_spr_payload_data         (dataCache_1__io_cpu_memory_mmuBus_spr_payload_data[31:0]    ), //o
    .io_cpu_memory_mmuBus_end                      (dataCache_1__io_cpu_memory_mmuBus_end                       ), //o
    .io_cpu_memory_mmuBus_busy                     (DBusCachedPlugin_mmuBus_busy                                ), //i
    .io_cpu_memory_bypassTranslation               (_zz_381_                                                    ), //i
    .io_cpu_writeBack_isValid                      (_zz_382_                                                    ), //i
    .io_cpu_writeBack_isStuck                      (writeBack_arbitration_isStuck                               ), //i
    .io_cpu_writeBack_isUser                       (_zz_383_                                                    ), //i
    .io_cpu_writeBack_haltIt                       (dataCache_1__io_cpu_writeBack_haltIt                        ), //o
    .io_cpu_writeBack_isWrite                      (dataCache_1__io_cpu_writeBack_isWrite                       ), //o
    .io_cpu_writeBack_data                         (dataCache_1__io_cpu_writeBack_data[31:0]                    ), //o
    .io_cpu_writeBack_address                      (_zz_384_[31:0]                                              ), //i
    .io_cpu_writeBack_mmuException                 (dataCache_1__io_cpu_writeBack_mmuException                  ), //o
    .io_cpu_writeBack_unalignedAccess              (dataCache_1__io_cpu_writeBack_unalignedAccess               ), //o
    .io_cpu_writeBack_accessError                  (dataCache_1__io_cpu_writeBack_accessError                   ), //o
    .io_cpu_writeBack_exceptionType                (dataCache_1__io_cpu_writeBack_exceptionType[3:0]            ), //o
    .io_cpu_redo                                   (dataCache_1__io_cpu_redo                                    ), //o
    .io_cpu_flush_valid                            (_zz_385_                                                    ), //i
    .io_cpu_flush_ready                            (dataCache_1__io_cpu_flush_ready                             ), //o
    .io_mem_cmd_valid                              (dataCache_1__io_mem_cmd_valid                               ), //o
    .io_mem_cmd_ready                              (_zz_386_                                                    ), //i
    .io_mem_cmd_payload_wr                         (dataCache_1__io_mem_cmd_payload_wr                          ), //o
    .io_mem_cmd_payload_address                    (dataCache_1__io_mem_cmd_payload_address[31:0]               ), //o
    .io_mem_cmd_payload_data                       (dataCache_1__io_mem_cmd_payload_data[31:0]                  ), //o
    .io_mem_cmd_payload_mask                       (dataCache_1__io_mem_cmd_payload_mask[3:0]                   ), //o
    .io_mem_cmd_payload_length                     (dataCache_1__io_mem_cmd_payload_length[2:0]                 ), //o
    .io_mem_cmd_payload_last                       (dataCache_1__io_mem_cmd_payload_last                        ), //o
    .io_mem_rsp_valid                              (dBus_rsp_valid                                              ), //i
    .io_mem_rsp_payload_data                       (dBus_rsp_payload_data[31:0]                                 ), //i
    .io_mem_rsp_payload_error                      (dBus_rsp_payload_error                                      ), //i
    .clk                                           (clk                                                         ), //i
    .reset                                         (reset                                                       )  //i
  );
  always @(*) begin
    case(_zz_660_)
      2'b00 : begin
        _zz_391_ = DBusCachedPlugin_redoBranch_payload;
      end
      2'b01 : begin
        _zz_391_ = SPRPlugin_jumpInterface_payload;
      end
      default : begin
        _zz_391_ = BranchPlugin_jumpInterface_payload;
      end
    endcase
  end

  `ifndef SYNTHESIS
  always @(*) begin
    case(_zz_1_)
      `TgtCtrlEnum_defaultEncoding_RT : _zz_1__string = "RT";
      `TgtCtrlEnum_defaultEncoding_RA : _zz_1__string = "RA";
      default : _zz_1__string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_2_)
      `TgtCtrlEnum_defaultEncoding_RT : _zz_2__string = "RT";
      `TgtCtrlEnum_defaultEncoding_RA : _zz_2__string = "RA";
      default : _zz_2__string = "??";
    endcase
  end
  always @(*) begin
    case(decode_DECODER_stageables_6)
      `CRMoveCtrlEnum_defaultEncoding_MCRF : decode_DECODER_stageables_6_string = "MCRF  ";
      `CRMoveCtrlEnum_defaultEncoding_MCRXRX : decode_DECODER_stageables_6_string = "MCRXRX";
      `CRMoveCtrlEnum_defaultEncoding_MTCRF : decode_DECODER_stageables_6_string = "MTCRF ";
      default : decode_DECODER_stageables_6_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_3_)
      `CRMoveCtrlEnum_defaultEncoding_MCRF : _zz_3__string = "MCRF  ";
      `CRMoveCtrlEnum_defaultEncoding_MCRXRX : _zz_3__string = "MCRXRX";
      `CRMoveCtrlEnum_defaultEncoding_MTCRF : _zz_3__string = "MTCRF ";
      default : _zz_3__string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_4_)
      `CRMoveCtrlEnum_defaultEncoding_MCRF : _zz_4__string = "MCRF  ";
      `CRMoveCtrlEnum_defaultEncoding_MCRXRX : _zz_4__string = "MCRXRX";
      `CRMoveCtrlEnum_defaultEncoding_MTCRF : _zz_4__string = "MTCRF ";
      default : _zz_4__string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_5_)
      `CRMoveCtrlEnum_defaultEncoding_MCRF : _zz_5__string = "MCRF  ";
      `CRMoveCtrlEnum_defaultEncoding_MCRXRX : _zz_5__string = "MCRXRX";
      `CRMoveCtrlEnum_defaultEncoding_MTCRF : _zz_5__string = "MTCRF ";
      default : _zz_5__string = "??????";
    endcase
  end
  always @(*) begin
    case(decode_DECODER_stageables_36)
      `Src1CtrlEnum_defaultEncoding_RA : decode_DECODER_stageables_36_string = "RA    ";
      `Src1CtrlEnum_defaultEncoding_RA_N : decode_DECODER_stageables_36_string = "RA_N  ";
      `Src1CtrlEnum_defaultEncoding_RA_NIA : decode_DECODER_stageables_36_string = "RA_NIA";
      `Src1CtrlEnum_defaultEncoding_RA_0 : decode_DECODER_stageables_36_string = "RA_0  ";
      `Src1CtrlEnum_defaultEncoding_RS : decode_DECODER_stageables_36_string = "RS    ";
      default : decode_DECODER_stageables_36_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_6_)
      `Src1CtrlEnum_defaultEncoding_RA : _zz_6__string = "RA    ";
      `Src1CtrlEnum_defaultEncoding_RA_N : _zz_6__string = "RA_N  ";
      `Src1CtrlEnum_defaultEncoding_RA_NIA : _zz_6__string = "RA_NIA";
      `Src1CtrlEnum_defaultEncoding_RA_0 : _zz_6__string = "RA_0  ";
      `Src1CtrlEnum_defaultEncoding_RS : _zz_6__string = "RS    ";
      default : _zz_6__string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_7_)
      `Src1CtrlEnum_defaultEncoding_RA : _zz_7__string = "RA    ";
      `Src1CtrlEnum_defaultEncoding_RA_N : _zz_7__string = "RA_N  ";
      `Src1CtrlEnum_defaultEncoding_RA_NIA : _zz_7__string = "RA_NIA";
      `Src1CtrlEnum_defaultEncoding_RA_0 : _zz_7__string = "RA_0  ";
      `Src1CtrlEnum_defaultEncoding_RS : _zz_7__string = "RS    ";
      default : _zz_7__string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_8_)
      `Src1CtrlEnum_defaultEncoding_RA : _zz_8__string = "RA    ";
      `Src1CtrlEnum_defaultEncoding_RA_N : _zz_8__string = "RA_N  ";
      `Src1CtrlEnum_defaultEncoding_RA_NIA : _zz_8__string = "RA_NIA";
      `Src1CtrlEnum_defaultEncoding_RA_0 : _zz_8__string = "RA_0  ";
      `Src1CtrlEnum_defaultEncoding_RS : _zz_8__string = "RS    ";
      default : _zz_8__string = "??????";
    endcase
  end
  always @(*) begin
    case(decode_DECODER_stageables_24)
      `Src2CtrlEnum_defaultEncoding_RB : decode_DECODER_stageables_24_string = "RB      ";
      `Src2CtrlEnum_defaultEncoding_RB_0 : decode_DECODER_stageables_24_string = "RB_0    ";
      `Src2CtrlEnum_defaultEncoding_RB_M1 : decode_DECODER_stageables_24_string = "RB_M1   ";
      `Src2CtrlEnum_defaultEncoding_RB_UI : decode_DECODER_stageables_24_string = "RB_UI   ";
      `Src2CtrlEnum_defaultEncoding_RB_SI : decode_DECODER_stageables_24_string = "RB_SI   ";
      `Src2CtrlEnum_defaultEncoding_RB_SH : decode_DECODER_stageables_24_string = "RB_SH   ";
      `Src2CtrlEnum_defaultEncoding_RB_PCISD : decode_DECODER_stageables_24_string = "RB_PCISD";
      `Src2CtrlEnum_defaultEncoding_RA : decode_DECODER_stageables_24_string = "RA      ";
      default : decode_DECODER_stageables_24_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_9_)
      `Src2CtrlEnum_defaultEncoding_RB : _zz_9__string = "RB      ";
      `Src2CtrlEnum_defaultEncoding_RB_0 : _zz_9__string = "RB_0    ";
      `Src2CtrlEnum_defaultEncoding_RB_M1 : _zz_9__string = "RB_M1   ";
      `Src2CtrlEnum_defaultEncoding_RB_UI : _zz_9__string = "RB_UI   ";
      `Src2CtrlEnum_defaultEncoding_RB_SI : _zz_9__string = "RB_SI   ";
      `Src2CtrlEnum_defaultEncoding_RB_SH : _zz_9__string = "RB_SH   ";
      `Src2CtrlEnum_defaultEncoding_RB_PCISD : _zz_9__string = "RB_PCISD";
      `Src2CtrlEnum_defaultEncoding_RA : _zz_9__string = "RA      ";
      default : _zz_9__string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_10_)
      `Src2CtrlEnum_defaultEncoding_RB : _zz_10__string = "RB      ";
      `Src2CtrlEnum_defaultEncoding_RB_0 : _zz_10__string = "RB_0    ";
      `Src2CtrlEnum_defaultEncoding_RB_M1 : _zz_10__string = "RB_M1   ";
      `Src2CtrlEnum_defaultEncoding_RB_UI : _zz_10__string = "RB_UI   ";
      `Src2CtrlEnum_defaultEncoding_RB_SI : _zz_10__string = "RB_SI   ";
      `Src2CtrlEnum_defaultEncoding_RB_SH : _zz_10__string = "RB_SH   ";
      `Src2CtrlEnum_defaultEncoding_RB_PCISD : _zz_10__string = "RB_PCISD";
      `Src2CtrlEnum_defaultEncoding_RA : _zz_10__string = "RA      ";
      default : _zz_10__string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_11_)
      `Src2CtrlEnum_defaultEncoding_RB : _zz_11__string = "RB      ";
      `Src2CtrlEnum_defaultEncoding_RB_0 : _zz_11__string = "RB_0    ";
      `Src2CtrlEnum_defaultEncoding_RB_M1 : _zz_11__string = "RB_M1   ";
      `Src2CtrlEnum_defaultEncoding_RB_UI : _zz_11__string = "RB_UI   ";
      `Src2CtrlEnum_defaultEncoding_RB_SI : _zz_11__string = "RB_SI   ";
      `Src2CtrlEnum_defaultEncoding_RB_SH : _zz_11__string = "RB_SH   ";
      `Src2CtrlEnum_defaultEncoding_RB_PCISD : _zz_11__string = "RB_PCISD";
      `Src2CtrlEnum_defaultEncoding_RA : _zz_11__string = "RA      ";
      default : _zz_11__string = "????????";
    endcase
  end
  always @(*) begin
    case(decode_DECODER_stageables_7)
      `AluCtrlEnum_defaultEncoding_ADD : decode_DECODER_stageables_7_string = "ADD  ";
      `AluCtrlEnum_defaultEncoding_BIT_1 : decode_DECODER_stageables_7_string = "BIT_1";
      `AluCtrlEnum_defaultEncoding_RIMI : decode_DECODER_stageables_7_string = "RIMI ";
      `AluCtrlEnum_defaultEncoding_SPEC : decode_DECODER_stageables_7_string = "SPEC ";
      default : decode_DECODER_stageables_7_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_12_)
      `AluCtrlEnum_defaultEncoding_ADD : _zz_12__string = "ADD  ";
      `AluCtrlEnum_defaultEncoding_BIT_1 : _zz_12__string = "BIT_1";
      `AluCtrlEnum_defaultEncoding_RIMI : _zz_12__string = "RIMI ";
      `AluCtrlEnum_defaultEncoding_SPEC : _zz_12__string = "SPEC ";
      default : _zz_12__string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_13_)
      `AluCtrlEnum_defaultEncoding_ADD : _zz_13__string = "ADD  ";
      `AluCtrlEnum_defaultEncoding_BIT_1 : _zz_13__string = "BIT_1";
      `AluCtrlEnum_defaultEncoding_RIMI : _zz_13__string = "RIMI ";
      `AluCtrlEnum_defaultEncoding_SPEC : _zz_13__string = "SPEC ";
      default : _zz_13__string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_14_)
      `AluCtrlEnum_defaultEncoding_ADD : _zz_14__string = "ADD  ";
      `AluCtrlEnum_defaultEncoding_BIT_1 : _zz_14__string = "BIT_1";
      `AluCtrlEnum_defaultEncoding_RIMI : _zz_14__string = "RIMI ";
      `AluCtrlEnum_defaultEncoding_SPEC : _zz_14__string = "SPEC ";
      default : _zz_14__string = "?????";
    endcase
  end
  always @(*) begin
    case(memory_MSR_ENDIAN)
      `EndianEnum_defaultEncoding_BE : memory_MSR_ENDIAN_string = "BE";
      `EndianEnum_defaultEncoding_LE : memory_MSR_ENDIAN_string = "LE";
      default : memory_MSR_ENDIAN_string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_15_)
      `EndianEnum_defaultEncoding_BE : _zz_15__string = "BE";
      `EndianEnum_defaultEncoding_LE : _zz_15__string = "LE";
      default : _zz_15__string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_16_)
      `EndianEnum_defaultEncoding_BE : _zz_16__string = "BE";
      `EndianEnum_defaultEncoding_LE : _zz_16__string = "LE";
      default : _zz_16__string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_17_)
      `EndianEnum_defaultEncoding_BE : _zz_17__string = "BE";
      `EndianEnum_defaultEncoding_LE : _zz_17__string = "LE";
      default : _zz_17__string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_18_)
      `EndianEnum_defaultEncoding_BE : _zz_18__string = "BE";
      `EndianEnum_defaultEncoding_LE : _zz_18__string = "LE";
      default : _zz_18__string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_19_)
      `EndianEnum_defaultEncoding_BE : _zz_19__string = "BE";
      `EndianEnum_defaultEncoding_LE : _zz_19__string = "LE";
      default : _zz_19__string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_20_)
      `EndianEnum_defaultEncoding_BE : _zz_20__string = "BE";
      `EndianEnum_defaultEncoding_LE : _zz_20__string = "LE";
      default : _zz_20__string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_21_)
      `EndianEnum_defaultEncoding_BE : _zz_21__string = "BE";
      `EndianEnum_defaultEncoding_LE : _zz_21__string = "LE";
      default : _zz_21__string = "??";
    endcase
  end
  always @(*) begin
    case(decode_DECODER_stageables_0)
      `Src3CtrlEnum_defaultEncoding_CA : decode_DECODER_stageables_0_string = "CA  ";
      `Src3CtrlEnum_defaultEncoding_CA_0 : decode_DECODER_stageables_0_string = "CA_0";
      `Src3CtrlEnum_defaultEncoding_CA_1 : decode_DECODER_stageables_0_string = "CA_1";
      default : decode_DECODER_stageables_0_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_22_)
      `Src3CtrlEnum_defaultEncoding_CA : _zz_22__string = "CA  ";
      `Src3CtrlEnum_defaultEncoding_CA_0 : _zz_22__string = "CA_0";
      `Src3CtrlEnum_defaultEncoding_CA_1 : _zz_22__string = "CA_1";
      default : _zz_22__string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_23_)
      `Src3CtrlEnum_defaultEncoding_CA : _zz_23__string = "CA  ";
      `Src3CtrlEnum_defaultEncoding_CA_0 : _zz_23__string = "CA_0";
      `Src3CtrlEnum_defaultEncoding_CA_1 : _zz_23__string = "CA_1";
      default : _zz_23__string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_24_)
      `Src3CtrlEnum_defaultEncoding_CA : _zz_24__string = "CA  ";
      `Src3CtrlEnum_defaultEncoding_CA_0 : _zz_24__string = "CA_0";
      `Src3CtrlEnum_defaultEncoding_CA_1 : _zz_24__string = "CA_1";
      default : _zz_24__string = "????";
    endcase
  end
  always @(*) begin
    case(memory_DECODER_stageables_5)
      `DataSizeEnum_defaultEncoding_B : memory_DECODER_stageables_5_string = "B ";
      `DataSizeEnum_defaultEncoding_H : memory_DECODER_stageables_5_string = "H ";
      `DataSizeEnum_defaultEncoding_HA : memory_DECODER_stageables_5_string = "HA";
      `DataSizeEnum_defaultEncoding_W : memory_DECODER_stageables_5_string = "W ";
      default : memory_DECODER_stageables_5_string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_25_)
      `DataSizeEnum_defaultEncoding_B : _zz_25__string = "B ";
      `DataSizeEnum_defaultEncoding_H : _zz_25__string = "H ";
      `DataSizeEnum_defaultEncoding_HA : _zz_25__string = "HA";
      `DataSizeEnum_defaultEncoding_W : _zz_25__string = "W ";
      default : _zz_25__string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_26_)
      `DataSizeEnum_defaultEncoding_B : _zz_26__string = "B ";
      `DataSizeEnum_defaultEncoding_H : _zz_26__string = "H ";
      `DataSizeEnum_defaultEncoding_HA : _zz_26__string = "HA";
      `DataSizeEnum_defaultEncoding_W : _zz_26__string = "W ";
      default : _zz_26__string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_27_)
      `DataSizeEnum_defaultEncoding_B : _zz_27__string = "B ";
      `DataSizeEnum_defaultEncoding_H : _zz_27__string = "H ";
      `DataSizeEnum_defaultEncoding_HA : _zz_27__string = "HA";
      `DataSizeEnum_defaultEncoding_W : _zz_27__string = "W ";
      default : _zz_27__string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_28_)
      `DataSizeEnum_defaultEncoding_B : _zz_28__string = "B ";
      `DataSizeEnum_defaultEncoding_H : _zz_28__string = "H ";
      `DataSizeEnum_defaultEncoding_HA : _zz_28__string = "HA";
      `DataSizeEnum_defaultEncoding_W : _zz_28__string = "W ";
      default : _zz_28__string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_29_)
      `DataSizeEnum_defaultEncoding_B : _zz_29__string = "B ";
      `DataSizeEnum_defaultEncoding_H : _zz_29__string = "H ";
      `DataSizeEnum_defaultEncoding_HA : _zz_29__string = "HA";
      `DataSizeEnum_defaultEncoding_W : _zz_29__string = "W ";
      default : _zz_29__string = "??";
    endcase
  end
  always @(*) begin
    case(decode_DECODER_stageables_5)
      `DataSizeEnum_defaultEncoding_B : decode_DECODER_stageables_5_string = "B ";
      `DataSizeEnum_defaultEncoding_H : decode_DECODER_stageables_5_string = "H ";
      `DataSizeEnum_defaultEncoding_HA : decode_DECODER_stageables_5_string = "HA";
      `DataSizeEnum_defaultEncoding_W : decode_DECODER_stageables_5_string = "W ";
      default : decode_DECODER_stageables_5_string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_30_)
      `DataSizeEnum_defaultEncoding_B : _zz_30__string = "B ";
      `DataSizeEnum_defaultEncoding_H : _zz_30__string = "H ";
      `DataSizeEnum_defaultEncoding_HA : _zz_30__string = "HA";
      `DataSizeEnum_defaultEncoding_W : _zz_30__string = "W ";
      default : _zz_30__string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_31_)
      `DataSizeEnum_defaultEncoding_B : _zz_31__string = "B ";
      `DataSizeEnum_defaultEncoding_H : _zz_31__string = "H ";
      `DataSizeEnum_defaultEncoding_HA : _zz_31__string = "HA";
      `DataSizeEnum_defaultEncoding_W : _zz_31__string = "W ";
      default : _zz_31__string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_32_)
      `DataSizeEnum_defaultEncoding_B : _zz_32__string = "B ";
      `DataSizeEnum_defaultEncoding_H : _zz_32__string = "H ";
      `DataSizeEnum_defaultEncoding_HA : _zz_32__string = "HA";
      `DataSizeEnum_defaultEncoding_W : _zz_32__string = "W ";
      default : _zz_32__string = "??";
    endcase
  end
  always @(*) begin
    case(decode_DECODER_stageables_56)
      `AluSpecCtrlEnum_defaultEncoding_CNTLZW : decode_DECODER_stageables_56_string = "CNTLZW ";
      `AluSpecCtrlEnum_defaultEncoding_CNTTZW : decode_DECODER_stageables_56_string = "CNTTZW ";
      `AluSpecCtrlEnum_defaultEncoding_POPCNTB : decode_DECODER_stageables_56_string = "POPCNTB";
      `AluSpecCtrlEnum_defaultEncoding_POPCNTW : decode_DECODER_stageables_56_string = "POPCNTW";
      `AluSpecCtrlEnum_defaultEncoding_CMPB : decode_DECODER_stageables_56_string = "CMPB   ";
      `AluSpecCtrlEnum_defaultEncoding_PRTYW : decode_DECODER_stageables_56_string = "PRTYW  ";
      default : decode_DECODER_stageables_56_string = "???????";
    endcase
  end
  always @(*) begin
    case(_zz_33_)
      `AluSpecCtrlEnum_defaultEncoding_CNTLZW : _zz_33__string = "CNTLZW ";
      `AluSpecCtrlEnum_defaultEncoding_CNTTZW : _zz_33__string = "CNTTZW ";
      `AluSpecCtrlEnum_defaultEncoding_POPCNTB : _zz_33__string = "POPCNTB";
      `AluSpecCtrlEnum_defaultEncoding_POPCNTW : _zz_33__string = "POPCNTW";
      `AluSpecCtrlEnum_defaultEncoding_CMPB : _zz_33__string = "CMPB   ";
      `AluSpecCtrlEnum_defaultEncoding_PRTYW : _zz_33__string = "PRTYW  ";
      default : _zz_33__string = "???????";
    endcase
  end
  always @(*) begin
    case(_zz_34_)
      `AluSpecCtrlEnum_defaultEncoding_CNTLZW : _zz_34__string = "CNTLZW ";
      `AluSpecCtrlEnum_defaultEncoding_CNTTZW : _zz_34__string = "CNTTZW ";
      `AluSpecCtrlEnum_defaultEncoding_POPCNTB : _zz_34__string = "POPCNTB";
      `AluSpecCtrlEnum_defaultEncoding_POPCNTW : _zz_34__string = "POPCNTW";
      `AluSpecCtrlEnum_defaultEncoding_CMPB : _zz_34__string = "CMPB   ";
      `AluSpecCtrlEnum_defaultEncoding_PRTYW : _zz_34__string = "PRTYW  ";
      default : _zz_34__string = "???????";
    endcase
  end
  always @(*) begin
    case(_zz_35_)
      `AluSpecCtrlEnum_defaultEncoding_CNTLZW : _zz_35__string = "CNTLZW ";
      `AluSpecCtrlEnum_defaultEncoding_CNTTZW : _zz_35__string = "CNTTZW ";
      `AluSpecCtrlEnum_defaultEncoding_POPCNTB : _zz_35__string = "POPCNTB";
      `AluSpecCtrlEnum_defaultEncoding_POPCNTW : _zz_35__string = "POPCNTW";
      `AluSpecCtrlEnum_defaultEncoding_CMPB : _zz_35__string = "CMPB   ";
      `AluSpecCtrlEnum_defaultEncoding_PRTYW : _zz_35__string = "PRTYW  ";
      default : _zz_35__string = "???????";
    endcase
  end
  always @(*) begin
    case(decode_DECODER_stageables_18)
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : decode_DECODER_stageables_18_string = "AND_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_ANDC : decode_DECODER_stageables_18_string = "ANDC  ";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : decode_DECODER_stageables_18_string = "OR_1  ";
      `AluBitwiseCtrlEnum_defaultEncoding_ORC : decode_DECODER_stageables_18_string = "ORC   ";
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : decode_DECODER_stageables_18_string = "XOR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_XORC : decode_DECODER_stageables_18_string = "XORC  ";
      `AluBitwiseCtrlEnum_defaultEncoding_EQV : decode_DECODER_stageables_18_string = "EQV   ";
      `AluBitwiseCtrlEnum_defaultEncoding_NAND_1 : decode_DECODER_stageables_18_string = "NAND_1";
      `AluBitwiseCtrlEnum_defaultEncoding_NOR_1 : decode_DECODER_stageables_18_string = "NOR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_EXTSB : decode_DECODER_stageables_18_string = "EXTSB ";
      `AluBitwiseCtrlEnum_defaultEncoding_EXTSH : decode_DECODER_stageables_18_string = "EXTSH ";
      default : decode_DECODER_stageables_18_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_36_)
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_36__string = "AND_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_ANDC : _zz_36__string = "ANDC  ";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_36__string = "OR_1  ";
      `AluBitwiseCtrlEnum_defaultEncoding_ORC : _zz_36__string = "ORC   ";
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_36__string = "XOR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_XORC : _zz_36__string = "XORC  ";
      `AluBitwiseCtrlEnum_defaultEncoding_EQV : _zz_36__string = "EQV   ";
      `AluBitwiseCtrlEnum_defaultEncoding_NAND_1 : _zz_36__string = "NAND_1";
      `AluBitwiseCtrlEnum_defaultEncoding_NOR_1 : _zz_36__string = "NOR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_EXTSB : _zz_36__string = "EXTSB ";
      `AluBitwiseCtrlEnum_defaultEncoding_EXTSH : _zz_36__string = "EXTSH ";
      default : _zz_36__string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_37_)
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_37__string = "AND_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_ANDC : _zz_37__string = "ANDC  ";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_37__string = "OR_1  ";
      `AluBitwiseCtrlEnum_defaultEncoding_ORC : _zz_37__string = "ORC   ";
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_37__string = "XOR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_XORC : _zz_37__string = "XORC  ";
      `AluBitwiseCtrlEnum_defaultEncoding_EQV : _zz_37__string = "EQV   ";
      `AluBitwiseCtrlEnum_defaultEncoding_NAND_1 : _zz_37__string = "NAND_1";
      `AluBitwiseCtrlEnum_defaultEncoding_NOR_1 : _zz_37__string = "NOR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_EXTSB : _zz_37__string = "EXTSB ";
      `AluBitwiseCtrlEnum_defaultEncoding_EXTSH : _zz_37__string = "EXTSH ";
      default : _zz_37__string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_38_)
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_38__string = "AND_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_ANDC : _zz_38__string = "ANDC  ";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_38__string = "OR_1  ";
      `AluBitwiseCtrlEnum_defaultEncoding_ORC : _zz_38__string = "ORC   ";
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_38__string = "XOR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_XORC : _zz_38__string = "XORC  ";
      `AluBitwiseCtrlEnum_defaultEncoding_EQV : _zz_38__string = "EQV   ";
      `AluBitwiseCtrlEnum_defaultEncoding_NAND_1 : _zz_38__string = "NAND_1";
      `AluBitwiseCtrlEnum_defaultEncoding_NOR_1 : _zz_38__string = "NOR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_EXTSB : _zz_38__string = "EXTSB ";
      `AluBitwiseCtrlEnum_defaultEncoding_EXTSH : _zz_38__string = "EXTSH ";
      default : _zz_38__string = "??????";
    endcase
  end
  always @(*) begin
    case(decode_DECODER_stageables_15)
      `AluRimiCtrlEnum_defaultEncoding_ROT : decode_DECODER_stageables_15_string = "ROT    ";
      `AluRimiCtrlEnum_defaultEncoding_INS : decode_DECODER_stageables_15_string = "INS    ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTL : decode_DECODER_stageables_15_string = "SHIFTL ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTR : decode_DECODER_stageables_15_string = "SHIFTR ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTRA : decode_DECODER_stageables_15_string = "SHIFTRA";
      default : decode_DECODER_stageables_15_string = "???????";
    endcase
  end
  always @(*) begin
    case(_zz_39_)
      `AluRimiCtrlEnum_defaultEncoding_ROT : _zz_39__string = "ROT    ";
      `AluRimiCtrlEnum_defaultEncoding_INS : _zz_39__string = "INS    ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTL : _zz_39__string = "SHIFTL ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTR : _zz_39__string = "SHIFTR ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTRA : _zz_39__string = "SHIFTRA";
      default : _zz_39__string = "???????";
    endcase
  end
  always @(*) begin
    case(_zz_40_)
      `AluRimiCtrlEnum_defaultEncoding_ROT : _zz_40__string = "ROT    ";
      `AluRimiCtrlEnum_defaultEncoding_INS : _zz_40__string = "INS    ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTL : _zz_40__string = "SHIFTL ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTR : _zz_40__string = "SHIFTR ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTRA : _zz_40__string = "SHIFTRA";
      default : _zz_40__string = "???????";
    endcase
  end
  always @(*) begin
    case(_zz_41_)
      `AluRimiCtrlEnum_defaultEncoding_ROT : _zz_41__string = "ROT    ";
      `AluRimiCtrlEnum_defaultEncoding_INS : _zz_41__string = "INS    ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTL : _zz_41__string = "SHIFTL ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTR : _zz_41__string = "SHIFTR ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTRA : _zz_41__string = "SHIFTRA";
      default : _zz_41__string = "???????";
    endcase
  end
  always @(*) begin
    case(_zz_42_)
      `CRBusCmdEnum_defaultEncoding_NOP : _zz_42__string = "NOP   ";
      `CRBusCmdEnum_defaultEncoding_CR0 : _zz_42__string = "CR0   ";
      `CRBusCmdEnum_defaultEncoding_CR1 : _zz_42__string = "CR1   ";
      `CRBusCmdEnum_defaultEncoding_CR6 : _zz_42__string = "CR6   ";
      `CRBusCmdEnum_defaultEncoding_CMP : _zz_42__string = "CMP   ";
      `CRBusCmdEnum_defaultEncoding_AND_1 : _zz_42__string = "AND_1 ";
      `CRBusCmdEnum_defaultEncoding_OR_1 : _zz_42__string = "OR_1  ";
      `CRBusCmdEnum_defaultEncoding_XOR_1 : _zz_42__string = "XOR_1 ";
      `CRBusCmdEnum_defaultEncoding_NAND_1 : _zz_42__string = "NAND_1";
      `CRBusCmdEnum_defaultEncoding_NOR_1 : _zz_42__string = "NOR_1 ";
      `CRBusCmdEnum_defaultEncoding_EQV : _zz_42__string = "EQV   ";
      `CRBusCmdEnum_defaultEncoding_ANDC : _zz_42__string = "ANDC  ";
      `CRBusCmdEnum_defaultEncoding_ORC : _zz_42__string = "ORC   ";
      `CRBusCmdEnum_defaultEncoding_MCRF : _zz_42__string = "MCRF  ";
      `CRBusCmdEnum_defaultEncoding_MCRXRX : _zz_42__string = "MCRXRX";
      `CRBusCmdEnum_defaultEncoding_MTOCRF : _zz_42__string = "MTOCRF";
      `CRBusCmdEnum_defaultEncoding_MTCRF : _zz_42__string = "MTCRF ";
      `CRBusCmdEnum_defaultEncoding_DEC : _zz_42__string = "DEC   ";
      `CRBusCmdEnum_defaultEncoding_LNK : _zz_42__string = "LNK   ";
      `CRBusCmdEnum_defaultEncoding_DECLNK : _zz_42__string = "DECLNK";
      default : _zz_42__string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_43_)
      `CRBusCmdEnum_defaultEncoding_NOP : _zz_43__string = "NOP   ";
      `CRBusCmdEnum_defaultEncoding_CR0 : _zz_43__string = "CR0   ";
      `CRBusCmdEnum_defaultEncoding_CR1 : _zz_43__string = "CR1   ";
      `CRBusCmdEnum_defaultEncoding_CR6 : _zz_43__string = "CR6   ";
      `CRBusCmdEnum_defaultEncoding_CMP : _zz_43__string = "CMP   ";
      `CRBusCmdEnum_defaultEncoding_AND_1 : _zz_43__string = "AND_1 ";
      `CRBusCmdEnum_defaultEncoding_OR_1 : _zz_43__string = "OR_1  ";
      `CRBusCmdEnum_defaultEncoding_XOR_1 : _zz_43__string = "XOR_1 ";
      `CRBusCmdEnum_defaultEncoding_NAND_1 : _zz_43__string = "NAND_1";
      `CRBusCmdEnum_defaultEncoding_NOR_1 : _zz_43__string = "NOR_1 ";
      `CRBusCmdEnum_defaultEncoding_EQV : _zz_43__string = "EQV   ";
      `CRBusCmdEnum_defaultEncoding_ANDC : _zz_43__string = "ANDC  ";
      `CRBusCmdEnum_defaultEncoding_ORC : _zz_43__string = "ORC   ";
      `CRBusCmdEnum_defaultEncoding_MCRF : _zz_43__string = "MCRF  ";
      `CRBusCmdEnum_defaultEncoding_MCRXRX : _zz_43__string = "MCRXRX";
      `CRBusCmdEnum_defaultEncoding_MTOCRF : _zz_43__string = "MTOCRF";
      `CRBusCmdEnum_defaultEncoding_MTCRF : _zz_43__string = "MTCRF ";
      `CRBusCmdEnum_defaultEncoding_DEC : _zz_43__string = "DEC   ";
      `CRBusCmdEnum_defaultEncoding_LNK : _zz_43__string = "LNK   ";
      `CRBusCmdEnum_defaultEncoding_DECLNK : _zz_43__string = "DECLNK";
      default : _zz_43__string = "??????";
    endcase
  end
  always @(*) begin
    case(execute_CR_WRITE_op)
      `CRBusCmdEnum_defaultEncoding_NOP : execute_CR_WRITE_op_string = "NOP   ";
      `CRBusCmdEnum_defaultEncoding_CR0 : execute_CR_WRITE_op_string = "CR0   ";
      `CRBusCmdEnum_defaultEncoding_CR1 : execute_CR_WRITE_op_string = "CR1   ";
      `CRBusCmdEnum_defaultEncoding_CR6 : execute_CR_WRITE_op_string = "CR6   ";
      `CRBusCmdEnum_defaultEncoding_CMP : execute_CR_WRITE_op_string = "CMP   ";
      `CRBusCmdEnum_defaultEncoding_AND_1 : execute_CR_WRITE_op_string = "AND_1 ";
      `CRBusCmdEnum_defaultEncoding_OR_1 : execute_CR_WRITE_op_string = "OR_1  ";
      `CRBusCmdEnum_defaultEncoding_XOR_1 : execute_CR_WRITE_op_string = "XOR_1 ";
      `CRBusCmdEnum_defaultEncoding_NAND_1 : execute_CR_WRITE_op_string = "NAND_1";
      `CRBusCmdEnum_defaultEncoding_NOR_1 : execute_CR_WRITE_op_string = "NOR_1 ";
      `CRBusCmdEnum_defaultEncoding_EQV : execute_CR_WRITE_op_string = "EQV   ";
      `CRBusCmdEnum_defaultEncoding_ANDC : execute_CR_WRITE_op_string = "ANDC  ";
      `CRBusCmdEnum_defaultEncoding_ORC : execute_CR_WRITE_op_string = "ORC   ";
      `CRBusCmdEnum_defaultEncoding_MCRF : execute_CR_WRITE_op_string = "MCRF  ";
      `CRBusCmdEnum_defaultEncoding_MCRXRX : execute_CR_WRITE_op_string = "MCRXRX";
      `CRBusCmdEnum_defaultEncoding_MTOCRF : execute_CR_WRITE_op_string = "MTOCRF";
      `CRBusCmdEnum_defaultEncoding_MTCRF : execute_CR_WRITE_op_string = "MTCRF ";
      `CRBusCmdEnum_defaultEncoding_DEC : execute_CR_WRITE_op_string = "DEC   ";
      `CRBusCmdEnum_defaultEncoding_LNK : execute_CR_WRITE_op_string = "LNK   ";
      `CRBusCmdEnum_defaultEncoding_DECLNK : execute_CR_WRITE_op_string = "DECLNK";
      default : execute_CR_WRITE_op_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_44_)
      `CRBusCmdEnum_defaultEncoding_NOP : _zz_44__string = "NOP   ";
      `CRBusCmdEnum_defaultEncoding_CR0 : _zz_44__string = "CR0   ";
      `CRBusCmdEnum_defaultEncoding_CR1 : _zz_44__string = "CR1   ";
      `CRBusCmdEnum_defaultEncoding_CR6 : _zz_44__string = "CR6   ";
      `CRBusCmdEnum_defaultEncoding_CMP : _zz_44__string = "CMP   ";
      `CRBusCmdEnum_defaultEncoding_AND_1 : _zz_44__string = "AND_1 ";
      `CRBusCmdEnum_defaultEncoding_OR_1 : _zz_44__string = "OR_1  ";
      `CRBusCmdEnum_defaultEncoding_XOR_1 : _zz_44__string = "XOR_1 ";
      `CRBusCmdEnum_defaultEncoding_NAND_1 : _zz_44__string = "NAND_1";
      `CRBusCmdEnum_defaultEncoding_NOR_1 : _zz_44__string = "NOR_1 ";
      `CRBusCmdEnum_defaultEncoding_EQV : _zz_44__string = "EQV   ";
      `CRBusCmdEnum_defaultEncoding_ANDC : _zz_44__string = "ANDC  ";
      `CRBusCmdEnum_defaultEncoding_ORC : _zz_44__string = "ORC   ";
      `CRBusCmdEnum_defaultEncoding_MCRF : _zz_44__string = "MCRF  ";
      `CRBusCmdEnum_defaultEncoding_MCRXRX : _zz_44__string = "MCRXRX";
      `CRBusCmdEnum_defaultEncoding_MTOCRF : _zz_44__string = "MTOCRF";
      `CRBusCmdEnum_defaultEncoding_MTCRF : _zz_44__string = "MTCRF ";
      `CRBusCmdEnum_defaultEncoding_DEC : _zz_44__string = "DEC   ";
      `CRBusCmdEnum_defaultEncoding_LNK : _zz_44__string = "LNK   ";
      `CRBusCmdEnum_defaultEncoding_DECLNK : _zz_44__string = "DECLNK";
      default : _zz_44__string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_45_)
      `CRBusCmdEnum_defaultEncoding_NOP : _zz_45__string = "NOP   ";
      `CRBusCmdEnum_defaultEncoding_CR0 : _zz_45__string = "CR0   ";
      `CRBusCmdEnum_defaultEncoding_CR1 : _zz_45__string = "CR1   ";
      `CRBusCmdEnum_defaultEncoding_CR6 : _zz_45__string = "CR6   ";
      `CRBusCmdEnum_defaultEncoding_CMP : _zz_45__string = "CMP   ";
      `CRBusCmdEnum_defaultEncoding_AND_1 : _zz_45__string = "AND_1 ";
      `CRBusCmdEnum_defaultEncoding_OR_1 : _zz_45__string = "OR_1  ";
      `CRBusCmdEnum_defaultEncoding_XOR_1 : _zz_45__string = "XOR_1 ";
      `CRBusCmdEnum_defaultEncoding_NAND_1 : _zz_45__string = "NAND_1";
      `CRBusCmdEnum_defaultEncoding_NOR_1 : _zz_45__string = "NOR_1 ";
      `CRBusCmdEnum_defaultEncoding_EQV : _zz_45__string = "EQV   ";
      `CRBusCmdEnum_defaultEncoding_ANDC : _zz_45__string = "ANDC  ";
      `CRBusCmdEnum_defaultEncoding_ORC : _zz_45__string = "ORC   ";
      `CRBusCmdEnum_defaultEncoding_MCRF : _zz_45__string = "MCRF  ";
      `CRBusCmdEnum_defaultEncoding_MCRXRX : _zz_45__string = "MCRXRX";
      `CRBusCmdEnum_defaultEncoding_MTOCRF : _zz_45__string = "MTOCRF";
      `CRBusCmdEnum_defaultEncoding_MTCRF : _zz_45__string = "MTCRF ";
      `CRBusCmdEnum_defaultEncoding_DEC : _zz_45__string = "DEC   ";
      `CRBusCmdEnum_defaultEncoding_LNK : _zz_45__string = "LNK   ";
      `CRBusCmdEnum_defaultEncoding_DECLNK : _zz_45__string = "DECLNK";
      default : _zz_45__string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_46_)
      `CRBusCmdEnum_defaultEncoding_NOP : _zz_46__string = "NOP   ";
      `CRBusCmdEnum_defaultEncoding_CR0 : _zz_46__string = "CR0   ";
      `CRBusCmdEnum_defaultEncoding_CR1 : _zz_46__string = "CR1   ";
      `CRBusCmdEnum_defaultEncoding_CR6 : _zz_46__string = "CR6   ";
      `CRBusCmdEnum_defaultEncoding_CMP : _zz_46__string = "CMP   ";
      `CRBusCmdEnum_defaultEncoding_AND_1 : _zz_46__string = "AND_1 ";
      `CRBusCmdEnum_defaultEncoding_OR_1 : _zz_46__string = "OR_1  ";
      `CRBusCmdEnum_defaultEncoding_XOR_1 : _zz_46__string = "XOR_1 ";
      `CRBusCmdEnum_defaultEncoding_NAND_1 : _zz_46__string = "NAND_1";
      `CRBusCmdEnum_defaultEncoding_NOR_1 : _zz_46__string = "NOR_1 ";
      `CRBusCmdEnum_defaultEncoding_EQV : _zz_46__string = "EQV   ";
      `CRBusCmdEnum_defaultEncoding_ANDC : _zz_46__string = "ANDC  ";
      `CRBusCmdEnum_defaultEncoding_ORC : _zz_46__string = "ORC   ";
      `CRBusCmdEnum_defaultEncoding_MCRF : _zz_46__string = "MCRF  ";
      `CRBusCmdEnum_defaultEncoding_MCRXRX : _zz_46__string = "MCRXRX";
      `CRBusCmdEnum_defaultEncoding_MTOCRF : _zz_46__string = "MTOCRF";
      `CRBusCmdEnum_defaultEncoding_MTCRF : _zz_46__string = "MTCRF ";
      `CRBusCmdEnum_defaultEncoding_DEC : _zz_46__string = "DEC   ";
      `CRBusCmdEnum_defaultEncoding_LNK : _zz_46__string = "LNK   ";
      `CRBusCmdEnum_defaultEncoding_DECLNK : _zz_46__string = "DECLNK";
      default : _zz_46__string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_47_)
      `BranchCtrlEnum_defaultEncoding_NONE : _zz_47__string = "NONE ";
      `BranchCtrlEnum_defaultEncoding_BU : _zz_47__string = "BU   ";
      `BranchCtrlEnum_defaultEncoding_BC : _zz_47__string = "BC   ";
      `BranchCtrlEnum_defaultEncoding_BCLR : _zz_47__string = "BCLR ";
      `BranchCtrlEnum_defaultEncoding_BCCTR : _zz_47__string = "BCCTR";
      `BranchCtrlEnum_defaultEncoding_BCTAR : _zz_47__string = "BCTAR";
      default : _zz_47__string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_48_)
      `BranchCtrlEnum_defaultEncoding_NONE : _zz_48__string = "NONE ";
      `BranchCtrlEnum_defaultEncoding_BU : _zz_48__string = "BU   ";
      `BranchCtrlEnum_defaultEncoding_BC : _zz_48__string = "BC   ";
      `BranchCtrlEnum_defaultEncoding_BCLR : _zz_48__string = "BCLR ";
      `BranchCtrlEnum_defaultEncoding_BCCTR : _zz_48__string = "BCCTR";
      `BranchCtrlEnum_defaultEncoding_BCTAR : _zz_48__string = "BCTAR";
      default : _zz_48__string = "?????";
    endcase
  end
  always @(*) begin
    case(memory_DECODER_stageables_48)
      `EnvCtrlEnum_defaultEncoding_NONE : memory_DECODER_stageables_48_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_MFMSR : memory_DECODER_stageables_48_string = "MFMSR";
      `EnvCtrlEnum_defaultEncoding_MTMSR : memory_DECODER_stageables_48_string = "MTMSR";
      `EnvCtrlEnum_defaultEncoding_SC : memory_DECODER_stageables_48_string = "SC   ";
      `EnvCtrlEnum_defaultEncoding_SCV : memory_DECODER_stageables_48_string = "SCV  ";
      `EnvCtrlEnum_defaultEncoding_RFI : memory_DECODER_stageables_48_string = "RFI  ";
      `EnvCtrlEnum_defaultEncoding_RFSCV : memory_DECODER_stageables_48_string = "RFSCV";
      `EnvCtrlEnum_defaultEncoding_TW : memory_DECODER_stageables_48_string = "TW   ";
      `EnvCtrlEnum_defaultEncoding_TWI : memory_DECODER_stageables_48_string = "TWI  ";
      default : memory_DECODER_stageables_48_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_49_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_49__string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_MFMSR : _zz_49__string = "MFMSR";
      `EnvCtrlEnum_defaultEncoding_MTMSR : _zz_49__string = "MTMSR";
      `EnvCtrlEnum_defaultEncoding_SC : _zz_49__string = "SC   ";
      `EnvCtrlEnum_defaultEncoding_SCV : _zz_49__string = "SCV  ";
      `EnvCtrlEnum_defaultEncoding_RFI : _zz_49__string = "RFI  ";
      `EnvCtrlEnum_defaultEncoding_RFSCV : _zz_49__string = "RFSCV";
      `EnvCtrlEnum_defaultEncoding_TW : _zz_49__string = "TW   ";
      `EnvCtrlEnum_defaultEncoding_TWI : _zz_49__string = "TWI  ";
      default : _zz_49__string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_50_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_50__string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_MFMSR : _zz_50__string = "MFMSR";
      `EnvCtrlEnum_defaultEncoding_MTMSR : _zz_50__string = "MTMSR";
      `EnvCtrlEnum_defaultEncoding_SC : _zz_50__string = "SC   ";
      `EnvCtrlEnum_defaultEncoding_SCV : _zz_50__string = "SCV  ";
      `EnvCtrlEnum_defaultEncoding_RFI : _zz_50__string = "RFI  ";
      `EnvCtrlEnum_defaultEncoding_RFSCV : _zz_50__string = "RFSCV";
      `EnvCtrlEnum_defaultEncoding_TW : _zz_50__string = "TW   ";
      `EnvCtrlEnum_defaultEncoding_TWI : _zz_50__string = "TWI  ";
      default : _zz_50__string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_51_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_51__string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_MFMSR : _zz_51__string = "MFMSR";
      `EnvCtrlEnum_defaultEncoding_MTMSR : _zz_51__string = "MTMSR";
      `EnvCtrlEnum_defaultEncoding_SC : _zz_51__string = "SC   ";
      `EnvCtrlEnum_defaultEncoding_SCV : _zz_51__string = "SCV  ";
      `EnvCtrlEnum_defaultEncoding_RFI : _zz_51__string = "RFI  ";
      `EnvCtrlEnum_defaultEncoding_RFSCV : _zz_51__string = "RFSCV";
      `EnvCtrlEnum_defaultEncoding_TW : _zz_51__string = "TW   ";
      `EnvCtrlEnum_defaultEncoding_TWI : _zz_51__string = "TWI  ";
      default : _zz_51__string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_DECODER_stageables_48)
      `EnvCtrlEnum_defaultEncoding_NONE : decode_DECODER_stageables_48_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_MFMSR : decode_DECODER_stageables_48_string = "MFMSR";
      `EnvCtrlEnum_defaultEncoding_MTMSR : decode_DECODER_stageables_48_string = "MTMSR";
      `EnvCtrlEnum_defaultEncoding_SC : decode_DECODER_stageables_48_string = "SC   ";
      `EnvCtrlEnum_defaultEncoding_SCV : decode_DECODER_stageables_48_string = "SCV  ";
      `EnvCtrlEnum_defaultEncoding_RFI : decode_DECODER_stageables_48_string = "RFI  ";
      `EnvCtrlEnum_defaultEncoding_RFSCV : decode_DECODER_stageables_48_string = "RFSCV";
      `EnvCtrlEnum_defaultEncoding_TW : decode_DECODER_stageables_48_string = "TW   ";
      `EnvCtrlEnum_defaultEncoding_TWI : decode_DECODER_stageables_48_string = "TWI  ";
      default : decode_DECODER_stageables_48_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_52_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_52__string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_MFMSR : _zz_52__string = "MFMSR";
      `EnvCtrlEnum_defaultEncoding_MTMSR : _zz_52__string = "MTMSR";
      `EnvCtrlEnum_defaultEncoding_SC : _zz_52__string = "SC   ";
      `EnvCtrlEnum_defaultEncoding_SCV : _zz_52__string = "SCV  ";
      `EnvCtrlEnum_defaultEncoding_RFI : _zz_52__string = "RFI  ";
      `EnvCtrlEnum_defaultEncoding_RFSCV : _zz_52__string = "RFSCV";
      `EnvCtrlEnum_defaultEncoding_TW : _zz_52__string = "TW   ";
      `EnvCtrlEnum_defaultEncoding_TWI : _zz_52__string = "TWI  ";
      default : _zz_52__string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_53_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_53__string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_MFMSR : _zz_53__string = "MFMSR";
      `EnvCtrlEnum_defaultEncoding_MTMSR : _zz_53__string = "MTMSR";
      `EnvCtrlEnum_defaultEncoding_SC : _zz_53__string = "SC   ";
      `EnvCtrlEnum_defaultEncoding_SCV : _zz_53__string = "SCV  ";
      `EnvCtrlEnum_defaultEncoding_RFI : _zz_53__string = "RFI  ";
      `EnvCtrlEnum_defaultEncoding_RFSCV : _zz_53__string = "RFSCV";
      `EnvCtrlEnum_defaultEncoding_TW : _zz_53__string = "TW   ";
      `EnvCtrlEnum_defaultEncoding_TWI : _zz_53__string = "TWI  ";
      default : _zz_53__string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_54_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_54__string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_MFMSR : _zz_54__string = "MFMSR";
      `EnvCtrlEnum_defaultEncoding_MTMSR : _zz_54__string = "MTMSR";
      `EnvCtrlEnum_defaultEncoding_SC : _zz_54__string = "SC   ";
      `EnvCtrlEnum_defaultEncoding_SCV : _zz_54__string = "SCV  ";
      `EnvCtrlEnum_defaultEncoding_RFI : _zz_54__string = "RFI  ";
      `EnvCtrlEnum_defaultEncoding_RFSCV : _zz_54__string = "RFSCV";
      `EnvCtrlEnum_defaultEncoding_TW : _zz_54__string = "TW   ";
      `EnvCtrlEnum_defaultEncoding_TWI : _zz_54__string = "TWI  ";
      default : _zz_54__string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_DECODER_stageables_43)
      `AluRimiAmtEnum_defaultEncoding_IMM : decode_DECODER_stageables_43_string = "IMM";
      `AluRimiAmtEnum_defaultEncoding_RB : decode_DECODER_stageables_43_string = "RB ";
      default : decode_DECODER_stageables_43_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_55_)
      `AluRimiAmtEnum_defaultEncoding_IMM : _zz_55__string = "IMM";
      `AluRimiAmtEnum_defaultEncoding_RB : _zz_55__string = "RB ";
      default : _zz_55__string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_56_)
      `AluRimiAmtEnum_defaultEncoding_IMM : _zz_56__string = "IMM";
      `AluRimiAmtEnum_defaultEncoding_RB : _zz_56__string = "RB ";
      default : _zz_56__string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_57_)
      `AluRimiAmtEnum_defaultEncoding_IMM : _zz_57__string = "IMM";
      `AluRimiAmtEnum_defaultEncoding_RB : _zz_57__string = "RB ";
      default : _zz_57__string = "???";
    endcase
  end
  always @(*) begin
    case(decode_DECODER_stageables_50)
      `CRLogCtrlEnum_defaultEncoding_AND_1 : decode_DECODER_stageables_50_string = "AND_1 ";
      `CRLogCtrlEnum_defaultEncoding_OR_1 : decode_DECODER_stageables_50_string = "OR_1  ";
      `CRLogCtrlEnum_defaultEncoding_XOR_1 : decode_DECODER_stageables_50_string = "XOR_1 ";
      `CRLogCtrlEnum_defaultEncoding_NAND_1 : decode_DECODER_stageables_50_string = "NAND_1";
      `CRLogCtrlEnum_defaultEncoding_NOR_1 : decode_DECODER_stageables_50_string = "NOR_1 ";
      `CRLogCtrlEnum_defaultEncoding_EQV : decode_DECODER_stageables_50_string = "EQV   ";
      `CRLogCtrlEnum_defaultEncoding_ANDC : decode_DECODER_stageables_50_string = "ANDC  ";
      `CRLogCtrlEnum_defaultEncoding_ORC : decode_DECODER_stageables_50_string = "ORC   ";
      default : decode_DECODER_stageables_50_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_58_)
      `CRLogCtrlEnum_defaultEncoding_AND_1 : _zz_58__string = "AND_1 ";
      `CRLogCtrlEnum_defaultEncoding_OR_1 : _zz_58__string = "OR_1  ";
      `CRLogCtrlEnum_defaultEncoding_XOR_1 : _zz_58__string = "XOR_1 ";
      `CRLogCtrlEnum_defaultEncoding_NAND_1 : _zz_58__string = "NAND_1";
      `CRLogCtrlEnum_defaultEncoding_NOR_1 : _zz_58__string = "NOR_1 ";
      `CRLogCtrlEnum_defaultEncoding_EQV : _zz_58__string = "EQV   ";
      `CRLogCtrlEnum_defaultEncoding_ANDC : _zz_58__string = "ANDC  ";
      `CRLogCtrlEnum_defaultEncoding_ORC : _zz_58__string = "ORC   ";
      default : _zz_58__string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_59_)
      `CRLogCtrlEnum_defaultEncoding_AND_1 : _zz_59__string = "AND_1 ";
      `CRLogCtrlEnum_defaultEncoding_OR_1 : _zz_59__string = "OR_1  ";
      `CRLogCtrlEnum_defaultEncoding_XOR_1 : _zz_59__string = "XOR_1 ";
      `CRLogCtrlEnum_defaultEncoding_NAND_1 : _zz_59__string = "NAND_1";
      `CRLogCtrlEnum_defaultEncoding_NOR_1 : _zz_59__string = "NOR_1 ";
      `CRLogCtrlEnum_defaultEncoding_EQV : _zz_59__string = "EQV   ";
      `CRLogCtrlEnum_defaultEncoding_ANDC : _zz_59__string = "ANDC  ";
      `CRLogCtrlEnum_defaultEncoding_ORC : _zz_59__string = "ORC   ";
      default : _zz_59__string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_60_)
      `CRLogCtrlEnum_defaultEncoding_AND_1 : _zz_60__string = "AND_1 ";
      `CRLogCtrlEnum_defaultEncoding_OR_1 : _zz_60__string = "OR_1  ";
      `CRLogCtrlEnum_defaultEncoding_XOR_1 : _zz_60__string = "XOR_1 ";
      `CRLogCtrlEnum_defaultEncoding_NAND_1 : _zz_60__string = "NAND_1";
      `CRLogCtrlEnum_defaultEncoding_NOR_1 : _zz_60__string = "NOR_1 ";
      `CRLogCtrlEnum_defaultEncoding_EQV : _zz_60__string = "EQV   ";
      `CRLogCtrlEnum_defaultEncoding_ANDC : _zz_60__string = "ANDC  ";
      `CRLogCtrlEnum_defaultEncoding_ORC : _zz_60__string = "ORC   ";
      default : _zz_60__string = "??????";
    endcase
  end
  always @(*) begin
    case(writeBack_DECODER_stageables_48)
      `EnvCtrlEnum_defaultEncoding_NONE : writeBack_DECODER_stageables_48_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_MFMSR : writeBack_DECODER_stageables_48_string = "MFMSR";
      `EnvCtrlEnum_defaultEncoding_MTMSR : writeBack_DECODER_stageables_48_string = "MTMSR";
      `EnvCtrlEnum_defaultEncoding_SC : writeBack_DECODER_stageables_48_string = "SC   ";
      `EnvCtrlEnum_defaultEncoding_SCV : writeBack_DECODER_stageables_48_string = "SCV  ";
      `EnvCtrlEnum_defaultEncoding_RFI : writeBack_DECODER_stageables_48_string = "RFI  ";
      `EnvCtrlEnum_defaultEncoding_RFSCV : writeBack_DECODER_stageables_48_string = "RFSCV";
      `EnvCtrlEnum_defaultEncoding_TW : writeBack_DECODER_stageables_48_string = "TW   ";
      `EnvCtrlEnum_defaultEncoding_TWI : writeBack_DECODER_stageables_48_string = "TWI  ";
      default : writeBack_DECODER_stageables_48_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_61_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_61__string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_MFMSR : _zz_61__string = "MFMSR";
      `EnvCtrlEnum_defaultEncoding_MTMSR : _zz_61__string = "MTMSR";
      `EnvCtrlEnum_defaultEncoding_SC : _zz_61__string = "SC   ";
      `EnvCtrlEnum_defaultEncoding_SCV : _zz_61__string = "SCV  ";
      `EnvCtrlEnum_defaultEncoding_RFI : _zz_61__string = "RFI  ";
      `EnvCtrlEnum_defaultEncoding_RFSCV : _zz_61__string = "RFSCV";
      `EnvCtrlEnum_defaultEncoding_TW : _zz_61__string = "TW   ";
      `EnvCtrlEnum_defaultEncoding_TWI : _zz_61__string = "TWI  ";
      default : _zz_61__string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_62_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_62__string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_MFMSR : _zz_62__string = "MFMSR";
      `EnvCtrlEnum_defaultEncoding_MTMSR : _zz_62__string = "MTMSR";
      `EnvCtrlEnum_defaultEncoding_SC : _zz_62__string = "SC   ";
      `EnvCtrlEnum_defaultEncoding_SCV : _zz_62__string = "SCV  ";
      `EnvCtrlEnum_defaultEncoding_RFI : _zz_62__string = "RFI  ";
      `EnvCtrlEnum_defaultEncoding_RFSCV : _zz_62__string = "RFSCV";
      `EnvCtrlEnum_defaultEncoding_TW : _zz_62__string = "TW   ";
      `EnvCtrlEnum_defaultEncoding_TWI : _zz_62__string = "TWI  ";
      default : _zz_62__string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_63_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_63__string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_MFMSR : _zz_63__string = "MFMSR";
      `EnvCtrlEnum_defaultEncoding_MTMSR : _zz_63__string = "MTMSR";
      `EnvCtrlEnum_defaultEncoding_SC : _zz_63__string = "SC   ";
      `EnvCtrlEnum_defaultEncoding_SCV : _zz_63__string = "SCV  ";
      `EnvCtrlEnum_defaultEncoding_RFI : _zz_63__string = "RFI  ";
      `EnvCtrlEnum_defaultEncoding_RFSCV : _zz_63__string = "RFSCV";
      `EnvCtrlEnum_defaultEncoding_TW : _zz_63__string = "TW   ";
      `EnvCtrlEnum_defaultEncoding_TWI : _zz_63__string = "TWI  ";
      default : _zz_63__string = "?????";
    endcase
  end
  always @(*) begin
    case(execute_DECODER_stageables_48)
      `EnvCtrlEnum_defaultEncoding_NONE : execute_DECODER_stageables_48_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_MFMSR : execute_DECODER_stageables_48_string = "MFMSR";
      `EnvCtrlEnum_defaultEncoding_MTMSR : execute_DECODER_stageables_48_string = "MTMSR";
      `EnvCtrlEnum_defaultEncoding_SC : execute_DECODER_stageables_48_string = "SC   ";
      `EnvCtrlEnum_defaultEncoding_SCV : execute_DECODER_stageables_48_string = "SCV  ";
      `EnvCtrlEnum_defaultEncoding_RFI : execute_DECODER_stageables_48_string = "RFI  ";
      `EnvCtrlEnum_defaultEncoding_RFSCV : execute_DECODER_stageables_48_string = "RFSCV";
      `EnvCtrlEnum_defaultEncoding_TW : execute_DECODER_stageables_48_string = "TW   ";
      `EnvCtrlEnum_defaultEncoding_TWI : execute_DECODER_stageables_48_string = "TWI  ";
      default : execute_DECODER_stageables_48_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_64_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_64__string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_MFMSR : _zz_64__string = "MFMSR";
      `EnvCtrlEnum_defaultEncoding_MTMSR : _zz_64__string = "MTMSR";
      `EnvCtrlEnum_defaultEncoding_SC : _zz_64__string = "SC   ";
      `EnvCtrlEnum_defaultEncoding_SCV : _zz_64__string = "SCV  ";
      `EnvCtrlEnum_defaultEncoding_RFI : _zz_64__string = "RFI  ";
      `EnvCtrlEnum_defaultEncoding_RFSCV : _zz_64__string = "RFSCV";
      `EnvCtrlEnum_defaultEncoding_TW : _zz_64__string = "TW   ";
      `EnvCtrlEnum_defaultEncoding_TWI : _zz_64__string = "TWI  ";
      default : _zz_64__string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_65_)
      `EndianEnum_defaultEncoding_BE : _zz_65__string = "BE";
      `EndianEnum_defaultEncoding_LE : _zz_65__string = "LE";
      default : _zz_65__string = "??";
    endcase
  end
  always @(*) begin
    case(decode_DECODER_stageables_12)
      `BranchCtrlEnum_defaultEncoding_NONE : decode_DECODER_stageables_12_string = "NONE ";
      `BranchCtrlEnum_defaultEncoding_BU : decode_DECODER_stageables_12_string = "BU   ";
      `BranchCtrlEnum_defaultEncoding_BC : decode_DECODER_stageables_12_string = "BC   ";
      `BranchCtrlEnum_defaultEncoding_BCLR : decode_DECODER_stageables_12_string = "BCLR ";
      `BranchCtrlEnum_defaultEncoding_BCCTR : decode_DECODER_stageables_12_string = "BCCTR";
      `BranchCtrlEnum_defaultEncoding_BCTAR : decode_DECODER_stageables_12_string = "BCTAR";
      default : decode_DECODER_stageables_12_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_67_)
      `BranchCtrlEnum_defaultEncoding_NONE : _zz_67__string = "NONE ";
      `BranchCtrlEnum_defaultEncoding_BU : _zz_67__string = "BU   ";
      `BranchCtrlEnum_defaultEncoding_BC : _zz_67__string = "BC   ";
      `BranchCtrlEnum_defaultEncoding_BCLR : _zz_67__string = "BCLR ";
      `BranchCtrlEnum_defaultEncoding_BCCTR : _zz_67__string = "BCCTR";
      `BranchCtrlEnum_defaultEncoding_BCTAR : _zz_67__string = "BCTAR";
      default : _zz_67__string = "?????";
    endcase
  end
  always @(*) begin
    case(memory_CR_WRITE_op)
      `CRBusCmdEnum_defaultEncoding_NOP : memory_CR_WRITE_op_string = "NOP   ";
      `CRBusCmdEnum_defaultEncoding_CR0 : memory_CR_WRITE_op_string = "CR0   ";
      `CRBusCmdEnum_defaultEncoding_CR1 : memory_CR_WRITE_op_string = "CR1   ";
      `CRBusCmdEnum_defaultEncoding_CR6 : memory_CR_WRITE_op_string = "CR6   ";
      `CRBusCmdEnum_defaultEncoding_CMP : memory_CR_WRITE_op_string = "CMP   ";
      `CRBusCmdEnum_defaultEncoding_AND_1 : memory_CR_WRITE_op_string = "AND_1 ";
      `CRBusCmdEnum_defaultEncoding_OR_1 : memory_CR_WRITE_op_string = "OR_1  ";
      `CRBusCmdEnum_defaultEncoding_XOR_1 : memory_CR_WRITE_op_string = "XOR_1 ";
      `CRBusCmdEnum_defaultEncoding_NAND_1 : memory_CR_WRITE_op_string = "NAND_1";
      `CRBusCmdEnum_defaultEncoding_NOR_1 : memory_CR_WRITE_op_string = "NOR_1 ";
      `CRBusCmdEnum_defaultEncoding_EQV : memory_CR_WRITE_op_string = "EQV   ";
      `CRBusCmdEnum_defaultEncoding_ANDC : memory_CR_WRITE_op_string = "ANDC  ";
      `CRBusCmdEnum_defaultEncoding_ORC : memory_CR_WRITE_op_string = "ORC   ";
      `CRBusCmdEnum_defaultEncoding_MCRF : memory_CR_WRITE_op_string = "MCRF  ";
      `CRBusCmdEnum_defaultEncoding_MCRXRX : memory_CR_WRITE_op_string = "MCRXRX";
      `CRBusCmdEnum_defaultEncoding_MTOCRF : memory_CR_WRITE_op_string = "MTOCRF";
      `CRBusCmdEnum_defaultEncoding_MTCRF : memory_CR_WRITE_op_string = "MTCRF ";
      `CRBusCmdEnum_defaultEncoding_DEC : memory_CR_WRITE_op_string = "DEC   ";
      `CRBusCmdEnum_defaultEncoding_LNK : memory_CR_WRITE_op_string = "LNK   ";
      `CRBusCmdEnum_defaultEncoding_DECLNK : memory_CR_WRITE_op_string = "DECLNK";
      default : memory_CR_WRITE_op_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_68_)
      `CRBusCmdEnum_defaultEncoding_NOP : _zz_68__string = "NOP   ";
      `CRBusCmdEnum_defaultEncoding_CR0 : _zz_68__string = "CR0   ";
      `CRBusCmdEnum_defaultEncoding_CR1 : _zz_68__string = "CR1   ";
      `CRBusCmdEnum_defaultEncoding_CR6 : _zz_68__string = "CR6   ";
      `CRBusCmdEnum_defaultEncoding_CMP : _zz_68__string = "CMP   ";
      `CRBusCmdEnum_defaultEncoding_AND_1 : _zz_68__string = "AND_1 ";
      `CRBusCmdEnum_defaultEncoding_OR_1 : _zz_68__string = "OR_1  ";
      `CRBusCmdEnum_defaultEncoding_XOR_1 : _zz_68__string = "XOR_1 ";
      `CRBusCmdEnum_defaultEncoding_NAND_1 : _zz_68__string = "NAND_1";
      `CRBusCmdEnum_defaultEncoding_NOR_1 : _zz_68__string = "NOR_1 ";
      `CRBusCmdEnum_defaultEncoding_EQV : _zz_68__string = "EQV   ";
      `CRBusCmdEnum_defaultEncoding_ANDC : _zz_68__string = "ANDC  ";
      `CRBusCmdEnum_defaultEncoding_ORC : _zz_68__string = "ORC   ";
      `CRBusCmdEnum_defaultEncoding_MCRF : _zz_68__string = "MCRF  ";
      `CRBusCmdEnum_defaultEncoding_MCRXRX : _zz_68__string = "MCRXRX";
      `CRBusCmdEnum_defaultEncoding_MTOCRF : _zz_68__string = "MTOCRF";
      `CRBusCmdEnum_defaultEncoding_MTCRF : _zz_68__string = "MTCRF ";
      `CRBusCmdEnum_defaultEncoding_DEC : _zz_68__string = "DEC   ";
      `CRBusCmdEnum_defaultEncoding_LNK : _zz_68__string = "LNK   ";
      `CRBusCmdEnum_defaultEncoding_DECLNK : _zz_68__string = "DECLNK";
      default : _zz_68__string = "??????";
    endcase
  end
  always @(*) begin
    case(execute_DECODER_stageables_12)
      `BranchCtrlEnum_defaultEncoding_NONE : execute_DECODER_stageables_12_string = "NONE ";
      `BranchCtrlEnum_defaultEncoding_BU : execute_DECODER_stageables_12_string = "BU   ";
      `BranchCtrlEnum_defaultEncoding_BC : execute_DECODER_stageables_12_string = "BC   ";
      `BranchCtrlEnum_defaultEncoding_BCLR : execute_DECODER_stageables_12_string = "BCLR ";
      `BranchCtrlEnum_defaultEncoding_BCCTR : execute_DECODER_stageables_12_string = "BCCTR";
      `BranchCtrlEnum_defaultEncoding_BCTAR : execute_DECODER_stageables_12_string = "BCTAR";
      default : execute_DECODER_stageables_12_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_69_)
      `BranchCtrlEnum_defaultEncoding_NONE : _zz_69__string = "NONE ";
      `BranchCtrlEnum_defaultEncoding_BU : _zz_69__string = "BU   ";
      `BranchCtrlEnum_defaultEncoding_BC : _zz_69__string = "BC   ";
      `BranchCtrlEnum_defaultEncoding_BCLR : _zz_69__string = "BCLR ";
      `BranchCtrlEnum_defaultEncoding_BCCTR : _zz_69__string = "BCCTR";
      `BranchCtrlEnum_defaultEncoding_BCTAR : _zz_69__string = "BCTAR";
      default : _zz_69__string = "?????";
    endcase
  end
  always @(*) begin
    case(execute_DECODER_stageables_0)
      `Src3CtrlEnum_defaultEncoding_CA : execute_DECODER_stageables_0_string = "CA  ";
      `Src3CtrlEnum_defaultEncoding_CA_0 : execute_DECODER_stageables_0_string = "CA_0";
      `Src3CtrlEnum_defaultEncoding_CA_1 : execute_DECODER_stageables_0_string = "CA_1";
      default : execute_DECODER_stageables_0_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_72_)
      `Src3CtrlEnum_defaultEncoding_CA : _zz_72__string = "CA  ";
      `Src3CtrlEnum_defaultEncoding_CA_0 : _zz_72__string = "CA_0";
      `Src3CtrlEnum_defaultEncoding_CA_1 : _zz_72__string = "CA_1";
      default : _zz_72__string = "????";
    endcase
  end
  always @(*) begin
    case(execute_DECODER_stageables_24)
      `Src2CtrlEnum_defaultEncoding_RB : execute_DECODER_stageables_24_string = "RB      ";
      `Src2CtrlEnum_defaultEncoding_RB_0 : execute_DECODER_stageables_24_string = "RB_0    ";
      `Src2CtrlEnum_defaultEncoding_RB_M1 : execute_DECODER_stageables_24_string = "RB_M1   ";
      `Src2CtrlEnum_defaultEncoding_RB_UI : execute_DECODER_stageables_24_string = "RB_UI   ";
      `Src2CtrlEnum_defaultEncoding_RB_SI : execute_DECODER_stageables_24_string = "RB_SI   ";
      `Src2CtrlEnum_defaultEncoding_RB_SH : execute_DECODER_stageables_24_string = "RB_SH   ";
      `Src2CtrlEnum_defaultEncoding_RB_PCISD : execute_DECODER_stageables_24_string = "RB_PCISD";
      `Src2CtrlEnum_defaultEncoding_RA : execute_DECODER_stageables_24_string = "RA      ";
      default : execute_DECODER_stageables_24_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_73_)
      `Src2CtrlEnum_defaultEncoding_RB : _zz_73__string = "RB      ";
      `Src2CtrlEnum_defaultEncoding_RB_0 : _zz_73__string = "RB_0    ";
      `Src2CtrlEnum_defaultEncoding_RB_M1 : _zz_73__string = "RB_M1   ";
      `Src2CtrlEnum_defaultEncoding_RB_UI : _zz_73__string = "RB_UI   ";
      `Src2CtrlEnum_defaultEncoding_RB_SI : _zz_73__string = "RB_SI   ";
      `Src2CtrlEnum_defaultEncoding_RB_SH : _zz_73__string = "RB_SH   ";
      `Src2CtrlEnum_defaultEncoding_RB_PCISD : _zz_73__string = "RB_PCISD";
      `Src2CtrlEnum_defaultEncoding_RA : _zz_73__string = "RA      ";
      default : _zz_73__string = "????????";
    endcase
  end
  always @(*) begin
    case(execute_DECODER_stageables_36)
      `Src1CtrlEnum_defaultEncoding_RA : execute_DECODER_stageables_36_string = "RA    ";
      `Src1CtrlEnum_defaultEncoding_RA_N : execute_DECODER_stageables_36_string = "RA_N  ";
      `Src1CtrlEnum_defaultEncoding_RA_NIA : execute_DECODER_stageables_36_string = "RA_NIA";
      `Src1CtrlEnum_defaultEncoding_RA_0 : execute_DECODER_stageables_36_string = "RA_0  ";
      `Src1CtrlEnum_defaultEncoding_RS : execute_DECODER_stageables_36_string = "RS    ";
      default : execute_DECODER_stageables_36_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_76_)
      `Src1CtrlEnum_defaultEncoding_RA : _zz_76__string = "RA    ";
      `Src1CtrlEnum_defaultEncoding_RA_N : _zz_76__string = "RA_N  ";
      `Src1CtrlEnum_defaultEncoding_RA_NIA : _zz_76__string = "RA_NIA";
      `Src1CtrlEnum_defaultEncoding_RA_0 : _zz_76__string = "RA_0  ";
      `Src1CtrlEnum_defaultEncoding_RS : _zz_76__string = "RS    ";
      default : _zz_76__string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_78_)
      `CRBusCmdEnum_defaultEncoding_NOP : _zz_78__string = "NOP   ";
      `CRBusCmdEnum_defaultEncoding_CR0 : _zz_78__string = "CR0   ";
      `CRBusCmdEnum_defaultEncoding_CR1 : _zz_78__string = "CR1   ";
      `CRBusCmdEnum_defaultEncoding_CR6 : _zz_78__string = "CR6   ";
      `CRBusCmdEnum_defaultEncoding_CMP : _zz_78__string = "CMP   ";
      `CRBusCmdEnum_defaultEncoding_AND_1 : _zz_78__string = "AND_1 ";
      `CRBusCmdEnum_defaultEncoding_OR_1 : _zz_78__string = "OR_1  ";
      `CRBusCmdEnum_defaultEncoding_XOR_1 : _zz_78__string = "XOR_1 ";
      `CRBusCmdEnum_defaultEncoding_NAND_1 : _zz_78__string = "NAND_1";
      `CRBusCmdEnum_defaultEncoding_NOR_1 : _zz_78__string = "NOR_1 ";
      `CRBusCmdEnum_defaultEncoding_EQV : _zz_78__string = "EQV   ";
      `CRBusCmdEnum_defaultEncoding_ANDC : _zz_78__string = "ANDC  ";
      `CRBusCmdEnum_defaultEncoding_ORC : _zz_78__string = "ORC   ";
      `CRBusCmdEnum_defaultEncoding_MCRF : _zz_78__string = "MCRF  ";
      `CRBusCmdEnum_defaultEncoding_MCRXRX : _zz_78__string = "MCRXRX";
      `CRBusCmdEnum_defaultEncoding_MTOCRF : _zz_78__string = "MTOCRF";
      `CRBusCmdEnum_defaultEncoding_MTCRF : _zz_78__string = "MTCRF ";
      `CRBusCmdEnum_defaultEncoding_DEC : _zz_78__string = "DEC   ";
      `CRBusCmdEnum_defaultEncoding_LNK : _zz_78__string = "LNK   ";
      `CRBusCmdEnum_defaultEncoding_DECLNK : _zz_78__string = "DECLNK";
      default : _zz_78__string = "??????";
    endcase
  end
  always @(*) begin
    case(execute_DECODER_stageables_50)
      `CRLogCtrlEnum_defaultEncoding_AND_1 : execute_DECODER_stageables_50_string = "AND_1 ";
      `CRLogCtrlEnum_defaultEncoding_OR_1 : execute_DECODER_stageables_50_string = "OR_1  ";
      `CRLogCtrlEnum_defaultEncoding_XOR_1 : execute_DECODER_stageables_50_string = "XOR_1 ";
      `CRLogCtrlEnum_defaultEncoding_NAND_1 : execute_DECODER_stageables_50_string = "NAND_1";
      `CRLogCtrlEnum_defaultEncoding_NOR_1 : execute_DECODER_stageables_50_string = "NOR_1 ";
      `CRLogCtrlEnum_defaultEncoding_EQV : execute_DECODER_stageables_50_string = "EQV   ";
      `CRLogCtrlEnum_defaultEncoding_ANDC : execute_DECODER_stageables_50_string = "ANDC  ";
      `CRLogCtrlEnum_defaultEncoding_ORC : execute_DECODER_stageables_50_string = "ORC   ";
      default : execute_DECODER_stageables_50_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_79_)
      `CRLogCtrlEnum_defaultEncoding_AND_1 : _zz_79__string = "AND_1 ";
      `CRLogCtrlEnum_defaultEncoding_OR_1 : _zz_79__string = "OR_1  ";
      `CRLogCtrlEnum_defaultEncoding_XOR_1 : _zz_79__string = "XOR_1 ";
      `CRLogCtrlEnum_defaultEncoding_NAND_1 : _zz_79__string = "NAND_1";
      `CRLogCtrlEnum_defaultEncoding_NOR_1 : _zz_79__string = "NOR_1 ";
      `CRLogCtrlEnum_defaultEncoding_EQV : _zz_79__string = "EQV   ";
      `CRLogCtrlEnum_defaultEncoding_ANDC : _zz_79__string = "ANDC  ";
      `CRLogCtrlEnum_defaultEncoding_ORC : _zz_79__string = "ORC   ";
      default : _zz_79__string = "??????";
    endcase
  end
  always @(*) begin
    case(execute_DECODER_stageables_6)
      `CRMoveCtrlEnum_defaultEncoding_MCRF : execute_DECODER_stageables_6_string = "MCRF  ";
      `CRMoveCtrlEnum_defaultEncoding_MCRXRX : execute_DECODER_stageables_6_string = "MCRXRX";
      `CRMoveCtrlEnum_defaultEncoding_MTCRF : execute_DECODER_stageables_6_string = "MTCRF ";
      default : execute_DECODER_stageables_6_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_80_)
      `CRMoveCtrlEnum_defaultEncoding_MCRF : _zz_80__string = "MCRF  ";
      `CRMoveCtrlEnum_defaultEncoding_MCRXRX : _zz_80__string = "MCRXRX";
      `CRMoveCtrlEnum_defaultEncoding_MTCRF : _zz_80__string = "MTCRF ";
      default : _zz_80__string = "??????";
    endcase
  end
  always @(*) begin
    case(execute_DECODER_stageables_11)
      `TgtCtrlEnum_defaultEncoding_RT : execute_DECODER_stageables_11_string = "RT";
      `TgtCtrlEnum_defaultEncoding_RA : execute_DECODER_stageables_11_string = "RA";
      default : execute_DECODER_stageables_11_string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_82_)
      `TgtCtrlEnum_defaultEncoding_RT : _zz_82__string = "RT";
      `TgtCtrlEnum_defaultEncoding_RA : _zz_82__string = "RA";
      default : _zz_82__string = "??";
    endcase
  end
  always @(*) begin
    case(execute_DECODER_stageables_7)
      `AluCtrlEnum_defaultEncoding_ADD : execute_DECODER_stageables_7_string = "ADD  ";
      `AluCtrlEnum_defaultEncoding_BIT_1 : execute_DECODER_stageables_7_string = "BIT_1";
      `AluCtrlEnum_defaultEncoding_RIMI : execute_DECODER_stageables_7_string = "RIMI ";
      `AluCtrlEnum_defaultEncoding_SPEC : execute_DECODER_stageables_7_string = "SPEC ";
      default : execute_DECODER_stageables_7_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_83_)
      `AluCtrlEnum_defaultEncoding_ADD : _zz_83__string = "ADD  ";
      `AluCtrlEnum_defaultEncoding_BIT_1 : _zz_83__string = "BIT_1";
      `AluCtrlEnum_defaultEncoding_RIMI : _zz_83__string = "RIMI ";
      `AluCtrlEnum_defaultEncoding_SPEC : _zz_83__string = "SPEC ";
      default : _zz_83__string = "?????";
    endcase
  end
  always @(*) begin
    case(execute_DECODER_stageables_56)
      `AluSpecCtrlEnum_defaultEncoding_CNTLZW : execute_DECODER_stageables_56_string = "CNTLZW ";
      `AluSpecCtrlEnum_defaultEncoding_CNTTZW : execute_DECODER_stageables_56_string = "CNTTZW ";
      `AluSpecCtrlEnum_defaultEncoding_POPCNTB : execute_DECODER_stageables_56_string = "POPCNTB";
      `AluSpecCtrlEnum_defaultEncoding_POPCNTW : execute_DECODER_stageables_56_string = "POPCNTW";
      `AluSpecCtrlEnum_defaultEncoding_CMPB : execute_DECODER_stageables_56_string = "CMPB   ";
      `AluSpecCtrlEnum_defaultEncoding_PRTYW : execute_DECODER_stageables_56_string = "PRTYW  ";
      default : execute_DECODER_stageables_56_string = "???????";
    endcase
  end
  always @(*) begin
    case(_zz_84_)
      `AluSpecCtrlEnum_defaultEncoding_CNTLZW : _zz_84__string = "CNTLZW ";
      `AluSpecCtrlEnum_defaultEncoding_CNTTZW : _zz_84__string = "CNTTZW ";
      `AluSpecCtrlEnum_defaultEncoding_POPCNTB : _zz_84__string = "POPCNTB";
      `AluSpecCtrlEnum_defaultEncoding_POPCNTW : _zz_84__string = "POPCNTW";
      `AluSpecCtrlEnum_defaultEncoding_CMPB : _zz_84__string = "CMPB   ";
      `AluSpecCtrlEnum_defaultEncoding_PRTYW : _zz_84__string = "PRTYW  ";
      default : _zz_84__string = "???????";
    endcase
  end
  always @(*) begin
    case(execute_DECODER_stageables_15)
      `AluRimiCtrlEnum_defaultEncoding_ROT : execute_DECODER_stageables_15_string = "ROT    ";
      `AluRimiCtrlEnum_defaultEncoding_INS : execute_DECODER_stageables_15_string = "INS    ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTL : execute_DECODER_stageables_15_string = "SHIFTL ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTR : execute_DECODER_stageables_15_string = "SHIFTR ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTRA : execute_DECODER_stageables_15_string = "SHIFTRA";
      default : execute_DECODER_stageables_15_string = "???????";
    endcase
  end
  always @(*) begin
    case(_zz_100_)
      `AluRimiCtrlEnum_defaultEncoding_ROT : _zz_100__string = "ROT    ";
      `AluRimiCtrlEnum_defaultEncoding_INS : _zz_100__string = "INS    ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTL : _zz_100__string = "SHIFTL ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTR : _zz_100__string = "SHIFTR ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTRA : _zz_100__string = "SHIFTRA";
      default : _zz_100__string = "???????";
    endcase
  end
  always @(*) begin
    case(execute_DECODER_stageables_43)
      `AluRimiAmtEnum_defaultEncoding_IMM : execute_DECODER_stageables_43_string = "IMM";
      `AluRimiAmtEnum_defaultEncoding_RB : execute_DECODER_stageables_43_string = "RB ";
      default : execute_DECODER_stageables_43_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_101_)
      `AluRimiAmtEnum_defaultEncoding_IMM : _zz_101__string = "IMM";
      `AluRimiAmtEnum_defaultEncoding_RB : _zz_101__string = "RB ";
      default : _zz_101__string = "???";
    endcase
  end
  always @(*) begin
    case(execute_DECODER_stageables_18)
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : execute_DECODER_stageables_18_string = "AND_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_ANDC : execute_DECODER_stageables_18_string = "ANDC  ";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : execute_DECODER_stageables_18_string = "OR_1  ";
      `AluBitwiseCtrlEnum_defaultEncoding_ORC : execute_DECODER_stageables_18_string = "ORC   ";
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : execute_DECODER_stageables_18_string = "XOR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_XORC : execute_DECODER_stageables_18_string = "XORC  ";
      `AluBitwiseCtrlEnum_defaultEncoding_EQV : execute_DECODER_stageables_18_string = "EQV   ";
      `AluBitwiseCtrlEnum_defaultEncoding_NAND_1 : execute_DECODER_stageables_18_string = "NAND_1";
      `AluBitwiseCtrlEnum_defaultEncoding_NOR_1 : execute_DECODER_stageables_18_string = "NOR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_EXTSB : execute_DECODER_stageables_18_string = "EXTSB ";
      `AluBitwiseCtrlEnum_defaultEncoding_EXTSH : execute_DECODER_stageables_18_string = "EXTSH ";
      default : execute_DECODER_stageables_18_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_102_)
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_102__string = "AND_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_ANDC : _zz_102__string = "ANDC  ";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_102__string = "OR_1  ";
      `AluBitwiseCtrlEnum_defaultEncoding_ORC : _zz_102__string = "ORC   ";
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_102__string = "XOR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_XORC : _zz_102__string = "XORC  ";
      `AluBitwiseCtrlEnum_defaultEncoding_EQV : _zz_102__string = "EQV   ";
      `AluBitwiseCtrlEnum_defaultEncoding_NAND_1 : _zz_102__string = "NAND_1";
      `AluBitwiseCtrlEnum_defaultEncoding_NOR_1 : _zz_102__string = "NOR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_EXTSB : _zz_102__string = "EXTSB ";
      `AluBitwiseCtrlEnum_defaultEncoding_EXTSH : _zz_102__string = "EXTSH ";
      default : _zz_102__string = "??????";
    endcase
  end
  always @(*) begin
    case(writeBack_CR_WRITE_op)
      `CRBusCmdEnum_defaultEncoding_NOP : writeBack_CR_WRITE_op_string = "NOP   ";
      `CRBusCmdEnum_defaultEncoding_CR0 : writeBack_CR_WRITE_op_string = "CR0   ";
      `CRBusCmdEnum_defaultEncoding_CR1 : writeBack_CR_WRITE_op_string = "CR1   ";
      `CRBusCmdEnum_defaultEncoding_CR6 : writeBack_CR_WRITE_op_string = "CR6   ";
      `CRBusCmdEnum_defaultEncoding_CMP : writeBack_CR_WRITE_op_string = "CMP   ";
      `CRBusCmdEnum_defaultEncoding_AND_1 : writeBack_CR_WRITE_op_string = "AND_1 ";
      `CRBusCmdEnum_defaultEncoding_OR_1 : writeBack_CR_WRITE_op_string = "OR_1  ";
      `CRBusCmdEnum_defaultEncoding_XOR_1 : writeBack_CR_WRITE_op_string = "XOR_1 ";
      `CRBusCmdEnum_defaultEncoding_NAND_1 : writeBack_CR_WRITE_op_string = "NAND_1";
      `CRBusCmdEnum_defaultEncoding_NOR_1 : writeBack_CR_WRITE_op_string = "NOR_1 ";
      `CRBusCmdEnum_defaultEncoding_EQV : writeBack_CR_WRITE_op_string = "EQV   ";
      `CRBusCmdEnum_defaultEncoding_ANDC : writeBack_CR_WRITE_op_string = "ANDC  ";
      `CRBusCmdEnum_defaultEncoding_ORC : writeBack_CR_WRITE_op_string = "ORC   ";
      `CRBusCmdEnum_defaultEncoding_MCRF : writeBack_CR_WRITE_op_string = "MCRF  ";
      `CRBusCmdEnum_defaultEncoding_MCRXRX : writeBack_CR_WRITE_op_string = "MCRXRX";
      `CRBusCmdEnum_defaultEncoding_MTOCRF : writeBack_CR_WRITE_op_string = "MTOCRF";
      `CRBusCmdEnum_defaultEncoding_MTCRF : writeBack_CR_WRITE_op_string = "MTCRF ";
      `CRBusCmdEnum_defaultEncoding_DEC : writeBack_CR_WRITE_op_string = "DEC   ";
      `CRBusCmdEnum_defaultEncoding_LNK : writeBack_CR_WRITE_op_string = "LNK   ";
      `CRBusCmdEnum_defaultEncoding_DECLNK : writeBack_CR_WRITE_op_string = "DECLNK";
      default : writeBack_CR_WRITE_op_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_103_)
      `CRBusCmdEnum_defaultEncoding_NOP : _zz_103__string = "NOP   ";
      `CRBusCmdEnum_defaultEncoding_CR0 : _zz_103__string = "CR0   ";
      `CRBusCmdEnum_defaultEncoding_CR1 : _zz_103__string = "CR1   ";
      `CRBusCmdEnum_defaultEncoding_CR6 : _zz_103__string = "CR6   ";
      `CRBusCmdEnum_defaultEncoding_CMP : _zz_103__string = "CMP   ";
      `CRBusCmdEnum_defaultEncoding_AND_1 : _zz_103__string = "AND_1 ";
      `CRBusCmdEnum_defaultEncoding_OR_1 : _zz_103__string = "OR_1  ";
      `CRBusCmdEnum_defaultEncoding_XOR_1 : _zz_103__string = "XOR_1 ";
      `CRBusCmdEnum_defaultEncoding_NAND_1 : _zz_103__string = "NAND_1";
      `CRBusCmdEnum_defaultEncoding_NOR_1 : _zz_103__string = "NOR_1 ";
      `CRBusCmdEnum_defaultEncoding_EQV : _zz_103__string = "EQV   ";
      `CRBusCmdEnum_defaultEncoding_ANDC : _zz_103__string = "ANDC  ";
      `CRBusCmdEnum_defaultEncoding_ORC : _zz_103__string = "ORC   ";
      `CRBusCmdEnum_defaultEncoding_MCRF : _zz_103__string = "MCRF  ";
      `CRBusCmdEnum_defaultEncoding_MCRXRX : _zz_103__string = "MCRXRX";
      `CRBusCmdEnum_defaultEncoding_MTOCRF : _zz_103__string = "MTOCRF";
      `CRBusCmdEnum_defaultEncoding_MTCRF : _zz_103__string = "MTCRF ";
      `CRBusCmdEnum_defaultEncoding_DEC : _zz_103__string = "DEC   ";
      `CRBusCmdEnum_defaultEncoding_LNK : _zz_103__string = "LNK   ";
      `CRBusCmdEnum_defaultEncoding_DECLNK : _zz_103__string = "DECLNK";
      default : _zz_103__string = "??????";
    endcase
  end
  always @(*) begin
    case(decode_DECODER_stageables_11)
      `TgtCtrlEnum_defaultEncoding_RT : decode_DECODER_stageables_11_string = "RT";
      `TgtCtrlEnum_defaultEncoding_RA : decode_DECODER_stageables_11_string = "RA";
      default : decode_DECODER_stageables_11_string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_106_)
      `TgtCtrlEnum_defaultEncoding_RT : _zz_106__string = "RT";
      `TgtCtrlEnum_defaultEncoding_RA : _zz_106__string = "RA";
      default : _zz_106__string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_107_)
      `AluSpecCtrlEnum_defaultEncoding_CNTLZW : _zz_107__string = "CNTLZW ";
      `AluSpecCtrlEnum_defaultEncoding_CNTTZW : _zz_107__string = "CNTTZW ";
      `AluSpecCtrlEnum_defaultEncoding_POPCNTB : _zz_107__string = "POPCNTB";
      `AluSpecCtrlEnum_defaultEncoding_POPCNTW : _zz_107__string = "POPCNTW";
      `AluSpecCtrlEnum_defaultEncoding_CMPB : _zz_107__string = "CMPB   ";
      `AluSpecCtrlEnum_defaultEncoding_PRTYW : _zz_107__string = "PRTYW  ";
      default : _zz_107__string = "???????";
    endcase
  end
  always @(*) begin
    case(_zz_108_)
      `CRLogCtrlEnum_defaultEncoding_AND_1 : _zz_108__string = "AND_1 ";
      `CRLogCtrlEnum_defaultEncoding_OR_1 : _zz_108__string = "OR_1  ";
      `CRLogCtrlEnum_defaultEncoding_XOR_1 : _zz_108__string = "XOR_1 ";
      `CRLogCtrlEnum_defaultEncoding_NAND_1 : _zz_108__string = "NAND_1";
      `CRLogCtrlEnum_defaultEncoding_NOR_1 : _zz_108__string = "NOR_1 ";
      `CRLogCtrlEnum_defaultEncoding_EQV : _zz_108__string = "EQV   ";
      `CRLogCtrlEnum_defaultEncoding_ANDC : _zz_108__string = "ANDC  ";
      `CRLogCtrlEnum_defaultEncoding_ORC : _zz_108__string = "ORC   ";
      default : _zz_108__string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_109_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_109__string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_MFMSR : _zz_109__string = "MFMSR";
      `EnvCtrlEnum_defaultEncoding_MTMSR : _zz_109__string = "MTMSR";
      `EnvCtrlEnum_defaultEncoding_SC : _zz_109__string = "SC   ";
      `EnvCtrlEnum_defaultEncoding_SCV : _zz_109__string = "SCV  ";
      `EnvCtrlEnum_defaultEncoding_RFI : _zz_109__string = "RFI  ";
      `EnvCtrlEnum_defaultEncoding_RFSCV : _zz_109__string = "RFSCV";
      `EnvCtrlEnum_defaultEncoding_TW : _zz_109__string = "TW   ";
      `EnvCtrlEnum_defaultEncoding_TWI : _zz_109__string = "TWI  ";
      default : _zz_109__string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_110_)
      `AluRimiAmtEnum_defaultEncoding_IMM : _zz_110__string = "IMM";
      `AluRimiAmtEnum_defaultEncoding_RB : _zz_110__string = "RB ";
      default : _zz_110__string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_111_)
      `Src1CtrlEnum_defaultEncoding_RA : _zz_111__string = "RA    ";
      `Src1CtrlEnum_defaultEncoding_RA_N : _zz_111__string = "RA_N  ";
      `Src1CtrlEnum_defaultEncoding_RA_NIA : _zz_111__string = "RA_NIA";
      `Src1CtrlEnum_defaultEncoding_RA_0 : _zz_111__string = "RA_0  ";
      `Src1CtrlEnum_defaultEncoding_RS : _zz_111__string = "RS    ";
      default : _zz_111__string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_112_)
      `Src2CtrlEnum_defaultEncoding_RB : _zz_112__string = "RB      ";
      `Src2CtrlEnum_defaultEncoding_RB_0 : _zz_112__string = "RB_0    ";
      `Src2CtrlEnum_defaultEncoding_RB_M1 : _zz_112__string = "RB_M1   ";
      `Src2CtrlEnum_defaultEncoding_RB_UI : _zz_112__string = "RB_UI   ";
      `Src2CtrlEnum_defaultEncoding_RB_SI : _zz_112__string = "RB_SI   ";
      `Src2CtrlEnum_defaultEncoding_RB_SH : _zz_112__string = "RB_SH   ";
      `Src2CtrlEnum_defaultEncoding_RB_PCISD : _zz_112__string = "RB_PCISD";
      `Src2CtrlEnum_defaultEncoding_RA : _zz_112__string = "RA      ";
      default : _zz_112__string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_113_)
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_113__string = "AND_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_ANDC : _zz_113__string = "ANDC  ";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_113__string = "OR_1  ";
      `AluBitwiseCtrlEnum_defaultEncoding_ORC : _zz_113__string = "ORC   ";
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_113__string = "XOR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_XORC : _zz_113__string = "XORC  ";
      `AluBitwiseCtrlEnum_defaultEncoding_EQV : _zz_113__string = "EQV   ";
      `AluBitwiseCtrlEnum_defaultEncoding_NAND_1 : _zz_113__string = "NAND_1";
      `AluBitwiseCtrlEnum_defaultEncoding_NOR_1 : _zz_113__string = "NOR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_EXTSB : _zz_113__string = "EXTSB ";
      `AluBitwiseCtrlEnum_defaultEncoding_EXTSH : _zz_113__string = "EXTSH ";
      default : _zz_113__string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_114_)
      `AluRimiCtrlEnum_defaultEncoding_ROT : _zz_114__string = "ROT    ";
      `AluRimiCtrlEnum_defaultEncoding_INS : _zz_114__string = "INS    ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTL : _zz_114__string = "SHIFTL ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTR : _zz_114__string = "SHIFTR ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTRA : _zz_114__string = "SHIFTRA";
      default : _zz_114__string = "???????";
    endcase
  end
  always @(*) begin
    case(_zz_115_)
      `BranchCtrlEnum_defaultEncoding_NONE : _zz_115__string = "NONE ";
      `BranchCtrlEnum_defaultEncoding_BU : _zz_115__string = "BU   ";
      `BranchCtrlEnum_defaultEncoding_BC : _zz_115__string = "BC   ";
      `BranchCtrlEnum_defaultEncoding_BCLR : _zz_115__string = "BCLR ";
      `BranchCtrlEnum_defaultEncoding_BCCTR : _zz_115__string = "BCCTR";
      `BranchCtrlEnum_defaultEncoding_BCTAR : _zz_115__string = "BCTAR";
      default : _zz_115__string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_116_)
      `TgtCtrlEnum_defaultEncoding_RT : _zz_116__string = "RT";
      `TgtCtrlEnum_defaultEncoding_RA : _zz_116__string = "RA";
      default : _zz_116__string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_117_)
      `AluCtrlEnum_defaultEncoding_ADD : _zz_117__string = "ADD  ";
      `AluCtrlEnum_defaultEncoding_BIT_1 : _zz_117__string = "BIT_1";
      `AluCtrlEnum_defaultEncoding_RIMI : _zz_117__string = "RIMI ";
      `AluCtrlEnum_defaultEncoding_SPEC : _zz_117__string = "SPEC ";
      default : _zz_117__string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_118_)
      `CRMoveCtrlEnum_defaultEncoding_MCRF : _zz_118__string = "MCRF  ";
      `CRMoveCtrlEnum_defaultEncoding_MCRXRX : _zz_118__string = "MCRXRX";
      `CRMoveCtrlEnum_defaultEncoding_MTCRF : _zz_118__string = "MTCRF ";
      default : _zz_118__string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_119_)
      `DataSizeEnum_defaultEncoding_B : _zz_119__string = "B ";
      `DataSizeEnum_defaultEncoding_H : _zz_119__string = "H ";
      `DataSizeEnum_defaultEncoding_HA : _zz_119__string = "HA";
      `DataSizeEnum_defaultEncoding_W : _zz_119__string = "W ";
      default : _zz_119__string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_120_)
      `Src3CtrlEnum_defaultEncoding_CA : _zz_120__string = "CA  ";
      `Src3CtrlEnum_defaultEncoding_CA_0 : _zz_120__string = "CA_0";
      `Src3CtrlEnum_defaultEncoding_CA_1 : _zz_120__string = "CA_1";
      default : _zz_120__string = "????";
    endcase
  end
  always @(*) begin
    case(writeBack_DATA_SIZE)
      `DataSizeEnum_defaultEncoding_B : writeBack_DATA_SIZE_string = "B ";
      `DataSizeEnum_defaultEncoding_H : writeBack_DATA_SIZE_string = "H ";
      `DataSizeEnum_defaultEncoding_HA : writeBack_DATA_SIZE_string = "HA";
      `DataSizeEnum_defaultEncoding_W : writeBack_DATA_SIZE_string = "W ";
      default : writeBack_DATA_SIZE_string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_122_)
      `DataSizeEnum_defaultEncoding_B : _zz_122__string = "B ";
      `DataSizeEnum_defaultEncoding_H : _zz_122__string = "H ";
      `DataSizeEnum_defaultEncoding_HA : _zz_122__string = "HA";
      `DataSizeEnum_defaultEncoding_W : _zz_122__string = "W ";
      default : _zz_122__string = "??";
    endcase
  end
  always @(*) begin
    case(writeBack_MSR_ENDIAN)
      `EndianEnum_defaultEncoding_BE : writeBack_MSR_ENDIAN_string = "BE";
      `EndianEnum_defaultEncoding_LE : writeBack_MSR_ENDIAN_string = "LE";
      default : writeBack_MSR_ENDIAN_string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_123_)
      `EndianEnum_defaultEncoding_BE : _zz_123__string = "BE";
      `EndianEnum_defaultEncoding_LE : _zz_123__string = "LE";
      default : _zz_123__string = "??";
    endcase
  end
  always @(*) begin
    case(execute_DATA_SIZE)
      `DataSizeEnum_defaultEncoding_B : execute_DATA_SIZE_string = "B ";
      `DataSizeEnum_defaultEncoding_H : execute_DATA_SIZE_string = "H ";
      `DataSizeEnum_defaultEncoding_HA : execute_DATA_SIZE_string = "HA";
      `DataSizeEnum_defaultEncoding_W : execute_DATA_SIZE_string = "W ";
      default : execute_DATA_SIZE_string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_125_)
      `DataSizeEnum_defaultEncoding_B : _zz_125__string = "B ";
      `DataSizeEnum_defaultEncoding_H : _zz_125__string = "H ";
      `DataSizeEnum_defaultEncoding_HA : _zz_125__string = "HA";
      `DataSizeEnum_defaultEncoding_W : _zz_125__string = "W ";
      default : _zz_125__string = "??";
    endcase
  end
  always @(*) begin
    case(execute_MSR_ENDIAN)
      `EndianEnum_defaultEncoding_BE : execute_MSR_ENDIAN_string = "BE";
      `EndianEnum_defaultEncoding_LE : execute_MSR_ENDIAN_string = "LE";
      default : execute_MSR_ENDIAN_string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_126_)
      `EndianEnum_defaultEncoding_BE : _zz_126__string = "BE";
      `EndianEnum_defaultEncoding_LE : _zz_126__string = "LE";
      default : _zz_126__string = "??";
    endcase
  end
  always @(*) begin
    case(decode_MSR_ENDIAN)
      `EndianEnum_defaultEncoding_BE : decode_MSR_ENDIAN_string = "BE";
      `EndianEnum_defaultEncoding_LE : decode_MSR_ENDIAN_string = "LE";
      default : decode_MSR_ENDIAN_string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_129_)
      `EndianEnum_defaultEncoding_BE : _zz_129__string = "BE";
      `EndianEnum_defaultEncoding_LE : _zz_129__string = "LE";
      default : _zz_129__string = "??";
    endcase
  end
  always @(*) begin
    case(IBusCachedPlugin_decodeExceptionPort_payload_codePPC)
      `ExcpEnum_defaultEncoding_NONE : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "NONE    ";
      `ExcpEnum_defaultEncoding_SC : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "SC      ";
      `ExcpEnum_defaultEncoding_SCV : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "SCV     ";
      `ExcpEnum_defaultEncoding_TRAP : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "TRAP    ";
      `ExcpEnum_defaultEncoding_RFI : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "RFI     ";
      `ExcpEnum_defaultEncoding_RFSCV : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "RFSCV   ";
      `ExcpEnum_defaultEncoding_DSI : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "DSI     ";
      `ExcpEnum_defaultEncoding_DSI_PROT : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "DSI_PROT";
      `ExcpEnum_defaultEncoding_DSS : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "DSS     ";
      `ExcpEnum_defaultEncoding_ISI : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "ISI     ";
      `ExcpEnum_defaultEncoding_ISI_PROT : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "ISI_PROT";
      `ExcpEnum_defaultEncoding_ISS : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "ISS     ";
      `ExcpEnum_defaultEncoding_ALG : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "ALG     ";
      `ExcpEnum_defaultEncoding_PGM_ILL : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "PGM_ILL ";
      `ExcpEnum_defaultEncoding_PGM_PRV : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "PGM_PRV ";
      `ExcpEnum_defaultEncoding_FP : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "FP      ";
      `ExcpEnum_defaultEncoding_VEC : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "VEC     ";
      `ExcpEnum_defaultEncoding_VSX : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "VSX     ";
      `ExcpEnum_defaultEncoding_FAC : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "FAC     ";
      `ExcpEnum_defaultEncoding_SR : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "SR      ";
      `ExcpEnum_defaultEncoding_MC : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "MC      ";
      `ExcpEnum_defaultEncoding_EXT : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "EXT     ";
      `ExcpEnum_defaultEncoding_DEC : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "DEC     ";
      `ExcpEnum_defaultEncoding_TR : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "TR      ";
      `ExcpEnum_defaultEncoding_PM : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "PM      ";
      default : IBusCachedPlugin_decodeExceptionPort_payload_codePPC_string = "????????";
    endcase
  end
  always @(*) begin
    case(DBusCachedPlugin_exceptionBus_payload_codePPC)
      `ExcpEnum_defaultEncoding_NONE : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "NONE    ";
      `ExcpEnum_defaultEncoding_SC : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "SC      ";
      `ExcpEnum_defaultEncoding_SCV : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "SCV     ";
      `ExcpEnum_defaultEncoding_TRAP : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "TRAP    ";
      `ExcpEnum_defaultEncoding_RFI : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "RFI     ";
      `ExcpEnum_defaultEncoding_RFSCV : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "RFSCV   ";
      `ExcpEnum_defaultEncoding_DSI : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "DSI     ";
      `ExcpEnum_defaultEncoding_DSI_PROT : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "DSI_PROT";
      `ExcpEnum_defaultEncoding_DSS : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "DSS     ";
      `ExcpEnum_defaultEncoding_ISI : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "ISI     ";
      `ExcpEnum_defaultEncoding_ISI_PROT : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "ISI_PROT";
      `ExcpEnum_defaultEncoding_ISS : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "ISS     ";
      `ExcpEnum_defaultEncoding_ALG : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "ALG     ";
      `ExcpEnum_defaultEncoding_PGM_ILL : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "PGM_ILL ";
      `ExcpEnum_defaultEncoding_PGM_PRV : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "PGM_PRV ";
      `ExcpEnum_defaultEncoding_FP : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "FP      ";
      `ExcpEnum_defaultEncoding_VEC : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "VEC     ";
      `ExcpEnum_defaultEncoding_VSX : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "VSX     ";
      `ExcpEnum_defaultEncoding_FAC : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "FAC     ";
      `ExcpEnum_defaultEncoding_SR : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "SR      ";
      `ExcpEnum_defaultEncoding_MC : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "MC      ";
      `ExcpEnum_defaultEncoding_EXT : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "EXT     ";
      `ExcpEnum_defaultEncoding_DEC : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "DEC     ";
      `ExcpEnum_defaultEncoding_TR : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "TR      ";
      `ExcpEnum_defaultEncoding_PM : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "PM      ";
      default : DBusCachedPlugin_exceptionBus_payload_codePPC_string = "????????";
    endcase
  end
  always @(*) begin
    case(decodeExceptionPort_payload_codePPC)
      `ExcpEnum_defaultEncoding_NONE : decodeExceptionPort_payload_codePPC_string = "NONE    ";
      `ExcpEnum_defaultEncoding_SC : decodeExceptionPort_payload_codePPC_string = "SC      ";
      `ExcpEnum_defaultEncoding_SCV : decodeExceptionPort_payload_codePPC_string = "SCV     ";
      `ExcpEnum_defaultEncoding_TRAP : decodeExceptionPort_payload_codePPC_string = "TRAP    ";
      `ExcpEnum_defaultEncoding_RFI : decodeExceptionPort_payload_codePPC_string = "RFI     ";
      `ExcpEnum_defaultEncoding_RFSCV : decodeExceptionPort_payload_codePPC_string = "RFSCV   ";
      `ExcpEnum_defaultEncoding_DSI : decodeExceptionPort_payload_codePPC_string = "DSI     ";
      `ExcpEnum_defaultEncoding_DSI_PROT : decodeExceptionPort_payload_codePPC_string = "DSI_PROT";
      `ExcpEnum_defaultEncoding_DSS : decodeExceptionPort_payload_codePPC_string = "DSS     ";
      `ExcpEnum_defaultEncoding_ISI : decodeExceptionPort_payload_codePPC_string = "ISI     ";
      `ExcpEnum_defaultEncoding_ISI_PROT : decodeExceptionPort_payload_codePPC_string = "ISI_PROT";
      `ExcpEnum_defaultEncoding_ISS : decodeExceptionPort_payload_codePPC_string = "ISS     ";
      `ExcpEnum_defaultEncoding_ALG : decodeExceptionPort_payload_codePPC_string = "ALG     ";
      `ExcpEnum_defaultEncoding_PGM_ILL : decodeExceptionPort_payload_codePPC_string = "PGM_ILL ";
      `ExcpEnum_defaultEncoding_PGM_PRV : decodeExceptionPort_payload_codePPC_string = "PGM_PRV ";
      `ExcpEnum_defaultEncoding_FP : decodeExceptionPort_payload_codePPC_string = "FP      ";
      `ExcpEnum_defaultEncoding_VEC : decodeExceptionPort_payload_codePPC_string = "VEC     ";
      `ExcpEnum_defaultEncoding_VSX : decodeExceptionPort_payload_codePPC_string = "VSX     ";
      `ExcpEnum_defaultEncoding_FAC : decodeExceptionPort_payload_codePPC_string = "FAC     ";
      `ExcpEnum_defaultEncoding_SR : decodeExceptionPort_payload_codePPC_string = "SR      ";
      `ExcpEnum_defaultEncoding_MC : decodeExceptionPort_payload_codePPC_string = "MC      ";
      `ExcpEnum_defaultEncoding_EXT : decodeExceptionPort_payload_codePPC_string = "EXT     ";
      `ExcpEnum_defaultEncoding_DEC : decodeExceptionPort_payload_codePPC_string = "DEC     ";
      `ExcpEnum_defaultEncoding_TR : decodeExceptionPort_payload_codePPC_string = "TR      ";
      `ExcpEnum_defaultEncoding_PM : decodeExceptionPort_payload_codePPC_string = "PM      ";
      default : decodeExceptionPort_payload_codePPC_string = "????????";
    endcase
  end
  always @(*) begin
    case(BranchPlugin_branchExceptionPort_payload_codePPC)
      `ExcpEnum_defaultEncoding_NONE : BranchPlugin_branchExceptionPort_payload_codePPC_string = "NONE    ";
      `ExcpEnum_defaultEncoding_SC : BranchPlugin_branchExceptionPort_payload_codePPC_string = "SC      ";
      `ExcpEnum_defaultEncoding_SCV : BranchPlugin_branchExceptionPort_payload_codePPC_string = "SCV     ";
      `ExcpEnum_defaultEncoding_TRAP : BranchPlugin_branchExceptionPort_payload_codePPC_string = "TRAP    ";
      `ExcpEnum_defaultEncoding_RFI : BranchPlugin_branchExceptionPort_payload_codePPC_string = "RFI     ";
      `ExcpEnum_defaultEncoding_RFSCV : BranchPlugin_branchExceptionPort_payload_codePPC_string = "RFSCV   ";
      `ExcpEnum_defaultEncoding_DSI : BranchPlugin_branchExceptionPort_payload_codePPC_string = "DSI     ";
      `ExcpEnum_defaultEncoding_DSI_PROT : BranchPlugin_branchExceptionPort_payload_codePPC_string = "DSI_PROT";
      `ExcpEnum_defaultEncoding_DSS : BranchPlugin_branchExceptionPort_payload_codePPC_string = "DSS     ";
      `ExcpEnum_defaultEncoding_ISI : BranchPlugin_branchExceptionPort_payload_codePPC_string = "ISI     ";
      `ExcpEnum_defaultEncoding_ISI_PROT : BranchPlugin_branchExceptionPort_payload_codePPC_string = "ISI_PROT";
      `ExcpEnum_defaultEncoding_ISS : BranchPlugin_branchExceptionPort_payload_codePPC_string = "ISS     ";
      `ExcpEnum_defaultEncoding_ALG : BranchPlugin_branchExceptionPort_payload_codePPC_string = "ALG     ";
      `ExcpEnum_defaultEncoding_PGM_ILL : BranchPlugin_branchExceptionPort_payload_codePPC_string = "PGM_ILL ";
      `ExcpEnum_defaultEncoding_PGM_PRV : BranchPlugin_branchExceptionPort_payload_codePPC_string = "PGM_PRV ";
      `ExcpEnum_defaultEncoding_FP : BranchPlugin_branchExceptionPort_payload_codePPC_string = "FP      ";
      `ExcpEnum_defaultEncoding_VEC : BranchPlugin_branchExceptionPort_payload_codePPC_string = "VEC     ";
      `ExcpEnum_defaultEncoding_VSX : BranchPlugin_branchExceptionPort_payload_codePPC_string = "VSX     ";
      `ExcpEnum_defaultEncoding_FAC : BranchPlugin_branchExceptionPort_payload_codePPC_string = "FAC     ";
      `ExcpEnum_defaultEncoding_SR : BranchPlugin_branchExceptionPort_payload_codePPC_string = "SR      ";
      `ExcpEnum_defaultEncoding_MC : BranchPlugin_branchExceptionPort_payload_codePPC_string = "MC      ";
      `ExcpEnum_defaultEncoding_EXT : BranchPlugin_branchExceptionPort_payload_codePPC_string = "EXT     ";
      `ExcpEnum_defaultEncoding_DEC : BranchPlugin_branchExceptionPort_payload_codePPC_string = "DEC     ";
      `ExcpEnum_defaultEncoding_TR : BranchPlugin_branchExceptionPort_payload_codePPC_string = "TR      ";
      `ExcpEnum_defaultEncoding_PM : BranchPlugin_branchExceptionPort_payload_codePPC_string = "PM      ";
      default : BranchPlugin_branchExceptionPort_payload_codePPC_string = "????????";
    endcase
  end
  always @(*) begin
    case(SPRPlugin_selfException_payload_codePPC)
      `ExcpEnum_defaultEncoding_NONE : SPRPlugin_selfException_payload_codePPC_string = "NONE    ";
      `ExcpEnum_defaultEncoding_SC : SPRPlugin_selfException_payload_codePPC_string = "SC      ";
      `ExcpEnum_defaultEncoding_SCV : SPRPlugin_selfException_payload_codePPC_string = "SCV     ";
      `ExcpEnum_defaultEncoding_TRAP : SPRPlugin_selfException_payload_codePPC_string = "TRAP    ";
      `ExcpEnum_defaultEncoding_RFI : SPRPlugin_selfException_payload_codePPC_string = "RFI     ";
      `ExcpEnum_defaultEncoding_RFSCV : SPRPlugin_selfException_payload_codePPC_string = "RFSCV   ";
      `ExcpEnum_defaultEncoding_DSI : SPRPlugin_selfException_payload_codePPC_string = "DSI     ";
      `ExcpEnum_defaultEncoding_DSI_PROT : SPRPlugin_selfException_payload_codePPC_string = "DSI_PROT";
      `ExcpEnum_defaultEncoding_DSS : SPRPlugin_selfException_payload_codePPC_string = "DSS     ";
      `ExcpEnum_defaultEncoding_ISI : SPRPlugin_selfException_payload_codePPC_string = "ISI     ";
      `ExcpEnum_defaultEncoding_ISI_PROT : SPRPlugin_selfException_payload_codePPC_string = "ISI_PROT";
      `ExcpEnum_defaultEncoding_ISS : SPRPlugin_selfException_payload_codePPC_string = "ISS     ";
      `ExcpEnum_defaultEncoding_ALG : SPRPlugin_selfException_payload_codePPC_string = "ALG     ";
      `ExcpEnum_defaultEncoding_PGM_ILL : SPRPlugin_selfException_payload_codePPC_string = "PGM_ILL ";
      `ExcpEnum_defaultEncoding_PGM_PRV : SPRPlugin_selfException_payload_codePPC_string = "PGM_PRV ";
      `ExcpEnum_defaultEncoding_FP : SPRPlugin_selfException_payload_codePPC_string = "FP      ";
      `ExcpEnum_defaultEncoding_VEC : SPRPlugin_selfException_payload_codePPC_string = "VEC     ";
      `ExcpEnum_defaultEncoding_VSX : SPRPlugin_selfException_payload_codePPC_string = "VSX     ";
      `ExcpEnum_defaultEncoding_FAC : SPRPlugin_selfException_payload_codePPC_string = "FAC     ";
      `ExcpEnum_defaultEncoding_SR : SPRPlugin_selfException_payload_codePPC_string = "SR      ";
      `ExcpEnum_defaultEncoding_MC : SPRPlugin_selfException_payload_codePPC_string = "MC      ";
      `ExcpEnum_defaultEncoding_EXT : SPRPlugin_selfException_payload_codePPC_string = "EXT     ";
      `ExcpEnum_defaultEncoding_DEC : SPRPlugin_selfException_payload_codePPC_string = "DEC     ";
      `ExcpEnum_defaultEncoding_TR : SPRPlugin_selfException_payload_codePPC_string = "TR      ";
      `ExcpEnum_defaultEncoding_PM : SPRPlugin_selfException_payload_codePPC_string = "PM      ";
      default : SPRPlugin_selfException_payload_codePPC_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_223_)
      `Src3CtrlEnum_defaultEncoding_CA : _zz_223__string = "CA  ";
      `Src3CtrlEnum_defaultEncoding_CA_0 : _zz_223__string = "CA_0";
      `Src3CtrlEnum_defaultEncoding_CA_1 : _zz_223__string = "CA_1";
      default : _zz_223__string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_224_)
      `DataSizeEnum_defaultEncoding_B : _zz_224__string = "B ";
      `DataSizeEnum_defaultEncoding_H : _zz_224__string = "H ";
      `DataSizeEnum_defaultEncoding_HA : _zz_224__string = "HA";
      `DataSizeEnum_defaultEncoding_W : _zz_224__string = "W ";
      default : _zz_224__string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_225_)
      `CRMoveCtrlEnum_defaultEncoding_MCRF : _zz_225__string = "MCRF  ";
      `CRMoveCtrlEnum_defaultEncoding_MCRXRX : _zz_225__string = "MCRXRX";
      `CRMoveCtrlEnum_defaultEncoding_MTCRF : _zz_225__string = "MTCRF ";
      default : _zz_225__string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_226_)
      `AluCtrlEnum_defaultEncoding_ADD : _zz_226__string = "ADD  ";
      `AluCtrlEnum_defaultEncoding_BIT_1 : _zz_226__string = "BIT_1";
      `AluCtrlEnum_defaultEncoding_RIMI : _zz_226__string = "RIMI ";
      `AluCtrlEnum_defaultEncoding_SPEC : _zz_226__string = "SPEC ";
      default : _zz_226__string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_227_)
      `TgtCtrlEnum_defaultEncoding_RT : _zz_227__string = "RT";
      `TgtCtrlEnum_defaultEncoding_RA : _zz_227__string = "RA";
      default : _zz_227__string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_228_)
      `BranchCtrlEnum_defaultEncoding_NONE : _zz_228__string = "NONE ";
      `BranchCtrlEnum_defaultEncoding_BU : _zz_228__string = "BU   ";
      `BranchCtrlEnum_defaultEncoding_BC : _zz_228__string = "BC   ";
      `BranchCtrlEnum_defaultEncoding_BCLR : _zz_228__string = "BCLR ";
      `BranchCtrlEnum_defaultEncoding_BCCTR : _zz_228__string = "BCCTR";
      `BranchCtrlEnum_defaultEncoding_BCTAR : _zz_228__string = "BCTAR";
      default : _zz_228__string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_229_)
      `AluRimiCtrlEnum_defaultEncoding_ROT : _zz_229__string = "ROT    ";
      `AluRimiCtrlEnum_defaultEncoding_INS : _zz_229__string = "INS    ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTL : _zz_229__string = "SHIFTL ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTR : _zz_229__string = "SHIFTR ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTRA : _zz_229__string = "SHIFTRA";
      default : _zz_229__string = "???????";
    endcase
  end
  always @(*) begin
    case(_zz_230_)
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_230__string = "AND_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_ANDC : _zz_230__string = "ANDC  ";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_230__string = "OR_1  ";
      `AluBitwiseCtrlEnum_defaultEncoding_ORC : _zz_230__string = "ORC   ";
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_230__string = "XOR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_XORC : _zz_230__string = "XORC  ";
      `AluBitwiseCtrlEnum_defaultEncoding_EQV : _zz_230__string = "EQV   ";
      `AluBitwiseCtrlEnum_defaultEncoding_NAND_1 : _zz_230__string = "NAND_1";
      `AluBitwiseCtrlEnum_defaultEncoding_NOR_1 : _zz_230__string = "NOR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_EXTSB : _zz_230__string = "EXTSB ";
      `AluBitwiseCtrlEnum_defaultEncoding_EXTSH : _zz_230__string = "EXTSH ";
      default : _zz_230__string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_231_)
      `Src2CtrlEnum_defaultEncoding_RB : _zz_231__string = "RB      ";
      `Src2CtrlEnum_defaultEncoding_RB_0 : _zz_231__string = "RB_0    ";
      `Src2CtrlEnum_defaultEncoding_RB_M1 : _zz_231__string = "RB_M1   ";
      `Src2CtrlEnum_defaultEncoding_RB_UI : _zz_231__string = "RB_UI   ";
      `Src2CtrlEnum_defaultEncoding_RB_SI : _zz_231__string = "RB_SI   ";
      `Src2CtrlEnum_defaultEncoding_RB_SH : _zz_231__string = "RB_SH   ";
      `Src2CtrlEnum_defaultEncoding_RB_PCISD : _zz_231__string = "RB_PCISD";
      `Src2CtrlEnum_defaultEncoding_RA : _zz_231__string = "RA      ";
      default : _zz_231__string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_232_)
      `Src1CtrlEnum_defaultEncoding_RA : _zz_232__string = "RA    ";
      `Src1CtrlEnum_defaultEncoding_RA_N : _zz_232__string = "RA_N  ";
      `Src1CtrlEnum_defaultEncoding_RA_NIA : _zz_232__string = "RA_NIA";
      `Src1CtrlEnum_defaultEncoding_RA_0 : _zz_232__string = "RA_0  ";
      `Src1CtrlEnum_defaultEncoding_RS : _zz_232__string = "RS    ";
      default : _zz_232__string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_233_)
      `AluRimiAmtEnum_defaultEncoding_IMM : _zz_233__string = "IMM";
      `AluRimiAmtEnum_defaultEncoding_RB : _zz_233__string = "RB ";
      default : _zz_233__string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_234_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_234__string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_MFMSR : _zz_234__string = "MFMSR";
      `EnvCtrlEnum_defaultEncoding_MTMSR : _zz_234__string = "MTMSR";
      `EnvCtrlEnum_defaultEncoding_SC : _zz_234__string = "SC   ";
      `EnvCtrlEnum_defaultEncoding_SCV : _zz_234__string = "SCV  ";
      `EnvCtrlEnum_defaultEncoding_RFI : _zz_234__string = "RFI  ";
      `EnvCtrlEnum_defaultEncoding_RFSCV : _zz_234__string = "RFSCV";
      `EnvCtrlEnum_defaultEncoding_TW : _zz_234__string = "TW   ";
      `EnvCtrlEnum_defaultEncoding_TWI : _zz_234__string = "TWI  ";
      default : _zz_234__string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_235_)
      `CRLogCtrlEnum_defaultEncoding_AND_1 : _zz_235__string = "AND_1 ";
      `CRLogCtrlEnum_defaultEncoding_OR_1 : _zz_235__string = "OR_1  ";
      `CRLogCtrlEnum_defaultEncoding_XOR_1 : _zz_235__string = "XOR_1 ";
      `CRLogCtrlEnum_defaultEncoding_NAND_1 : _zz_235__string = "NAND_1";
      `CRLogCtrlEnum_defaultEncoding_NOR_1 : _zz_235__string = "NOR_1 ";
      `CRLogCtrlEnum_defaultEncoding_EQV : _zz_235__string = "EQV   ";
      `CRLogCtrlEnum_defaultEncoding_ANDC : _zz_235__string = "ANDC  ";
      `CRLogCtrlEnum_defaultEncoding_ORC : _zz_235__string = "ORC   ";
      default : _zz_235__string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_236_)
      `AluSpecCtrlEnum_defaultEncoding_CNTLZW : _zz_236__string = "CNTLZW ";
      `AluSpecCtrlEnum_defaultEncoding_CNTTZW : _zz_236__string = "CNTTZW ";
      `AluSpecCtrlEnum_defaultEncoding_POPCNTB : _zz_236__string = "POPCNTB";
      `AluSpecCtrlEnum_defaultEncoding_POPCNTW : _zz_236__string = "POPCNTW";
      `AluSpecCtrlEnum_defaultEncoding_CMPB : _zz_236__string = "CMPB   ";
      `AluSpecCtrlEnum_defaultEncoding_PRTYW : _zz_236__string = "PRTYW  ";
      default : _zz_236__string = "???????";
    endcase
  end
  always @(*) begin
    case(writeBack_RegFilePlugin_crBusPort_payload_op)
      `CRBusCmdEnum_defaultEncoding_NOP : writeBack_RegFilePlugin_crBusPort_payload_op_string = "NOP   ";
      `CRBusCmdEnum_defaultEncoding_CR0 : writeBack_RegFilePlugin_crBusPort_payload_op_string = "CR0   ";
      `CRBusCmdEnum_defaultEncoding_CR1 : writeBack_RegFilePlugin_crBusPort_payload_op_string = "CR1   ";
      `CRBusCmdEnum_defaultEncoding_CR6 : writeBack_RegFilePlugin_crBusPort_payload_op_string = "CR6   ";
      `CRBusCmdEnum_defaultEncoding_CMP : writeBack_RegFilePlugin_crBusPort_payload_op_string = "CMP   ";
      `CRBusCmdEnum_defaultEncoding_AND_1 : writeBack_RegFilePlugin_crBusPort_payload_op_string = "AND_1 ";
      `CRBusCmdEnum_defaultEncoding_OR_1 : writeBack_RegFilePlugin_crBusPort_payload_op_string = "OR_1  ";
      `CRBusCmdEnum_defaultEncoding_XOR_1 : writeBack_RegFilePlugin_crBusPort_payload_op_string = "XOR_1 ";
      `CRBusCmdEnum_defaultEncoding_NAND_1 : writeBack_RegFilePlugin_crBusPort_payload_op_string = "NAND_1";
      `CRBusCmdEnum_defaultEncoding_NOR_1 : writeBack_RegFilePlugin_crBusPort_payload_op_string = "NOR_1 ";
      `CRBusCmdEnum_defaultEncoding_EQV : writeBack_RegFilePlugin_crBusPort_payload_op_string = "EQV   ";
      `CRBusCmdEnum_defaultEncoding_ANDC : writeBack_RegFilePlugin_crBusPort_payload_op_string = "ANDC  ";
      `CRBusCmdEnum_defaultEncoding_ORC : writeBack_RegFilePlugin_crBusPort_payload_op_string = "ORC   ";
      `CRBusCmdEnum_defaultEncoding_MCRF : writeBack_RegFilePlugin_crBusPort_payload_op_string = "MCRF  ";
      `CRBusCmdEnum_defaultEncoding_MCRXRX : writeBack_RegFilePlugin_crBusPort_payload_op_string = "MCRXRX";
      `CRBusCmdEnum_defaultEncoding_MTOCRF : writeBack_RegFilePlugin_crBusPort_payload_op_string = "MTOCRF";
      `CRBusCmdEnum_defaultEncoding_MTCRF : writeBack_RegFilePlugin_crBusPort_payload_op_string = "MTCRF ";
      `CRBusCmdEnum_defaultEncoding_DEC : writeBack_RegFilePlugin_crBusPort_payload_op_string = "DEC   ";
      `CRBusCmdEnum_defaultEncoding_LNK : writeBack_RegFilePlugin_crBusPort_payload_op_string = "LNK   ";
      `CRBusCmdEnum_defaultEncoding_DECLNK : writeBack_RegFilePlugin_crBusPort_payload_op_string = "DECLNK";
      default : writeBack_RegFilePlugin_crBusPort_payload_op_string = "??????";
    endcase
  end
  always @(*) begin
    case(ALU2_crBus_op)
      `CRBusCmdEnum_defaultEncoding_NOP : ALU2_crBus_op_string = "NOP   ";
      `CRBusCmdEnum_defaultEncoding_CR0 : ALU2_crBus_op_string = "CR0   ";
      `CRBusCmdEnum_defaultEncoding_CR1 : ALU2_crBus_op_string = "CR1   ";
      `CRBusCmdEnum_defaultEncoding_CR6 : ALU2_crBus_op_string = "CR6   ";
      `CRBusCmdEnum_defaultEncoding_CMP : ALU2_crBus_op_string = "CMP   ";
      `CRBusCmdEnum_defaultEncoding_AND_1 : ALU2_crBus_op_string = "AND_1 ";
      `CRBusCmdEnum_defaultEncoding_OR_1 : ALU2_crBus_op_string = "OR_1  ";
      `CRBusCmdEnum_defaultEncoding_XOR_1 : ALU2_crBus_op_string = "XOR_1 ";
      `CRBusCmdEnum_defaultEncoding_NAND_1 : ALU2_crBus_op_string = "NAND_1";
      `CRBusCmdEnum_defaultEncoding_NOR_1 : ALU2_crBus_op_string = "NOR_1 ";
      `CRBusCmdEnum_defaultEncoding_EQV : ALU2_crBus_op_string = "EQV   ";
      `CRBusCmdEnum_defaultEncoding_ANDC : ALU2_crBus_op_string = "ANDC  ";
      `CRBusCmdEnum_defaultEncoding_ORC : ALU2_crBus_op_string = "ORC   ";
      `CRBusCmdEnum_defaultEncoding_MCRF : ALU2_crBus_op_string = "MCRF  ";
      `CRBusCmdEnum_defaultEncoding_MCRXRX : ALU2_crBus_op_string = "MCRXRX";
      `CRBusCmdEnum_defaultEncoding_MTOCRF : ALU2_crBus_op_string = "MTOCRF";
      `CRBusCmdEnum_defaultEncoding_MTCRF : ALU2_crBus_op_string = "MTCRF ";
      `CRBusCmdEnum_defaultEncoding_DEC : ALU2_crBus_op_string = "DEC   ";
      `CRBusCmdEnum_defaultEncoding_LNK : ALU2_crBus_op_string = "LNK   ";
      `CRBusCmdEnum_defaultEncoding_DECLNK : ALU2_crBus_op_string = "DECLNK";
      default : ALU2_crBus_op_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_271_)
      `CRBusCmdEnum_defaultEncoding_NOP : _zz_271__string = "NOP   ";
      `CRBusCmdEnum_defaultEncoding_CR0 : _zz_271__string = "CR0   ";
      `CRBusCmdEnum_defaultEncoding_CR1 : _zz_271__string = "CR1   ";
      `CRBusCmdEnum_defaultEncoding_CR6 : _zz_271__string = "CR6   ";
      `CRBusCmdEnum_defaultEncoding_CMP : _zz_271__string = "CMP   ";
      `CRBusCmdEnum_defaultEncoding_AND_1 : _zz_271__string = "AND_1 ";
      `CRBusCmdEnum_defaultEncoding_OR_1 : _zz_271__string = "OR_1  ";
      `CRBusCmdEnum_defaultEncoding_XOR_1 : _zz_271__string = "XOR_1 ";
      `CRBusCmdEnum_defaultEncoding_NAND_1 : _zz_271__string = "NAND_1";
      `CRBusCmdEnum_defaultEncoding_NOR_1 : _zz_271__string = "NOR_1 ";
      `CRBusCmdEnum_defaultEncoding_EQV : _zz_271__string = "EQV   ";
      `CRBusCmdEnum_defaultEncoding_ANDC : _zz_271__string = "ANDC  ";
      `CRBusCmdEnum_defaultEncoding_ORC : _zz_271__string = "ORC   ";
      `CRBusCmdEnum_defaultEncoding_MCRF : _zz_271__string = "MCRF  ";
      `CRBusCmdEnum_defaultEncoding_MCRXRX : _zz_271__string = "MCRXRX";
      `CRBusCmdEnum_defaultEncoding_MTOCRF : _zz_271__string = "MTOCRF";
      `CRBusCmdEnum_defaultEncoding_MTCRF : _zz_271__string = "MTCRF ";
      `CRBusCmdEnum_defaultEncoding_DEC : _zz_271__string = "DEC   ";
      `CRBusCmdEnum_defaultEncoding_LNK : _zz_271__string = "LNK   ";
      `CRBusCmdEnum_defaultEncoding_DECLNK : _zz_271__string = "DECLNK";
      default : _zz_271__string = "??????";
    endcase
  end
  always @(*) begin
    case(MULDIV1_crBusPort_payload_op)
      `CRBusCmdEnum_defaultEncoding_NOP : MULDIV1_crBusPort_payload_op_string = "NOP   ";
      `CRBusCmdEnum_defaultEncoding_CR0 : MULDIV1_crBusPort_payload_op_string = "CR0   ";
      `CRBusCmdEnum_defaultEncoding_CR1 : MULDIV1_crBusPort_payload_op_string = "CR1   ";
      `CRBusCmdEnum_defaultEncoding_CR6 : MULDIV1_crBusPort_payload_op_string = "CR6   ";
      `CRBusCmdEnum_defaultEncoding_CMP : MULDIV1_crBusPort_payload_op_string = "CMP   ";
      `CRBusCmdEnum_defaultEncoding_AND_1 : MULDIV1_crBusPort_payload_op_string = "AND_1 ";
      `CRBusCmdEnum_defaultEncoding_OR_1 : MULDIV1_crBusPort_payload_op_string = "OR_1  ";
      `CRBusCmdEnum_defaultEncoding_XOR_1 : MULDIV1_crBusPort_payload_op_string = "XOR_1 ";
      `CRBusCmdEnum_defaultEncoding_NAND_1 : MULDIV1_crBusPort_payload_op_string = "NAND_1";
      `CRBusCmdEnum_defaultEncoding_NOR_1 : MULDIV1_crBusPort_payload_op_string = "NOR_1 ";
      `CRBusCmdEnum_defaultEncoding_EQV : MULDIV1_crBusPort_payload_op_string = "EQV   ";
      `CRBusCmdEnum_defaultEncoding_ANDC : MULDIV1_crBusPort_payload_op_string = "ANDC  ";
      `CRBusCmdEnum_defaultEncoding_ORC : MULDIV1_crBusPort_payload_op_string = "ORC   ";
      `CRBusCmdEnum_defaultEncoding_MCRF : MULDIV1_crBusPort_payload_op_string = "MCRF  ";
      `CRBusCmdEnum_defaultEncoding_MCRXRX : MULDIV1_crBusPort_payload_op_string = "MCRXRX";
      `CRBusCmdEnum_defaultEncoding_MTOCRF : MULDIV1_crBusPort_payload_op_string = "MTOCRF";
      `CRBusCmdEnum_defaultEncoding_MTCRF : MULDIV1_crBusPort_payload_op_string = "MTCRF ";
      `CRBusCmdEnum_defaultEncoding_DEC : MULDIV1_crBusPort_payload_op_string = "DEC   ";
      `CRBusCmdEnum_defaultEncoding_LNK : MULDIV1_crBusPort_payload_op_string = "LNK   ";
      `CRBusCmdEnum_defaultEncoding_DECLNK : MULDIV1_crBusPort_payload_op_string = "DECLNK";
      default : MULDIV1_crBusPort_payload_op_string = "??????";
    endcase
  end
  always @(*) begin
    case(execute_BranchPlugin_crBusPort_op)
      `CRBusCmdEnum_defaultEncoding_NOP : execute_BranchPlugin_crBusPort_op_string = "NOP   ";
      `CRBusCmdEnum_defaultEncoding_CR0 : execute_BranchPlugin_crBusPort_op_string = "CR0   ";
      `CRBusCmdEnum_defaultEncoding_CR1 : execute_BranchPlugin_crBusPort_op_string = "CR1   ";
      `CRBusCmdEnum_defaultEncoding_CR6 : execute_BranchPlugin_crBusPort_op_string = "CR6   ";
      `CRBusCmdEnum_defaultEncoding_CMP : execute_BranchPlugin_crBusPort_op_string = "CMP   ";
      `CRBusCmdEnum_defaultEncoding_AND_1 : execute_BranchPlugin_crBusPort_op_string = "AND_1 ";
      `CRBusCmdEnum_defaultEncoding_OR_1 : execute_BranchPlugin_crBusPort_op_string = "OR_1  ";
      `CRBusCmdEnum_defaultEncoding_XOR_1 : execute_BranchPlugin_crBusPort_op_string = "XOR_1 ";
      `CRBusCmdEnum_defaultEncoding_NAND_1 : execute_BranchPlugin_crBusPort_op_string = "NAND_1";
      `CRBusCmdEnum_defaultEncoding_NOR_1 : execute_BranchPlugin_crBusPort_op_string = "NOR_1 ";
      `CRBusCmdEnum_defaultEncoding_EQV : execute_BranchPlugin_crBusPort_op_string = "EQV   ";
      `CRBusCmdEnum_defaultEncoding_ANDC : execute_BranchPlugin_crBusPort_op_string = "ANDC  ";
      `CRBusCmdEnum_defaultEncoding_ORC : execute_BranchPlugin_crBusPort_op_string = "ORC   ";
      `CRBusCmdEnum_defaultEncoding_MCRF : execute_BranchPlugin_crBusPort_op_string = "MCRF  ";
      `CRBusCmdEnum_defaultEncoding_MCRXRX : execute_BranchPlugin_crBusPort_op_string = "MCRXRX";
      `CRBusCmdEnum_defaultEncoding_MTOCRF : execute_BranchPlugin_crBusPort_op_string = "MTOCRF";
      `CRBusCmdEnum_defaultEncoding_MTCRF : execute_BranchPlugin_crBusPort_op_string = "MTCRF ";
      `CRBusCmdEnum_defaultEncoding_DEC : execute_BranchPlugin_crBusPort_op_string = "DEC   ";
      `CRBusCmdEnum_defaultEncoding_LNK : execute_BranchPlugin_crBusPort_op_string = "LNK   ";
      `CRBusCmdEnum_defaultEncoding_DECLNK : execute_BranchPlugin_crBusPort_op_string = "DECLNK";
      default : execute_BranchPlugin_crBusPort_op_string = "??????";
    endcase
  end
  always @(*) begin
    case(SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC)
      `ExcpEnum_defaultEncoding_NONE : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "NONE    ";
      `ExcpEnum_defaultEncoding_SC : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "SC      ";
      `ExcpEnum_defaultEncoding_SCV : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "SCV     ";
      `ExcpEnum_defaultEncoding_TRAP : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "TRAP    ";
      `ExcpEnum_defaultEncoding_RFI : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "RFI     ";
      `ExcpEnum_defaultEncoding_RFSCV : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "RFSCV   ";
      `ExcpEnum_defaultEncoding_DSI : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "DSI     ";
      `ExcpEnum_defaultEncoding_DSI_PROT : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "DSI_PROT";
      `ExcpEnum_defaultEncoding_DSS : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "DSS     ";
      `ExcpEnum_defaultEncoding_ISI : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "ISI     ";
      `ExcpEnum_defaultEncoding_ISI_PROT : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "ISI_PROT";
      `ExcpEnum_defaultEncoding_ISS : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "ISS     ";
      `ExcpEnum_defaultEncoding_ALG : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "ALG     ";
      `ExcpEnum_defaultEncoding_PGM_ILL : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "PGM_ILL ";
      `ExcpEnum_defaultEncoding_PGM_PRV : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "PGM_PRV ";
      `ExcpEnum_defaultEncoding_FP : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "FP      ";
      `ExcpEnum_defaultEncoding_VEC : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "VEC     ";
      `ExcpEnum_defaultEncoding_VSX : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "VSX     ";
      `ExcpEnum_defaultEncoding_FAC : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "FAC     ";
      `ExcpEnum_defaultEncoding_SR : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "SR      ";
      `ExcpEnum_defaultEncoding_MC : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "MC      ";
      `ExcpEnum_defaultEncoding_EXT : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "EXT     ";
      `ExcpEnum_defaultEncoding_DEC : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "DEC     ";
      `ExcpEnum_defaultEncoding_TR : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "TR      ";
      `ExcpEnum_defaultEncoding_PM : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "PM      ";
      default : SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_335_)
      `ExcpEnum_defaultEncoding_NONE : _zz_335__string = "NONE    ";
      `ExcpEnum_defaultEncoding_SC : _zz_335__string = "SC      ";
      `ExcpEnum_defaultEncoding_SCV : _zz_335__string = "SCV     ";
      `ExcpEnum_defaultEncoding_TRAP : _zz_335__string = "TRAP    ";
      `ExcpEnum_defaultEncoding_RFI : _zz_335__string = "RFI     ";
      `ExcpEnum_defaultEncoding_RFSCV : _zz_335__string = "RFSCV   ";
      `ExcpEnum_defaultEncoding_DSI : _zz_335__string = "DSI     ";
      `ExcpEnum_defaultEncoding_DSI_PROT : _zz_335__string = "DSI_PROT";
      `ExcpEnum_defaultEncoding_DSS : _zz_335__string = "DSS     ";
      `ExcpEnum_defaultEncoding_ISI : _zz_335__string = "ISI     ";
      `ExcpEnum_defaultEncoding_ISI_PROT : _zz_335__string = "ISI_PROT";
      `ExcpEnum_defaultEncoding_ISS : _zz_335__string = "ISS     ";
      `ExcpEnum_defaultEncoding_ALG : _zz_335__string = "ALG     ";
      `ExcpEnum_defaultEncoding_PGM_ILL : _zz_335__string = "PGM_ILL ";
      `ExcpEnum_defaultEncoding_PGM_PRV : _zz_335__string = "PGM_PRV ";
      `ExcpEnum_defaultEncoding_FP : _zz_335__string = "FP      ";
      `ExcpEnum_defaultEncoding_VEC : _zz_335__string = "VEC     ";
      `ExcpEnum_defaultEncoding_VSX : _zz_335__string = "VSX     ";
      `ExcpEnum_defaultEncoding_FAC : _zz_335__string = "FAC     ";
      `ExcpEnum_defaultEncoding_SR : _zz_335__string = "SR      ";
      `ExcpEnum_defaultEncoding_MC : _zz_335__string = "MC      ";
      `ExcpEnum_defaultEncoding_EXT : _zz_335__string = "EXT     ";
      `ExcpEnum_defaultEncoding_DEC : _zz_335__string = "DEC     ";
      `ExcpEnum_defaultEncoding_TR : _zz_335__string = "TR      ";
      `ExcpEnum_defaultEncoding_PM : _zz_335__string = "PM      ";
      default : _zz_335__string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_338_)
      `ExcpEnum_defaultEncoding_NONE : _zz_338__string = "NONE    ";
      `ExcpEnum_defaultEncoding_SC : _zz_338__string = "SC      ";
      `ExcpEnum_defaultEncoding_SCV : _zz_338__string = "SCV     ";
      `ExcpEnum_defaultEncoding_TRAP : _zz_338__string = "TRAP    ";
      `ExcpEnum_defaultEncoding_RFI : _zz_338__string = "RFI     ";
      `ExcpEnum_defaultEncoding_RFSCV : _zz_338__string = "RFSCV   ";
      `ExcpEnum_defaultEncoding_DSI : _zz_338__string = "DSI     ";
      `ExcpEnum_defaultEncoding_DSI_PROT : _zz_338__string = "DSI_PROT";
      `ExcpEnum_defaultEncoding_DSS : _zz_338__string = "DSS     ";
      `ExcpEnum_defaultEncoding_ISI : _zz_338__string = "ISI     ";
      `ExcpEnum_defaultEncoding_ISI_PROT : _zz_338__string = "ISI_PROT";
      `ExcpEnum_defaultEncoding_ISS : _zz_338__string = "ISS     ";
      `ExcpEnum_defaultEncoding_ALG : _zz_338__string = "ALG     ";
      `ExcpEnum_defaultEncoding_PGM_ILL : _zz_338__string = "PGM_ILL ";
      `ExcpEnum_defaultEncoding_PGM_PRV : _zz_338__string = "PGM_PRV ";
      `ExcpEnum_defaultEncoding_FP : _zz_338__string = "FP      ";
      `ExcpEnum_defaultEncoding_VEC : _zz_338__string = "VEC     ";
      `ExcpEnum_defaultEncoding_VSX : _zz_338__string = "VSX     ";
      `ExcpEnum_defaultEncoding_FAC : _zz_338__string = "FAC     ";
      `ExcpEnum_defaultEncoding_SR : _zz_338__string = "SR      ";
      `ExcpEnum_defaultEncoding_MC : _zz_338__string = "MC      ";
      `ExcpEnum_defaultEncoding_EXT : _zz_338__string = "EXT     ";
      `ExcpEnum_defaultEncoding_DEC : _zz_338__string = "DEC     ";
      `ExcpEnum_defaultEncoding_TR : _zz_338__string = "TR      ";
      `ExcpEnum_defaultEncoding_PM : _zz_338__string = "PM      ";
      default : _zz_338__string = "????????";
    endcase
  end
  always @(*) begin
    case(SPRPlugin_intType)
      `ExcpEnum_defaultEncoding_NONE : SPRPlugin_intType_string = "NONE    ";
      `ExcpEnum_defaultEncoding_SC : SPRPlugin_intType_string = "SC      ";
      `ExcpEnum_defaultEncoding_SCV : SPRPlugin_intType_string = "SCV     ";
      `ExcpEnum_defaultEncoding_TRAP : SPRPlugin_intType_string = "TRAP    ";
      `ExcpEnum_defaultEncoding_RFI : SPRPlugin_intType_string = "RFI     ";
      `ExcpEnum_defaultEncoding_RFSCV : SPRPlugin_intType_string = "RFSCV   ";
      `ExcpEnum_defaultEncoding_DSI : SPRPlugin_intType_string = "DSI     ";
      `ExcpEnum_defaultEncoding_DSI_PROT : SPRPlugin_intType_string = "DSI_PROT";
      `ExcpEnum_defaultEncoding_DSS : SPRPlugin_intType_string = "DSS     ";
      `ExcpEnum_defaultEncoding_ISI : SPRPlugin_intType_string = "ISI     ";
      `ExcpEnum_defaultEncoding_ISI_PROT : SPRPlugin_intType_string = "ISI_PROT";
      `ExcpEnum_defaultEncoding_ISS : SPRPlugin_intType_string = "ISS     ";
      `ExcpEnum_defaultEncoding_ALG : SPRPlugin_intType_string = "ALG     ";
      `ExcpEnum_defaultEncoding_PGM_ILL : SPRPlugin_intType_string = "PGM_ILL ";
      `ExcpEnum_defaultEncoding_PGM_PRV : SPRPlugin_intType_string = "PGM_PRV ";
      `ExcpEnum_defaultEncoding_FP : SPRPlugin_intType_string = "FP      ";
      `ExcpEnum_defaultEncoding_VEC : SPRPlugin_intType_string = "VEC     ";
      `ExcpEnum_defaultEncoding_VSX : SPRPlugin_intType_string = "VSX     ";
      `ExcpEnum_defaultEncoding_FAC : SPRPlugin_intType_string = "FAC     ";
      `ExcpEnum_defaultEncoding_SR : SPRPlugin_intType_string = "SR      ";
      `ExcpEnum_defaultEncoding_MC : SPRPlugin_intType_string = "MC      ";
      `ExcpEnum_defaultEncoding_EXT : SPRPlugin_intType_string = "EXT     ";
      `ExcpEnum_defaultEncoding_DEC : SPRPlugin_intType_string = "DEC     ";
      `ExcpEnum_defaultEncoding_TR : SPRPlugin_intType_string = "TR      ";
      `ExcpEnum_defaultEncoding_PM : SPRPlugin_intType_string = "PM      ";
      default : SPRPlugin_intType_string = "????????";
    endcase
  end
  always @(*) begin
    case(execute_SPRPLUGIN_opExcp_codePPC)
      `ExcpEnum_defaultEncoding_NONE : execute_SPRPLUGIN_opExcp_codePPC_string = "NONE    ";
      `ExcpEnum_defaultEncoding_SC : execute_SPRPLUGIN_opExcp_codePPC_string = "SC      ";
      `ExcpEnum_defaultEncoding_SCV : execute_SPRPLUGIN_opExcp_codePPC_string = "SCV     ";
      `ExcpEnum_defaultEncoding_TRAP : execute_SPRPLUGIN_opExcp_codePPC_string = "TRAP    ";
      `ExcpEnum_defaultEncoding_RFI : execute_SPRPLUGIN_opExcp_codePPC_string = "RFI     ";
      `ExcpEnum_defaultEncoding_RFSCV : execute_SPRPLUGIN_opExcp_codePPC_string = "RFSCV   ";
      `ExcpEnum_defaultEncoding_DSI : execute_SPRPLUGIN_opExcp_codePPC_string = "DSI     ";
      `ExcpEnum_defaultEncoding_DSI_PROT : execute_SPRPLUGIN_opExcp_codePPC_string = "DSI_PROT";
      `ExcpEnum_defaultEncoding_DSS : execute_SPRPLUGIN_opExcp_codePPC_string = "DSS     ";
      `ExcpEnum_defaultEncoding_ISI : execute_SPRPLUGIN_opExcp_codePPC_string = "ISI     ";
      `ExcpEnum_defaultEncoding_ISI_PROT : execute_SPRPLUGIN_opExcp_codePPC_string = "ISI_PROT";
      `ExcpEnum_defaultEncoding_ISS : execute_SPRPLUGIN_opExcp_codePPC_string = "ISS     ";
      `ExcpEnum_defaultEncoding_ALG : execute_SPRPLUGIN_opExcp_codePPC_string = "ALG     ";
      `ExcpEnum_defaultEncoding_PGM_ILL : execute_SPRPLUGIN_opExcp_codePPC_string = "PGM_ILL ";
      `ExcpEnum_defaultEncoding_PGM_PRV : execute_SPRPLUGIN_opExcp_codePPC_string = "PGM_PRV ";
      `ExcpEnum_defaultEncoding_FP : execute_SPRPLUGIN_opExcp_codePPC_string = "FP      ";
      `ExcpEnum_defaultEncoding_VEC : execute_SPRPLUGIN_opExcp_codePPC_string = "VEC     ";
      `ExcpEnum_defaultEncoding_VSX : execute_SPRPLUGIN_opExcp_codePPC_string = "VSX     ";
      `ExcpEnum_defaultEncoding_FAC : execute_SPRPLUGIN_opExcp_codePPC_string = "FAC     ";
      `ExcpEnum_defaultEncoding_SR : execute_SPRPLUGIN_opExcp_codePPC_string = "SR      ";
      `ExcpEnum_defaultEncoding_MC : execute_SPRPLUGIN_opExcp_codePPC_string = "MC      ";
      `ExcpEnum_defaultEncoding_EXT : execute_SPRPLUGIN_opExcp_codePPC_string = "EXT     ";
      `ExcpEnum_defaultEncoding_DEC : execute_SPRPLUGIN_opExcp_codePPC_string = "DEC     ";
      `ExcpEnum_defaultEncoding_TR : execute_SPRPLUGIN_opExcp_codePPC_string = "TR      ";
      `ExcpEnum_defaultEncoding_PM : execute_SPRPLUGIN_opExcp_codePPC_string = "PM      ";
      default : execute_SPRPLUGIN_opExcp_codePPC_string = "????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_DECODER_stageables_50)
      `CRLogCtrlEnum_defaultEncoding_AND_1 : decode_to_execute_DECODER_stageables_50_string = "AND_1 ";
      `CRLogCtrlEnum_defaultEncoding_OR_1 : decode_to_execute_DECODER_stageables_50_string = "OR_1  ";
      `CRLogCtrlEnum_defaultEncoding_XOR_1 : decode_to_execute_DECODER_stageables_50_string = "XOR_1 ";
      `CRLogCtrlEnum_defaultEncoding_NAND_1 : decode_to_execute_DECODER_stageables_50_string = "NAND_1";
      `CRLogCtrlEnum_defaultEncoding_NOR_1 : decode_to_execute_DECODER_stageables_50_string = "NOR_1 ";
      `CRLogCtrlEnum_defaultEncoding_EQV : decode_to_execute_DECODER_stageables_50_string = "EQV   ";
      `CRLogCtrlEnum_defaultEncoding_ANDC : decode_to_execute_DECODER_stageables_50_string = "ANDC  ";
      `CRLogCtrlEnum_defaultEncoding_ORC : decode_to_execute_DECODER_stageables_50_string = "ORC   ";
      default : decode_to_execute_DECODER_stageables_50_string = "??????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_DECODER_stageables_43)
      `AluRimiAmtEnum_defaultEncoding_IMM : decode_to_execute_DECODER_stageables_43_string = "IMM";
      `AluRimiAmtEnum_defaultEncoding_RB : decode_to_execute_DECODER_stageables_43_string = "RB ";
      default : decode_to_execute_DECODER_stageables_43_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_DECODER_stageables_48)
      `EnvCtrlEnum_defaultEncoding_NONE : decode_to_execute_DECODER_stageables_48_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_MFMSR : decode_to_execute_DECODER_stageables_48_string = "MFMSR";
      `EnvCtrlEnum_defaultEncoding_MTMSR : decode_to_execute_DECODER_stageables_48_string = "MTMSR";
      `EnvCtrlEnum_defaultEncoding_SC : decode_to_execute_DECODER_stageables_48_string = "SC   ";
      `EnvCtrlEnum_defaultEncoding_SCV : decode_to_execute_DECODER_stageables_48_string = "SCV  ";
      `EnvCtrlEnum_defaultEncoding_RFI : decode_to_execute_DECODER_stageables_48_string = "RFI  ";
      `EnvCtrlEnum_defaultEncoding_RFSCV : decode_to_execute_DECODER_stageables_48_string = "RFSCV";
      `EnvCtrlEnum_defaultEncoding_TW : decode_to_execute_DECODER_stageables_48_string = "TW   ";
      `EnvCtrlEnum_defaultEncoding_TWI : decode_to_execute_DECODER_stageables_48_string = "TWI  ";
      default : decode_to_execute_DECODER_stageables_48_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute_to_memory_DECODER_stageables_48)
      `EnvCtrlEnum_defaultEncoding_NONE : execute_to_memory_DECODER_stageables_48_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_MFMSR : execute_to_memory_DECODER_stageables_48_string = "MFMSR";
      `EnvCtrlEnum_defaultEncoding_MTMSR : execute_to_memory_DECODER_stageables_48_string = "MTMSR";
      `EnvCtrlEnum_defaultEncoding_SC : execute_to_memory_DECODER_stageables_48_string = "SC   ";
      `EnvCtrlEnum_defaultEncoding_SCV : execute_to_memory_DECODER_stageables_48_string = "SCV  ";
      `EnvCtrlEnum_defaultEncoding_RFI : execute_to_memory_DECODER_stageables_48_string = "RFI  ";
      `EnvCtrlEnum_defaultEncoding_RFSCV : execute_to_memory_DECODER_stageables_48_string = "RFSCV";
      `EnvCtrlEnum_defaultEncoding_TW : execute_to_memory_DECODER_stageables_48_string = "TW   ";
      `EnvCtrlEnum_defaultEncoding_TWI : execute_to_memory_DECODER_stageables_48_string = "TWI  ";
      default : execute_to_memory_DECODER_stageables_48_string = "?????";
    endcase
  end
  always @(*) begin
    case(memory_to_writeBack_DECODER_stageables_48)
      `EnvCtrlEnum_defaultEncoding_NONE : memory_to_writeBack_DECODER_stageables_48_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_MFMSR : memory_to_writeBack_DECODER_stageables_48_string = "MFMSR";
      `EnvCtrlEnum_defaultEncoding_MTMSR : memory_to_writeBack_DECODER_stageables_48_string = "MTMSR";
      `EnvCtrlEnum_defaultEncoding_SC : memory_to_writeBack_DECODER_stageables_48_string = "SC   ";
      `EnvCtrlEnum_defaultEncoding_SCV : memory_to_writeBack_DECODER_stageables_48_string = "SCV  ";
      `EnvCtrlEnum_defaultEncoding_RFI : memory_to_writeBack_DECODER_stageables_48_string = "RFI  ";
      `EnvCtrlEnum_defaultEncoding_RFSCV : memory_to_writeBack_DECODER_stageables_48_string = "RFSCV";
      `EnvCtrlEnum_defaultEncoding_TW : memory_to_writeBack_DECODER_stageables_48_string = "TW   ";
      `EnvCtrlEnum_defaultEncoding_TWI : memory_to_writeBack_DECODER_stageables_48_string = "TWI  ";
      default : memory_to_writeBack_DECODER_stageables_48_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_DECODER_stageables_12)
      `BranchCtrlEnum_defaultEncoding_NONE : decode_to_execute_DECODER_stageables_12_string = "NONE ";
      `BranchCtrlEnum_defaultEncoding_BU : decode_to_execute_DECODER_stageables_12_string = "BU   ";
      `BranchCtrlEnum_defaultEncoding_BC : decode_to_execute_DECODER_stageables_12_string = "BC   ";
      `BranchCtrlEnum_defaultEncoding_BCLR : decode_to_execute_DECODER_stageables_12_string = "BCLR ";
      `BranchCtrlEnum_defaultEncoding_BCCTR : decode_to_execute_DECODER_stageables_12_string = "BCCTR";
      `BranchCtrlEnum_defaultEncoding_BCTAR : decode_to_execute_DECODER_stageables_12_string = "BCTAR";
      default : decode_to_execute_DECODER_stageables_12_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute_to_memory_CR_WRITE_op)
      `CRBusCmdEnum_defaultEncoding_NOP : execute_to_memory_CR_WRITE_op_string = "NOP   ";
      `CRBusCmdEnum_defaultEncoding_CR0 : execute_to_memory_CR_WRITE_op_string = "CR0   ";
      `CRBusCmdEnum_defaultEncoding_CR1 : execute_to_memory_CR_WRITE_op_string = "CR1   ";
      `CRBusCmdEnum_defaultEncoding_CR6 : execute_to_memory_CR_WRITE_op_string = "CR6   ";
      `CRBusCmdEnum_defaultEncoding_CMP : execute_to_memory_CR_WRITE_op_string = "CMP   ";
      `CRBusCmdEnum_defaultEncoding_AND_1 : execute_to_memory_CR_WRITE_op_string = "AND_1 ";
      `CRBusCmdEnum_defaultEncoding_OR_1 : execute_to_memory_CR_WRITE_op_string = "OR_1  ";
      `CRBusCmdEnum_defaultEncoding_XOR_1 : execute_to_memory_CR_WRITE_op_string = "XOR_1 ";
      `CRBusCmdEnum_defaultEncoding_NAND_1 : execute_to_memory_CR_WRITE_op_string = "NAND_1";
      `CRBusCmdEnum_defaultEncoding_NOR_1 : execute_to_memory_CR_WRITE_op_string = "NOR_1 ";
      `CRBusCmdEnum_defaultEncoding_EQV : execute_to_memory_CR_WRITE_op_string = "EQV   ";
      `CRBusCmdEnum_defaultEncoding_ANDC : execute_to_memory_CR_WRITE_op_string = "ANDC  ";
      `CRBusCmdEnum_defaultEncoding_ORC : execute_to_memory_CR_WRITE_op_string = "ORC   ";
      `CRBusCmdEnum_defaultEncoding_MCRF : execute_to_memory_CR_WRITE_op_string = "MCRF  ";
      `CRBusCmdEnum_defaultEncoding_MCRXRX : execute_to_memory_CR_WRITE_op_string = "MCRXRX";
      `CRBusCmdEnum_defaultEncoding_MTOCRF : execute_to_memory_CR_WRITE_op_string = "MTOCRF";
      `CRBusCmdEnum_defaultEncoding_MTCRF : execute_to_memory_CR_WRITE_op_string = "MTCRF ";
      `CRBusCmdEnum_defaultEncoding_DEC : execute_to_memory_CR_WRITE_op_string = "DEC   ";
      `CRBusCmdEnum_defaultEncoding_LNK : execute_to_memory_CR_WRITE_op_string = "LNK   ";
      `CRBusCmdEnum_defaultEncoding_DECLNK : execute_to_memory_CR_WRITE_op_string = "DECLNK";
      default : execute_to_memory_CR_WRITE_op_string = "??????";
    endcase
  end
  always @(*) begin
    case(memory_to_writeBack_CR_WRITE_op)
      `CRBusCmdEnum_defaultEncoding_NOP : memory_to_writeBack_CR_WRITE_op_string = "NOP   ";
      `CRBusCmdEnum_defaultEncoding_CR0 : memory_to_writeBack_CR_WRITE_op_string = "CR0   ";
      `CRBusCmdEnum_defaultEncoding_CR1 : memory_to_writeBack_CR_WRITE_op_string = "CR1   ";
      `CRBusCmdEnum_defaultEncoding_CR6 : memory_to_writeBack_CR_WRITE_op_string = "CR6   ";
      `CRBusCmdEnum_defaultEncoding_CMP : memory_to_writeBack_CR_WRITE_op_string = "CMP   ";
      `CRBusCmdEnum_defaultEncoding_AND_1 : memory_to_writeBack_CR_WRITE_op_string = "AND_1 ";
      `CRBusCmdEnum_defaultEncoding_OR_1 : memory_to_writeBack_CR_WRITE_op_string = "OR_1  ";
      `CRBusCmdEnum_defaultEncoding_XOR_1 : memory_to_writeBack_CR_WRITE_op_string = "XOR_1 ";
      `CRBusCmdEnum_defaultEncoding_NAND_1 : memory_to_writeBack_CR_WRITE_op_string = "NAND_1";
      `CRBusCmdEnum_defaultEncoding_NOR_1 : memory_to_writeBack_CR_WRITE_op_string = "NOR_1 ";
      `CRBusCmdEnum_defaultEncoding_EQV : memory_to_writeBack_CR_WRITE_op_string = "EQV   ";
      `CRBusCmdEnum_defaultEncoding_ANDC : memory_to_writeBack_CR_WRITE_op_string = "ANDC  ";
      `CRBusCmdEnum_defaultEncoding_ORC : memory_to_writeBack_CR_WRITE_op_string = "ORC   ";
      `CRBusCmdEnum_defaultEncoding_MCRF : memory_to_writeBack_CR_WRITE_op_string = "MCRF  ";
      `CRBusCmdEnum_defaultEncoding_MCRXRX : memory_to_writeBack_CR_WRITE_op_string = "MCRXRX";
      `CRBusCmdEnum_defaultEncoding_MTOCRF : memory_to_writeBack_CR_WRITE_op_string = "MTOCRF";
      `CRBusCmdEnum_defaultEncoding_MTCRF : memory_to_writeBack_CR_WRITE_op_string = "MTCRF ";
      `CRBusCmdEnum_defaultEncoding_DEC : memory_to_writeBack_CR_WRITE_op_string = "DEC   ";
      `CRBusCmdEnum_defaultEncoding_LNK : memory_to_writeBack_CR_WRITE_op_string = "LNK   ";
      `CRBusCmdEnum_defaultEncoding_DECLNK : memory_to_writeBack_CR_WRITE_op_string = "DECLNK";
      default : memory_to_writeBack_CR_WRITE_op_string = "??????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_DECODER_stageables_15)
      `AluRimiCtrlEnum_defaultEncoding_ROT : decode_to_execute_DECODER_stageables_15_string = "ROT    ";
      `AluRimiCtrlEnum_defaultEncoding_INS : decode_to_execute_DECODER_stageables_15_string = "INS    ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTL : decode_to_execute_DECODER_stageables_15_string = "SHIFTL ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTR : decode_to_execute_DECODER_stageables_15_string = "SHIFTR ";
      `AluRimiCtrlEnum_defaultEncoding_SHIFTRA : decode_to_execute_DECODER_stageables_15_string = "SHIFTRA";
      default : decode_to_execute_DECODER_stageables_15_string = "???????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_DECODER_stageables_18)
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : decode_to_execute_DECODER_stageables_18_string = "AND_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_ANDC : decode_to_execute_DECODER_stageables_18_string = "ANDC  ";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : decode_to_execute_DECODER_stageables_18_string = "OR_1  ";
      `AluBitwiseCtrlEnum_defaultEncoding_ORC : decode_to_execute_DECODER_stageables_18_string = "ORC   ";
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : decode_to_execute_DECODER_stageables_18_string = "XOR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_XORC : decode_to_execute_DECODER_stageables_18_string = "XORC  ";
      `AluBitwiseCtrlEnum_defaultEncoding_EQV : decode_to_execute_DECODER_stageables_18_string = "EQV   ";
      `AluBitwiseCtrlEnum_defaultEncoding_NAND_1 : decode_to_execute_DECODER_stageables_18_string = "NAND_1";
      `AluBitwiseCtrlEnum_defaultEncoding_NOR_1 : decode_to_execute_DECODER_stageables_18_string = "NOR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_EXTSB : decode_to_execute_DECODER_stageables_18_string = "EXTSB ";
      `AluBitwiseCtrlEnum_defaultEncoding_EXTSH : decode_to_execute_DECODER_stageables_18_string = "EXTSH ";
      default : decode_to_execute_DECODER_stageables_18_string = "??????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_DECODER_stageables_56)
      `AluSpecCtrlEnum_defaultEncoding_CNTLZW : decode_to_execute_DECODER_stageables_56_string = "CNTLZW ";
      `AluSpecCtrlEnum_defaultEncoding_CNTTZW : decode_to_execute_DECODER_stageables_56_string = "CNTTZW ";
      `AluSpecCtrlEnum_defaultEncoding_POPCNTB : decode_to_execute_DECODER_stageables_56_string = "POPCNTB";
      `AluSpecCtrlEnum_defaultEncoding_POPCNTW : decode_to_execute_DECODER_stageables_56_string = "POPCNTW";
      `AluSpecCtrlEnum_defaultEncoding_CMPB : decode_to_execute_DECODER_stageables_56_string = "CMPB   ";
      `AluSpecCtrlEnum_defaultEncoding_PRTYW : decode_to_execute_DECODER_stageables_56_string = "PRTYW  ";
      default : decode_to_execute_DECODER_stageables_56_string = "???????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_DECODER_stageables_5)
      `DataSizeEnum_defaultEncoding_B : decode_to_execute_DECODER_stageables_5_string = "B ";
      `DataSizeEnum_defaultEncoding_H : decode_to_execute_DECODER_stageables_5_string = "H ";
      `DataSizeEnum_defaultEncoding_HA : decode_to_execute_DECODER_stageables_5_string = "HA";
      `DataSizeEnum_defaultEncoding_W : decode_to_execute_DECODER_stageables_5_string = "W ";
      default : decode_to_execute_DECODER_stageables_5_string = "??";
    endcase
  end
  always @(*) begin
    case(execute_to_memory_DECODER_stageables_5)
      `DataSizeEnum_defaultEncoding_B : execute_to_memory_DECODER_stageables_5_string = "B ";
      `DataSizeEnum_defaultEncoding_H : execute_to_memory_DECODER_stageables_5_string = "H ";
      `DataSizeEnum_defaultEncoding_HA : execute_to_memory_DECODER_stageables_5_string = "HA";
      `DataSizeEnum_defaultEncoding_W : execute_to_memory_DECODER_stageables_5_string = "W ";
      default : execute_to_memory_DECODER_stageables_5_string = "??";
    endcase
  end
  always @(*) begin
    case(memory_to_writeBack_DECODER_stageables_5)
      `DataSizeEnum_defaultEncoding_B : memory_to_writeBack_DECODER_stageables_5_string = "B ";
      `DataSizeEnum_defaultEncoding_H : memory_to_writeBack_DECODER_stageables_5_string = "H ";
      `DataSizeEnum_defaultEncoding_HA : memory_to_writeBack_DECODER_stageables_5_string = "HA";
      `DataSizeEnum_defaultEncoding_W : memory_to_writeBack_DECODER_stageables_5_string = "W ";
      default : memory_to_writeBack_DECODER_stageables_5_string = "??";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_DECODER_stageables_0)
      `Src3CtrlEnum_defaultEncoding_CA : decode_to_execute_DECODER_stageables_0_string = "CA  ";
      `Src3CtrlEnum_defaultEncoding_CA_0 : decode_to_execute_DECODER_stageables_0_string = "CA_0";
      `Src3CtrlEnum_defaultEncoding_CA_1 : decode_to_execute_DECODER_stageables_0_string = "CA_1";
      default : decode_to_execute_DECODER_stageables_0_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_MSR_ENDIAN)
      `EndianEnum_defaultEncoding_BE : decode_to_execute_MSR_ENDIAN_string = "BE";
      `EndianEnum_defaultEncoding_LE : decode_to_execute_MSR_ENDIAN_string = "LE";
      default : decode_to_execute_MSR_ENDIAN_string = "??";
    endcase
  end
  always @(*) begin
    case(execute_to_memory_MSR_ENDIAN)
      `EndianEnum_defaultEncoding_BE : execute_to_memory_MSR_ENDIAN_string = "BE";
      `EndianEnum_defaultEncoding_LE : execute_to_memory_MSR_ENDIAN_string = "LE";
      default : execute_to_memory_MSR_ENDIAN_string = "??";
    endcase
  end
  always @(*) begin
    case(memory_to_writeBack_MSR_ENDIAN)
      `EndianEnum_defaultEncoding_BE : memory_to_writeBack_MSR_ENDIAN_string = "BE";
      `EndianEnum_defaultEncoding_LE : memory_to_writeBack_MSR_ENDIAN_string = "LE";
      default : memory_to_writeBack_MSR_ENDIAN_string = "??";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_DECODER_stageables_7)
      `AluCtrlEnum_defaultEncoding_ADD : decode_to_execute_DECODER_stageables_7_string = "ADD  ";
      `AluCtrlEnum_defaultEncoding_BIT_1 : decode_to_execute_DECODER_stageables_7_string = "BIT_1";
      `AluCtrlEnum_defaultEncoding_RIMI : decode_to_execute_DECODER_stageables_7_string = "RIMI ";
      `AluCtrlEnum_defaultEncoding_SPEC : decode_to_execute_DECODER_stageables_7_string = "SPEC ";
      default : decode_to_execute_DECODER_stageables_7_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_DECODER_stageables_24)
      `Src2CtrlEnum_defaultEncoding_RB : decode_to_execute_DECODER_stageables_24_string = "RB      ";
      `Src2CtrlEnum_defaultEncoding_RB_0 : decode_to_execute_DECODER_stageables_24_string = "RB_0    ";
      `Src2CtrlEnum_defaultEncoding_RB_M1 : decode_to_execute_DECODER_stageables_24_string = "RB_M1   ";
      `Src2CtrlEnum_defaultEncoding_RB_UI : decode_to_execute_DECODER_stageables_24_string = "RB_UI   ";
      `Src2CtrlEnum_defaultEncoding_RB_SI : decode_to_execute_DECODER_stageables_24_string = "RB_SI   ";
      `Src2CtrlEnum_defaultEncoding_RB_SH : decode_to_execute_DECODER_stageables_24_string = "RB_SH   ";
      `Src2CtrlEnum_defaultEncoding_RB_PCISD : decode_to_execute_DECODER_stageables_24_string = "RB_PCISD";
      `Src2CtrlEnum_defaultEncoding_RA : decode_to_execute_DECODER_stageables_24_string = "RA      ";
      default : decode_to_execute_DECODER_stageables_24_string = "????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_DECODER_stageables_36)
      `Src1CtrlEnum_defaultEncoding_RA : decode_to_execute_DECODER_stageables_36_string = "RA    ";
      `Src1CtrlEnum_defaultEncoding_RA_N : decode_to_execute_DECODER_stageables_36_string = "RA_N  ";
      `Src1CtrlEnum_defaultEncoding_RA_NIA : decode_to_execute_DECODER_stageables_36_string = "RA_NIA";
      `Src1CtrlEnum_defaultEncoding_RA_0 : decode_to_execute_DECODER_stageables_36_string = "RA_0  ";
      `Src1CtrlEnum_defaultEncoding_RS : decode_to_execute_DECODER_stageables_36_string = "RS    ";
      default : decode_to_execute_DECODER_stageables_36_string = "??????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_DECODER_stageables_6)
      `CRMoveCtrlEnum_defaultEncoding_MCRF : decode_to_execute_DECODER_stageables_6_string = "MCRF  ";
      `CRMoveCtrlEnum_defaultEncoding_MCRXRX : decode_to_execute_DECODER_stageables_6_string = "MCRXRX";
      `CRMoveCtrlEnum_defaultEncoding_MTCRF : decode_to_execute_DECODER_stageables_6_string = "MTCRF ";
      default : decode_to_execute_DECODER_stageables_6_string = "??????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_DECODER_stageables_11)
      `TgtCtrlEnum_defaultEncoding_RT : decode_to_execute_DECODER_stageables_11_string = "RT";
      `TgtCtrlEnum_defaultEncoding_RA : decode_to_execute_DECODER_stageables_11_string = "RA";
      default : decode_to_execute_DECODER_stageables_11_string = "??";
    endcase
  end
  `endif

  assign _zz_1_ = _zz_2_;
  assign decode_DECODER_stageables_6 = _zz_3_;
  assign _zz_4_ = _zz_5_;
  assign decode_DECODER_stageables_23 = _zz_445_[0];
  assign execute_TARGET_MISSMATCH2 = (decode_PC != execute_BRANCH_CALC);
  assign decode_DECODER_stageables_32 = _zz_446_[0];
  assign decode_DECODER_stageables_36 = _zz_6_;
  assign _zz_7_ = _zz_8_;
  assign decode_DECODER_stageables_42 = _zz_447_[0];
  assign decode_DECODER_stageables_25 = _zz_448_[0];
  assign execute_BRANCH_LINK = _zz_334_;
  assign decode_DECODER_stageables_24 = _zz_9_;
  assign _zz_10_ = _zz_11_;
  assign decode_DECODER_stageables_19 = _zz_449_[0];
  assign execute_DECODER_stageables_35 = decode_to_execute_DECODER_stageables_35;
  assign decode_DECODER_stageables_35 = _zz_450_[0];
  assign decode_DECODER_stageables_7 = _zz_12_;
  assign _zz_13_ = _zz_14_;
  assign memory_MSR_ENDIAN = _zz_15_;
  assign _zz_16_ = _zz_17_;
  assign _zz_18_ = _zz_19_;
  assign _zz_20_ = _zz_21_;
  assign memory_SRC1 = execute_to_memory_SRC1;
  assign decode_DECODER_stageables_21 = _zz_451_[0];
  assign decode_DECODER_stageables_45 = _zz_452_[0];
  assign memory_SRC_ADD = execute_to_memory_SRC_ADD;
  assign decode_DECODER_stageables_0 = _zz_22_;
  assign _zz_23_ = _zz_24_;
  assign memory_DECODER_stageables_5 = _zz_25_;
  assign _zz_26_ = _zz_27_;
  assign _zz_28_ = _zz_29_;
  assign decode_DECODER_stageables_5 = _zz_30_;
  assign _zz_31_ = _zz_32_;
  assign memory_DECODER_stageables_52 = execute_to_memory_DECODER_stageables_52;
  assign execute_DECODER_stageables_52 = decode_to_execute_DECODER_stageables_52;
  assign decode_DECODER_stageables_52 = _zz_453_[0];
  assign decode_RT_ADDR = _zz_238_;
  assign memory_MUL_HH = execute_to_memory_MUL_HH;
  assign execute_MUL_HH = ($signed(MUL1_aHigh) * $signed(MUL1_bHigh));
  assign decode_CR_FIELD_RD = _zz_66_;
  assign decode_DECODER_stageables_33 = _zz_454_[0];
  assign execute_DECODER_stageables_28 = decode_to_execute_DECODER_stageables_28;
  assign decode_DECODER_stageables_28 = _zz_455_[0];
  assign writeBack_LOAD_UPDATE_ADDR = memory_to_writeBack_LOAD_UPDATE_ADDR;
  assign memory_LOAD_UPDATE_ADDR = execute_to_memory_LOAD_UPDATE_ADDR;
  assign execute_LOAD_UPDATE_ADDR = execute_R0_ADDR;
  assign writeBack_FORMAL_PC_NEXT = memory_to_writeBack_FORMAL_PC_NEXT;
  assign memory_FORMAL_PC_NEXT = execute_to_memory_FORMAL_PC_NEXT;
  assign execute_FORMAL_PC_NEXT = decode_to_execute_FORMAL_PC_NEXT;
  assign decode_FORMAL_PC_NEXT = (decode_PC + 32'h00000004);
  assign execute_MUL_HL = ($signed(MUL1_aHigh) * $signed(MUL1_bSLow));
  assign decode_DECODER_stageables_39 = _zz_456_[0];
  assign decode_DECODER_stageables_1 = _zz_457_[0];
  assign decode_DECODER_stageables_56 = _zz_33_;
  assign _zz_34_ = _zz_35_;
  assign execute_RB = decode_to_execute_RB;
  assign execute_MUL_LL = (MUL1_aULow * MUL1_bULow);
  assign decode_DECODER_stageables_13 = _zz_458_[0];
  assign execute_XER_CA = (ALU2_XER[29] ? 1'b1 : 1'b0);
  assign memory_DECODER_stageables_22 = execute_to_memory_DECODER_stageables_22;
  assign execute_DECODER_stageables_22 = decode_to_execute_DECODER_stageables_22;
  assign decode_DECODER_stageables_22 = _zz_459_[0];
  assign decode_DECODER_stageables_31 = _zz_460_[0];
  assign decode_DECODER_stageables_17 = _zz_461_[0];
  assign decode_DECODER_stageables_18 = _zz_36_;
  assign _zz_37_ = _zz_38_;
  assign decode_DECODER_stageables_8 = _zz_462_[0];
  assign decode_DECODER_stageables_44 = _zz_463_[0];
  assign decode_DECODER_stageables_41 = _zz_464_[0];
  assign execute_DECODER_stageables_3 = decode_to_execute_DECODER_stageables_3;
  assign decode_DECODER_stageables_3 = _zz_465_[0];
  assign execute_PREDICTION_CONTEXT_hazard = decode_to_execute_PREDICTION_CONTEXT_hazard;
  assign execute_PREDICTION_CONTEXT_hit = decode_to_execute_PREDICTION_CONTEXT_hit;
  assign execute_PREDICTION_CONTEXT_line_source = decode_to_execute_PREDICTION_CONTEXT_line_source;
  assign execute_PREDICTION_CONTEXT_line_branchWish = decode_to_execute_PREDICTION_CONTEXT_line_branchWish;
  assign execute_PREDICTION_CONTEXT_line_target = decode_to_execute_PREDICTION_CONTEXT_line_target;
  assign decode_PREDICTION_CONTEXT_hazard = IBusCachedPlugin_predictor_injectorContext_hazard;
  assign decode_PREDICTION_CONTEXT_hit = IBusCachedPlugin_predictor_injectorContext_hit;
  assign decode_PREDICTION_CONTEXT_line_source = IBusCachedPlugin_predictor_injectorContext_line_source;
  assign decode_PREDICTION_CONTEXT_line_branchWish = IBusCachedPlugin_predictor_injectorContext_line_branchWish;
  assign decode_PREDICTION_CONTEXT_line_target = IBusCachedPlugin_predictor_injectorContext_line_target;
  assign execute_DECODER_stageables_14 = decode_to_execute_DECODER_stageables_14;
  assign decode_DECODER_stageables_14 = _zz_466_[0];
  assign execute_BRANCH_DO = _zz_332_;
  assign execute_NEXT_PC2 = (execute_PC + 32'h00000004);
  assign memory_DECODER_stageables_38 = execute_to_memory_DECODER_stageables_38;
  assign execute_DECODER_stageables_38 = decode_to_execute_DECODER_stageables_38;
  assign decode_DECODER_stageables_38 = _zz_467_[0];
  assign memory_DECODER_stageables_55 = execute_to_memory_DECODER_stageables_55;
  assign decode_DECODER_stageables_55 = _zz_468_[0];
  assign decode_DECODER_stageables_15 = _zz_39_;
  assign _zz_40_ = _zz_41_;
  assign decode_DECODER_stageables_10 = _zz_469_[0];
  assign writeBack_REGFILE_WRITE_ADDR = memory_to_writeBack_REGFILE_WRITE_ADDR;
  assign memory_REGFILE_WRITE_ADDR = execute_to_memory_REGFILE_WRITE_ADDR;
  assign execute_REGFILE_WRITE_ADDR = _zz_261_;
  assign writeBack_LOAD_UPDATE_DATA = memory_to_writeBack_LOAD_UPDATE_DATA;
  assign memory_LOAD_UPDATE_DATA = execute_to_memory_LOAD_UPDATE_DATA;
  assign execute_LOAD_UPDATE_DATA = execute_SRC_ADD;
  assign execute_MUL_LH = ($signed(MUL1_aSLow) * $signed(MUL1_bHigh));
  assign decode_DECODER_stageables_20 = _zz_470_[0];
  assign decode_DECODER_stageables_29 = _zz_471_[0];
  assign decode_DECODER_stageables_53 = _zz_472_[0];
  assign execute_RA = decode_to_execute_RA;
  assign execute_XER_SO = ALU2_XER[31];
  assign _zz_42_ = _zz_43_;
  assign execute_CR_WRITE_op = _zz_44_;
  assign execute_CR_WRITE_ba = ALU2_crBus_ba;
  assign execute_CR_WRITE_bb = ALU2_crBus_bb;
  assign execute_CR_WRITE_bt = ALU2_crBus_bt;
  assign execute_CR_WRITE_imm = ALU2_crBus_imm;
  assign execute_CR_WRITE_fxm = ALU2_crBus_fxm;
  assign _zz_45_ = _zz_46_;
  assign decode_DECODER_stageables_57 = _zz_473_[0];
  assign memory_MEMORY_ADDRESS_LOW = execute_to_memory_MEMORY_ADDRESS_LOW;
  assign execute_MEMORY_ADDRESS_LOW = _zz_376_[1 : 0];
  assign memory_DECODER_stageables_54 = execute_to_memory_DECODER_stageables_54;
  assign execute_DECODER_stageables_54 = decode_to_execute_DECODER_stageables_54;
  assign decode_DECODER_stageables_54 = _zz_474_[0];
  assign _zz_47_ = _zz_48_;
  assign execute_XER_WRITE_validOV = ALU2_xerBus_validOV;
  assign execute_XER_WRITE_validCA = ALU2_xerBus_validCA;
  assign execute_XER_WRITE_imm = ALU2_xerBus_imm;
  assign execute_REGFILE_WRITE_DATA = _zz_124_;
  assign decode_DECODER_stageables_47 = _zz_475_[0];
  assign execute_CR_FIELD_WR = _zz_77_;
  assign memory_DECODER_stageables_48 = _zz_49_;
  assign _zz_50_ = _zz_51_;
  assign decode_DECODER_stageables_48 = _zz_52_;
  assign _zz_53_ = _zz_54_;
  assign memory_DECODER_stageables_34 = execute_to_memory_DECODER_stageables_34;
  assign execute_DECODER_stageables_34 = decode_to_execute_DECODER_stageables_34;
  assign decode_DECODER_stageables_34 = _zz_476_[0];
  assign decode_DECODER_stageables_43 = _zz_55_;
  assign _zz_56_ = _zz_57_;
  assign decode_DECODER_stageables_26 = _zz_477_[0];
  assign decode_DECODER_stageables_37 = _zz_478_[0];
  assign decode_DECODER_stageables_50 = _zz_58_;
  assign _zz_59_ = _zz_60_;
  assign memory_MUL_LOW = ($signed(_zz_479_) + $signed(_zz_487_));
  assign writeBack_DECODER_stageables_48 = _zz_61_;
  assign writeBack_DECODER_stageables_38 = memory_to_writeBack_DECODER_stageables_38;
  assign execute_DECODER_stageables_39 = decode_to_execute_DECODER_stageables_39;
  assign execute_DECODER_stageables_27 = decode_to_execute_DECODER_stageables_27;
  always @ (*) begin
    _zz_62_ = _zz_63_;
    if(execute_arbitration_isValid)begin
      if(_zz_392_)begin
        if((! execute_SPRPLUGIN_trap))begin
          _zz_62_ = `EnvCtrlEnum_defaultEncoding_NONE;
        end
      end
      if((execute_DECODER_stageables_48 == `EnvCtrlEnum_defaultEncoding_TWI))begin
        if((! _zz_346_))begin
          _zz_62_ = `EnvCtrlEnum_defaultEncoding_NONE;
        end
      end
    end
  end

  assign execute_DECODER_stageables_48 = _zz_64_;
  assign writeBack_SRC_ADD = memory_to_writeBack_SRC_ADD;
  assign memory_NEXT_PC2 = execute_to_memory_NEXT_PC2;
  assign memory_PC = execute_to_memory_PC;
  assign memory_BRANCH_CALC = execute_to_memory_BRANCH_CALC;
  assign memory_TARGET_MISSMATCH2 = execute_to_memory_TARGET_MISSMATCH2;
  assign memory_BRANCH_DO = execute_to_memory_BRANCH_DO;
  assign execute_BRANCH_CALC = execute_BranchPlugin_branchAdder;
  assign execute_PC = decode_to_execute_PC;
  assign decode_DECODER_stageables_4 = _zz_488_[0];
  assign decode_DECODER_stageables_12 = _zz_67_;
  assign writeBack_CR_FIELD_WR = memory_to_writeBack_CR_FIELD_WR;
  assign execute_BRANCH_DEC = _zz_333_;
  assign execute_DECODER_stageables_29 = decode_to_execute_DECODER_stageables_29;
  assign memory_BRANCH_DEC = execute_to_memory_BRANCH_DEC;
  assign memory_BRANCH_LINK = execute_to_memory_BRANCH_LINK;
  assign memory_SPR_ID = execute_to_memory_SPR_ID;
  assign memory_DECODER_stageables_29 = execute_to_memory_DECODER_stageables_29;
  assign memory_XER_WRITE_validOV = execute_to_memory_XER_WRITE_validOV;
  assign memory_XER_WRITE_validCA = execute_to_memory_XER_WRITE_validCA;
  assign memory_XER_WRITE_imm = execute_to_memory_XER_WRITE_imm;
  assign memory_CR_WRITE_op = _zz_68_;
  assign memory_CR_WRITE_ba = execute_to_memory_CR_WRITE_ba;
  assign memory_CR_WRITE_bb = execute_to_memory_CR_WRITE_bb;
  assign memory_CR_WRITE_bt = execute_to_memory_CR_WRITE_bt;
  assign memory_CR_WRITE_imm = execute_to_memory_CR_WRITE_imm;
  assign memory_CR_WRITE_fxm = execute_to_memory_CR_WRITE_fxm;
  assign memory_DECODER_stageables_28 = execute_to_memory_DECODER_stageables_28;
  assign execute_DECODER_stageables_12 = _zz_69_;
  assign execute_CR_FIELD_RD = decode_to_execute_CR_FIELD_RD;
  assign memory_CR_FIELD_WR = execute_to_memory_CR_FIELD_WR;
  always @ (*) begin
    _zz_70_ = execute_REGFILE_WRITE_DATA;
    if(execute_SPRPLUGIN_readInstruction)begin
      _zz_70_ = execute_SPRPLUGIN_readData;
    end
  end

  assign execute_DECODER_stageables_44 = decode_to_execute_DECODER_stageables_44;
  assign execute_RT_ADDR = decode_to_execute_RT_ADDR;
  assign execute_DECODER_stageables_23 = decode_to_execute_DECODER_stageables_23;
  assign memory_DECODER_stageables_44 = execute_to_memory_DECODER_stageables_44;
  assign memory_RT_ADDR = execute_to_memory_RT_ADDR;
  assign memory_DECODER_stageables_3 = execute_to_memory_DECODER_stageables_3;
  assign decode_DECODER_stageables_49 = _zz_489_[0];
  assign decode_DECODER_stageables_46 = _zz_490_[0];
  assign decode_DECODER_stageables_9 = _zz_491_[0];
  assign writeBack_DECODER_stageables_44 = memory_to_writeBack_DECODER_stageables_44;
  assign writeBack_RT_ADDR = memory_to_writeBack_RT_ADDR;
  always @ (*) begin
    decode_RS = decode_RegFilePlugin_rsData;
    if(Hazards_writeBackBuffer_valid)begin
      if(Hazards_addr2Match)begin
        decode_RS = Hazards_writeBackBuffer_payload_data;
      end
    end
    if(_zz_393_)begin
      if(_zz_394_)begin
        if((_zz_287_ && 1'b1))begin
          decode_RS = _zz_121_;
        end
      end
    end
    if(_zz_395_)begin
      if(memory_DECODER_stageables_3)begin
        if((_zz_290_ && 1'b1))begin
          decode_RS = _zz_71_;
        end
      end
    end
    if(_zz_396_)begin
      if(execute_DECODER_stageables_23)begin
        if((_zz_293_ && 1'b1))begin
          decode_RS = _zz_70_;
        end
      end
    end
  end

  always @ (*) begin
    decode_RB = decode_RegFilePlugin_rbData_pre;
    if(Hazards_writeBackBuffer_valid)begin
      if(Hazards_addr1Match)begin
        decode_RB = Hazards_writeBackBuffer_payload_data;
      end
    end
    if(_zz_393_)begin
      if(_zz_394_)begin
        if(_zz_286_)begin
          decode_RB = _zz_121_;
        end
      end
    end
    if(_zz_395_)begin
      if(memory_DECODER_stageables_3)begin
        if(_zz_289_)begin
          decode_RB = _zz_71_;
        end
      end
    end
    if(_zz_396_)begin
      if(execute_DECODER_stageables_23)begin
        if(_zz_292_)begin
          decode_RB = _zz_70_;
        end
      end
    end
  end

  always @ (*) begin
    decode_RA = decode_RegFilePlugin_raData_pre;
    if(Hazards_writeBackBuffer_valid)begin
      if(Hazards_addr0Match)begin
        decode_RA = Hazards_writeBackBuffer_payload_data;
      end
    end
    if(_zz_393_)begin
      if(_zz_394_)begin
        if(_zz_285_)begin
          decode_RA = _zz_121_;
        end
      end
    end
    if(_zz_395_)begin
      if(memory_DECODER_stageables_3)begin
        if(_zz_288_)begin
          decode_RA = _zz_71_;
        end
      end
    end
    if(_zz_396_)begin
      if(execute_DECODER_stageables_23)begin
        if(_zz_291_)begin
          decode_RA = _zz_70_;
        end
      end
    end
  end

  assign decode_R2_ADDR = decode_INSTRUCTION[25 : 21];
  assign decode_R1_ADDR = decode_INSTRUCTION[15 : 11];
  assign decode_R0_ADDR = decode_INSTRUCTION[20 : 16];
  assign execute_DECODER_stageables_32 = decode_to_execute_DECODER_stageables_32;
  assign execute_DECODER_stageables_42 = decode_to_execute_DECODER_stageables_42;
  assign execute_DECODER_stageables_37 = decode_to_execute_DECODER_stageables_37;
  assign memory_SRC_CR = execute_to_memory_SRC_CR;
  assign memory_XER_SO = execute_to_memory_XER_SO;
  assign memory_INSTRUCTION = execute_to_memory_INSTRUCTION;
  assign memory_DECODER_stageables_35 = execute_to_memory_DECODER_stageables_35;
  always @ (*) begin
    _zz_71_ = memory_REGFILE_WRITE_DATA;
    if(_zz_397_)begin
      _zz_71_ = MULDIV1_result;
    end
  end

  assign memory_DECODER_stageables_14 = execute_to_memory_DECODER_stageables_14;
  assign memory_DECODER_stageables_42 = execute_to_memory_DECODER_stageables_42;
  assign writeBack_DECODER_stageables_28 = memory_to_writeBack_DECODER_stageables_28;
  assign writeBack_DECODER_stageables_22 = memory_to_writeBack_DECODER_stageables_22;
  assign writeBack_SRC_CR = memory_to_writeBack_SRC_CR;
  assign writeBack_DECODER_stageables_54 = memory_to_writeBack_DECODER_stageables_54;
  assign writeBack_XER_SO = memory_to_writeBack_XER_SO;
  assign writeBack_DECODER_stageables_34 = memory_to_writeBack_DECODER_stageables_34;
  assign writeBack_MUL_HH = memory_to_writeBack_MUL_HH;
  assign writeBack_MUL_LOW = memory_to_writeBack_MUL_LOW;
  assign memory_MUL_HL = execute_to_memory_MUL_HL;
  assign memory_MUL_LH = execute_to_memory_MUL_LH;
  assign memory_MUL_LL = execute_to_memory_MUL_LL;
  assign execute_DECODER_stageables_33 = decode_to_execute_DECODER_stageables_33;
  assign memory_DECODER_stageables_8 = execute_to_memory_DECODER_stageables_8;
  assign execute_DECODER_stageables_8 = decode_to_execute_DECODER_stageables_8;
  assign writeBack_DECODER_stageables_8 = memory_to_writeBack_DECODER_stageables_8;
  assign execute_DECODER_stageables_47 = decode_to_execute_DECODER_stageables_47;
  assign execute_SRC3 = _zz_266_;
  assign execute_DECODER_stageables_0 = _zz_72_;
  assign execute_DECODER_stageables_24 = _zz_73_;
  assign _zz_74_ = execute_PC;
  assign _zz_75_ = execute_RA;
  assign execute_DECODER_stageables_36 = _zz_76_;
  assign decode_DECODER_stageables_16 = _zz_492_[0];
  assign execute_DECODER_stageables_50 = _zz_79_;
  assign execute_DECODER_stageables_6 = _zz_80_;
  assign execute_DECODER_stageables_45 = decode_to_execute_DECODER_stageables_45;
  assign execute_DECODER_stageables_31 = decode_to_execute_DECODER_stageables_31;
  assign execute_DECODER_stageables_26 = decode_to_execute_DECODER_stageables_26;
  assign execute_DECODER_stageables_57 = decode_to_execute_DECODER_stageables_57;
  assign execute_DECODER_stageables_19 = decode_to_execute_DECODER_stageables_19;
  assign execute_SRC_CR = (execute_DECODER_stageables_19 ? SRC2_cmp_cr : SRC2_add_cr);
  assign execute_DECODER_stageables_10 = decode_to_execute_DECODER_stageables_10;
  assign execute_DECODER_stageables_17 = decode_to_execute_DECODER_stageables_17;
  assign execute_SRC_CAOV = {SRC2_ca,SRC2_ov};
  assign execute_DECODER_stageables_13 = decode_to_execute_DECODER_stageables_13;
  assign execute_DECODER_stageables_4 = decode_to_execute_DECODER_stageables_4;
  assign execute_R0_ADDR = decode_to_execute_R0_ADDR;
  assign execute_DECODER_stageables_11 = _zz_82_;
  assign execute_DECODER_stageables_7 = _zz_83_;
  assign execute_DECODER_stageables_25 = decode_to_execute_DECODER_stageables_25;
  assign execute_DECODER_stageables_1 = decode_to_execute_DECODER_stageables_1;
  assign execute_DECODER_stageables_21 = decode_to_execute_DECODER_stageables_21;
  assign execute_DECODER_stageables_56 = _zz_84_;
  always @ (*) begin
    _zz_85_ = _zz_85__30;
    if(_zz_256_[31])begin
      _zz_85_ = (_zz_85__30 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__30 = _zz_85__29;
    if(_zz_256_[30])begin
      _zz_85__30 = (_zz_85__29 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__29 = _zz_85__28;
    if(_zz_256_[29])begin
      _zz_85__29 = (_zz_85__28 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__28 = _zz_85__27;
    if(_zz_256_[28])begin
      _zz_85__28 = (_zz_85__27 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__27 = _zz_85__26;
    if(_zz_256_[27])begin
      _zz_85__27 = (_zz_85__26 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__26 = _zz_85__25;
    if(_zz_256_[26])begin
      _zz_85__26 = (_zz_85__25 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__25 = _zz_85__24;
    if(_zz_256_[25])begin
      _zz_85__25 = (_zz_85__24 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__24 = _zz_85__23;
    if(_zz_256_[24])begin
      _zz_85__24 = (_zz_85__23 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__23 = _zz_85__22;
    if(_zz_256_[23])begin
      _zz_85__23 = (_zz_85__22 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__22 = _zz_85__21;
    if(_zz_256_[22])begin
      _zz_85__22 = (_zz_85__21 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__21 = _zz_85__20;
    if(_zz_256_[21])begin
      _zz_85__21 = (_zz_85__20 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__20 = _zz_85__19;
    if(_zz_256_[20])begin
      _zz_85__20 = (_zz_85__19 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__19 = _zz_85__18;
    if(_zz_256_[19])begin
      _zz_85__19 = (_zz_85__18 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__18 = _zz_85__17;
    if(_zz_256_[18])begin
      _zz_85__18 = (_zz_85__17 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__17 = _zz_85__16;
    if(_zz_256_[17])begin
      _zz_85__17 = (_zz_85__16 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__16 = _zz_85__15;
    if(_zz_256_[16])begin
      _zz_85__16 = (_zz_85__15 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__15 = _zz_85__14;
    if(_zz_256_[15])begin
      _zz_85__15 = (_zz_85__14 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__14 = _zz_85__13;
    if(_zz_256_[14])begin
      _zz_85__14 = (_zz_85__13 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__13 = _zz_85__12;
    if(_zz_256_[13])begin
      _zz_85__13 = (_zz_85__12 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__12 = _zz_85__11;
    if(_zz_256_[12])begin
      _zz_85__12 = (_zz_85__11 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__11 = _zz_85__10;
    if(_zz_256_[11])begin
      _zz_85__11 = (_zz_85__10 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__10 = _zz_85__9;
    if(_zz_256_[10])begin
      _zz_85__10 = (_zz_85__9 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__9 = _zz_85__8;
    if(_zz_256_[9])begin
      _zz_85__9 = (_zz_85__8 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__8 = _zz_85__7;
    if(_zz_256_[8])begin
      _zz_85__8 = (_zz_85__7 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__7 = _zz_85__6;
    if(_zz_256_[7])begin
      _zz_85__7 = (_zz_85__6 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__6 = _zz_85__5;
    if(_zz_256_[6])begin
      _zz_85__6 = (_zz_85__5 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__5 = _zz_85__4;
    if(_zz_256_[5])begin
      _zz_85__5 = (_zz_85__4 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__4 = _zz_85__3;
    if(_zz_256_[4])begin
      _zz_85__4 = (_zz_85__3 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__3 = _zz_85__2;
    if(_zz_256_[3])begin
      _zz_85__3 = (_zz_85__2 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__2 = _zz_85__1;
    if(_zz_256_[2])begin
      _zz_85__2 = (_zz_85__1 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__1 = _zz_85__0;
    if(_zz_256_[1])begin
      _zz_85__1 = (_zz_85__0 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_85__0 = 6'h0;
    if(_zz_256_[0])begin
      _zz_85__0 = (6'h0 + 6'h01);
    end
  end

  always @ (*) begin
    _zz_86_ = _zz_86__6;
    if(_zz_255_[7])begin
      _zz_86_ = (_zz_86__6 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_86__6 = _zz_86__5;
    if(_zz_255_[6])begin
      _zz_86__6 = (_zz_86__5 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_86__5 = _zz_86__4;
    if(_zz_255_[5])begin
      _zz_86__5 = (_zz_86__4 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_86__4 = _zz_86__3;
    if(_zz_255_[4])begin
      _zz_86__4 = (_zz_86__3 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_86__3 = _zz_86__2;
    if(_zz_255_[3])begin
      _zz_86__3 = (_zz_86__2 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_86__2 = _zz_86__1;
    if(_zz_255_[2])begin
      _zz_86__2 = (_zz_86__1 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_86__1 = _zz_86__0;
    if(_zz_255_[1])begin
      _zz_86__1 = (_zz_86__0 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_86__0 = (4'b0000);
    if(_zz_255_[0])begin
      _zz_86__0 = ((4'b0000) + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_87_ = _zz_87__6;
    if(_zz_254_[7])begin
      _zz_87_ = (_zz_87__6 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_87__6 = _zz_87__5;
    if(_zz_254_[6])begin
      _zz_87__6 = (_zz_87__5 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_87__5 = _zz_87__4;
    if(_zz_254_[5])begin
      _zz_87__5 = (_zz_87__4 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_87__4 = _zz_87__3;
    if(_zz_254_[4])begin
      _zz_87__4 = (_zz_87__3 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_87__3 = _zz_87__2;
    if(_zz_254_[3])begin
      _zz_87__3 = (_zz_87__2 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_87__2 = _zz_87__1;
    if(_zz_254_[2])begin
      _zz_87__2 = (_zz_87__1 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_87__1 = _zz_87__0;
    if(_zz_254_[1])begin
      _zz_87__1 = (_zz_87__0 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_87__0 = (4'b0000);
    if(_zz_254_[0])begin
      _zz_87__0 = ((4'b0000) + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_88_ = _zz_88__6;
    if(_zz_253_[7])begin
      _zz_88_ = (_zz_88__6 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_88__6 = _zz_88__5;
    if(_zz_253_[6])begin
      _zz_88__6 = (_zz_88__5 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_88__5 = _zz_88__4;
    if(_zz_253_[5])begin
      _zz_88__5 = (_zz_88__4 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_88__4 = _zz_88__3;
    if(_zz_253_[4])begin
      _zz_88__4 = (_zz_88__3 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_88__3 = _zz_88__2;
    if(_zz_253_[3])begin
      _zz_88__3 = (_zz_88__2 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_88__2 = _zz_88__1;
    if(_zz_253_[2])begin
      _zz_88__2 = (_zz_88__1 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_88__1 = _zz_88__0;
    if(_zz_253_[1])begin
      _zz_88__1 = (_zz_88__0 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_88__0 = (4'b0000);
    if(_zz_253_[0])begin
      _zz_88__0 = ((4'b0000) + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_89_ = _zz_89__6;
    if(_zz_252_[7])begin
      _zz_89_ = (_zz_89__6 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_89__6 = _zz_89__5;
    if(_zz_252_[6])begin
      _zz_89__6 = (_zz_89__5 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_89__5 = _zz_89__4;
    if(_zz_252_[5])begin
      _zz_89__5 = (_zz_89__4 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_89__4 = _zz_89__3;
    if(_zz_252_[4])begin
      _zz_89__4 = (_zz_89__3 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_89__3 = _zz_89__2;
    if(_zz_252_[3])begin
      _zz_89__3 = (_zz_89__2 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_89__2 = _zz_89__1;
    if(_zz_252_[2])begin
      _zz_89__2 = (_zz_89__1 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_89__1 = _zz_89__0;
    if(_zz_252_[1])begin
      _zz_89__1 = (_zz_89__0 + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_89__0 = (4'b0000);
    if(_zz_252_[0])begin
      _zz_89__0 = ((4'b0000) + (4'b0001));
    end
  end

  always @ (*) begin
    _zz_90_ = _zz_91_;
    _zz_90_ = (ALU2_amount[4] ? {_zz_91_[15 : 0],_zz_91_[31 : 16]} : _zz_91_);
  end

  always @ (*) begin
    _zz_91_ = _zz_92_;
    _zz_91_ = (ALU2_amount[3] ? {_zz_92_[23 : 0],_zz_92_[31 : 24]} : _zz_92_);
  end

  always @ (*) begin
    _zz_92_ = _zz_93_;
    _zz_92_ = (ALU2_amount[2] ? {_zz_93_[27 : 0],_zz_93_[31 : 28]} : _zz_93_);
  end

  always @ (*) begin
    _zz_93_ = _zz_94_;
    _zz_93_ = (ALU2_amount[1] ? {_zz_94_[29 : 0],_zz_94_[31 : 30]} : _zz_94_);
  end

  always @ (*) begin
    _zz_94_ = _zz_249_;
    _zz_94_ = (ALU2_amount[0] ? {_zz_249_[30 : 0],_zz_249_[31 : 31]} : _zz_249_);
  end

  always @ (*) begin
    _zz_95_ = _zz_96_;
    _zz_95_ = (ALU2_amount[4] ? {_zz_96_[15 : 0],_zz_96_[31 : 16]} : _zz_96_);
  end

  always @ (*) begin
    _zz_96_ = _zz_97_;
    _zz_96_ = (ALU2_amount[3] ? {_zz_97_[23 : 0],_zz_97_[31 : 24]} : _zz_97_);
  end

  always @ (*) begin
    _zz_97_ = _zz_98_;
    _zz_97_ = (ALU2_amount[2] ? {_zz_98_[27 : 0],_zz_98_[31 : 28]} : _zz_98_);
  end

  always @ (*) begin
    _zz_98_ = _zz_99_;
    _zz_98_ = (ALU2_amount[1] ? {_zz_99_[29 : 0],_zz_99_[31 : 30]} : _zz_99_);
  end

  always @ (*) begin
    _zz_99_ = _zz_248_;
    _zz_99_ = (ALU2_amount[0] ? {_zz_248_[30 : 0],_zz_248_[31 : 31]} : _zz_248_);
  end

  assign execute_DECODER_stageables_15 = _zz_100_;
  assign execute_DECODER_stageables_43 = _zz_101_;
  assign execute_SRC2 = _zz_265_;
  assign execute_SRC1 = _zz_262_;
  assign execute_DECODER_stageables_18 = _zz_102_;
  assign execute_DECODER_stageables_53 = decode_to_execute_DECODER_stageables_53;
  assign execute_SPR_ID = _zz_81_;
  assign writeBack_SRC1 = memory_to_writeBack_SRC1;
  assign writeBack_DECODER_stageables_29 = memory_to_writeBack_DECODER_stageables_29;
  assign writeBack_SPR_ID = memory_to_writeBack_SPR_ID;
  assign writeBack_XER_WRITE_validOV = memory_to_writeBack_XER_WRITE_validOV;
  assign writeBack_XER_WRITE_validCA = memory_to_writeBack_XER_WRITE_validCA;
  assign writeBack_XER_WRITE_imm = memory_to_writeBack_XER_WRITE_imm;
  assign writeBack_BRANCH_LINK = memory_to_writeBack_BRANCH_LINK;
  assign writeBack_BRANCH_DEC = memory_to_writeBack_BRANCH_DEC;
  assign writeBack_CR_WRITE_op = _zz_103_;
  assign writeBack_CR_WRITE_ba = memory_to_writeBack_CR_WRITE_ba;
  assign writeBack_CR_WRITE_bb = memory_to_writeBack_CR_WRITE_bb;
  assign writeBack_CR_WRITE_bt = memory_to_writeBack_CR_WRITE_bt;
  assign writeBack_CR_WRITE_imm = memory_to_writeBack_CR_WRITE_imm;
  assign writeBack_CR_WRITE_fxm = memory_to_writeBack_CR_WRITE_fxm;
  assign _zz_104_ = writeBack_DECODER_stageables_44;
  always @ (*) begin
    _zz_105_ = 1'b0;
    if(lastStageRegFileWrite_valid)begin
      _zz_105_ = 1'b1;
    end
  end

  assign decode_DECODER_stageables_11 = _zz_106_;
  assign decode_INSTRUCTION_ANTICIPATED = _zz_128_;
  assign decode = _zz_493_[0];
  assign decode_LEGAL_INSTRUCTION = ({_zz_220_,{((decode_INSTRUCTION & 32'h6c000000) == 32'h0c000000),{_zz_219_,{((decode_INSTRUCTION & 32'hb8000000) == 32'h28000000),{_zz_167_,{_zz_218_,{_zz_216_,{_zz_661_,_zz_662_}}}}}}}} != 101'h0);
  always @ (*) begin
    _zz_121_ = writeBack_REGFILE_WRITE_DATA;
    if(((writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE) && (! writeBack_MEMORY_WR)))begin
      _zz_121_ = writeBack_DBusCachedPlugin_rspFormated;
    end
    if(_zz_398_)begin
      _zz_121_ = MUL3_result32;
    end
  end

  assign writeBack_SIGN_EXTEND = memory_to_writeBack_DECODER_stageables_52;
  assign writeBack_DATA_SIZE = _zz_122_;
  assign writeBack_MEMORY_ADDRESS_LOW = memory_to_writeBack_MEMORY_ADDRESS_LOW;
  assign writeBack_MEMORY_WR = memory_to_writeBack_DECODER_stageables_55;
  assign writeBack_MSR_ENDIAN = _zz_123_;
  assign writeBack_REGFILE_WRITE_DATA = memory_to_writeBack_REGFILE_WRITE_DATA;
  assign writeBack_MEMORY_ENABLE = memory_to_writeBack_DECODER_stageables_51;
  assign memory_REGFILE_WRITE_DATA = execute_to_memory_REGFILE_WRITE_DATA;
  assign memory_MEMORY_ENABLE = execute_to_memory_DECODER_stageables_51;
  assign execute_STORE_UPDATE = decode_to_execute_DECODER_stageables_41;
  assign execute_MEMORY_MANAGMENT = decode_to_execute_DECODER_stageables_20;
  assign execute_RS = decode_to_execute_RS;
  assign execute_MEMORY_WR = decode_to_execute_DECODER_stageables_55;
  assign execute_SRC_ADD = SRC2_adder[31 : 0];
  assign execute_MEMORY_ENABLE = decode_to_execute_DECODER_stageables_51;
  assign execute_DATA_SIZE = _zz_125_;
  assign execute_INSTRUCTION = decode_to_execute_INSTRUCTION;
  assign execute_MSR_ENDIAN = _zz_126_;
  assign decode_MEMORY_ENABLE = _zz_494_[0];
  assign decode_FLUSH_ALL = _zz_495_[0];
  always @ (*) begin
    _zz_127_ = _zz_127__3;
    if(_zz_399_)begin
      _zz_127_ = 1'b1;
    end
  end

  always @ (*) begin
    _zz_127__3 = _zz_127__2;
    if(_zz_400_)begin
      _zz_127__3 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_127__2 = _zz_127__1;
    if(_zz_401_)begin
      if(_zz_402_)begin
        _zz_127__2 = 1'b1;
      end
    end
  end

  always @ (*) begin
    _zz_127__1 = _zz_127__0;
    if(_zz_403_)begin
      _zz_127__1 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_127__0 = IBusCachedPlugin_rsp_issueDetected;
    if(_zz_404_)begin
      _zz_127__0 = 1'b1;
    end
  end

  assign decode_INSTRUCTION = IBusCachedPlugin_iBusRsp_output_payload_rsp_inst;
  assign decode_MSR_ENDIAN = _zz_129_;
  assign memory_PREDICTION_CONTEXT_hazard = execute_to_memory_PREDICTION_CONTEXT_hazard;
  assign memory_PREDICTION_CONTEXT_hit = execute_to_memory_PREDICTION_CONTEXT_hit;
  assign memory_PREDICTION_CONTEXT_line_source = execute_to_memory_PREDICTION_CONTEXT_line_source;
  assign memory_PREDICTION_CONTEXT_line_branchWish = execute_to_memory_PREDICTION_CONTEXT_line_branchWish;
  assign memory_PREDICTION_CONTEXT_line_target = execute_to_memory_PREDICTION_CONTEXT_line_target;
  always @ (*) begin
    _zz_130_ = 1'b0;
    if(IBusCachedPlugin_predictor_historyWriteDelayPatched_valid)begin
      _zz_130_ = 1'b1;
    end
  end

  always @ (*) begin
    _zz_131_ = memory_FORMAL_PC_NEXT;
    if(BranchPlugin_jumpInterface_valid)begin
      _zz_131_ = BranchPlugin_jumpInterface_payload;
    end
  end

  assign decode_PC = IBusCachedPlugin_iBusRsp_output_payload_pc;
  assign writeBack_PC = memory_to_writeBack_PC;
  assign writeBack_INSTRUCTION = memory_to_writeBack_INSTRUCTION;
  always @ (*) begin
    decode_arbitration_haltItself = 1'b0;
    if(((DBusCachedPlugin_mmuBus_busy && decode_arbitration_isValid) && decode_MEMORY_ENABLE))begin
      decode_arbitration_haltItself = 1'b1;
    end
  end

  always @ (*) begin
    decode_arbitration_haltByOther = 1'b0;
    if(((((execute_arbitration_isValid && execute_DECODER_stageables_8) || (memory_arbitration_isValid && memory_DECODER_stageables_8)) || (writeBack_arbitration_isValid && writeBack_DECODER_stageables_8)) || _zz_267_))begin
      decode_arbitration_haltByOther = 1'b1;
    end
    if((decode_arbitration_isValid && ((_zz_281_ || _zz_282_) || _zz_283_)))begin
      decode_arbitration_haltByOther = 1'b1;
    end
    if(SPRPlugin_pipelineLiberator_active)begin
      decode_arbitration_haltByOther = 1'b1;
    end
  end

  always @ (*) begin
    decode_arbitration_removeIt = 1'b0;
    if(_zz_405_)begin
      decode_arbitration_removeIt = _zz_339_;
    end
    if(decode_arbitration_isFlushed)begin
      decode_arbitration_removeIt = 1'b1;
    end
  end

  assign decode_arbitration_flushIt = 1'b0;
  assign decode_arbitration_flushNext = 1'b0;
  always @ (*) begin
    execute_arbitration_haltItself = 1'b0;
    if((_zz_385_ && (! dataCache_1__io_cpu_flush_ready)))begin
      execute_arbitration_haltItself = 1'b1;
    end
    if(((dataCache_1__io_cpu_redo && execute_arbitration_isValid) && execute_MEMORY_ENABLE))begin
      execute_arbitration_haltItself = 1'b1;
    end
    if((execute_SPRPLUGIN_readInstruction || execute_SPRPLUGIN_writeInstruction))begin
      if(execute_SPRPLUGIN_blockedBySideEffects)begin
        execute_arbitration_haltItself = 1'b1;
      end
    end
  end

  always @ (*) begin
    execute_arbitration_haltByOther = 1'b0;
    if((_zz_294_ || _zz_310_))begin
      execute_arbitration_haltByOther = 1'b1;
    end
    if((_zz_296_ || _zz_312_))begin
      execute_arbitration_haltByOther = 1'b1;
    end
    if((_zz_297_ || _zz_313_))begin
      execute_arbitration_haltByOther = 1'b1;
    end
    if((_zz_295_ || _zz_311_))begin
      execute_arbitration_haltByOther = 1'b1;
    end
    if((_zz_298_ || _zz_314_))begin
      execute_arbitration_haltByOther = 1'b1;
    end
    if((_zz_299_ || _zz_315_))begin
      execute_arbitration_haltByOther = 1'b1;
    end
    if((_zz_300_ || _zz_316_))begin
      execute_arbitration_haltByOther = 1'b1;
    end
  end

  always @ (*) begin
    execute_arbitration_removeIt = 1'b0;
    if(SPRPlugin_selfException_valid)begin
      execute_arbitration_removeIt = _zz_340_;
    end
    if(execute_arbitration_isFlushed)begin
      execute_arbitration_removeIt = 1'b1;
    end
  end

  assign execute_arbitration_flushIt = 1'b0;
  assign execute_arbitration_flushNext = 1'b0;
  always @ (*) begin
    memory_arbitration_haltItself = 1'b0;
    if(_zz_397_)begin
      if(((! MULDIV_frontendOk) || (! MULDIV1_done)))begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
  end

  assign memory_arbitration_haltByOther = 1'b0;
  always @ (*) begin
    memory_arbitration_removeIt = 1'b0;
    if(BranchPlugin_branchExceptionPort_valid)begin
      memory_arbitration_removeIt = _zz_341_;
    end
    if(memory_arbitration_isFlushed)begin
      memory_arbitration_removeIt = 1'b1;
    end
  end

  assign memory_arbitration_flushIt = 1'b0;
  always @ (*) begin
    memory_arbitration_flushNext = 1'b0;
    if(BranchPlugin_jumpInterface_valid)begin
      memory_arbitration_flushNext = 1'b1;
    end
  end

  always @ (*) begin
    writeBack_arbitration_haltItself = 1'b0;
    if(dataCache_1__io_cpu_writeBack_haltIt)begin
      writeBack_arbitration_haltItself = 1'b1;
    end
  end

  assign writeBack_arbitration_haltByOther = 1'b0;
  always @ (*) begin
    writeBack_arbitration_removeIt = 1'b0;
    if(DBusCachedPlugin_exceptionBus_valid)begin
      writeBack_arbitration_removeIt = _zz_342_;
    end
    if(writeBack_arbitration_isFlushed)begin
      writeBack_arbitration_removeIt = 1'b1;
    end
  end

  always @ (*) begin
    writeBack_arbitration_flushIt = 1'b0;
    if(DBusCachedPlugin_redoBranch_valid)begin
      writeBack_arbitration_flushIt = 1'b1;
    end
  end

  always @ (*) begin
    writeBack_arbitration_flushNext = 1'b0;
    if(DBusCachedPlugin_redoBranch_valid)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(_zz_406_)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(_zz_407_)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(_zz_408_)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(_zz_409_)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(_zz_410_)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(_zz_411_)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(_zz_412_)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
  end

  assign lastStageInstruction = writeBack_INSTRUCTION;
  assign lastStagePc = writeBack_PC;
  assign lastStageIsValid = writeBack_arbitration_isValid;
  assign lastStageIsFiring = writeBack_arbitration_isFiring;
  always @ (*) begin
    IBusCachedPlugin_fetcherHalt = 1'b0;
    if(({SPRPlugin_exceptionPortCtrl_exceptionValids_writeBack,{SPRPlugin_exceptionPortCtrl_exceptionValids_memory,{SPRPlugin_exceptionPortCtrl_exceptionValids_execute,SPRPlugin_exceptionPortCtrl_exceptionValids_decode}}} != (4'b0000)))begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_406_)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_407_)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_408_)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_409_)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_410_)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_411_)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_412_)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_incomingInstruction = 1'b0;
    if((IBusCachedPlugin_iBusRsp_stages_1_input_valid || IBusCachedPlugin_iBusRsp_stages_2_input_valid))begin
      IBusCachedPlugin_incomingInstruction = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_decodeExceptionPort_payload_codePPC = (5'bxxxxx);
    if(_zz_403_)begin
      IBusCachedPlugin_decodeExceptionPort_payload_codePPC = `ExcpEnum_defaultEncoding_ISI;
    end
    if(_zz_401_)begin
      if(_zz_402_)begin
        IBusCachedPlugin_decodeExceptionPort_payload_codePPC = `ExcpEnum_defaultEncoding_ISI_PROT;
      end
    end
    if(_zz_400_)begin
      IBusCachedPlugin_decodeExceptionPort_payload_codePPC = `ExcpEnum_defaultEncoding_MC;
    end
  end

  assign IBusCachedPlugin_decodeExceptionPort_payload_imm = 7'h0;
  always @ (*) begin
    IBusCachedPlugin_decodeExceptionPort_payload_badAddr = 32'h0;
    IBusCachedPlugin_decodeExceptionPort_payload_badAddr = {IBusCachedPlugin_iBusRsp_stages_2_input_payload[31 : 2],(2'b00)};
  end

  always @ (*) begin
    DBusCachedPlugin_exceptionBus_payload_codePPC = (5'bxxxxx);
    if(_zz_413_)begin
      if(dataCache_1__io_cpu_writeBack_accessError)begin
        DBusCachedPlugin_exceptionBus_payload_codePPC = `ExcpEnum_defaultEncoding_MC;
      end
      if(_zz_414_)begin
        if(_zz_415_)begin
          DBusCachedPlugin_exceptionBus_payload_codePPC = `ExcpEnum_defaultEncoding_DSI_PROT;
        end else begin
          if(_zz_416_)begin
            DBusCachedPlugin_exceptionBus_payload_codePPC = `ExcpEnum_defaultEncoding_DSI_PROT;
          end
        end
      end
      if(dataCache_1__io_cpu_writeBack_unalignedAccess)begin
        DBusCachedPlugin_exceptionBus_payload_codePPC = `ExcpEnum_defaultEncoding_ALG;
      end
      if(dataCache_1__io_cpu_writeBack_mmuException)begin
        DBusCachedPlugin_exceptionBus_payload_codePPC = `ExcpEnum_defaultEncoding_DSI;
      end
    end
  end

  assign DBusCachedPlugin_exceptionBus_payload_imm = 7'h0;
  always @ (*) begin
    DBusCachedPlugin_exceptionBus_payload_badAddr = 32'h0;
    DBusCachedPlugin_exceptionBus_payload_badAddr = writeBack_PC;
  end

  always @ (*) begin
    decodeExceptionPort_payload_codePPC = (5'bxxxxx);
    decodeExceptionPort_payload_codePPC = (5'bxxxxx);
    if(decode_arbitration_isValid)begin
      if(_zz_417_)begin
        decodeExceptionPort_payload_codePPC = `ExcpEnum_defaultEncoding_PGM_ILL;
      end
      if(_zz_418_)begin
        decodeExceptionPort_payload_codePPC = `ExcpEnum_defaultEncoding_PGM_PRV;
      end
    end
  end

  assign decodeExceptionPort_payload_imm = 7'h0;
  always @ (*) begin
    decodeExceptionPort_payload_badAddr = 32'h0;
    decodeExceptionPort_payload_badAddr = 32'h0;
    if(decode_arbitration_isValid)begin
      if(_zz_417_)begin
        decodeExceptionPort_payload_badAddr = decode_PC;
      end
      if(_zz_418_)begin
        decodeExceptionPort_payload_badAddr = decode_PC;
      end
    end
  end

  assign BranchPlugin_branchExceptionPort_payload_codePPC = (5'bxxxxx);
  assign BranchPlugin_branchExceptionPort_payload_imm = 7'h0;
  always @ (*) begin
    BranchPlugin_branchExceptionPort_payload_badAddr = 32'h0;
    BranchPlugin_branchExceptionPort_payload_badAddr = memory_BRANCH_CALC;
  end

  always @ (*) begin
    SPRPlugin_jumpInterface_valid = 1'b0;
    if(_zz_406_)begin
      SPRPlugin_jumpInterface_valid = 1'b1;
    end
    if(_zz_407_)begin
      SPRPlugin_jumpInterface_valid = 1'b1;
    end
    if(_zz_408_)begin
      SPRPlugin_jumpInterface_valid = 1'b1;
    end
    if(_zz_409_)begin
      SPRPlugin_jumpInterface_valid = 1'b1;
    end
    if(_zz_410_)begin
      SPRPlugin_jumpInterface_valid = 1'b1;
    end
    if(_zz_411_)begin
      SPRPlugin_jumpInterface_valid = 1'b1;
    end
    if(_zz_412_)begin
      SPRPlugin_jumpInterface_valid = 1'b1;
    end
  end

  always @ (*) begin
    SPRPlugin_jumpInterface_payload = 32'h0;
    if(_zz_406_)begin
      SPRPlugin_jumpInterface_payload = _zz_343_;
    end
    if(_zz_407_)begin
      SPRPlugin_jumpInterface_payload = (writeBack_PC + 32'h00000004);
    end
    if(_zz_408_)begin
      SPRPlugin_jumpInterface_payload = 32'h00000c00;
    end
    if(_zz_409_)begin
      SPRPlugin_jumpInterface_payload = 32'h00000c00;
    end
    if(_zz_411_)begin
      SPRPlugin_jumpInterface_payload = SPRPlugin_srr0;
    end
  end

  assign SPRPlugin_forceMachineWire = 1'b0;
  always @ (*) begin
    SPRPlugin_selfException_payload_codePPC = (5'bxxxxx);
    SPRPlugin_selfException_payload_codePPC = `ExcpEnum_defaultEncoding_NONE;
    if(execute_SPRPLUGIN_illegalAccess)begin
      SPRPlugin_selfException_payload_codePPC = `ExcpEnum_defaultEncoding_PGM_PRV;
    end
  end

  assign _zz_1554_ = zz_SPRPlugin_selfException_payload_imm(1'b0);
  always @ (*) SPRPlugin_selfException_payload_imm = _zz_1554_;
  always @ (*) begin
    SPRPlugin_selfException_payload_badAddr = 32'h0;
    SPRPlugin_selfException_payload_badAddr = execute_PC;
  end

  assign SPRPlugin_allowInterrupts = 1'b1;
  assign SPRPlugin_allowException = 1'b1;
  assign IBusCachedPlugin_externalFlush = ({writeBack_arbitration_flushNext,{memory_arbitration_flushNext,{execute_arbitration_flushNext,decode_arbitration_flushNext}}} != (4'b0000));
  assign IBusCachedPlugin_jump_pcLoad_valid = ({SPRPlugin_jumpInterface_valid,{BranchPlugin_jumpInterface_valid,DBusCachedPlugin_redoBranch_valid}} != (3'b000));
  assign _zz_132_ = {BranchPlugin_jumpInterface_valid,{SPRPlugin_jumpInterface_valid,DBusCachedPlugin_redoBranch_valid}};
  assign _zz_133_ = (_zz_132_ & (~ _zz_496_));
  assign _zz_134_ = _zz_133_[1];
  assign _zz_135_ = _zz_133_[2];
  assign IBusCachedPlugin_jump_pcLoad_payload = _zz_391_;
  always @ (*) begin
    IBusCachedPlugin_fetchPc_correction = 1'b0;
    if(IBusCachedPlugin_fetchPc_predictionPcLoad_valid)begin
      IBusCachedPlugin_fetchPc_correction = 1'b1;
    end
    if(IBusCachedPlugin_fetchPc_redo_valid)begin
      IBusCachedPlugin_fetchPc_correction = 1'b1;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid)begin
      IBusCachedPlugin_fetchPc_correction = 1'b1;
    end
  end

  assign IBusCachedPlugin_fetchPc_corrected = (IBusCachedPlugin_fetchPc_correction || IBusCachedPlugin_fetchPc_correctionReg);
  assign IBusCachedPlugin_fetchPc_pcRegPropagate = 1'b0;
  always @ (*) begin
    IBusCachedPlugin_fetchPc_pc = (IBusCachedPlugin_fetchPc_pcReg + _zz_498_);
    if(IBusCachedPlugin_fetchPc_predictionPcLoad_valid)begin
      IBusCachedPlugin_fetchPc_pc = IBusCachedPlugin_fetchPc_predictionPcLoad_payload;
    end
    if(IBusCachedPlugin_fetchPc_redo_valid)begin
      IBusCachedPlugin_fetchPc_pc = IBusCachedPlugin_fetchPc_redo_payload;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid)begin
      IBusCachedPlugin_fetchPc_pc = IBusCachedPlugin_jump_pcLoad_payload;
    end
    IBusCachedPlugin_fetchPc_pc[0] = 1'b0;
  end

  always @ (*) begin
    IBusCachedPlugin_fetchPc_flushed = 1'b0;
    if(IBusCachedPlugin_fetchPc_redo_valid)begin
      IBusCachedPlugin_fetchPc_flushed = 1'b1;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid)begin
      IBusCachedPlugin_fetchPc_flushed = 1'b1;
    end
  end

  assign IBusCachedPlugin_fetchPc_output_valid = ((! IBusCachedPlugin_fetcherHalt) && IBusCachedPlugin_fetchPc_booted);
  assign IBusCachedPlugin_fetchPc_output_payload = IBusCachedPlugin_fetchPc_pc;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_redoFetch = 1'b0;
    if(IBusCachedPlugin_rsp_redoFetch)begin
      IBusCachedPlugin_iBusRsp_redoFetch = 1'b1;
    end
  end

  assign IBusCachedPlugin_iBusRsp_stages_0_input_valid = IBusCachedPlugin_fetchPc_output_valid;
  assign IBusCachedPlugin_fetchPc_output_ready = IBusCachedPlugin_iBusRsp_stages_0_input_ready;
  assign IBusCachedPlugin_iBusRsp_stages_0_input_payload = IBusCachedPlugin_fetchPc_output_payload;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_stages_0_halt = 1'b0;
    if(IBusCachedPlugin_cache_io_cpu_prefetch_haltIt)begin
      IBusCachedPlugin_iBusRsp_stages_0_halt = 1'b1;
    end
  end

  assign _zz_136_ = (! IBusCachedPlugin_iBusRsp_stages_0_halt);
  assign IBusCachedPlugin_iBusRsp_stages_0_input_ready = (IBusCachedPlugin_iBusRsp_stages_0_output_ready && _zz_136_);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_valid = (IBusCachedPlugin_iBusRsp_stages_0_input_valid && _zz_136_);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_payload = IBusCachedPlugin_iBusRsp_stages_0_input_payload;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_stages_1_halt = 1'b0;
    if(IBusCachedPlugin_cache_io_cpu_fetch_haltIt)begin
      IBusCachedPlugin_iBusRsp_stages_1_halt = 1'b1;
    end
  end

  assign _zz_137_ = (! IBusCachedPlugin_iBusRsp_stages_1_halt);
  assign IBusCachedPlugin_iBusRsp_stages_1_input_ready = (IBusCachedPlugin_iBusRsp_stages_1_output_ready && _zz_137_);
  assign IBusCachedPlugin_iBusRsp_stages_1_output_valid = (IBusCachedPlugin_iBusRsp_stages_1_input_valid && _zz_137_);
  assign IBusCachedPlugin_iBusRsp_stages_1_output_payload = IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_stages_2_halt = 1'b0;
    if((_zz_127_ || IBusCachedPlugin_rsp_iBusRspOutputHalt))begin
      IBusCachedPlugin_iBusRsp_stages_2_halt = 1'b1;
    end
  end

  assign _zz_138_ = (! IBusCachedPlugin_iBusRsp_stages_2_halt);
  assign IBusCachedPlugin_iBusRsp_stages_2_input_ready = (IBusCachedPlugin_iBusRsp_stages_2_output_ready && _zz_138_);
  assign IBusCachedPlugin_iBusRsp_stages_2_output_valid = (IBusCachedPlugin_iBusRsp_stages_2_input_valid && _zz_138_);
  assign IBusCachedPlugin_iBusRsp_stages_2_output_payload = IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  assign IBusCachedPlugin_fetchPc_redo_valid = IBusCachedPlugin_iBusRsp_redoFetch;
  assign IBusCachedPlugin_fetchPc_redo_payload = IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  assign IBusCachedPlugin_iBusRsp_flush = ((decode_arbitration_removeIt || (decode_arbitration_flushNext && (! decode_arbitration_isStuck))) || IBusCachedPlugin_iBusRsp_redoFetch);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_ready = ((1'b0 && (! _zz_139_)) || IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign _zz_139_ = _zz_140_;
  assign IBusCachedPlugin_iBusRsp_stages_1_input_valid = _zz_139_;
  assign IBusCachedPlugin_iBusRsp_stages_1_input_payload = _zz_141_;
  assign IBusCachedPlugin_iBusRsp_stages_1_output_ready = ((1'b0 && (! _zz_142_)) || IBusCachedPlugin_iBusRsp_stages_2_input_ready);
  assign _zz_142_ = _zz_143_;
  assign IBusCachedPlugin_iBusRsp_stages_2_input_valid = _zz_142_;
  assign IBusCachedPlugin_iBusRsp_stages_2_input_payload = _zz_144_;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_readyForError = 1'b1;
    if((! IBusCachedPlugin_pcValids_0))begin
      IBusCachedPlugin_iBusRsp_readyForError = 1'b0;
    end
  end

  assign IBusCachedPlugin_pcValids_0 = IBusCachedPlugin_injector_nextPcCalc_valids_1;
  assign IBusCachedPlugin_pcValids_1 = IBusCachedPlugin_injector_nextPcCalc_valids_2;
  assign IBusCachedPlugin_pcValids_2 = IBusCachedPlugin_injector_nextPcCalc_valids_3;
  assign IBusCachedPlugin_pcValids_3 = IBusCachedPlugin_injector_nextPcCalc_valids_4;
  assign IBusCachedPlugin_iBusRsp_output_ready = (! decode_arbitration_isStuck);
  assign decode_arbitration_isValid = IBusCachedPlugin_iBusRsp_output_valid;
  assign IBusCachedPlugin_predictor_historyWriteDelayPatched_valid = IBusCachedPlugin_predictor_historyWrite_valid;
  assign IBusCachedPlugin_predictor_historyWriteDelayPatched_payload_address = (IBusCachedPlugin_predictor_historyWrite_payload_address - 10'h001);
  assign IBusCachedPlugin_predictor_historyWriteDelayPatched_payload_data_source = IBusCachedPlugin_predictor_historyWrite_payload_data_source;
  assign IBusCachedPlugin_predictor_historyWriteDelayPatched_payload_data_branchWish = IBusCachedPlugin_predictor_historyWrite_payload_data_branchWish;
  assign IBusCachedPlugin_predictor_historyWriteDelayPatched_payload_data_target = IBusCachedPlugin_predictor_historyWrite_payload_data_target;
  assign _zz_145_ = (IBusCachedPlugin_iBusRsp_stages_0_input_payload >>> 2);
  assign _zz_146_ = _zz_387_;
  assign IBusCachedPlugin_predictor_buffer_line_source = _zz_146_[19 : 0];
  assign IBusCachedPlugin_predictor_buffer_line_branchWish = _zz_146_[21 : 20];
  assign IBusCachedPlugin_predictor_buffer_line_target = _zz_146_[53 : 22];
  assign IBusCachedPlugin_predictor_buffer_hazard = (IBusCachedPlugin_predictor_writeLast_valid && (IBusCachedPlugin_predictor_writeLast_payload_address == _zz_501_));
  assign IBusCachedPlugin_predictor_hazard = (IBusCachedPlugin_predictor_buffer_hazard_regNextWhen || IBusCachedPlugin_predictor_buffer_pcCorrected);
  assign IBusCachedPlugin_predictor_hit = (IBusCachedPlugin_predictor_line_source == _zz_502_);
  assign IBusCachedPlugin_fetchPc_predictionPcLoad_valid = (((IBusCachedPlugin_predictor_line_branchWish[1] && IBusCachedPlugin_predictor_hit) && (! IBusCachedPlugin_predictor_hazard)) && IBusCachedPlugin_iBusRsp_stages_1_input_valid);
  assign IBusCachedPlugin_fetchPc_predictionPcLoad_payload = IBusCachedPlugin_predictor_line_target;
  assign IBusCachedPlugin_predictor_fetchContext_hazard = IBusCachedPlugin_predictor_hazard;
  assign IBusCachedPlugin_predictor_fetchContext_hit = IBusCachedPlugin_predictor_hit;
  assign IBusCachedPlugin_predictor_fetchContext_line_source = IBusCachedPlugin_predictor_line_source;
  assign IBusCachedPlugin_predictor_fetchContext_line_branchWish = IBusCachedPlugin_predictor_line_branchWish;
  assign IBusCachedPlugin_predictor_fetchContext_line_target = IBusCachedPlugin_predictor_line_target;
  assign IBusCachedPlugin_predictor_iBusRspContextOutput_hazard = IBusCachedPlugin_predictor_iBusRspContext_hazard;
  assign IBusCachedPlugin_predictor_iBusRspContextOutput_hit = IBusCachedPlugin_predictor_iBusRspContext_hit;
  assign IBusCachedPlugin_predictor_iBusRspContextOutput_line_source = IBusCachedPlugin_predictor_iBusRspContext_line_source;
  assign IBusCachedPlugin_predictor_iBusRspContextOutput_line_branchWish = IBusCachedPlugin_predictor_iBusRspContext_line_branchWish;
  assign IBusCachedPlugin_predictor_iBusRspContextOutput_line_target = IBusCachedPlugin_predictor_iBusRspContext_line_target;
  assign IBusCachedPlugin_predictor_injectorContext_hazard = IBusCachedPlugin_predictor_iBusRspContextOutput_hazard;
  assign IBusCachedPlugin_predictor_injectorContext_hit = IBusCachedPlugin_predictor_iBusRspContextOutput_hit;
  assign IBusCachedPlugin_predictor_injectorContext_line_source = IBusCachedPlugin_predictor_iBusRspContextOutput_line_source;
  assign IBusCachedPlugin_predictor_injectorContext_line_branchWish = IBusCachedPlugin_predictor_iBusRspContextOutput_line_branchWish;
  assign IBusCachedPlugin_predictor_injectorContext_line_target = IBusCachedPlugin_predictor_iBusRspContextOutput_line_target;
  assign IBusCachedPlugin_fetchPrediction_cmd_hadBranch = ((memory_PREDICTION_CONTEXT_hit && (! memory_PREDICTION_CONTEXT_hazard)) && memory_PREDICTION_CONTEXT_line_branchWish[1]);
  assign IBusCachedPlugin_fetchPrediction_cmd_targetPc = memory_PREDICTION_CONTEXT_line_target;
  always @ (*) begin
    IBusCachedPlugin_predictor_historyWrite_valid = 1'b0;
    if(IBusCachedPlugin_fetchPrediction_rsp_wasRight)begin
      IBusCachedPlugin_predictor_historyWrite_valid = memory_PREDICTION_CONTEXT_hit;
    end else begin
      if(memory_PREDICTION_CONTEXT_hit)begin
        IBusCachedPlugin_predictor_historyWrite_valid = 1'b1;
      end else begin
        IBusCachedPlugin_predictor_historyWrite_valid = 1'b1;
      end
    end
    if((memory_PREDICTION_CONTEXT_hazard || (! memory_arbitration_isFiring)))begin
      IBusCachedPlugin_predictor_historyWrite_valid = 1'b0;
    end
  end

  assign IBusCachedPlugin_predictor_historyWrite_payload_address = IBusCachedPlugin_fetchPrediction_rsp_sourceLastWord[11 : 2];
  assign IBusCachedPlugin_predictor_historyWrite_payload_data_source = (IBusCachedPlugin_fetchPrediction_rsp_sourceLastWord >>> 12);
  assign IBusCachedPlugin_predictor_historyWrite_payload_data_target = IBusCachedPlugin_fetchPrediction_rsp_finalPc;
  always @ (*) begin
    if(IBusCachedPlugin_fetchPrediction_rsp_wasRight)begin
      IBusCachedPlugin_predictor_historyWrite_payload_data_branchWish = (_zz_503_ - _zz_507_);
    end else begin
      if(memory_PREDICTION_CONTEXT_hit)begin
        IBusCachedPlugin_predictor_historyWrite_payload_data_branchWish = (_zz_508_ + _zz_512_);
      end else begin
        IBusCachedPlugin_predictor_historyWrite_payload_data_branchWish = (2'b10);
      end
    end
  end

  assign iBus_cmd_valid = IBusCachedPlugin_cache_io_mem_cmd_valid;
  always @ (*) begin
    iBus_cmd_payload_address = IBusCachedPlugin_cache_io_mem_cmd_payload_address;
    iBus_cmd_payload_address = IBusCachedPlugin_cache_io_mem_cmd_payload_address;
  end

  assign iBus_cmd_payload_size = IBusCachedPlugin_cache_io_mem_cmd_payload_size;
  assign IBusCachedPlugin_s0_tightlyCoupledHit = 1'b0;
  assign _zz_366_ = (IBusCachedPlugin_iBusRsp_stages_0_input_valid && (! IBusCachedPlugin_s0_tightlyCoupledHit));
  assign IBusCachedPlugin_s1_bigEndian = (decode_MSR_ENDIAN == `EndianEnum_defaultEncoding_BE);
  assign _zz_367_ = (IBusCachedPlugin_iBusRsp_stages_1_input_valid && (! IBusCachedPlugin_s1_tightlyCoupledHit));
  assign _zz_368_ = (! IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign _zz_369_ = (! SPRPlugin_msr_ir);
  assign IBusCachedPlugin_s2_bigEndian = (decode_MSR_ENDIAN == `EndianEnum_defaultEncoding_BE);
  assign _zz_370_ = (IBusCachedPlugin_iBusRsp_stages_2_input_valid && (! IBusCachedPlugin_s2_tightlyCoupledHit));
  assign _zz_371_ = (! IBusCachedPlugin_iBusRsp_stages_2_input_ready);
  assign _zz_372_ = (SPRPlugin_privilege == (2'b00));
  always @ (*) begin
    if(IBusCachedPlugin_s2_bigEndian)begin
      _zz_128_ = (decode_arbitration_isStuck ? decode_INSTRUCTION : IBusCachedPlugin_cache_io_cpu_fetch_data);
    end else begin
      _zz_128_ = (decode_arbitration_isStuck ? decode_INSTRUCTION : {{{IBusCachedPlugin_cache_io_cpu_fetch_data[7 : 0],IBusCachedPlugin_cache_io_cpu_fetch_data[15 : 8]},IBusCachedPlugin_cache_io_cpu_fetch_data[23 : 16]},IBusCachedPlugin_cache_io_cpu_fetch_data[31 : 24]});
    end
  end

  assign IBusCachedPlugin_rsp_iBusRspOutputHalt = 1'b0;
  assign IBusCachedPlugin_rsp_issueDetected = 1'b0;
  always @ (*) begin
    IBusCachedPlugin_rsp_redoFetch = 1'b0;
    if(_zz_404_)begin
      IBusCachedPlugin_rsp_redoFetch = 1'b1;
    end
    if(_zz_399_)begin
      IBusCachedPlugin_rsp_redoFetch = 1'b1;
    end
  end

  assign IBusCachedPlugin_rsp_bigEndian = (decode_MSR_ENDIAN == `EndianEnum_defaultEncoding_BE);
  always @ (*) begin
    _zz_373_ = (IBusCachedPlugin_rsp_redoFetch && (! IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling));
    if(_zz_399_)begin
      _zz_373_ = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_decodeExceptionPort_valid = 1'b0;
    if(_zz_403_)begin
      IBusCachedPlugin_decodeExceptionPort_valid = IBusCachedPlugin_iBusRsp_readyForError;
    end
    if(_zz_401_)begin
      if(_zz_402_)begin
        IBusCachedPlugin_decodeExceptionPort_valid = IBusCachedPlugin_iBusRsp_readyForError;
      end
    end
    if(_zz_400_)begin
      IBusCachedPlugin_decodeExceptionPort_valid = IBusCachedPlugin_iBusRsp_readyForError;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_decodeExceptionPort_payload_code = (4'bxxxx);
    if(_zz_403_)begin
      IBusCachedPlugin_decodeExceptionPort_payload_code = (4'b1011);
    end
    if(_zz_401_)begin
      if(_zz_402_)begin
        IBusCachedPlugin_decodeExceptionPort_payload_code = (4'b1100);
      end
    end
    if(_zz_400_)begin
      IBusCachedPlugin_decodeExceptionPort_payload_code = (4'b0001);
    end
  end

  assign IBusCachedPlugin_iBusRsp_output_valid = IBusCachedPlugin_iBusRsp_stages_2_output_valid;
  assign IBusCachedPlugin_iBusRsp_stages_2_output_ready = IBusCachedPlugin_iBusRsp_output_ready;
  always @ (*) begin
    if(IBusCachedPlugin_rsp_bigEndian)begin
      IBusCachedPlugin_iBusRsp_output_payload_rsp_inst = IBusCachedPlugin_cache_io_cpu_decode_data;
    end else begin
      IBusCachedPlugin_iBusRsp_output_payload_rsp_inst = {{{IBusCachedPlugin_cache_io_cpu_decode_data[7 : 0],IBusCachedPlugin_cache_io_cpu_decode_data[15 : 8]},IBusCachedPlugin_cache_io_cpu_decode_data[23 : 16]},IBusCachedPlugin_cache_io_cpu_decode_data[31 : 24]};
    end
  end

  assign IBusCachedPlugin_iBusRsp_output_payload_pc = IBusCachedPlugin_iBusRsp_stages_2_output_payload;
  assign IBusCachedPlugin_mmuBus_cmd_isValid = IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_cmd_isValid;
  assign IBusCachedPlugin_mmuBus_cmd_virtualAddress = IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_cmd_virtualAddress;
  assign IBusCachedPlugin_mmuBus_cmd_bypassTranslation = IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_cmd_bypassTranslation;
  assign IBusCachedPlugin_mmuBus_spr_valid = IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_spr_valid;
  assign IBusCachedPlugin_mmuBus_spr_payload_id = IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_spr_payload_id;
  assign IBusCachedPlugin_mmuBus_spr_payload_data = IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_spr_payload_data;
  assign IBusCachedPlugin_mmuBus_end = IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_end;
  assign _zz_365_ = (decode_arbitration_isValid && decode_FLUSH_ALL);
  assign _zz_386_ = ((1'b1 && (! dataCache_1__io_mem_cmd_m2sPipe_valid)) || dataCache_1__io_mem_cmd_m2sPipe_ready);
  assign dataCache_1__io_mem_cmd_m2sPipe_valid = dataCache_1__io_mem_cmd_m2sPipe_rValid;
  assign dataCache_1__io_mem_cmd_m2sPipe_payload_wr = dataCache_1__io_mem_cmd_m2sPipe_rData_wr;
  assign dataCache_1__io_mem_cmd_m2sPipe_payload_address = dataCache_1__io_mem_cmd_m2sPipe_rData_address;
  assign dataCache_1__io_mem_cmd_m2sPipe_payload_data = dataCache_1__io_mem_cmd_m2sPipe_rData_data;
  assign dataCache_1__io_mem_cmd_m2sPipe_payload_mask = dataCache_1__io_mem_cmd_m2sPipe_rData_mask;
  assign dataCache_1__io_mem_cmd_m2sPipe_payload_length = dataCache_1__io_mem_cmd_m2sPipe_rData_length;
  assign dataCache_1__io_mem_cmd_m2sPipe_payload_last = dataCache_1__io_mem_cmd_m2sPipe_rData_last;
  assign dBus_cmd_valid = dataCache_1__io_mem_cmd_m2sPipe_valid;
  assign dataCache_1__io_mem_cmd_m2sPipe_ready = dBus_cmd_ready;
  assign dBus_cmd_payload_wr = dataCache_1__io_mem_cmd_m2sPipe_payload_wr;
  assign dBus_cmd_payload_address = dataCache_1__io_mem_cmd_m2sPipe_payload_address;
  assign dBus_cmd_payload_data = dataCache_1__io_mem_cmd_m2sPipe_payload_data;
  assign dBus_cmd_payload_mask = dataCache_1__io_mem_cmd_m2sPipe_payload_mask;
  assign dBus_cmd_payload_length = dataCache_1__io_mem_cmd_m2sPipe_payload_length;
  assign dBus_cmd_payload_last = dataCache_1__io_mem_cmd_m2sPipe_payload_last;
  assign execute_DBusCachedPlugin_bigEndian = (execute_MSR_ENDIAN == `EndianEnum_defaultEncoding_BE);
  always @ (*) begin
    case(execute_DATA_SIZE)
      `DataSizeEnum_defaultEncoding_B : begin
        execute_DBusCachedPlugin_size = (2'b00);
      end
      `DataSizeEnum_defaultEncoding_H : begin
        execute_DBusCachedPlugin_size = (2'b01);
      end
      `DataSizeEnum_defaultEncoding_W : begin
        execute_DBusCachedPlugin_size = (2'b10);
      end
      default : begin
        execute_DBusCachedPlugin_size = (2'b00);
      end
    endcase
  end

  assign _zz_375_ = (execute_arbitration_isValid && execute_MEMORY_ENABLE);
  assign _zz_376_ = execute_SRC_ADD[31 : 0];
  always @ (*) begin
    case(execute_DBusCachedPlugin_size)
      2'b00 : begin
        _zz_149_ = {{{execute_RS[7 : 0],execute_RS[7 : 0]},execute_RS[7 : 0]},execute_RS[7 : 0]};
      end
      2'b01 : begin
        _zz_149_ = {execute_RS[15 : 0],execute_RS[15 : 0]};
      end
      default : begin
        _zz_149_ = execute_RS;
      end
    endcase
  end

  always @ (*) begin
    if(execute_DBusCachedPlugin_bigEndian)begin
      _zz_377_ = _zz_149_;
    end else begin
      _zz_377_ = _zz_152_;
    end
  end

  assign _zz_150_ = execute_RS[15 : 0];
  assign _zz_151_ = execute_RS[15 : 0];
  always @ (*) begin
    case(execute_DBusCachedPlugin_size)
      2'b00 : begin
        _zz_152_ = {{{execute_RS[7 : 0],execute_RS[7 : 0]},execute_RS[7 : 0]},execute_RS[7 : 0]};
      end
      2'b01 : begin
        _zz_152_ = {{_zz_150_[7 : 0],_zz_150_[15 : 8]},{_zz_151_[7 : 0],_zz_151_[15 : 8]}};
      end
      default : begin
        _zz_152_ = {{{execute_RS[7 : 0],execute_RS[15 : 8]},execute_RS[23 : 16]},execute_RS[31 : 24]};
      end
    endcase
  end

  assign _zz_385_ = (execute_arbitration_isValid && execute_MEMORY_MANAGMENT);
  always @ (*) begin
    if(execute_STORE_UPDATE)begin
      _zz_124_ = execute_SRC_ADD;
    end
    if(execute_DECODER_stageables_53)begin
      if(ALU2_sprReadValid)begin
        _zz_124_ = ALU2_XER;
      end else begin
        if(execute_DECODER_stageables_21)begin
          _zz_124_ = _zz_257_;
        end else begin
          if(execute_DECODER_stageables_1)begin
            if(_zz_258_)begin
              _zz_124_ = 32'hffffffff;
            end else begin
              if(_zz_259_)begin
                _zz_124_ = 32'h00000001;
              end else begin
                _zz_124_ = 32'h0;
              end
            end
          end else begin
            if(execute_DECODER_stageables_25)begin
              _zz_124_ = (_zz_551_[_zz_552_] ? execute_SRC1 : execute_SRC2);
            end else begin
              _zz_124_ = sprReadBU_payload_data;
            end
          end
        end
      end
    end else begin
      _zz_124_ = _zz_260_;
    end
  end

  assign _zz_378_ = ((((memory_arbitration_isValid && memory_MEMORY_ENABLE) && (! DBusCachedPlugin_exceptionBus_valid)) && (! memory_arbitration_isStuck)) && (! memory_arbitration_removeIt));
  assign _zz_379_ = memory_REGFILE_WRITE_DATA;
  assign _zz_381_ = (! SPRPlugin_msr_dr);
  assign DBusCachedPlugin_mmuBus_cmd_isValid = dataCache_1__io_cpu_memory_mmuBus_cmd_isValid;
  assign DBusCachedPlugin_mmuBus_cmd_virtualAddress = dataCache_1__io_cpu_memory_mmuBus_cmd_virtualAddress;
  assign DBusCachedPlugin_mmuBus_cmd_bypassTranslation = dataCache_1__io_cpu_memory_mmuBus_cmd_bypassTranslation;
  always @ (*) begin
    _zz_380_ = DBusCachedPlugin_mmuBus_rsp_isIoAccess;
    if((1'b0 && (! dataCache_1__io_cpu_memory_isWrite)))begin
      _zz_380_ = 1'b1;
    end
  end

  assign DBusCachedPlugin_mmuBus_spr_valid = dataCache_1__io_cpu_memory_mmuBus_spr_valid;
  assign DBusCachedPlugin_mmuBus_spr_payload_id = dataCache_1__io_cpu_memory_mmuBus_spr_payload_id;
  assign DBusCachedPlugin_mmuBus_spr_payload_data = dataCache_1__io_cpu_memory_mmuBus_spr_payload_data;
  assign DBusCachedPlugin_mmuBus_end = dataCache_1__io_cpu_memory_mmuBus_end;
  assign _zz_382_ = (writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE);
  assign _zz_383_ = (SPRPlugin_privilege == (2'b00));
  assign _zz_384_ = writeBack_REGFILE_WRITE_DATA;
  assign writeBack_DBusCachedPlugin_bigEndian = (writeBack_MSR_ENDIAN == `EndianEnum_defaultEncoding_BE);
  always @ (*) begin
    DBusCachedPlugin_redoBranch_valid = 1'b0;
    if(_zz_413_)begin
      if(dataCache_1__io_cpu_redo)begin
        DBusCachedPlugin_redoBranch_valid = 1'b1;
      end
    end
  end

  assign DBusCachedPlugin_redoBranch_payload = writeBack_PC;
  always @ (*) begin
    DBusCachedPlugin_exceptionBus_valid = 1'b0;
    if(_zz_413_)begin
      if(dataCache_1__io_cpu_writeBack_accessError)begin
        DBusCachedPlugin_exceptionBus_valid = 1'b1;
      end
      if(_zz_414_)begin
        if(_zz_415_)begin
          DBusCachedPlugin_exceptionBus_valid = 1'b1;
        end else begin
          if(_zz_416_)begin
            DBusCachedPlugin_exceptionBus_valid = 1'b1;
          end
        end
      end
      if(dataCache_1__io_cpu_writeBack_unalignedAccess)begin
        DBusCachedPlugin_exceptionBus_valid = 1'b1;
      end
      if(dataCache_1__io_cpu_writeBack_mmuException)begin
        DBusCachedPlugin_exceptionBus_valid = 1'b1;
      end
      if(dataCache_1__io_cpu_redo)begin
        DBusCachedPlugin_exceptionBus_valid = 1'b0;
      end
    end
  end

  always @ (*) begin
    DBusCachedPlugin_exceptionBus_payload_code = (4'bxxxx);
    if(_zz_413_)begin
      if(dataCache_1__io_cpu_writeBack_accessError)begin
        DBusCachedPlugin_exceptionBus_payload_code = {1'd0, _zz_513_};
      end
      if(_zz_414_)begin
        if(_zz_415_)begin
          DBusCachedPlugin_exceptionBus_payload_code = (4'b0000);
        end else begin
          if(_zz_416_)begin
            DBusCachedPlugin_exceptionBus_payload_code = (4'b0000);
          end
        end
      end
      if(dataCache_1__io_cpu_writeBack_unalignedAccess)begin
        DBusCachedPlugin_exceptionBus_payload_code = {1'd0, _zz_514_};
      end
      if(dataCache_1__io_cpu_writeBack_mmuException)begin
        DBusCachedPlugin_exceptionBus_payload_code = (writeBack_MEMORY_WR ? (4'b1111) : (4'b1101));
      end
    end
  end

  always @ (*) begin
    writeBack_DBusCachedPlugin_rspShifted = dataCache_1__io_cpu_writeBack_data;
    if(writeBack_DBusCachedPlugin_bigEndian)begin
      case(writeBack_MEMORY_ADDRESS_LOW)
        2'b00 : begin
          case(writeBack_DATA_SIZE)
            `DataSizeEnum_defaultEncoding_B : begin
              writeBack_DBusCachedPlugin_rspShifted[7 : 0] = dataCache_1__io_cpu_writeBack_data[31 : 24];
            end
            `DataSizeEnum_defaultEncoding_H : begin
              writeBack_DBusCachedPlugin_rspShifted[15 : 0] = dataCache_1__io_cpu_writeBack_data[31 : 16];
            end
            default : begin
            end
          endcase
        end
        2'b01 : begin
          writeBack_DBusCachedPlugin_rspShifted[7 : 0] = dataCache_1__io_cpu_writeBack_data[23 : 16];
        end
        2'b10 : begin
          case(writeBack_DATA_SIZE)
            `DataSizeEnum_defaultEncoding_B : begin
              writeBack_DBusCachedPlugin_rspShifted[7 : 0] = dataCache_1__io_cpu_writeBack_data[15 : 8];
            end
            default : begin
            end
          endcase
        end
        default : begin
        end
      endcase
    end else begin
      case(writeBack_MEMORY_ADDRESS_LOW)
        2'b01 : begin
          writeBack_DBusCachedPlugin_rspShifted[7 : 0] = dataCache_1__io_cpu_writeBack_data[15 : 8];
        end
        2'b10 : begin
          writeBack_DBusCachedPlugin_rspShifted[15 : 0] = dataCache_1__io_cpu_writeBack_data[31 : 16];
        end
        2'b11 : begin
          writeBack_DBusCachedPlugin_rspShifted[7 : 0] = dataCache_1__io_cpu_writeBack_data[31 : 24];
        end
        default : begin
        end
      endcase
    end
  end

  always @ (*) begin
    writeBack_DBusCachedPlugin_rspHW = 16'h0;
    case(writeBack_DATA_SIZE)
      `DataSizeEnum_defaultEncoding_B : begin
      end
      `DataSizeEnum_defaultEncoding_H : begin
        if((writeBack_MEMORY_ADDRESS_LOW == (2'b00)))begin
          if(writeBack_DBusCachedPlugin_bigEndian)begin
            writeBack_DBusCachedPlugin_rspHW = writeBack_DBusCachedPlugin_rspShifted[15 : 0];
          end else begin
            writeBack_DBusCachedPlugin_rspHW = {_zz_153_[7 : 0],_zz_153_[15 : 8]};
          end
        end else begin
          if(writeBack_DBusCachedPlugin_bigEndian)begin
            writeBack_DBusCachedPlugin_rspHW = writeBack_DBusCachedPlugin_rspShifted[31 : 16];
          end else begin
            writeBack_DBusCachedPlugin_rspHW = {_zz_154_[7 : 0],_zz_154_[15 : 8]};
          end
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    case(writeBack_DATA_SIZE)
      `DataSizeEnum_defaultEncoding_B : begin
        writeBack_DBusCachedPlugin_rspFormated = {24'h0,writeBack_DBusCachedPlugin_rspShifted[7 : 0]};
      end
      `DataSizeEnum_defaultEncoding_H : begin
        if(writeBack_SIGN_EXTEND)begin
          writeBack_DBusCachedPlugin_rspFormated = {_zz_156_,writeBack_DBusCachedPlugin_rspHW};
        end else begin
          writeBack_DBusCachedPlugin_rspFormated = {16'h0,writeBack_DBusCachedPlugin_rspHW};
        end
      end
      default : begin
        if(writeBack_DBusCachedPlugin_bigEndian)begin
          writeBack_DBusCachedPlugin_rspFormated = writeBack_DBusCachedPlugin_rspShifted;
        end else begin
          writeBack_DBusCachedPlugin_rspFormated = {{{writeBack_DBusCachedPlugin_rspShifted[7 : 0],writeBack_DBusCachedPlugin_rspShifted[15 : 8]},writeBack_DBusCachedPlugin_rspShifted[23 : 16]},writeBack_DBusCachedPlugin_rspShifted[31 : 24]};
        end
      end
    endcase
  end

  assign _zz_153_ = writeBack_DBusCachedPlugin_rspShifted[15 : 0];
  assign _zz_154_ = writeBack_DBusCachedPlugin_rspShifted[31 : 16];
  assign _zz_155_ = writeBack_DBusCachedPlugin_rspHW[15];
  always @ (*) begin
    _zz_156_[15] = _zz_155_;
    _zz_156_[14] = _zz_155_;
    _zz_156_[13] = _zz_155_;
    _zz_156_[12] = _zz_155_;
    _zz_156_[11] = _zz_155_;
    _zz_156_[10] = _zz_155_;
    _zz_156_[9] = _zz_155_;
    _zz_156_[8] = _zz_155_;
    _zz_156_[7] = _zz_155_;
    _zz_156_[6] = _zz_155_;
    _zz_156_[5] = _zz_155_;
    _zz_156_[4] = _zz_155_;
    _zz_156_[3] = _zz_155_;
    _zz_156_[2] = _zz_155_;
    _zz_156_[1] = _zz_155_;
    _zz_156_[0] = _zz_155_;
  end

  assign IBusCachedPlugin_mmuBus_rsp_physicalAddress = IBusCachedPlugin_mmuBus_cmd_virtualAddress;
  assign IBusCachedPlugin_mmuBus_rsp_allowRead = 1'b1;
  assign IBusCachedPlugin_mmuBus_rsp_allowWrite = 1'b1;
  assign IBusCachedPlugin_mmuBus_rsp_allowExecute = 1'b1;
  assign IBusCachedPlugin_mmuBus_rsp_isIoAccess = (IBusCachedPlugin_mmuBus_rsp_physicalAddress[31 : 28] == (4'b1111));
  assign IBusCachedPlugin_mmuBus_rsp_exception = 1'b0;
  assign IBusCachedPlugin_mmuBus_rsp_refilling = 1'b0;
  assign IBusCachedPlugin_mmuBus_busy = 1'b0;
  assign DBusCachedPlugin_mmuBus_rsp_physicalAddress = DBusCachedPlugin_mmuBus_cmd_virtualAddress;
  assign DBusCachedPlugin_mmuBus_rsp_allowRead = 1'b1;
  assign DBusCachedPlugin_mmuBus_rsp_allowWrite = 1'b1;
  assign DBusCachedPlugin_mmuBus_rsp_allowExecute = 1'b1;
  assign DBusCachedPlugin_mmuBus_rsp_isIoAccess = (DBusCachedPlugin_mmuBus_rsp_physicalAddress[31 : 28] == (4'b1111));
  assign DBusCachedPlugin_mmuBus_rsp_exception = 1'b0;
  assign DBusCachedPlugin_mmuBus_rsp_refilling = 1'b0;
  assign DBusCachedPlugin_mmuBus_busy = 1'b0;
  assign _zz_158_ = ((decode_INSTRUCTION & 32'h50000000) == 32'h10000000);
  assign _zz_159_ = ((decode_INSTRUCTION & 32'h80000000) == 32'h80000000);
  assign _zz_160_ = ((decode_INSTRUCTION & 32'h78000138) == 32'h78000100);
  assign _zz_161_ = ((decode_INSTRUCTION & 32'he0000000) == 32'h20000000);
  assign _zz_162_ = ((decode_INSTRUCTION & 32'h90000000) == 32'h90000000);
  assign _zz_163_ = ((decode_INSTRUCTION & 32'h780001b8) == 32'h78000020);
  assign _zz_164_ = ((decode_INSTRUCTION & 32'h78000038) == 32'h78000018);
  assign _zz_165_ = ((decode_INSTRUCTION & 32'h28000000) == 32'h0);
  assign _zz_166_ = ((decode_INSTRUCTION & 32'h70000000) == 32'h60000000);
  assign _zz_167_ = ((decode_INSTRUCTION & 32'hd4000000) == 32'h84000000);
  assign _zz_168_ = ((decode_INSTRUCTION & 32'h78000416) == 32'h78000004);
  assign _zz_169_ = ((decode_INSTRUCTION & 32'hf8040000) == 32'h38040000);
  assign _zz_170_ = ((decode_INSTRUCTION & 32'hf8080000) == 32'h38080000);
  assign _zz_171_ = ((decode_INSTRUCTION & 32'hf8010000) == 32'h38010000);
  assign _zz_172_ = ((decode_INSTRUCTION & 32'hf8020000) == 32'h38020000);
  assign _zz_173_ = ((decode_INSTRUCTION & 32'hec000000) == 32'h20000000);
  assign _zz_174_ = ((decode_INSTRUCTION & 32'hd4020000) == 32'h80020000);
  assign _zz_175_ = ((decode_INSTRUCTION & 32'hd4080000) == 32'h80080000);
  assign _zz_176_ = ((decode_INSTRUCTION & 32'hd4040000) == 32'h80040000);
  assign _zz_177_ = ((decode_INSTRUCTION & 32'hd4010000) == 32'h80010000);
  assign _zz_178_ = ((decode_INSTRUCTION & 32'hcc080000) == 32'h80080000);
  assign _zz_179_ = ((decode_INSTRUCTION & 32'he4020000) == 32'h80020000);
  assign _zz_180_ = ((decode_INSTRUCTION & 32'hcc020000) == 32'h80020000);
  assign _zz_181_ = ((decode_INSTRUCTION & 32'he4040000) == 32'h80040000);
  assign _zz_182_ = ((decode_INSTRUCTION & 32'hcc010000) == 32'h80010000);
  assign _zz_183_ = ((decode_INSTRUCTION & 32'he4080000) == 32'h80080000);
  assign _zz_184_ = ((decode_INSTRUCTION & 32'hf8000000) == 32'h28000000);
  assign _zz_185_ = ((decode_INSTRUCTION & 32'hcc040000) == 32'h80040000);
  assign _zz_186_ = ((decode_INSTRUCTION & 32'he4010000) == 32'h80010000);
  assign _zz_187_ = ((decode_INSTRUCTION & 32'h78000382) == 32'h78000180);
  assign _zz_188_ = ((decode_INSTRUCTION & 32'h70000000) == 32'h50000000);
  assign _zz_189_ = ((decode_INSTRUCTION & 32'h48000000) == 32'h40000000);
  assign _zz_190_ = ((decode_INSTRUCTION & 32'h78000698) == 32'h78000080);
  assign _zz_191_ = ((decode_INSTRUCTION & 32'h78000034) == 32'h78000010);
  assign _zz_192_ = ((decode_INSTRUCTION & 32'h01f0707f) == 32'h0000500f);
  assign _zz_193_ = ((decode_INSTRUCTION & 32'h7800022a) == 32'h78000002);
  assign _zz_194_ = ((decode_INSTRUCTION & 32'h9c000000) == 32'h08000000);
  assign _zz_195_ = ((decode_INSTRUCTION & 32'hf4000000) == 32'h54000000);
  assign _zz_196_ = ((decode_INSTRUCTION & 32'h7c0004a0) == 32'h4c0000a0);
  assign _zz_197_ = ((decode_INSTRUCTION & 32'h7c000460) == 32'h4c000060);
  assign _zz_198_ = ((decode_INSTRUCTION & 32'hfc000000) == 32'h1c000000);
  assign _zz_199_ = ((decode_INSTRUCTION & 32'hd40f0000) == 32'h80000000);
  assign _zz_200_ = ((decode_INSTRUCTION & 32'h78000498) == 32'h78000080);
  assign _zz_201_ = ((decode_INSTRUCTION & 32'h7800002c) == 32'h78000008);
  assign _zz_202_ = ((decode_INSTRUCTION & 32'hfc000000) == 32'h44000000);
  assign _zz_203_ = ((decode_INSTRUCTION & 32'h90100000) == 32'h80100000);
  assign _zz_204_ = ((decode_INSTRUCTION & 32'h00000500) == 32'h00000400);
  assign _zz_205_ = ((decode_INSTRUCTION & 32'h00000040) == 32'h00000040);
  assign _zz_206_ = ((decode_INSTRUCTION & 32'h7800030a) == 32'h78000102);
  assign _zz_207_ = ((decode_INSTRUCTION & 32'h78000328) == 32'h78000300);
  assign _zz_208_ = ((decode_INSTRUCTION & 32'h381f0038) == 32'h38000028);
  assign _zz_209_ = ((decode_INSTRUCTION & 32'h381f0038) == 32'h38000018);
  assign _zz_210_ = ((decode_INSTRUCTION & 32'h781f0000) == 32'h38000000);
  assign _zz_211_ = ((decode_INSTRUCTION & 32'h801f0000) == 32'h80000000);
  assign _zz_212_ = ((decode_INSTRUCTION & 32'hfc000000) == 32'h0c000000);
  assign _zz_213_ = ((decode_INSTRUCTION & 32'hdc000000) == 32'h94000000);
  assign _zz_214_ = ((decode_INSTRUCTION & 32'hf4000000) == 32'h94000000);
  assign _zz_215_ = ((decode_INSTRUCTION & 32'hbc000000) == 32'h1c000000);
  assign _zz_216_ = ((decode_INSTRUCTION & 32'hb8000000) == 32'h30000000);
  assign _zz_217_ = ((decode_INSTRUCTION & 32'he4000000) == 32'h84000000);
  assign _zz_218_ = ((decode_INSTRUCTION & 32'hd8000000) == 32'h50000000);
  assign _zz_219_ = ((decode_INSTRUCTION & 32'hf0000000) == 32'h60000000);
  assign _zz_220_ = ((decode_INSTRUCTION & 32'hcc000000) == 32'h84000000);
  assign _zz_221_ = ((decode_INSTRUCTION & 32'hfc000002) == 32'h44000002);
  assign _zz_222_ = ((decode_INSTRUCTION & 32'h00000300) == 32'h00000100);
  assign _zz_157_ = {({(_zz_740_ == _zz_741_),{_zz_742_,{_zz_743_,_zz_744_}}} != (4'b0000)),{((_zz_745_ == _zz_746_) != (1'b0)),{(_zz_747_ != (1'b0)),{(_zz_748_ != _zz_749_),{_zz_750_,{_zz_751_,_zz_752_}}}}}};
  assign _zz_223_ = _zz_157_[1 : 0];
  assign _zz_120_ = _zz_223_;
  assign _zz_224_ = _zz_157_[7 : 6];
  assign _zz_119_ = _zz_224_;
  assign _zz_225_ = _zz_157_[9 : 8];
  assign _zz_118_ = _zz_225_;
  assign _zz_226_ = _zz_157_[11 : 10];
  assign _zz_117_ = _zz_226_;
  assign _zz_227_ = _zz_157_[15 : 15];
  assign _zz_116_ = _zz_227_;
  assign _zz_228_ = _zz_157_[18 : 16];
  assign _zz_115_ = _zz_228_;
  assign _zz_229_ = _zz_157_[23 : 21];
  assign _zz_114_ = _zz_229_;
  assign _zz_230_ = _zz_157_[29 : 26];
  assign _zz_113_ = _zz_230_;
  assign _zz_231_ = _zz_157_[37 : 35];
  assign _zz_112_ = _zz_231_;
  assign _zz_232_ = _zz_157_[51 : 49];
  assign _zz_111_ = _zz_232_;
  assign _zz_233_ = _zz_157_[58 : 58];
  assign _zz_110_ = _zz_233_;
  assign _zz_234_ = _zz_157_[66 : 63];
  assign _zz_109_ = _zz_234_;
  assign _zz_235_ = _zz_157_[70 : 68];
  assign _zz_108_ = _zz_235_;
  assign _zz_236_ = _zz_157_[78 : 76];
  assign _zz_107_ = _zz_236_;
  always @ (*) begin
    decodeExceptionPort_valid = 1'b0;
    if(decode_arbitration_isValid)begin
      if(_zz_417_)begin
        decodeExceptionPort_valid = 1'b1;
      end
      if(_zz_418_)begin
        decodeExceptionPort_valid = 1'b1;
      end
    end
  end

  always @ (*) begin
    decodeExceptionPort_payload_code = (4'bxxxx);
    if(decode_arbitration_isValid)begin
      if(_zz_417_)begin
        decodeExceptionPort_payload_code = (4'b0010);
      end
      if(_zz_418_)begin
        decodeExceptionPort_payload_code = (4'b0010);
      end
    end
  end

  assign _zz_374_ = _zz_515_[9 : 0];
  assign decode_RegFilePlugin_regFileReadAddress1 = decode_INSTRUCTION_ANTICIPATED[20 : 16];
  assign decode_RegFilePlugin_regFileReadAddress2 = decode_INSTRUCTION_ANTICIPATED[15 : 11];
  assign decode_RegFilePlugin_raData_pre = _zz_388_;
  assign decode_RegFilePlugin_rbData_pre = _zz_389_;
  assign decode_RegFilePlugin_regFileReadAddress3 = decode_INSTRUCTION_ANTICIPATED[25 : 21];
  assign decode_RegFilePlugin_rsData = _zz_390_;
  always @ (*) begin
    case(decode_DECODER_stageables_11)
      `TgtCtrlEnum_defaultEncoding_RT : begin
        _zz_238_ = decode_INSTRUCTION[25 : 21];
      end
      default : begin
        _zz_238_ = decode_INSTRUCTION[20 : 16];
      end
    endcase
  end

  always @ (*) begin
    if(_zz_419_)begin
      lastStageRegFileWrite_valid = (_zz_104_ && writeBack_arbitration_isFiring);
    end else begin
      lastStageRegFileWrite_valid = 1'b1;
    end
    if(_zz_239_)begin
      lastStageRegFileWrite_valid = 1'b1;
    end
  end

  always @ (*) begin
    if(_zz_419_)begin
      lastStageRegFileWrite_payload_address = writeBack_REGFILE_WRITE_ADDR;
    end else begin
      lastStageRegFileWrite_payload_address = UpdateRegFileWrite_payload_address;
    end
  end

  always @ (*) begin
    if(_zz_419_)begin
      lastStageRegFileWrite_payload_data = _zz_121_;
    end else begin
      lastStageRegFileWrite_payload_data = UpdateRegFileWrite_payload_data;
    end
  end

  always @ (*) begin
    if(writeBack_arbitration_isFiring)begin
      writeBack_RegFilePlugin_crBusPort_valid = ((1'b1 || writeBack_BRANCH_DEC) || writeBack_BRANCH_LINK);
    end else begin
      writeBack_RegFilePlugin_crBusPort_valid = 1'b0;
    end
  end

  always @ (*) begin
    if((writeBack_BRANCH_DEC && writeBack_BRANCH_LINK))begin
      writeBack_RegFilePlugin_crBusPort_payload_op = `CRBusCmdEnum_defaultEncoding_DECLNK;
    end else begin
      if(writeBack_BRANCH_DEC)begin
        writeBack_RegFilePlugin_crBusPort_payload_op = `CRBusCmdEnum_defaultEncoding_DEC;
      end else begin
        if(writeBack_BRANCH_LINK)begin
          writeBack_RegFilePlugin_crBusPort_payload_op = `CRBusCmdEnum_defaultEncoding_LNK;
        end else begin
          writeBack_RegFilePlugin_crBusPort_payload_op = writeBack_CR_WRITE_op;
        end
      end
    end
  end

  assign writeBack_RegFilePlugin_crBusPort_payload_ba = writeBack_CR_WRITE_ba;
  assign writeBack_RegFilePlugin_crBusPort_payload_bb = writeBack_CR_WRITE_bb;
  assign writeBack_RegFilePlugin_crBusPort_payload_bt = writeBack_CR_WRITE_bt;
  always @ (*) begin
    if(writeBack_BRANCH_LINK)begin
      writeBack_RegFilePlugin_crBusPort_payload_imm = _zz_516_;
    end else begin
      writeBack_RegFilePlugin_crBusPort_payload_imm = writeBack_CR_WRITE_imm;
    end
  end

  assign writeBack_RegFilePlugin_crBusPort_payload_fxm = writeBack_CR_WRITE_fxm;
  always @ (*) begin
    if(writeBack_arbitration_isFiring)begin
      writeBack_RegFilePlugin_xerBusPort_valid = (writeBack_XER_WRITE_validOV || writeBack_XER_WRITE_validCA);
    end else begin
      writeBack_RegFilePlugin_xerBusPort_valid = 1'b0;
    end
  end

  assign writeBack_RegFilePlugin_xerBusPort_payload_validOV = writeBack_XER_WRITE_validOV;
  assign writeBack_RegFilePlugin_xerBusPort_payload_validCA = writeBack_XER_WRITE_validCA;
  assign writeBack_RegFilePlugin_xerBusPort_payload_imm = writeBack_XER_WRITE_imm;
  always @ (*) begin
    case(writeBack_SPR_ID)
      11'b00000000001 : begin
        writeBack_RegFilePlugin_sprWriteXERPort_valid = (writeBack_DECODER_stageables_29 && writeBack_arbitration_isFiring);
      end
      default : begin
        writeBack_RegFilePlugin_sprWriteXERPort_valid = 1'b0;
      end
    endcase
  end

  assign writeBack_RegFilePlugin_sprWriteXERPort_payload_id = 10'h0;
  assign writeBack_RegFilePlugin_sprWriteXERPort_payload_data = writeBack_SRC1;
  always @ (*) begin
    case(writeBack_SPR_ID)
      11'b00000001001 : begin
        writeBack_RegFilePlugin_sprWriteCLTPort_valid = (writeBack_DECODER_stageables_29 && writeBack_arbitration_isFiring);
      end
      11'b00000001000 : begin
        writeBack_RegFilePlugin_sprWriteCLTPort_valid = (writeBack_DECODER_stageables_29 && writeBack_arbitration_isFiring);
      end
      11'b01100101111 : begin
        writeBack_RegFilePlugin_sprWriteCLTPort_valid = (writeBack_DECODER_stageables_29 && writeBack_arbitration_isFiring);
      end
      default : begin
        writeBack_RegFilePlugin_sprWriteCLTPort_valid = 1'b0;
      end
    endcase
  end

  assign writeBack_RegFilePlugin_sprWriteCLTPort_payload_id = _zz_517_[9 : 0];
  assign writeBack_RegFilePlugin_sprWriteCLTPort_payload_data = writeBack_SRC1;
  always @ (*) begin
    _zz_237_ = 1'b0;
    if((writeBack_DECODER_stageables_29 && writeBack_arbitration_isFiring))begin
      case(writeBack_SPR_ID)
        11'b01111101000 : begin
          _zz_237_ = 1'b1;
        end
        11'b01111101001 : begin
          _zz_237_ = 1'b1;
        end
        11'b01111101010 : begin
          _zz_237_ = 1'b1;
        end
        default : begin
        end
      endcase
    end
  end

  always @ (*) begin
    _zz_241_ = 1'b0;
    if(writeBack_RegFilePlugin_xerBusPort_valid)begin
      _zz_241_ = writeBack_RegFilePlugin_xerBusPort_payload_validCA;
    end
  end

  always @ (*) begin
    _zz_240_ = 1'b0;
    if(writeBack_RegFilePlugin_xerBusPort_valid)begin
      _zz_240_ = writeBack_RegFilePlugin_xerBusPort_payload_validOV;
    end
  end

  always @ (*) begin
    _zz_242_ = (2'bxx);
    if(writeBack_RegFilePlugin_xerBusPort_valid)begin
      _zz_242_ = writeBack_RegFilePlugin_xerBusPort_payload_imm;
    end
  end

  always @ (*) begin
    case(execute_SPR_ID)
      11'b00000000001 : begin
        ALU2_sprReadValid = execute_DECODER_stageables_53;
      end
      default : begin
        ALU2_sprReadValid = 1'b0;
      end
    endcase
  end

  always @ (*) begin
    _zz_243_ = 1'b0;
    if(writeBack_RegFilePlugin_xerBusPort_valid)begin
      _zz_243_ = 1'b1;
    end
  end

  assign _zz_244_ = execute_SRC1[7];
  always @ (*) begin
    _zz_245_[23] = _zz_244_;
    _zz_245_[22] = _zz_244_;
    _zz_245_[21] = _zz_244_;
    _zz_245_[20] = _zz_244_;
    _zz_245_[19] = _zz_244_;
    _zz_245_[18] = _zz_244_;
    _zz_245_[17] = _zz_244_;
    _zz_245_[16] = _zz_244_;
    _zz_245_[15] = _zz_244_;
    _zz_245_[14] = _zz_244_;
    _zz_245_[13] = _zz_244_;
    _zz_245_[12] = _zz_244_;
    _zz_245_[11] = _zz_244_;
    _zz_245_[10] = _zz_244_;
    _zz_245_[9] = _zz_244_;
    _zz_245_[8] = _zz_244_;
    _zz_245_[7] = _zz_244_;
    _zz_245_[6] = _zz_244_;
    _zz_245_[5] = _zz_244_;
    _zz_245_[4] = _zz_244_;
    _zz_245_[3] = _zz_244_;
    _zz_245_[2] = _zz_244_;
    _zz_245_[1] = _zz_244_;
    _zz_245_[0] = _zz_244_;
  end

  assign _zz_246_ = execute_SRC1[15];
  always @ (*) begin
    _zz_247_[15] = _zz_246_;
    _zz_247_[14] = _zz_246_;
    _zz_247_[13] = _zz_246_;
    _zz_247_[12] = _zz_246_;
    _zz_247_[11] = _zz_246_;
    _zz_247_[10] = _zz_246_;
    _zz_247_[9] = _zz_246_;
    _zz_247_[8] = _zz_246_;
    _zz_247_[7] = _zz_246_;
    _zz_247_[6] = _zz_246_;
    _zz_247_[5] = _zz_246_;
    _zz_247_[4] = _zz_246_;
    _zz_247_[3] = _zz_246_;
    _zz_247_[2] = _zz_246_;
    _zz_247_[1] = _zz_246_;
    _zz_247_[0] = _zz_246_;
  end

  always @ (*) begin
    case(execute_DECODER_stageables_18)
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : begin
        ALU2_bitwise = (execute_SRC1 & execute_SRC2);
      end
      `AluBitwiseCtrlEnum_defaultEncoding_ANDC : begin
        ALU2_bitwise = (execute_SRC1 & (~ execute_SRC2));
      end
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : begin
        ALU2_bitwise = (execute_SRC1 | execute_SRC2);
      end
      `AluBitwiseCtrlEnum_defaultEncoding_ORC : begin
        ALU2_bitwise = (execute_SRC1 | (~ execute_SRC2));
      end
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : begin
        ALU2_bitwise = (execute_SRC1 ^ execute_SRC2);
      end
      `AluBitwiseCtrlEnum_defaultEncoding_XORC : begin
        ALU2_bitwise = (execute_SRC1 ^ (~ execute_SRC2));
      end
      `AluBitwiseCtrlEnum_defaultEncoding_NAND_1 : begin
        ALU2_bitwise = (~ (execute_SRC1 & execute_SRC2));
      end
      `AluBitwiseCtrlEnum_defaultEncoding_NOR_1 : begin
        ALU2_bitwise = (~ (execute_SRC1 | execute_SRC2));
      end
      `AluBitwiseCtrlEnum_defaultEncoding_EQV : begin
        ALU2_bitwise = (~ (execute_SRC1 ^ execute_SRC2));
      end
      `AluBitwiseCtrlEnum_defaultEncoding_EXTSB : begin
        ALU2_bitwise = {_zz_245_,execute_SRC1[7 : 0]};
      end
      default : begin
        ALU2_bitwise = {_zz_247_,execute_SRC1[15 : 0]};
      end
    endcase
  end

  always @ (*) begin
    ALU2_bitwise_enc_cr[1] = ALU2_bitwise[31];
    ALU2_bitwise_enc_cr[0] = (ALU2_bitwise == 32'h0);
  end

  always @ (*) begin
    case(ALU2_bitwise_enc_cr)
      2'b00 : begin
        ALU2_bitwise_cr = (3'b010);
      end
      2'b01 : begin
        ALU2_bitwise_cr = (3'b001);
      end
      default : begin
        ALU2_bitwise_cr = (3'b100);
      end
    endcase
  end

  always @ (*) begin
    case(execute_DECODER_stageables_43)
      `AluRimiAmtEnum_defaultEncoding_IMM : begin
        ALU2_amount = execute_INSTRUCTION[15 : 11];
      end
      default : begin
        ALU2_amount = execute_SRC2[4 : 0];
      end
    endcase
  end

  assign ALU2_maskMB = execute_INSTRUCTION[10 : 6];
  assign ALU2_maskME = execute_INSTRUCTION[5 : 1];
  always @ (*) begin
    ALU2_maskNorm[0] = 1'b0;
    if(((ALU2_maskMB <= 5'h1f) && (5'h1f <= ALU2_maskME)))begin
      ALU2_maskNorm[0] = 1'b1;
    end
    ALU2_maskNorm[1] = 1'b0;
    if(((ALU2_maskMB <= 5'h1e) && (5'h1e <= ALU2_maskME)))begin
      ALU2_maskNorm[1] = 1'b1;
    end
    ALU2_maskNorm[2] = 1'b0;
    if(((ALU2_maskMB <= 5'h1d) && (5'h1d <= ALU2_maskME)))begin
      ALU2_maskNorm[2] = 1'b1;
    end
    ALU2_maskNorm[3] = 1'b0;
    if(((ALU2_maskMB <= 5'h1c) && (5'h1c <= ALU2_maskME)))begin
      ALU2_maskNorm[3] = 1'b1;
    end
    ALU2_maskNorm[4] = 1'b0;
    if(((ALU2_maskMB <= 5'h1b) && (5'h1b <= ALU2_maskME)))begin
      ALU2_maskNorm[4] = 1'b1;
    end
    ALU2_maskNorm[5] = 1'b0;
    if(((ALU2_maskMB <= 5'h1a) && (5'h1a <= ALU2_maskME)))begin
      ALU2_maskNorm[5] = 1'b1;
    end
    ALU2_maskNorm[6] = 1'b0;
    if(((ALU2_maskMB <= 5'h19) && (5'h19 <= ALU2_maskME)))begin
      ALU2_maskNorm[6] = 1'b1;
    end
    ALU2_maskNorm[7] = 1'b0;
    if(((ALU2_maskMB <= 5'h18) && (5'h18 <= ALU2_maskME)))begin
      ALU2_maskNorm[7] = 1'b1;
    end
    ALU2_maskNorm[8] = 1'b0;
    if(((ALU2_maskMB <= 5'h17) && (5'h17 <= ALU2_maskME)))begin
      ALU2_maskNorm[8] = 1'b1;
    end
    ALU2_maskNorm[9] = 1'b0;
    if(((ALU2_maskMB <= 5'h16) && (5'h16 <= ALU2_maskME)))begin
      ALU2_maskNorm[9] = 1'b1;
    end
    ALU2_maskNorm[10] = 1'b0;
    if(((ALU2_maskMB <= 5'h15) && (5'h15 <= ALU2_maskME)))begin
      ALU2_maskNorm[10] = 1'b1;
    end
    ALU2_maskNorm[11] = 1'b0;
    if(((ALU2_maskMB <= 5'h14) && (5'h14 <= ALU2_maskME)))begin
      ALU2_maskNorm[11] = 1'b1;
    end
    ALU2_maskNorm[12] = 1'b0;
    if(((ALU2_maskMB <= 5'h13) && (5'h13 <= ALU2_maskME)))begin
      ALU2_maskNorm[12] = 1'b1;
    end
    ALU2_maskNorm[13] = 1'b0;
    if(((ALU2_maskMB <= 5'h12) && (5'h12 <= ALU2_maskME)))begin
      ALU2_maskNorm[13] = 1'b1;
    end
    ALU2_maskNorm[14] = 1'b0;
    if(((ALU2_maskMB <= 5'h11) && (5'h11 <= ALU2_maskME)))begin
      ALU2_maskNorm[14] = 1'b1;
    end
    ALU2_maskNorm[15] = 1'b0;
    if(((ALU2_maskMB <= 5'h10) && (5'h10 <= ALU2_maskME)))begin
      ALU2_maskNorm[15] = 1'b1;
    end
    ALU2_maskNorm[16] = 1'b0;
    if(((ALU2_maskMB <= 5'h0f) && (5'h0f <= ALU2_maskME)))begin
      ALU2_maskNorm[16] = 1'b1;
    end
    ALU2_maskNorm[17] = 1'b0;
    if(((ALU2_maskMB <= 5'h0e) && (5'h0e <= ALU2_maskME)))begin
      ALU2_maskNorm[17] = 1'b1;
    end
    ALU2_maskNorm[18] = 1'b0;
    if(((ALU2_maskMB <= 5'h0d) && (5'h0d <= ALU2_maskME)))begin
      ALU2_maskNorm[18] = 1'b1;
    end
    ALU2_maskNorm[19] = 1'b0;
    if(((ALU2_maskMB <= 5'h0c) && (5'h0c <= ALU2_maskME)))begin
      ALU2_maskNorm[19] = 1'b1;
    end
    ALU2_maskNorm[20] = 1'b0;
    if(((ALU2_maskMB <= 5'h0b) && (5'h0b <= ALU2_maskME)))begin
      ALU2_maskNorm[20] = 1'b1;
    end
    ALU2_maskNorm[21] = 1'b0;
    if(((ALU2_maskMB <= 5'h0a) && (5'h0a <= ALU2_maskME)))begin
      ALU2_maskNorm[21] = 1'b1;
    end
    ALU2_maskNorm[22] = 1'b0;
    if(((ALU2_maskMB <= 5'h09) && (5'h09 <= ALU2_maskME)))begin
      ALU2_maskNorm[22] = 1'b1;
    end
    ALU2_maskNorm[23] = 1'b0;
    if(((ALU2_maskMB <= 5'h08) && (5'h08 <= ALU2_maskME)))begin
      ALU2_maskNorm[23] = 1'b1;
    end
    ALU2_maskNorm[24] = 1'b0;
    if(((ALU2_maskMB <= 5'h07) && (5'h07 <= ALU2_maskME)))begin
      ALU2_maskNorm[24] = 1'b1;
    end
    ALU2_maskNorm[25] = 1'b0;
    if(((ALU2_maskMB <= 5'h06) && (5'h06 <= ALU2_maskME)))begin
      ALU2_maskNorm[25] = 1'b1;
    end
    ALU2_maskNorm[26] = 1'b0;
    if(((ALU2_maskMB <= 5'h05) && (5'h05 <= ALU2_maskME)))begin
      ALU2_maskNorm[26] = 1'b1;
    end
    ALU2_maskNorm[27] = 1'b0;
    if(((ALU2_maskMB <= 5'h04) && (5'h04 <= ALU2_maskME)))begin
      ALU2_maskNorm[27] = 1'b1;
    end
    ALU2_maskNorm[28] = 1'b0;
    if(((ALU2_maskMB <= 5'h03) && (5'h03 <= ALU2_maskME)))begin
      ALU2_maskNorm[28] = 1'b1;
    end
    ALU2_maskNorm[29] = 1'b0;
    if(((ALU2_maskMB <= 5'h02) && (5'h02 <= ALU2_maskME)))begin
      ALU2_maskNorm[29] = 1'b1;
    end
    ALU2_maskNorm[30] = 1'b0;
    if(((ALU2_maskMB <= 5'h01) && (5'h01 <= ALU2_maskME)))begin
      ALU2_maskNorm[30] = 1'b1;
    end
    ALU2_maskNorm[31] = 1'b0;
    if(((ALU2_maskMB <= 5'h0) && (5'h0 <= ALU2_maskME)))begin
      ALU2_maskNorm[31] = 1'b1;
    end
  end

  always @ (*) begin
    ALU2_maskInvt[0] = 1'b0;
    if(((5'h1f <= ALU2_maskME) || (ALU2_maskMB <= 5'h1f)))begin
      ALU2_maskInvt[0] = 1'b1;
    end
    ALU2_maskInvt[1] = 1'b0;
    if(((5'h1e <= ALU2_maskME) || (ALU2_maskMB <= 5'h1e)))begin
      ALU2_maskInvt[1] = 1'b1;
    end
    ALU2_maskInvt[2] = 1'b0;
    if(((5'h1d <= ALU2_maskME) || (ALU2_maskMB <= 5'h1d)))begin
      ALU2_maskInvt[2] = 1'b1;
    end
    ALU2_maskInvt[3] = 1'b0;
    if(((5'h1c <= ALU2_maskME) || (ALU2_maskMB <= 5'h1c)))begin
      ALU2_maskInvt[3] = 1'b1;
    end
    ALU2_maskInvt[4] = 1'b0;
    if(((5'h1b <= ALU2_maskME) || (ALU2_maskMB <= 5'h1b)))begin
      ALU2_maskInvt[4] = 1'b1;
    end
    ALU2_maskInvt[5] = 1'b0;
    if(((5'h1a <= ALU2_maskME) || (ALU2_maskMB <= 5'h1a)))begin
      ALU2_maskInvt[5] = 1'b1;
    end
    ALU2_maskInvt[6] = 1'b0;
    if(((5'h19 <= ALU2_maskME) || (ALU2_maskMB <= 5'h19)))begin
      ALU2_maskInvt[6] = 1'b1;
    end
    ALU2_maskInvt[7] = 1'b0;
    if(((5'h18 <= ALU2_maskME) || (ALU2_maskMB <= 5'h18)))begin
      ALU2_maskInvt[7] = 1'b1;
    end
    ALU2_maskInvt[8] = 1'b0;
    if(((5'h17 <= ALU2_maskME) || (ALU2_maskMB <= 5'h17)))begin
      ALU2_maskInvt[8] = 1'b1;
    end
    ALU2_maskInvt[9] = 1'b0;
    if(((5'h16 <= ALU2_maskME) || (ALU2_maskMB <= 5'h16)))begin
      ALU2_maskInvt[9] = 1'b1;
    end
    ALU2_maskInvt[10] = 1'b0;
    if(((5'h15 <= ALU2_maskME) || (ALU2_maskMB <= 5'h15)))begin
      ALU2_maskInvt[10] = 1'b1;
    end
    ALU2_maskInvt[11] = 1'b0;
    if(((5'h14 <= ALU2_maskME) || (ALU2_maskMB <= 5'h14)))begin
      ALU2_maskInvt[11] = 1'b1;
    end
    ALU2_maskInvt[12] = 1'b0;
    if(((5'h13 <= ALU2_maskME) || (ALU2_maskMB <= 5'h13)))begin
      ALU2_maskInvt[12] = 1'b1;
    end
    ALU2_maskInvt[13] = 1'b0;
    if(((5'h12 <= ALU2_maskME) || (ALU2_maskMB <= 5'h12)))begin
      ALU2_maskInvt[13] = 1'b1;
    end
    ALU2_maskInvt[14] = 1'b0;
    if(((5'h11 <= ALU2_maskME) || (ALU2_maskMB <= 5'h11)))begin
      ALU2_maskInvt[14] = 1'b1;
    end
    ALU2_maskInvt[15] = 1'b0;
    if(((5'h10 <= ALU2_maskME) || (ALU2_maskMB <= 5'h10)))begin
      ALU2_maskInvt[15] = 1'b1;
    end
    ALU2_maskInvt[16] = 1'b0;
    if(((5'h0f <= ALU2_maskME) || (ALU2_maskMB <= 5'h0f)))begin
      ALU2_maskInvt[16] = 1'b1;
    end
    ALU2_maskInvt[17] = 1'b0;
    if(((5'h0e <= ALU2_maskME) || (ALU2_maskMB <= 5'h0e)))begin
      ALU2_maskInvt[17] = 1'b1;
    end
    ALU2_maskInvt[18] = 1'b0;
    if(((5'h0d <= ALU2_maskME) || (ALU2_maskMB <= 5'h0d)))begin
      ALU2_maskInvt[18] = 1'b1;
    end
    ALU2_maskInvt[19] = 1'b0;
    if(((5'h0c <= ALU2_maskME) || (ALU2_maskMB <= 5'h0c)))begin
      ALU2_maskInvt[19] = 1'b1;
    end
    ALU2_maskInvt[20] = 1'b0;
    if(((5'h0b <= ALU2_maskME) || (ALU2_maskMB <= 5'h0b)))begin
      ALU2_maskInvt[20] = 1'b1;
    end
    ALU2_maskInvt[21] = 1'b0;
    if(((5'h0a <= ALU2_maskME) || (ALU2_maskMB <= 5'h0a)))begin
      ALU2_maskInvt[21] = 1'b1;
    end
    ALU2_maskInvt[22] = 1'b0;
    if(((5'h09 <= ALU2_maskME) || (ALU2_maskMB <= 5'h09)))begin
      ALU2_maskInvt[22] = 1'b1;
    end
    ALU2_maskInvt[23] = 1'b0;
    if(((5'h08 <= ALU2_maskME) || (ALU2_maskMB <= 5'h08)))begin
      ALU2_maskInvt[23] = 1'b1;
    end
    ALU2_maskInvt[24] = 1'b0;
    if(((5'h07 <= ALU2_maskME) || (ALU2_maskMB <= 5'h07)))begin
      ALU2_maskInvt[24] = 1'b1;
    end
    ALU2_maskInvt[25] = 1'b0;
    if(((5'h06 <= ALU2_maskME) || (ALU2_maskMB <= 5'h06)))begin
      ALU2_maskInvt[25] = 1'b1;
    end
    ALU2_maskInvt[26] = 1'b0;
    if(((5'h05 <= ALU2_maskME) || (ALU2_maskMB <= 5'h05)))begin
      ALU2_maskInvt[26] = 1'b1;
    end
    ALU2_maskInvt[27] = 1'b0;
    if(((5'h04 <= ALU2_maskME) || (ALU2_maskMB <= 5'h04)))begin
      ALU2_maskInvt[27] = 1'b1;
    end
    ALU2_maskInvt[28] = 1'b0;
    if(((5'h03 <= ALU2_maskME) || (ALU2_maskMB <= 5'h03)))begin
      ALU2_maskInvt[28] = 1'b1;
    end
    ALU2_maskInvt[29] = 1'b0;
    if(((5'h02 <= ALU2_maskME) || (ALU2_maskMB <= 5'h02)))begin
      ALU2_maskInvt[29] = 1'b1;
    end
    ALU2_maskInvt[30] = 1'b0;
    if(((5'h01 <= ALU2_maskME) || (ALU2_maskMB <= 5'h01)))begin
      ALU2_maskInvt[30] = 1'b1;
    end
    ALU2_maskInvt[31] = 1'b0;
    if(((5'h0 <= ALU2_maskME) || (ALU2_maskMB <= 5'h0)))begin
      ALU2_maskInvt[31] = 1'b1;
    end
  end

  always @ (*) begin
    if((ALU2_maskMB <= ALU2_maskME))begin
      ALU2_mask = ALU2_maskNorm;
    end else begin
      ALU2_mask = ALU2_maskInvt;
    end
  end

  assign _zz_248_ = execute_SRC1;
  assign _zz_249_ = execute_SRC1;
  always @ (*) begin
    case(execute_DECODER_stageables_15)
      `AluRimiCtrlEnum_defaultEncoding_ROT : begin
        _zz_250_ = (_zz_95_ & ALU2_mask);
      end
      `AluRimiCtrlEnum_defaultEncoding_INS : begin
        _zz_250_ = ((_zz_90_ & ALU2_mask) | (execute_SRC2 & (~ ALU2_mask)));
      end
      `AluRimiCtrlEnum_defaultEncoding_SHIFTL : begin
        _zz_250_ = _zz_518_[31 : 0];
      end
      `AluRimiCtrlEnum_defaultEncoding_SHIFTR : begin
        _zz_250_ = _zz_519_[31 : 0];
      end
      default : begin
        _zz_250_ = _zz_520_[31 : 0];
      end
    endcase
  end

  assign ALU2_rimi = _zz_250_;
  always @ (*) begin
    ALU2_sraw_ca = 1'b0;
    if((ALU2_amount != 5'h0))begin
      ALU2_sraw_ca = (execute_SRC1[31] && ((ALU2_sraw_wtf & execute_SRC1) != 32'h0));
    end
  end

  assign ALU2_sraw_wtf = (_zz_524_ >>> _zz_525_);
  always @ (*) begin
    ALU2_rimi_enc_cr[1] = ALU2_rimi[31];
    ALU2_rimi_enc_cr[0] = (ALU2_rimi == 32'h0);
  end

  always @ (*) begin
    case(ALU2_rimi_enc_cr)
      2'b00 : begin
        ALU2_rimi_cr = (3'b010);
      end
      2'b01 : begin
        ALU2_rimi_cr = (3'b001);
      end
      default : begin
        ALU2_rimi_cr = (3'b100);
      end
    endcase
  end

  always @ (*) begin
    _zz_251_[0] = execute_SRC1[31];
    _zz_251_[1] = execute_SRC1[30];
    _zz_251_[2] = execute_SRC1[29];
    _zz_251_[3] = execute_SRC1[28];
    _zz_251_[4] = execute_SRC1[27];
    _zz_251_[5] = execute_SRC1[26];
    _zz_251_[6] = execute_SRC1[25];
    _zz_251_[7] = execute_SRC1[24];
    _zz_251_[8] = execute_SRC1[23];
    _zz_251_[9] = execute_SRC1[22];
    _zz_251_[10] = execute_SRC1[21];
    _zz_251_[11] = execute_SRC1[20];
    _zz_251_[12] = execute_SRC1[19];
    _zz_251_[13] = execute_SRC1[18];
    _zz_251_[14] = execute_SRC1[17];
    _zz_251_[15] = execute_SRC1[16];
    _zz_251_[16] = execute_SRC1[15];
    _zz_251_[17] = execute_SRC1[14];
    _zz_251_[18] = execute_SRC1[13];
    _zz_251_[19] = execute_SRC1[12];
    _zz_251_[20] = execute_SRC1[11];
    _zz_251_[21] = execute_SRC1[10];
    _zz_251_[22] = execute_SRC1[9];
    _zz_251_[23] = execute_SRC1[8];
    _zz_251_[24] = execute_SRC1[7];
    _zz_251_[25] = execute_SRC1[6];
    _zz_251_[26] = execute_SRC1[5];
    _zz_251_[27] = execute_SRC1[4];
    _zz_251_[28] = execute_SRC1[3];
    _zz_251_[29] = execute_SRC1[2];
    _zz_251_[30] = execute_SRC1[1];
    _zz_251_[31] = execute_SRC1[0];
  end

  always @ (*) begin
    cntzero_msb = 6'h0;
    if(_zz_251_[31])begin
      cntzero_msb = 6'h1f;
    end
    if(_zz_251_[30])begin
      cntzero_msb = 6'h1e;
    end
    if(_zz_251_[29])begin
      cntzero_msb = 6'h1d;
    end
    if(_zz_251_[28])begin
      cntzero_msb = 6'h1c;
    end
    if(_zz_251_[27])begin
      cntzero_msb = 6'h1b;
    end
    if(_zz_251_[26])begin
      cntzero_msb = 6'h1a;
    end
    if(_zz_251_[25])begin
      cntzero_msb = 6'h19;
    end
    if(_zz_251_[24])begin
      cntzero_msb = 6'h18;
    end
    if(_zz_251_[23])begin
      cntzero_msb = 6'h17;
    end
    if(_zz_251_[22])begin
      cntzero_msb = 6'h16;
    end
    if(_zz_251_[21])begin
      cntzero_msb = 6'h15;
    end
    if(_zz_251_[20])begin
      cntzero_msb = 6'h14;
    end
    if(_zz_251_[19])begin
      cntzero_msb = 6'h13;
    end
    if(_zz_251_[18])begin
      cntzero_msb = 6'h12;
    end
    if(_zz_251_[17])begin
      cntzero_msb = 6'h11;
    end
    if(_zz_251_[16])begin
      cntzero_msb = 6'h10;
    end
    if(_zz_251_[15])begin
      cntzero_msb = 6'h0f;
    end
    if(_zz_251_[14])begin
      cntzero_msb = 6'h0e;
    end
    if(_zz_251_[13])begin
      cntzero_msb = 6'h0d;
    end
    if(_zz_251_[12])begin
      cntzero_msb = 6'h0c;
    end
    if(_zz_251_[11])begin
      cntzero_msb = 6'h0b;
    end
    if(_zz_251_[10])begin
      cntzero_msb = 6'h0a;
    end
    if(_zz_251_[9])begin
      cntzero_msb = 6'h09;
    end
    if(_zz_251_[8])begin
      cntzero_msb = 6'h08;
    end
    if(_zz_251_[7])begin
      cntzero_msb = 6'h07;
    end
    if(_zz_251_[6])begin
      cntzero_msb = 6'h06;
    end
    if(_zz_251_[5])begin
      cntzero_msb = 6'h05;
    end
    if(_zz_251_[4])begin
      cntzero_msb = 6'h04;
    end
    if(_zz_251_[3])begin
      cntzero_msb = 6'h03;
    end
    if(_zz_251_[2])begin
      cntzero_msb = 6'h02;
    end
    if(_zz_251_[1])begin
      cntzero_msb = 6'h01;
    end
    if(_zz_251_[0])begin
      cntzero_msb = 6'h0;
    end
  end

  always @ (*) begin
    if((cntzero_msb == 6'h0))begin
      if(execute_SRC1[31])begin
        cntzero_lz = 6'h0;
      end else begin
        cntzero_lz = 6'h20;
      end
    end else begin
      cntzero_lz = cntzero_msb;
    end
  end

  always @ (*) begin
    cntzero_lsb = 6'h0;
    if(execute_SRC1[31])begin
      cntzero_lsb = 6'h1f;
    end
    if(execute_SRC1[30])begin
      cntzero_lsb = 6'h1e;
    end
    if(execute_SRC1[29])begin
      cntzero_lsb = 6'h1d;
    end
    if(execute_SRC1[28])begin
      cntzero_lsb = 6'h1c;
    end
    if(execute_SRC1[27])begin
      cntzero_lsb = 6'h1b;
    end
    if(execute_SRC1[26])begin
      cntzero_lsb = 6'h1a;
    end
    if(execute_SRC1[25])begin
      cntzero_lsb = 6'h19;
    end
    if(execute_SRC1[24])begin
      cntzero_lsb = 6'h18;
    end
    if(execute_SRC1[23])begin
      cntzero_lsb = 6'h17;
    end
    if(execute_SRC1[22])begin
      cntzero_lsb = 6'h16;
    end
    if(execute_SRC1[21])begin
      cntzero_lsb = 6'h15;
    end
    if(execute_SRC1[20])begin
      cntzero_lsb = 6'h14;
    end
    if(execute_SRC1[19])begin
      cntzero_lsb = 6'h13;
    end
    if(execute_SRC1[18])begin
      cntzero_lsb = 6'h12;
    end
    if(execute_SRC1[17])begin
      cntzero_lsb = 6'h11;
    end
    if(execute_SRC1[16])begin
      cntzero_lsb = 6'h10;
    end
    if(execute_SRC1[15])begin
      cntzero_lsb = 6'h0f;
    end
    if(execute_SRC1[14])begin
      cntzero_lsb = 6'h0e;
    end
    if(execute_SRC1[13])begin
      cntzero_lsb = 6'h0d;
    end
    if(execute_SRC1[12])begin
      cntzero_lsb = 6'h0c;
    end
    if(execute_SRC1[11])begin
      cntzero_lsb = 6'h0b;
    end
    if(execute_SRC1[10])begin
      cntzero_lsb = 6'h0a;
    end
    if(execute_SRC1[9])begin
      cntzero_lsb = 6'h09;
    end
    if(execute_SRC1[8])begin
      cntzero_lsb = 6'h08;
    end
    if(execute_SRC1[7])begin
      cntzero_lsb = 6'h07;
    end
    if(execute_SRC1[6])begin
      cntzero_lsb = 6'h06;
    end
    if(execute_SRC1[5])begin
      cntzero_lsb = 6'h05;
    end
    if(execute_SRC1[4])begin
      cntzero_lsb = 6'h04;
    end
    if(execute_SRC1[3])begin
      cntzero_lsb = 6'h03;
    end
    if(execute_SRC1[2])begin
      cntzero_lsb = 6'h02;
    end
    if(execute_SRC1[1])begin
      cntzero_lsb = 6'h01;
    end
    if(execute_SRC1[0])begin
      cntzero_lsb = 6'h0;
    end
  end

  always @ (*) begin
    if((cntzero_lsb == 6'h0))begin
      if(execute_SRC1[0])begin
        cntzero_tz = 6'h0;
      end else begin
        cntzero_tz = 6'h20;
      end
    end else begin
      cntzero_tz = cntzero_lsb;
    end
  end

  assign _zz_252_ = execute_SRC1[31 : 24];
  assign popcnt_pb3 = _zz_89_;
  assign _zz_253_ = execute_SRC1[23 : 16];
  assign popcnt_pb2 = _zz_88_;
  assign _zz_254_ = execute_SRC1[15 : 8];
  assign popcnt_pb1 = _zz_87_;
  assign _zz_255_ = execute_SRC1[7 : 0];
  assign popcnt_pb0 = _zz_86_;
  assign _zz_256_ = execute_SRC1[31 : 0];
  assign popcnt_pw0 = _zz_85_;
  always @ (*) begin
    if((execute_SRC1[31 : 24] == execute_SRC2[31 : 24]))begin
      popcnt_cmpb[31 : 24] = 8'hff;
    end else begin
      popcnt_cmpb[31 : 24] = 8'h0;
    end
    if((execute_SRC1[23 : 16] == execute_SRC2[23 : 16]))begin
      popcnt_cmpb[23 : 16] = 8'hff;
    end else begin
      popcnt_cmpb[23 : 16] = 8'h0;
    end
    if((execute_SRC1[15 : 8] == execute_SRC2[15 : 8]))begin
      popcnt_cmpb[15 : 8] = 8'hff;
    end else begin
      popcnt_cmpb[15 : 8] = 8'h0;
    end
    if((execute_SRC1[7 : 0] == execute_SRC2[7 : 0]))begin
      popcnt_cmpb[7 : 0] = 8'hff;
    end else begin
      popcnt_cmpb[7 : 0] = 8'h0;
    end
  end

  assign popcnt_prtyw = (((execute_SRC1[24] ^ execute_SRC1[16]) ^ execute_SRC1[8]) ^ execute_SRC1[0]);
  always @ (*) begin
    case(execute_DECODER_stageables_56)
      `AluSpecCtrlEnum_defaultEncoding_CNTLZW : begin
        ALU2_spec = {26'h0,cntzero_lz};
      end
      `AluSpecCtrlEnum_defaultEncoding_CNTTZW : begin
        ALU2_spec = {26'h0,cntzero_tz};
      end
      `AluSpecCtrlEnum_defaultEncoding_POPCNTB : begin
        ALU2_spec = {{{{{{{(4'b0000),popcnt_pb3},(4'b0000)},popcnt_pb2},(4'b0000)},popcnt_pb1},(4'b0000)},popcnt_pb0};
      end
      `AluSpecCtrlEnum_defaultEncoding_POPCNTW : begin
        ALU2_spec = {26'h0,popcnt_pw0};
      end
      `AluSpecCtrlEnum_defaultEncoding_CMPB : begin
        ALU2_spec = popcnt_cmpb;
      end
      default : begin
        ALU2_spec = {31'h0,popcnt_prtyw};
      end
    endcase
  end

  always @ (*) begin
    case(_zz_439_)
      8'b10000000 : begin
        _zz_257_ = {_zz_527_[31 : 28],28'h0};
      end
      8'b01000000 : begin
        _zz_257_ = {{(4'b0000),_zz_528_[27 : 24]},24'h0};
      end
      8'b00100000 : begin
        _zz_257_ = {{8'h0,_zz_529_[23 : 20]},20'h0};
      end
      8'b00010000 : begin
        _zz_257_ = {{12'h0,_zz_530_[19 : 16]},16'h0};
      end
      8'b00001000 : begin
        _zz_257_ = {{16'h0,_zz_531_[15 : 12]},12'h0};
      end
      8'b00000100 : begin
        _zz_257_ = {{20'h0,_zz_532_[11 : 8]},8'h0};
      end
      8'b00000010 : begin
        _zz_257_ = {{24'h0,_zz_533_[7 : 4]},(4'b0000)};
      end
      default : begin
        _zz_257_ = {28'h0,_zz_534_[3 : 0]};
      end
    endcase
  end

  always @ (*) begin
    case(_zz_440_)
      3'b000 : begin
        _zz_258_ = _zz_535_[31];
      end
      3'b001 : begin
        _zz_258_ = _zz_536_[27];
      end
      3'b010 : begin
        _zz_258_ = _zz_537_[23];
      end
      3'b011 : begin
        _zz_258_ = _zz_538_[19];
      end
      3'b100 : begin
        _zz_258_ = _zz_539_[15];
      end
      3'b101 : begin
        _zz_258_ = _zz_540_[11];
      end
      3'b110 : begin
        _zz_258_ = _zz_541_[7];
      end
      default : begin
        _zz_258_ = _zz_542_[3];
      end
    endcase
  end

  always @ (*) begin
    case(_zz_441_)
      3'b000 : begin
        _zz_259_ = _zz_543_[30];
      end
      3'b001 : begin
        _zz_259_ = _zz_544_[26];
      end
      3'b010 : begin
        _zz_259_ = _zz_545_[22];
      end
      3'b011 : begin
        _zz_259_ = _zz_546_[18];
      end
      3'b100 : begin
        _zz_259_ = _zz_547_[14];
      end
      3'b101 : begin
        _zz_259_ = _zz_548_[10];
      end
      3'b110 : begin
        _zz_259_ = _zz_549_[6];
      end
      default : begin
        _zz_259_ = _zz_550_[2];
      end
    endcase
  end

  always @ (*) begin
    case(execute_DECODER_stageables_7)
      `AluCtrlEnum_defaultEncoding_BIT_1 : begin
        _zz_260_ = ALU2_bitwise;
      end
      `AluCtrlEnum_defaultEncoding_ADD : begin
        _zz_260_ = execute_SRC_ADD;
      end
      `AluCtrlEnum_defaultEncoding_RIMI : begin
        _zz_260_ = ALU2_rimi;
      end
      default : begin
        _zz_260_ = ALU2_spec;
      end
    endcase
  end

  always @ (*) begin
    case(execute_DECODER_stageables_11)
      `TgtCtrlEnum_defaultEncoding_RT : begin
        _zz_261_ = execute_INSTRUCTION[25 : 21];
      end
      default : begin
        _zz_261_ = execute_INSTRUCTION[20 : 16];
      end
    endcase
  end

  always @ (*) begin
    if(execute_DECODER_stageables_4)begin
      _zz_81_ = 11'h402;
    end else begin
      if(execute_DECODER_stageables_13)begin
        _zz_81_ = 11'h401;
      end else begin
        _zz_81_ = {{(1'b0),execute_INSTRUCTION[15 : 11]},execute_INSTRUCTION[20 : 16]};
      end
    end
  end

  always @ (*) begin
    ALU2_xer_ca = 1'b0;
    if((execute_DECODER_stageables_15 == `AluRimiCtrlEnum_defaultEncoding_SHIFTRA))begin
      ALU2_xer_ca = ALU2_sraw_ca;
    end else begin
      ALU2_xer_ca = execute_SRC_CAOV[1];
    end
  end

  assign ALU2_xer_ov = execute_SRC_CAOV[0];
  assign ALU2_xer_so = (ALU2_XER[31] || ALU2_xer_ov);
  assign ALU2_xerBus_validOV = (execute_DECODER_stageables_17 && execute_INSTRUCTION[10]);
  assign ALU2_xerBus_validCA = execute_DECODER_stageables_10;
  assign ALU2_xerBus_imm = {ALU2_xer_ov,ALU2_xer_ca};
  always @ (*) begin
    case(execute_SRC_CR)
      2'b00 : begin
        ALU2_alu_cr = (3'b010);
      end
      2'b01 : begin
        ALU2_alu_cr = (3'b001);
      end
      default : begin
        ALU2_alu_cr = (3'b100);
      end
    endcase
  end

  always @ (*) begin
    case(execute_DECODER_stageables_7)
      `AluCtrlEnum_defaultEncoding_BIT_1 : begin
        ALU2_cr0_val_a = ALU2_bitwise_cr;
      end
      `AluCtrlEnum_defaultEncoding_ADD : begin
        ALU2_cr0_val_a = ALU2_alu_cr;
      end
      `AluCtrlEnum_defaultEncoding_RIMI : begin
        ALU2_cr0_val_a = ALU2_rimi_cr;
      end
      default : begin
        ALU2_cr0_val_a = (3'b000);
      end
    endcase
  end

  assign ALU2_cr0_val = {ALU2_cr0_val_a,ALU2_xer_so};
  assign ALU2_cr_record = ((! execute_DECODER_stageables_19) && (execute_DECODER_stageables_57 || (execute_DECODER_stageables_26 && (execute_INSTRUCTION[0] == 1'b1))));
  assign ALU2_cr_mcrf = (execute_DECODER_stageables_6 == `CRMoveCtrlEnum_defaultEncoding_MCRF);
  assign ALU2_cr_update_valid = (((ALU2_cr_record || execute_DECODER_stageables_31) || execute_DECODER_stageables_45) || execute_DECODER_stageables_19);
  always @ (*) begin
    if(ALU2_cr_record)begin
      ALU2_crBus_op = `CRBusCmdEnum_defaultEncoding_CR0;
    end else begin
      if(execute_DECODER_stageables_19)begin
        ALU2_crBus_op = `CRBusCmdEnum_defaultEncoding_CMP;
      end else begin
        if(execute_DECODER_stageables_31)begin
          case(execute_DECODER_stageables_50)
            `CRLogCtrlEnum_defaultEncoding_AND_1 : begin
              ALU2_crBus_op = `CRBusCmdEnum_defaultEncoding_AND_1;
            end
            `CRLogCtrlEnum_defaultEncoding_OR_1 : begin
              ALU2_crBus_op = `CRBusCmdEnum_defaultEncoding_OR_1;
            end
            `CRLogCtrlEnum_defaultEncoding_XOR_1 : begin
              ALU2_crBus_op = `CRBusCmdEnum_defaultEncoding_XOR_1;
            end
            `CRLogCtrlEnum_defaultEncoding_NAND_1 : begin
              ALU2_crBus_op = `CRBusCmdEnum_defaultEncoding_NAND_1;
            end
            `CRLogCtrlEnum_defaultEncoding_NOR_1 : begin
              ALU2_crBus_op = `CRBusCmdEnum_defaultEncoding_NOR_1;
            end
            `CRLogCtrlEnum_defaultEncoding_EQV : begin
              ALU2_crBus_op = `CRBusCmdEnum_defaultEncoding_EQV;
            end
            `CRLogCtrlEnum_defaultEncoding_ANDC : begin
              ALU2_crBus_op = `CRBusCmdEnum_defaultEncoding_ANDC;
            end
            default : begin
              ALU2_crBus_op = `CRBusCmdEnum_defaultEncoding_ORC;
            end
          endcase
        end else begin
          if(execute_DECODER_stageables_45)begin
            case(execute_DECODER_stageables_6)
              `CRMoveCtrlEnum_defaultEncoding_MCRF : begin
                ALU2_crBus_op = `CRBusCmdEnum_defaultEncoding_MCRF;
              end
              `CRMoveCtrlEnum_defaultEncoding_MCRXRX : begin
                ALU2_crBus_op = `CRBusCmdEnum_defaultEncoding_MTCRF;
              end
              default : begin
                ALU2_crBus_op = `CRBusCmdEnum_defaultEncoding_MTCRF;
              end
            endcase
          end else begin
            ALU2_crBus_op = `CRBusCmdEnum_defaultEncoding_NOP;
          end
        end
      end
    end
  end

  always @ (*) begin
    if(execute_DECODER_stageables_31)begin
      ALU2_crBus_ba = execute_INSTRUCTION[20 : 16];
    end else begin
      if(ALU2_cr_mcrf)begin
        ALU2_crBus_ba = {(2'b00),execute_INSTRUCTION[20 : 18]};
      end else begin
        ALU2_crBus_ba = 5'h0;
      end
    end
  end

  always @ (*) begin
    if(execute_DECODER_stageables_31)begin
      ALU2_crBus_bb = execute_INSTRUCTION[15 : 11];
    end else begin
      if(ALU2_cr_mcrf)begin
        ALU2_crBus_bb = 5'h0;
      end else begin
        ALU2_crBus_bb = 5'h0;
      end
    end
  end

  always @ (*) begin
    if(execute_DECODER_stageables_31)begin
      ALU2_crBus_bt = execute_INSTRUCTION[25 : 21];
    end else begin
      if(ALU2_cr_mcrf)begin
        ALU2_crBus_bt = {(2'b00),execute_INSTRUCTION[25 : 23]};
      end else begin
        ALU2_crBus_bt = 5'h0;
      end
    end
  end

  always @ (*) begin
    if(ALU2_cr_record)begin
      ALU2_crBus_imm = {28'h0,ALU2_cr0_val};
    end else begin
      if(execute_DECODER_stageables_19)begin
        ALU2_crBus_imm = {28'h0,ALU2_cr0_val};
      end else begin
        if(execute_DECODER_stageables_45)begin
          case(execute_DECODER_stageables_6)
            `CRMoveCtrlEnum_defaultEncoding_MCRXRX : begin
              ALU2_crBus_imm = {{{{28'h0,ALU2_XER[30]},ALU2_XER[19]},ALU2_XER[29]},ALU2_XER[18]};
            end
            default : begin
              ALU2_crBus_imm = execute_SRC1;
            end
          endcase
        end else begin
          ALU2_crBus_imm = 32'h0;
        end
      end
    end
  end

  always @ (*) begin
    ALU2_crBus_fxm = 8'h0;
    if(execute_DECODER_stageables_19)begin
      ALU2_crBus_fxm[_zz_553_] = 1'b1;
    end else begin
      if(execute_DECODER_stageables_45)begin
        case(execute_DECODER_stageables_6)
          `CRMoveCtrlEnum_defaultEncoding_MCRXRX : begin
            ALU2_crBus_fxm = execute_INSTRUCTION[19 : 12];
          end
          default : begin
            ALU2_crBus_fxm = execute_INSTRUCTION[19 : 12];
          end
        endcase
      end
    end
  end

  assign _zz_78_ = ALU2_crBus_op;
  always @ (*) begin
    if(ALU2_cr_update_valid)begin
      case(ALU2_crBus_op)
        `CRBusCmdEnum_defaultEncoding_CR0 : begin
          _zz_77_ = 8'h80;
        end
        `CRBusCmdEnum_defaultEncoding_CR1 : begin
          _zz_77_ = 8'h40;
        end
        `CRBusCmdEnum_defaultEncoding_CR6 : begin
          _zz_77_ = 8'h02;
        end
        `CRBusCmdEnum_defaultEncoding_CMP : begin
          _zz_77_ = ALU2_crBus_fxm;
        end
        default : begin
          _zz_77_ = 8'hff;
        end
      endcase
    end else begin
      _zz_77_ = 8'h0;
    end
  end

  assign SRC1_ra = execute_INSTRUCTION[20 : 16];
  assign SRC1_rb = execute_INSTRUCTION[15 : 11];
  assign SRC1_rs = execute_INSTRUCTION[25 : 21];
  assign SRC1_rt = execute_INSTRUCTION[25 : 21];
  always @ (*) begin
    case(execute_DECODER_stageables_36)
      `Src1CtrlEnum_defaultEncoding_RA : begin
        _zz_262_ = _zz_75_;
      end
      `Src1CtrlEnum_defaultEncoding_RA_N : begin
        _zz_262_ = (~ _zz_75_);
      end
      `Src1CtrlEnum_defaultEncoding_RA_0 : begin
        _zz_262_ = _zz_554_;
      end
      `Src1CtrlEnum_defaultEncoding_RA_NIA : begin
        _zz_262_ = _zz_74_;
      end
      default : begin
        _zz_262_ = execute_RS;
      end
    endcase
  end

  assign _zz_263_ = execute_INSTRUCTION[15];
  always @ (*) begin
    _zz_264_[15] = _zz_263_;
    _zz_264_[14] = _zz_263_;
    _zz_264_[13] = _zz_263_;
    _zz_264_[12] = _zz_263_;
    _zz_264_[11] = _zz_263_;
    _zz_264_[10] = _zz_263_;
    _zz_264_[9] = _zz_263_;
    _zz_264_[8] = _zz_263_;
    _zz_264_[7] = _zz_263_;
    _zz_264_[6] = _zz_263_;
    _zz_264_[5] = _zz_263_;
    _zz_264_[4] = _zz_263_;
    _zz_264_[3] = _zz_263_;
    _zz_264_[2] = _zz_263_;
    _zz_264_[1] = _zz_263_;
    _zz_264_[0] = _zz_263_;
  end

  always @ (*) begin
    case(execute_DECODER_stageables_24)
      `Src2CtrlEnum_defaultEncoding_RB : begin
        _zz_265_ = execute_RB;
      end
      `Src2CtrlEnum_defaultEncoding_RB_0 : begin
        _zz_265_ = _zz_555_;
      end
      `Src2CtrlEnum_defaultEncoding_RB_M1 : begin
        _zz_265_ = _zz_556_;
      end
      `Src2CtrlEnum_defaultEncoding_RB_UI : begin
        _zz_265_ = {16'h0,execute_INSTRUCTION[15 : 0]};
      end
      `Src2CtrlEnum_defaultEncoding_RB_SI : begin
        _zz_265_ = {_zz_264_,execute_INSTRUCTION[15 : 0]};
      end
      `Src2CtrlEnum_defaultEncoding_RB_SH : begin
        _zz_265_ = {execute_INSTRUCTION[15 : 0],16'h0};
      end
      `Src2CtrlEnum_defaultEncoding_RB_PCISD : begin
        _zz_265_ = {{{execute_INSTRUCTION[15 : 6],execute_INSTRUCTION[20 : 16]},execute_INSTRUCTION[0]},16'h0004};
      end
      default : begin
        _zz_265_ = _zz_75_;
      end
    endcase
  end

  always @ (*) begin
    case(execute_DECODER_stageables_0)
      `Src3CtrlEnum_defaultEncoding_CA : begin
        _zz_266_ = execute_XER_CA;
      end
      `Src3CtrlEnum_defaultEncoding_CA_0 : begin
        _zz_266_ = (1'b0);
      end
      default : begin
        _zz_266_ = (1'b1);
      end
    endcase
  end

  assign SRC2_ra = execute_SRC1;
  assign SRC2_rb = execute_SRC2;
  assign SRC2_cin = execute_SRC3;
  assign SRC2_adder = (_zz_557_ + _zz_558_);
  assign SRC2_add_cr = {SRC2_adder[31],(SRC2_adder[31 : 0] == 32'h0)};
  assign SRC2_cmp_cr = (execute_DECODER_stageables_47 ? {(SRC2_ra < SRC2_rb),(SRC2_ra == SRC2_rb)} : {($signed(_zz_559_) < $signed(_zz_560_)),(SRC2_ra == SRC2_rb)});
  assign SRC2_ca = SRC2_adder[32];
  assign SRC2_ov = ((SRC2_adder[32] ^ SRC2_adder[31]) && (! (SRC2_ra[31] ^ SRC2_rb[31])));
  assign UpdateRegFileWrite_valid = _zz_267_;
  assign UpdateRegFileWrite_payload_address = _zz_268_;
  assign UpdateRegFileWrite_payload_data = _zz_269_;
  assign MUL1_a = execute_SRC1;
  assign MUL1_b = execute_SRC2;
  assign MUL1_aSigned = execute_DECODER_stageables_33;
  assign MUL1_bSigned = execute_DECODER_stageables_33;
  assign MUL1_aULow = MUL1_a[15 : 0];
  assign MUL1_bULow = MUL1_b[15 : 0];
  assign MUL1_aSLow = {1'b0,MUL1_a[15 : 0]};
  assign MUL1_bSLow = {1'b0,MUL1_b[15 : 0]};
  assign MUL1_aHigh = {(MUL1_aSigned && MUL1_a[31]),MUL1_a[31 : 16]};
  assign MUL1_bHigh = {(MUL1_bSigned && MUL1_b[31]),MUL1_b[31 : 16]};
  assign MUL3_result = ($signed(_zz_561_) + $signed(_zz_562_));
  assign MUL3_xer_ov = MUL3_result[32];
  always @ (*) begin
    MUL3_xer_so = 1'b0;
    if((writeBack_DECODER_stageables_34 && writeBack_INSTRUCTION[10]))begin
      MUL3_xer_so = (writeBack_XER_SO || MUL3_xer_ov);
    end else begin
      MUL3_xer_so = writeBack_XER_SO;
    end
  end

  always @ (*) begin
    if(writeBack_DECODER_stageables_54)begin
      MUL3_result32 = _zz_563_;
    end else begin
      MUL3_result32 = _zz_564_;
    end
  end

  assign MUL3_cr = {MUL3_result32[31],(MUL3_result32[31 : 0] == 32'h0)};
  always @ (*) begin
    case(writeBack_SRC_CR)
      2'b00 : begin
        MUL3_cr_decode = {(3'b010),MUL3_xer_so};
      end
      2'b01 : begin
        MUL3_cr_decode = {(3'b001),MUL3_xer_so};
      end
      default : begin
        MUL3_cr_decode = {(3'b100),MUL3_xer_so};
      end
    endcase
  end

  always @ (*) begin
    _zz_270_ = 1'b0;
    if(_zz_398_)begin
      _zz_270_ = 1'b1;
    end
  end

  always @ (*) begin
    _zz_271_ = (5'bxxxxx);
    if(MUL3_cr_record)begin
      _zz_271_ = `CRBusCmdEnum_defaultEncoding_CR0;
    end else begin
      _zz_271_ = `CRBusCmdEnum_defaultEncoding_NOP;
    end
  end

  always @ (*) begin
    _zz_272_ = 32'h0;
    _zz_272_ = {28'h0,MUL3_cr_decode};
  end

  assign MUL3_cr_record = (writeBack_DECODER_stageables_22 && writeBack_INSTRUCTION[0]);
  assign MULDIV_frontendOk = 1'b1;
  always @ (*) begin
    MULDIV1_counter_willIncrement = 1'b0;
    if(_zz_397_)begin
      if(_zz_420_)begin
        MULDIV1_counter_willIncrement = 1'b1;
      end
    end
  end

  always @ (*) begin
    MULDIV1_counter_willClear = 1'b0;
    if(_zz_421_)begin
      MULDIV1_counter_willClear = 1'b1;
    end
  end

  assign MULDIV1_counter_willOverflowIfInc = (MULDIV1_counter_value == 6'h21);
  assign MULDIV1_counter_willOverflow = (MULDIV1_counter_willOverflowIfInc && MULDIV1_counter_willIncrement);
  always @ (*) begin
    if(MULDIV1_counter_willOverflow)begin
      MULDIV1_counter_valueNext = 6'h0;
    end else begin
      MULDIV1_counter_valueNext = (MULDIV1_counter_value + _zz_566_);
    end
    if(MULDIV1_counter_willClear)begin
      MULDIV1_counter_valueNext = 6'h0;
    end
  end

  always @ (*) begin
    MULDIV1_crBusPort_valid = 1'b0;
    if(_zz_397_)begin
      MULDIV1_crBusPort_valid = 1'b1;
    end
  end

  always @ (*) begin
    MULDIV1_crBusPort_payload_op = (5'bxxxxx);
    if(_zz_397_)begin
      if(memory_INSTRUCTION[0])begin
        MULDIV1_crBusPort_payload_op = `CRBusCmdEnum_defaultEncoding_CR0;
      end else begin
        MULDIV1_crBusPort_payload_op = `CRBusCmdEnum_defaultEncoding_NOP;
      end
    end
  end

  assign MULDIV1_crBusPort_payload_ba = 5'h0;
  assign MULDIV1_crBusPort_payload_bb = 5'h0;
  assign MULDIV1_crBusPort_payload_bt = 5'h0;
  always @ (*) begin
    MULDIV1_crBusPort_payload_imm = 32'h0;
    if(_zz_397_)begin
      MULDIV1_crBusPort_payload_imm = {28'h0,_zz_277_};
    end
  end

  assign MULDIV1_crBusPort_payload_fxm = 8'h0;
  always @ (*) begin
    MULDIV1_xerBusPort_valid = 1'b0;
    if(_zz_397_)begin
      MULDIV1_xerBusPort_valid = 1'b1;
    end
  end

  always @ (*) begin
    MULDIV1_xerBusPort_payload_validOV = 1'bx;
    if(_zz_397_)begin
      MULDIV1_xerBusPort_payload_validOV = 1'b0;
      if(_zz_422_)begin
        MULDIV1_xerBusPort_payload_validOV = 1'b1;
      end
    end
  end

  always @ (*) begin
    MULDIV1_xerBusPort_payload_validCA = 1'bx;
    if(_zz_397_)begin
      MULDIV1_xerBusPort_payload_validCA = 1'b0;
    end
  end

  always @ (*) begin
    MULDIV1_xerBusPort_payload_imm = (2'bxx);
    if(_zz_397_)begin
      MULDIV1_xerBusPort_payload_imm = {_zz_275_,(1'b0)};
    end
  end

  assign _zz_273_ = MULDIV_rs1[31 : 0];
  assign MULDIV1_stage_0_remainderShifted = {MULDIV_accumulator[31 : 0],_zz_273_[31]};
  assign MULDIV1_stage_0_remainderMinusDenominator = (MULDIV1_stage_0_remainderShifted - _zz_567_);
  assign MULDIV1_stage_0_outRemainder = ((! MULDIV1_stage_0_remainderMinusDenominator[32]) ? _zz_568_ : _zz_569_);
  assign MULDIV1_stage_0_outNumerator = _zz_570_[31:0];
  assign _zz_274_ = (memory_DECODER_stageables_14 ? MULDIV_accumulator[31 : 0] : MULDIV_rs1[31 : 0]);
  assign _zz_275_ = (MULDIV_rs2 == 32'h0);
  always @ (*) begin
    _zz_276_ = 1'b0;
    if(_zz_422_)begin
      _zz_276_ = (memory_XER_SO || _zz_275_);
    end else begin
      _zz_276_ = memory_XER_SO;
    end
  end

  always @ (*) begin
    case(memory_SRC_CR)
      2'b00 : begin
        _zz_277_ = {(3'b010),_zz_276_};
      end
      2'b01 : begin
        _zz_277_ = {(3'b001),_zz_276_};
      end
      default : begin
        _zz_277_ = {(3'b100),_zz_276_};
      end
    endcase
  end

  assign _zz_278_ = (execute_SRC2[31] && execute_DECODER_stageables_37);
  assign _zz_279_ = (1'b0 || ((execute_DECODER_stageables_42 && execute_SRC1[31]) && execute_DECODER_stageables_32));
  always @ (*) begin
    _zz_280_[32] = (execute_DECODER_stageables_32 && execute_SRC1[31]);
    _zz_280_[31 : 0] = execute_SRC1;
  end

  always @ (*) begin
    _zz_281_ = 1'b0;
    if(_zz_423_)begin
      if(_zz_424_)begin
        if(_zz_285_)begin
          _zz_281_ = 1'b1;
        end
      end
    end
    if(_zz_425_)begin
      if(_zz_426_)begin
        if(_zz_288_)begin
          _zz_281_ = 1'b1;
        end
      end
    end
    if(_zz_427_)begin
      if(_zz_428_)begin
        if(_zz_291_)begin
          _zz_281_ = 1'b1;
        end
      end
    end
    if((! decode_DECODER_stageables_9))begin
      _zz_281_ = 1'b0;
    end
  end

  always @ (*) begin
    _zz_282_ = 1'b0;
    if(_zz_423_)begin
      if(_zz_424_)begin
        if(_zz_286_)begin
          _zz_282_ = 1'b1;
        end
      end
    end
    if(_zz_425_)begin
      if(_zz_426_)begin
        if(_zz_289_)begin
          _zz_282_ = 1'b1;
        end
      end
    end
    if(_zz_427_)begin
      if(_zz_428_)begin
        if(_zz_292_)begin
          _zz_282_ = 1'b1;
        end
      end
    end
    if((! decode_DECODER_stageables_46))begin
      _zz_282_ = 1'b0;
    end
  end

  always @ (*) begin
    _zz_283_ = 1'b0;
    if((writeBack_arbitration_isValid && writeBack_DECODER_stageables_44))begin
      if(((1'b0 || (! _zz_284_)) || (! 1'b1)))begin
        if(_zz_287_)begin
          _zz_283_ = 1'b1;
        end
      end
    end
    if((memory_arbitration_isValid && memory_DECODER_stageables_44))begin
      if(((1'b0 || (! memory_DECODER_stageables_3)) || (! 1'b1)))begin
        if(_zz_290_)begin
          _zz_283_ = 1'b1;
        end
      end
    end
    if((execute_arbitration_isValid && execute_DECODER_stageables_44))begin
      if(((1'b0 || (! execute_DECODER_stageables_23)) || (! 1'b1)))begin
        if(_zz_293_)begin
          _zz_283_ = 1'b1;
        end
      end
    end
    if((! decode_DECODER_stageables_49))begin
      _zz_283_ = 1'b0;
    end
  end

  assign Hazards_writeBackWrites_valid = (_zz_104_ && writeBack_arbitration_isFiring);
  assign Hazards_writeBackWrites_payload_address = writeBack_RT_ADDR;
  assign Hazards_writeBackWrites_payload_data = _zz_121_;
  assign Hazards_addr0Match = (Hazards_writeBackBuffer_payload_address == decode_R0_ADDR);
  assign Hazards_addr1Match = (Hazards_writeBackBuffer_payload_address == decode_R1_ADDR);
  assign Hazards_addr2Match = (Hazards_writeBackBuffer_payload_address == decode_R2_ADDR);
  assign _zz_284_ = 1'b1;
  assign _zz_285_ = (writeBack_RT_ADDR == decode_R0_ADDR);
  assign _zz_286_ = (writeBack_RT_ADDR == decode_R1_ADDR);
  assign _zz_287_ = (writeBack_RT_ADDR == decode_R2_ADDR);
  assign _zz_288_ = (memory_RT_ADDR == decode_R0_ADDR);
  assign _zz_289_ = (memory_RT_ADDR == decode_R1_ADDR);
  assign _zz_290_ = (memory_RT_ADDR == decode_R2_ADDR);
  assign _zz_291_ = (execute_RT_ADDR == decode_R0_ADDR);
  assign _zz_292_ = (execute_RT_ADDR == decode_R1_ADDR);
  assign _zz_293_ = (execute_RT_ADDR == decode_R2_ADDR);
  always @ (*) begin
    _zz_294_ = 1'b0;
    if(_zz_429_)begin
      if(_zz_430_)begin
        if(_zz_431_)begin
          if(! _zz_301_) begin
            _zz_294_ = 1'b1;
          end
        end else begin
          _zz_294_ = 1'b1;
        end
      end
    end
  end

  always @ (*) begin
    _zz_295_ = 1'b0;
    if((memory_arbitration_isValid && execute_arbitration_isValid))begin
      _zz_295_ = (_zz_307_ && ({writeBack_arbitration_isValid,memory_arbitration_isValid} != (2'b00)));
    end
  end

  always @ (*) begin
    _zz_296_ = 1'b0;
    if((memory_arbitration_isValid && execute_arbitration_isValid))begin
      _zz_296_ = (((execute_DECODER_stageables_53 && (execute_SPR_ID == 11'h001)) || _zz_306_) && (memory_XER_WRITE_validCA || memory_XER_WRITE_validOV));
    end
  end

  always @ (*) begin
    _zz_297_ = 1'b0;
    if((memory_arbitration_isValid && execute_arbitration_isValid))begin
      _zz_297_ = ((memory_DECODER_stageables_29 && (memory_SPR_ID == 11'h001)) && _zz_306_);
    end
  end

  always @ (*) begin
    _zz_298_ = 1'b0;
    if((memory_arbitration_isValid && execute_arbitration_isValid))begin
      _zz_298_ = ((((((memory_SPR_ID == _zz_1546_) && memory_DECODER_stageables_29) && _zz_309_) || (((memory_SPR_ID == _zz_1547_) && memory_DECODER_stageables_29) && (execute_DECODER_stageables_12 == `BranchCtrlEnum_defaultEncoding_BCCTR))) || (((memory_SPR_ID == 11'h32f) && memory_DECODER_stageables_29) && (execute_DECODER_stageables_12 == `BranchCtrlEnum_defaultEncoding_BCTAR))) && ({writeBack_arbitration_isValid,memory_arbitration_isValid} != (2'b00)));
    end
  end

  always @ (*) begin
    _zz_299_ = 1'b0;
    if((memory_arbitration_isValid && execute_arbitration_isValid))begin
      _zz_299_ = (((memory_BRANCH_LINK && ((execute_SPR_ID == 11'h008) && (! execute_DECODER_stageables_29))) || (memory_BRANCH_DEC && ((execute_SPR_ID == 11'h009) && (! execute_DECODER_stageables_29)))) && ({writeBack_arbitration_isValid,memory_arbitration_isValid} != (2'b00)));
    end
  end

  always @ (*) begin
    _zz_300_ = 1'b0;
    if((memory_arbitration_isValid && execute_arbitration_isValid))begin
      _zz_300_ = (((memory_BRANCH_LINK && _zz_309_) || (memory_BRANCH_DEC && execute_BRANCH_DEC)) && ({writeBack_arbitration_isValid,memory_arbitration_isValid} != (2'b00)));
    end
  end

  always @ (*) begin
    _zz_301_ = 1'b0;
    if(_zz_429_)begin
      if(_zz_430_)begin
        if(_zz_431_)begin
          _zz_301_ = (_zz_303_ && _zz_304_);
        end
      end
    end
  end

  always @ (*) begin
    _zz_302_ = (4'b0000);
    if(_zz_429_)begin
      if(_zz_430_)begin
        if(_zz_431_)begin
          if(_zz_301_)begin
            _zz_302_ = memory_CR_WRITE_imm[3 : 0];
          end
        end
      end
    end
  end

  always @ (*) begin
    case(execute_DECODER_stageables_12)
      `BranchCtrlEnum_defaultEncoding_BC : begin
        _zz_303_ = 1'b1;
      end
      `BranchCtrlEnum_defaultEncoding_BCLR : begin
        _zz_303_ = 1'b1;
      end
      `BranchCtrlEnum_defaultEncoding_BCCTR : begin
        _zz_303_ = 1'b1;
      end
      `BranchCtrlEnum_defaultEncoding_BCTAR : begin
        _zz_303_ = 1'b1;
      end
      default : begin
        _zz_303_ = 1'b0;
      end
    endcase
  end

  always @ (*) begin
    _zz_304_ = 1'b0;
    if((! (memory_DECODER_stageables_28 || memory_DECODER_stageables_42)))begin
      _zz_304_ = _zz_305_;
    end
  end

  always @ (*) begin
    case(memory_CR_WRITE_op)
      `CRBusCmdEnum_defaultEncoding_CR0 : begin
        _zz_305_ = 1'b1;
      end
      `CRBusCmdEnum_defaultEncoding_CR1 : begin
        _zz_305_ = 1'b1;
      end
      `CRBusCmdEnum_defaultEncoding_CR6 : begin
        _zz_305_ = 1'b1;
      end
      `CRBusCmdEnum_defaultEncoding_CMP : begin
        _zz_305_ = 1'b1;
      end
      default : begin
        _zz_305_ = 1'b0;
      end
    endcase
  end

  assign _zz_306_ = (execute_DECODER_stageables_0 == `Src3CtrlEnum_defaultEncoding_CA);
  always @ (*) begin
    _zz_307_ = 1'b0;
    if(memory_DECODER_stageables_29)begin
      _zz_307_ = _zz_308_;
    end
  end

  always @ (*) begin
    case(_zz_442_)
      2'b10 : begin
        _zz_308_ = 1'b1;
      end
      2'b01 : begin
        _zz_308_ = execute_DECODER_stageables_53;
      end
      default : begin
        _zz_308_ = (execute_DECODER_stageables_53 && (execute_SPR_ID == memory_SPR_ID));
      end
    endcase
  end

  assign _zz_309_ = (execute_DECODER_stageables_12 == `BranchCtrlEnum_defaultEncoding_BCLR);
  always @ (*) begin
    _zz_310_ = 1'b0;
    if(_zz_432_)begin
      if(_zz_433_)begin
        if(_zz_434_)begin
          if(! _zz_317_) begin
            _zz_310_ = 1'b1;
          end
        end else begin
          _zz_310_ = 1'b1;
        end
      end
    end
  end

  always @ (*) begin
    _zz_311_ = 1'b0;
    if((writeBack_arbitration_isValid && execute_arbitration_isValid))begin
      _zz_311_ = (_zz_322_ && ({writeBack_arbitration_isValid,memory_arbitration_isValid} != (2'b00)));
    end
  end

  always @ (*) begin
    _zz_312_ = 1'b0;
    if((writeBack_arbitration_isValid && execute_arbitration_isValid))begin
      _zz_312_ = (((execute_DECODER_stageables_53 && (execute_SPR_ID == 11'h001)) || _zz_321_) && (writeBack_XER_WRITE_validCA || writeBack_XER_WRITE_validOV));
    end
  end

  always @ (*) begin
    _zz_313_ = 1'b0;
    if((writeBack_arbitration_isValid && execute_arbitration_isValid))begin
      _zz_313_ = ((writeBack_DECODER_stageables_29 && (writeBack_SPR_ID == 11'h001)) && _zz_321_);
    end
  end

  always @ (*) begin
    _zz_314_ = 1'b0;
    if((writeBack_arbitration_isValid && execute_arbitration_isValid))begin
      _zz_314_ = ((((((writeBack_SPR_ID == 11'h008) && writeBack_DECODER_stageables_29) && _zz_324_) || (((writeBack_SPR_ID == 11'h009) && writeBack_DECODER_stageables_29) && (execute_DECODER_stageables_12 == `BranchCtrlEnum_defaultEncoding_BCCTR))) || (((writeBack_SPR_ID == 11'h32f) && writeBack_DECODER_stageables_29) && (execute_DECODER_stageables_12 == `BranchCtrlEnum_defaultEncoding_BCTAR))) && ({writeBack_arbitration_isValid,memory_arbitration_isValid} != (2'b00)));
    end
  end

  always @ (*) begin
    _zz_315_ = 1'b0;
    if((writeBack_arbitration_isValid && execute_arbitration_isValid))begin
      _zz_315_ = (((writeBack_BRANCH_LINK && ((execute_SPR_ID == 11'h008) && (! execute_DECODER_stageables_29))) || (writeBack_BRANCH_DEC && ((execute_SPR_ID == 11'h009) && (! execute_DECODER_stageables_29)))) && ({writeBack_arbitration_isValid,memory_arbitration_isValid} != (2'b00)));
    end
  end

  always @ (*) begin
    _zz_316_ = 1'b0;
    if((writeBack_arbitration_isValid && execute_arbitration_isValid))begin
      _zz_316_ = (((writeBack_BRANCH_LINK && _zz_324_) || (writeBack_BRANCH_DEC && execute_BRANCH_DEC)) && ({writeBack_arbitration_isValid,memory_arbitration_isValid} != (2'b00)));
    end
  end

  always @ (*) begin
    _zz_317_ = 1'b0;
    if(_zz_432_)begin
      if(_zz_433_)begin
        if(_zz_434_)begin
          _zz_317_ = (_zz_319_ && _zz_320_);
        end
      end
    end
  end

  always @ (*) begin
    _zz_318_ = (4'b0000);
    if(_zz_432_)begin
      if(_zz_433_)begin
        if(_zz_434_)begin
          if(_zz_317_)begin
            _zz_318_ = writeBack_CR_WRITE_imm[3 : 0];
          end
        end
      end
    end
  end

  always @ (*) begin
    case(execute_DECODER_stageables_12)
      `BranchCtrlEnum_defaultEncoding_BC : begin
        _zz_319_ = 1'b1;
      end
      `BranchCtrlEnum_defaultEncoding_BCLR : begin
        _zz_319_ = 1'b1;
      end
      `BranchCtrlEnum_defaultEncoding_BCCTR : begin
        _zz_319_ = 1'b1;
      end
      `BranchCtrlEnum_defaultEncoding_BCTAR : begin
        _zz_319_ = 1'b1;
      end
      default : begin
        _zz_319_ = 1'b0;
      end
    endcase
  end

  always @ (*) begin
    case(writeBack_CR_WRITE_op)
      `CRBusCmdEnum_defaultEncoding_CR0 : begin
        _zz_320_ = 1'b1;
      end
      `CRBusCmdEnum_defaultEncoding_CR1 : begin
        _zz_320_ = 1'b1;
      end
      `CRBusCmdEnum_defaultEncoding_CR6 : begin
        _zz_320_ = 1'b1;
      end
      `CRBusCmdEnum_defaultEncoding_CMP : begin
        _zz_320_ = 1'b1;
      end
      default : begin
        _zz_320_ = 1'b0;
      end
    endcase
  end

  assign _zz_321_ = (execute_DECODER_stageables_0 == `Src3CtrlEnum_defaultEncoding_CA);
  always @ (*) begin
    _zz_322_ = 1'b0;
    if(writeBack_DECODER_stageables_29)begin
      _zz_322_ = _zz_323_;
    end
  end

  always @ (*) begin
    case(_zz_443_)
      2'b10 : begin
        _zz_323_ = 1'b1;
      end
      2'b01 : begin
        _zz_323_ = execute_DECODER_stageables_53;
      end
      default : begin
        _zz_323_ = (execute_DECODER_stageables_53 && (execute_SPR_ID == writeBack_SPR_ID));
      end
    endcase
  end

  assign _zz_324_ = (execute_DECODER_stageables_12 == `BranchCtrlEnum_defaultEncoding_BCLR);
  always @ (*) begin
    case(decode_DECODER_stageables_12)
      `BranchCtrlEnum_defaultEncoding_BC : begin
        decode_BranchPlugin_bc = 1'b1;
      end
      `BranchCtrlEnum_defaultEncoding_BCLR : begin
        decode_BranchPlugin_bc = 1'b1;
      end
      `BranchCtrlEnum_defaultEncoding_BCCTR : begin
        decode_BranchPlugin_bc = 1'b1;
      end
      `BranchCtrlEnum_defaultEncoding_BCTAR : begin
        decode_BranchPlugin_bc = 1'b1;
      end
      default : begin
        decode_BranchPlugin_bc = 1'b0;
      end
    endcase
  end

  assign decode_BranchPlugin_bi = decode_INSTRUCTION[20 : 16];
  assign decode_BranchPlugin_crbiField = decode_BranchPlugin_bi[4 : 2];
  assign decode_BranchPlugin_bo = decode_INSTRUCTION[25 : 21];
  assign decode_BranchPlugin_crbiRead = ((decode_BranchPlugin_bc && (! decode_BranchPlugin_bo[4])) && ((decode_DECODER_stageables_12 != `BranchCtrlEnum_defaultEncoding_BU) && (decode_DECODER_stageables_12 != `BranchCtrlEnum_defaultEncoding_NONE)));
  always @ (*) begin
    case(decode_BranchPlugin_crbiField)
      3'b000 : begin
        decode_BranchPlugin_crFieldRd = {decode_BranchPlugin_crbiRead,7'h0};
      end
      3'b001 : begin
        decode_BranchPlugin_crFieldRd = {{(1'b0),decode_BranchPlugin_crbiRead},6'h0};
      end
      3'b010 : begin
        decode_BranchPlugin_crFieldRd = {{(2'b00),decode_BranchPlugin_crbiRead},5'h0};
      end
      3'b011 : begin
        decode_BranchPlugin_crFieldRd = {{(3'b000),decode_BranchPlugin_crbiRead},(4'b0000)};
      end
      3'b100 : begin
        decode_BranchPlugin_crFieldRd = {{(4'b0000),decode_BranchPlugin_crbiRead},(3'b000)};
      end
      3'b101 : begin
        decode_BranchPlugin_crFieldRd = {{5'h0,decode_BranchPlugin_crbiRead},(2'b00)};
      end
      3'b110 : begin
        decode_BranchPlugin_crFieldRd = {{6'h0,decode_BranchPlugin_crbiRead},(1'b0)};
      end
      default : begin
        decode_BranchPlugin_crFieldRd = {7'h0,decode_BranchPlugin_crbiRead};
      end
    endcase
  end

  always @ (*) begin
    if(decode_BranchPlugin_crbiRead)begin
      _zz_66_ = decode_BranchPlugin_crFieldRd;
    end else begin
      if(decode_DECODER_stageables_4)begin
        _zz_66_ = 8'hff;
      end else begin
        _zz_66_ = 8'h0;
      end
    end
  end

  assign execute_BranchPlugin_ctrOne = (execute_BranchPlugin_CTR == 32'h00000001);
  always @ (*) begin
    case(execute_SPR_ID)
      11'b00000001001 : begin
        execute_BranchPlugin_sprReadData = execute_BranchPlugin_CTR;
      end
      11'b00000001000 : begin
        execute_BranchPlugin_sprReadData = execute_BranchPlugin_LR;
      end
      11'b01100101111 : begin
        execute_BranchPlugin_sprReadData = execute_BranchPlugin_TAR;
      end
      default : begin
        execute_BranchPlugin_sprReadData = execute_BranchPlugin_CR;
      end
    endcase
  end

  always @ (*) begin
    case(execute_SPR_ID)
      11'b10000000010 : begin
        execute_BranchPlugin_sprReadValid = execute_DECODER_stageables_53;
      end
      11'b00000001001 : begin
        execute_BranchPlugin_sprReadValid = execute_DECODER_stageables_53;
      end
      11'b00000001000 : begin
        execute_BranchPlugin_sprReadValid = execute_DECODER_stageables_53;
      end
      11'b01100101111 : begin
        execute_BranchPlugin_sprReadValid = execute_DECODER_stageables_53;
      end
      default : begin
        execute_BranchPlugin_sprReadValid = 1'b0;
      end
    endcase
  end

  always @ (*) begin
    case(execute_SPR_ID)
      11'b10000000010 : begin
        execute_BranchPlugin_crReadValid = execute_DECODER_stageables_53;
      end
      default : begin
        execute_BranchPlugin_crReadValid = 1'b0;
      end
    endcase
  end

  assign sprReadBU_valid = execute_BranchPlugin_sprReadValid;
  assign sprReadBU_payload_data = execute_BranchPlugin_sprReadData;
  assign execute_BranchPlugin_crBusPort_valid = ((writeBack_RegFilePlugin_crBusPort_valid || _zz_270_) || MULDIV1_crBusPort_valid);
  always @ (*) begin
    if(writeBack_RegFilePlugin_crBusPort_valid)begin
      execute_BranchPlugin_crBusPort_op = writeBack_RegFilePlugin_crBusPort_payload_op;
    end else begin
      if(_zz_270_)begin
        execute_BranchPlugin_crBusPort_op = _zz_271_;
      end else begin
        execute_BranchPlugin_crBusPort_op = MULDIV1_crBusPort_payload_op;
      end
    end
  end

  always @ (*) begin
    if(writeBack_RegFilePlugin_crBusPort_valid)begin
      execute_BranchPlugin_crBusPort_ba = writeBack_RegFilePlugin_crBusPort_payload_ba;
    end else begin
      if(_zz_270_)begin
        execute_BranchPlugin_crBusPort_ba = 5'h0;
      end else begin
        execute_BranchPlugin_crBusPort_ba = MULDIV1_crBusPort_payload_ba;
      end
    end
  end

  always @ (*) begin
    if(writeBack_RegFilePlugin_crBusPort_valid)begin
      execute_BranchPlugin_crBusPort_bb = writeBack_RegFilePlugin_crBusPort_payload_bb;
    end else begin
      if(_zz_270_)begin
        execute_BranchPlugin_crBusPort_bb = 5'h0;
      end else begin
        execute_BranchPlugin_crBusPort_bb = MULDIV1_crBusPort_payload_bb;
      end
    end
  end

  always @ (*) begin
    if(writeBack_RegFilePlugin_crBusPort_valid)begin
      execute_BranchPlugin_crBusPort_bt = writeBack_RegFilePlugin_crBusPort_payload_bt;
    end else begin
      if(_zz_270_)begin
        execute_BranchPlugin_crBusPort_bt = 5'h0;
      end else begin
        execute_BranchPlugin_crBusPort_bt = MULDIV1_crBusPort_payload_bt;
      end
    end
  end

  always @ (*) begin
    if(writeBack_RegFilePlugin_crBusPort_valid)begin
      execute_BranchPlugin_crBusPort_imm = writeBack_RegFilePlugin_crBusPort_payload_imm;
    end else begin
      if(_zz_270_)begin
        execute_BranchPlugin_crBusPort_imm = _zz_272_;
      end else begin
        execute_BranchPlugin_crBusPort_imm = MULDIV1_crBusPort_payload_imm;
      end
    end
  end

  always @ (*) begin
    if(writeBack_RegFilePlugin_crBusPort_valid)begin
      execute_BranchPlugin_crBusPort_fxm = writeBack_RegFilePlugin_crBusPort_payload_fxm;
    end else begin
      if(_zz_270_)begin
        execute_BranchPlugin_crBusPort_fxm = 8'h0;
      end else begin
        execute_BranchPlugin_crBusPort_fxm = MULDIV1_crBusPort_payload_fxm;
      end
    end
  end

  always @ (*) begin
    case(_zz_444_)
      3'b000 : begin
        _zz_325_ = execute_BranchPlugin_CR[31 : 28];
      end
      3'b001 : begin
        _zz_325_ = execute_BranchPlugin_CR[27 : 24];
      end
      3'b010 : begin
        _zz_325_ = execute_BranchPlugin_CR[23 : 20];
      end
      3'b011 : begin
        _zz_325_ = execute_BranchPlugin_CR[19 : 16];
      end
      3'b100 : begin
        _zz_325_ = execute_BranchPlugin_CR[15 : 12];
      end
      3'b101 : begin
        _zz_325_ = execute_BranchPlugin_CR[11 : 8];
      end
      3'b110 : begin
        _zz_325_ = execute_BranchPlugin_CR[7 : 4];
      end
      default : begin
        _zz_325_ = execute_BranchPlugin_CR[3 : 0];
      end
    endcase
  end

  assign _zz_326_ = execute_BranchPlugin_crBusPort_imm[3 : 0];
  assign _zz_327_ = execute_INSTRUCTION[25];
  always @ (*) begin
    _zz_328_[5] = _zz_327_;
    _zz_328_[4] = _zz_327_;
    _zz_328_[3] = _zz_327_;
    _zz_328_[2] = _zz_327_;
    _zz_328_[1] = _zz_327_;
    _zz_328_[0] = _zz_327_;
  end

  assign execute_BranchPlugin_li = {{_zz_328_,execute_INSTRUCTION[25 : 2]},(2'b00)};
  assign _zz_329_ = execute_INSTRUCTION[15];
  always @ (*) begin
    _zz_330_[15] = _zz_329_;
    _zz_330_[14] = _zz_329_;
    _zz_330_[13] = _zz_329_;
    _zz_330_[12] = _zz_329_;
    _zz_330_[11] = _zz_329_;
    _zz_330_[10] = _zz_329_;
    _zz_330_[9] = _zz_329_;
    _zz_330_[8] = _zz_329_;
    _zz_330_[7] = _zz_329_;
    _zz_330_[6] = _zz_329_;
    _zz_330_[5] = _zz_329_;
    _zz_330_[4] = _zz_329_;
    _zz_330_[3] = _zz_329_;
    _zz_330_[2] = _zz_329_;
    _zz_330_[1] = _zz_329_;
    _zz_330_[0] = _zz_329_;
  end

  assign execute_BranchPlugin_bd = {{_zz_330_,execute_INSTRUCTION[15 : 2]},(2'b00)};
  assign _zz_331_ = (! execute_INSTRUCTION[1]);
  always @ (*) begin
    execute_BranchPlugin_aaMask[31] = _zz_331_;
    execute_BranchPlugin_aaMask[30] = _zz_331_;
    execute_BranchPlugin_aaMask[29] = _zz_331_;
    execute_BranchPlugin_aaMask[28] = _zz_331_;
    execute_BranchPlugin_aaMask[27] = _zz_331_;
    execute_BranchPlugin_aaMask[26] = _zz_331_;
    execute_BranchPlugin_aaMask[25] = _zz_331_;
    execute_BranchPlugin_aaMask[24] = _zz_331_;
    execute_BranchPlugin_aaMask[23] = _zz_331_;
    execute_BranchPlugin_aaMask[22] = _zz_331_;
    execute_BranchPlugin_aaMask[21] = _zz_331_;
    execute_BranchPlugin_aaMask[20] = _zz_331_;
    execute_BranchPlugin_aaMask[19] = _zz_331_;
    execute_BranchPlugin_aaMask[18] = _zz_331_;
    execute_BranchPlugin_aaMask[17] = _zz_331_;
    execute_BranchPlugin_aaMask[16] = _zz_331_;
    execute_BranchPlugin_aaMask[15] = _zz_331_;
    execute_BranchPlugin_aaMask[14] = _zz_331_;
    execute_BranchPlugin_aaMask[13] = _zz_331_;
    execute_BranchPlugin_aaMask[12] = _zz_331_;
    execute_BranchPlugin_aaMask[11] = _zz_331_;
    execute_BranchPlugin_aaMask[10] = _zz_331_;
    execute_BranchPlugin_aaMask[9] = _zz_331_;
    execute_BranchPlugin_aaMask[8] = _zz_331_;
    execute_BranchPlugin_aaMask[7] = _zz_331_;
    execute_BranchPlugin_aaMask[6] = _zz_331_;
    execute_BranchPlugin_aaMask[5] = _zz_331_;
    execute_BranchPlugin_aaMask[4] = _zz_331_;
    execute_BranchPlugin_aaMask[3] = _zz_331_;
    execute_BranchPlugin_aaMask[2] = _zz_331_;
    execute_BranchPlugin_aaMask[1] = _zz_331_;
    execute_BranchPlugin_aaMask[0] = _zz_331_;
  end

  always @ (*) begin
    case(execute_DECODER_stageables_12)
      `BranchCtrlEnum_defaultEncoding_BCLR : begin
        execute_BranchPlugin_branch_tgt0 = execute_BranchPlugin_LR;
      end
      `BranchCtrlEnum_defaultEncoding_BCCTR : begin
        execute_BranchPlugin_branch_tgt0 = execute_BranchPlugin_CTR;
      end
      `BranchCtrlEnum_defaultEncoding_BCTAR : begin
        execute_BranchPlugin_branch_tgt0 = execute_BranchPlugin_TAR;
      end
      default : begin
        execute_BranchPlugin_branch_tgt0 = 32'h0;
      end
    endcase
  end

  always @ (*) begin
    case(execute_DECODER_stageables_12)
      `BranchCtrlEnum_defaultEncoding_BU : begin
        execute_BranchPlugin_branch_tgt1 = (execute_PC & execute_BranchPlugin_aaMask);
      end
      `BranchCtrlEnum_defaultEncoding_BC : begin
        execute_BranchPlugin_branch_tgt1 = (execute_PC & execute_BranchPlugin_aaMask);
      end
      default : begin
        execute_BranchPlugin_branch_tgt1 = 32'h0;
      end
    endcase
  end

  assign execute_BranchPlugin_use_li = (execute_DECODER_stageables_12 == `BranchCtrlEnum_defaultEncoding_BU);
  assign execute_BranchPlugin_branch_tgt2 = (execute_BranchPlugin_use_li ? _zz_604_ : _zz_605_);
  always @ (*) begin
    case(execute_DECODER_stageables_12)
      `BranchCtrlEnum_defaultEncoding_BU : begin
        execute_BranchPlugin_branchAdder = _zz_606_;
      end
      `BranchCtrlEnum_defaultEncoding_BC : begin
        execute_BranchPlugin_branchAdder = _zz_607_;
      end
      default : begin
        execute_BranchPlugin_branchAdder = execute_BranchPlugin_branch_tgt0;
      end
    endcase
  end

  assign execute_BranchPlugin_opbi = execute_INSTRUCTION[20 : 16];
  assign execute_BranchPlugin_crbiField = execute_BranchPlugin_opbi[4 : 2];
  assign execute_BranchPlugin_crbiBit = execute_BranchPlugin_opbi[1 : 0];
  assign execute_BranchPlugin_bo = execute_INSTRUCTION[25 : 21];
  assign execute_BranchPlugin_crBypassPort_valid = (_zz_301_ || _zz_317_);
  always @ (*) begin
    if(_zz_301_)begin
      execute_BranchPlugin_crBypassPort_field = _zz_302_;
    end else begin
      execute_BranchPlugin_crBypassPort_field = _zz_318_;
    end
  end

  always @ (*) begin
    if(execute_BranchPlugin_crBypassPort_valid)begin
      execute_BranchPlugin_crbi = execute_BranchPlugin_crBypassPort_field[_zz_608_];
    end else begin
      case(execute_BranchPlugin_crbiField)
        3'b000 : begin
          execute_BranchPlugin_crbi = execute_BranchPlugin_CR[_zz_609_];
        end
        3'b001 : begin
          execute_BranchPlugin_crbi = execute_BranchPlugin_CR[_zz_612_];
        end
        3'b010 : begin
          execute_BranchPlugin_crbi = execute_BranchPlugin_CR[_zz_615_];
        end
        3'b011 : begin
          execute_BranchPlugin_crbi = execute_BranchPlugin_CR[_zz_618_];
        end
        3'b100 : begin
          execute_BranchPlugin_crbi = execute_BranchPlugin_CR[_zz_621_];
        end
        3'b101 : begin
          execute_BranchPlugin_crbi = execute_BranchPlugin_CR[_zz_624_];
        end
        3'b110 : begin
          execute_BranchPlugin_crbi = execute_BranchPlugin_CR[_zz_627_];
        end
        default : begin
          execute_BranchPlugin_crbi = execute_BranchPlugin_CR[_zz_630_];
        end
      endcase
    end
  end

  assign execute_BranchPlugin_ctrOK = (execute_BranchPlugin_bo[2] || ((! execute_BranchPlugin_ctrOne) ^ execute_BranchPlugin_bo[1]));
  assign execute_BranchPlugin_condOK = (execute_BranchPlugin_bo[4] || (! (execute_BranchPlugin_crbi ^ execute_BranchPlugin_bo[3])));
  assign execute_BranchPlugin_lk = execute_INSTRUCTION[0];
  always @ (*) begin
    case(execute_DECODER_stageables_12)
      `BranchCtrlEnum_defaultEncoding_NONE : begin
        _zz_332_ = 1'b0;
      end
      `BranchCtrlEnum_defaultEncoding_BU : begin
        _zz_332_ = 1'b1;
      end
      `BranchCtrlEnum_defaultEncoding_BC : begin
        _zz_332_ = (execute_BranchPlugin_ctrOK && execute_BranchPlugin_condOK);
      end
      `BranchCtrlEnum_defaultEncoding_BCLR : begin
        _zz_332_ = (execute_BranchPlugin_ctrOK && execute_BranchPlugin_condOK);
      end
      `BranchCtrlEnum_defaultEncoding_BCCTR : begin
        _zz_332_ = execute_BranchPlugin_condOK;
      end
      default : begin
        _zz_332_ = (execute_BranchPlugin_ctrOK && execute_BranchPlugin_condOK);
      end
    endcase
  end

  always @ (*) begin
    case(execute_DECODER_stageables_12)
      `BranchCtrlEnum_defaultEncoding_NONE : begin
        _zz_333_ = 1'b0;
      end
      `BranchCtrlEnum_defaultEncoding_BU : begin
        _zz_333_ = 1'b0;
      end
      `BranchCtrlEnum_defaultEncoding_BC : begin
        _zz_333_ = (! execute_BranchPlugin_bo[2]);
      end
      `BranchCtrlEnum_defaultEncoding_BCLR : begin
        _zz_333_ = (! execute_BranchPlugin_bo[2]);
      end
      `BranchCtrlEnum_defaultEncoding_BCCTR : begin
        _zz_333_ = 1'b0;
      end
      default : begin
        _zz_333_ = (! execute_BranchPlugin_bo[2]);
      end
    endcase
  end

  always @ (*) begin
    case(execute_DECODER_stageables_12)
      `BranchCtrlEnum_defaultEncoding_NONE : begin
        _zz_334_ = 1'b0;
      end
      `BranchCtrlEnum_defaultEncoding_BU : begin
        _zz_334_ = execute_BranchPlugin_lk;
      end
      `BranchCtrlEnum_defaultEncoding_BC : begin
        _zz_334_ = execute_BranchPlugin_lk;
      end
      `BranchCtrlEnum_defaultEncoding_BCLR : begin
        _zz_334_ = execute_BranchPlugin_lk;
      end
      `BranchCtrlEnum_defaultEncoding_BCCTR : begin
        _zz_334_ = execute_BranchPlugin_lk;
      end
      default : begin
        _zz_334_ = execute_BranchPlugin_lk;
      end
    endcase
  end

  assign memory_BranchPlugin_predictionMissmatch = ((IBusCachedPlugin_fetchPrediction_cmd_hadBranch != memory_BRANCH_DO) || (memory_BRANCH_DO && memory_TARGET_MISSMATCH2));
  assign IBusCachedPlugin_fetchPrediction_rsp_wasRight = (! memory_BranchPlugin_predictionMissmatch);
  assign IBusCachedPlugin_fetchPrediction_rsp_finalPc = memory_BRANCH_CALC;
  assign IBusCachedPlugin_fetchPrediction_rsp_sourceLastWord = memory_PC;
  assign BranchPlugin_jumpInterface_valid = ((memory_arbitration_isValid && memory_BranchPlugin_predictionMissmatch) && (! 1'b0));
  assign BranchPlugin_jumpInterface_payload = (memory_BRANCH_DO ? memory_BRANCH_CALC : memory_NEXT_PC2);
  assign BranchPlugin_branchExceptionPort_valid = ((memory_arbitration_isValid && memory_BRANCH_DO) && memory_BRANCH_CALC[1]);
  assign BranchPlugin_branchExceptionPort_payload_code = (4'b0000);
  always @ (*) begin
    SPRPlugin_msr_ir = MSR_IR;
    if(_zz_408_)begin
      SPRPlugin_msr_ir = 1'b0;
    end
    if(_zz_409_)begin
      SPRPlugin_msr_ir = 1'b0;
    end
    if(_zz_411_)begin
      SPRPlugin_msr_ir = SPRPlugin_srr1[5];
    end
  end

  assign SPRPlugin_msr_dr = MSR_DR;
  assign SPRPlugin_msr_pr = MSR_PR;
  assign SPRPlugin_incTB = 1'b1;
  always @ (*) begin
    SPRPlugin_intDecTkn = 1'b0;
    if(_zz_406_)begin
      SPRPlugin_intDecTkn = (SPRPlugin_intType == `ExcpEnum_defaultEncoding_DEC);
    end
  end

  assign _zz_336_ = {decodeExceptionPort_valid,IBusCachedPlugin_decodeExceptionPort_valid};
  assign _zz_337_ = _zz_632_[0];
  assign _zz_338_ = (_zz_337_ ? IBusCachedPlugin_decodeExceptionPort_payload_codePPC : decodeExceptionPort_payload_codePPC);
  assign _zz_335_ = _zz_338_;
  always @ (*) begin
    SPRPlugin_exceptionPortCtrl_exceptionValids_decode = SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
    if(_zz_405_)begin
      SPRPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b1;
    end
    if(decode_arbitration_isFlushed)begin
      SPRPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b0;
    end
  end

  always @ (*) begin
    SPRPlugin_exceptionPortCtrl_exceptionValids_execute = SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
    if(SPRPlugin_selfException_valid)begin
      SPRPlugin_exceptionPortCtrl_exceptionValids_execute = 1'b1;
    end
    if(execute_arbitration_isFlushed)begin
      SPRPlugin_exceptionPortCtrl_exceptionValids_execute = 1'b0;
    end
  end

  always @ (*) begin
    SPRPlugin_exceptionPortCtrl_exceptionValids_memory = SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
    if(BranchPlugin_branchExceptionPort_valid)begin
      SPRPlugin_exceptionPortCtrl_exceptionValids_memory = 1'b1;
    end
    if(memory_arbitration_isFlushed)begin
      SPRPlugin_exceptionPortCtrl_exceptionValids_memory = 1'b0;
    end
  end

  always @ (*) begin
    SPRPlugin_exceptionPortCtrl_exceptionValids_writeBack = SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
    if(DBusCachedPlugin_exceptionBus_valid)begin
      SPRPlugin_exceptionPortCtrl_exceptionValids_writeBack = 1'b1;
    end
    if(writeBack_arbitration_isFlushed)begin
      SPRPlugin_exceptionPortCtrl_exceptionValids_writeBack = 1'b0;
    end
  end

  always @ (*) begin
    case(SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC)
      `ExcpEnum_defaultEncoding_SC : begin
        _zz_339_ = 1'b0;
      end
      `ExcpEnum_defaultEncoding_SCV : begin
        _zz_339_ = 1'b0;
      end
      `ExcpEnum_defaultEncoding_TRAP : begin
        _zz_339_ = 1'b0;
      end
      `ExcpEnum_defaultEncoding_RFI : begin
        _zz_339_ = 1'b0;
      end
      `ExcpEnum_defaultEncoding_RFSCV : begin
        _zz_339_ = 1'b0;
      end
      default : begin
        _zz_339_ = 1'b1;
      end
    endcase
  end

  always @ (*) begin
    case(SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC)
      `ExcpEnum_defaultEncoding_SC : begin
        _zz_340_ = 1'b0;
      end
      `ExcpEnum_defaultEncoding_SCV : begin
        _zz_340_ = 1'b0;
      end
      `ExcpEnum_defaultEncoding_TRAP : begin
        _zz_340_ = 1'b0;
      end
      `ExcpEnum_defaultEncoding_RFI : begin
        _zz_340_ = 1'b0;
      end
      `ExcpEnum_defaultEncoding_RFSCV : begin
        _zz_340_ = 1'b0;
      end
      default : begin
        _zz_340_ = 1'b1;
      end
    endcase
  end

  always @ (*) begin
    case(SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC)
      `ExcpEnum_defaultEncoding_SC : begin
        _zz_341_ = 1'b0;
      end
      `ExcpEnum_defaultEncoding_SCV : begin
        _zz_341_ = 1'b0;
      end
      `ExcpEnum_defaultEncoding_TRAP : begin
        _zz_341_ = 1'b0;
      end
      `ExcpEnum_defaultEncoding_RFI : begin
        _zz_341_ = 1'b0;
      end
      `ExcpEnum_defaultEncoding_RFSCV : begin
        _zz_341_ = 1'b0;
      end
      default : begin
        _zz_341_ = 1'b1;
      end
    endcase
  end

  always @ (*) begin
    case(SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC)
      `ExcpEnum_defaultEncoding_SC : begin
        _zz_342_ = 1'b0;
      end
      `ExcpEnum_defaultEncoding_SCV : begin
        _zz_342_ = 1'b0;
      end
      `ExcpEnum_defaultEncoding_TRAP : begin
        _zz_342_ = 1'b0;
      end
      `ExcpEnum_defaultEncoding_RFI : begin
        _zz_342_ = 1'b0;
      end
      `ExcpEnum_defaultEncoding_RFSCV : begin
        _zz_342_ = 1'b0;
      end
      default : begin
        _zz_342_ = 1'b1;
      end
    endcase
  end

  assign SPRPlugin_exceptionPendings_0 = SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
  assign SPRPlugin_exceptionPendings_1 = SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
  assign SPRPlugin_exceptionPendings_2 = SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
  assign SPRPlugin_exceptionPendings_3 = SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
  assign SPRPlugin_pipelineLiberator_active = ((SPRPlugin_interrupt_valid && SPRPlugin_allowInterrupts) && decode_arbitration_isValid);
  always @ (*) begin
    SPRPlugin_pipelineLiberator_done = SPRPlugin_pipelineLiberator_pcValids_2;
    if(({SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack,{SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_memory,SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_execute}} != (3'b000)))begin
      SPRPlugin_pipelineLiberator_done = 1'b0;
    end
    if(SPRPlugin_hadException)begin
      SPRPlugin_pipelineLiberator_done = 1'b0;
    end
  end

  assign SPRPlugin_exception = (SPRPlugin_exceptionPortCtrl_exceptionValids_writeBack && SPRPlugin_allowException);
  always @ (*) begin
    SPRPlugin_interruptJump = 1'b0;
    if(_zz_435_)begin
      SPRPlugin_interruptJump = ((SPRPlugin_interrupt_valid && SPRPlugin_pipelineLiberator_done) && SPRPlugin_allowInterrupts);
    end
  end

  always @ (*) begin
    SPRPlugin_intType = `ExcpEnum_defaultEncoding_NONE;
    if(_zz_406_)begin
      if(SPRPlugin_interruptJump)begin
        case(SPRPlugin_interrupt_code)
          4'b1001 : begin
            SPRPlugin_intType = `ExcpEnum_defaultEncoding_DEC;
          end
          default : begin
          end
        endcase
      end else begin
        SPRPlugin_intType = SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC;
      end
    end
  end

  always @ (*) begin
    SPRPlugin_intSRR0 = 32'h0;
    if(_zz_406_)begin
      if(SPRPlugin_interruptJump)begin
        SPRPlugin_intSRR0 = writeBack_PC;
      end else begin
        SPRPlugin_intSRR0 = SPRPlugin_exceptionPortCtrl_exceptionContext_badAddr;
      end
    end
  end

  always @ (*) begin
    case(SPRPlugin_intType)
      `ExcpEnum_defaultEncoding_SR : begin
        _zz_343_ = 32'h00000100;
      end
      `ExcpEnum_defaultEncoding_MC : begin
        _zz_343_ = 32'h00000200;
      end
      `ExcpEnum_defaultEncoding_EXT : begin
        _zz_343_ = 32'h00000500;
      end
      `ExcpEnum_defaultEncoding_DEC : begin
        _zz_343_ = 32'h00000900;
      end
      `ExcpEnum_defaultEncoding_PM : begin
        _zz_343_ = 32'h00000f00;
      end
      `ExcpEnum_defaultEncoding_DSI : begin
        _zz_343_ = 32'h00000300;
      end
      `ExcpEnum_defaultEncoding_DSI_PROT : begin
        _zz_343_ = 32'h00000300;
      end
      `ExcpEnum_defaultEncoding_ISI : begin
        _zz_343_ = 32'h00000400;
      end
      `ExcpEnum_defaultEncoding_ISI_PROT : begin
        _zz_343_ = 32'h00000400;
      end
      `ExcpEnum_defaultEncoding_ALG : begin
        _zz_343_ = 32'h00000600;
      end
      `ExcpEnum_defaultEncoding_PGM_ILL : begin
        _zz_343_ = 32'h00000700;
      end
      `ExcpEnum_defaultEncoding_PGM_PRV : begin
        _zz_343_ = 32'h00000700;
      end
      `ExcpEnum_defaultEncoding_FP : begin
        _zz_343_ = 32'h00000800;
      end
      `ExcpEnum_defaultEncoding_TR : begin
        _zz_343_ = 32'h00000d00;
      end
      `ExcpEnum_defaultEncoding_VEC : begin
        _zz_343_ = 32'h00000f20;
      end
      `ExcpEnum_defaultEncoding_VSX : begin
        _zz_343_ = 32'h00000f40;
      end
      `ExcpEnum_defaultEncoding_FAC : begin
        _zz_343_ = 32'h00000f60;
      end
      default : begin
        _zz_343_ = 32'h0;
      end
    endcase
  end

  always @ (*) begin
    if(MSR_LE)begin
      _zz_65_ = `EndianEnum_defaultEncoding_LE;
    end else begin
      _zz_65_ = `EndianEnum_defaultEncoding_BE;
    end
  end

  assign execute_SPRPLUGIN_blockedBySideEffects = ({writeBack_arbitration_isValid,memory_arbitration_isValid} != (2'b00));
  always @ (*) begin
    case(execute_SPR_ID)
      11'b10000000001 : begin
        execute_SPRPLUGIN_sprHere = 1'b1;
      end
      11'b00000011010 : begin
        execute_SPRPLUGIN_sprHere = 1'b1;
      end
      11'b00000011011 : begin
        execute_SPRPLUGIN_sprHere = 1'b1;
      end
      11'b00000010011 : begin
        execute_SPRPLUGIN_sprHere = 1'b1;
      end
      11'b00000010010 : begin
        execute_SPRPLUGIN_sprHere = 1'b1;
      end
      11'b00100001100 : begin
        execute_SPRPLUGIN_sprHere = 1'b1;
      end
      11'b00000010110 : begin
        execute_SPRPLUGIN_sprHere = 1'b1;
      end
      11'b00100000011 : begin
        execute_SPRPLUGIN_sprHere = 1'b1;
      end
      default : begin
        execute_SPRPLUGIN_sprHere = 1'b0;
      end
    endcase
  end

  always @ (*) begin
    execute_SPRPLUGIN_illegalAccess = 1'b1;
    if((! execute_SPRPLUGIN_sprHere))begin
      execute_SPRPLUGIN_illegalAccess = 1'b0;
    end
    if(execute_arbitration_isValid)begin
      if((execute_DECODER_stageables_27 && SPRPlugin_msr_pr))begin
        execute_SPRPLUGIN_illegalAccess = 1'b1;
      end
    end
    if(execute_SPRPLUGIN_SPR_1025)begin
      execute_SPRPLUGIN_illegalAccess = 1'b0;
    end
    if(execute_SPRPLUGIN_SPR_26)begin
      execute_SPRPLUGIN_illegalAccess = 1'b0;
    end
    if(execute_SPRPLUGIN_SPR_27)begin
      execute_SPRPLUGIN_illegalAccess = 1'b0;
    end
    if(execute_SPRPLUGIN_SPR_19)begin
      execute_SPRPLUGIN_illegalAccess = 1'b0;
    end
    if(execute_SPRPLUGIN_SPR_259)begin
      execute_SPRPLUGIN_illegalAccess = 1'b0;
    end
    if(execute_SPRPLUGIN_SPR_18)begin
      execute_SPRPLUGIN_illegalAccess = 1'b0;
    end
    if(execute_SPRPLUGIN_SPR_268)begin
      execute_SPRPLUGIN_illegalAccess = 1'b0;
    end
    if(execute_SPRPLUGIN_SPR_22)begin
      execute_SPRPLUGIN_illegalAccess = 1'b0;
    end
    if(execute_SPRPLUGIN_privViolation)begin
      execute_SPRPLUGIN_illegalAccess = 1'b1;
    end
    if(((! execute_arbitration_isValid) || (! execute_DECODER_stageables_39)))begin
      execute_SPRPLUGIN_illegalAccess = 1'b0;
    end
  end

  always @ (*) begin
    SPRPlugin_selfException_valid = 1'b0;
    if(execute_SPRPLUGIN_illegalAccess)begin
      SPRPlugin_selfException_valid = 1'b1;
    end
  end

  always @ (*) begin
    SPRPlugin_selfException_payload_code = (4'bxxxx);
    if(execute_SPRPLUGIN_illegalAccess)begin
      SPRPlugin_selfException_payload_code = (4'b0010);
    end
  end

  assign _zz_344_ = execute_INSTRUCTION[15];
  always @ (*) begin
    _zz_345_[15] = _zz_344_;
    _zz_345_[14] = _zz_344_;
    _zz_345_[13] = _zz_344_;
    _zz_345_[12] = _zz_344_;
    _zz_345_[11] = _zz_344_;
    _zz_345_[10] = _zz_344_;
    _zz_345_[9] = _zz_344_;
    _zz_345_[8] = _zz_344_;
    _zz_345_[7] = _zz_344_;
    _zz_345_[6] = _zz_344_;
    _zz_345_[5] = _zz_344_;
    _zz_345_[4] = _zz_344_;
    _zz_345_[3] = _zz_344_;
    _zz_345_[2] = _zz_344_;
    _zz_345_[1] = _zz_344_;
    _zz_345_[0] = _zz_344_;
  end

  assign execute_SPRPLUGIN_si = {_zz_345_,execute_INSTRUCTION[15 : 0]};
  assign execute_SPRPLUGIN_tmask = execute_INSTRUCTION[25 : 21];
  always @ (*) begin
    execute_SPRPLUGIN_trap = 1'b0;
    if(execute_arbitration_isValid)begin
      if(_zz_392_)begin
        if(($signed(_zz_634_) < $signed(_zz_635_)))begin
          execute_SPRPLUGIN_trap = execute_SPRPLUGIN_tmask[4];
        end else begin
          if(($signed(_zz_636_) < $signed(_zz_637_)))begin
            execute_SPRPLUGIN_trap = execute_SPRPLUGIN_tmask[3];
          end else begin
            if((execute_SRC1 == execute_SRC2))begin
              execute_SPRPLUGIN_trap = execute_SPRPLUGIN_tmask[2];
            end else begin
              if((execute_SRC1 < execute_SRC2))begin
                execute_SPRPLUGIN_trap = execute_SPRPLUGIN_tmask[1];
              end else begin
                if((execute_SRC2 < execute_SRC1))begin
                  execute_SPRPLUGIN_trap = execute_SPRPLUGIN_tmask[0];
                end
              end
            end
          end
        end
      end
    end
  end

  assign execute_SPRPLUGIN_opExcp_codePPC = `ExcpEnum_defaultEncoding_NONE;
  assign execute_SPRPLUGIN_opExcp_imm = 7'h0;
  assign execute_SPRPLUGIN_opExcp_badAddr = execute_PC;
  always @ (*) begin
    _zz_346_ = 1'b0;
    if(($signed(_zz_638_) < $signed(_zz_639_)))begin
      _zz_346_ = execute_SPRPLUGIN_tmask[4];
    end else begin
      if(($signed(_zz_640_) < $signed(_zz_641_)))begin
        _zz_346_ = execute_SPRPLUGIN_tmask[3];
      end else begin
        if((execute_SRC1 == execute_SPRPLUGIN_si))begin
          _zz_346_ = execute_SPRPLUGIN_tmask[2];
        end else begin
          if((execute_SRC1 < execute_SPRPLUGIN_si))begin
            _zz_346_ = execute_SPRPLUGIN_tmask[1];
          end else begin
            if((execute_SPRPLUGIN_si < execute_SRC1))begin
              _zz_346_ = execute_SPRPLUGIN_tmask[0];
            end
          end
        end
      end
    end
  end

  assign execute_SPRPLUGIN_readToWriteData = execute_SPRPLUGIN_readData;
  assign execute_SPRPLUGIN_sprg3read = 1'b0;
  assign execute_SPRPLUGIN_privViolation = ((execute_SPRPLUGIN_sprHere && MSR_PR) && (! execute_SPRPLUGIN_sprg3read));
  assign execute_SPRPLUGIN_readInstruction = ((((execute_arbitration_isValid && execute_SPRPLUGIN_sprHere) && execute_DECODER_stageables_53) && execute_DECODER_stageables_39) && (! execute_SPRPLUGIN_privViolation));
  assign execute_SPRPLUGIN_readEnable = ((execute_SPRPLUGIN_readInstruction && (! execute_SPRPLUGIN_blockedBySideEffects)) && (! execute_arbitration_isStuckByOthers));
  assign execute_SPRPLUGIN_writeInstruction = ((((execute_arbitration_isValid && execute_SPRPLUGIN_sprHere) && execute_DECODER_stageables_29) && execute_DECODER_stageables_39) && (! execute_SPRPLUGIN_privViolation));
  assign execute_SPRPLUGIN_writeEnable = ((execute_SPRPLUGIN_writeInstruction && (! execute_SPRPLUGIN_blockedBySideEffects)) && (! execute_arbitration_isStuckByOthers));
  always @ (*) begin
    execute_SPRPLUGIN_SPRAddress = {(1'b0),execute_SPR_ID[9 : 0]};
    if((execute_DECODER_stageables_48 == `EnvCtrlEnum_defaultEncoding_MFMSR))begin
      execute_SPRPLUGIN_SPRAddress = 11'h401;
    end else begin
      if((execute_DECODER_stageables_48 == `EnvCtrlEnum_defaultEncoding_MTMSR))begin
        execute_SPRPLUGIN_SPRAddress = 11'h401;
      end
    end
  end

  assign contextSwitching = SPRPlugin_jumpInterface_valid;
  assign _zz_60_ = decode_DECODER_stageables_50;
  assign _zz_58_ = _zz_108_;
  assign _zz_79_ = decode_to_execute_DECODER_stageables_50;
  assign _zz_57_ = decode_DECODER_stageables_43;
  assign _zz_55_ = _zz_110_;
  assign _zz_101_ = decode_to_execute_DECODER_stageables_43;
  assign _zz_54_ = decode_DECODER_stageables_48;
  assign _zz_63_ = execute_DECODER_stageables_48;
  assign _zz_51_ = memory_DECODER_stageables_48;
  assign _zz_52_ = _zz_109_;
  assign _zz_64_ = decode_to_execute_DECODER_stageables_48;
  assign _zz_49_ = execute_to_memory_DECODER_stageables_48;
  assign _zz_61_ = memory_to_writeBack_DECODER_stageables_48;
  assign _zz_48_ = decode_DECODER_stageables_12;
  assign _zz_67_ = _zz_115_;
  assign _zz_69_ = decode_to_execute_DECODER_stageables_12;
  assign _zz_46_ = execute_CR_WRITE_op;
  assign _zz_43_ = memory_CR_WRITE_op;
  assign _zz_44_ = _zz_78_;
  assign _zz_68_ = execute_to_memory_CR_WRITE_op;
  assign _zz_103_ = memory_to_writeBack_CR_WRITE_op;
  assign _zz_41_ = decode_DECODER_stageables_15;
  assign _zz_39_ = _zz_114_;
  assign _zz_100_ = decode_to_execute_DECODER_stageables_15;
  assign _zz_38_ = decode_DECODER_stageables_18;
  assign _zz_36_ = _zz_113_;
  assign _zz_102_ = decode_to_execute_DECODER_stageables_18;
  assign _zz_35_ = decode_DECODER_stageables_56;
  assign _zz_33_ = _zz_107_;
  assign _zz_84_ = decode_to_execute_DECODER_stageables_56;
  assign _zz_32_ = decode_DECODER_stageables_5;
  assign _zz_29_ = execute_DATA_SIZE;
  assign _zz_27_ = memory_DECODER_stageables_5;
  assign _zz_30_ = _zz_119_;
  assign _zz_125_ = decode_to_execute_DECODER_stageables_5;
  assign _zz_25_ = execute_to_memory_DECODER_stageables_5;
  assign _zz_122_ = memory_to_writeBack_DECODER_stageables_5;
  assign _zz_24_ = decode_DECODER_stageables_0;
  assign _zz_22_ = _zz_120_;
  assign _zz_72_ = decode_to_execute_DECODER_stageables_0;
  assign _zz_21_ = decode_MSR_ENDIAN;
  assign _zz_19_ = execute_MSR_ENDIAN;
  assign _zz_17_ = memory_MSR_ENDIAN;
  assign _zz_129_ = _zz_65_;
  assign _zz_126_ = decode_to_execute_MSR_ENDIAN;
  assign _zz_15_ = execute_to_memory_MSR_ENDIAN;
  assign _zz_123_ = memory_to_writeBack_MSR_ENDIAN;
  assign _zz_14_ = decode_DECODER_stageables_7;
  assign _zz_12_ = _zz_117_;
  assign _zz_83_ = decode_to_execute_DECODER_stageables_7;
  assign _zz_11_ = decode_DECODER_stageables_24;
  assign _zz_9_ = _zz_112_;
  assign _zz_73_ = decode_to_execute_DECODER_stageables_24;
  assign _zz_8_ = decode_DECODER_stageables_36;
  assign _zz_6_ = _zz_111_;
  assign _zz_76_ = decode_to_execute_DECODER_stageables_36;
  assign _zz_5_ = decode_DECODER_stageables_6;
  assign _zz_3_ = _zz_118_;
  assign _zz_80_ = decode_to_execute_DECODER_stageables_6;
  assign _zz_2_ = decode_DECODER_stageables_11;
  assign _zz_106_ = _zz_116_;
  assign _zz_82_ = decode_to_execute_DECODER_stageables_11;
  assign decode_arbitration_isFlushed = (({writeBack_arbitration_flushNext,{memory_arbitration_flushNext,execute_arbitration_flushNext}} != (3'b000)) || ({writeBack_arbitration_flushIt,{memory_arbitration_flushIt,{execute_arbitration_flushIt,decode_arbitration_flushIt}}} != (4'b0000)));
  assign execute_arbitration_isFlushed = (({writeBack_arbitration_flushNext,memory_arbitration_flushNext} != (2'b00)) || ({writeBack_arbitration_flushIt,{memory_arbitration_flushIt,execute_arbitration_flushIt}} != (3'b000)));
  assign memory_arbitration_isFlushed = ((writeBack_arbitration_flushNext != (1'b0)) || ({writeBack_arbitration_flushIt,memory_arbitration_flushIt} != (2'b00)));
  assign writeBack_arbitration_isFlushed = (1'b0 || (writeBack_arbitration_flushIt != (1'b0)));
  assign decode_arbitration_isStuckByOthers = (decode_arbitration_haltByOther || (((1'b0 || execute_arbitration_isStuck) || memory_arbitration_isStuck) || writeBack_arbitration_isStuck));
  assign decode_arbitration_isStuck = (decode_arbitration_haltItself || decode_arbitration_isStuckByOthers);
  assign decode_arbitration_isMoving = ((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt));
  assign decode_arbitration_isFiring = ((decode_arbitration_isValid && (! decode_arbitration_isStuck)) && (! decode_arbitration_removeIt));
  assign execute_arbitration_isStuckByOthers = (execute_arbitration_haltByOther || ((1'b0 || memory_arbitration_isStuck) || writeBack_arbitration_isStuck));
  assign execute_arbitration_isStuck = (execute_arbitration_haltItself || execute_arbitration_isStuckByOthers);
  assign execute_arbitration_isMoving = ((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt));
  assign execute_arbitration_isFiring = ((execute_arbitration_isValid && (! execute_arbitration_isStuck)) && (! execute_arbitration_removeIt));
  assign memory_arbitration_isStuckByOthers = (memory_arbitration_haltByOther || (1'b0 || writeBack_arbitration_isStuck));
  assign memory_arbitration_isStuck = (memory_arbitration_haltItself || memory_arbitration_isStuckByOthers);
  assign memory_arbitration_isMoving = ((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt));
  assign memory_arbitration_isFiring = ((memory_arbitration_isValid && (! memory_arbitration_isStuck)) && (! memory_arbitration_removeIt));
  assign writeBack_arbitration_isStuckByOthers = (writeBack_arbitration_haltByOther || 1'b0);
  assign writeBack_arbitration_isStuck = (writeBack_arbitration_haltItself || writeBack_arbitration_isStuckByOthers);
  assign writeBack_arbitration_isMoving = ((! writeBack_arbitration_isStuck) && (! writeBack_arbitration_removeIt));
  assign writeBack_arbitration_isFiring = ((writeBack_arbitration_isValid && (! writeBack_arbitration_isStuck)) && (! writeBack_arbitration_removeIt));
  always @ (*) begin
    _zz_347_ = {{(1'b0),decode_INSTRUCTION[15 : 11]},decode_INSTRUCTION[20 : 16]};
    if((decode_DECODER_stageables_48 == `EnvCtrlEnum_defaultEncoding_MFMSR))begin
      _zz_347_ = 11'h401;
    end else begin
      if((decode_DECODER_stageables_48 == `EnvCtrlEnum_defaultEncoding_MTMSR))begin
        _zz_347_ = 11'h401;
      end
    end
  end

  always @ (*) begin
    _zz_348_ = 32'h0;
    if(execute_SPRPLUGIN_SPR_1025)begin
      _zz_348_[23 : 23] = MSR_VSX;
      _zz_348_[8 : 8] = MSR_FE1;
      _zz_348_[11 : 11] = MSR_FE0;
      _zz_348_[2 : 2] = MSR_PMM;
      _zz_348_[5 : 5] = MSR_IR;
      _zz_348_[14 : 14] = MSR_PR;
      _zz_348_[13 : 13] = MSR_FP;
      _zz_348_[4 : 4] = MSR_DR;
      _zz_348_[25 : 25] = MSR_VEC;
      _zz_348_[1 : 1] = MSR_RI;
      _zz_348_[12 : 12] = MSR_ME;
      _zz_348_[15 : 15] = MSR_EE;
      _zz_348_[0 : 0] = MSR_LE;
    end
  end

  always @ (*) begin
    _zz_349_ = 32'h0;
    if(execute_SPRPLUGIN_SPR_26)begin
      _zz_349_[31 : 0] = SPRPlugin_srr0;
    end
  end

  always @ (*) begin
    _zz_350_ = 32'h0;
    if(execute_SPRPLUGIN_SPR_27)begin
      _zz_350_[31 : 0] = SPRPlugin_srr1;
    end
  end

  always @ (*) begin
    _zz_351_ = 32'h0;
    if(execute_SPRPLUGIN_SPR_19)begin
      _zz_351_[31 : 0] = SPRPlugin_dar;
    end
  end

  always @ (*) begin
    _zz_352_ = 32'h0;
    if(execute_SPRPLUGIN_SPR_259)begin
      _zz_352_[31 : 0] = SPRPlugin_sprg3;
    end
  end

  always @ (*) begin
    _zz_353_ = 32'h0;
    if(execute_SPRPLUGIN_SPR_18)begin
      _zz_353_[31 : 0] = SPRPlugin_dsisr;
    end
  end

  always @ (*) begin
    _zz_354_ = 32'h0;
    if(execute_SPRPLUGIN_SPR_268)begin
      _zz_354_[31 : 0] = SPRPlugin_tb;
    end
  end

  always @ (*) begin
    _zz_355_ = 32'h0;
    if(execute_SPRPLUGIN_SPR_22)begin
      _zz_355_[31 : 0] = SPRPlugin_dec;
    end
  end

  assign execute_SPRPLUGIN_readData = (((_zz_348_ | _zz_349_) | (_zz_350_ | _zz_351_)) | ((_zz_352_ | _zz_353_) | (_zz_354_ | _zz_355_)));
  assign iBusWB_ADR = {_zz_655_,_zz_356_};
  assign iBusWB_CTI = ((_zz_356_ == (3'b111)) ? (3'b111) : (3'b010));
  assign iBusWB_BTE = (2'b00);
  assign iBusWB_SEL = (4'b1111);
  assign iBusWB_WE = 1'b0;
  assign iBusWB_DAT_MOSI = 32'h0;
  always @ (*) begin
    iBusWB_CYC = 1'b0;
    if(_zz_436_)begin
      iBusWB_CYC = 1'b1;
    end
  end

  always @ (*) begin
    iBusWB_STB = 1'b0;
    if(_zz_436_)begin
      iBusWB_STB = 1'b1;
    end
  end

  assign iBus_cmd_ready = (iBus_cmd_valid && iBusWB_ACK);
  assign iBus_rsp_valid = _zz_357_;
  assign iBus_rsp_payload_data = iBusWB_DAT_MISO_regNext;
  assign iBus_rsp_payload_error = 1'b0;
  assign _zz_363_ = (dBus_cmd_payload_length != (3'b000));
  assign _zz_359_ = dBus_cmd_valid;
  assign _zz_361_ = dBus_cmd_payload_wr;
  assign _zz_362_ = (_zz_358_ == dBus_cmd_payload_length);
  assign dBus_cmd_ready = (_zz_360_ && (_zz_361_ || _zz_362_));
  assign dBusWB_ADR = ((_zz_363_ ? {{dBus_cmd_payload_address[31 : 5],_zz_358_},(2'b00)} : {dBus_cmd_payload_address[31 : 2],(2'b00)}) >>> 2);
  assign dBusWB_CTI = (_zz_363_ ? (_zz_362_ ? (3'b111) : (3'b010)) : (3'b000));
  assign dBusWB_BTE = (2'b00);
  assign dBusWB_SEL = (_zz_361_ ? dBus_cmd_payload_mask : (4'b1111));
  assign dBusWB_WE = _zz_361_;
  assign dBusWB_DAT_MOSI = dBus_cmd_payload_data;
  assign _zz_360_ = (_zz_359_ && dBusWB_ACK);
  assign dBusWB_CYC = _zz_359_;
  assign dBusWB_STB = _zz_359_;
  assign dBus_rsp_valid = _zz_364_;
  assign dBus_rsp_payload_data = dBusWB_DAT_MISO_regNext;
  assign dBus_rsp_payload_error = 1'b0;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      IBusCachedPlugin_fetchPc_pcReg <= externalResetVector;
      IBusCachedPlugin_fetchPc_correctionReg <= 1'b0;
      IBusCachedPlugin_fetchPc_booted <= 1'b0;
      IBusCachedPlugin_fetchPc_inc <= 1'b0;
      _zz_140_ <= 1'b0;
      _zz_143_ <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      IBusCachedPlugin_rspCounter <= _zz_147_;
      IBusCachedPlugin_rspCounter <= 32'h0;
      dataCache_1__io_mem_cmd_m2sPipe_rValid <= 1'b0;
      DBusCachedPlugin_rspCounter <= _zz_148_;
      DBusCachedPlugin_rspCounter <= 32'h0;
      _zz_239_ <= 1'b1;
      ALU2_XER <= 32'h0;
      MULDIV1_counter_value <= 6'h0;
      Hazards_writeBackBuffer_valid <= 1'b0;
      execute_BranchPlugin_CR <= 32'h0;
      execute_BranchPlugin_CTR <= 32'h0;
      execute_BranchPlugin_LR <= 32'h0;
      execute_BranchPlugin_TAR <= 32'h0;
      MSR_VEC <= 1'b0;
      MSR_VSX <= 1'b0;
      MSR_EE <= 1'b0;
      MSR_PR <= 1'b0;
      MSR_FP <= 1'b0;
      MSR_ME <= 1'b0;
      MSR_FE0 <= 1'b0;
      MSR_FE1 <= 1'b0;
      MSR_IR <= 1'b0;
      MSR_DR <= 1'b0;
      MSR_PMM <= 1'b0;
      MSR_RI <= 1'b0;
      MSR_LE <= 1'b0;
      SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= 1'b0;
      SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= 1'b0;
      SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= 1'b0;
      SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= 1'b0;
      SPRPlugin_interrupt_valid <= 1'b0;
      SPRPlugin_pipelineLiberator_pcValids_0 <= 1'b0;
      SPRPlugin_pipelineLiberator_pcValids_1 <= 1'b0;
      SPRPlugin_pipelineLiberator_pcValids_2 <= 1'b0;
      SPRPlugin_hadException <= 1'b0;
      execute_arbitration_isValid <= 1'b0;
      memory_arbitration_isValid <= 1'b0;
      writeBack_arbitration_isValid <= 1'b0;
      memory_to_writeBack_REGFILE_WRITE_DATA <= 32'h0;
      memory_to_writeBack_INSTRUCTION <= 32'h0;
      _zz_356_ <= (3'b000);
      _zz_357_ <= 1'b0;
      _zz_358_ <= (3'b000);
      _zz_364_ <= 1'b0;
    end else begin
      if(IBusCachedPlugin_fetchPc_correction)begin
        IBusCachedPlugin_fetchPc_correctionReg <= 1'b1;
      end
      if((IBusCachedPlugin_fetchPc_output_valid && IBusCachedPlugin_fetchPc_output_ready))begin
        IBusCachedPlugin_fetchPc_correctionReg <= 1'b0;
      end
      IBusCachedPlugin_fetchPc_booted <= 1'b1;
      if((IBusCachedPlugin_fetchPc_correction || IBusCachedPlugin_fetchPc_pcRegPropagate))begin
        IBusCachedPlugin_fetchPc_inc <= 1'b0;
      end
      if((IBusCachedPlugin_fetchPc_output_valid && IBusCachedPlugin_fetchPc_output_ready))begin
        IBusCachedPlugin_fetchPc_inc <= 1'b1;
      end
      if(((! IBusCachedPlugin_fetchPc_output_valid) && IBusCachedPlugin_fetchPc_output_ready))begin
        IBusCachedPlugin_fetchPc_inc <= 1'b0;
      end
      if((IBusCachedPlugin_fetchPc_booted && ((IBusCachedPlugin_fetchPc_output_ready || IBusCachedPlugin_fetchPc_correction) || IBusCachedPlugin_fetchPc_pcRegPropagate)))begin
        IBusCachedPlugin_fetchPc_pcReg <= IBusCachedPlugin_fetchPc_pc;
      end
      if(IBusCachedPlugin_iBusRsp_flush)begin
        _zz_140_ <= 1'b0;
      end
      if(IBusCachedPlugin_iBusRsp_stages_0_output_ready)begin
        _zz_140_ <= (IBusCachedPlugin_iBusRsp_stages_0_output_valid && (! 1'b0));
      end
      if(IBusCachedPlugin_iBusRsp_flush)begin
        _zz_143_ <= 1'b0;
      end
      if(IBusCachedPlugin_iBusRsp_stages_1_output_ready)begin
        _zz_143_ <= (IBusCachedPlugin_iBusRsp_stages_1_output_valid && (! IBusCachedPlugin_iBusRsp_flush));
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      end
      if((! (! IBusCachedPlugin_iBusRsp_stages_1_input_ready)))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b1;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      end
      if((! (! IBusCachedPlugin_iBusRsp_stages_2_input_ready)))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_1 <= IBusCachedPlugin_injector_nextPcCalc_valids_0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      end
      if((! execute_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= IBusCachedPlugin_injector_nextPcCalc_valids_1;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      end
      if((! memory_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= IBusCachedPlugin_injector_nextPcCalc_valids_2;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      end
      if((! writeBack_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= IBusCachedPlugin_injector_nextPcCalc_valids_3;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      end
      if(iBus_rsp_valid)begin
        IBusCachedPlugin_rspCounter <= (IBusCachedPlugin_rspCounter + 32'h00000001);
      end
      if(_zz_386_)begin
        dataCache_1__io_mem_cmd_m2sPipe_rValid <= dataCache_1__io_mem_cmd_valid;
      end
      if(dBus_rsp_valid)begin
        DBusCachedPlugin_rspCounter <= (DBusCachedPlugin_rspCounter + 32'h00000001);
      end
      _zz_239_ <= 1'b0;
      ALU2_XER[31 : 29] <= ALU2_XER[31 : 29];
      if(_zz_243_)begin
        if(_zz_240_)begin
          ALU2_XER[30] <= _zz_242_[1];
          ALU2_XER[31] <= (ALU2_XER[31] || _zz_242_[1]);
        end
        if(_zz_241_)begin
          ALU2_XER[29] <= _zz_242_[0];
        end
      end
      if(writeBack_RegFilePlugin_sprWriteXERPort_valid)begin
        ALU2_XER <= writeBack_RegFilePlugin_sprWriteXERPort_payload_data;
      end
      MULDIV1_counter_value <= MULDIV1_counter_valueNext;
      Hazards_writeBackBuffer_valid <= Hazards_writeBackWrites_valid;
      if(writeBack_RegFilePlugin_sprWriteCLTPort_valid)begin
        case(writeBack_RegFilePlugin_sprWriteCLTPort_payload_id)
          10'b0000001001 : begin
            execute_BranchPlugin_CTR <= writeBack_RegFilePlugin_sprWriteCLTPort_payload_data;
          end
          10'b0000001000 : begin
            execute_BranchPlugin_LR <= writeBack_RegFilePlugin_sprWriteCLTPort_payload_data;
          end
          10'b1100101111 : begin
            execute_BranchPlugin_TAR <= writeBack_RegFilePlugin_sprWriteCLTPort_payload_data;
          end
          default : begin
          end
        endcase
      end
      if(execute_BranchPlugin_crBusPort_valid)begin
        case(execute_BranchPlugin_crBusPort_op)
          `CRBusCmdEnum_defaultEncoding_CR0 : begin
            execute_BranchPlugin_CR[31 : 28] <= execute_BranchPlugin_crBusPort_imm[3 : 0];
          end
          `CRBusCmdEnum_defaultEncoding_CR1 : begin
            execute_BranchPlugin_CR[27 : 24] <= execute_BranchPlugin_crBusPort_imm[3 : 0];
          end
          `CRBusCmdEnum_defaultEncoding_CR6 : begin
            execute_BranchPlugin_CR[7 : 4] <= execute_BranchPlugin_crBusPort_imm[3 : 0];
          end
          `CRBusCmdEnum_defaultEncoding_CMP : begin
            if(execute_BranchPlugin_crBusPort_fxm[7])begin
              execute_BranchPlugin_CR[31 : 28] <= execute_BranchPlugin_crBusPort_imm[3 : 0];
            end
            if(execute_BranchPlugin_crBusPort_fxm[6])begin
              execute_BranchPlugin_CR[27 : 24] <= execute_BranchPlugin_crBusPort_imm[3 : 0];
            end
            if(execute_BranchPlugin_crBusPort_fxm[5])begin
              execute_BranchPlugin_CR[23 : 20] <= execute_BranchPlugin_crBusPort_imm[3 : 0];
            end
            if(execute_BranchPlugin_crBusPort_fxm[4])begin
              execute_BranchPlugin_CR[19 : 16] <= execute_BranchPlugin_crBusPort_imm[3 : 0];
            end
            if(execute_BranchPlugin_crBusPort_fxm[3])begin
              execute_BranchPlugin_CR[15 : 12] <= execute_BranchPlugin_crBusPort_imm[3 : 0];
            end
            if(execute_BranchPlugin_crBusPort_fxm[2])begin
              execute_BranchPlugin_CR[11 : 8] <= execute_BranchPlugin_crBusPort_imm[3 : 0];
            end
            if(execute_BranchPlugin_crBusPort_fxm[1])begin
              execute_BranchPlugin_CR[7 : 4] <= execute_BranchPlugin_crBusPort_imm[3 : 0];
            end
            if(execute_BranchPlugin_crBusPort_fxm[0])begin
              execute_BranchPlugin_CR[3 : 0] <= execute_BranchPlugin_crBusPort_imm[3 : 0];
            end
          end
          `CRBusCmdEnum_defaultEncoding_AND_1 : begin
            execute_BranchPlugin_CR[_zz_580_] <= (execute_BranchPlugin_CR[_zz_581_] && execute_BranchPlugin_CR[_zz_582_]);
          end
          `CRBusCmdEnum_defaultEncoding_OR_1 : begin
            execute_BranchPlugin_CR[_zz_583_] <= (execute_BranchPlugin_CR[_zz_584_] || execute_BranchPlugin_CR[_zz_585_]);
          end
          `CRBusCmdEnum_defaultEncoding_XOR_1 : begin
            execute_BranchPlugin_CR[_zz_586_] <= (execute_BranchPlugin_CR[_zz_587_] ^ execute_BranchPlugin_CR[_zz_588_]);
          end
          `CRBusCmdEnum_defaultEncoding_NAND_1 : begin
            execute_BranchPlugin_CR[_zz_589_] <= (! (execute_BranchPlugin_CR[_zz_590_] && execute_BranchPlugin_CR[_zz_591_]));
          end
          `CRBusCmdEnum_defaultEncoding_NOR_1 : begin
            execute_BranchPlugin_CR[_zz_592_] <= (! (execute_BranchPlugin_CR[_zz_593_] || execute_BranchPlugin_CR[_zz_594_]));
          end
          `CRBusCmdEnum_defaultEncoding_EQV : begin
            execute_BranchPlugin_CR[_zz_595_] <= (! (execute_BranchPlugin_CR[_zz_596_] ^ execute_BranchPlugin_CR[_zz_597_]));
          end
          `CRBusCmdEnum_defaultEncoding_ANDC : begin
            execute_BranchPlugin_CR[_zz_598_] <= (execute_BranchPlugin_CR[_zz_599_] && (! execute_BranchPlugin_CR[_zz_600_]));
          end
          `CRBusCmdEnum_defaultEncoding_ORC : begin
            execute_BranchPlugin_CR[_zz_601_] <= (execute_BranchPlugin_CR[_zz_602_] || (! execute_BranchPlugin_CR[_zz_603_]));
          end
          `CRBusCmdEnum_defaultEncoding_MCRF : begin
            case(execute_BranchPlugin_crBusPort_bt)
              5'b00000 : begin
                execute_BranchPlugin_CR[31 : 28] <= _zz_325_;
              end
              5'b00001 : begin
                execute_BranchPlugin_CR[27 : 24] <= _zz_325_;
              end
              5'b00010 : begin
                execute_BranchPlugin_CR[23 : 20] <= _zz_325_;
              end
              5'b00011 : begin
                execute_BranchPlugin_CR[19 : 16] <= _zz_325_;
              end
              5'b00100 : begin
                execute_BranchPlugin_CR[15 : 12] <= _zz_325_;
              end
              5'b00101 : begin
                execute_BranchPlugin_CR[11 : 8] <= _zz_325_;
              end
              5'b00110 : begin
                execute_BranchPlugin_CR[7 : 4] <= _zz_325_;
              end
              5'b00111 : begin
                execute_BranchPlugin_CR[3 : 0] <= _zz_325_;
              end
              default : begin
              end
            endcase
          end
          `CRBusCmdEnum_defaultEncoding_MCRXRX : begin
            case(execute_BranchPlugin_crBusPort_bt)
              5'b00000 : begin
                execute_BranchPlugin_CR[31 : 28] <= _zz_326_;
              end
              5'b00001 : begin
                execute_BranchPlugin_CR[27 : 24] <= _zz_326_;
              end
              5'b00010 : begin
                execute_BranchPlugin_CR[23 : 20] <= _zz_326_;
              end
              5'b00011 : begin
                execute_BranchPlugin_CR[19 : 16] <= _zz_326_;
              end
              5'b00100 : begin
                execute_BranchPlugin_CR[15 : 12] <= _zz_326_;
              end
              5'b00101 : begin
                execute_BranchPlugin_CR[11 : 8] <= _zz_326_;
              end
              5'b00110 : begin
                execute_BranchPlugin_CR[7 : 4] <= _zz_326_;
              end
              5'b00111 : begin
                execute_BranchPlugin_CR[3 : 0] <= _zz_326_;
              end
              default : begin
              end
            endcase
          end
          `CRBusCmdEnum_defaultEncoding_MTCRF : begin
            if(execute_BranchPlugin_crBusPort_fxm[7])begin
              execute_BranchPlugin_CR[31 : 28] <= execute_BranchPlugin_crBusPort_imm[31 : 28];
            end
            if(execute_BranchPlugin_crBusPort_fxm[6])begin
              execute_BranchPlugin_CR[27 : 24] <= execute_BranchPlugin_crBusPort_imm[27 : 24];
            end
            if(execute_BranchPlugin_crBusPort_fxm[5])begin
              execute_BranchPlugin_CR[23 : 20] <= execute_BranchPlugin_crBusPort_imm[23 : 20];
            end
            if(execute_BranchPlugin_crBusPort_fxm[4])begin
              execute_BranchPlugin_CR[19 : 16] <= execute_BranchPlugin_crBusPort_imm[19 : 16];
            end
            if(execute_BranchPlugin_crBusPort_fxm[3])begin
              execute_BranchPlugin_CR[15 : 12] <= execute_BranchPlugin_crBusPort_imm[15 : 12];
            end
            if(execute_BranchPlugin_crBusPort_fxm[2])begin
              execute_BranchPlugin_CR[11 : 8] <= execute_BranchPlugin_crBusPort_imm[11 : 8];
            end
            if(execute_BranchPlugin_crBusPort_fxm[1])begin
              execute_BranchPlugin_CR[7 : 4] <= execute_BranchPlugin_crBusPort_imm[7 : 4];
            end
            if(execute_BranchPlugin_crBusPort_fxm[0])begin
              execute_BranchPlugin_CR[3 : 0] <= execute_BranchPlugin_crBusPort_imm[3 : 0];
            end
          end
          `CRBusCmdEnum_defaultEncoding_MTOCRF : begin
            if(execute_BranchPlugin_crBusPort_fxm[7])begin
              execute_BranchPlugin_CR[31 : 28] <= execute_BranchPlugin_crBusPort_imm[31 : 28];
            end
            if(execute_BranchPlugin_crBusPort_fxm[6])begin
              execute_BranchPlugin_CR[27 : 24] <= execute_BranchPlugin_crBusPort_imm[27 : 24];
            end
            if(execute_BranchPlugin_crBusPort_fxm[5])begin
              execute_BranchPlugin_CR[23 : 20] <= execute_BranchPlugin_crBusPort_imm[23 : 20];
            end
            if(execute_BranchPlugin_crBusPort_fxm[4])begin
              execute_BranchPlugin_CR[19 : 16] <= execute_BranchPlugin_crBusPort_imm[19 : 16];
            end
            if(execute_BranchPlugin_crBusPort_fxm[3])begin
              execute_BranchPlugin_CR[15 : 12] <= execute_BranchPlugin_crBusPort_imm[15 : 12];
            end
            if(execute_BranchPlugin_crBusPort_fxm[2])begin
              execute_BranchPlugin_CR[11 : 8] <= execute_BranchPlugin_crBusPort_imm[11 : 8];
            end
            if(execute_BranchPlugin_crBusPort_fxm[1])begin
              execute_BranchPlugin_CR[7 : 4] <= execute_BranchPlugin_crBusPort_imm[7 : 4];
            end
            if(execute_BranchPlugin_crBusPort_fxm[0])begin
              execute_BranchPlugin_CR[3 : 0] <= execute_BranchPlugin_crBusPort_imm[3 : 0];
            end
          end
          `CRBusCmdEnum_defaultEncoding_DEC : begin
            execute_BranchPlugin_CTR <= (execute_BranchPlugin_CTR - 32'h00000001);
          end
          `CRBusCmdEnum_defaultEncoding_LNK : begin
            execute_BranchPlugin_LR <= execute_BranchPlugin_crBusPort_imm;
          end
          `CRBusCmdEnum_defaultEncoding_DECLNK : begin
            execute_BranchPlugin_CTR <= (execute_BranchPlugin_CTR - 32'h00000001);
            execute_BranchPlugin_LR <= execute_BranchPlugin_crBusPort_imm;
          end
          default : begin
          end
        endcase
      end
      if((! decode_arbitration_isStuck))begin
        SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= 1'b0;
      end else begin
        SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= SPRPlugin_exceptionPortCtrl_exceptionValids_decode;
      end
      if((! execute_arbitration_isStuck))begin
        SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= (SPRPlugin_exceptionPortCtrl_exceptionValids_decode && (! decode_arbitration_isStuck));
      end else begin
        SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= SPRPlugin_exceptionPortCtrl_exceptionValids_execute;
      end
      if((! memory_arbitration_isStuck))begin
        SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= (SPRPlugin_exceptionPortCtrl_exceptionValids_execute && (! execute_arbitration_isStuck));
      end else begin
        SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= SPRPlugin_exceptionPortCtrl_exceptionValids_memory;
      end
      if((! writeBack_arbitration_isStuck))begin
        SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= (SPRPlugin_exceptionPortCtrl_exceptionValids_memory && (! memory_arbitration_isStuck));
      end else begin
        SPRPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= 1'b0;
      end
      SPRPlugin_interrupt_valid <= 1'b0;
      if(_zz_437_)begin
        if(_zz_438_)begin
          SPRPlugin_interrupt_valid <= 1'b1;
        end
      end
      if(SPRPlugin_pipelineLiberator_active)begin
        if((! execute_arbitration_isStuck))begin
          SPRPlugin_pipelineLiberator_pcValids_0 <= 1'b1;
        end
        if((! memory_arbitration_isStuck))begin
          SPRPlugin_pipelineLiberator_pcValids_1 <= SPRPlugin_pipelineLiberator_pcValids_0;
        end
        if((! writeBack_arbitration_isStuck))begin
          SPRPlugin_pipelineLiberator_pcValids_2 <= SPRPlugin_pipelineLiberator_pcValids_1;
        end
      end
      if(((! SPRPlugin_pipelineLiberator_active) || decode_arbitration_removeIt))begin
        SPRPlugin_pipelineLiberator_pcValids_0 <= 1'b0;
        SPRPlugin_pipelineLiberator_pcValids_1 <= 1'b0;
        SPRPlugin_pipelineLiberator_pcValids_2 <= 1'b0;
      end
      SPRPlugin_hadException <= SPRPlugin_exception;
      if(_zz_435_)begin
        if(SPRPlugin_interruptJump)begin
          SPRPlugin_interrupt_valid <= 1'b0;
        end
      end
      if(_zz_406_)begin
        MSR_VEC <= 1'b0;
        MSR_VSX <= 1'b0;
        MSR_EE <= 1'b0;
        MSR_PR <= 1'b0;
        MSR_FP <= 1'b0;
        MSR_ME <= 1'b0;
        MSR_FE0 <= 1'b0;
        MSR_FE1 <= 1'b0;
        MSR_IR <= 1'b0;
        MSR_DR <= 1'b0;
        MSR_PMM <= 1'b0;
        MSR_RI <= 1'b0;
      end
      if(_zz_408_)begin
        MSR_VEC <= 1'b0;
        MSR_VSX <= 1'b0;
        MSR_EE <= 1'b0;
        MSR_PR <= 1'b0;
        MSR_FP <= 1'b0;
        MSR_ME <= 1'b0;
        MSR_FE0 <= 1'b0;
        MSR_FE1 <= 1'b0;
        MSR_IR <= 1'b0;
        MSR_DR <= 1'b0;
        MSR_PMM <= 1'b0;
        MSR_RI <= 1'b0;
      end
      if(_zz_409_)begin
        MSR_VEC <= 1'b0;
        MSR_VSX <= 1'b0;
        MSR_EE <= 1'b0;
        MSR_PR <= 1'b0;
        MSR_FP <= 1'b0;
        MSR_ME <= 1'b0;
        MSR_FE0 <= 1'b0;
        MSR_FE1 <= 1'b0;
        MSR_IR <= 1'b0;
        MSR_DR <= 1'b0;
        MSR_PMM <= 1'b0;
        MSR_RI <= 1'b0;
      end
      if(_zz_411_)begin
        MSR_VEC <= SPRPlugin_srr1[25];
        MSR_VSX <= SPRPlugin_srr1[23];
        MSR_EE <= SPRPlugin_srr1[15];
        MSR_PR <= SPRPlugin_srr1[14];
        MSR_FP <= SPRPlugin_srr1[13];
        MSR_ME <= SPRPlugin_srr1[12];
        MSR_FE0 <= SPRPlugin_srr1[11];
        MSR_FE1 <= SPRPlugin_srr1[8];
        MSR_IR <= SPRPlugin_srr1[5];
        MSR_DR <= SPRPlugin_srr1[4];
        MSR_PMM <= SPRPlugin_srr1[2];
        MSR_RI <= SPRPlugin_srr1[1];
        MSR_LE <= SPRPlugin_srr1[0];
      end
      if((! writeBack_arbitration_isStuck))begin
        memory_to_writeBack_REGFILE_WRITE_DATA <= _zz_71_;
      end
      if((! writeBack_arbitration_isStuck))begin
        memory_to_writeBack_INSTRUCTION <= memory_INSTRUCTION;
      end
      if(((! execute_arbitration_isStuck) || execute_arbitration_removeIt))begin
        execute_arbitration_isValid <= 1'b0;
      end
      if(((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt)))begin
        execute_arbitration_isValid <= decode_arbitration_isValid;
      end
      if(((! memory_arbitration_isStuck) || memory_arbitration_removeIt))begin
        memory_arbitration_isValid <= 1'b0;
      end
      if(((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt)))begin
        memory_arbitration_isValid <= execute_arbitration_isValid;
      end
      if(((! writeBack_arbitration_isStuck) || writeBack_arbitration_removeIt))begin
        writeBack_arbitration_isValid <= 1'b0;
      end
      if(((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt)))begin
        writeBack_arbitration_isValid <= memory_arbitration_isValid;
      end
      if(execute_SPRPLUGIN_SPR_1025)begin
        if(execute_SPRPLUGIN_writeEnable)begin
          MSR_VSX <= _zz_642_[0];
          MSR_FE1 <= _zz_643_[0];
          MSR_FE0 <= _zz_644_[0];
          MSR_PMM <= _zz_645_[0];
          MSR_IR <= _zz_646_[0];
          MSR_PR <= _zz_647_[0];
          MSR_FP <= _zz_648_[0];
          MSR_DR <= _zz_649_[0];
          MSR_VEC <= _zz_650_[0];
          MSR_RI <= _zz_651_[0];
          MSR_ME <= _zz_652_[0];
          MSR_EE <= _zz_653_[0];
          MSR_LE <= _zz_654_[0];
        end
      end
      if(_zz_436_)begin
        if(iBusWB_ACK)begin
          _zz_356_ <= (_zz_356_ + (3'b001));
        end
      end
      _zz_357_ <= (iBusWB_CYC && iBusWB_ACK);
      if((_zz_359_ && _zz_360_))begin
        _zz_358_ <= (_zz_358_ + (3'b001));
        if(_zz_362_)begin
          _zz_358_ <= (3'b000);
        end
      end
      _zz_364_ <= ((_zz_359_ && (! dBusWB_WE)) && dBusWB_ACK);
    end
  end

  always @ (posedge clk) begin
    if(IBusCachedPlugin_iBusRsp_stages_0_output_ready)begin
      _zz_141_ <= IBusCachedPlugin_iBusRsp_stages_0_output_payload;
    end
    if(IBusCachedPlugin_iBusRsp_stages_1_output_ready)begin
      _zz_144_ <= IBusCachedPlugin_iBusRsp_stages_1_output_payload;
    end
    if(IBusCachedPlugin_iBusRsp_stages_0_output_ready)begin
      IBusCachedPlugin_predictor_writeLast_valid <= IBusCachedPlugin_predictor_historyWriteDelayPatched_valid;
      IBusCachedPlugin_predictor_writeLast_payload_address <= IBusCachedPlugin_predictor_historyWriteDelayPatched_payload_address;
      IBusCachedPlugin_predictor_writeLast_payload_data_source <= IBusCachedPlugin_predictor_historyWriteDelayPatched_payload_data_source;
      IBusCachedPlugin_predictor_writeLast_payload_data_branchWish <= IBusCachedPlugin_predictor_historyWriteDelayPatched_payload_data_branchWish;
      IBusCachedPlugin_predictor_writeLast_payload_data_target <= IBusCachedPlugin_predictor_historyWriteDelayPatched_payload_data_target;
    end
    if(IBusCachedPlugin_iBusRsp_stages_0_input_ready)begin
      IBusCachedPlugin_predictor_buffer_pcCorrected <= IBusCachedPlugin_fetchPc_corrected;
    end
    if(IBusCachedPlugin_iBusRsp_stages_0_output_ready)begin
      IBusCachedPlugin_predictor_line_source <= IBusCachedPlugin_predictor_buffer_line_source;
      IBusCachedPlugin_predictor_line_branchWish <= IBusCachedPlugin_predictor_buffer_line_branchWish;
      IBusCachedPlugin_predictor_line_target <= IBusCachedPlugin_predictor_buffer_line_target;
    end
    if(IBusCachedPlugin_iBusRsp_stages_0_output_ready)begin
      IBusCachedPlugin_predictor_buffer_hazard_regNextWhen <= IBusCachedPlugin_predictor_buffer_hazard;
    end
    if(IBusCachedPlugin_iBusRsp_stages_1_output_ready)begin
      IBusCachedPlugin_predictor_iBusRspContext_hazard <= IBusCachedPlugin_predictor_fetchContext_hazard;
      IBusCachedPlugin_predictor_iBusRspContext_hit <= IBusCachedPlugin_predictor_fetchContext_hit;
      IBusCachedPlugin_predictor_iBusRspContext_line_source <= IBusCachedPlugin_predictor_fetchContext_line_source;
      IBusCachedPlugin_predictor_iBusRspContext_line_branchWish <= IBusCachedPlugin_predictor_fetchContext_line_branchWish;
      IBusCachedPlugin_predictor_iBusRspContext_line_target <= IBusCachedPlugin_predictor_fetchContext_line_target;
    end
    if(IBusCachedPlugin_iBusRsp_stages_1_input_ready)begin
      IBusCachedPlugin_s1_tightlyCoupledHit <= IBusCachedPlugin_s0_tightlyCoupledHit;
    end
    if(IBusCachedPlugin_iBusRsp_stages_2_input_ready)begin
      IBusCachedPlugin_s2_tightlyCoupledHit <= IBusCachedPlugin_s1_tightlyCoupledHit;
    end
    if(_zz_386_)begin
      dataCache_1__io_mem_cmd_m2sPipe_rData_wr <= dataCache_1__io_mem_cmd_payload_wr;
      dataCache_1__io_mem_cmd_m2sPipe_rData_address <= dataCache_1__io_mem_cmd_payload_address;
      dataCache_1__io_mem_cmd_m2sPipe_rData_data <= dataCache_1__io_mem_cmd_payload_data;
      dataCache_1__io_mem_cmd_m2sPipe_rData_mask <= dataCache_1__io_mem_cmd_payload_mask;
      dataCache_1__io_mem_cmd_m2sPipe_rData_length <= dataCache_1__io_mem_cmd_payload_length;
      dataCache_1__io_mem_cmd_m2sPipe_rData_last <= dataCache_1__io_mem_cmd_payload_last;
    end
    _zz_267_ <= (writeBack_arbitration_isFiring && writeBack_DECODER_stageables_8);
    _zz_268_ <= writeBack_LOAD_UPDATE_ADDR;
    _zz_269_ <= writeBack_LOAD_UPDATE_DATA;
    if((MULDIV1_counter_value == 6'h20))begin
      MULDIV1_done <= 1'b1;
    end
    if((! memory_arbitration_isStuck))begin
      MULDIV1_done <= 1'b0;
    end
    if(_zz_397_)begin
      if(_zz_420_)begin
        MULDIV_rs1[31 : 0] <= MULDIV1_stage_0_outNumerator;
        MULDIV_accumulator[31 : 0] <= MULDIV1_stage_0_outRemainder;
        if((MULDIV1_counter_value == 6'h20))begin
          MULDIV1_result <= _zz_571_[31:0];
        end
      end
    end
    if(_zz_421_)begin
      MULDIV_accumulator <= 65'h0;
      MULDIV_rs1 <= ((_zz_279_ ? (~ _zz_280_) : _zz_280_) + _zz_577_);
      MULDIV_rs2 <= ((_zz_278_ ? (~ execute_SRC2) : execute_SRC2) + _zz_579_);
      MULDIV1_needRevert <= ((_zz_279_ ^ _zz_278_) && (! ((execute_SRC2 == 32'h0) && execute_DECODER_stageables_37)));
    end
    Hazards_writeBackBuffer_payload_address <= Hazards_writeBackWrites_payload_address;
    Hazards_writeBackBuffer_payload_data <= Hazards_writeBackWrites_payload_data;
    SPRPlugin_dec31Prev <= SPRPlugin_dec[31];
    if((SPRPlugin_dec31Prev && (! SPRPlugin_dec[31])))begin
      SPRPlugin_intDec <= 1'b0;
    end else begin
      if(((! SPRPlugin_dec31Prev) && SPRPlugin_dec[31]))begin
        SPRPlugin_intDec <= 1'b1;
      end else begin
        if(SPRPlugin_intDecTkn)begin
          SPRPlugin_intDec <= 1'b0;
        end
      end
    end
    if(writeBack_arbitration_isFiring)begin
      SPRPlugin_minstret <= (SPRPlugin_minstret + 32'h00000001);
    end
    if(_zz_405_)begin
      SPRPlugin_exceptionPortCtrl_exceptionContext_code <= (_zz_337_ ? IBusCachedPlugin_decodeExceptionPort_payload_code : decodeExceptionPort_payload_code);
      SPRPlugin_exceptionPortCtrl_exceptionContext_badAddr <= (_zz_337_ ? IBusCachedPlugin_decodeExceptionPort_payload_badAddr : decodeExceptionPort_payload_badAddr);
      SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC <= _zz_335_;
      SPRPlugin_exceptionPortCtrl_exceptionContext_imm <= (_zz_337_ ? IBusCachedPlugin_decodeExceptionPort_payload_imm : decodeExceptionPort_payload_imm);
    end
    if(SPRPlugin_selfException_valid)begin
      SPRPlugin_exceptionPortCtrl_exceptionContext_code <= SPRPlugin_selfException_payload_code;
      SPRPlugin_exceptionPortCtrl_exceptionContext_badAddr <= SPRPlugin_selfException_payload_badAddr;
      SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC <= SPRPlugin_selfException_payload_codePPC;
      SPRPlugin_exceptionPortCtrl_exceptionContext_imm <= SPRPlugin_selfException_payload_imm;
    end
    if(BranchPlugin_branchExceptionPort_valid)begin
      SPRPlugin_exceptionPortCtrl_exceptionContext_code <= BranchPlugin_branchExceptionPort_payload_code;
      SPRPlugin_exceptionPortCtrl_exceptionContext_badAddr <= BranchPlugin_branchExceptionPort_payload_badAddr;
      SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC <= BranchPlugin_branchExceptionPort_payload_codePPC;
      SPRPlugin_exceptionPortCtrl_exceptionContext_imm <= BranchPlugin_branchExceptionPort_payload_imm;
    end
    if(DBusCachedPlugin_exceptionBus_valid)begin
      SPRPlugin_exceptionPortCtrl_exceptionContext_code <= DBusCachedPlugin_exceptionBus_payload_code;
      SPRPlugin_exceptionPortCtrl_exceptionContext_badAddr <= DBusCachedPlugin_exceptionBus_payload_badAddr;
      SPRPlugin_exceptionPortCtrl_exceptionContext_codePPC <= DBusCachedPlugin_exceptionBus_payload_codePPC;
      SPRPlugin_exceptionPortCtrl_exceptionContext_imm <= DBusCachedPlugin_exceptionBus_payload_imm;
    end
    if(_zz_437_)begin
      if(_zz_438_)begin
        SPRPlugin_interrupt_code <= (4'b1001);
        SPRPlugin_interrupt_targetPrivilege <= (2'b11);
      end
    end
    SPRPlugin_darSave <= writeBack_SRC_ADD;
    if(_zz_406_)begin
      SPRPlugin_srr0 <= SPRPlugin_intSRR0;
      SPRPlugin_srr1 <= {{{{{{{{{{{{_zz_1548_,_zz_1549_},MSR_ME},MSR_FE0},(2'b00)},MSR_FE1},(2'b00)},MSR_IR},MSR_DR},(1'b0)},MSR_PMM},MSR_RI},MSR_LE};
      if((SPRPlugin_intType == `ExcpEnum_defaultEncoding_PGM_ILL))begin
        SPRPlugin_srr1[19] <= 1'b1;
      end
      if((SPRPlugin_intType == `ExcpEnum_defaultEncoding_PGM_PRV))begin
        SPRPlugin_srr1[18] <= 1'b1;
      end
      if((SPRPlugin_intType == `ExcpEnum_defaultEncoding_ISI))begin
        SPRPlugin_srr1[30] <= 1'b1;
      end else begin
        if((SPRPlugin_intType == `ExcpEnum_defaultEncoding_ISI_PROT))begin
          SPRPlugin_srr1[29] <= 1'b1;
        end else begin
          if((SPRPlugin_intType == `ExcpEnum_defaultEncoding_DSI))begin
            SPRPlugin_dsisr <= 32'h0;
            SPRPlugin_dsisr[30] <= 1'b1;
            SPRPlugin_dar <= SPRPlugin_darSave;
          end else begin
            if((SPRPlugin_intType == `ExcpEnum_defaultEncoding_DSI_PROT))begin
              SPRPlugin_dsisr <= 32'h0;
              SPRPlugin_dsisr[27] <= 1'b1;
              SPRPlugin_dar <= SPRPlugin_darSave;
            end else begin
              if((SPRPlugin_intType == `ExcpEnum_defaultEncoding_ALG))begin
                SPRPlugin_dar <= SPRPlugin_darSave;
              end
            end
          end
        end
      end
    end
    if(! (execute_SPRPLUGIN_writeEnable && (execute_SPR_ID == 11'h10c))) begin
      if(SPRPlugin_incTB)begin
        SPRPlugin_tb <= (SPRPlugin_tb + 32'h00000001);
      end
    end
    if(! (execute_SPRPLUGIN_writeEnable && (execute_SPR_ID == 11'h016))) begin
      SPRPlugin_dec <= (SPRPlugin_dec - 32'h00000001);
    end
    if(_zz_408_)begin
      SPRPlugin_srr0 <= (writeBack_PC + 32'h00000004);
      SPRPlugin_srr1 <= {{{{{{{{{{{{_zz_1550_,_zz_1551_},MSR_ME},MSR_FE0},(2'b00)},MSR_FE1},(2'b00)},MSR_IR},MSR_DR},(1'b0)},MSR_PMM},MSR_RI},MSR_LE};
    end
    if(_zz_409_)begin
      SPRPlugin_srr0 <= (writeBack_PC + 32'h00000004);
      SPRPlugin_srr1 <= {{{{{{{{{{{{_zz_1552_,_zz_1553_},MSR_ME},MSR_FE0},(2'b00)},MSR_FE1},(2'b00)},MSR_IR},MSR_DR},(1'b0)},MSR_PMM},MSR_RI},MSR_LE};
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_R0_ADDR <= decode_R0_ADDR;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MUL_LOW <= memory_MUL_LOW;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_50 <= _zz_59_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_37 <= decode_DECODER_stageables_37;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_26 <= decode_DECODER_stageables_26;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_43 <= _zz_56_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_34 <= decode_DECODER_stageables_34;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_DECODER_stageables_34 <= execute_DECODER_stageables_34;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_DECODER_stageables_34 <= memory_DECODER_stageables_34;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_48 <= _zz_53_;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_DECODER_stageables_48 <= _zz_62_;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_DECODER_stageables_48 <= _zz_50_;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_CR_FIELD_WR <= execute_CR_FIELD_WR;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_CR_FIELD_WR <= memory_CR_FIELD_WR;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_47 <= decode_DECODER_stageables_47;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_REGFILE_WRITE_DATA <= _zz_70_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_RS <= decode_RS;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_XER_WRITE_validOV <= execute_XER_WRITE_validOV;
      execute_to_memory_XER_WRITE_validCA <= execute_XER_WRITE_validCA;
      execute_to_memory_XER_WRITE_imm <= execute_XER_WRITE_imm;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_XER_WRITE_validOV <= memory_XER_WRITE_validOV;
      memory_to_writeBack_XER_WRITE_validCA <= memory_XER_WRITE_validCA;
      memory_to_writeBack_XER_WRITE_imm <= memory_XER_WRITE_imm;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_12 <= _zz_47_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_54 <= decode_DECODER_stageables_54;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_DECODER_stageables_54 <= execute_DECODER_stageables_54;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_DECODER_stageables_54 <= memory_DECODER_stageables_54;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_ADDRESS_LOW <= execute_MEMORY_ADDRESS_LOW;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MEMORY_ADDRESS_LOW <= memory_MEMORY_ADDRESS_LOW;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_57 <= decode_DECODER_stageables_57;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_CR_WRITE_op <= _zz_45_;
      execute_to_memory_CR_WRITE_ba <= execute_CR_WRITE_ba;
      execute_to_memory_CR_WRITE_bb <= execute_CR_WRITE_bb;
      execute_to_memory_CR_WRITE_bt <= execute_CR_WRITE_bt;
      execute_to_memory_CR_WRITE_imm <= execute_CR_WRITE_imm;
      execute_to_memory_CR_WRITE_fxm <= execute_CR_WRITE_fxm;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_CR_WRITE_op <= _zz_42_;
      memory_to_writeBack_CR_WRITE_ba <= memory_CR_WRITE_ba;
      memory_to_writeBack_CR_WRITE_bb <= memory_CR_WRITE_bb;
      memory_to_writeBack_CR_WRITE_bt <= memory_CR_WRITE_bt;
      memory_to_writeBack_CR_WRITE_imm <= memory_CR_WRITE_imm;
      memory_to_writeBack_CR_WRITE_fxm <= memory_CR_WRITE_fxm;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_XER_SO <= execute_XER_SO;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_XER_SO <= memory_XER_SO;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_RA <= decode_RA;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_53 <= decode_DECODER_stageables_53;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_29 <= decode_DECODER_stageables_29;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_DECODER_stageables_29 <= execute_DECODER_stageables_29;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_DECODER_stageables_29 <= memory_DECODER_stageables_29;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_20 <= decode_DECODER_stageables_20;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MUL_LH <= execute_MUL_LH;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_LOAD_UPDATE_DATA <= execute_LOAD_UPDATE_DATA;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_LOAD_UPDATE_DATA <= memory_LOAD_UPDATE_DATA;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_27 <= decode;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_REGFILE_WRITE_ADDR <= execute_REGFILE_WRITE_ADDR;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_REGFILE_WRITE_ADDR <= memory_REGFILE_WRITE_ADDR;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_51 <= decode_MEMORY_ENABLE;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_DECODER_stageables_51 <= execute_MEMORY_ENABLE;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_DECODER_stageables_51 <= memory_MEMORY_ENABLE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_10 <= decode_DECODER_stageables_10;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_15 <= _zz_40_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_55 <= decode_DECODER_stageables_55;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_DECODER_stageables_55 <= execute_MEMORY_WR;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_DECODER_stageables_55 <= memory_DECODER_stageables_55;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_38 <= decode_DECODER_stageables_38;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_DECODER_stageables_38 <= execute_DECODER_stageables_38;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_DECODER_stageables_38 <= memory_DECODER_stageables_38;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_NEXT_PC2 <= execute_NEXT_PC2;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_BRANCH_DO <= execute_BRANCH_DO;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_14 <= decode_DECODER_stageables_14;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_DECODER_stageables_14 <= execute_DECODER_stageables_14;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_PREDICTION_CONTEXT_hazard <= decode_PREDICTION_CONTEXT_hazard;
      decode_to_execute_PREDICTION_CONTEXT_hit <= decode_PREDICTION_CONTEXT_hit;
      decode_to_execute_PREDICTION_CONTEXT_line_source <= decode_PREDICTION_CONTEXT_line_source;
      decode_to_execute_PREDICTION_CONTEXT_line_branchWish <= decode_PREDICTION_CONTEXT_line_branchWish;
      decode_to_execute_PREDICTION_CONTEXT_line_target <= decode_PREDICTION_CONTEXT_line_target;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_PREDICTION_CONTEXT_hazard <= execute_PREDICTION_CONTEXT_hazard;
      execute_to_memory_PREDICTION_CONTEXT_hit <= execute_PREDICTION_CONTEXT_hit;
      execute_to_memory_PREDICTION_CONTEXT_line_source <= execute_PREDICTION_CONTEXT_line_source;
      execute_to_memory_PREDICTION_CONTEXT_line_branchWish <= execute_PREDICTION_CONTEXT_line_branchWish;
      execute_to_memory_PREDICTION_CONTEXT_line_target <= execute_PREDICTION_CONTEXT_line_target;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_3 <= decode_DECODER_stageables_3;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_DECODER_stageables_3 <= execute_DECODER_stageables_3;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_41 <= decode_DECODER_stageables_41;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_44 <= decode_DECODER_stageables_44;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_DECODER_stageables_44 <= execute_DECODER_stageables_44;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_DECODER_stageables_44 <= memory_DECODER_stageables_44;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_8 <= decode_DECODER_stageables_8;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_DECODER_stageables_8 <= execute_DECODER_stageables_8;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_DECODER_stageables_8 <= memory_DECODER_stageables_8;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_INSTRUCTION <= decode_INSTRUCTION;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_INSTRUCTION <= execute_INSTRUCTION;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_18 <= _zz_37_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_17 <= decode_DECODER_stageables_17;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_SRC_CR <= execute_SRC_CR;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_SRC_CR <= memory_SRC_CR;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_31 <= decode_DECODER_stageables_31;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_22 <= decode_DECODER_stageables_22;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_DECODER_stageables_22 <= execute_DECODER_stageables_22;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_DECODER_stageables_22 <= memory_DECODER_stageables_22;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_13 <= decode_DECODER_stageables_13;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MUL_LL <= execute_MUL_LL;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_RB <= decode_RB;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_56 <= _zz_34_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_1 <= decode_DECODER_stageables_1;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_4 <= decode_DECODER_stageables_4;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_39 <= decode_DECODER_stageables_39;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MUL_HL <= execute_MUL_HL;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_FORMAL_PC_NEXT <= decode_FORMAL_PC_NEXT;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_FORMAL_PC_NEXT <= execute_FORMAL_PC_NEXT;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_FORMAL_PC_NEXT <= _zz_131_;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_LOAD_UPDATE_ADDR <= execute_LOAD_UPDATE_ADDR;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_LOAD_UPDATE_ADDR <= memory_LOAD_UPDATE_ADDR;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_28 <= decode_DECODER_stageables_28;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_DECODER_stageables_28 <= execute_DECODER_stageables_28;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_DECODER_stageables_28 <= memory_DECODER_stageables_28;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_33 <= decode_DECODER_stageables_33;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_CR_FIELD_RD <= decode_CR_FIELD_RD;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MUL_HH <= execute_MUL_HH;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MUL_HH <= memory_MUL_HH;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_RT_ADDR <= decode_RT_ADDR;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_RT_ADDR <= execute_RT_ADDR;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_RT_ADDR <= memory_RT_ADDR;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_52 <= decode_DECODER_stageables_52;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_DECODER_stageables_52 <= execute_DECODER_stageables_52;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_DECODER_stageables_52 <= memory_DECODER_stageables_52;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_5 <= _zz_31_;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_DECODER_stageables_5 <= _zz_28_;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_DECODER_stageables_5 <= _zz_26_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_0 <= _zz_23_;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_SRC_ADD <= execute_SRC_ADD;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_SRC_ADD <= memory_SRC_ADD;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_45 <= decode_DECODER_stageables_45;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_21 <= decode_DECODER_stageables_21;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_SRC1 <= execute_SRC1;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_SRC1 <= memory_SRC1;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MSR_ENDIAN <= _zz_20_;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MSR_ENDIAN <= _zz_18_;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MSR_ENDIAN <= _zz_16_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_7 <= _zz_13_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_35 <= decode_DECODER_stageables_35;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_DECODER_stageables_35 <= execute_DECODER_stageables_35;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_19 <= decode_DECODER_stageables_19;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_24 <= _zz_10_;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_BRANCH_DEC <= execute_BRANCH_DEC;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_BRANCH_DEC <= memory_BRANCH_DEC;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_BRANCH_LINK <= execute_BRANCH_LINK;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_BRANCH_LINK <= memory_BRANCH_LINK;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_25 <= decode_DECODER_stageables_25;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_42 <= decode_DECODER_stageables_42;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_DECODER_stageables_42 <= execute_DECODER_stageables_42;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_36 <= _zz_7_;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_SPR_ID <= execute_SPR_ID;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_SPR_ID <= memory_SPR_ID;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_32 <= decode_DECODER_stageables_32;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_PC <= decode_PC;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_PC <= _zz_74_;
    end
    if(((! writeBack_arbitration_isStuck) && (! SPRPlugin_exceptionPortCtrl_exceptionValids_writeBack)))begin
      memory_to_writeBack_PC <= memory_PC;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_BRANCH_CALC <= execute_BRANCH_CALC;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_TARGET_MISSMATCH2 <= execute_TARGET_MISSMATCH2;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_23 <= decode_DECODER_stageables_23;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_6 <= _zz_4_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DECODER_stageables_11 <= _zz_1_;
    end
    if((! execute_arbitration_isStuck))begin
      execute_SPRPLUGIN_SPR_1025 <= (_zz_347_ == 11'h401);
    end
    if((! execute_arbitration_isStuck))begin
      execute_SPRPLUGIN_SPR_26 <= (_zz_347_ == 11'h01a);
    end
    if((! execute_arbitration_isStuck))begin
      execute_SPRPLUGIN_SPR_27 <= (_zz_347_ == 11'h01b);
    end
    if((! execute_arbitration_isStuck))begin
      execute_SPRPLUGIN_SPR_19 <= (_zz_347_ == 11'h013);
    end
    if((! execute_arbitration_isStuck))begin
      execute_SPRPLUGIN_SPR_259 <= (_zz_347_ == 11'h103);
    end
    if((! execute_arbitration_isStuck))begin
      execute_SPRPLUGIN_SPR_18 <= (_zz_347_ == 11'h012);
    end
    if((! execute_arbitration_isStuck))begin
      execute_SPRPLUGIN_SPR_268 <= (_zz_347_ == 11'h10c);
    end
    if((! execute_arbitration_isStuck))begin
      execute_SPRPLUGIN_SPR_22 <= (_zz_347_ == 11'h016);
    end
    if(execute_SPRPLUGIN_SPR_26)begin
      if(execute_SPRPLUGIN_writeEnable)begin
        SPRPlugin_srr0 <= execute_SRC1[31 : 0];
      end
    end
    if(execute_SPRPLUGIN_SPR_27)begin
      if(execute_SPRPLUGIN_writeEnable)begin
        SPRPlugin_srr1 <= execute_SRC1[31 : 0];
      end
    end
    if(execute_SPRPLUGIN_SPR_19)begin
      if(execute_SPRPLUGIN_writeEnable)begin
        SPRPlugin_dar <= execute_SRC1[31 : 0];
      end
    end
    if(execute_SPRPLUGIN_SPR_259)begin
      if(execute_SPRPLUGIN_writeEnable)begin
        SPRPlugin_sprg3 <= execute_SRC1[31 : 0];
      end
    end
    if(execute_SPRPLUGIN_SPR_18)begin
      if(execute_SPRPLUGIN_writeEnable)begin
        SPRPlugin_dsisr <= execute_SRC1[31 : 0];
      end
    end
    if(execute_SPRPLUGIN_SPR_268)begin
      if(execute_SPRPLUGIN_writeEnable)begin
        SPRPlugin_tb <= execute_SRC1[31 : 0];
      end
    end
    if(execute_SPRPLUGIN_SPR_22)begin
      if(execute_SPRPLUGIN_writeEnable)begin
        SPRPlugin_dec <= execute_SRC1[31 : 0];
      end
    end
    iBusWB_DAT_MISO_regNext <= iBusWB_DAT_MISO;
    dBusWB_DAT_MISO_regNext <= dBusWB_DAT_MISO;
  end


endmodule
