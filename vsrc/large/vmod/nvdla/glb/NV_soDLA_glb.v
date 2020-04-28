module NV_NVDLA_GLB_CSB_reg( // @[:@3.2]
  input         reset, // @[:@5.4]
  input         io_nvdla_core_clk, // @[:@6.4]
  output [31:0] io_reg_rd_data, // @[:@6.4]
  input  [11:0] io_reg_offset, // @[:@6.4]
  input  [31:0] io_reg_wr_data, // @[:@6.4]
  input         io_reg_wr_en, // @[:@6.4]
  output        io_bdma_done_mask0, // @[:@6.4]
  output        io_bdma_done_mask1, // @[:@6.4]
  output        io_cacc_done_mask0, // @[:@6.4]
  output        io_cacc_done_mask1, // @[:@6.4]
  output        io_cdma_dat_done_mask0, // @[:@6.4]
  output        io_cdma_dat_done_mask1, // @[:@6.4]
  output        io_cdma_wt_done_mask0, // @[:@6.4]
  output        io_cdma_wt_done_mask1, // @[:@6.4]
  output        io_cdp_done_mask0, // @[:@6.4]
  output        io_cdp_done_mask1, // @[:@6.4]
  output        io_pdp_done_mask0, // @[:@6.4]
  output        io_pdp_done_mask1, // @[:@6.4]
  output        io_rubik_done_mask0, // @[:@6.4]
  output        io_rubik_done_mask1, // @[:@6.4]
  output        io_sdp_done_mask0, // @[:@6.4]
  output        io_sdp_done_mask1, // @[:@6.4]
  output        io_sdp_done_set0_trigger, // @[:@6.4]
  output        io_sdp_done_status0_trigger, // @[:@6.4]
  input         io_cacc_done_status0, // @[:@6.4]
  input         io_cacc_done_status1, // @[:@6.4]
  input         io_cdma_dat_done_status0, // @[:@6.4]
  input         io_cdma_dat_done_status1, // @[:@6.4]
  input         io_cdma_wt_done_status0, // @[:@6.4]
  input         io_cdma_wt_done_status1, // @[:@6.4]
  input         io_cdp_done_status0, // @[:@6.4]
  input         io_cdp_done_status1, // @[:@6.4]
  input         io_pdp_done_status0, // @[:@6.4]
  input         io_pdp_done_status1, // @[:@6.4]
  input         io_sdp_done_status0, // @[:@6.4]
  input         io_sdp_done_status1 // @[:@6.4]
);
  wire [31:0] _GEN_16; // @[NV_NVDLA_GLB_CSB_reg.scala 95:55:@8.4]
  wire  _T_116; // @[NV_NVDLA_GLB_CSB_reg.scala 95:55:@8.4]
  wire  _T_117; // @[NV_NVDLA_GLB_CSB_reg.scala 95:77:@9.4]
  wire  _T_119; // @[NV_NVDLA_GLB_CSB_reg.scala 96:54:@10.4]
  wire  _T_122; // @[NV_NVDLA_GLB_CSB_reg.scala 97:57:@12.4]
  wire [8:0] _T_140; // @[Cat.scala 30:58:@25.4]
  wire [31:0] _T_149; // @[Cat.scala 30:58:@34.4]
  wire [42:0] _T_169; // @[Cat.scala 30:58:@51.4]
  wire [8:0] _T_180; // @[Cat.scala 30:58:@59.4]
  wire [31:0] _T_189; // @[Cat.scala 30:58:@68.4]
  wire  _T_194; // @[Mux.scala 46:19:@71.4]
  wire [31:0] _T_195; // @[Mux.scala 46:16:@72.4]
  wire  _T_196; // @[Mux.scala 46:19:@73.4]
  wire [31:0] _T_197; // @[Mux.scala 46:16:@74.4]
  wire  _T_198; // @[Mux.scala 46:19:@75.4]
  wire [42:0] _T_199; // @[Mux.scala 46:16:@76.4]
  wire  _T_200; // @[Mux.scala 46:19:@77.4]
  wire [42:0] _T_201; // @[Mux.scala 46:16:@78.4]
  wire  _T_202; // @[NV_NVDLA_GLB_CSB_reg.scala 137:51:@80.4]
  reg  _T_205; // @[Reg.scala 19:20:@81.4]
  reg [31:0] _RAND_0;
  wire  _GEN_0; // @[Reg.scala 20:19:@82.4]
  wire  _T_206; // @[NV_NVDLA_GLB_CSB_reg.scala 138:51:@86.4]
  reg  _T_209; // @[Reg.scala 19:20:@87.4]
  reg [31:0] _RAND_1;
  wire  _GEN_1; // @[Reg.scala 20:19:@88.4]
  wire  _T_210; // @[NV_NVDLA_GLB_CSB_reg.scala 139:51:@92.4]
  reg  _T_213; // @[Reg.scala 19:20:@93.4]
  reg [31:0] _RAND_2;
  wire  _GEN_2; // @[Reg.scala 20:19:@94.4]
  wire  _T_214; // @[NV_NVDLA_GLB_CSB_reg.scala 140:51:@98.4]
  reg  _T_217; // @[Reg.scala 19:20:@99.4]
  reg [31:0] _RAND_3;
  wire  _GEN_3; // @[Reg.scala 20:19:@100.4]
  wire  _T_218; // @[NV_NVDLA_GLB_CSB_reg.scala 141:55:@104.4]
  reg  _T_221; // @[Reg.scala 19:20:@105.4]
  reg [31:0] _RAND_4;
  wire  _GEN_4; // @[Reg.scala 20:19:@106.4]
  wire  _T_222; // @[NV_NVDLA_GLB_CSB_reg.scala 142:55:@110.4]
  reg  _T_225; // @[Reg.scala 19:20:@111.4]
  reg [31:0] _RAND_5;
  wire  _GEN_5; // @[Reg.scala 20:19:@112.4]
  wire  _T_226; // @[NV_NVDLA_GLB_CSB_reg.scala 143:54:@116.4]
  reg  _T_229; // @[Reg.scala 19:20:@117.4]
  reg [31:0] _RAND_6;
  wire  _GEN_6; // @[Reg.scala 20:19:@118.4]
  wire  _T_230; // @[NV_NVDLA_GLB_CSB_reg.scala 144:54:@122.4]
  reg  _T_233; // @[Reg.scala 19:20:@123.4]
  reg [31:0] _RAND_7;
  wire  _GEN_7; // @[Reg.scala 20:19:@124.4]
  wire  _T_234; // @[NV_NVDLA_GLB_CSB_reg.scala 145:50:@128.4]
  reg  _T_237; // @[Reg.scala 19:20:@129.4]
  reg [31:0] _RAND_8;
  wire  _GEN_8; // @[Reg.scala 20:19:@130.4]
  wire  _T_238; // @[NV_NVDLA_GLB_CSB_reg.scala 146:50:@134.4]
  reg  _T_241; // @[Reg.scala 19:20:@135.4]
  reg [31:0] _RAND_9;
  wire  _GEN_9; // @[Reg.scala 20:19:@136.4]
  wire  _T_242; // @[NV_NVDLA_GLB_CSB_reg.scala 147:50:@140.4]
  reg  _T_245; // @[Reg.scala 19:20:@141.4]
  reg [31:0] _RAND_10;
  wire  _GEN_10; // @[Reg.scala 20:19:@142.4]
  wire  _T_246; // @[NV_NVDLA_GLB_CSB_reg.scala 148:50:@146.4]
  reg  _T_249; // @[Reg.scala 19:20:@147.4]
  reg [31:0] _RAND_11;
  wire  _GEN_11; // @[Reg.scala 20:19:@148.4]
  wire  _T_250; // @[NV_NVDLA_GLB_CSB_reg.scala 149:52:@152.4]
  reg  _T_253; // @[Reg.scala 19:20:@153.4]
  reg [31:0] _RAND_12;
  wire  _GEN_12; // @[Reg.scala 20:19:@154.4]
  wire  _T_254; // @[NV_NVDLA_GLB_CSB_reg.scala 150:52:@158.4]
  reg  _T_257; // @[Reg.scala 19:20:@159.4]
  reg [31:0] _RAND_13;
  wire  _GEN_13; // @[Reg.scala 20:19:@160.4]
  wire  _T_258; // @[NV_NVDLA_GLB_CSB_reg.scala 151:50:@164.4]
  reg  _T_261; // @[Reg.scala 19:20:@165.4]
  reg [31:0] _RAND_14;
  wire  _GEN_14; // @[Reg.scala 20:19:@166.4]
  wire  _T_262; // @[NV_NVDLA_GLB_CSB_reg.scala 152:50:@170.4]
  reg  _T_265; // @[Reg.scala 19:20:@171.4]
  reg [31:0] _RAND_15;
  wire  _GEN_15; // @[Reg.scala 20:19:@172.4]
  assign _GEN_16 = {{20'd0}, io_reg_offset}; // @[NV_NVDLA_GLB_CSB_reg.scala 95:55:@8.4]
  assign _T_116 = _GEN_16 == 32'h4; // @[NV_NVDLA_GLB_CSB_reg.scala 95:55:@8.4]
  assign _T_117 = _T_116 & io_reg_wr_en; // @[NV_NVDLA_GLB_CSB_reg.scala 95:77:@9.4]
  assign _T_119 = _GEN_16 == 32'h8; // @[NV_NVDLA_GLB_CSB_reg.scala 96:54:@10.4]
  assign _T_122 = _GEN_16 == 32'hc; // @[NV_NVDLA_GLB_CSB_reg.scala 97:57:@12.4]
  assign _T_140 = {io_rubik_done_mask0,io_bdma_done_mask1,io_bdma_done_mask0,io_pdp_done_mask1,io_pdp_done_mask0,io_cdp_done_mask1,io_cdp_done_mask0,io_sdp_done_mask1,io_sdp_done_mask0}; // @[Cat.scala 30:58:@25.4]
  assign _T_149 = {10'h0,io_cacc_done_mask1,io_cacc_done_mask0,io_cdma_wt_done_mask1,io_cdma_wt_done_mask0,io_cdma_dat_done_mask1,io_cdma_dat_done_mask0,6'h0,io_rubik_done_mask1,_T_140}; // @[Cat.scala 30:58:@34.4]
  assign _T_169 = {11'h0,io_reg_offset,2'h0,9'h0,9'h0}; // @[Cat.scala 30:58:@51.4]
  assign _T_180 = {3'h0,io_pdp_done_status1,io_pdp_done_status0,io_cdp_done_status1,io_cdp_done_status0,io_sdp_done_status1,io_sdp_done_status0}; // @[Cat.scala 30:58:@59.4]
  assign _T_189 = {10'h0,io_cacc_done_status1,io_cacc_done_status0,io_cdma_wt_done_status1,io_cdma_wt_done_status0,io_cdma_dat_done_status1,io_cdma_dat_done_status0,7'h0,_T_180}; // @[Cat.scala 30:58:@68.4]
  assign _T_194 = 32'h0 == _GEN_16; // @[Mux.scala 46:19:@71.4]
  assign _T_195 = _T_194 ? 32'h303031 : 32'h0; // @[Mux.scala 46:16:@72.4]
  assign _T_196 = 32'hc == _GEN_16; // @[Mux.scala 46:19:@73.4]
  assign _T_197 = _T_196 ? _T_189 : _T_195; // @[Mux.scala 46:16:@74.4]
  assign _T_198 = 32'h8 == _GEN_16; // @[Mux.scala 46:19:@75.4]
  assign _T_199 = _T_198 ? _T_169 : {{11'd0}, _T_197}; // @[Mux.scala 46:16:@76.4]
  assign _T_200 = 32'h4 == _GEN_16; // @[Mux.scala 46:19:@77.4]
  assign _T_201 = _T_200 ? {{11'd0}, _T_149} : _T_199; // @[Mux.scala 46:16:@78.4]
  assign _T_202 = io_reg_wr_data[6]; // @[NV_NVDLA_GLB_CSB_reg.scala 137:51:@80.4]
  assign _GEN_0 = _T_117 ? _T_202 : _T_205; // @[Reg.scala 20:19:@82.4]
  assign _T_206 = io_reg_wr_data[7]; // @[NV_NVDLA_GLB_CSB_reg.scala 138:51:@86.4]
  assign _GEN_1 = _T_117 ? _T_206 : _T_209; // @[Reg.scala 20:19:@88.4]
  assign _T_210 = io_reg_wr_data[20]; // @[NV_NVDLA_GLB_CSB_reg.scala 139:51:@92.4]
  assign _GEN_2 = _T_117 ? _T_210 : _T_213; // @[Reg.scala 20:19:@94.4]
  assign _T_214 = io_reg_wr_data[21]; // @[NV_NVDLA_GLB_CSB_reg.scala 140:51:@98.4]
  assign _GEN_3 = _T_117 ? _T_214 : _T_217; // @[Reg.scala 20:19:@100.4]
  assign _T_218 = io_reg_wr_data[16]; // @[NV_NVDLA_GLB_CSB_reg.scala 141:55:@104.4]
  assign _GEN_4 = _T_117 ? _T_218 : _T_221; // @[Reg.scala 20:19:@106.4]
  assign _T_222 = io_reg_wr_data[17]; // @[NV_NVDLA_GLB_CSB_reg.scala 142:55:@110.4]
  assign _GEN_5 = _T_117 ? _T_222 : _T_225; // @[Reg.scala 20:19:@112.4]
  assign _T_226 = io_reg_wr_data[18]; // @[NV_NVDLA_GLB_CSB_reg.scala 143:54:@116.4]
  assign _GEN_6 = _T_117 ? _T_226 : _T_229; // @[Reg.scala 20:19:@118.4]
  assign _T_230 = io_reg_wr_data[19]; // @[NV_NVDLA_GLB_CSB_reg.scala 144:54:@122.4]
  assign _GEN_7 = _T_117 ? _T_230 : _T_233; // @[Reg.scala 20:19:@124.4]
  assign _T_234 = io_reg_wr_data[2]; // @[NV_NVDLA_GLB_CSB_reg.scala 145:50:@128.4]
  assign _GEN_8 = _T_117 ? _T_234 : _T_237; // @[Reg.scala 20:19:@130.4]
  assign _T_238 = io_reg_wr_data[3]; // @[NV_NVDLA_GLB_CSB_reg.scala 146:50:@134.4]
  assign _GEN_9 = _T_117 ? _T_238 : _T_241; // @[Reg.scala 20:19:@136.4]
  assign _T_242 = io_reg_wr_data[4]; // @[NV_NVDLA_GLB_CSB_reg.scala 147:50:@140.4]
  assign _GEN_10 = _T_117 ? _T_242 : _T_245; // @[Reg.scala 20:19:@142.4]
  assign _T_246 = io_reg_wr_data[5]; // @[NV_NVDLA_GLB_CSB_reg.scala 148:50:@146.4]
  assign _GEN_11 = _T_117 ? _T_246 : _T_249; // @[Reg.scala 20:19:@148.4]
  assign _T_250 = io_reg_wr_data[8]; // @[NV_NVDLA_GLB_CSB_reg.scala 149:52:@152.4]
  assign _GEN_12 = _T_117 ? _T_250 : _T_253; // @[Reg.scala 20:19:@154.4]
  assign _T_254 = io_reg_wr_data[9]; // @[NV_NVDLA_GLB_CSB_reg.scala 150:52:@158.4]
  assign _GEN_13 = _T_117 ? _T_254 : _T_257; // @[Reg.scala 20:19:@160.4]
  assign _T_258 = io_reg_wr_data[0]; // @[NV_NVDLA_GLB_CSB_reg.scala 151:50:@164.4]
  assign _GEN_14 = _T_117 ? _T_258 : _T_261; // @[Reg.scala 20:19:@166.4]
  assign _T_262 = io_reg_wr_data[1]; // @[NV_NVDLA_GLB_CSB_reg.scala 152:50:@170.4]
  assign _GEN_15 = _T_117 ? _T_262 : _T_265; // @[Reg.scala 20:19:@172.4]
  assign io_reg_rd_data = _T_201[31:0]; // @[NV_NVDLA_GLB_CSB_reg.scala 108:20:@79.4]
  assign io_bdma_done_mask0 = _T_205; // @[NV_NVDLA_GLB_CSB_reg.scala 137:24:@85.4]
  assign io_bdma_done_mask1 = _T_209; // @[NV_NVDLA_GLB_CSB_reg.scala 138:24:@91.4]
  assign io_cacc_done_mask0 = _T_213; // @[NV_NVDLA_GLB_CSB_reg.scala 139:24:@97.4]
  assign io_cacc_done_mask1 = _T_217; // @[NV_NVDLA_GLB_CSB_reg.scala 140:24:@103.4]
  assign io_cdma_dat_done_mask0 = _T_221; // @[NV_NVDLA_GLB_CSB_reg.scala 141:28:@109.4]
  assign io_cdma_dat_done_mask1 = _T_225; // @[NV_NVDLA_GLB_CSB_reg.scala 142:28:@115.4]
  assign io_cdma_wt_done_mask0 = _T_229; // @[NV_NVDLA_GLB_CSB_reg.scala 143:27:@121.4]
  assign io_cdma_wt_done_mask1 = _T_233; // @[NV_NVDLA_GLB_CSB_reg.scala 144:27:@127.4]
  assign io_cdp_done_mask0 = _T_237; // @[NV_NVDLA_GLB_CSB_reg.scala 145:23:@133.4]
  assign io_cdp_done_mask1 = _T_241; // @[NV_NVDLA_GLB_CSB_reg.scala 146:23:@139.4]
  assign io_pdp_done_mask0 = _T_245; // @[NV_NVDLA_GLB_CSB_reg.scala 147:23:@145.4]
  assign io_pdp_done_mask1 = _T_249; // @[NV_NVDLA_GLB_CSB_reg.scala 148:23:@151.4]
  assign io_rubik_done_mask0 = _T_253; // @[NV_NVDLA_GLB_CSB_reg.scala 149:25:@157.4]
  assign io_rubik_done_mask1 = _T_257; // @[NV_NVDLA_GLB_CSB_reg.scala 150:25:@163.4]
  assign io_sdp_done_mask0 = _T_261; // @[NV_NVDLA_GLB_CSB_reg.scala 151:23:@169.4]
  assign io_sdp_done_mask1 = _T_265; // @[NV_NVDLA_GLB_CSB_reg.scala 152:23:@175.4]
  assign io_sdp_done_set0_trigger = _T_119 & io_reg_wr_en; // @[NV_NVDLA_GLB_CSB_reg.scala 103:30:@16.4]
  assign io_sdp_done_status0_trigger = _T_122 & io_reg_wr_en; // @[NV_NVDLA_GLB_CSB_reg.scala 104:33:@17.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_205 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_209 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_213 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_217 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_221 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_225 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_229 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_233 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_237 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_241 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_245 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_249 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_253 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_257 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_261 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_265 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_205 <= 1'h0;
    end else begin
      if (_T_117) begin
        _T_205 <= _T_202;
      end
    end
    if (reset) begin
      _T_209 <= 1'h0;
    end else begin
      if (_T_117) begin
        _T_209 <= _T_206;
      end
    end
    if (reset) begin
      _T_213 <= 1'h0;
    end else begin
      if (_T_117) begin
        _T_213 <= _T_210;
      end
    end
    if (reset) begin
      _T_217 <= 1'h0;
    end else begin
      if (_T_117) begin
        _T_217 <= _T_214;
      end
    end
    if (reset) begin
      _T_221 <= 1'h0;
    end else begin
      if (_T_117) begin
        _T_221 <= _T_218;
      end
    end
    if (reset) begin
      _T_225 <= 1'h0;
    end else begin
      if (_T_117) begin
        _T_225 <= _T_222;
      end
    end
    if (reset) begin
      _T_229 <= 1'h0;
    end else begin
      if (_T_117) begin
        _T_229 <= _T_226;
      end
    end
    if (reset) begin
      _T_233 <= 1'h0;
    end else begin
      if (_T_117) begin
        _T_233 <= _T_230;
      end
    end
    if (reset) begin
      _T_237 <= 1'h0;
    end else begin
      if (_T_117) begin
        _T_237 <= _T_234;
      end
    end
    if (reset) begin
      _T_241 <= 1'h0;
    end else begin
      if (_T_117) begin
        _T_241 <= _T_238;
      end
    end
    if (reset) begin
      _T_245 <= 1'h0;
    end else begin
      if (_T_117) begin
        _T_245 <= _T_242;
      end
    end
    if (reset) begin
      _T_249 <= 1'h0;
    end else begin
      if (_T_117) begin
        _T_249 <= _T_246;
      end
    end
    if (reset) begin
      _T_253 <= 1'h0;
    end else begin
      if (_T_117) begin
        _T_253 <= _T_250;
      end
    end
    if (reset) begin
      _T_257 <= 1'h0;
    end else begin
      if (_T_117) begin
        _T_257 <= _T_254;
      end
    end
    if (reset) begin
      _T_261 <= 1'h0;
    end else begin
      if (_T_117) begin
        _T_261 <= _T_258;
      end
    end
    if (reset) begin
      _T_265 <= 1'h0;
    end else begin
      if (_T_117) begin
        _T_265 <= _T_262;
      end
    end
  end
endmodule
module NV_NVDLA_GLB_csb( // @[:@177.2]
  input         reset, // @[:@179.4]
  input         io_nvdla_core_clk, // @[:@180.4]
  input         io_cdp_done_status0, // @[:@180.4]
  input         io_cdp_done_status1, // @[:@180.4]
  input         io_pdp_done_status0, // @[:@180.4]
  input         io_pdp_done_status1, // @[:@180.4]
  input         io_cacc_done_status0, // @[:@180.4]
  input         io_cacc_done_status1, // @[:@180.4]
  input         io_cdma_dat_done_status0, // @[:@180.4]
  input         io_cdma_dat_done_status1, // @[:@180.4]
  input         io_cdma_wt_done_status0, // @[:@180.4]
  input         io_cdma_wt_done_status1, // @[:@180.4]
  input         io_csb2glb_req_valid, // @[:@180.4]
  input  [62:0] io_csb2glb_req_bits, // @[:@180.4]
  output        io_csb2glb_resp_valid, // @[:@180.4]
  output [33:0] io_csb2glb_resp_bits, // @[:@180.4]
  input         io_sdp_done_status0, // @[:@180.4]
  input         io_sdp_done_status1, // @[:@180.4]
  output        io_sdp_done_set0_trigger, // @[:@180.4]
  output        io_sdp_done_status0_trigger, // @[:@180.4]
  output [31:0] io_req_wdat // @[:@180.4]
);
  wire  NV_NVDLA_GLB_CSB_reg_reset; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_nvdla_core_clk; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire [31:0] NV_NVDLA_GLB_CSB_reg_io_reg_rd_data; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire [11:0] NV_NVDLA_GLB_CSB_reg_io_reg_offset; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire [31:0] NV_NVDLA_GLB_CSB_reg_io_reg_wr_data; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_reg_wr_en; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_bdma_done_mask0; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_bdma_done_mask1; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_cacc_done_mask0; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_cacc_done_mask1; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_cdma_dat_done_mask0; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_cdma_dat_done_mask1; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_cdma_wt_done_mask0; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_cdma_wt_done_mask1; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_cdp_done_mask0; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_cdp_done_mask1; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_pdp_done_mask0; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_pdp_done_mask1; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_rubik_done_mask0; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_rubik_done_mask1; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_sdp_done_mask0; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_sdp_done_mask1; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_sdp_done_set0_trigger; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_sdp_done_status0_trigger; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_cacc_done_status0; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_cacc_done_status1; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_cdma_dat_done_status0; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_cdma_dat_done_status1; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_cdma_wt_done_status0; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_cdma_wt_done_status1; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_cdp_done_status0; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_cdp_done_status1; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_pdp_done_status0; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_pdp_done_status1; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_sdp_done_status0; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  wire  NV_NVDLA_GLB_CSB_reg_io_sdp_done_status1; // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
  reg  _T_95; // @[NV_NVDLA_GLB_csb.scala 115:26:@182.4]
  reg [31:0] _RAND_0;
  reg [62:0] _T_97; // @[Reg.scala 11:16:@184.4]
  reg [63:0] _RAND_1;
  wire  _T_100; // @[NV_NVDLA_GLB_csb.scala 124:29:@190.4]
  wire [21:0] _T_101; // @[NV_NVDLA_GLB_csb.scala 125:26:@191.4]
  wire  _T_104; // @[NV_NVDLA_GLB_csb.scala 128:27:@194.4]
  wire  _T_108; // @[NV_NVDLA_GLB_csb.scala 137:33:@198.4]
  wire  _T_109; // @[NV_NVDLA_GLB_csb.scala 137:31:@199.4]
  wire [31:0] _T_113; // @[Bitwise.scala 72:12:@201.4]
  wire [31:0] _T_107; // @[NV_NVDLA_GLB_csb.scala 135:27:@197.4 NV_NVDLA_GLB_csb.scala 168:17:@237.4]
  wire [31:0] _T_114; // @[NV_NVDLA_GLB_csb.scala 138:44:@202.4]
  wire  _T_116; // @[NV_NVDLA_GLB_csb.scala 141:31:@203.4]
  wire  _T_117; // @[NV_NVDLA_GLB_csb.scala 141:43:@204.4]
  wire [32:0] _T_120; // @[Cat.scala 30:58:@205.4]
  wire  _T_122; // @[NV_NVDLA_GLB_csb.scala 152:30:@207.4]
  wire [32:0] _T_131; // @[Bitwise.scala 72:12:@212.4]
  wire [32:0] _T_132; // @[NV_NVDLA_GLB_csb.scala 154:39:@213.4]
  wire [33:0] _T_139; // @[Cat.scala 30:58:@218.4]
  reg  _T_142; // @[NV_NVDLA_GLB_csb.scala 155:37:@219.4]
  reg [31:0] _RAND_2;
  reg [33:0] _T_144; // @[Reg.scala 11:16:@222.4]
  reg [63:0] _RAND_3;
  wire [9:0] _T_145; // @[NV_NVDLA_GLB_csb.scala 157:34:@227.4]
  NV_NVDLA_GLB_CSB_reg NV_NVDLA_GLB_CSB_reg ( // @[NV_NVDLA_GLB_csb.scala 161:23:@230.4]
    .reset(NV_NVDLA_GLB_CSB_reg_reset),
    .io_nvdla_core_clk(NV_NVDLA_GLB_CSB_reg_io_nvdla_core_clk),
    .io_reg_rd_data(NV_NVDLA_GLB_CSB_reg_io_reg_rd_data),
    .io_reg_offset(NV_NVDLA_GLB_CSB_reg_io_reg_offset),
    .io_reg_wr_data(NV_NVDLA_GLB_CSB_reg_io_reg_wr_data),
    .io_reg_wr_en(NV_NVDLA_GLB_CSB_reg_io_reg_wr_en),
    .io_bdma_done_mask0(NV_NVDLA_GLB_CSB_reg_io_bdma_done_mask0),
    .io_bdma_done_mask1(NV_NVDLA_GLB_CSB_reg_io_bdma_done_mask1),
    .io_cacc_done_mask0(NV_NVDLA_GLB_CSB_reg_io_cacc_done_mask0),
    .io_cacc_done_mask1(NV_NVDLA_GLB_CSB_reg_io_cacc_done_mask1),
    .io_cdma_dat_done_mask0(NV_NVDLA_GLB_CSB_reg_io_cdma_dat_done_mask0),
    .io_cdma_dat_done_mask1(NV_NVDLA_GLB_CSB_reg_io_cdma_dat_done_mask1),
    .io_cdma_wt_done_mask0(NV_NVDLA_GLB_CSB_reg_io_cdma_wt_done_mask0),
    .io_cdma_wt_done_mask1(NV_NVDLA_GLB_CSB_reg_io_cdma_wt_done_mask1),
    .io_cdp_done_mask0(NV_NVDLA_GLB_CSB_reg_io_cdp_done_mask0),
    .io_cdp_done_mask1(NV_NVDLA_GLB_CSB_reg_io_cdp_done_mask1),
    .io_pdp_done_mask0(NV_NVDLA_GLB_CSB_reg_io_pdp_done_mask0),
    .io_pdp_done_mask1(NV_NVDLA_GLB_CSB_reg_io_pdp_done_mask1),
    .io_rubik_done_mask0(NV_NVDLA_GLB_CSB_reg_io_rubik_done_mask0),
    .io_rubik_done_mask1(NV_NVDLA_GLB_CSB_reg_io_rubik_done_mask1),
    .io_sdp_done_mask0(NV_NVDLA_GLB_CSB_reg_io_sdp_done_mask0),
    .io_sdp_done_mask1(NV_NVDLA_GLB_CSB_reg_io_sdp_done_mask1),
    .io_sdp_done_set0_trigger(NV_NVDLA_GLB_CSB_reg_io_sdp_done_set0_trigger),
    .io_sdp_done_status0_trigger(NV_NVDLA_GLB_CSB_reg_io_sdp_done_status0_trigger),
    .io_cacc_done_status0(NV_NVDLA_GLB_CSB_reg_io_cacc_done_status0),
    .io_cacc_done_status1(NV_NVDLA_GLB_CSB_reg_io_cacc_done_status1),
    .io_cdma_dat_done_status0(NV_NVDLA_GLB_CSB_reg_io_cdma_dat_done_status0),
    .io_cdma_dat_done_status1(NV_NVDLA_GLB_CSB_reg_io_cdma_dat_done_status1),
    .io_cdma_wt_done_status0(NV_NVDLA_GLB_CSB_reg_io_cdma_wt_done_status0),
    .io_cdma_wt_done_status1(NV_NVDLA_GLB_CSB_reg_io_cdma_wt_done_status1),
    .io_cdp_done_status0(NV_NVDLA_GLB_CSB_reg_io_cdp_done_status0),
    .io_cdp_done_status1(NV_NVDLA_GLB_CSB_reg_io_cdp_done_status1),
    .io_pdp_done_status0(NV_NVDLA_GLB_CSB_reg_io_pdp_done_status0),
    .io_pdp_done_status1(NV_NVDLA_GLB_CSB_reg_io_pdp_done_status1),
    .io_sdp_done_status0(NV_NVDLA_GLB_CSB_reg_io_sdp_done_status0),
    .io_sdp_done_status1(NV_NVDLA_GLB_CSB_reg_io_sdp_done_status1)
  );
  assign _T_100 = _T_97[55]; // @[NV_NVDLA_GLB_csb.scala 124:29:@190.4]
  assign _T_101 = _T_97[21:0]; // @[NV_NVDLA_GLB_csb.scala 125:26:@191.4]
  assign _T_104 = _T_97[54]; // @[NV_NVDLA_GLB_csb.scala 128:27:@194.4]
  assign _T_108 = ~ _T_104; // @[NV_NVDLA_GLB_csb.scala 137:33:@198.4]
  assign _T_109 = _T_95 & _T_108; // @[NV_NVDLA_GLB_csb.scala 137:31:@199.4]
  assign _T_113 = _T_109 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@201.4]
  assign _T_107 = NV_NVDLA_GLB_CSB_reg_io_reg_rd_data; // @[NV_NVDLA_GLB_csb.scala 135:27:@197.4 NV_NVDLA_GLB_csb.scala 168:17:@237.4]
  assign _T_114 = _T_113 & _T_107; // @[NV_NVDLA_GLB_csb.scala 138:44:@202.4]
  assign _T_116 = _T_95 & _T_104; // @[NV_NVDLA_GLB_csb.scala 141:31:@203.4]
  assign _T_117 = _T_116 & _T_100; // @[NV_NVDLA_GLB_csb.scala 141:43:@204.4]
  assign _T_120 = {1'h0,_T_114}; // @[Cat.scala 30:58:@205.4]
  assign _T_122 = _T_109 | _T_117; // @[NV_NVDLA_GLB_csb.scala 152:30:@207.4]
  assign _T_131 = _T_109 ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12:@212.4]
  assign _T_132 = _T_131 & _T_120; // @[NV_NVDLA_GLB_csb.scala 154:39:@213.4]
  assign _T_139 = {_T_117,_T_132}; // @[Cat.scala 30:58:@218.4]
  assign _T_145 = _T_101[9:0]; // @[NV_NVDLA_GLB_csb.scala 157:34:@227.4]
  assign io_csb2glb_resp_valid = _T_142; // @[NV_NVDLA_GLB_csb.scala 155:27:@221.4]
  assign io_csb2glb_resp_bits = _T_144; // @[NV_NVDLA_GLB_csb.scala 156:26:@226.4]
  assign io_sdp_done_set0_trigger = NV_NVDLA_GLB_CSB_reg_io_sdp_done_set0_trigger; // @[NV_NVDLA_GLB_csb.scala 258:30:@282.4]
  assign io_sdp_done_status0_trigger = NV_NVDLA_GLB_CSB_reg_io_sdp_done_status0_trigger; // @[NV_NVDLA_GLB_csb.scala 259:33:@283.4]
  assign io_req_wdat = _T_97[53:22]; // @[NV_NVDLA_GLB_csb.scala 129:17:@196.4]
  assign NV_NVDLA_GLB_CSB_reg_reset = reset; // @[:@232.4]
  assign NV_NVDLA_GLB_CSB_reg_io_nvdla_core_clk = io_nvdla_core_clk; // @[NV_NVDLA_GLB_csb.scala 163:29:@233.4]
  assign NV_NVDLA_GLB_CSB_reg_io_reg_offset = {_T_145,2'h0}; // @[NV_NVDLA_GLB_csb.scala 165:25:@234.4]
  assign NV_NVDLA_GLB_CSB_reg_io_reg_wr_data = io_req_wdat; // @[NV_NVDLA_GLB_csb.scala 166:26:@235.4]
  assign NV_NVDLA_GLB_CSB_reg_io_reg_wr_en = _T_95 & _T_104; // @[NV_NVDLA_GLB_csb.scala 167:24:@236.4]
  assign NV_NVDLA_GLB_CSB_reg_io_cacc_done_status0 = io_cacc_done_status0; // @[NV_NVDLA_GLB_csb.scala 230:32:@260.4]
  assign NV_NVDLA_GLB_CSB_reg_io_cacc_done_status1 = io_cacc_done_status1; // @[NV_NVDLA_GLB_csb.scala 231:32:@261.4]
  assign NV_NVDLA_GLB_CSB_reg_io_cdma_dat_done_status0 = io_cdma_dat_done_status0; // @[NV_NVDLA_GLB_csb.scala 238:36:@266.4]
  assign NV_NVDLA_GLB_CSB_reg_io_cdma_dat_done_status1 = io_cdma_dat_done_status1; // @[NV_NVDLA_GLB_csb.scala 239:36:@267.4]
  assign NV_NVDLA_GLB_CSB_reg_io_cdma_wt_done_status0 = io_cdma_wt_done_status0; // @[NV_NVDLA_GLB_csb.scala 246:35:@272.4]
  assign NV_NVDLA_GLB_CSB_reg_io_cdma_wt_done_status1 = io_cdma_wt_done_status1; // @[NV_NVDLA_GLB_csb.scala 247:35:@273.4]
  assign NV_NVDLA_GLB_CSB_reg_io_cdp_done_status0 = io_cdp_done_status0; // @[NV_NVDLA_GLB_csb.scala 187:35:@242.4]
  assign NV_NVDLA_GLB_CSB_reg_io_cdp_done_status1 = io_cdp_done_status1; // @[NV_NVDLA_GLB_csb.scala 188:35:@243.4]
  assign NV_NVDLA_GLB_CSB_reg_io_pdp_done_status0 = io_pdp_done_status0; // @[NV_NVDLA_GLB_csb.scala 201:35:@248.4]
  assign NV_NVDLA_GLB_CSB_reg_io_pdp_done_status1 = io_pdp_done_status1; // @[NV_NVDLA_GLB_csb.scala 202:35:@249.4]
  assign NV_NVDLA_GLB_CSB_reg_io_sdp_done_status0 = io_sdp_done_status0; // @[NV_NVDLA_GLB_csb.scala 252:30:@276.4]
  assign NV_NVDLA_GLB_CSB_reg_io_sdp_done_status1 = io_sdp_done_status1; // @[NV_NVDLA_GLB_csb.scala 253:31:@277.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_95 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  _T_97 = _RAND_1[62:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_142 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{`RANDOM}};
  _T_144 = _RAND_3[33:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_95 <= 1'h0;
    end else begin
      _T_95 <= io_csb2glb_req_valid;
    end
    if (io_csb2glb_req_valid) begin
      _T_97 <= io_csb2glb_req_bits;
    end
    if (reset) begin
      _T_142 <= 1'h0;
    end else begin
      _T_142 <= _T_122;
    end
    if (_T_122) begin
      _T_144 <= _T_139;
    end
  end
endmodule
module NV_NVDLA_GLB_ic( // @[:@285.2]
  input         io_nvdla_core_clk, // @[:@288.4]
  input         io_nvdla_core_rstn, // @[:@288.4]
  input  [1:0]  io_cdp2glb_done_intr_pd, // @[:@288.4]
  output        io_cdp_done_status0, // @[:@288.4]
  output        io_cdp_done_status1, // @[:@288.4]
  input  [1:0]  io_pdp2glb_done_intr_pd, // @[:@288.4]
  output        io_pdp_done_status0, // @[:@288.4]
  output        io_pdp_done_status1, // @[:@288.4]
  input  [1:0]  io_cacc2glb_done_intr_pd, // @[:@288.4]
  output        io_cacc_done_status0, // @[:@288.4]
  output        io_cacc_done_status1, // @[:@288.4]
  input  [1:0]  io_cdma_dat2glb_done_intr_pd, // @[:@288.4]
  output        io_cdma_dat_done_status0, // @[:@288.4]
  output        io_cdma_dat_done_status1, // @[:@288.4]
  input  [1:0]  io_cdma_wt2glb_done_intr_pd, // @[:@288.4]
  output        io_cdma_wt_done_status0, // @[:@288.4]
  output        io_cdma_wt_done_status1, // @[:@288.4]
  input  [1:0]  io_sdp2glb_done_intr_pd, // @[:@288.4]
  output        io_sdp_done_status0, // @[:@288.4]
  output        io_sdp_done_status1, // @[:@288.4]
  input         io_sdp_done_set0_trigger, // @[:@288.4]
  input         io_sdp_done_status0_trigger, // @[:@288.4]
  input  [21:0] io_req_wdat // @[:@288.4]
);
  wire  _T_82; // @[NV_NVDLA_GLB_ic.scala 99:38:@290.4]
  wire [5:0] _T_83; // @[NV_NVDLA_GLB_ic.scala 101:71:@291.4]
  wire [9:0] _T_84; // @[NV_NVDLA_GLB_ic.scala 101:92:@292.4]
  wire [15:0] _T_85; // @[Cat.scala 30:58:@293.4]
  wire [15:0] _T_87; // @[NV_NVDLA_GLB_ic.scala 101:26:@294.4]
  wire [15:0] _T_92; // @[NV_NVDLA_GLB_ic.scala 102:23:@298.4]
  wire [15:0] _T_101; // @[Cat.scala 30:58:@305.4]
  reg [15:0] _T_104; // @[NV_NVDLA_GLB_ic.scala 109:30:@306.4]
  reg [31:0] _RAND_0;
  reg  _T_107; // @[NV_NVDLA_GLB_ic.scala 114:39:@308.4]
  reg [31:0] _RAND_1;
  wire  _T_108; // @[NV_NVDLA_GLB_ic.scala 116:42:@309.4]
  wire  _T_109; // @[NV_NVDLA_GLB_ic.scala 116:59:@310.4]
  wire  _T_110; // @[NV_NVDLA_GLB_ic.scala 116:46:@311.4]
  wire  _T_112; // @[NV_NVDLA_GLB_ic.scala 117:45:@312.4]
  wire  _T_114; // @[NV_NVDLA_GLB_ic.scala 117:33:@313.4]
  wire  _T_115; // @[NV_NVDLA_GLB_ic.scala 116:33:@314.4]
  reg  _T_118; // @[NV_NVDLA_GLB_ic.scala 124:39:@317.4]
  reg [31:0] _RAND_2;
  wire  _T_119; // @[NV_NVDLA_GLB_ic.scala 126:42:@318.4]
  wire  _T_120; // @[NV_NVDLA_GLB_ic.scala 126:59:@319.4]
  wire  _T_121; // @[NV_NVDLA_GLB_ic.scala 126:46:@320.4]
  wire  _T_123; // @[NV_NVDLA_GLB_ic.scala 127:45:@321.4]
  wire  _T_125; // @[NV_NVDLA_GLB_ic.scala 127:33:@322.4]
  wire  _T_126; // @[NV_NVDLA_GLB_ic.scala 126:33:@323.4]
  reg  _T_129; // @[NV_NVDLA_GLB_ic.scala 135:39:@326.4]
  reg [31:0] _RAND_3;
  wire  _T_130; // @[NV_NVDLA_GLB_ic.scala 137:42:@327.4]
  wire  _T_131; // @[NV_NVDLA_GLB_ic.scala 137:59:@328.4]
  wire  _T_132; // @[NV_NVDLA_GLB_ic.scala 137:46:@329.4]
  wire  _T_134; // @[NV_NVDLA_GLB_ic.scala 138:45:@330.4]
  wire  _T_136; // @[NV_NVDLA_GLB_ic.scala 138:33:@331.4]
  wire  _T_137; // @[NV_NVDLA_GLB_ic.scala 137:33:@332.4]
  reg  _T_140; // @[NV_NVDLA_GLB_ic.scala 145:39:@335.4]
  reg [31:0] _RAND_4;
  wire  _T_141; // @[NV_NVDLA_GLB_ic.scala 147:42:@336.4]
  wire  _T_142; // @[NV_NVDLA_GLB_ic.scala 147:59:@337.4]
  wire  _T_143; // @[NV_NVDLA_GLB_ic.scala 147:46:@338.4]
  wire  _T_145; // @[NV_NVDLA_GLB_ic.scala 148:45:@339.4]
  wire  _T_147; // @[NV_NVDLA_GLB_ic.scala 148:33:@340.4]
  wire  _T_148; // @[NV_NVDLA_GLB_ic.scala 147:33:@341.4]
  reg  _T_151; // @[NV_NVDLA_GLB_ic.scala 158:39:@344.4]
  reg [31:0] _RAND_5;
  wire  _T_152; // @[NV_NVDLA_GLB_ic.scala 160:42:@345.4]
  wire  _T_153; // @[NV_NVDLA_GLB_ic.scala 160:59:@346.4]
  wire  _T_154; // @[NV_NVDLA_GLB_ic.scala 160:46:@347.4]
  wire  _T_156; // @[NV_NVDLA_GLB_ic.scala 161:45:@348.4]
  wire  _T_158; // @[NV_NVDLA_GLB_ic.scala 161:33:@349.4]
  wire  _T_159; // @[NV_NVDLA_GLB_ic.scala 160:33:@350.4]
  reg  _T_162; // @[NV_NVDLA_GLB_ic.scala 168:39:@353.4]
  reg [31:0] _RAND_6;
  wire  _T_163; // @[NV_NVDLA_GLB_ic.scala 170:42:@354.4]
  wire  _T_164; // @[NV_NVDLA_GLB_ic.scala 170:59:@355.4]
  wire  _T_165; // @[NV_NVDLA_GLB_ic.scala 170:46:@356.4]
  wire  _T_167; // @[NV_NVDLA_GLB_ic.scala 171:45:@357.4]
  wire  _T_169; // @[NV_NVDLA_GLB_ic.scala 171:33:@358.4]
  wire  _T_170; // @[NV_NVDLA_GLB_ic.scala 170:33:@359.4]
  reg  _T_173; // @[NV_NVDLA_GLB_ic.scala 226:44:@362.4]
  reg [31:0] _RAND_7;
  wire  _T_174; // @[NV_NVDLA_GLB_ic.scala 228:47:@363.4]
  wire  _T_175; // @[NV_NVDLA_GLB_ic.scala 228:65:@364.4]
  wire  _T_176; // @[NV_NVDLA_GLB_ic.scala 228:52:@365.4]
  wire  _T_178; // @[NV_NVDLA_GLB_ic.scala 229:45:@366.4]
  wire  _T_180; // @[NV_NVDLA_GLB_ic.scala 229:33:@367.4]
  wire  _T_181; // @[NV_NVDLA_GLB_ic.scala 228:38:@368.4]
  reg  _T_184; // @[NV_NVDLA_GLB_ic.scala 236:44:@371.4]
  reg [31:0] _RAND_8;
  wire  _T_185; // @[NV_NVDLA_GLB_ic.scala 238:47:@372.4]
  wire  _T_186; // @[NV_NVDLA_GLB_ic.scala 238:65:@373.4]
  wire  _T_187; // @[NV_NVDLA_GLB_ic.scala 238:52:@374.4]
  wire  _T_189; // @[NV_NVDLA_GLB_ic.scala 239:45:@375.4]
  wire  _T_191; // @[NV_NVDLA_GLB_ic.scala 239:33:@376.4]
  wire  _T_192; // @[NV_NVDLA_GLB_ic.scala 238:38:@377.4]
  reg  _T_195; // @[NV_NVDLA_GLB_ic.scala 246:43:@380.4]
  reg [31:0] _RAND_9;
  wire  _T_196; // @[NV_NVDLA_GLB_ic.scala 248:46:@381.4]
  wire  _T_197; // @[NV_NVDLA_GLB_ic.scala 248:64:@382.4]
  wire  _T_198; // @[NV_NVDLA_GLB_ic.scala 248:51:@383.4]
  wire  _T_200; // @[NV_NVDLA_GLB_ic.scala 249:45:@384.4]
  wire  _T_202; // @[NV_NVDLA_GLB_ic.scala 249:33:@385.4]
  wire  _T_203; // @[NV_NVDLA_GLB_ic.scala 248:37:@386.4]
  reg  _T_206; // @[NV_NVDLA_GLB_ic.scala 256:43:@389.4]
  reg [31:0] _RAND_10;
  wire  _T_207; // @[NV_NVDLA_GLB_ic.scala 258:46:@390.4]
  wire  _T_208; // @[NV_NVDLA_GLB_ic.scala 258:64:@391.4]
  wire  _T_209; // @[NV_NVDLA_GLB_ic.scala 258:51:@392.4]
  wire  _T_211; // @[NV_NVDLA_GLB_ic.scala 259:45:@393.4]
  wire  _T_213; // @[NV_NVDLA_GLB_ic.scala 259:33:@394.4]
  wire  _T_214; // @[NV_NVDLA_GLB_ic.scala 258:37:@395.4]
  reg  _T_217; // @[NV_NVDLA_GLB_ic.scala 266:40:@398.4]
  reg [31:0] _RAND_11;
  wire  _T_218; // @[NV_NVDLA_GLB_ic.scala 268:43:@399.4]
  wire  _T_219; // @[NV_NVDLA_GLB_ic.scala 268:61:@400.4]
  wire  _T_220; // @[NV_NVDLA_GLB_ic.scala 268:48:@401.4]
  wire  _T_222; // @[NV_NVDLA_GLB_ic.scala 269:45:@402.4]
  wire  _T_224; // @[NV_NVDLA_GLB_ic.scala 269:33:@403.4]
  wire  _T_225; // @[NV_NVDLA_GLB_ic.scala 268:34:@404.4]
  reg  _T_228; // @[NV_NVDLA_GLB_ic.scala 276:40:@407.4]
  reg [31:0] _RAND_12;
  wire  _T_229; // @[NV_NVDLA_GLB_ic.scala 278:43:@408.4]
  wire  _T_230; // @[NV_NVDLA_GLB_ic.scala 278:61:@409.4]
  wire  _T_231; // @[NV_NVDLA_GLB_ic.scala 278:48:@410.4]
  wire  _T_233; // @[NV_NVDLA_GLB_ic.scala 279:45:@411.4]
  wire  _T_235; // @[NV_NVDLA_GLB_ic.scala 279:33:@412.4]
  wire  _T_236; // @[NV_NVDLA_GLB_ic.scala 278:34:@413.4]
  assign _T_82 = io_nvdla_core_rstn == 1'h0; // @[NV_NVDLA_GLB_ic.scala 99:38:@290.4]
  assign _T_83 = io_req_wdat[21:16]; // @[NV_NVDLA_GLB_ic.scala 101:71:@291.4]
  assign _T_84 = io_req_wdat[9:0]; // @[NV_NVDLA_GLB_ic.scala 101:92:@292.4]
  assign _T_85 = {_T_83,_T_84}; // @[Cat.scala 30:58:@293.4]
  assign _T_87 = io_sdp_done_status0_trigger ? _T_85 : 16'h0; // @[NV_NVDLA_GLB_ic.scala 101:26:@294.4]
  assign _T_92 = io_sdp_done_set0_trigger ? _T_85 : 16'h0; // @[NV_NVDLA_GLB_ic.scala 102:23:@298.4]
  assign _T_101 = {io_cacc2glb_done_intr_pd,io_cdma_wt2glb_done_intr_pd,io_cdma_dat2glb_done_intr_pd,2'h0,2'h0,io_pdp2glb_done_intr_pd,io_cdp2glb_done_intr_pd,io_sdp2glb_done_intr_pd}; // @[Cat.scala 30:58:@305.4]
  assign _T_108 = _T_92[0]; // @[NV_NVDLA_GLB_ic.scala 116:42:@309.4]
  assign _T_109 = _T_104[0]; // @[NV_NVDLA_GLB_ic.scala 116:59:@310.4]
  assign _T_110 = _T_108 | _T_109; // @[NV_NVDLA_GLB_ic.scala 116:46:@311.4]
  assign _T_112 = _T_87[0]; // @[NV_NVDLA_GLB_ic.scala 117:45:@312.4]
  assign _T_114 = _T_112 ? 1'h0 : _T_107; // @[NV_NVDLA_GLB_ic.scala 117:33:@313.4]
  assign _T_115 = _T_110 ? 1'h1 : _T_114; // @[NV_NVDLA_GLB_ic.scala 116:33:@314.4]
  assign _T_119 = _T_92[1]; // @[NV_NVDLA_GLB_ic.scala 126:42:@318.4]
  assign _T_120 = _T_104[1]; // @[NV_NVDLA_GLB_ic.scala 126:59:@319.4]
  assign _T_121 = _T_119 | _T_120; // @[NV_NVDLA_GLB_ic.scala 126:46:@320.4]
  assign _T_123 = _T_87[1]; // @[NV_NVDLA_GLB_ic.scala 127:45:@321.4]
  assign _T_125 = _T_123 ? 1'h0 : _T_118; // @[NV_NVDLA_GLB_ic.scala 127:33:@322.4]
  assign _T_126 = _T_121 ? 1'h1 : _T_125; // @[NV_NVDLA_GLB_ic.scala 126:33:@323.4]
  assign _T_130 = _T_92[2]; // @[NV_NVDLA_GLB_ic.scala 137:42:@327.4]
  assign _T_131 = _T_104[2]; // @[NV_NVDLA_GLB_ic.scala 137:59:@328.4]
  assign _T_132 = _T_130 | _T_131; // @[NV_NVDLA_GLB_ic.scala 137:46:@329.4]
  assign _T_134 = _T_87[2]; // @[NV_NVDLA_GLB_ic.scala 138:45:@330.4]
  assign _T_136 = _T_134 ? 1'h0 : _T_129; // @[NV_NVDLA_GLB_ic.scala 138:33:@331.4]
  assign _T_137 = _T_132 ? 1'h1 : _T_136; // @[NV_NVDLA_GLB_ic.scala 137:33:@332.4]
  assign _T_141 = _T_92[3]; // @[NV_NVDLA_GLB_ic.scala 147:42:@336.4]
  assign _T_142 = _T_104[3]; // @[NV_NVDLA_GLB_ic.scala 147:59:@337.4]
  assign _T_143 = _T_141 | _T_142; // @[NV_NVDLA_GLB_ic.scala 147:46:@338.4]
  assign _T_145 = _T_87[3]; // @[NV_NVDLA_GLB_ic.scala 148:45:@339.4]
  assign _T_147 = _T_145 ? 1'h0 : _T_140; // @[NV_NVDLA_GLB_ic.scala 148:33:@340.4]
  assign _T_148 = _T_143 ? 1'h1 : _T_147; // @[NV_NVDLA_GLB_ic.scala 147:33:@341.4]
  assign _T_152 = _T_92[4]; // @[NV_NVDLA_GLB_ic.scala 160:42:@345.4]
  assign _T_153 = _T_104[4]; // @[NV_NVDLA_GLB_ic.scala 160:59:@346.4]
  assign _T_154 = _T_152 | _T_153; // @[NV_NVDLA_GLB_ic.scala 160:46:@347.4]
  assign _T_156 = _T_87[4]; // @[NV_NVDLA_GLB_ic.scala 161:45:@348.4]
  assign _T_158 = _T_156 ? 1'h0 : _T_151; // @[NV_NVDLA_GLB_ic.scala 161:33:@349.4]
  assign _T_159 = _T_154 ? 1'h1 : _T_158; // @[NV_NVDLA_GLB_ic.scala 160:33:@350.4]
  assign _T_163 = _T_92[5]; // @[NV_NVDLA_GLB_ic.scala 170:42:@354.4]
  assign _T_164 = _T_104[5]; // @[NV_NVDLA_GLB_ic.scala 170:59:@355.4]
  assign _T_165 = _T_163 | _T_164; // @[NV_NVDLA_GLB_ic.scala 170:46:@356.4]
  assign _T_167 = _T_87[5]; // @[NV_NVDLA_GLB_ic.scala 171:45:@357.4]
  assign _T_169 = _T_167 ? 1'h0 : _T_162; // @[NV_NVDLA_GLB_ic.scala 171:33:@358.4]
  assign _T_170 = _T_165 ? 1'h1 : _T_169; // @[NV_NVDLA_GLB_ic.scala 170:33:@359.4]
  assign _T_174 = _T_92[10]; // @[NV_NVDLA_GLB_ic.scala 228:47:@363.4]
  assign _T_175 = _T_104[10]; // @[NV_NVDLA_GLB_ic.scala 228:65:@364.4]
  assign _T_176 = _T_174 | _T_175; // @[NV_NVDLA_GLB_ic.scala 228:52:@365.4]
  assign _T_178 = _T_87[10]; // @[NV_NVDLA_GLB_ic.scala 229:45:@366.4]
  assign _T_180 = _T_178 ? 1'h0 : _T_173; // @[NV_NVDLA_GLB_ic.scala 229:33:@367.4]
  assign _T_181 = _T_176 ? 1'h1 : _T_180; // @[NV_NVDLA_GLB_ic.scala 228:38:@368.4]
  assign _T_185 = _T_92[11]; // @[NV_NVDLA_GLB_ic.scala 238:47:@372.4]
  assign _T_186 = _T_104[11]; // @[NV_NVDLA_GLB_ic.scala 238:65:@373.4]
  assign _T_187 = _T_185 | _T_186; // @[NV_NVDLA_GLB_ic.scala 238:52:@374.4]
  assign _T_189 = _T_87[11]; // @[NV_NVDLA_GLB_ic.scala 239:45:@375.4]
  assign _T_191 = _T_189 ? 1'h0 : _T_184; // @[NV_NVDLA_GLB_ic.scala 239:33:@376.4]
  assign _T_192 = _T_187 ? 1'h1 : _T_191; // @[NV_NVDLA_GLB_ic.scala 238:38:@377.4]
  assign _T_196 = _T_92[12]; // @[NV_NVDLA_GLB_ic.scala 248:46:@381.4]
  assign _T_197 = _T_104[12]; // @[NV_NVDLA_GLB_ic.scala 248:64:@382.4]
  assign _T_198 = _T_196 | _T_197; // @[NV_NVDLA_GLB_ic.scala 248:51:@383.4]
  assign _T_200 = _T_87[12]; // @[NV_NVDLA_GLB_ic.scala 249:45:@384.4]
  assign _T_202 = _T_200 ? 1'h0 : _T_195; // @[NV_NVDLA_GLB_ic.scala 249:33:@385.4]
  assign _T_203 = _T_198 ? 1'h1 : _T_202; // @[NV_NVDLA_GLB_ic.scala 248:37:@386.4]
  assign _T_207 = _T_92[13]; // @[NV_NVDLA_GLB_ic.scala 258:46:@390.4]
  assign _T_208 = _T_104[13]; // @[NV_NVDLA_GLB_ic.scala 258:64:@391.4]
  assign _T_209 = _T_207 | _T_208; // @[NV_NVDLA_GLB_ic.scala 258:51:@392.4]
  assign _T_211 = _T_87[13]; // @[NV_NVDLA_GLB_ic.scala 259:45:@393.4]
  assign _T_213 = _T_211 ? 1'h0 : _T_206; // @[NV_NVDLA_GLB_ic.scala 259:33:@394.4]
  assign _T_214 = _T_209 ? 1'h1 : _T_213; // @[NV_NVDLA_GLB_ic.scala 258:37:@395.4]
  assign _T_218 = _T_92[14]; // @[NV_NVDLA_GLB_ic.scala 268:43:@399.4]
  assign _T_219 = _T_104[14]; // @[NV_NVDLA_GLB_ic.scala 268:61:@400.4]
  assign _T_220 = _T_218 | _T_219; // @[NV_NVDLA_GLB_ic.scala 268:48:@401.4]
  assign _T_222 = _T_87[14]; // @[NV_NVDLA_GLB_ic.scala 269:45:@402.4]
  assign _T_224 = _T_222 ? 1'h0 : _T_217; // @[NV_NVDLA_GLB_ic.scala 269:33:@403.4]
  assign _T_225 = _T_220 ? 1'h1 : _T_224; // @[NV_NVDLA_GLB_ic.scala 268:34:@404.4]
  assign _T_229 = _T_92[15]; // @[NV_NVDLA_GLB_ic.scala 278:43:@408.4]
  assign _T_230 = _T_104[15]; // @[NV_NVDLA_GLB_ic.scala 278:61:@409.4]
  assign _T_231 = _T_229 | _T_230; // @[NV_NVDLA_GLB_ic.scala 278:48:@410.4]
  assign _T_233 = _T_87[15]; // @[NV_NVDLA_GLB_ic.scala 279:45:@411.4]
  assign _T_235 = _T_233 ? 1'h0 : _T_228; // @[NV_NVDLA_GLB_ic.scala 279:33:@412.4]
  assign _T_236 = _T_231 ? 1'h1 : _T_235; // @[NV_NVDLA_GLB_ic.scala 278:34:@413.4]
  assign io_cdp_done_status0 = _T_129; // @[NV_NVDLA_GLB_ic.scala 142:29:@334.4]
  assign io_cdp_done_status1 = _T_140; // @[NV_NVDLA_GLB_ic.scala 152:29:@343.4]
  assign io_pdp_done_status0 = _T_151; // @[NV_NVDLA_GLB_ic.scala 165:29:@352.4]
  assign io_pdp_done_status1 = _T_162; // @[NV_NVDLA_GLB_ic.scala 175:29:@361.4]
  assign io_cacc_done_status0 = _T_217; // @[NV_NVDLA_GLB_ic.scala 273:26:@406.4]
  assign io_cacc_done_status1 = _T_228; // @[NV_NVDLA_GLB_ic.scala 283:26:@415.4]
  assign io_cdma_dat_done_status0 = _T_173; // @[NV_NVDLA_GLB_ic.scala 233:30:@370.4]
  assign io_cdma_dat_done_status1 = _T_184; // @[NV_NVDLA_GLB_ic.scala 243:30:@379.4]
  assign io_cdma_wt_done_status0 = _T_195; // @[NV_NVDLA_GLB_ic.scala 253:29:@388.4]
  assign io_cdma_wt_done_status1 = _T_206; // @[NV_NVDLA_GLB_ic.scala 263:29:@397.4]
  assign io_sdp_done_status0 = _T_107; // @[NV_NVDLA_GLB_ic.scala 121:25:@316.4]
  assign io_sdp_done_status1 = _T_118; // @[NV_NVDLA_GLB_ic.scala 131:25:@325.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_104 = _RAND_0[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_107 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_118 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_129 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_140 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_151 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_162 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_173 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_184 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_195 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_206 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_217 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_228 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (_T_82) begin
      _T_104 <= 16'h0;
    end else begin
      _T_104 <= _T_101;
    end
    if (_T_82) begin
      _T_107 <= 1'h0;
    end else begin
      if (_T_110) begin
        _T_107 <= 1'h1;
      end else begin
        if (_T_112) begin
          _T_107 <= 1'h0;
        end
      end
    end
    if (_T_82) begin
      _T_118 <= 1'h0;
    end else begin
      if (_T_121) begin
        _T_118 <= 1'h1;
      end else begin
        if (_T_123) begin
          _T_118 <= 1'h0;
        end
      end
    end
    if (_T_82) begin
      _T_129 <= 1'h0;
    end else begin
      if (_T_132) begin
        _T_129 <= 1'h1;
      end else begin
        if (_T_134) begin
          _T_129 <= 1'h0;
        end
      end
    end
    if (_T_82) begin
      _T_140 <= 1'h0;
    end else begin
      if (_T_143) begin
        _T_140 <= 1'h1;
      end else begin
        if (_T_145) begin
          _T_140 <= 1'h0;
        end
      end
    end
    if (_T_82) begin
      _T_151 <= 1'h0;
    end else begin
      if (_T_154) begin
        _T_151 <= 1'h1;
      end else begin
        if (_T_156) begin
          _T_151 <= 1'h0;
        end
      end
    end
    if (_T_82) begin
      _T_162 <= 1'h0;
    end else begin
      if (_T_165) begin
        _T_162 <= 1'h1;
      end else begin
        if (_T_167) begin
          _T_162 <= 1'h0;
        end
      end
    end
    if (_T_82) begin
      _T_173 <= 1'h0;
    end else begin
      if (_T_176) begin
        _T_173 <= 1'h1;
      end else begin
        if (_T_178) begin
          _T_173 <= 1'h0;
        end
      end
    end
    if (_T_82) begin
      _T_184 <= 1'h0;
    end else begin
      if (_T_187) begin
        _T_184 <= 1'h1;
      end else begin
        if (_T_189) begin
          _T_184 <= 1'h0;
        end
      end
    end
    if (_T_82) begin
      _T_195 <= 1'h0;
    end else begin
      if (_T_198) begin
        _T_195 <= 1'h1;
      end else begin
        if (_T_200) begin
          _T_195 <= 1'h0;
        end
      end
    end
    if (_T_82) begin
      _T_206 <= 1'h0;
    end else begin
      if (_T_209) begin
        _T_206 <= 1'h1;
      end else begin
        if (_T_211) begin
          _T_206 <= 1'h0;
        end
      end
    end
    if (_T_82) begin
      _T_217 <= 1'h0;
    end else begin
      if (_T_220) begin
        _T_217 <= 1'h1;
      end else begin
        if (_T_222) begin
          _T_217 <= 1'h0;
        end
      end
    end
    if (_T_82) begin
      _T_228 <= 1'h0;
    end else begin
      if (_T_231) begin
        _T_228 <= 1'h1;
      end else begin
        if (_T_233) begin
          _T_228 <= 1'h0;
        end
      end
    end
  end
endmodule
module NV_soDLA_glb( // @[:@470.2]
  input         clock, // @[:@471.4]
  input         reset, // @[:@472.4]
  input         io_nvdla_core_clk, // @[:@473.4]
  input         io_nvdla_falcon_clk, // @[:@473.4]
  input         io_nvdla_core_rstn, // @[:@473.4]
  input         io_nvdla_falcon_rstn, // @[:@473.4]
  output        io_csb2glb_req_ready, // @[:@473.4]
  input         io_csb2glb_req_valid, // @[:@473.4]
  input  [62:0] io_csb2glb_req_bits, // @[:@473.4]
  output        io_csb2glb_resp_valid, // @[:@473.4]
  output [33:0] io_csb2glb_resp_bits, // @[:@473.4]
  output        io_core_intr, // @[:@473.4]
  input  [1:0]  io_cdp2glb_done_intr_pd, // @[:@473.4]
  input  [1:0]  io_pdp2glb_done_intr_pd, // @[:@473.4]
  input  [1:0]  io_cacc2glb_done_intr_pd, // @[:@473.4]
  input  [1:0]  io_cdma_dat2glb_done_intr_pd, // @[:@473.4]
  input  [1:0]  io_cdma_wt2glb_done_intr_pd, // @[:@473.4]
  input  [1:0]  io_sdp2glb_done_intr_pd // @[:@473.4]
);
  wire  u_csb_reset; // @[NV_NVDLA_glb.scala 59:23:@475.4]
  wire  u_csb_io_nvdla_core_clk; // @[NV_NVDLA_glb.scala 59:23:@475.4]
  wire  u_csb_io_cdp_done_status0; // @[NV_NVDLA_glb.scala 59:23:@475.4]
  wire  u_csb_io_cdp_done_status1; // @[NV_NVDLA_glb.scala 59:23:@475.4]
  wire  u_csb_io_pdp_done_status0; // @[NV_NVDLA_glb.scala 59:23:@475.4]
  wire  u_csb_io_pdp_done_status1; // @[NV_NVDLA_glb.scala 59:23:@475.4]
  wire  u_csb_io_cacc_done_status0; // @[NV_NVDLA_glb.scala 59:23:@475.4]
  wire  u_csb_io_cacc_done_status1; // @[NV_NVDLA_glb.scala 59:23:@475.4]
  wire  u_csb_io_cdma_dat_done_status0; // @[NV_NVDLA_glb.scala 59:23:@475.4]
  wire  u_csb_io_cdma_dat_done_status1; // @[NV_NVDLA_glb.scala 59:23:@475.4]
  wire  u_csb_io_cdma_wt_done_status0; // @[NV_NVDLA_glb.scala 59:23:@475.4]
  wire  u_csb_io_cdma_wt_done_status1; // @[NV_NVDLA_glb.scala 59:23:@475.4]
  wire  u_csb_io_csb2glb_req_valid; // @[NV_NVDLA_glb.scala 59:23:@475.4]
  wire [62:0] u_csb_io_csb2glb_req_bits; // @[NV_NVDLA_glb.scala 59:23:@475.4]
  wire  u_csb_io_csb2glb_resp_valid; // @[NV_NVDLA_glb.scala 59:23:@475.4]
  wire [33:0] u_csb_io_csb2glb_resp_bits; // @[NV_NVDLA_glb.scala 59:23:@475.4]
  wire  u_csb_io_sdp_done_status0; // @[NV_NVDLA_glb.scala 59:23:@475.4]
  wire  u_csb_io_sdp_done_status1; // @[NV_NVDLA_glb.scala 59:23:@475.4]
  wire  u_csb_io_sdp_done_set0_trigger; // @[NV_NVDLA_glb.scala 59:23:@475.4]
  wire  u_csb_io_sdp_done_status0_trigger; // @[NV_NVDLA_glb.scala 59:23:@475.4]
  wire [31:0] u_csb_io_req_wdat; // @[NV_NVDLA_glb.scala 59:23:@475.4]
  wire  u_ic_io_nvdla_core_clk; // @[NV_NVDLA_glb.scala 60:22:@478.4]
  wire  u_ic_io_nvdla_core_rstn; // @[NV_NVDLA_glb.scala 60:22:@478.4]
  wire [1:0] u_ic_io_cdp2glb_done_intr_pd; // @[NV_NVDLA_glb.scala 60:22:@478.4]
  wire  u_ic_io_cdp_done_status0; // @[NV_NVDLA_glb.scala 60:22:@478.4]
  wire  u_ic_io_cdp_done_status1; // @[NV_NVDLA_glb.scala 60:22:@478.4]
  wire [1:0] u_ic_io_pdp2glb_done_intr_pd; // @[NV_NVDLA_glb.scala 60:22:@478.4]
  wire  u_ic_io_pdp_done_status0; // @[NV_NVDLA_glb.scala 60:22:@478.4]
  wire  u_ic_io_pdp_done_status1; // @[NV_NVDLA_glb.scala 60:22:@478.4]
  wire [1:0] u_ic_io_cacc2glb_done_intr_pd; // @[NV_NVDLA_glb.scala 60:22:@478.4]
  wire  u_ic_io_cacc_done_status0; // @[NV_NVDLA_glb.scala 60:22:@478.4]
  wire  u_ic_io_cacc_done_status1; // @[NV_NVDLA_glb.scala 60:22:@478.4]
  wire [1:0] u_ic_io_cdma_dat2glb_done_intr_pd; // @[NV_NVDLA_glb.scala 60:22:@478.4]
  wire  u_ic_io_cdma_dat_done_status0; // @[NV_NVDLA_glb.scala 60:22:@478.4]
  wire  u_ic_io_cdma_dat_done_status1; // @[NV_NVDLA_glb.scala 60:22:@478.4]
  wire [1:0] u_ic_io_cdma_wt2glb_done_intr_pd; // @[NV_NVDLA_glb.scala 60:22:@478.4]
  wire  u_ic_io_cdma_wt_done_status0; // @[NV_NVDLA_glb.scala 60:22:@478.4]
  wire  u_ic_io_cdma_wt_done_status1; // @[NV_NVDLA_glb.scala 60:22:@478.4]
  wire [1:0] u_ic_io_sdp2glb_done_intr_pd; // @[NV_NVDLA_glb.scala 60:22:@478.4]
  wire  u_ic_io_sdp_done_status0; // @[NV_NVDLA_glb.scala 60:22:@478.4]
  wire  u_ic_io_sdp_done_status1; // @[NV_NVDLA_glb.scala 60:22:@478.4]
  wire  u_ic_io_sdp_done_set0_trigger; // @[NV_NVDLA_glb.scala 60:22:@478.4]
  wire  u_ic_io_sdp_done_status0_trigger; // @[NV_NVDLA_glb.scala 60:22:@478.4]
  wire [21:0] u_ic_io_req_wdat; // @[NV_NVDLA_glb.scala 60:22:@478.4]
  NV_NVDLA_GLB_csb u_csb ( // @[NV_NVDLA_glb.scala 59:23:@475.4]
    .reset(u_csb_reset),
    .io_nvdla_core_clk(u_csb_io_nvdla_core_clk),
    .io_cdp_done_status0(u_csb_io_cdp_done_status0),
    .io_cdp_done_status1(u_csb_io_cdp_done_status1),
    .io_pdp_done_status0(u_csb_io_pdp_done_status0),
    .io_pdp_done_status1(u_csb_io_pdp_done_status1),
    .io_cacc_done_status0(u_csb_io_cacc_done_status0),
    .io_cacc_done_status1(u_csb_io_cacc_done_status1),
    .io_cdma_dat_done_status0(u_csb_io_cdma_dat_done_status0),
    .io_cdma_dat_done_status1(u_csb_io_cdma_dat_done_status1),
    .io_cdma_wt_done_status0(u_csb_io_cdma_wt_done_status0),
    .io_cdma_wt_done_status1(u_csb_io_cdma_wt_done_status1),
    .io_csb2glb_req_valid(u_csb_io_csb2glb_req_valid),
    .io_csb2glb_req_bits(u_csb_io_csb2glb_req_bits),
    .io_csb2glb_resp_valid(u_csb_io_csb2glb_resp_valid),
    .io_csb2glb_resp_bits(u_csb_io_csb2glb_resp_bits),
    .io_sdp_done_status0(u_csb_io_sdp_done_status0),
    .io_sdp_done_status1(u_csb_io_sdp_done_status1),
    .io_sdp_done_set0_trigger(u_csb_io_sdp_done_set0_trigger),
    .io_sdp_done_status0_trigger(u_csb_io_sdp_done_status0_trigger),
    .io_req_wdat(u_csb_io_req_wdat)
  );
  NV_NVDLA_GLB_ic u_ic ( // @[NV_NVDLA_glb.scala 60:22:@478.4]
    .io_nvdla_core_clk(u_ic_io_nvdla_core_clk),
    .io_nvdla_core_rstn(u_ic_io_nvdla_core_rstn),
    .io_cdp2glb_done_intr_pd(u_ic_io_cdp2glb_done_intr_pd),
    .io_cdp_done_status0(u_ic_io_cdp_done_status0),
    .io_cdp_done_status1(u_ic_io_cdp_done_status1),
    .io_pdp2glb_done_intr_pd(u_ic_io_pdp2glb_done_intr_pd),
    .io_pdp_done_status0(u_ic_io_pdp_done_status0),
    .io_pdp_done_status1(u_ic_io_pdp_done_status1),
    .io_cacc2glb_done_intr_pd(u_ic_io_cacc2glb_done_intr_pd),
    .io_cacc_done_status0(u_ic_io_cacc_done_status0),
    .io_cacc_done_status1(u_ic_io_cacc_done_status1),
    .io_cdma_dat2glb_done_intr_pd(u_ic_io_cdma_dat2glb_done_intr_pd),
    .io_cdma_dat_done_status0(u_ic_io_cdma_dat_done_status0),
    .io_cdma_dat_done_status1(u_ic_io_cdma_dat_done_status1),
    .io_cdma_wt2glb_done_intr_pd(u_ic_io_cdma_wt2glb_done_intr_pd),
    .io_cdma_wt_done_status0(u_ic_io_cdma_wt_done_status0),
    .io_cdma_wt_done_status1(u_ic_io_cdma_wt_done_status1),
    .io_sdp2glb_done_intr_pd(u_ic_io_sdp2glb_done_intr_pd),
    .io_sdp_done_status0(u_ic_io_sdp_done_status0),
    .io_sdp_done_status1(u_ic_io_sdp_done_status1),
    .io_sdp_done_set0_trigger(u_ic_io_sdp_done_set0_trigger),
    .io_sdp_done_status0_trigger(u_ic_io_sdp_done_status0_trigger),
    .io_req_wdat(u_ic_io_req_wdat)
  );
  assign io_csb2glb_req_ready = 1'h1; // @[NV_NVDLA_glb.scala 119:16:@519.4]
  assign io_csb2glb_resp_valid = u_csb_io_csb2glb_resp_valid; // @[NV_NVDLA_glb.scala 119:16:@516.4]
  assign io_csb2glb_resp_bits = u_csb_io_csb2glb_resp_bits; // @[NV_NVDLA_glb.scala 119:16:@515.4]
  assign io_core_intr = 1'h0; // @[NV_NVDLA_glb.scala 126:18:@524.4]
  assign u_csb_reset = reset; // @[:@477.4]
  assign u_csb_io_nvdla_core_clk = io_nvdla_core_clk; // @[NV_NVDLA_glb.scala 62:29:@481.4]
  assign u_csb_io_cdp_done_status0 = u_ic_io_cdp_done_status0; // @[NV_NVDLA_glb.scala 76:39:@486.4]
  assign u_csb_io_cdp_done_status1 = u_ic_io_cdp_done_status1; // @[NV_NVDLA_glb.scala 77:39:@487.4]
  assign u_csb_io_pdp_done_status0 = u_ic_io_pdp_done_status0; // @[NV_NVDLA_glb.scala 83:39:@491.4]
  assign u_csb_io_pdp_done_status1 = u_ic_io_pdp_done_status1; // @[NV_NVDLA_glb.scala 84:39:@492.4]
  assign u_csb_io_cacc_done_status0 = u_ic_io_cacc_done_status0; // @[NV_NVDLA_glb.scala 96:32:@496.4]
  assign u_csb_io_cacc_done_status1 = u_ic_io_cacc_done_status1; // @[NV_NVDLA_glb.scala 97:32:@497.4]
  assign u_csb_io_cdma_dat_done_status0 = u_ic_io_cdma_dat_done_status0; // @[NV_NVDLA_glb.scala 98:36:@498.4]
  assign u_csb_io_cdma_dat_done_status1 = u_ic_io_cdma_dat_done_status1; // @[NV_NVDLA_glb.scala 99:36:@499.4]
  assign u_csb_io_cdma_wt_done_status0 = u_ic_io_cdma_wt_done_status0; // @[NV_NVDLA_glb.scala 100:35:@500.4]
  assign u_csb_io_cdma_wt_done_status1 = u_ic_io_cdma_wt_done_status1; // @[NV_NVDLA_glb.scala 101:35:@501.4]
  assign u_csb_io_csb2glb_req_valid = io_csb2glb_req_valid; // @[NV_NVDLA_glb.scala 119:16:@518.4]
  assign u_csb_io_csb2glb_req_bits = io_csb2glb_req_bits; // @[NV_NVDLA_glb.scala 119:16:@517.4]
  assign u_csb_io_sdp_done_status0 = u_ic_io_sdp_done_status0; // @[NV_NVDLA_glb.scala 102:31:@502.4]
  assign u_csb_io_sdp_done_status1 = u_ic_io_sdp_done_status1; // @[NV_NVDLA_glb.scala 103:31:@503.4]
  assign u_ic_io_nvdla_core_clk = io_nvdla_core_clk; // @[NV_NVDLA_glb.scala 63:28:@482.4]
  assign u_ic_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_NVDLA_glb.scala 65:29:@484.4]
  assign u_ic_io_cdp2glb_done_intr_pd = io_cdp2glb_done_intr_pd; // @[NV_NVDLA_glb.scala 80:42:@490.4]
  assign u_ic_io_pdp2glb_done_intr_pd = io_pdp2glb_done_intr_pd; // @[NV_NVDLA_glb.scala 87:42:@495.4]
  assign u_ic_io_cacc2glb_done_intr_pd = io_cacc2glb_done_intr_pd; // @[NV_NVDLA_glb.scala 121:35:@520.4]
  assign u_ic_io_cdma_dat2glb_done_intr_pd = io_cdma_dat2glb_done_intr_pd; // @[NV_NVDLA_glb.scala 122:39:@521.4]
  assign u_ic_io_cdma_wt2glb_done_intr_pd = io_cdma_wt2glb_done_intr_pd; // @[NV_NVDLA_glb.scala 123:38:@522.4]
  assign u_ic_io_sdp2glb_done_intr_pd = io_sdp2glb_done_intr_pd; // @[NV_NVDLA_glb.scala 124:34:@523.4]
  assign u_ic_io_sdp_done_set0_trigger = u_csb_io_sdp_done_set0_trigger; // @[NV_NVDLA_glb.scala 114:35:@512.4]
  assign u_ic_io_sdp_done_status0_trigger = u_csb_io_sdp_done_status0_trigger; // @[NV_NVDLA_glb.scala 115:38:@513.4]
  assign u_ic_io_req_wdat = u_csb_io_req_wdat[21:0]; // @[NV_NVDLA_glb.scala 116:22:@514.4]
endmodule
