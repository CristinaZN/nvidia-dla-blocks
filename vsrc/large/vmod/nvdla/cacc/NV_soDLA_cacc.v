module NV_NVDLA_BASIC_REG_single( // @[:@3.2]
  input         reset, // @[:@5.4]
  input         io_nvdla_core_clk, // @[:@6.4]
  output [31:0] io_reg_rd_data, // @[:@6.4]
  input  [11:0] io_reg_offset, // @[:@6.4]
  input  [31:0] io_reg_wr_data, // @[:@6.4]
  input         io_reg_wr_en, // @[:@6.4]
  output        io_producer, // @[:@6.4]
  input         io_consumer, // @[:@6.4]
  input  [1:0]  io_status_0, // @[:@6.4]
  input  [1:0]  io_status_1 // @[:@6.4]
);
  wire [31:0] _GEN_1; // @[NV_NVDLA_BASIC_REG_single.scala 46:43:@8.4]
  wire  _T_24; // @[NV_NVDLA_BASIC_REG_single.scala 46:43:@8.4]
  wire  _T_25; // @[NV_NVDLA_BASIC_REG_single.scala 46:66:@9.4]
  wire [31:0] _T_35; // @[Cat.scala 30:58:@14.4]
  wire [31:0] _T_41; // @[Cat.scala 30:58:@17.4]
  wire  _T_42; // @[Mux.scala 46:19:@18.4]
  wire [31:0] _T_43; // @[Mux.scala 46:16:@19.4]
  wire  _T_44; // @[Mux.scala 46:19:@20.4]
  wire  _T_46; // @[NV_NVDLA_BASIC_REG_single.scala 59:44:@23.4]
  reg  _T_49; // @[Reg.scala 19:20:@24.4]
  reg [31:0] _RAND_0;
  wire  _GEN_0; // @[Reg.scala 20:19:@25.4]
  assign _GEN_1 = {{20'd0}, io_reg_offset}; // @[NV_NVDLA_BASIC_REG_single.scala 46:43:@8.4]
  assign _T_24 = _GEN_1 == 32'h4; // @[NV_NVDLA_BASIC_REG_single.scala 46:43:@8.4]
  assign _T_25 = _T_24 & io_reg_wr_en; // @[NV_NVDLA_BASIC_REG_single.scala 46:66:@9.4]
  assign _T_35 = {15'h0,io_consumer,15'h0,io_producer}; // @[Cat.scala 30:58:@14.4]
  assign _T_41 = {14'h0,io_status_1,14'h0,io_status_0}; // @[Cat.scala 30:58:@17.4]
  assign _T_42 = 32'h0 == _GEN_1; // @[Mux.scala 46:19:@18.4]
  assign _T_43 = _T_42 ? _T_41 : 32'h0; // @[Mux.scala 46:16:@19.4]
  assign _T_44 = 32'h4 == _GEN_1; // @[Mux.scala 46:19:@20.4]
  assign _T_46 = io_reg_wr_data[0]; // @[NV_NVDLA_BASIC_REG_single.scala 59:44:@23.4]
  assign _GEN_0 = _T_25 ? _T_46 : _T_49; // @[Reg.scala 20:19:@25.4]
  assign io_reg_rd_data = _T_44 ? _T_35 : _T_43; // @[NV_NVDLA_BASIC_REG_single.scala 50:20:@22.4]
  assign io_producer = _T_49; // @[NV_NVDLA_BASIC_REG_single.scala 59:17:@28.4]
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
  _T_49 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_49 <= 1'h0;
    end else begin
      if (_T_25) begin
        _T_49 <= _T_46;
      end
    end
  end
endmodule
module NV_NVDLA_CACC_dual_reg( // @[:@30.2]
  input         reset, // @[:@32.4]
  input         io_nvdla_core_clk, // @[:@33.4]
  output [31:0] io_reg_rd_data, // @[:@33.4]
  input  [11:0] io_reg_offset, // @[:@33.4]
  input  [31:0] io_reg_wr_data, // @[:@33.4]
  input         io_reg_wr_en, // @[:@33.4]
  output [4:0]  io_field_batches, // @[:@33.4]
  output [4:0]  io_field_clip_truncate, // @[:@33.4]
  output [31:0] io_field_cya, // @[:@33.4]
  output [31:0] io_field_dataout_addr, // @[:@33.4]
  output        io_field_line_packed, // @[:@33.4]
  output        io_field_surf_packed, // @[:@33.4]
  output [12:0] io_field_dataout_height, // @[:@33.4]
  output [12:0] io_field_dataout_width, // @[:@33.4]
  output [12:0] io_field_dataout_channel, // @[:@33.4]
  output [23:0] io_field_line_stride, // @[:@33.4]
  output        io_field_conv_mode, // @[:@33.4]
  output [1:0]  io_field_proc_precision, // @[:@33.4]
  output [23:0] io_field_surf_stride, // @[:@33.4]
  output        io_op_en_trigger, // @[:@33.4]
  input         io_op_en, // @[:@33.4]
  input  [31:0] io_sat_count // @[:@33.4]
);
  wire [31:0] _GEN_13; // @[NV_NVDLA_CACC_dual_reg.scala 49:58:@35.4]
  wire  _T_48; // @[NV_NVDLA_CACC_dual_reg.scala 49:58:@35.4]
  wire  _T_49; // @[NV_NVDLA_CACC_dual_reg.scala 49:82:@36.4]
  wire  _T_51; // @[NV_NVDLA_CACC_dual_reg.scala 50:54:@37.4]
  wire  _T_52; // @[NV_NVDLA_CACC_dual_reg.scala 50:78:@38.4]
  wire  _T_54; // @[NV_NVDLA_CACC_dual_reg.scala 51:49:@39.4]
  wire  _T_55; // @[NV_NVDLA_CACC_dual_reg.scala 51:73:@40.4]
  wire  _T_57; // @[NV_NVDLA_CACC_dual_reg.scala 52:58:@41.4]
  wire  _T_58; // @[NV_NVDLA_CACC_dual_reg.scala 52:82:@42.4]
  wire  _T_60; // @[NV_NVDLA_CACC_dual_reg.scala 53:57:@43.4]
  wire  _T_61; // @[NV_NVDLA_CACC_dual_reg.scala 53:81:@44.4]
  wire  _T_63; // @[NV_NVDLA_CACC_dual_reg.scala 54:60:@45.4]
  wire  _T_64; // @[NV_NVDLA_CACC_dual_reg.scala 54:84:@46.4]
  wire  _T_66; // @[NV_NVDLA_CACC_dual_reg.scala 55:60:@47.4]
  wire  _T_67; // @[NV_NVDLA_CACC_dual_reg.scala 55:84:@48.4]
  wire  _T_69; // @[NV_NVDLA_CACC_dual_reg.scala 56:57:@49.4]
  wire  _T_70; // @[NV_NVDLA_CACC_dual_reg.scala 56:81:@50.4]
  wire  _T_72; // @[NV_NVDLA_CACC_dual_reg.scala 57:54:@51.4]
  wire  _T_73; // @[NV_NVDLA_CACC_dual_reg.scala 57:78:@52.4]
  wire  _T_75; // @[NV_NVDLA_CACC_dual_reg.scala 58:55:@53.4]
  wire  _T_81; // @[NV_NVDLA_CACC_dual_reg.scala 60:57:@57.4]
  wire  _T_82; // @[NV_NVDLA_CACC_dual_reg.scala 60:81:@58.4]
  wire [31:0] _T_86; // @[Cat.scala 30:58:@60.4]
  wire [31:0] _T_89; // @[Cat.scala 30:58:@61.4]
  wire [31:0] _T_97; // @[Cat.scala 30:58:@64.4]
  wire [31:0] _T_103; // @[Cat.scala 30:58:@67.4]
  wire [31:0] _T_106; // @[Cat.scala 30:58:@68.4]
  wire [31:0] _T_109; // @[Cat.scala 30:58:@69.4]
  wire [31:0] _T_115; // @[Cat.scala 30:58:@72.4]
  wire [31:0] _T_118; // @[Cat.scala 30:58:@73.4]
  wire [31:0] _T_122; // @[Cat.scala 30:58:@74.4]
  wire  _T_123; // @[Mux.scala 46:19:@75.4]
  wire [31:0] _T_124; // @[Mux.scala 46:16:@76.4]
  wire  _T_125; // @[Mux.scala 46:19:@77.4]
  wire [31:0] _T_126; // @[Mux.scala 46:16:@78.4]
  wire  _T_127; // @[Mux.scala 46:19:@79.4]
  wire [31:0] _T_128; // @[Mux.scala 46:16:@80.4]
  wire  _T_129; // @[Mux.scala 46:19:@81.4]
  wire [31:0] _T_130; // @[Mux.scala 46:16:@82.4]
  wire  _T_131; // @[Mux.scala 46:19:@83.4]
  wire [31:0] _T_132; // @[Mux.scala 46:16:@84.4]
  wire  _T_133; // @[Mux.scala 46:19:@85.4]
  wire [31:0] _T_134; // @[Mux.scala 46:16:@86.4]
  wire  _T_135; // @[Mux.scala 46:19:@87.4]
  wire [31:0] _T_136; // @[Mux.scala 46:16:@88.4]
  wire  _T_137; // @[Mux.scala 46:19:@89.4]
  wire [31:0] _T_138; // @[Mux.scala 46:16:@90.4]
  wire  _T_139; // @[Mux.scala 46:19:@91.4]
  wire [31:0] _T_140; // @[Mux.scala 46:16:@92.4]
  wire  _T_141; // @[Mux.scala 46:19:@93.4]
  wire [31:0] _T_142; // @[Mux.scala 46:16:@94.4]
  wire  _T_143; // @[Mux.scala 46:19:@95.4]
  wire [31:0] _T_144; // @[Mux.scala 46:16:@96.4]
  wire  _T_145; // @[Mux.scala 46:19:@97.4]
  wire [4:0] _T_147; // @[NV_NVDLA_CACC_dual_reg.scala 95:48:@100.4]
  reg [4:0] _T_150; // @[Reg.scala 19:20:@101.4]
  reg [31:0] _RAND_0;
  wire [4:0] _GEN_0; // @[Reg.scala 20:19:@102.4]
  reg [4:0] _T_154; // @[Reg.scala 19:20:@107.4]
  reg [31:0] _RAND_1;
  wire [4:0] _GEN_1; // @[Reg.scala 20:19:@108.4]
  reg [31:0] _T_158; // @[Reg.scala 19:20:@113.4]
  reg [31:0] _RAND_2;
  wire [31:0] _GEN_2; // @[Reg.scala 20:19:@114.4]
  reg [31:0] _T_162; // @[Reg.scala 19:20:@119.4]
  reg [31:0] _RAND_3;
  wire [31:0] _GEN_3; // @[Reg.scala 20:19:@120.4]
  wire  _T_163; // @[NV_NVDLA_CACC_dual_reg.scala 103:52:@124.4]
  reg  _T_166; // @[Reg.scala 19:20:@125.4]
  reg [31:0] _RAND_4;
  wire  _GEN_4; // @[Reg.scala 20:19:@126.4]
  wire  _T_167; // @[NV_NVDLA_CACC_dual_reg.scala 105:52:@130.4]
  reg  _T_170; // @[Reg.scala 19:20:@131.4]
  reg [31:0] _RAND_5;
  wire  _GEN_5; // @[Reg.scala 20:19:@132.4]
  wire [12:0] _T_171; // @[NV_NVDLA_CACC_dual_reg.scala 107:55:@136.4]
  reg [12:0] _T_174; // @[Reg.scala 19:20:@137.4]
  reg [31:0] _RAND_6;
  wire [12:0] _GEN_6; // @[Reg.scala 20:19:@138.4]
  wire [12:0] _T_175; // @[NV_NVDLA_CACC_dual_reg.scala 109:54:@142.4]
  reg [12:0] _T_178; // @[Reg.scala 19:20:@143.4]
  reg [31:0] _RAND_7;
  wire [12:0] _GEN_7; // @[Reg.scala 20:19:@144.4]
  reg [12:0] _T_182; // @[Reg.scala 19:20:@149.4]
  reg [31:0] _RAND_8;
  wire [12:0] _GEN_8; // @[Reg.scala 20:19:@150.4]
  wire [23:0] _T_183; // @[NV_NVDLA_CACC_dual_reg.scala 113:52:@154.4]
  reg [23:0] _T_186; // @[Reg.scala 19:20:@155.4]
  reg [31:0] _RAND_9;
  wire [23:0] _GEN_9; // @[Reg.scala 20:19:@156.4]
  reg  _T_190; // @[Reg.scala 19:20:@161.4]
  reg [31:0] _RAND_10;
  wire  _GEN_10; // @[Reg.scala 20:19:@162.4]
  wire [1:0] _T_191; // @[NV_NVDLA_CACC_dual_reg.scala 117:55:@166.4]
  reg [1:0] _T_194; // @[Reg.scala 19:20:@167.4]
  reg [31:0] _RAND_11;
  wire [1:0] _GEN_11; // @[Reg.scala 20:19:@168.4]
  reg [23:0] _T_198; // @[Reg.scala 19:20:@173.4]
  reg [31:0] _RAND_12;
  wire [23:0] _GEN_12; // @[Reg.scala 20:19:@174.4]
  assign _GEN_13 = {{20'd0}, io_reg_offset}; // @[NV_NVDLA_CACC_dual_reg.scala 49:58:@35.4]
  assign _T_48 = _GEN_13 == 32'h1c; // @[NV_NVDLA_CACC_dual_reg.scala 49:58:@35.4]
  assign _T_49 = _T_48 & io_reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 49:82:@36.4]
  assign _T_51 = _GEN_13 == 32'h2c; // @[NV_NVDLA_CACC_dual_reg.scala 50:54:@37.4]
  assign _T_52 = _T_51 & io_reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 50:78:@38.4]
  assign _T_54 = _GEN_13 == 32'h34; // @[NV_NVDLA_CACC_dual_reg.scala 51:49:@39.4]
  assign _T_55 = _T_54 & io_reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 51:73:@40.4]
  assign _T_57 = _GEN_13 == 32'h18; // @[NV_NVDLA_CACC_dual_reg.scala 52:58:@41.4]
  assign _T_58 = _T_57 & io_reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 52:82:@42.4]
  assign _T_60 = _GEN_13 == 32'h28; // @[NV_NVDLA_CACC_dual_reg.scala 53:57:@43.4]
  assign _T_61 = _T_60 & io_reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 53:81:@44.4]
  assign _T_63 = _GEN_13 == 32'h10; // @[NV_NVDLA_CACC_dual_reg.scala 54:60:@45.4]
  assign _T_64 = _T_63 & io_reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 54:84:@46.4]
  assign _T_66 = _GEN_13 == 32'h14; // @[NV_NVDLA_CACC_dual_reg.scala 55:60:@47.4]
  assign _T_67 = _T_66 & io_reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 55:84:@48.4]
  assign _T_69 = _GEN_13 == 32'h20; // @[NV_NVDLA_CACC_dual_reg.scala 56:57:@49.4]
  assign _T_70 = _T_69 & io_reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 56:81:@50.4]
  assign _T_72 = _GEN_13 == 32'hc; // @[NV_NVDLA_CACC_dual_reg.scala 57:54:@51.4]
  assign _T_73 = _T_72 & io_reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 57:78:@52.4]
  assign _T_75 = _GEN_13 == 32'h8; // @[NV_NVDLA_CACC_dual_reg.scala 58:55:@53.4]
  assign _T_81 = _GEN_13 == 32'h24; // @[NV_NVDLA_CACC_dual_reg.scala 60:57:@57.4]
  assign _T_82 = _T_81 & io_reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 60:81:@58.4]
  assign _T_86 = {27'h0,io_field_batches}; // @[Cat.scala 30:58:@60.4]
  assign _T_89 = {27'h0,io_field_clip_truncate}; // @[Cat.scala 30:58:@61.4]
  assign _T_97 = {15'h0,io_field_surf_packed,15'h0,io_field_line_packed}; // @[Cat.scala 30:58:@64.4]
  assign _T_103 = {3'h0,io_field_dataout_height,3'h0,io_field_dataout_width}; // @[Cat.scala 30:58:@67.4]
  assign _T_106 = {19'h0,io_field_dataout_channel}; // @[Cat.scala 30:58:@68.4]
  assign _T_109 = {8'h0,io_field_line_stride}; // @[Cat.scala 30:58:@69.4]
  assign _T_115 = {18'h0,io_field_proc_precision,11'h0,io_field_conv_mode}; // @[Cat.scala 30:58:@72.4]
  assign _T_118 = {31'h0,io_op_en}; // @[Cat.scala 30:58:@73.4]
  assign _T_122 = {8'h0,io_field_surf_stride}; // @[Cat.scala 30:58:@74.4]
  assign _T_123 = 32'h24 == _GEN_13; // @[Mux.scala 46:19:@75.4]
  assign _T_124 = _T_123 ? _T_122 : 32'h0; // @[Mux.scala 46:16:@76.4]
  assign _T_125 = 32'h30 == _GEN_13; // @[Mux.scala 46:19:@77.4]
  assign _T_126 = _T_125 ? io_sat_count : _T_124; // @[Mux.scala 46:16:@78.4]
  assign _T_127 = 32'h8 == _GEN_13; // @[Mux.scala 46:19:@79.4]
  assign _T_128 = _T_127 ? _T_118 : _T_126; // @[Mux.scala 46:16:@80.4]
  assign _T_129 = 32'hc == _GEN_13; // @[Mux.scala 46:19:@81.4]
  assign _T_130 = _T_129 ? _T_115 : _T_128; // @[Mux.scala 46:16:@82.4]
  assign _T_131 = 32'h20 == _GEN_13; // @[Mux.scala 46:19:@83.4]
  assign _T_132 = _T_131 ? _T_109 : _T_130; // @[Mux.scala 46:16:@84.4]
  assign _T_133 = 32'h14 == _GEN_13; // @[Mux.scala 46:19:@85.4]
  assign _T_134 = _T_133 ? _T_106 : _T_132; // @[Mux.scala 46:16:@86.4]
  assign _T_135 = 32'h10 == _GEN_13; // @[Mux.scala 46:19:@87.4]
  assign _T_136 = _T_135 ? _T_103 : _T_134; // @[Mux.scala 46:16:@88.4]
  assign _T_137 = 32'h28 == _GEN_13; // @[Mux.scala 46:19:@89.4]
  assign _T_138 = _T_137 ? _T_97 : _T_136; // @[Mux.scala 46:16:@90.4]
  assign _T_139 = 32'h18 == _GEN_13; // @[Mux.scala 46:19:@91.4]
  assign _T_140 = _T_139 ? io_field_dataout_addr : _T_138; // @[Mux.scala 46:16:@92.4]
  assign _T_141 = 32'h34 == _GEN_13; // @[Mux.scala 46:19:@93.4]
  assign _T_142 = _T_141 ? io_field_cya : _T_140; // @[Mux.scala 46:16:@94.4]
  assign _T_143 = 32'h2c == _GEN_13; // @[Mux.scala 46:19:@95.4]
  assign _T_144 = _T_143 ? _T_89 : _T_142; // @[Mux.scala 46:16:@96.4]
  assign _T_145 = 32'h1c == _GEN_13; // @[Mux.scala 46:19:@97.4]
  assign _T_147 = io_reg_wr_data[4:0]; // @[NV_NVDLA_CACC_dual_reg.scala 95:48:@100.4]
  assign _GEN_0 = _T_49 ? _T_147 : _T_150; // @[Reg.scala 20:19:@102.4]
  assign _GEN_1 = _T_52 ? _T_147 : _T_154; // @[Reg.scala 20:19:@108.4]
  assign _GEN_2 = _T_55 ? io_reg_wr_data : _T_158; // @[Reg.scala 20:19:@114.4]
  assign _GEN_3 = _T_58 ? io_reg_wr_data : _T_162; // @[Reg.scala 20:19:@120.4]
  assign _T_163 = io_reg_wr_data[0]; // @[NV_NVDLA_CACC_dual_reg.scala 103:52:@124.4]
  assign _GEN_4 = _T_61 ? _T_163 : _T_166; // @[Reg.scala 20:19:@126.4]
  assign _T_167 = io_reg_wr_data[16]; // @[NV_NVDLA_CACC_dual_reg.scala 105:52:@130.4]
  assign _GEN_5 = _T_61 ? _T_167 : _T_170; // @[Reg.scala 20:19:@132.4]
  assign _T_171 = io_reg_wr_data[28:16]; // @[NV_NVDLA_CACC_dual_reg.scala 107:55:@136.4]
  assign _GEN_6 = _T_64 ? _T_171 : _T_174; // @[Reg.scala 20:19:@138.4]
  assign _T_175 = io_reg_wr_data[12:0]; // @[NV_NVDLA_CACC_dual_reg.scala 109:54:@142.4]
  assign _GEN_7 = _T_64 ? _T_175 : _T_178; // @[Reg.scala 20:19:@144.4]
  assign _GEN_8 = _T_67 ? _T_175 : _T_182; // @[Reg.scala 20:19:@150.4]
  assign _T_183 = io_reg_wr_data[23:0]; // @[NV_NVDLA_CACC_dual_reg.scala 113:52:@154.4]
  assign _GEN_9 = _T_70 ? _T_183 : _T_186; // @[Reg.scala 20:19:@156.4]
  assign _GEN_10 = _T_73 ? _T_163 : _T_190; // @[Reg.scala 20:19:@162.4]
  assign _T_191 = io_reg_wr_data[13:12]; // @[NV_NVDLA_CACC_dual_reg.scala 117:55:@166.4]
  assign _GEN_11 = _T_73 ? _T_191 : _T_194; // @[Reg.scala 20:19:@168.4]
  assign _GEN_12 = _T_82 ? _T_183 : _T_198; // @[Reg.scala 20:19:@174.4]
  assign io_reg_rd_data = _T_145 ? _T_86 : _T_144; // @[NV_NVDLA_CACC_dual_reg.scala 66:19:@99.4]
  assign io_field_batches = _T_150; // @[NV_NVDLA_CACC_dual_reg.scala 95:21:@105.4]
  assign io_field_clip_truncate = _T_154; // @[NV_NVDLA_CACC_dual_reg.scala 97:27:@111.4]
  assign io_field_cya = _T_158; // @[NV_NVDLA_CACC_dual_reg.scala 99:17:@117.4]
  assign io_field_dataout_addr = _T_162; // @[NV_NVDLA_CACC_dual_reg.scala 101:26:@123.4]
  assign io_field_line_packed = _T_166; // @[NV_NVDLA_CACC_dual_reg.scala 103:25:@129.4]
  assign io_field_surf_packed = _T_170; // @[NV_NVDLA_CACC_dual_reg.scala 105:25:@135.4]
  assign io_field_dataout_height = _T_174; // @[NV_NVDLA_CACC_dual_reg.scala 107:28:@141.4]
  assign io_field_dataout_width = _T_178; // @[NV_NVDLA_CACC_dual_reg.scala 109:27:@147.4]
  assign io_field_dataout_channel = _T_182; // @[NV_NVDLA_CACC_dual_reg.scala 111:29:@153.4]
  assign io_field_line_stride = _T_186; // @[NV_NVDLA_CACC_dual_reg.scala 113:25:@159.4]
  assign io_field_conv_mode = _T_190; // @[NV_NVDLA_CACC_dual_reg.scala 115:23:@165.4]
  assign io_field_proc_precision = _T_194; // @[NV_NVDLA_CACC_dual_reg.scala 117:28:@171.4]
  assign io_field_surf_stride = _T_198; // @[NV_NVDLA_CACC_dual_reg.scala 119:25:@177.4]
  assign io_op_en_trigger = _T_75 & io_reg_wr_en; // @[NV_NVDLA_CACC_dual_reg.scala 62:21:@59.4]
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
  _T_150 = _RAND_0[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_154 = _RAND_1[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_158 = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_162 = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_166 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_170 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_174 = _RAND_6[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_178 = _RAND_7[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_182 = _RAND_8[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_186 = _RAND_9[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_190 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_194 = _RAND_11[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_198 = _RAND_12[23:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_150 <= 5'h0;
    end else begin
      if (_T_49) begin
        _T_150 <= _T_147;
      end
    end
    if (reset) begin
      _T_154 <= 5'h0;
    end else begin
      if (_T_52) begin
        _T_154 <= _T_147;
      end
    end
    if (reset) begin
      _T_158 <= 32'h0;
    end else begin
      if (_T_55) begin
        _T_158 <= io_reg_wr_data;
      end
    end
    if (reset) begin
      _T_162 <= 32'h0;
    end else begin
      if (_T_58) begin
        _T_162 <= io_reg_wr_data;
      end
    end
    if (reset) begin
      _T_166 <= 1'h0;
    end else begin
      if (_T_61) begin
        _T_166 <= _T_163;
      end
    end
    if (reset) begin
      _T_170 <= 1'h0;
    end else begin
      if (_T_61) begin
        _T_170 <= _T_167;
      end
    end
    if (reset) begin
      _T_174 <= 13'h0;
    end else begin
      if (_T_64) begin
        _T_174 <= _T_171;
      end
    end
    if (reset) begin
      _T_178 <= 13'h0;
    end else begin
      if (_T_64) begin
        _T_178 <= _T_175;
      end
    end
    if (reset) begin
      _T_182 <= 13'h0;
    end else begin
      if (_T_67) begin
        _T_182 <= _T_175;
      end
    end
    if (reset) begin
      _T_186 <= 24'h0;
    end else begin
      if (_T_70) begin
        _T_186 <= _T_183;
      end
    end
    if (reset) begin
      _T_190 <= 1'h0;
    end else begin
      if (_T_73) begin
        _T_190 <= _T_163;
      end
    end
    if (reset) begin
      _T_194 <= 2'h1;
    end else begin
      if (_T_73) begin
        _T_194 <= _T_191;
      end
    end
    if (reset) begin
      _T_198 <= 24'h0;
    end else begin
      if (_T_82) begin
        _T_198 <= _T_183;
      end
    end
  end
endmodule
module NV_NVDLA_CSB_LOGIC( // @[:@328.2]
  input         reset, // @[:@330.4]
  input         io_clk, // @[:@331.4]
  input         io_csb2dp_req_valid, // @[:@331.4]
  input  [62:0] io_csb2dp_req_bits, // @[:@331.4]
  output        io_csb2dp_resp_valid, // @[:@331.4]
  output [33:0] io_csb2dp_resp_bits, // @[:@331.4]
  input  [31:0] io_reg_rd_data, // @[:@331.4]
  output [11:0] io_reg_offset, // @[:@331.4]
  output [31:0] io_reg_wr_data, // @[:@331.4]
  output        io_reg_wr_en // @[:@331.4]
);
  reg  _T_43; // @[NV_NVDLA_CSB_LOGIC.scala 45:27:@333.4]
  reg [31:0] _RAND_0;
  reg [62:0] _T_46; // @[NV_NVDLA_CSB_LOGIC.scala 46:25:@334.4]
  reg [63:0] _RAND_1;
  wire [62:0] _GEN_0; // @[NV_NVDLA_CSB_LOGIC.scala 49:30:@336.4]
  wire [21:0] _T_47; // @[NV_NVDLA_CSB_LOGIC.scala 54:26:@339.4]
  wire  _T_49; // @[NV_NVDLA_CSB_LOGIC.scala 56:27:@341.4]
  wire  _T_50; // @[NV_NVDLA_CSB_LOGIC.scala 57:29:@342.4]
  wire [23:0] _T_56; // @[Cat.scala 30:58:@347.4]
  wire  _T_58; // @[NV_NVDLA_CSB_LOGIC.scala 68:32:@352.4]
  wire  _T_59; // @[NV_NVDLA_CSB_LOGIC.scala 68:30:@353.4]
  wire [33:0] _T_63; // @[Cat.scala 30:58:@355.4]
  reg [33:0] _T_71; // @[NV_NVDLA_CSB_LOGIC.scala 83:37:@358.4]
  reg [63:0] _RAND_2;
  reg  _T_74; // @[NV_NVDLA_CSB_LOGIC.scala 84:40:@359.4]
  reg [31:0] _RAND_3;
  wire  _T_75; // @[NV_NVDLA_CSB_LOGIC.scala 89:28:@364.6]
  wire [33:0] _GEN_1; // @[NV_NVDLA_CSB_LOGIC.scala 89:42:@365.6]
  wire [33:0] _GEN_2; // @[NV_NVDLA_CSB_LOGIC.scala 86:20:@360.4]
  wire  _T_77; // @[NV_NVDLA_CSB_LOGIC.scala 92:59:@369.4]
  assign _GEN_0 = io_csb2dp_req_valid ? io_csb2dp_req_bits : _T_46; // @[NV_NVDLA_CSB_LOGIC.scala 49:30:@336.4]
  assign _T_47 = _T_46[21:0]; // @[NV_NVDLA_CSB_LOGIC.scala 54:26:@339.4]
  assign _T_49 = _T_46[54]; // @[NV_NVDLA_CSB_LOGIC.scala 56:27:@341.4]
  assign _T_50 = _T_46[55]; // @[NV_NVDLA_CSB_LOGIC.scala 57:29:@342.4]
  assign _T_56 = {_T_47,2'h0}; // @[Cat.scala 30:58:@347.4]
  assign _T_58 = ~ _T_49; // @[NV_NVDLA_CSB_LOGIC.scala 68:32:@352.4]
  assign _T_59 = _T_43 & _T_58; // @[NV_NVDLA_CSB_LOGIC.scala 68:30:@353.4]
  assign _T_63 = {2'h0,io_reg_rd_data}; // @[Cat.scala 30:58:@355.4]
  assign _T_75 = io_reg_wr_en & _T_50; // @[NV_NVDLA_CSB_LOGIC.scala 89:28:@364.6]
  assign _GEN_1 = _T_75 ? 34'h200000000 : _T_71; // @[NV_NVDLA_CSB_LOGIC.scala 89:42:@365.6]
  assign _GEN_2 = _T_59 ? _T_63 : _GEN_1; // @[NV_NVDLA_CSB_LOGIC.scala 86:20:@360.4]
  assign _T_77 = _T_75 | _T_59; // @[NV_NVDLA_CSB_LOGIC.scala 92:59:@369.4]
  assign io_csb2dp_resp_valid = _T_74; // @[NV_NVDLA_CSB_LOGIC.scala 95:26:@372.4]
  assign io_csb2dp_resp_bits = _T_71; // @[NV_NVDLA_CSB_LOGIC.scala 94:25:@371.4]
  assign io_reg_offset = _T_56[11:0]; // @[NV_NVDLA_CSB_LOGIC.scala 65:19:@348.4]
  assign io_reg_wr_data = _T_46[53:22]; // @[NV_NVDLA_CSB_LOGIC.scala 66:20:@349.4]
  assign io_reg_wr_en = _T_43 & _T_49; // @[NV_NVDLA_CSB_LOGIC.scala 67:18:@351.4]
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
  _T_43 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  _T_46 = _RAND_1[62:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_71 = _RAND_2[33:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_74 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_clk) begin
    if (reset) begin
      _T_43 <= 1'h0;
    end else begin
      _T_43 <= io_csb2dp_req_valid;
    end
    if (reset) begin
      _T_46 <= 63'h0;
    end else begin
      if (io_csb2dp_req_valid) begin
        _T_46 <= io_csb2dp_req_bits;
      end
    end
    if (reset) begin
      _T_71 <= 34'h0;
    end else begin
      if (_T_59) begin
        _T_71 <= _T_63;
      end else begin
        if (_T_75) begin
          _T_71 <= 34'h200000000;
        end
      end
    end
    if (reset) begin
      _T_74 <= 1'h0;
    end else begin
      _T_74 <= _T_77;
    end
  end
endmodule
module NV_NVDLA_CACC_regfile( // @[:@374.2]
  input         reset, // @[:@376.4]
  input         io_nvdla_core_clk, // @[:@377.4]
  input         io_csb2cacc_req_valid, // @[:@377.4]
  input  [62:0] io_csb2cacc_req_bits, // @[:@377.4]
  output        io_csb2cacc_resp_valid, // @[:@377.4]
  output [33:0] io_csb2cacc_resp_bits, // @[:@377.4]
  output        io_reg2dp_op_en, // @[:@377.4]
  output [4:0]  io_reg2dp_field_clip_truncate, // @[:@377.4]
  input         io_dp2reg_done, // @[:@377.4]
  input  [31:0] io_dp2reg_sat_count // @[:@377.4]
);
  wire  NV_NVDLA_BASIC_REG_single_reset; // @[NV_NVDLA_CACC_regfile.scala 61:29:@385.4]
  wire  NV_NVDLA_BASIC_REG_single_io_nvdla_core_clk; // @[NV_NVDLA_CACC_regfile.scala 61:29:@385.4]
  wire [31:0] NV_NVDLA_BASIC_REG_single_io_reg_rd_data; // @[NV_NVDLA_CACC_regfile.scala 61:29:@385.4]
  wire [11:0] NV_NVDLA_BASIC_REG_single_io_reg_offset; // @[NV_NVDLA_CACC_regfile.scala 61:29:@385.4]
  wire [31:0] NV_NVDLA_BASIC_REG_single_io_reg_wr_data; // @[NV_NVDLA_CACC_regfile.scala 61:29:@385.4]
  wire  NV_NVDLA_BASIC_REG_single_io_reg_wr_en; // @[NV_NVDLA_CACC_regfile.scala 61:29:@385.4]
  wire  NV_NVDLA_BASIC_REG_single_io_producer; // @[NV_NVDLA_CACC_regfile.scala 61:29:@385.4]
  wire  NV_NVDLA_BASIC_REG_single_io_consumer; // @[NV_NVDLA_CACC_regfile.scala 61:29:@385.4]
  wire [1:0] NV_NVDLA_BASIC_REG_single_io_status_0; // @[NV_NVDLA_CACC_regfile.scala 61:29:@385.4]
  wire [1:0] NV_NVDLA_BASIC_REG_single_io_status_1; // @[NV_NVDLA_CACC_regfile.scala 61:29:@385.4]
  wire  NV_NVDLA_CACC_dual_reg_reset; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire  NV_NVDLA_CACC_dual_reg_io_nvdla_core_clk; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [31:0] NV_NVDLA_CACC_dual_reg_io_reg_rd_data; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [11:0] NV_NVDLA_CACC_dual_reg_io_reg_offset; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [31:0] NV_NVDLA_CACC_dual_reg_io_reg_wr_data; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire  NV_NVDLA_CACC_dual_reg_io_reg_wr_en; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [4:0] NV_NVDLA_CACC_dual_reg_io_field_batches; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [4:0] NV_NVDLA_CACC_dual_reg_io_field_clip_truncate; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [31:0] NV_NVDLA_CACC_dual_reg_io_field_cya; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [31:0] NV_NVDLA_CACC_dual_reg_io_field_dataout_addr; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire  NV_NVDLA_CACC_dual_reg_io_field_line_packed; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire  NV_NVDLA_CACC_dual_reg_io_field_surf_packed; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [12:0] NV_NVDLA_CACC_dual_reg_io_field_dataout_height; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [12:0] NV_NVDLA_CACC_dual_reg_io_field_dataout_width; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [12:0] NV_NVDLA_CACC_dual_reg_io_field_dataout_channel; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [23:0] NV_NVDLA_CACC_dual_reg_io_field_line_stride; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire  NV_NVDLA_CACC_dual_reg_io_field_conv_mode; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [1:0] NV_NVDLA_CACC_dual_reg_io_field_proc_precision; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [23:0] NV_NVDLA_CACC_dual_reg_io_field_surf_stride; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire  NV_NVDLA_CACC_dual_reg_io_op_en_trigger; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire  NV_NVDLA_CACC_dual_reg_io_op_en; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire [31:0] NV_NVDLA_CACC_dual_reg_io_sat_count; // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
  wire  NV_NVDLA_CACC_dual_reg_1_reset; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire  NV_NVDLA_CACC_dual_reg_1_io_nvdla_core_clk; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [31:0] NV_NVDLA_CACC_dual_reg_1_io_reg_rd_data; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [11:0] NV_NVDLA_CACC_dual_reg_1_io_reg_offset; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [31:0] NV_NVDLA_CACC_dual_reg_1_io_reg_wr_data; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire  NV_NVDLA_CACC_dual_reg_1_io_reg_wr_en; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [4:0] NV_NVDLA_CACC_dual_reg_1_io_field_batches; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [4:0] NV_NVDLA_CACC_dual_reg_1_io_field_clip_truncate; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [31:0] NV_NVDLA_CACC_dual_reg_1_io_field_cya; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [31:0] NV_NVDLA_CACC_dual_reg_1_io_field_dataout_addr; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire  NV_NVDLA_CACC_dual_reg_1_io_field_line_packed; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire  NV_NVDLA_CACC_dual_reg_1_io_field_surf_packed; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [12:0] NV_NVDLA_CACC_dual_reg_1_io_field_dataout_height; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [12:0] NV_NVDLA_CACC_dual_reg_1_io_field_dataout_width; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [12:0] NV_NVDLA_CACC_dual_reg_1_io_field_dataout_channel; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [23:0] NV_NVDLA_CACC_dual_reg_1_io_field_line_stride; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire  NV_NVDLA_CACC_dual_reg_1_io_field_conv_mode; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [1:0] NV_NVDLA_CACC_dual_reg_1_io_field_proc_precision; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [23:0] NV_NVDLA_CACC_dual_reg_1_io_field_surf_stride; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire  NV_NVDLA_CACC_dual_reg_1_io_op_en_trigger; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire  NV_NVDLA_CACC_dual_reg_1_io_op_en; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire [31:0] NV_NVDLA_CACC_dual_reg_1_io_sat_count; // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
  wire  NV_NVDLA_CSB_LOGIC_reset; // @[NV_NVDLA_CACC_regfile.scala 173:26:@505.4]
  wire  NV_NVDLA_CSB_LOGIC_io_clk; // @[NV_NVDLA_CACC_regfile.scala 173:26:@505.4]
  wire  NV_NVDLA_CSB_LOGIC_io_csb2dp_req_valid; // @[NV_NVDLA_CACC_regfile.scala 173:26:@505.4]
  wire [62:0] NV_NVDLA_CSB_LOGIC_io_csb2dp_req_bits; // @[NV_NVDLA_CACC_regfile.scala 173:26:@505.4]
  wire  NV_NVDLA_CSB_LOGIC_io_csb2dp_resp_valid; // @[NV_NVDLA_CACC_regfile.scala 173:26:@505.4]
  wire [33:0] NV_NVDLA_CSB_LOGIC_io_csb2dp_resp_bits; // @[NV_NVDLA_CACC_regfile.scala 173:26:@505.4]
  wire [31:0] NV_NVDLA_CSB_LOGIC_io_reg_rd_data; // @[NV_NVDLA_CACC_regfile.scala 173:26:@505.4]
  wire [11:0] NV_NVDLA_CSB_LOGIC_io_reg_offset; // @[NV_NVDLA_CACC_regfile.scala 173:26:@505.4]
  wire [31:0] NV_NVDLA_CSB_LOGIC_io_reg_wr_data; // @[NV_NVDLA_CACC_regfile.scala 173:26:@505.4]
  wire  NV_NVDLA_CSB_LOGIC_io_reg_wr_en; // @[NV_NVDLA_CACC_regfile.scala 173:26:@505.4]
  reg  _T_59; // @[NV_NVDLA_CACC_regfile.scala 53:33:@379.4]
  reg [31:0] _RAND_0;
  reg  _T_74; // @[NV_NVDLA_CACC_regfile.scala 75:33:@396.4]
  reg [31:0] _RAND_1;
  reg [31:0] _T_77; // @[NV_NVDLA_CACC_regfile.scala 76:37:@397.4]
  reg [31:0] _RAND_2;
  reg  _T_82; // @[NV_NVDLA_CACC_regfile.scala 90:33:@408.4]
  reg [31:0] _RAND_3;
  reg [31:0] _T_85; // @[NV_NVDLA_CACC_regfile.scala 91:37:@409.4]
  reg [31:0] _RAND_4;
  wire  _T_86; // @[NV_NVDLA_CACC_regfile.scala 110:27:@420.6]
  wire  _GEN_0; // @[NV_NVDLA_CACC_regfile.scala 109:24:@419.4]
  wire  _T_88; // @[NV_NVDLA_CACC_regfile.scala 118:43:@423.4]
  wire [1:0] _T_94; // @[NV_NVDLA_CACC_regfile.scala 119:26:@425.4]
  wire [1:0] _T_95; // @[NV_NVDLA_CACC_regfile.scala 118:26:@426.4]
  wire  _T_97; // @[NV_NVDLA_CACC_regfile.scala 122:43:@428.4]
  wire  _T_100; // @[NV_NVDLA_CACC_regfile.scala 123:43:@429.4]
  wire [1:0] _T_103; // @[NV_NVDLA_CACC_regfile.scala 123:26:@430.4]
  wire [1:0] _T_104; // @[NV_NVDLA_CACC_regfile.scala 122:26:@431.4]
  reg [2:0] _T_107; // @[NV_NVDLA_CACC_regfile.scala 131:34:@433.4]
  reg [31:0] _RAND_5;
  wire  _T_108; // @[NV_NVDLA_CACC_regfile.scala 132:32:@434.4]
  wire  _T_109; // @[NV_NVDLA_CACC_regfile.scala 132:49:@435.4]
  wire [31:0] _T_67; // @[NV_NVDLA_CACC_regfile.scala 58:26:@383.4 NV_NVDLA_CACC_regfile.scala 178:16:@516.4]
  wire  _T_110; // @[NV_NVDLA_CACC_regfile.scala 132:87:@436.4]
  wire  _T_113; // @[NV_NVDLA_CACC_regfile.scala 133:47:@438.4]
  wire  _T_115; // @[NV_NVDLA_CACC_regfile.scala 133:31:@439.4]
  wire  _T_116; // @[NV_NVDLA_CACC_regfile.scala 132:31:@440.4]
  wire  _T_117; // @[NV_NVDLA_CACC_regfile.scala 137:33:@442.4]
  wire  _T_118; // @[NV_NVDLA_CACC_regfile.scala 137:50:@443.4]
  wire  _T_122; // @[NV_NVDLA_CACC_regfile.scala 138:48:@446.4]
  wire  _T_124; // @[NV_NVDLA_CACC_regfile.scala 138:32:@447.4]
  wire  _T_125; // @[NV_NVDLA_CACC_regfile.scala 137:32:@448.4]
  wire  _T_126; // @[NV_NVDLA_CACC_regfile.scala 142:30:@450.4]
  wire [1:0] _T_128; // @[NV_NVDLA_CACC_regfile.scala 143:88:@451.4]
  wire [2:0] _T_129; // @[Cat.scala 30:58:@452.4]
  wire [2:0] _T_130; // @[NV_NVDLA_CACC_regfile.scala 143:32:@453.4]
  wire [11:0] _T_65; // @[NV_NVDLA_CACC_regfile.scala 57:25:@382.4 NV_NVDLA_CACC_regfile.scala 176:15:@514.4]
  wire [31:0] _GEN_6; // @[NV_NVDLA_CACC_regfile.scala 156:40:@474.4]
  wire  _T_147; // @[NV_NVDLA_CACC_regfile.scala 156:40:@474.4]
  wire  _T_153; // @[NV_NVDLA_CACC_regfile.scala 157:38:@477.4]
  wire  _T_155; // @[NV_NVDLA_CACC_regfile.scala 157:82:@478.4]
  wire  _T_156; // @[NV_NVDLA_CACC_regfile.scala 157:63:@479.4]
  wire  _T_161; // @[NV_NVDLA_CACC_regfile.scala 158:82:@482.4]
  wire  _T_162; // @[NV_NVDLA_CACC_regfile.scala 158:63:@483.4]
  wire  _T_144; // @[NV_NVDLA_CACC_regfile.scala 155:24:@472.4 NV_NVDLA_CACC_regfile.scala 177:14:@515.4]
  wire  _T_164; // @[NV_NVDLA_CACC_regfile.scala 161:30:@486.4]
  wire  _T_168; // @[NV_NVDLA_CACC_regfile.scala 162:30:@490.4]
  wire [31:0] _T_175; // @[Bitwise.scala 72:12:@495.4]
  wire [31:0] _T_176; // @[NV_NVDLA_CACC_regfile.scala 164:42:@496.4]
  wire [31:0] _T_180; // @[Bitwise.scala 72:12:@498.4]
  wire [31:0] _T_181; // @[NV_NVDLA_CACC_regfile.scala 165:43:@499.4]
  wire [31:0] _T_182; // @[NV_NVDLA_CACC_regfile.scala 164:58:@500.4]
  wire [31:0] _T_186; // @[Bitwise.scala 72:12:@502.4]
  wire [31:0] _T_187; // @[NV_NVDLA_CACC_regfile.scala 166:42:@503.4]
  wire  _T_203; // @[NV_NVDLA_CACC_regfile.scala 196:42:@532.4]
  wire  _T_204; // @[NV_NVDLA_CACC_regfile.scala 196:40:@533.4]
  wire  _T_206; // @[NV_NVDLA_CACC_regfile.scala 197:41:@535.4]
  wire  _T_207; // @[NV_NVDLA_CACC_regfile.scala 198:40:@536.4]
  wire  _T_208; // @[NV_NVDLA_CACC_regfile.scala 200:42:@537.4]
  wire  _T_209; // @[NV_NVDLA_CACC_regfile.scala 200:40:@538.4]
  wire  _T_211; // @[NV_NVDLA_CACC_regfile.scala 201:41:@540.4]
  wire  _T_212; // @[NV_NVDLA_CACC_regfile.scala 202:40:@541.4]
  wire [31:0] _T_214; // @[NV_NVDLA_CACC_regfile.scala 210:35:@542.4]
  wire [31:0] _T_215; // @[NV_NVDLA_CACC_regfile.scala 209:35:@543.4]
  wire [31:0] _GEN_4; // @[NV_NVDLA_CACC_regfile.scala 212:23:@544.4]
  wire [31:0] _T_217; // @[NV_NVDLA_CACC_regfile.scala 217:35:@547.4]
  wire [31:0] _T_218; // @[NV_NVDLA_CACC_regfile.scala 216:35:@548.4]
  wire [31:0] _GEN_5; // @[NV_NVDLA_CACC_regfile.scala 219:23:@549.4]
  wire  _T_61; // @[NV_NVDLA_CACC_regfile.scala 54:30:@380.4 NV_NVDLA_CACC_regfile.scala 118:20:@427.4]
  wire  _T_63; // @[NV_NVDLA_CACC_regfile.scala 55:30:@381.4 NV_NVDLA_CACC_regfile.scala 122:20:@432.4]
  NV_NVDLA_BASIC_REG_single NV_NVDLA_BASIC_REG_single ( // @[NV_NVDLA_CACC_regfile.scala 61:29:@385.4]
    .reset(NV_NVDLA_BASIC_REG_single_reset),
    .io_nvdla_core_clk(NV_NVDLA_BASIC_REG_single_io_nvdla_core_clk),
    .io_reg_rd_data(NV_NVDLA_BASIC_REG_single_io_reg_rd_data),
    .io_reg_offset(NV_NVDLA_BASIC_REG_single_io_reg_offset),
    .io_reg_wr_data(NV_NVDLA_BASIC_REG_single_io_reg_wr_data),
    .io_reg_wr_en(NV_NVDLA_BASIC_REG_single_io_reg_wr_en),
    .io_producer(NV_NVDLA_BASIC_REG_single_io_producer),
    .io_consumer(NV_NVDLA_BASIC_REG_single_io_consumer),
    .io_status_0(NV_NVDLA_BASIC_REG_single_io_status_0),
    .io_status_1(NV_NVDLA_BASIC_REG_single_io_status_1)
  );
  NV_NVDLA_CACC_dual_reg NV_NVDLA_CACC_dual_reg ( // @[NV_NVDLA_CACC_regfile.scala 78:30:@398.4]
    .reset(NV_NVDLA_CACC_dual_reg_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_dual_reg_io_nvdla_core_clk),
    .io_reg_rd_data(NV_NVDLA_CACC_dual_reg_io_reg_rd_data),
    .io_reg_offset(NV_NVDLA_CACC_dual_reg_io_reg_offset),
    .io_reg_wr_data(NV_NVDLA_CACC_dual_reg_io_reg_wr_data),
    .io_reg_wr_en(NV_NVDLA_CACC_dual_reg_io_reg_wr_en),
    .io_field_batches(NV_NVDLA_CACC_dual_reg_io_field_batches),
    .io_field_clip_truncate(NV_NVDLA_CACC_dual_reg_io_field_clip_truncate),
    .io_field_cya(NV_NVDLA_CACC_dual_reg_io_field_cya),
    .io_field_dataout_addr(NV_NVDLA_CACC_dual_reg_io_field_dataout_addr),
    .io_field_line_packed(NV_NVDLA_CACC_dual_reg_io_field_line_packed),
    .io_field_surf_packed(NV_NVDLA_CACC_dual_reg_io_field_surf_packed),
    .io_field_dataout_height(NV_NVDLA_CACC_dual_reg_io_field_dataout_height),
    .io_field_dataout_width(NV_NVDLA_CACC_dual_reg_io_field_dataout_width),
    .io_field_dataout_channel(NV_NVDLA_CACC_dual_reg_io_field_dataout_channel),
    .io_field_line_stride(NV_NVDLA_CACC_dual_reg_io_field_line_stride),
    .io_field_conv_mode(NV_NVDLA_CACC_dual_reg_io_field_conv_mode),
    .io_field_proc_precision(NV_NVDLA_CACC_dual_reg_io_field_proc_precision),
    .io_field_surf_stride(NV_NVDLA_CACC_dual_reg_io_field_surf_stride),
    .io_op_en_trigger(NV_NVDLA_CACC_dual_reg_io_op_en_trigger),
    .io_op_en(NV_NVDLA_CACC_dual_reg_io_op_en),
    .io_sat_count(NV_NVDLA_CACC_dual_reg_io_sat_count)
  );
  NV_NVDLA_CACC_dual_reg NV_NVDLA_CACC_dual_reg_1 ( // @[NV_NVDLA_CACC_regfile.scala 93:30:@410.4]
    .reset(NV_NVDLA_CACC_dual_reg_1_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_dual_reg_1_io_nvdla_core_clk),
    .io_reg_rd_data(NV_NVDLA_CACC_dual_reg_1_io_reg_rd_data),
    .io_reg_offset(NV_NVDLA_CACC_dual_reg_1_io_reg_offset),
    .io_reg_wr_data(NV_NVDLA_CACC_dual_reg_1_io_reg_wr_data),
    .io_reg_wr_en(NV_NVDLA_CACC_dual_reg_1_io_reg_wr_en),
    .io_field_batches(NV_NVDLA_CACC_dual_reg_1_io_field_batches),
    .io_field_clip_truncate(NV_NVDLA_CACC_dual_reg_1_io_field_clip_truncate),
    .io_field_cya(NV_NVDLA_CACC_dual_reg_1_io_field_cya),
    .io_field_dataout_addr(NV_NVDLA_CACC_dual_reg_1_io_field_dataout_addr),
    .io_field_line_packed(NV_NVDLA_CACC_dual_reg_1_io_field_line_packed),
    .io_field_surf_packed(NV_NVDLA_CACC_dual_reg_1_io_field_surf_packed),
    .io_field_dataout_height(NV_NVDLA_CACC_dual_reg_1_io_field_dataout_height),
    .io_field_dataout_width(NV_NVDLA_CACC_dual_reg_1_io_field_dataout_width),
    .io_field_dataout_channel(NV_NVDLA_CACC_dual_reg_1_io_field_dataout_channel),
    .io_field_line_stride(NV_NVDLA_CACC_dual_reg_1_io_field_line_stride),
    .io_field_conv_mode(NV_NVDLA_CACC_dual_reg_1_io_field_conv_mode),
    .io_field_proc_precision(NV_NVDLA_CACC_dual_reg_1_io_field_proc_precision),
    .io_field_surf_stride(NV_NVDLA_CACC_dual_reg_1_io_field_surf_stride),
    .io_op_en_trigger(NV_NVDLA_CACC_dual_reg_1_io_op_en_trigger),
    .io_op_en(NV_NVDLA_CACC_dual_reg_1_io_op_en),
    .io_sat_count(NV_NVDLA_CACC_dual_reg_1_io_sat_count)
  );
  NV_NVDLA_CSB_LOGIC NV_NVDLA_CSB_LOGIC ( // @[NV_NVDLA_CACC_regfile.scala 173:26:@505.4]
    .reset(NV_NVDLA_CSB_LOGIC_reset),
    .io_clk(NV_NVDLA_CSB_LOGIC_io_clk),
    .io_csb2dp_req_valid(NV_NVDLA_CSB_LOGIC_io_csb2dp_req_valid),
    .io_csb2dp_req_bits(NV_NVDLA_CSB_LOGIC_io_csb2dp_req_bits),
    .io_csb2dp_resp_valid(NV_NVDLA_CSB_LOGIC_io_csb2dp_resp_valid),
    .io_csb2dp_resp_bits(NV_NVDLA_CSB_LOGIC_io_csb2dp_resp_bits),
    .io_reg_rd_data(NV_NVDLA_CSB_LOGIC_io_reg_rd_data),
    .io_reg_offset(NV_NVDLA_CSB_LOGIC_io_reg_offset),
    .io_reg_wr_data(NV_NVDLA_CSB_LOGIC_io_reg_wr_data),
    .io_reg_wr_en(NV_NVDLA_CSB_LOGIC_io_reg_wr_en)
  );
  assign _T_86 = ~ _T_59; // @[NV_NVDLA_CACC_regfile.scala 110:27:@420.6]
  assign _GEN_0 = io_dp2reg_done ? _T_86 : _T_59; // @[NV_NVDLA_CACC_regfile.scala 109:24:@419.4]
  assign _T_88 = _T_74 == 1'h0; // @[NV_NVDLA_CACC_regfile.scala 118:43:@423.4]
  assign _T_94 = _T_59 ? 2'h2 : 2'h1; // @[NV_NVDLA_CACC_regfile.scala 119:26:@425.4]
  assign _T_95 = _T_88 ? 2'h0 : _T_94; // @[NV_NVDLA_CACC_regfile.scala 118:26:@426.4]
  assign _T_97 = _T_82 == 1'h0; // @[NV_NVDLA_CACC_regfile.scala 122:43:@428.4]
  assign _T_100 = _T_59 == 1'h0; // @[NV_NVDLA_CACC_regfile.scala 123:43:@429.4]
  assign _T_103 = _T_100 ? 2'h2 : 2'h1; // @[NV_NVDLA_CACC_regfile.scala 123:26:@430.4]
  assign _T_104 = _T_97 ? 2'h0 : _T_103; // @[NV_NVDLA_CACC_regfile.scala 122:26:@431.4]
  assign _T_108 = ~ _T_74; // @[NV_NVDLA_CACC_regfile.scala 132:32:@434.4]
  assign _T_109 = _T_108 & NV_NVDLA_CACC_dual_reg_io_op_en_trigger; // @[NV_NVDLA_CACC_regfile.scala 132:49:@435.4]
  assign _T_67 = NV_NVDLA_CSB_LOGIC_io_reg_wr_data; // @[NV_NVDLA_CACC_regfile.scala 58:26:@383.4 NV_NVDLA_CACC_regfile.scala 178:16:@516.4]
  assign _T_110 = _T_67[0]; // @[NV_NVDLA_CACC_regfile.scala 132:87:@436.4]
  assign _T_113 = io_dp2reg_done & _T_100; // @[NV_NVDLA_CACC_regfile.scala 133:47:@438.4]
  assign _T_115 = _T_113 ? 1'h0 : _T_74; // @[NV_NVDLA_CACC_regfile.scala 133:31:@439.4]
  assign _T_116 = _T_109 ? _T_110 : _T_115; // @[NV_NVDLA_CACC_regfile.scala 132:31:@440.4]
  assign _T_117 = ~ _T_82; // @[NV_NVDLA_CACC_regfile.scala 137:33:@442.4]
  assign _T_118 = _T_117 & NV_NVDLA_CACC_dual_reg_1_io_op_en_trigger; // @[NV_NVDLA_CACC_regfile.scala 137:50:@443.4]
  assign _T_122 = io_dp2reg_done & _T_59; // @[NV_NVDLA_CACC_regfile.scala 138:48:@446.4]
  assign _T_124 = _T_122 ? 1'h0 : _T_82; // @[NV_NVDLA_CACC_regfile.scala 138:32:@447.4]
  assign _T_125 = _T_118 ? _T_110 : _T_124; // @[NV_NVDLA_CACC_regfile.scala 137:32:@448.4]
  assign _T_126 = _T_59 ? _T_82 : _T_74; // @[NV_NVDLA_CACC_regfile.scala 142:30:@450.4]
  assign _T_128 = _T_107[1:0]; // @[NV_NVDLA_CACC_regfile.scala 143:88:@451.4]
  assign _T_129 = {_T_128,_T_126}; // @[Cat.scala 30:58:@452.4]
  assign _T_130 = io_dp2reg_done ? 3'h0 : _T_129; // @[NV_NVDLA_CACC_regfile.scala 143:32:@453.4]
  assign _T_65 = NV_NVDLA_CSB_LOGIC_io_reg_offset; // @[NV_NVDLA_CACC_regfile.scala 57:25:@382.4 NV_NVDLA_CACC_regfile.scala 176:15:@514.4]
  assign _GEN_6 = {{20'd0}, _T_65}; // @[NV_NVDLA_CACC_regfile.scala 156:40:@474.4]
  assign _T_147 = _GEN_6 < 32'h8; // @[NV_NVDLA_CACC_regfile.scala 156:40:@474.4]
  assign _T_153 = _GEN_6 >= 32'h8; // @[NV_NVDLA_CACC_regfile.scala 157:38:@477.4]
  assign _T_155 = NV_NVDLA_BASIC_REG_single_io_producer == 1'h0; // @[NV_NVDLA_CACC_regfile.scala 157:82:@478.4]
  assign _T_156 = _T_153 & _T_155; // @[NV_NVDLA_CACC_regfile.scala 157:63:@479.4]
  assign _T_161 = NV_NVDLA_BASIC_REG_single_io_producer; // @[NV_NVDLA_CACC_regfile.scala 158:82:@482.4]
  assign _T_162 = _T_153 & _T_161; // @[NV_NVDLA_CACC_regfile.scala 158:63:@483.4]
  assign _T_144 = NV_NVDLA_CSB_LOGIC_io_reg_wr_en; // @[NV_NVDLA_CACC_regfile.scala 155:24:@472.4 NV_NVDLA_CACC_regfile.scala 177:14:@515.4]
  assign _T_164 = _T_144 & _T_156; // @[NV_NVDLA_CACC_regfile.scala 161:30:@486.4]
  assign _T_168 = _T_144 & _T_162; // @[NV_NVDLA_CACC_regfile.scala 162:30:@490.4]
  assign _T_175 = _T_147 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@495.4]
  assign _T_176 = _T_175 & NV_NVDLA_BASIC_REG_single_io_reg_rd_data; // @[NV_NVDLA_CACC_regfile.scala 164:42:@496.4]
  assign _T_180 = _T_156 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@498.4]
  assign _T_181 = _T_180 & NV_NVDLA_CACC_dual_reg_io_reg_rd_data; // @[NV_NVDLA_CACC_regfile.scala 165:43:@499.4]
  assign _T_182 = _T_176 | _T_181; // @[NV_NVDLA_CACC_regfile.scala 164:58:@500.4]
  assign _T_186 = _T_162 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@502.4]
  assign _T_187 = _T_186 & NV_NVDLA_CACC_dual_reg_1_io_reg_rd_data; // @[NV_NVDLA_CACC_regfile.scala 166:42:@503.4]
  assign _T_203 = ~ _T_116; // @[NV_NVDLA_CACC_regfile.scala 196:42:@532.4]
  assign _T_204 = _T_74 & _T_203; // @[NV_NVDLA_CACC_regfile.scala 196:40:@533.4]
  assign _T_206 = _T_108 & _T_116; // @[NV_NVDLA_CACC_regfile.scala 197:41:@535.4]
  assign _T_207 = _T_74 ^ _T_116; // @[NV_NVDLA_CACC_regfile.scala 198:40:@536.4]
  assign _T_208 = ~ _T_125; // @[NV_NVDLA_CACC_regfile.scala 200:42:@537.4]
  assign _T_209 = _T_82 & _T_208; // @[NV_NVDLA_CACC_regfile.scala 200:40:@538.4]
  assign _T_211 = _T_117 & _T_125; // @[NV_NVDLA_CACC_regfile.scala 201:41:@540.4]
  assign _T_212 = _T_82 ^ _T_125; // @[NV_NVDLA_CACC_regfile.scala 202:40:@541.4]
  assign _T_214 = _T_206 ? 32'h0 : _T_77; // @[NV_NVDLA_CACC_regfile.scala 210:35:@542.4]
  assign _T_215 = _T_204 ? io_dp2reg_sat_count : _T_214; // @[NV_NVDLA_CACC_regfile.scala 209:35:@543.4]
  assign _GEN_4 = _T_207 ? _T_215 : _T_77; // @[NV_NVDLA_CACC_regfile.scala 212:23:@544.4]
  assign _T_217 = _T_211 ? 32'h0 : _T_85; // @[NV_NVDLA_CACC_regfile.scala 217:35:@547.4]
  assign _T_218 = _T_209 ? io_dp2reg_sat_count : _T_217; // @[NV_NVDLA_CACC_regfile.scala 216:35:@548.4]
  assign _GEN_5 = _T_212 ? _T_218 : _T_85; // @[NV_NVDLA_CACC_regfile.scala 219:23:@549.4]
  assign _T_61 = _T_95[0]; // @[NV_NVDLA_CACC_regfile.scala 54:30:@380.4 NV_NVDLA_CACC_regfile.scala 118:20:@427.4]
  assign _T_63 = _T_104[0]; // @[NV_NVDLA_CACC_regfile.scala 55:30:@381.4 NV_NVDLA_CACC_regfile.scala 122:20:@432.4]
  assign io_csb2cacc_resp_valid = NV_NVDLA_CSB_LOGIC_io_csb2dp_resp_valid; // @[NV_NVDLA_CACC_regfile.scala 175:24:@510.4]
  assign io_csb2cacc_resp_bits = NV_NVDLA_CSB_LOGIC_io_csb2dp_resp_bits; // @[NV_NVDLA_CACC_regfile.scala 175:24:@509.4]
  assign io_reg2dp_op_en = _T_107[2]; // @[NV_NVDLA_CACC_regfile.scala 146:20:@456.4]
  assign io_reg2dp_field_clip_truncate = _T_59 ? NV_NVDLA_CACC_dual_reg_1_io_field_clip_truncate : NV_NVDLA_CACC_dual_reg_io_field_clip_truncate; // @[NV_NVDLA_CACC_regfile.scala 186:20:@530.4]
  assign NV_NVDLA_BASIC_REG_single_reset = reset; // @[:@387.4]
  assign NV_NVDLA_BASIC_REG_single_io_nvdla_core_clk = io_nvdla_core_clk; // @[NV_NVDLA_CACC_regfile.scala 63:35:@388.4]
  assign NV_NVDLA_BASIC_REG_single_io_reg_offset = NV_NVDLA_CSB_LOGIC_io_reg_offset; // @[NV_NVDLA_CACC_regfile.scala 64:31:@389.4]
  assign NV_NVDLA_BASIC_REG_single_io_reg_wr_data = NV_NVDLA_CSB_LOGIC_io_reg_wr_data; // @[NV_NVDLA_CACC_regfile.scala 65:32:@390.4]
  assign NV_NVDLA_BASIC_REG_single_io_reg_wr_en = _T_144 & _T_147; // @[NV_NVDLA_CACC_regfile.scala 66:30:@391.4]
  assign NV_NVDLA_BASIC_REG_single_io_consumer = _T_59; // @[NV_NVDLA_CACC_regfile.scala 68:29:@392.4]
  assign NV_NVDLA_BASIC_REG_single_io_status_0 = {{1'd0}, _T_61}; // @[NV_NVDLA_CACC_regfile.scala 69:29:@393.4]
  assign NV_NVDLA_BASIC_REG_single_io_status_1 = {{1'd0}, _T_63}; // @[NV_NVDLA_CACC_regfile.scala 70:29:@394.4]
  assign NV_NVDLA_CACC_dual_reg_reset = reset; // @[:@400.4]
  assign NV_NVDLA_CACC_dual_reg_io_nvdla_core_clk = io_nvdla_core_clk; // @[NV_NVDLA_CACC_regfile.scala 79:36:@401.4]
  assign NV_NVDLA_CACC_dual_reg_io_reg_offset = NV_NVDLA_CSB_LOGIC_io_reg_offset; // @[NV_NVDLA_CACC_regfile.scala 80:32:@402.4]
  assign NV_NVDLA_CACC_dual_reg_io_reg_wr_data = NV_NVDLA_CSB_LOGIC_io_reg_wr_data; // @[NV_NVDLA_CACC_regfile.scala 81:33:@403.4]
  assign NV_NVDLA_CACC_dual_reg_io_reg_wr_en = _T_164 & _T_88; // @[NV_NVDLA_CACC_regfile.scala 82:31:@404.4]
  assign NV_NVDLA_CACC_dual_reg_io_op_en = _T_74; // @[NV_NVDLA_CACC_regfile.scala 84:27:@405.4]
  assign NV_NVDLA_CACC_dual_reg_io_sat_count = _T_77; // @[NV_NVDLA_CACC_regfile.scala 85:31:@406.4]
  assign NV_NVDLA_CACC_dual_reg_1_reset = reset; // @[:@412.4]
  assign NV_NVDLA_CACC_dual_reg_1_io_nvdla_core_clk = io_nvdla_core_clk; // @[NV_NVDLA_CACC_regfile.scala 94:36:@413.4]
  assign NV_NVDLA_CACC_dual_reg_1_io_reg_offset = NV_NVDLA_CSB_LOGIC_io_reg_offset; // @[NV_NVDLA_CACC_regfile.scala 95:32:@414.4]
  assign NV_NVDLA_CACC_dual_reg_1_io_reg_wr_data = NV_NVDLA_CSB_LOGIC_io_reg_wr_data; // @[NV_NVDLA_CACC_regfile.scala 96:33:@415.4]
  assign NV_NVDLA_CACC_dual_reg_1_io_reg_wr_en = _T_168 & _T_97; // @[NV_NVDLA_CACC_regfile.scala 97:31:@416.4]
  assign NV_NVDLA_CACC_dual_reg_1_io_op_en = _T_82; // @[NV_NVDLA_CACC_regfile.scala 99:27:@417.4]
  assign NV_NVDLA_CACC_dual_reg_1_io_sat_count = _T_85; // @[NV_NVDLA_CACC_regfile.scala 100:31:@418.4]
  assign NV_NVDLA_CSB_LOGIC_reset = reset; // @[:@507.4]
  assign NV_NVDLA_CSB_LOGIC_io_clk = io_nvdla_core_clk; // @[NV_NVDLA_CACC_regfile.scala 174:21:@508.4]
  assign NV_NVDLA_CSB_LOGIC_io_csb2dp_req_valid = io_csb2cacc_req_valid; // @[NV_NVDLA_CACC_regfile.scala 175:24:@512.4]
  assign NV_NVDLA_CSB_LOGIC_io_csb2dp_req_bits = io_csb2cacc_req_bits; // @[NV_NVDLA_CACC_regfile.scala 175:24:@511.4]
  assign NV_NVDLA_CSB_LOGIC_io_reg_rd_data = _T_182 | _T_187; // @[NV_NVDLA_CACC_regfile.scala 179:29:@517.4]
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
  _T_59 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_74 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_77 = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_82 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_85 = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_107 = _RAND_5[2:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_59 <= 1'h0;
    end else begin
      if (io_dp2reg_done) begin
        _T_59 <= _T_86;
      end
    end
    if (reset) begin
      _T_74 <= 1'h0;
    end else begin
      if (_T_109) begin
        _T_74 <= _T_110;
      end else begin
        if (_T_113) begin
          _T_74 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_77 <= 32'h0;
    end else begin
      if (_T_207) begin
        if (_T_204) begin
          _T_77 <= io_dp2reg_sat_count;
        end else begin
          if (_T_206) begin
            _T_77 <= 32'h0;
          end
        end
      end
    end
    if (reset) begin
      _T_82 <= 1'h0;
    end else begin
      if (_T_118) begin
        _T_82 <= _T_110;
      end else begin
        if (_T_122) begin
          _T_82 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_85 <= 32'h0;
    end else begin
      if (_T_212) begin
        if (_T_209) begin
          _T_85 <= io_dp2reg_sat_count;
        end else begin
          if (_T_211) begin
            _T_85 <= 32'h0;
          end
        end
      end
    end
    if (reset) begin
      _T_107 <= 3'h0;
    end else begin
      if (io_dp2reg_done) begin
        _T_107 <= 3'h0;
      end else begin
        _T_107 <= _T_129;
      end
    end
  end
endmodule
module NV_NVDLA_CACC_assembly_ctrl( // @[:@553.2]
  input         reset, // @[:@555.4]
  input         io_nvdla_core_clk, // @[:@556.4]
  output        io_abuf_rd_addr_valid, // @[:@556.4]
  output [5:0]  io_abuf_rd_addr_bits, // @[:@556.4]
  input         io_mac_a2accu_pd_valid, // @[:@556.4]
  input  [8:0]  io_mac_a2accu_pd_bits, // @[:@556.4]
  output        io_accu_ctrl_pd_valid, // @[:@556.4]
  output [12:0] io_accu_ctrl_pd_bits, // @[:@556.4]
  output        io_accu_ctrl_ram_valid, // @[:@556.4]
  output [4:0]  io_cfg_truncate, // @[:@556.4]
  input         io_reg2dp_op_en, // @[:@556.4]
  input  [4:0]  io_reg2dp_clip_truncate, // @[:@556.4]
  input         io_dp2reg_done, // @[:@556.4]
  output        io_wait_for_op_en // @[:@556.4]
);
  reg  _T_39; // @[NV_NVDLA_CACC_assembly_ctrl.scala 60:25:@558.4]
  reg [31:0] _RAND_0;
  reg [8:0] _T_42; // @[Reg.scala 19:20:@560.4]
  reg [31:0] _RAND_1;
  wire [8:0] _GEN_0; // @[Reg.scala 20:19:@561.4]
  wire  _T_44; // @[NV_NVDLA_CACC_assembly_ctrl.scala 67:30:@565.4]
  wire  _T_45; // @[NV_NVDLA_CACC_assembly_ctrl.scala 68:31:@566.4]
  wire  _T_46; // @[NV_NVDLA_CACC_assembly_ctrl.scala 69:29:@567.4]
  reg  _T_57; // @[NV_NVDLA_CACC_assembly_ctrl.scala 75:33:@581.4]
  reg [31:0] _RAND_2;
  wire  _T_60; // @[NV_NVDLA_CACC_assembly_ctrl.scala 76:63:@582.4]
  reg  _T_63; // @[NV_NVDLA_CACC_assembly_ctrl.scala 76:31:@584.4]
  reg [31:0] _RAND_3;
  reg [5:0] _T_66; // @[NV_NVDLA_CACC_assembly_ctrl.scala 81:23:@588.4]
  reg [31:0] _RAND_4;
  reg  _T_69; // @[NV_NVDLA_CACC_assembly_ctrl.scala 82:29:@589.4]
  reg [31:0] _RAND_5;
  reg  _T_72; // @[NV_NVDLA_CACC_assembly_ctrl.scala 83:30:@590.4]
  reg [31:0] _RAND_6;
  wire  _T_73; // @[NV_NVDLA_CACC_assembly_ctrl.scala 85:34:@591.4]
  wire [6:0] _T_75; // @[NV_NVDLA_CACC_assembly_ctrl.scala 86:29:@592.4]
  wire [5:0] _T_76; // @[NV_NVDLA_CACC_assembly_ctrl.scala 86:29:@593.4]
  wire  _T_77; // @[NV_NVDLA_CACC_assembly_ctrl.scala 87:31:@594.4]
  wire [5:0] _T_79; // @[NV_NVDLA_CACC_assembly_ctrl.scala 87:21:@595.4]
  wire  _T_81; // @[NV_NVDLA_CACC_assembly_ctrl.scala 89:63:@596.4]
  wire  _T_82; // @[NV_NVDLA_CACC_assembly_ctrl.scala 89:51:@597.4]
  wire  _T_83; // @[NV_NVDLA_CACC_assembly_ctrl.scala 89:29:@598.4]
  wire  _T_84; // @[NV_NVDLA_CACC_assembly_ctrl.scala 90:32:@599.4]
  wire  _T_85; // @[NV_NVDLA_CACC_assembly_ctrl.scala 90:29:@600.4]
  wire  _T_86; // @[NV_NVDLA_CACC_assembly_ctrl.scala 93:15:@602.4]
  wire [5:0] _GEN_4; // @[NV_NVDLA_CACC_assembly_ctrl.scala 93:28:@603.4]
  wire  _GEN_5; // @[NV_NVDLA_CACC_assembly_ctrl.scala 93:28:@603.4]
  reg [4:0] _T_89; // @[Reg.scala 19:20:@607.4]
  reg [31:0] _RAND_7;
  wire [4:0] _GEN_6; // @[Reg.scala 20:19:@608.4]
  reg  _T_92; // @[NV_NVDLA_CACC_assembly_ctrl.scala 105:33:@614.4]
  reg [31:0] _RAND_8;
  reg  _T_95; // @[NV_NVDLA_CACC_assembly_ctrl.scala 106:34:@617.4]
  reg [31:0] _RAND_9;
  reg [5:0] _T_98; // @[NV_NVDLA_CACC_assembly_ctrl.scala 107:29:@620.4]
  reg [31:0] _RAND_10;
  wire [5:0] _GEN_7; // @[NV_NVDLA_CACC_assembly_ctrl.scala 108:17:@621.4]
  reg  _T_101; // @[Reg.scala 19:20:@624.4]
  reg [31:0] _RAND_11;
  wire  _GEN_8; // @[Reg.scala 20:19:@625.4]
  reg  _T_104; // @[Reg.scala 19:20:@628.4]
  reg [31:0] _RAND_12;
  wire  _GEN_9; // @[Reg.scala 20:19:@629.4]
  reg  _T_107; // @[Reg.scala 19:20:@632.4]
  reg [31:0] _RAND_13;
  wire  _GEN_10; // @[Reg.scala 20:19:@633.4]
  reg  _T_110; // @[Reg.scala 19:20:@636.4]
  reg [31:0] _RAND_14;
  wire  _GEN_11; // @[Reg.scala 20:19:@637.4]
  wire [9:0] _T_113; // @[Cat.scala 30:58:@641.4]
  wire [2:0] _T_115; // @[Cat.scala 30:58:@643.4]
  assign _GEN_0 = io_mac_a2accu_pd_valid ? io_mac_a2accu_pd_bits : _T_42; // @[Reg.scala 20:19:@561.4]
  assign _T_44 = _T_42[6]; // @[NV_NVDLA_CACC_assembly_ctrl.scala 67:30:@565.4]
  assign _T_45 = _T_42[7]; // @[NV_NVDLA_CACC_assembly_ctrl.scala 68:31:@566.4]
  assign _T_46 = _T_42[8]; // @[NV_NVDLA_CACC_assembly_ctrl.scala 69:29:@567.4]
  assign _T_60 = io_reg2dp_op_en ? 1'h0 : _T_57; // @[NV_NVDLA_CACC_assembly_ctrl.scala 76:63:@582.4]
  assign _T_73 = io_wait_for_op_en & io_reg2dp_op_en; // @[NV_NVDLA_CACC_assembly_ctrl.scala 85:34:@591.4]
  assign _T_75 = _T_66 + 6'h1; // @[NV_NVDLA_CACC_assembly_ctrl.scala 86:29:@592.4]
  assign _T_76 = _T_66 + 6'h1; // @[NV_NVDLA_CACC_assembly_ctrl.scala 86:29:@593.4]
  assign _T_77 = _T_73 | _T_44; // @[NV_NVDLA_CACC_assembly_ctrl.scala 87:31:@594.4]
  assign _T_79 = _T_77 ? 6'h0 : _T_76; // @[NV_NVDLA_CACC_assembly_ctrl.scala 87:21:@595.4]
  assign _T_81 = _T_39 & _T_44; // @[NV_NVDLA_CACC_assembly_ctrl.scala 89:63:@596.4]
  assign _T_82 = _T_81 ? _T_45 : _T_72; // @[NV_NVDLA_CACC_assembly_ctrl.scala 89:51:@597.4]
  assign _T_83 = _T_73 ? 1'h1 : _T_82; // @[NV_NVDLA_CACC_assembly_ctrl.scala 89:29:@598.4]
  assign _T_84 = ~ _T_72; // @[NV_NVDLA_CACC_assembly_ctrl.scala 90:32:@599.4]
  assign _T_85 = _T_39 & _T_84; // @[NV_NVDLA_CACC_assembly_ctrl.scala 90:29:@600.4]
  assign _T_86 = _T_73 | _T_39; // @[NV_NVDLA_CACC_assembly_ctrl.scala 93:15:@602.4]
  assign _GEN_4 = _T_86 ? _T_79 : _T_66; // @[NV_NVDLA_CACC_assembly_ctrl.scala 93:28:@603.4]
  assign _GEN_5 = _T_86 ? _T_83 : _T_72; // @[NV_NVDLA_CACC_assembly_ctrl.scala 93:28:@603.4]
  assign _GEN_6 = _T_73 ? io_reg2dp_clip_truncate : _T_89; // @[Reg.scala 20:19:@608.4]
  assign _GEN_7 = _T_39 ? _T_66 : _T_98; // @[NV_NVDLA_CACC_assembly_ctrl.scala 108:17:@621.4]
  assign _GEN_8 = _T_39 ? _T_44 : _T_101; // @[Reg.scala 20:19:@625.4]
  assign _GEN_9 = _T_39 ? _T_45 : _T_104; // @[Reg.scala 20:19:@629.4]
  assign _GEN_10 = _T_39 ? _T_46 : _T_107; // @[Reg.scala 20:19:@633.4]
  assign _GEN_11 = _T_39 ? _T_45 : _T_110; // @[Reg.scala 20:19:@637.4]
  assign _T_113 = {_T_101,3'h1,_T_98}; // @[Cat.scala 30:58:@641.4]
  assign _T_115 = {_T_110,_T_107,_T_104}; // @[Cat.scala 30:58:@643.4]
  assign io_abuf_rd_addr_valid = _T_39 & _T_84; // @[NV_NVDLA_CACC_assembly_ctrl.scala 100:23:@612.4]
  assign io_abuf_rd_addr_bits = _T_66; // @[NV_NVDLA_CACC_assembly_ctrl.scala 101:22:@613.4]
  assign io_accu_ctrl_pd_valid = _T_92; // @[NV_NVDLA_CACC_assembly_ctrl.scala 105:23:@616.4]
  assign io_accu_ctrl_pd_bits = {_T_115,_T_113}; // @[NV_NVDLA_CACC_assembly_ctrl.scala 117:22:@645.4]
  assign io_accu_ctrl_ram_valid = _T_95; // @[NV_NVDLA_CACC_assembly_ctrl.scala 106:24:@619.4]
  assign io_cfg_truncate = _T_89; // @[NV_NVDLA_CACC_assembly_ctrl.scala 98:17:@611.4]
  assign io_wait_for_op_en = _T_57; // @[NV_NVDLA_CACC_assembly_ctrl.scala 78:19:@587.4]
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
  _T_39 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_42 = _RAND_1[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_57 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_63 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_66 = _RAND_4[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_69 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_72 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_89 = _RAND_7[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_92 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_95 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_98 = _RAND_10[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_101 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_104 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_107 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_110 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_39 <= 1'h0;
    end else begin
      _T_39 <= io_mac_a2accu_pd_valid;
    end
    if (reset) begin
      _T_42 <= 9'h0;
    end else begin
      if (io_mac_a2accu_pd_valid) begin
        _T_42 <= io_mac_a2accu_pd_bits;
      end
    end
    if (reset) begin
      _T_57 <= 1'h1;
    end else begin
      _T_57 <= _T_63;
    end
    if (io_dp2reg_done) begin
      _T_63 <= 1'h1;
    end else begin
      if (io_reg2dp_op_en) begin
        _T_63 <= 1'h0;
      end else begin
        _T_63 <= _T_57;
      end
    end
    if (reset) begin
      _T_66 <= 6'h0;
    end else begin
      if (_T_86) begin
        if (_T_77) begin
          _T_66 <= 6'h0;
        end else begin
          _T_66 <= _T_76;
        end
      end
    end
    if (reset) begin
      _T_69 <= 1'h0;
    end else begin
      _T_69 <= _T_85;
    end
    if (reset) begin
      _T_72 <= 1'h1;
    end else begin
      if (_T_86) begin
        if (_T_73) begin
          _T_72 <= 1'h1;
        end else begin
          if (_T_81) begin
            _T_72 <= _T_45;
          end
        end
      end
    end
    if (reset) begin
      _T_89 <= 5'h0;
    end else begin
      if (_T_73) begin
        _T_89 <= io_reg2dp_clip_truncate;
      end
    end
    if (reset) begin
      _T_92 <= 1'h0;
    end else begin
      _T_92 <= _T_39;
    end
    if (reset) begin
      _T_95 <= 1'h0;
    end else begin
      _T_95 <= _T_69;
    end
    if (reset) begin
      _T_98 <= 6'h0;
    end else begin
      if (_T_39) begin
        _T_98 <= _T_66;
      end
    end
    if (reset) begin
      _T_101 <= 1'h0;
    end else begin
      if (_T_39) begin
        _T_101 <= _T_44;
      end
    end
    if (reset) begin
      _T_104 <= 1'h0;
    end else begin
      if (_T_39) begin
        _T_104 <= _T_45;
      end
    end
    if (reset) begin
      _T_107 <= 1'h0;
    end else begin
      if (_T_39) begin
        _T_107 <= _T_46;
      end
    end
    if (reset) begin
      _T_110 <= 1'h0;
    end else begin
      if (_T_39) begin
        _T_110 <= _T_45;
      end
    end
  end
endmodule
module nv_ram_rws( // @[:@647.2]
  input           io_clk, // @[:@650.4]
  input           io_re, // @[:@650.4]
  input           io_we, // @[:@650.4]
  input  [5:0]    io_ra, // @[:@650.4]
  input  [5:0]    io_wa, // @[:@650.4]
  input  [1087:0] io_di, // @[:@650.4]
  output [1087:0] io_dout // @[:@650.4]
);
  reg [1087:0] _T_22_0; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_0;
  reg [1087:0] _T_22_1; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_1;
  reg [1087:0] _T_22_2; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_2;
  reg [1087:0] _T_22_3; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_3;
  reg [1087:0] _T_22_4; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_4;
  reg [1087:0] _T_22_5; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_5;
  reg [1087:0] _T_22_6; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_6;
  reg [1087:0] _T_22_7; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_7;
  reg [1087:0] _T_22_8; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_8;
  reg [1087:0] _T_22_9; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_9;
  reg [1087:0] _T_22_10; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_10;
  reg [1087:0] _T_22_11; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_11;
  reg [1087:0] _T_22_12; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_12;
  reg [1087:0] _T_22_13; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_13;
  reg [1087:0] _T_22_14; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_14;
  reg [1087:0] _T_22_15; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_15;
  reg [1087:0] _T_22_16; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_16;
  reg [1087:0] _T_22_17; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_17;
  reg [1087:0] _T_22_18; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_18;
  reg [1087:0] _T_22_19; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_19;
  reg [1087:0] _T_22_20; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_20;
  reg [1087:0] _T_22_21; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_21;
  reg [1087:0] _T_22_22; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_22;
  reg [1087:0] _T_22_23; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_23;
  reg [1087:0] _T_22_24; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_24;
  reg [1087:0] _T_22_25; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_25;
  reg [1087:0] _T_22_26; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_26;
  reg [1087:0] _T_22_27; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_27;
  reg [1087:0] _T_22_28; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_28;
  reg [1087:0] _T_22_29; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_29;
  reg [1087:0] _T_22_30; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_30;
  reg [1087:0] _T_22_31; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_31;
  reg [1087:0] _T_22_32; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_32;
  reg [1087:0] _T_22_33; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_33;
  reg [1087:0] _T_22_34; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_34;
  reg [1087:0] _T_22_35; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_35;
  reg [1087:0] _T_22_36; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_36;
  reg [1087:0] _T_22_37; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_37;
  reg [1087:0] _T_22_38; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_38;
  reg [1087:0] _T_22_39; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_39;
  reg [1087:0] _T_22_40; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_40;
  reg [1087:0] _T_22_41; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_41;
  reg [1087:0] _T_22_42; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_42;
  reg [1087:0] _T_22_43; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_43;
  reg [1087:0] _T_22_44; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_44;
  reg [1087:0] _T_22_45; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_45;
  reg [1087:0] _T_22_46; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_46;
  reg [1087:0] _T_22_47; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_47;
  reg [1087:0] _T_22_48; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_48;
  reg [1087:0] _T_22_49; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_49;
  reg [1087:0] _T_22_50; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_50;
  reg [1087:0] _T_22_51; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_51;
  reg [1087:0] _T_22_52; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_52;
  reg [1087:0] _T_22_53; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_53;
  reg [1087:0] _T_22_54; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_54;
  reg [1087:0] _T_22_55; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_55;
  reg [1087:0] _T_22_56; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_56;
  reg [1087:0] _T_22_57; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_57;
  reg [1087:0] _T_22_58; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_58;
  reg [1087:0] _T_22_59; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_59;
  reg [1087:0] _T_22_60; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_60;
  reg [1087:0] _T_22_61; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_61;
  reg [1087:0] _T_22_62; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_62;
  reg [1087:0] _T_22_63; // @[nv_ram_rws.scala 27:18:@652.4]
  reg [1087:0] _RAND_63;
  reg [5:0] _T_90; // @[nv_ram_rws.scala 28:19:@653.4]
  reg [31:0] _RAND_64;
  wire [1087:0] _GEN_0; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_1; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_2; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_3; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_4; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_5; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_6; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_7; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_8; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_9; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_10; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_11; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_12; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_13; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_14; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_15; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_16; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_17; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_18; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_19; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_20; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_21; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_22; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_23; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_24; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_25; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_26; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_27; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_28; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_29; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_30; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_31; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_32; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_33; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_34; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_35; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_36; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_37; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_38; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_39; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_40; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_41; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_42; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_43; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_44; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_45; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_46; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_47; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_48; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_49; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_50; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_51; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_52; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_53; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_54; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_55; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_56; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_57; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_58; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_59; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_60; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_61; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_62; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_63; // @[nv_ram_rws.scala 31:20:@655.6]
  wire [1087:0] _GEN_130; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_131; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_132; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_133; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_134; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_135; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_136; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_137; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_138; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_139; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_140; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_141; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_142; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_143; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_144; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_145; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_146; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_147; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_148; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_149; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_150; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_151; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_152; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_153; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_154; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_155; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_156; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_157; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_158; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_159; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_160; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_161; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_162; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_163; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_164; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_165; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_166; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_167; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_168; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_169; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_170; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_171; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_172; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_173; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_174; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_175; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_176; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_177; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_178; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_179; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_180; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_181; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_182; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_183; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_184; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_185; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_186; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_187; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_188; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_189; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_190; // @[nv_ram_rws.scala 36:13:@660.4]
  wire [1087:0] _GEN_191; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_0 = 6'h0 == io_wa ? io_di : _T_22_0; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_1 = 6'h1 == io_wa ? io_di : _T_22_1; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_2 = 6'h2 == io_wa ? io_di : _T_22_2; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_3 = 6'h3 == io_wa ? io_di : _T_22_3; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_4 = 6'h4 == io_wa ? io_di : _T_22_4; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_5 = 6'h5 == io_wa ? io_di : _T_22_5; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_6 = 6'h6 == io_wa ? io_di : _T_22_6; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_7 = 6'h7 == io_wa ? io_di : _T_22_7; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_8 = 6'h8 == io_wa ? io_di : _T_22_8; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_9 = 6'h9 == io_wa ? io_di : _T_22_9; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_10 = 6'ha == io_wa ? io_di : _T_22_10; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_11 = 6'hb == io_wa ? io_di : _T_22_11; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_12 = 6'hc == io_wa ? io_di : _T_22_12; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_13 = 6'hd == io_wa ? io_di : _T_22_13; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_14 = 6'he == io_wa ? io_di : _T_22_14; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_15 = 6'hf == io_wa ? io_di : _T_22_15; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_16 = 6'h10 == io_wa ? io_di : _T_22_16; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_17 = 6'h11 == io_wa ? io_di : _T_22_17; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_18 = 6'h12 == io_wa ? io_di : _T_22_18; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_19 = 6'h13 == io_wa ? io_di : _T_22_19; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_20 = 6'h14 == io_wa ? io_di : _T_22_20; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_21 = 6'h15 == io_wa ? io_di : _T_22_21; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_22 = 6'h16 == io_wa ? io_di : _T_22_22; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_23 = 6'h17 == io_wa ? io_di : _T_22_23; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_24 = 6'h18 == io_wa ? io_di : _T_22_24; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_25 = 6'h19 == io_wa ? io_di : _T_22_25; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_26 = 6'h1a == io_wa ? io_di : _T_22_26; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_27 = 6'h1b == io_wa ? io_di : _T_22_27; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_28 = 6'h1c == io_wa ? io_di : _T_22_28; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_29 = 6'h1d == io_wa ? io_di : _T_22_29; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_30 = 6'h1e == io_wa ? io_di : _T_22_30; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_31 = 6'h1f == io_wa ? io_di : _T_22_31; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_32 = 6'h20 == io_wa ? io_di : _T_22_32; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_33 = 6'h21 == io_wa ? io_di : _T_22_33; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_34 = 6'h22 == io_wa ? io_di : _T_22_34; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_35 = 6'h23 == io_wa ? io_di : _T_22_35; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_36 = 6'h24 == io_wa ? io_di : _T_22_36; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_37 = 6'h25 == io_wa ? io_di : _T_22_37; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_38 = 6'h26 == io_wa ? io_di : _T_22_38; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_39 = 6'h27 == io_wa ? io_di : _T_22_39; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_40 = 6'h28 == io_wa ? io_di : _T_22_40; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_41 = 6'h29 == io_wa ? io_di : _T_22_41; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_42 = 6'h2a == io_wa ? io_di : _T_22_42; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_43 = 6'h2b == io_wa ? io_di : _T_22_43; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_44 = 6'h2c == io_wa ? io_di : _T_22_44; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_45 = 6'h2d == io_wa ? io_di : _T_22_45; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_46 = 6'h2e == io_wa ? io_di : _T_22_46; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_47 = 6'h2f == io_wa ? io_di : _T_22_47; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_48 = 6'h30 == io_wa ? io_di : _T_22_48; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_49 = 6'h31 == io_wa ? io_di : _T_22_49; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_50 = 6'h32 == io_wa ? io_di : _T_22_50; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_51 = 6'h33 == io_wa ? io_di : _T_22_51; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_52 = 6'h34 == io_wa ? io_di : _T_22_52; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_53 = 6'h35 == io_wa ? io_di : _T_22_53; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_54 = 6'h36 == io_wa ? io_di : _T_22_54; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_55 = 6'h37 == io_wa ? io_di : _T_22_55; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_56 = 6'h38 == io_wa ? io_di : _T_22_56; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_57 = 6'h39 == io_wa ? io_di : _T_22_57; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_58 = 6'h3a == io_wa ? io_di : _T_22_58; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_59 = 6'h3b == io_wa ? io_di : _T_22_59; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_60 = 6'h3c == io_wa ? io_di : _T_22_60; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_61 = 6'h3d == io_wa ? io_di : _T_22_61; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_62 = 6'h3e == io_wa ? io_di : _T_22_62; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_63 = 6'h3f == io_wa ? io_di : _T_22_63; // @[nv_ram_rws.scala 31:20:@655.6]
  assign _GEN_130 = 6'h1 == _T_90 ? _T_22_1 : _T_22_0; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_131 = 6'h2 == _T_90 ? _T_22_2 : _GEN_130; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_132 = 6'h3 == _T_90 ? _T_22_3 : _GEN_131; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_133 = 6'h4 == _T_90 ? _T_22_4 : _GEN_132; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_134 = 6'h5 == _T_90 ? _T_22_5 : _GEN_133; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_135 = 6'h6 == _T_90 ? _T_22_6 : _GEN_134; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_136 = 6'h7 == _T_90 ? _T_22_7 : _GEN_135; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_137 = 6'h8 == _T_90 ? _T_22_8 : _GEN_136; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_138 = 6'h9 == _T_90 ? _T_22_9 : _GEN_137; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_139 = 6'ha == _T_90 ? _T_22_10 : _GEN_138; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_140 = 6'hb == _T_90 ? _T_22_11 : _GEN_139; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_141 = 6'hc == _T_90 ? _T_22_12 : _GEN_140; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_142 = 6'hd == _T_90 ? _T_22_13 : _GEN_141; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_143 = 6'he == _T_90 ? _T_22_14 : _GEN_142; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_144 = 6'hf == _T_90 ? _T_22_15 : _GEN_143; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_145 = 6'h10 == _T_90 ? _T_22_16 : _GEN_144; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_146 = 6'h11 == _T_90 ? _T_22_17 : _GEN_145; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_147 = 6'h12 == _T_90 ? _T_22_18 : _GEN_146; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_148 = 6'h13 == _T_90 ? _T_22_19 : _GEN_147; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_149 = 6'h14 == _T_90 ? _T_22_20 : _GEN_148; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_150 = 6'h15 == _T_90 ? _T_22_21 : _GEN_149; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_151 = 6'h16 == _T_90 ? _T_22_22 : _GEN_150; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_152 = 6'h17 == _T_90 ? _T_22_23 : _GEN_151; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_153 = 6'h18 == _T_90 ? _T_22_24 : _GEN_152; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_154 = 6'h19 == _T_90 ? _T_22_25 : _GEN_153; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_155 = 6'h1a == _T_90 ? _T_22_26 : _GEN_154; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_156 = 6'h1b == _T_90 ? _T_22_27 : _GEN_155; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_157 = 6'h1c == _T_90 ? _T_22_28 : _GEN_156; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_158 = 6'h1d == _T_90 ? _T_22_29 : _GEN_157; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_159 = 6'h1e == _T_90 ? _T_22_30 : _GEN_158; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_160 = 6'h1f == _T_90 ? _T_22_31 : _GEN_159; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_161 = 6'h20 == _T_90 ? _T_22_32 : _GEN_160; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_162 = 6'h21 == _T_90 ? _T_22_33 : _GEN_161; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_163 = 6'h22 == _T_90 ? _T_22_34 : _GEN_162; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_164 = 6'h23 == _T_90 ? _T_22_35 : _GEN_163; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_165 = 6'h24 == _T_90 ? _T_22_36 : _GEN_164; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_166 = 6'h25 == _T_90 ? _T_22_37 : _GEN_165; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_167 = 6'h26 == _T_90 ? _T_22_38 : _GEN_166; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_168 = 6'h27 == _T_90 ? _T_22_39 : _GEN_167; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_169 = 6'h28 == _T_90 ? _T_22_40 : _GEN_168; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_170 = 6'h29 == _T_90 ? _T_22_41 : _GEN_169; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_171 = 6'h2a == _T_90 ? _T_22_42 : _GEN_170; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_172 = 6'h2b == _T_90 ? _T_22_43 : _GEN_171; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_173 = 6'h2c == _T_90 ? _T_22_44 : _GEN_172; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_174 = 6'h2d == _T_90 ? _T_22_45 : _GEN_173; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_175 = 6'h2e == _T_90 ? _T_22_46 : _GEN_174; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_176 = 6'h2f == _T_90 ? _T_22_47 : _GEN_175; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_177 = 6'h30 == _T_90 ? _T_22_48 : _GEN_176; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_178 = 6'h31 == _T_90 ? _T_22_49 : _GEN_177; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_179 = 6'h32 == _T_90 ? _T_22_50 : _GEN_178; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_180 = 6'h33 == _T_90 ? _T_22_51 : _GEN_179; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_181 = 6'h34 == _T_90 ? _T_22_52 : _GEN_180; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_182 = 6'h35 == _T_90 ? _T_22_53 : _GEN_181; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_183 = 6'h36 == _T_90 ? _T_22_54 : _GEN_182; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_184 = 6'h37 == _T_90 ? _T_22_55 : _GEN_183; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_185 = 6'h38 == _T_90 ? _T_22_56 : _GEN_184; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_186 = 6'h39 == _T_90 ? _T_22_57 : _GEN_185; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_187 = 6'h3a == _T_90 ? _T_22_58 : _GEN_186; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_188 = 6'h3b == _T_90 ? _T_22_59 : _GEN_187; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_189 = 6'h3c == _T_90 ? _T_22_60 : _GEN_188; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_190 = 6'h3d == _T_90 ? _T_22_61 : _GEN_189; // @[nv_ram_rws.scala 36:13:@660.4]
  assign _GEN_191 = 6'h3e == _T_90 ? _T_22_62 : _GEN_190; // @[nv_ram_rws.scala 36:13:@660.4]
  assign io_dout = 6'h3f == _T_90 ? _T_22_63 : _GEN_191; // @[nv_ram_rws.scala 36:13:@660.4]
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
  _RAND_0 = {34{`RANDOM}};
  _T_22_0 = _RAND_0[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {34{`RANDOM}};
  _T_22_1 = _RAND_1[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {34{`RANDOM}};
  _T_22_2 = _RAND_2[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {34{`RANDOM}};
  _T_22_3 = _RAND_3[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {34{`RANDOM}};
  _T_22_4 = _RAND_4[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {34{`RANDOM}};
  _T_22_5 = _RAND_5[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {34{`RANDOM}};
  _T_22_6 = _RAND_6[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {34{`RANDOM}};
  _T_22_7 = _RAND_7[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {34{`RANDOM}};
  _T_22_8 = _RAND_8[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {34{`RANDOM}};
  _T_22_9 = _RAND_9[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {34{`RANDOM}};
  _T_22_10 = _RAND_10[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {34{`RANDOM}};
  _T_22_11 = _RAND_11[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {34{`RANDOM}};
  _T_22_12 = _RAND_12[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {34{`RANDOM}};
  _T_22_13 = _RAND_13[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {34{`RANDOM}};
  _T_22_14 = _RAND_14[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {34{`RANDOM}};
  _T_22_15 = _RAND_15[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {34{`RANDOM}};
  _T_22_16 = _RAND_16[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {34{`RANDOM}};
  _T_22_17 = _RAND_17[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {34{`RANDOM}};
  _T_22_18 = _RAND_18[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {34{`RANDOM}};
  _T_22_19 = _RAND_19[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {34{`RANDOM}};
  _T_22_20 = _RAND_20[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {34{`RANDOM}};
  _T_22_21 = _RAND_21[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {34{`RANDOM}};
  _T_22_22 = _RAND_22[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {34{`RANDOM}};
  _T_22_23 = _RAND_23[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {34{`RANDOM}};
  _T_22_24 = _RAND_24[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {34{`RANDOM}};
  _T_22_25 = _RAND_25[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {34{`RANDOM}};
  _T_22_26 = _RAND_26[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {34{`RANDOM}};
  _T_22_27 = _RAND_27[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {34{`RANDOM}};
  _T_22_28 = _RAND_28[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {34{`RANDOM}};
  _T_22_29 = _RAND_29[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {34{`RANDOM}};
  _T_22_30 = _RAND_30[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {34{`RANDOM}};
  _T_22_31 = _RAND_31[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {34{`RANDOM}};
  _T_22_32 = _RAND_32[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {34{`RANDOM}};
  _T_22_33 = _RAND_33[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {34{`RANDOM}};
  _T_22_34 = _RAND_34[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {34{`RANDOM}};
  _T_22_35 = _RAND_35[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {34{`RANDOM}};
  _T_22_36 = _RAND_36[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {34{`RANDOM}};
  _T_22_37 = _RAND_37[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {34{`RANDOM}};
  _T_22_38 = _RAND_38[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {34{`RANDOM}};
  _T_22_39 = _RAND_39[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {34{`RANDOM}};
  _T_22_40 = _RAND_40[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {34{`RANDOM}};
  _T_22_41 = _RAND_41[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {34{`RANDOM}};
  _T_22_42 = _RAND_42[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {34{`RANDOM}};
  _T_22_43 = _RAND_43[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {34{`RANDOM}};
  _T_22_44 = _RAND_44[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {34{`RANDOM}};
  _T_22_45 = _RAND_45[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {34{`RANDOM}};
  _T_22_46 = _RAND_46[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {34{`RANDOM}};
  _T_22_47 = _RAND_47[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {34{`RANDOM}};
  _T_22_48 = _RAND_48[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {34{`RANDOM}};
  _T_22_49 = _RAND_49[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {34{`RANDOM}};
  _T_22_50 = _RAND_50[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {34{`RANDOM}};
  _T_22_51 = _RAND_51[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {34{`RANDOM}};
  _T_22_52 = _RAND_52[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {34{`RANDOM}};
  _T_22_53 = _RAND_53[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {34{`RANDOM}};
  _T_22_54 = _RAND_54[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {34{`RANDOM}};
  _T_22_55 = _RAND_55[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {34{`RANDOM}};
  _T_22_56 = _RAND_56[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {34{`RANDOM}};
  _T_22_57 = _RAND_57[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {34{`RANDOM}};
  _T_22_58 = _RAND_58[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {34{`RANDOM}};
  _T_22_59 = _RAND_59[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {34{`RANDOM}};
  _T_22_60 = _RAND_60[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {34{`RANDOM}};
  _T_22_61 = _RAND_61[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {34{`RANDOM}};
  _T_22_62 = _RAND_62[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {34{`RANDOM}};
  _T_22_63 = _RAND_63[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  _T_90 = _RAND_64[5:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_clk) begin
    if (io_we) begin
      if (6'h0 == io_wa) begin
        _T_22_0 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h1 == io_wa) begin
        _T_22_1 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h2 == io_wa) begin
        _T_22_2 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h3 == io_wa) begin
        _T_22_3 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h4 == io_wa) begin
        _T_22_4 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h5 == io_wa) begin
        _T_22_5 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h6 == io_wa) begin
        _T_22_6 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h7 == io_wa) begin
        _T_22_7 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h8 == io_wa) begin
        _T_22_8 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h9 == io_wa) begin
        _T_22_9 <= io_di;
      end
    end
    if (io_we) begin
      if (6'ha == io_wa) begin
        _T_22_10 <= io_di;
      end
    end
    if (io_we) begin
      if (6'hb == io_wa) begin
        _T_22_11 <= io_di;
      end
    end
    if (io_we) begin
      if (6'hc == io_wa) begin
        _T_22_12 <= io_di;
      end
    end
    if (io_we) begin
      if (6'hd == io_wa) begin
        _T_22_13 <= io_di;
      end
    end
    if (io_we) begin
      if (6'he == io_wa) begin
        _T_22_14 <= io_di;
      end
    end
    if (io_we) begin
      if (6'hf == io_wa) begin
        _T_22_15 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h10 == io_wa) begin
        _T_22_16 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h11 == io_wa) begin
        _T_22_17 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h12 == io_wa) begin
        _T_22_18 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h13 == io_wa) begin
        _T_22_19 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h14 == io_wa) begin
        _T_22_20 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h15 == io_wa) begin
        _T_22_21 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h16 == io_wa) begin
        _T_22_22 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h17 == io_wa) begin
        _T_22_23 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h18 == io_wa) begin
        _T_22_24 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h19 == io_wa) begin
        _T_22_25 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h1a == io_wa) begin
        _T_22_26 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h1b == io_wa) begin
        _T_22_27 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h1c == io_wa) begin
        _T_22_28 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h1d == io_wa) begin
        _T_22_29 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h1e == io_wa) begin
        _T_22_30 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h1f == io_wa) begin
        _T_22_31 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h20 == io_wa) begin
        _T_22_32 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h21 == io_wa) begin
        _T_22_33 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h22 == io_wa) begin
        _T_22_34 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h23 == io_wa) begin
        _T_22_35 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h24 == io_wa) begin
        _T_22_36 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h25 == io_wa) begin
        _T_22_37 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h26 == io_wa) begin
        _T_22_38 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h27 == io_wa) begin
        _T_22_39 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h28 == io_wa) begin
        _T_22_40 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h29 == io_wa) begin
        _T_22_41 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h2a == io_wa) begin
        _T_22_42 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h2b == io_wa) begin
        _T_22_43 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h2c == io_wa) begin
        _T_22_44 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h2d == io_wa) begin
        _T_22_45 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h2e == io_wa) begin
        _T_22_46 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h2f == io_wa) begin
        _T_22_47 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h30 == io_wa) begin
        _T_22_48 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h31 == io_wa) begin
        _T_22_49 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h32 == io_wa) begin
        _T_22_50 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h33 == io_wa) begin
        _T_22_51 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h34 == io_wa) begin
        _T_22_52 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h35 == io_wa) begin
        _T_22_53 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h36 == io_wa) begin
        _T_22_54 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h37 == io_wa) begin
        _T_22_55 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h38 == io_wa) begin
        _T_22_56 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h39 == io_wa) begin
        _T_22_57 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h3a == io_wa) begin
        _T_22_58 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h3b == io_wa) begin
        _T_22_59 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h3c == io_wa) begin
        _T_22_60 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h3d == io_wa) begin
        _T_22_61 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h3e == io_wa) begin
        _T_22_62 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h3f == io_wa) begin
        _T_22_63 <= io_di;
      end
    end
    if (io_re) begin
      _T_90 <= io_ra;
    end
  end
endmodule
module NV_NVDLA_CACC_assembly_buffer( // @[:@662.2]
  input           reset, // @[:@664.4]
  input           io_nvdla_core_clk, // @[:@665.4]
  input           io_abuf_wr_addr_valid, // @[:@665.4]
  input  [5:0]    io_abuf_wr_addr_bits, // @[:@665.4]
  input  [1087:0] io_abuf_wr_data, // @[:@665.4]
  input           io_abuf_rd_addr_valid, // @[:@665.4]
  input  [5:0]    io_abuf_rd_addr_bits, // @[:@665.4]
  output [1087:0] io_abuf_rd_data // @[:@665.4]
);
  wire  nv_ram_rws_io_clk; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@667.4]
  wire  nv_ram_rws_io_re; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@667.4]
  wire  nv_ram_rws_io_we; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@667.4]
  wire [5:0] nv_ram_rws_io_ra; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@667.4]
  wire [5:0] nv_ram_rws_io_wa; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@667.4]
  wire [1087:0] nv_ram_rws_io_di; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@667.4]
  wire [1087:0] nv_ram_rws_io_dout; // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@667.4]
  reg  _T_39; // @[NV_NVDLA_CACC_assembly_buffer.scala 54:32:@676.4]
  reg [31:0] _RAND_0;
  reg [1087:0] _T_41; // @[Reg.scala 11:16:@678.4]
  reg [1087:0] _RAND_1;
  nv_ram_rws nv_ram_rws ( // @[NV_NVDLA_CACC_assembly_buffer.scala 44:31:@667.4]
    .io_clk(nv_ram_rws_io_clk),
    .io_re(nv_ram_rws_io_re),
    .io_we(nv_ram_rws_io_we),
    .io_ra(nv_ram_rws_io_ra),
    .io_wa(nv_ram_rws_io_wa),
    .io_di(nv_ram_rws_io_di),
    .io_dout(nv_ram_rws_io_dout)
  );
  assign io_abuf_rd_data = _T_41; // @[NV_NVDLA_CACC_assembly_buffer.scala 56:21:@682.4]
  assign nv_ram_rws_io_clk = io_nvdla_core_clk; // @[NV_NVDLA_CACC_assembly_buffer.scala 46:26:@670.4]
  assign nv_ram_rws_io_re = io_abuf_rd_addr_valid; // @[NV_NVDLA_CACC_assembly_buffer.scala 48:25:@672.4]
  assign nv_ram_rws_io_we = io_abuf_wr_addr_valid; // @[NV_NVDLA_CACC_assembly_buffer.scala 49:25:@673.4]
  assign nv_ram_rws_io_ra = io_abuf_rd_addr_bits; // @[NV_NVDLA_CACC_assembly_buffer.scala 47:25:@671.4]
  assign nv_ram_rws_io_wa = io_abuf_wr_addr_bits; // @[NV_NVDLA_CACC_assembly_buffer.scala 50:25:@674.4]
  assign nv_ram_rws_io_di = io_abuf_wr_data; // @[NV_NVDLA_CACC_assembly_buffer.scala 51:25:@675.4]
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
  _T_39 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {34{`RANDOM}};
  _T_41 = _RAND_1[1087:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_39 <= 1'h0;
    end else begin
      _T_39 <= io_abuf_rd_addr_valid;
    end
    if (_T_39) begin
      _T_41 <= nv_ram_rws_io_dout;
    end
  end
endmodule
module NV_NVDLA_CACC_CALC_int8( // @[:@684.2]
  input         reset, // @[:@686.4]
  input         io_nvdla_core_clk, // @[:@687.4]
  input  [4:0]  io_cfg_truncate, // @[:@687.4]
  input  [21:0] io_in_data, // @[:@687.4]
  input  [33:0] io_in_op, // @[:@687.4]
  input         io_in_op_valid, // @[:@687.4]
  input         io_in_sel, // @[:@687.4]
  input         io_in_valid, // @[:@687.4]
  output [31:0] io_out_final_data, // @[:@687.4]
  output        io_out_final_sat, // @[:@687.4]
  output        io_out_final_valid, // @[:@687.4]
  output [33:0] io_out_partial_data, // @[:@687.4]
  output        io_out_partial_valid // @[:@687.4]
);
  reg  _T_31; // @[NV_NVDLA_CACC_CALC_int8.scala 55:28:@689.4]
  reg [31:0] _RAND_0;
  reg  _T_34; // @[NV_NVDLA_CACC_CALC_int8.scala 56:29:@690.4]
  reg [31:0] _RAND_1;
  reg [34:0] _T_36; // @[NV_NVDLA_CACC_CALC_int8.scala 57:23:@691.4]
  reg [63:0] _RAND_2;
  wire [21:0] _T_37; // @[NV_NVDLA_CACC_CALC_int8.scala 62:33:@695.6]
  wire [33:0] _T_39; // @[NV_NVDLA_CACC_CALC_int8.scala 62:46:@696.6]
  wire [33:0] _T_40; // @[NV_NVDLA_CACC_CALC_int8.scala 62:89:@697.6]
  wire [33:0] _GEN_5; // @[NV_NVDLA_CACC_CALC_int8.scala 62:40:@698.6]
  wire [34:0] _T_41; // @[NV_NVDLA_CACC_CALC_int8.scala 62:40:@698.6]
  wire [34:0] _T_42; // @[NV_NVDLA_CACC_CALC_int8.scala 62:97:@699.6]
  wire  _GEN_0; // @[NV_NVDLA_CACC_CALC_int8.scala 60:22:@693.4]
  wire  _T_43; // @[NV_NVDLA_CACC_CALC_int8.scala 68:30:@702.4]
  wire  _T_44; // @[NV_NVDLA_CACC_CALC_int8.scala 69:29:@703.4]
  wire  _T_48; // @[NV_NVDLA_CACC_CALC_int8.scala 73:20:@706.4]
  wire  _T_49; // @[NV_NVDLA_CACC_CALC_int8.scala 74:32:@708.6]
  wire [32:0] _T_53; // @[Bitwise.scala 72:12:@710.6]
  wire [32:0] _T_54; // @[NV_NVDLA_CACC_CALC_int8.scala 77:31:@714.6]
  wire [32:0] _GEN_2; // @[NV_NVDLA_CACC_CALC_int8.scala 73:31:@707.4]
  wire [33:0] _T_55; // @[Cat.scala 30:58:@717.4]
  wire [33:0] _T_64; // @[NV_NVDLA_CACC_CALC_int8.scala 87:27:@721.4]
  wire [49:0] _T_66; // @[Cat.scala 30:58:@722.4]
  wire [49:0] _T_67; // @[NV_NVDLA_CACC_CALC_int8.scala 88:66:@723.4]
  wire [49:0] _T_68; // @[NV_NVDLA_CACC_CALC_int8.scala 88:73:@724.4]
  wire [49:0] _T_69; // @[Cat.scala 30:58:@725.4]
  wire [33:0] _T_70; // @[NV_NVDLA_CACC_CALC_int8.scala 89:42:@726.4]
  wire  _T_72; // @[NV_NVDLA_CACC_CALC_int8.scala 90:41:@728.4]
  wire [14:0] _T_74; // @[NV_NVDLA_CACC_CALC_int8.scala 91:41:@730.4]
  wire [1:0] _T_75; // @[NV_NVDLA_CACC_CALC_int8.scala 93:51:@731.4]
  wire [1:0] _T_76; // @[NV_NVDLA_CACC_CALC_int8.scala 93:60:@732.4]
  wire  _T_78; // @[NV_NVDLA_CACC_CALC_int8.scala 93:60:@733.4]
  wire  _T_79; // @[NV_NVDLA_CACC_CALC_int8.scala 93:41:@734.4]
  wire  _T_80; // @[NV_NVDLA_CACC_CALC_int8.scala 93:38:@735.4]
  wire  _T_84; // @[NV_NVDLA_CACC_CALC_int8.scala 94:59:@738.4]
  wire  _T_85; // @[NV_NVDLA_CACC_CALC_int8.scala 94:39:@739.4]
  wire  _T_86; // @[NV_NVDLA_CACC_CALC_int8.scala 93:67:@740.4]
  wire [30:0] _T_88; // @[NV_NVDLA_CACC_CALC_int8.scala 95:53:@742.4]
  wire  _T_103; // @[NV_NVDLA_CACC_CALC_int8.scala 98:27:@752.4]
  wire  _T_106; // @[NV_NVDLA_CACC_CALC_int8.scala 98:61:@754.4]
  wire  _T_107; // @[NV_NVDLA_CACC_CALC_int8.scala 98:51:@755.4]
  wire  _T_108; // @[NV_NVDLA_CACC_CALC_int8.scala 98:37:@756.4]
  wire [31:0] _T_89; // @[Cat.scala 30:58:@743.4]
  wire [31:0] _T_90; // @[NV_NVDLA_CACC_CALC_int8.scala 95:71:@744.4]
  wire  _T_92; // @[NV_NVDLA_CACC_CALC_int8.scala 95:71:@745.4]
  wire  _T_93; // @[NV_NVDLA_CACC_CALC_int8.scala 95:39:@746.4]
  wire  _T_94; // @[NV_NVDLA_CACC_CALC_int8.scala 94:65:@747.4]
  wire [31:0] _T_102; // @[NV_NVDLA_CACC_CALC_int8.scala 96:24:@751.4]
  wire [31:0] _T_109; // @[NV_NVDLA_CACC_CALC_int8.scala 99:28:@758.4]
  wire [31:0] _GEN_6; // @[NV_NVDLA_CACC_CALC_int8.scala 99:36:@759.4]
  wire [32:0] _T_110; // @[NV_NVDLA_CACC_CALC_int8.scala 99:36:@759.4]
  wire [31:0] _T_111; // @[NV_NVDLA_CACC_CALC_int8.scala 99:36:@760.4]
  wire [31:0] _T_112; // @[NV_NVDLA_CACC_CALC_int8.scala 102:29:@761.4]
  wire  _T_113; // @[NV_NVDLA_CACC_CALC_int8.scala 104:37:@762.4]
  wire  _T_114; // @[NV_NVDLA_CACC_CALC_int8.scala 104:35:@763.4]
  wire  _T_115; // @[NV_NVDLA_CACC_CALC_int8.scala 105:32:@764.4]
  reg  _T_118; // @[NV_NVDLA_CACC_CALC_int8.scala 107:36:@765.4]
  reg [31:0] _RAND_3;
  reg [33:0] _T_120; // @[Reg.scala 11:16:@768.4]
  reg [63:0] _RAND_4;
  reg  _T_123; // @[NV_NVDLA_CACC_CALC_int8.scala 109:34:@773.4]
  reg [31:0] _RAND_5;
  wire  _T_124; // @[NV_NVDLA_CACC_CALC_int8.scala 110:45:@776.4]
  reg  _T_127; // @[NV_NVDLA_CACC_CALC_int8.scala 110:32:@777.4]
  reg [31:0] _RAND_6;
  reg [31:0] _T_129; // @[Reg.scala 11:16:@780.4]
  reg [31:0] _RAND_7;
  assign _T_37 = $signed(io_in_data); // @[NV_NVDLA_CACC_CALC_int8.scala 62:33:@695.6]
  assign _T_39 = io_in_op_valid ? io_in_op : 34'h0; // @[NV_NVDLA_CACC_CALC_int8.scala 62:46:@696.6]
  assign _T_40 = $signed(_T_39); // @[NV_NVDLA_CACC_CALC_int8.scala 62:89:@697.6]
  assign _GEN_5 = {{12{_T_37[21]}},_T_37}; // @[NV_NVDLA_CACC_CALC_int8.scala 62:40:@698.6]
  assign _T_41 = $signed(_GEN_5) + $signed(_T_40); // @[NV_NVDLA_CACC_CALC_int8.scala 62:40:@698.6]
  assign _T_42 = $unsigned(_T_41); // @[NV_NVDLA_CACC_CALC_int8.scala 62:97:@699.6]
  assign _GEN_0 = io_in_valid ? io_in_sel : _T_34; // @[NV_NVDLA_CACC_CALC_int8.scala 60:22:@693.4]
  assign _T_43 = _T_36[34]; // @[NV_NVDLA_CACC_CALC_int8.scala 68:30:@702.4]
  assign _T_44 = _T_36[33]; // @[NV_NVDLA_CACC_CALC_int8.scala 69:29:@703.4]
  assign _T_48 = _T_43 ^ _T_44; // @[NV_NVDLA_CACC_CALC_int8.scala 73:20:@706.4]
  assign _T_49 = ~ _T_43; // @[NV_NVDLA_CACC_CALC_int8.scala 74:32:@708.6]
  assign _T_53 = _T_49 ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12:@710.6]
  assign _T_54 = _T_36[32:0]; // @[NV_NVDLA_CACC_CALC_int8.scala 77:31:@714.6]
  assign _GEN_2 = _T_48 ? _T_53 : _T_54; // @[NV_NVDLA_CACC_CALC_int8.scala 73:31:@707.4]
  assign _T_55 = {_T_43,_GEN_2}; // @[Cat.scala 30:58:@717.4]
  assign _T_64 = _T_34 ? _T_55 : 34'h0; // @[NV_NVDLA_CACC_CALC_int8.scala 87:27:@721.4]
  assign _T_66 = {_T_64,16'h0}; // @[Cat.scala 30:58:@722.4]
  assign _T_67 = $signed(_T_66); // @[NV_NVDLA_CACC_CALC_int8.scala 88:66:@723.4]
  assign _T_68 = $signed(_T_67) >>> io_cfg_truncate; // @[NV_NVDLA_CACC_CALC_int8.scala 88:73:@724.4]
  assign _T_69 = $unsigned(_T_68); // @[Cat.scala 30:58:@725.4]
  assign _T_70 = _T_69[49:16]; // @[NV_NVDLA_CACC_CALC_int8.scala 89:42:@726.4]
  assign _T_72 = _T_69[15]; // @[NV_NVDLA_CACC_CALC_int8.scala 90:41:@728.4]
  assign _T_74 = _T_69[14:0]; // @[NV_NVDLA_CACC_CALC_int8.scala 91:41:@730.4]
  assign _T_75 = _T_70[32:31]; // @[NV_NVDLA_CACC_CALC_int8.scala 93:51:@731.4]
  assign _T_76 = ~ _T_75; // @[NV_NVDLA_CACC_CALC_int8.scala 93:60:@732.4]
  assign _T_78 = _T_76 == 2'h0; // @[NV_NVDLA_CACC_CALC_int8.scala 93:60:@733.4]
  assign _T_79 = ~ _T_78; // @[NV_NVDLA_CACC_CALC_int8.scala 93:41:@734.4]
  assign _T_80 = _T_43 & _T_79; // @[NV_NVDLA_CACC_CALC_int8.scala 93:38:@735.4]
  assign _T_84 = _T_75 != 2'h0; // @[NV_NVDLA_CACC_CALC_int8.scala 94:59:@738.4]
  assign _T_85 = _T_49 & _T_84; // @[NV_NVDLA_CACC_CALC_int8.scala 94:39:@739.4]
  assign _T_86 = _T_80 | _T_85; // @[NV_NVDLA_CACC_CALC_int8.scala 93:67:@740.4]
  assign _T_88 = _T_70[30:0]; // @[NV_NVDLA_CACC_CALC_int8.scala 95:53:@742.4]
  assign _T_103 = _T_34 & _T_72; // @[NV_NVDLA_CACC_CALC_int8.scala 98:27:@752.4]
  assign _T_106 = _T_74 != 15'h0; // @[NV_NVDLA_CACC_CALC_int8.scala 98:61:@754.4]
  assign _T_107 = _T_49 | _T_106; // @[NV_NVDLA_CACC_CALC_int8.scala 98:51:@755.4]
  assign _T_108 = _T_103 & _T_107; // @[NV_NVDLA_CACC_CALC_int8.scala 98:37:@756.4]
  assign _T_89 = {_T_88,_T_108}; // @[Cat.scala 30:58:@743.4]
  assign _T_90 = ~ _T_89; // @[NV_NVDLA_CACC_CALC_int8.scala 95:71:@744.4]
  assign _T_92 = _T_90 == 32'h0; // @[NV_NVDLA_CACC_CALC_int8.scala 95:71:@745.4]
  assign _T_93 = _T_49 & _T_92; // @[NV_NVDLA_CACC_CALC_int8.scala 95:39:@746.4]
  assign _T_94 = _T_86 | _T_93; // @[NV_NVDLA_CACC_CALC_int8.scala 94:65:@747.4]
  assign _T_102 = _T_43 ? 32'h80000000 : 32'h7fffffff; // @[NV_NVDLA_CACC_CALC_int8.scala 96:24:@751.4]
  assign _T_109 = _T_70[31:0]; // @[NV_NVDLA_CACC_CALC_int8.scala 99:28:@758.4]
  assign _GEN_6 = {{31'd0}, _T_108}; // @[NV_NVDLA_CACC_CALC_int8.scala 99:36:@759.4]
  assign _T_110 = _T_109 + _GEN_6; // @[NV_NVDLA_CACC_CALC_int8.scala 99:36:@759.4]
  assign _T_111 = _T_109 + _GEN_6; // @[NV_NVDLA_CACC_CALC_int8.scala 99:36:@760.4]
  assign _T_112 = _T_94 ? _T_102 : _T_111; // @[NV_NVDLA_CACC_CALC_int8.scala 102:29:@761.4]
  assign _T_113 = ~ _T_34; // @[NV_NVDLA_CACC_CALC_int8.scala 104:37:@762.4]
  assign _T_114 = _T_31 & _T_113; // @[NV_NVDLA_CACC_CALC_int8.scala 104:35:@763.4]
  assign _T_115 = _T_31 & _T_34; // @[NV_NVDLA_CACC_CALC_int8.scala 105:32:@764.4]
  assign _T_124 = _T_115 & _T_94; // @[NV_NVDLA_CACC_CALC_int8.scala 110:45:@776.4]
  assign io_out_final_data = _T_129; // @[NV_NVDLA_CACC_CALC_int8.scala 111:23:@784.4]
  assign io_out_final_sat = _T_127; // @[NV_NVDLA_CACC_CALC_int8.scala 110:22:@779.4]
  assign io_out_final_valid = _T_123; // @[NV_NVDLA_CACC_CALC_int8.scala 109:24:@775.4]
  assign io_out_partial_data = _T_120; // @[NV_NVDLA_CACC_CALC_int8.scala 108:25:@772.4]
  assign io_out_partial_valid = _T_118; // @[NV_NVDLA_CACC_CALC_int8.scala 107:26:@767.4]
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
  _T_31 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_34 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_36 = _RAND_2[34:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_118 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_120 = _RAND_4[33:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_123 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_127 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_129 = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_31 <= 1'h0;
    end else begin
      _T_31 <= io_in_valid;
    end
    if (reset) begin
      _T_34 <= 1'h0;
    end else begin
      if (io_in_valid) begin
        _T_34 <= io_in_sel;
      end
    end
    if (io_in_valid) begin
      _T_36 <= _T_42;
    end
    if (reset) begin
      _T_118 <= 1'h0;
    end else begin
      _T_118 <= _T_114;
    end
    if (_T_114) begin
      _T_120 <= _T_55;
    end
    if (reset) begin
      _T_123 <= 1'h0;
    end else begin
      _T_123 <= _T_115;
    end
    if (reset) begin
      _T_127 <= 1'h0;
    end else begin
      _T_127 <= _T_124;
    end
    if (_T_115) begin
      if (_T_94) begin
        if (_T_43) begin
          _T_129 <= 32'h80000000;
        end else begin
          _T_129 <= 32'h7fffffff;
        end
      end else begin
        _T_129 <= _T_111;
      end
    end
  end
endmodule
module NV_NVDLA_CACC_calculator( // @[:@3948.2]
  input           reset, // @[:@3950.4]
  input           io_nvdla_core_clk, // @[:@3951.4]
  input           io_nvdla_cell_clk, // @[:@3951.4]
  input  [1087:0] io_abuf_rd_data, // @[:@3951.4]
  output          io_abuf_wr_addr_valid, // @[:@3951.4]
  output [5:0]    io_abuf_wr_addr_bits, // @[:@3951.4]
  output [1087:0] io_abuf_wr_data, // @[:@3951.4]
  output          io_dlv_valid, // @[:@3951.4]
  output [1023:0] io_dlv_data, // @[:@3951.4]
  output [1:0]    io_dlv_pd, // @[:@3951.4]
  input           io_accu_ctrl_pd_valid, // @[:@3951.4]
  input  [12:0]   io_accu_ctrl_pd_bits, // @[:@3951.4]
  input           io_accu_ctrl_ram_valid, // @[:@3951.4]
  input  [4:0]    io_cfg_truncate, // @[:@3951.4]
  input  [21:0]   io_mac_a2accu_data_0, // @[:@3951.4]
  input  [21:0]   io_mac_a2accu_data_1, // @[:@3951.4]
  input  [21:0]   io_mac_a2accu_data_2, // @[:@3951.4]
  input  [21:0]   io_mac_a2accu_data_3, // @[:@3951.4]
  input  [21:0]   io_mac_a2accu_data_4, // @[:@3951.4]
  input  [21:0]   io_mac_a2accu_data_5, // @[:@3951.4]
  input  [21:0]   io_mac_a2accu_data_6, // @[:@3951.4]
  input  [21:0]   io_mac_a2accu_data_7, // @[:@3951.4]
  input  [21:0]   io_mac_a2accu_data_8, // @[:@3951.4]
  input  [21:0]   io_mac_a2accu_data_9, // @[:@3951.4]
  input  [21:0]   io_mac_a2accu_data_10, // @[:@3951.4]
  input  [21:0]   io_mac_a2accu_data_11, // @[:@3951.4]
  input  [21:0]   io_mac_a2accu_data_12, // @[:@3951.4]
  input  [21:0]   io_mac_a2accu_data_13, // @[:@3951.4]
  input  [21:0]   io_mac_a2accu_data_14, // @[:@3951.4]
  input  [21:0]   io_mac_a2accu_data_15, // @[:@3951.4]
  input           io_mac_a2accu_mask_0, // @[:@3951.4]
  input           io_mac_a2accu_mask_1, // @[:@3951.4]
  input           io_mac_a2accu_mask_2, // @[:@3951.4]
  input           io_mac_a2accu_mask_3, // @[:@3951.4]
  input           io_mac_a2accu_mask_4, // @[:@3951.4]
  input           io_mac_a2accu_mask_5, // @[:@3951.4]
  input           io_mac_a2accu_mask_6, // @[:@3951.4]
  input           io_mac_a2accu_mask_7, // @[:@3951.4]
  input           io_mac_a2accu_mask_8, // @[:@3951.4]
  input           io_mac_a2accu_mask_9, // @[:@3951.4]
  input           io_mac_a2accu_mask_10, // @[:@3951.4]
  input           io_mac_a2accu_mask_11, // @[:@3951.4]
  input           io_mac_a2accu_mask_12, // @[:@3951.4]
  input           io_mac_a2accu_mask_13, // @[:@3951.4]
  input           io_mac_a2accu_mask_14, // @[:@3951.4]
  input           io_mac_a2accu_mask_15, // @[:@3951.4]
  input           io_mac_a2accu_pvld, // @[:@3951.4]
  input  [21:0]   io_mac_b2accu_data_0, // @[:@3951.4]
  input  [21:0]   io_mac_b2accu_data_1, // @[:@3951.4]
  input  [21:0]   io_mac_b2accu_data_2, // @[:@3951.4]
  input  [21:0]   io_mac_b2accu_data_3, // @[:@3951.4]
  input  [21:0]   io_mac_b2accu_data_4, // @[:@3951.4]
  input  [21:0]   io_mac_b2accu_data_5, // @[:@3951.4]
  input  [21:0]   io_mac_b2accu_data_6, // @[:@3951.4]
  input  [21:0]   io_mac_b2accu_data_7, // @[:@3951.4]
  input  [21:0]   io_mac_b2accu_data_8, // @[:@3951.4]
  input  [21:0]   io_mac_b2accu_data_9, // @[:@3951.4]
  input  [21:0]   io_mac_b2accu_data_10, // @[:@3951.4]
  input  [21:0]   io_mac_b2accu_data_11, // @[:@3951.4]
  input  [21:0]   io_mac_b2accu_data_12, // @[:@3951.4]
  input  [21:0]   io_mac_b2accu_data_13, // @[:@3951.4]
  input  [21:0]   io_mac_b2accu_data_14, // @[:@3951.4]
  input  [21:0]   io_mac_b2accu_data_15, // @[:@3951.4]
  input           io_mac_b2accu_mask_0, // @[:@3951.4]
  input           io_mac_b2accu_mask_1, // @[:@3951.4]
  input           io_mac_b2accu_mask_2, // @[:@3951.4]
  input           io_mac_b2accu_mask_3, // @[:@3951.4]
  input           io_mac_b2accu_mask_4, // @[:@3951.4]
  input           io_mac_b2accu_mask_5, // @[:@3951.4]
  input           io_mac_b2accu_mask_6, // @[:@3951.4]
  input           io_mac_b2accu_mask_7, // @[:@3951.4]
  input           io_mac_b2accu_mask_8, // @[:@3951.4]
  input           io_mac_b2accu_mask_9, // @[:@3951.4]
  input           io_mac_b2accu_mask_10, // @[:@3951.4]
  input           io_mac_b2accu_mask_11, // @[:@3951.4]
  input           io_mac_b2accu_mask_12, // @[:@3951.4]
  input           io_mac_b2accu_mask_13, // @[:@3951.4]
  input           io_mac_b2accu_mask_14, // @[:@3951.4]
  input           io_mac_b2accu_mask_15, // @[:@3951.4]
  input           io_mac_b2accu_pvld, // @[:@3951.4]
  output [31:0]   io_dp2reg_sat_count // @[:@3951.4]
);
  wire  NV_NVDLA_CACC_CALC_int8_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4213.4]
  wire  NV_NVDLA_CACC_CALC_int8_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4213.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4213.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4213.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4213.4]
  wire  NV_NVDLA_CACC_CALC_int8_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4213.4]
  wire  NV_NVDLA_CACC_CALC_int8_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4213.4]
  wire  NV_NVDLA_CACC_CALC_int8_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4213.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4213.4]
  wire  NV_NVDLA_CACC_CALC_int8_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4213.4]
  wire  NV_NVDLA_CACC_CALC_int8_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4213.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4213.4]
  wire  NV_NVDLA_CACC_CALC_int8_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4213.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4216.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4216.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_1_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4216.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_1_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4216.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_1_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4216.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4216.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4216.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4216.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_1_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4216.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4216.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4216.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_1_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4216.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4216.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4219.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4219.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_2_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4219.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_2_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4219.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_2_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4219.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4219.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4219.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4219.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_2_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4219.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4219.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4219.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_2_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4219.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4219.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4222.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4222.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_3_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4222.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_3_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4222.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_3_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4222.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4222.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4222.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4222.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_3_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4222.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4222.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4222.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_3_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4222.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4222.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4225.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4225.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_4_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4225.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_4_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4225.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_4_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4225.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4225.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4225.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4225.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_4_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4225.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4225.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4225.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_4_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4225.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4225.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4228.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4228.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_5_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4228.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_5_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4228.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_5_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4228.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4228.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4228.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4228.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_5_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4228.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4228.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4228.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_5_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4228.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4228.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4231.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4231.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_6_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4231.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_6_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4231.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_6_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4231.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4231.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4231.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4231.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_6_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4231.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4231.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4231.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_6_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4231.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4231.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4234.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4234.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_7_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4234.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_7_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4234.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_7_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4234.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4234.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4234.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4234.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_7_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4234.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4234.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4234.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_7_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4234.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4234.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4237.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4237.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_8_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4237.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_8_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4237.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_8_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4237.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4237.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4237.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4237.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_8_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4237.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4237.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4237.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_8_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4237.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4237.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4240.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4240.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_9_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4240.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_9_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4240.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_9_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4240.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4240.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4240.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4240.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_9_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4240.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4240.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4240.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_9_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4240.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4240.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4243.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4243.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_10_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4243.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_10_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4243.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_10_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4243.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4243.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4243.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4243.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_10_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4243.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4243.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4243.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_10_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4243.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4243.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4246.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4246.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_11_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4246.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_11_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4246.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_11_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4246.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4246.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4246.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4246.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_11_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4246.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4246.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4246.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_11_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4246.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4246.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4249.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4249.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_12_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4249.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_12_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4249.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_12_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4249.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4249.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4249.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4249.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_12_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4249.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4249.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4249.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_12_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4249.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4249.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4252.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4252.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_13_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4252.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_13_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4252.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_13_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4252.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4252.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4252.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4252.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_13_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4252.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4252.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4252.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_13_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4252.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4252.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4255.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4255.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_14_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4255.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_14_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4255.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_14_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4255.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4255.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4255.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4255.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_14_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4255.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4255.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4255.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_14_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4255.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4255.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4258.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4258.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_15_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4258.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_15_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4258.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_15_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4258.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4258.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4258.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4258.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_15_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4258.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4258.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4258.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_15_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4258.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4258.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4261.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4261.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_16_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4261.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_16_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4261.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_16_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4261.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4261.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4261.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4261.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_16_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4261.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4261.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4261.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_16_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4261.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4261.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4264.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4264.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_17_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4264.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_17_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4264.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_17_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4264.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4264.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4264.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4264.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_17_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4264.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4264.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4264.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_17_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4264.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4264.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4267.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4267.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_18_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4267.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_18_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4267.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_18_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4267.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4267.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4267.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4267.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_18_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4267.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4267.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4267.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_18_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4267.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4267.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4270.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4270.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_19_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4270.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_19_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4270.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_19_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4270.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4270.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4270.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4270.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_19_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4270.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4270.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4270.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_19_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4270.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4270.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4273.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4273.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_20_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4273.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_20_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4273.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_20_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4273.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4273.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4273.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4273.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_20_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4273.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4273.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4273.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_20_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4273.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4273.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4276.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4276.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_21_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4276.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_21_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4276.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_21_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4276.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4276.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4276.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4276.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_21_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4276.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4276.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4276.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_21_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4276.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4276.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4279.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4279.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_22_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4279.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_22_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4279.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_22_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4279.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4279.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4279.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4279.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_22_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4279.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4279.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4279.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_22_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4279.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4279.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4282.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4282.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_23_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4282.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_23_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4282.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_23_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4282.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4282.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4282.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4282.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_23_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4282.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4282.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4282.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_23_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4282.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4282.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4285.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4285.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_24_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4285.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_24_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4285.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_24_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4285.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4285.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4285.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4285.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_24_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4285.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4285.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4285.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_24_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4285.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4285.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4288.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4288.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_25_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4288.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_25_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4288.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_25_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4288.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4288.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4288.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4288.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_25_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4288.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4288.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4288.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_25_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4288.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4288.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4291.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4291.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_26_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4291.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_26_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4291.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_26_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4291.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4291.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4291.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4291.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_26_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4291.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4291.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4291.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_26_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4291.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4291.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4294.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4294.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_27_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4294.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_27_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4294.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_27_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4294.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4294.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4294.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4294.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_27_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4294.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4294.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4294.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_27_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4294.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4294.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4297.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4297.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_28_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4297.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_28_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4297.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_28_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4297.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4297.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4297.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4297.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_28_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4297.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4297.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4297.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_28_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4297.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4297.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4300.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4300.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_29_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4300.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_29_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4300.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_29_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4300.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4300.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4300.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4300.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_29_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4300.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4300.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4300.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_29_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4300.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4300.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4303.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4303.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_30_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4303.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_30_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4303.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_30_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4303.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4303.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4303.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4303.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_30_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4303.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4303.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4303.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_30_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4303.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4303.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_reset; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4306.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_io_nvdla_core_clk; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4306.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_31_io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4306.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_31_io_in_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4306.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_31_io_in_op; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4306.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_io_in_op_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4306.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_io_in_sel; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4306.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_io_in_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4306.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_31_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4306.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4306.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4306.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_31_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4306.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 110:57:@4306.4]
  reg [12:0] _T_283; // @[Reg.scala 19:20:@4018.4]
  reg [31:0] _RAND_0;
  wire [12:0] _GEN_0; // @[Reg.scala 20:19:@4019.4]
  reg  _T_287; // @[Reg.scala 11:16:@4023.4]
  reg [31:0] _RAND_1;
  reg  _T_289; // @[Reg.scala 11:16:@4027.4]
  reg [31:0] _RAND_2;
  reg  _T_291; // @[Reg.scala 11:16:@4031.4]
  reg [31:0] _RAND_3;
  wire [5:0] _T_292; // @[NV_NVDLA_CACC_calculator.scala 78:36:@4035.4]
  wire  _T_294; // @[NV_NVDLA_CACC_calculator.scala 80:42:@4037.4]
  wire  _T_295; // @[NV_NVDLA_CACC_calculator.scala 81:43:@4038.4]
  wire  _T_296; // @[NV_NVDLA_CACC_calculator.scala 82:41:@4039.4]
  wire  _T_482; // @[NV_NVDLA_CACC_calculator.scala 96:37:@4205.4]
  wire  _T_483; // @[NV_NVDLA_CACC_calculator.scala 97:36:@4206.4]
  wire  _T_484; // @[NV_NVDLA_CACC_calculator.scala 97:33:@4207.4]
  reg  _T_679; // @[NV_NVDLA_CACC_calculator.scala 130:72:@4694.4]
  reg [31:0] _RAND_4;
  reg  _T_687; // @[NV_NVDLA_CACC_calculator.scala 132:72:@4697.4]
  reg [31:0] _RAND_5;
  reg  _T_690; // @[NV_NVDLA_CACC_calculator.scala 132:72:@4698.4]
  reg [31:0] _RAND_6;
  reg [5:0] _T_695; // @[NV_NVDLA_CACC_calculator.scala 134:71:@4700.4]
  reg [31:0] _RAND_7;
  reg [5:0] _T_698; // @[NV_NVDLA_CACC_calculator.scala 134:71:@4701.4]
  reg [31:0] _RAND_8;
  wire [5:0] _GEN_4; // @[NV_NVDLA_CACC_calculator.scala 143:30:@4707.4]
  wire [5:0] _GEN_5; // @[NV_NVDLA_CACC_calculator.scala 143:30:@4712.4]
  reg  _T_703; // @[NV_NVDLA_CACC_calculator.scala 153:74:@4716.4]
  reg [31:0] _RAND_9;
  reg  _T_706; // @[NV_NVDLA_CACC_calculator.scala 153:74:@4717.4]
  reg [31:0] _RAND_10;
  reg  _T_711; // @[NV_NVDLA_CACC_calculator.scala 155:75:@4719.4]
  reg [31:0] _RAND_11;
  reg  _T_714; // @[NV_NVDLA_CACC_calculator.scala 155:75:@4720.4]
  reg [31:0] _RAND_12;
  reg  _T_719; // @[NV_NVDLA_CACC_calculator.scala 157:74:@4722.4]
  reg [31:0] _RAND_13;
  reg  _T_722; // @[NV_NVDLA_CACC_calculator.scala 157:74:@4723.4]
  reg [31:0] _RAND_14;
  wire  _GEN_6; // @[NV_NVDLA_CACC_calculator.scala 165:34:@4728.4]
  wire  _GEN_7; // @[NV_NVDLA_CACC_calculator.scala 165:34:@4728.4]
  wire  _GEN_8; // @[NV_NVDLA_CACC_calculator.scala 165:34:@4733.4]
  wire  _GEN_9; // @[NV_NVDLA_CACC_calculator.scala 165:34:@4733.4]
  wire  _T_526_0; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4320.4]
  wire [33:0] _T_764; // @[Bitwise.scala 72:12:@4739.4]
  wire [33:0] _T_602_0; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4319.4]
  wire [33:0] _T_765; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4740.4]
  wire  _T_526_1; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4332.4]
  wire [33:0] _T_769; // @[Bitwise.scala 72:12:@4743.4]
  wire [33:0] _T_602_1; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4331.4]
  wire [33:0] _T_770; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4744.4]
  wire  _T_526_2; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4344.4]
  wire [33:0] _T_774; // @[Bitwise.scala 72:12:@4747.4]
  wire [33:0] _T_602_2; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4343.4]
  wire [33:0] _T_775; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4748.4]
  wire  _T_526_3; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4356.4]
  wire [33:0] _T_779; // @[Bitwise.scala 72:12:@4751.4]
  wire [33:0] _T_602_3; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4355.4]
  wire [33:0] _T_780; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4752.4]
  wire  _T_526_4; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4368.4]
  wire [33:0] _T_784; // @[Bitwise.scala 72:12:@4755.4]
  wire [33:0] _T_602_4; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4367.4]
  wire [33:0] _T_785; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4756.4]
  wire  _T_526_5; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4380.4]
  wire [33:0] _T_789; // @[Bitwise.scala 72:12:@4759.4]
  wire [33:0] _T_602_5; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4379.4]
  wire [33:0] _T_790; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4760.4]
  wire  _T_526_6; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4392.4]
  wire [33:0] _T_794; // @[Bitwise.scala 72:12:@4763.4]
  wire [33:0] _T_602_6; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4391.4]
  wire [33:0] _T_795; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4764.4]
  wire  _T_526_7; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4404.4]
  wire [33:0] _T_799; // @[Bitwise.scala 72:12:@4767.4]
  wire [33:0] _T_602_7; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4403.4]
  wire [33:0] _T_800; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4768.4]
  wire  _T_526_8; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4416.4]
  wire [33:0] _T_804; // @[Bitwise.scala 72:12:@4771.4]
  wire [33:0] _T_602_8; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4415.4]
  wire [33:0] _T_805; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4772.4]
  wire  _T_526_9; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4428.4]
  wire [33:0] _T_809; // @[Bitwise.scala 72:12:@4775.4]
  wire [33:0] _T_602_9; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4427.4]
  wire [33:0] _T_810; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4776.4]
  wire  _T_526_10; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4440.4]
  wire [33:0] _T_814; // @[Bitwise.scala 72:12:@4779.4]
  wire [33:0] _T_602_10; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4439.4]
  wire [33:0] _T_815; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4780.4]
  wire  _T_526_11; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4452.4]
  wire [33:0] _T_819; // @[Bitwise.scala 72:12:@4783.4]
  wire [33:0] _T_602_11; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4451.4]
  wire [33:0] _T_820; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4784.4]
  wire  _T_526_12; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4464.4]
  wire [33:0] _T_824; // @[Bitwise.scala 72:12:@4787.4]
  wire [33:0] _T_602_12; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4463.4]
  wire [33:0] _T_825; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4788.4]
  wire  _T_526_13; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4476.4]
  wire [33:0] _T_829; // @[Bitwise.scala 72:12:@4791.4]
  wire [33:0] _T_602_13; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4475.4]
  wire [33:0] _T_830; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4792.4]
  wire  _T_526_14; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4488.4]
  wire [33:0] _T_834; // @[Bitwise.scala 72:12:@4795.4]
  wire [33:0] _T_602_14; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4487.4]
  wire [33:0] _T_835; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4796.4]
  wire  _T_526_15; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4500.4]
  wire [33:0] _T_839; // @[Bitwise.scala 72:12:@4799.4]
  wire [33:0] _T_602_15; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4499.4]
  wire [33:0] _T_840; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4800.4]
  wire  _T_526_16; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4512.4]
  wire [33:0] _T_844; // @[Bitwise.scala 72:12:@4803.4]
  wire [33:0] _T_602_16; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4511.4]
  wire [33:0] _T_845; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4804.4]
  wire  _T_526_17; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4524.4]
  wire [33:0] _T_849; // @[Bitwise.scala 72:12:@4807.4]
  wire [33:0] _T_602_17; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4523.4]
  wire [33:0] _T_850; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4808.4]
  wire  _T_526_18; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4536.4]
  wire [33:0] _T_854; // @[Bitwise.scala 72:12:@4811.4]
  wire [33:0] _T_602_18; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4535.4]
  wire [33:0] _T_855; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4812.4]
  wire  _T_526_19; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4548.4]
  wire [33:0] _T_859; // @[Bitwise.scala 72:12:@4815.4]
  wire [33:0] _T_602_19; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4547.4]
  wire [33:0] _T_860; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4816.4]
  wire  _T_526_20; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4560.4]
  wire [33:0] _T_864; // @[Bitwise.scala 72:12:@4819.4]
  wire [33:0] _T_602_20; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4559.4]
  wire [33:0] _T_865; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4820.4]
  wire  _T_526_21; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4572.4]
  wire [33:0] _T_869; // @[Bitwise.scala 72:12:@4823.4]
  wire [33:0] _T_602_21; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4571.4]
  wire [33:0] _T_870; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4824.4]
  wire  _T_526_22; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4584.4]
  wire [33:0] _T_874; // @[Bitwise.scala 72:12:@4827.4]
  wire [33:0] _T_602_22; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4583.4]
  wire [33:0] _T_875; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4828.4]
  wire  _T_526_23; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4596.4]
  wire [33:0] _T_879; // @[Bitwise.scala 72:12:@4831.4]
  wire [33:0] _T_602_23; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4595.4]
  wire [33:0] _T_880; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4832.4]
  wire  _T_526_24; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4608.4]
  wire [33:0] _T_884; // @[Bitwise.scala 72:12:@4835.4]
  wire [33:0] _T_602_24; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4607.4]
  wire [33:0] _T_885; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4836.4]
  wire  _T_526_25; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4620.4]
  wire [33:0] _T_889; // @[Bitwise.scala 72:12:@4839.4]
  wire [33:0] _T_602_25; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4619.4]
  wire [33:0] _T_890; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4840.4]
  wire  _T_526_26; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4632.4]
  wire [33:0] _T_894; // @[Bitwise.scala 72:12:@4843.4]
  wire [33:0] _T_602_26; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4631.4]
  wire [33:0] _T_895; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4844.4]
  wire  _T_526_27; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4644.4]
  wire [33:0] _T_899; // @[Bitwise.scala 72:12:@4847.4]
  wire [33:0] _T_602_27; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4643.4]
  wire [33:0] _T_900; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4848.4]
  wire  _T_526_28; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4656.4]
  wire [33:0] _T_904; // @[Bitwise.scala 72:12:@4851.4]
  wire [33:0] _T_602_28; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4655.4]
  wire [33:0] _T_905; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4852.4]
  wire  _T_526_29; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4668.4]
  wire [33:0] _T_909; // @[Bitwise.scala 72:12:@4855.4]
  wire [33:0] _T_602_29; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4667.4]
  wire [33:0] _T_910; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4856.4]
  wire  _T_526_30; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4680.4]
  wire [33:0] _T_914; // @[Bitwise.scala 72:12:@4859.4]
  wire [33:0] _T_602_30; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4679.4]
  wire [33:0] _T_915; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4860.4]
  wire  _T_526_31; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4692.4]
  wire [33:0] _T_919; // @[Bitwise.scala 72:12:@4863.4]
  wire [33:0] _T_602_31; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4691.4]
  wire [33:0] _T_920; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4864.4]
  wire  _T_564_0; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4318.4]
  wire [31:0] _T_962; // @[Bitwise.scala 72:12:@4868.4]
  wire [31:0] _T_640_0; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4316.4]
  wire [31:0] _T_963; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4869.4]
  wire  _T_564_1; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4330.4]
  wire [31:0] _T_967; // @[Bitwise.scala 72:12:@4872.4]
  wire [31:0] _T_640_1; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4328.4]
  wire [31:0] _T_968; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4873.4]
  wire  _T_564_2; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4342.4]
  wire [31:0] _T_972; // @[Bitwise.scala 72:12:@4876.4]
  wire [31:0] _T_640_2; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4340.4]
  wire [31:0] _T_973; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4877.4]
  wire  _T_564_3; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4354.4]
  wire [31:0] _T_977; // @[Bitwise.scala 72:12:@4880.4]
  wire [31:0] _T_640_3; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4352.4]
  wire [31:0] _T_978; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4881.4]
  wire  _T_564_4; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4366.4]
  wire [31:0] _T_982; // @[Bitwise.scala 72:12:@4884.4]
  wire [31:0] _T_640_4; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4364.4]
  wire [31:0] _T_983; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4885.4]
  wire  _T_564_5; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4378.4]
  wire [31:0] _T_987; // @[Bitwise.scala 72:12:@4888.4]
  wire [31:0] _T_640_5; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4376.4]
  wire [31:0] _T_988; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4889.4]
  wire  _T_564_6; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4390.4]
  wire [31:0] _T_992; // @[Bitwise.scala 72:12:@4892.4]
  wire [31:0] _T_640_6; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4388.4]
  wire [31:0] _T_993; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4893.4]
  wire  _T_564_7; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4402.4]
  wire [31:0] _T_997; // @[Bitwise.scala 72:12:@4896.4]
  wire [31:0] _T_640_7; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4400.4]
  wire [31:0] _T_998; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4897.4]
  wire  _T_564_8; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4414.4]
  wire [31:0] _T_1002; // @[Bitwise.scala 72:12:@4900.4]
  wire [31:0] _T_640_8; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4412.4]
  wire [31:0] _T_1003; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4901.4]
  wire  _T_564_9; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4426.4]
  wire [31:0] _T_1007; // @[Bitwise.scala 72:12:@4904.4]
  wire [31:0] _T_640_9; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4424.4]
  wire [31:0] _T_1008; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4905.4]
  wire  _T_564_10; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4438.4]
  wire [31:0] _T_1012; // @[Bitwise.scala 72:12:@4908.4]
  wire [31:0] _T_640_10; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4436.4]
  wire [31:0] _T_1013; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4909.4]
  wire  _T_564_11; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4450.4]
  wire [31:0] _T_1017; // @[Bitwise.scala 72:12:@4912.4]
  wire [31:0] _T_640_11; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4448.4]
  wire [31:0] _T_1018; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4913.4]
  wire  _T_564_12; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4462.4]
  wire [31:0] _T_1022; // @[Bitwise.scala 72:12:@4916.4]
  wire [31:0] _T_640_12; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4460.4]
  wire [31:0] _T_1023; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4917.4]
  wire  _T_564_13; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4474.4]
  wire [31:0] _T_1027; // @[Bitwise.scala 72:12:@4920.4]
  wire [31:0] _T_640_13; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4472.4]
  wire [31:0] _T_1028; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4921.4]
  wire  _T_564_14; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4486.4]
  wire [31:0] _T_1032; // @[Bitwise.scala 72:12:@4924.4]
  wire [31:0] _T_640_14; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4484.4]
  wire [31:0] _T_1033; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4925.4]
  wire  _T_564_15; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4498.4]
  wire [31:0] _T_1037; // @[Bitwise.scala 72:12:@4928.4]
  wire [31:0] _T_640_15; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4496.4]
  wire [31:0] _T_1038; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4929.4]
  wire  _T_564_16; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4510.4]
  wire [31:0] _T_1042; // @[Bitwise.scala 72:12:@4932.4]
  wire [31:0] _T_640_16; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4508.4]
  wire [31:0] _T_1043; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4933.4]
  wire  _T_564_17; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4522.4]
  wire [31:0] _T_1047; // @[Bitwise.scala 72:12:@4936.4]
  wire [31:0] _T_640_17; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4520.4]
  wire [31:0] _T_1048; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4937.4]
  wire  _T_564_18; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4534.4]
  wire [31:0] _T_1052; // @[Bitwise.scala 72:12:@4940.4]
  wire [31:0] _T_640_18; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4532.4]
  wire [31:0] _T_1053; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4941.4]
  wire  _T_564_19; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4546.4]
  wire [31:0] _T_1057; // @[Bitwise.scala 72:12:@4944.4]
  wire [31:0] _T_640_19; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4544.4]
  wire [31:0] _T_1058; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4945.4]
  wire  _T_564_20; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4558.4]
  wire [31:0] _T_1062; // @[Bitwise.scala 72:12:@4948.4]
  wire [31:0] _T_640_20; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4556.4]
  wire [31:0] _T_1063; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4949.4]
  wire  _T_564_21; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4570.4]
  wire [31:0] _T_1067; // @[Bitwise.scala 72:12:@4952.4]
  wire [31:0] _T_640_21; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4568.4]
  wire [31:0] _T_1068; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4953.4]
  wire  _T_564_22; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4582.4]
  wire [31:0] _T_1072; // @[Bitwise.scala 72:12:@4956.4]
  wire [31:0] _T_640_22; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4580.4]
  wire [31:0] _T_1073; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4957.4]
  wire  _T_564_23; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4594.4]
  wire [31:0] _T_1077; // @[Bitwise.scala 72:12:@4960.4]
  wire [31:0] _T_640_23; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4592.4]
  wire [31:0] _T_1078; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4961.4]
  wire  _T_564_24; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4606.4]
  wire [31:0] _T_1082; // @[Bitwise.scala 72:12:@4964.4]
  wire [31:0] _T_640_24; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4604.4]
  wire [31:0] _T_1083; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4965.4]
  wire  _T_564_25; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4618.4]
  wire [31:0] _T_1087; // @[Bitwise.scala 72:12:@4968.4]
  wire [31:0] _T_640_25; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4616.4]
  wire [31:0] _T_1088; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4969.4]
  wire  _T_564_26; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4630.4]
  wire [31:0] _T_1092; // @[Bitwise.scala 72:12:@4972.4]
  wire [31:0] _T_640_26; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4628.4]
  wire [31:0] _T_1093; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4973.4]
  wire  _T_564_27; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4642.4]
  wire [31:0] _T_1097; // @[Bitwise.scala 72:12:@4976.4]
  wire [31:0] _T_640_27; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4640.4]
  wire [31:0] _T_1098; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4977.4]
  wire  _T_564_28; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4654.4]
  wire [31:0] _T_1102; // @[Bitwise.scala 72:12:@4980.4]
  wire [31:0] _T_640_28; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4652.4]
  wire [31:0] _T_1103; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4981.4]
  wire  _T_564_29; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4666.4]
  wire [31:0] _T_1107; // @[Bitwise.scala 72:12:@4984.4]
  wire [31:0] _T_640_29; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4664.4]
  wire [31:0] _T_1108; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4985.4]
  wire  _T_564_30; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4678.4]
  wire [31:0] _T_1112; // @[Bitwise.scala 72:12:@4988.4]
  wire [31:0] _T_640_30; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4676.4]
  wire [31:0] _T_1113; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4989.4]
  wire  _T_564_31; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4690.4]
  wire [31:0] _T_1117; // @[Bitwise.scala 72:12:@4992.4]
  wire [31:0] _T_640_31; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4688.4]
  wire [31:0] _T_1118; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4993.4]
  reg  _T_1121; // @[NV_NVDLA_CACC_calculator.scala 187:37:@4995.4]
  reg [31:0] _RAND_15;
  reg [5:0] _T_1124; // @[Reg.scala 19:20:@4998.4]
  reg [31:0] _RAND_16;
  wire [5:0] _GEN_10; // @[Reg.scala 20:19:@4999.4]
  wire [271:0] _T_1131; // @[NV_NVDLA_CACC_calculator.scala 189:44:@5009.4]
  wire [543:0] _T_1139; // @[NV_NVDLA_CACC_calculator.scala 189:44:@5017.4]
  wire [271:0] _T_1146; // @[NV_NVDLA_CACC_calculator.scala 189:44:@5024.4]
  wire [1087:0] _T_1155; // @[NV_NVDLA_CACC_calculator.scala 189:44:@5033.4]
  reg [1087:0] _T_1157; // @[Reg.scala 11:16:@5034.4]
  reg [1087:0] _RAND_17;
  wire [255:0] _T_1164; // @[NV_NVDLA_CACC_calculator.scala 192:40:@5045.4]
  wire [511:0] _T_1172; // @[NV_NVDLA_CACC_calculator.scala 192:40:@5053.4]
  wire [255:0] _T_1179; // @[NV_NVDLA_CACC_calculator.scala 192:40:@5060.4]
  wire [1023:0] _T_1188; // @[NV_NVDLA_CACC_calculator.scala 192:40:@5069.4]
  reg [1023:0] _T_1190; // @[Reg.scala 11:16:@5070.4]
  reg [1023:0] _RAND_18;
  reg  _T_1193; // @[NV_NVDLA_CACC_calculator.scala 193:28:@5075.4]
  reg [31:0] _RAND_19;
  reg  _T_1199; // @[Reg.scala 19:20:@5081.4]
  reg [31:0] _RAND_20;
  wire  _GEN_13; // @[Reg.scala 20:19:@5082.4]
  reg  _T_1202; // @[Reg.scala 19:20:@5085.4]
  reg [31:0] _RAND_21;
  wire  _GEN_14; // @[Reg.scala 20:19:@5086.4]
  reg  _T_1206; // @[NV_NVDLA_CACC_calculator.scala 200:33:@5091.4]
  reg [31:0] _RAND_22;
  reg  _T_1209; // @[NV_NVDLA_CACC_calculator.scala 201:33:@5092.4]
  reg [31:0] _RAND_23;
  reg  _T_1348_0; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_24;
  reg  _T_1348_1; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_25;
  reg  _T_1348_2; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_26;
  reg  _T_1348_3; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_27;
  reg  _T_1348_4; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_28;
  reg  _T_1348_5; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_29;
  reg  _T_1348_6; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_30;
  reg  _T_1348_7; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_31;
  reg  _T_1348_8; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_32;
  reg  _T_1348_9; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_33;
  reg  _T_1348_10; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_34;
  reg  _T_1348_11; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_35;
  reg  _T_1348_12; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_36;
  reg  _T_1348_13; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_37;
  reg  _T_1348_14; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_38;
  reg  _T_1348_15; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_39;
  reg  _T_1348_16; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_40;
  reg  _T_1348_17; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_41;
  reg  _T_1348_18; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_42;
  reg  _T_1348_19; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_43;
  reg  _T_1348_20; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_44;
  reg  _T_1348_21; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_45;
  reg  _T_1348_22; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_46;
  reg  _T_1348_23; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_47;
  reg  _T_1348_24; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_48;
  reg  _T_1348_25; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_49;
  reg  _T_1348_26; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_50;
  reg  _T_1348_27; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_51;
  reg  _T_1348_28; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_52;
  reg  _T_1348_29; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_53;
  reg  _T_1348_30; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_54;
  reg  _T_1348_31; // @[NV_NVDLA_CACC_calculator.scala 202:33:@5126.4]
  reg [31:0] _RAND_55;
  reg  _T_1451; // @[NV_NVDLA_CACC_calculator.scala 203:33:@5127.4]
  reg [31:0] _RAND_56;
  wire  _T_1452; // @[NV_NVDLA_CACC_calculator.scala 206:42:@5128.4]
  wire  _T_1453; // @[NV_NVDLA_CACC_calculator.scala 207:44:@5129.4]
  wire  _T_1454; // @[NV_NVDLA_CACC_calculator.scala 207:42:@5130.4]
  wire  _T_1455; // @[NV_NVDLA_CACC_calculator.scala 207:57:@5131.4]
  wire  _GEN_15; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_0; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4317.4]
  wire  _GEN_16; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_1; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4329.4]
  wire  _GEN_17; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_2; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4341.4]
  wire  _GEN_18; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_3; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4353.4]
  wire  _GEN_19; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_4; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4365.4]
  wire  _GEN_20; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_5; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4377.4]
  wire  _GEN_21; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_6; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4389.4]
  wire  _GEN_22; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_7; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4401.4]
  wire  _GEN_23; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_8; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4413.4]
  wire  _GEN_24; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_9; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4425.4]
  wire  _GEN_25; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_10; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4437.4]
  wire  _GEN_26; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_11; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4449.4]
  wire  _GEN_27; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_12; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4461.4]
  wire  _GEN_28; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_13; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4473.4]
  wire  _GEN_29; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_14; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4485.4]
  wire  _GEN_30; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_15; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4497.4]
  wire  _GEN_31; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_16; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4509.4]
  wire  _GEN_32; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_17; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4521.4]
  wire  _GEN_33; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_18; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4533.4]
  wire  _GEN_34; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_19; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4545.4]
  wire  _GEN_35; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_20; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4557.4]
  wire  _GEN_36; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_21; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4569.4]
  wire  _GEN_37; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_22; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4581.4]
  wire  _GEN_38; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_23; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4593.4]
  wire  _GEN_39; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_24; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4605.4]
  wire  _GEN_40; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_25; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4617.4]
  wire  _GEN_41; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_26; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4629.4]
  wire  _GEN_42; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_27; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4641.4]
  wire  _GEN_43; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_28; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4653.4]
  wire  _GEN_44; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_29; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4665.4]
  wire  _GEN_45; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_30; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4677.4]
  wire  _GEN_46; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire  _T_488_31; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4689.4]
  wire  _GEN_47; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  wire [1:0] _T_1494; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5202.4]
  wire [1:0] _GEN_49; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5203.4]
  wire [2:0] _T_1495; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5203.4]
  wire [2:0] _GEN_50; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5204.4]
  wire [3:0] _T_1496; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5204.4]
  wire [3:0] _GEN_51; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5205.4]
  wire [4:0] _T_1497; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5205.4]
  wire [4:0] _GEN_52; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5206.4]
  wire [5:0] _T_1498; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5206.4]
  wire [5:0] _GEN_53; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5207.4]
  wire [6:0] _T_1499; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5207.4]
  wire [6:0] _GEN_54; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5208.4]
  wire [7:0] _T_1500; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5208.4]
  wire [7:0] _GEN_55; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5209.4]
  wire [8:0] _T_1501; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5209.4]
  wire [8:0] _GEN_56; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5210.4]
  wire [9:0] _T_1502; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5210.4]
  wire [9:0] _GEN_57; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5211.4]
  wire [10:0] _T_1503; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5211.4]
  wire [10:0] _GEN_58; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5212.4]
  wire [11:0] _T_1504; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5212.4]
  wire [11:0] _GEN_59; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5213.4]
  wire [12:0] _T_1505; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5213.4]
  wire [12:0] _GEN_60; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5214.4]
  wire [13:0] _T_1506; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5214.4]
  wire [13:0] _GEN_61; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5215.4]
  wire [14:0] _T_1507; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5215.4]
  wire [14:0] _GEN_62; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5216.4]
  wire [15:0] _T_1508; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5216.4]
  wire [15:0] _GEN_63; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5217.4]
  wire [16:0] _T_1509; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5217.4]
  wire [16:0] _GEN_64; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5218.4]
  wire [17:0] _T_1510; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5218.4]
  wire [17:0] _GEN_65; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5219.4]
  wire [18:0] _T_1511; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5219.4]
  wire [18:0] _GEN_66; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5220.4]
  wire [19:0] _T_1512; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5220.4]
  wire [19:0] _GEN_67; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5221.4]
  wire [20:0] _T_1513; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5221.4]
  wire [20:0] _GEN_68; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5222.4]
  wire [21:0] _T_1514; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5222.4]
  wire [21:0] _GEN_69; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5223.4]
  wire [22:0] _T_1515; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5223.4]
  wire [22:0] _GEN_70; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5224.4]
  wire [23:0] _T_1516; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5224.4]
  wire [23:0] _GEN_71; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5225.4]
  wire [24:0] _T_1517; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5225.4]
  wire [24:0] _GEN_72; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5226.4]
  wire [25:0] _T_1518; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5226.4]
  wire [25:0] _GEN_73; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5227.4]
  wire [26:0] _T_1519; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5227.4]
  wire [26:0] _GEN_74; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5228.4]
  wire [27:0] _T_1520; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5228.4]
  wire [27:0] _GEN_75; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5229.4]
  wire [28:0] _T_1521; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5229.4]
  wire [28:0] _GEN_76; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5230.4]
  wire [29:0] _T_1522; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5230.4]
  wire [29:0] _GEN_77; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5231.4]
  wire [30:0] _T_1523; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5231.4]
  wire [30:0] _GEN_78; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5232.4]
  wire [31:0] _T_1524; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5232.4]
  reg [31:0] _T_1527; // @[NV_NVDLA_CACC_calculator.scala 217:28:@5233.4]
  reg [31:0] _RAND_57;
  wire [32:0] _T_1528; // @[NV_NVDLA_CACC_calculator.scala 218:36:@5234.4]
  wire [31:0] _T_1529; // @[NV_NVDLA_CACC_calculator.scala 218:47:@5235.4]
  wire  _T_1531; // @[NV_NVDLA_CACC_calculator.scala 219:43:@5237.4]
  wire [31:0] _T_1539; // @[NV_NVDLA_CACC_calculator.scala 222:23:@5240.4]
  wire [31:0] _T_1540; // @[NV_NVDLA_CACC_calculator.scala 221:23:@5241.4]
  wire  _T_1542; // @[NV_NVDLA_CACC_calculator.scala 223:49:@5243.4]
  wire  _T_1543; // @[NV_NVDLA_CACC_calculator.scala 223:54:@5244.4]
  wire  _T_1544; // @[NV_NVDLA_CACC_calculator.scala 223:37:@5245.4]
  wire [31:0] _GEN_48; // @[NV_NVDLA_CACC_calculator.scala 224:21:@5246.4]
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4213.4]
    .reset(NV_NVDLA_CACC_CALC_int8_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_1 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4216.4]
    .reset(NV_NVDLA_CACC_CALC_int8_1_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_1_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_1_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_1_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_1_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_1_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_1_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_1_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_1_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_1_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_1_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_1_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_1_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_2 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4219.4]
    .reset(NV_NVDLA_CACC_CALC_int8_2_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_2_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_2_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_2_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_2_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_2_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_2_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_2_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_2_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_2_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_2_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_2_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_2_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_3 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4222.4]
    .reset(NV_NVDLA_CACC_CALC_int8_3_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_3_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_3_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_3_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_3_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_3_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_3_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_3_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_3_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_3_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_3_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_3_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_3_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_4 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4225.4]
    .reset(NV_NVDLA_CACC_CALC_int8_4_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_4_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_4_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_4_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_4_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_4_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_4_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_4_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_4_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_4_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_4_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_4_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_4_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_5 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4228.4]
    .reset(NV_NVDLA_CACC_CALC_int8_5_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_5_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_5_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_5_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_5_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_5_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_5_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_5_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_5_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_5_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_5_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_5_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_5_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_6 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4231.4]
    .reset(NV_NVDLA_CACC_CALC_int8_6_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_6_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_6_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_6_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_6_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_6_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_6_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_6_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_6_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_6_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_6_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_6_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_6_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_7 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4234.4]
    .reset(NV_NVDLA_CACC_CALC_int8_7_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_7_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_7_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_7_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_7_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_7_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_7_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_7_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_7_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_7_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_7_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_7_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_7_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_8 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4237.4]
    .reset(NV_NVDLA_CACC_CALC_int8_8_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_8_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_8_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_8_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_8_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_8_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_8_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_8_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_8_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_8_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_8_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_8_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_8_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_9 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4240.4]
    .reset(NV_NVDLA_CACC_CALC_int8_9_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_9_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_9_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_9_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_9_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_9_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_9_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_9_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_9_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_9_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_9_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_9_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_9_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_10 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4243.4]
    .reset(NV_NVDLA_CACC_CALC_int8_10_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_10_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_10_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_10_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_10_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_10_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_10_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_10_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_10_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_10_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_10_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_10_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_10_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_11 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4246.4]
    .reset(NV_NVDLA_CACC_CALC_int8_11_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_11_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_11_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_11_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_11_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_11_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_11_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_11_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_11_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_11_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_11_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_11_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_11_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_12 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4249.4]
    .reset(NV_NVDLA_CACC_CALC_int8_12_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_12_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_12_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_12_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_12_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_12_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_12_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_12_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_12_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_12_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_12_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_12_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_12_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_13 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4252.4]
    .reset(NV_NVDLA_CACC_CALC_int8_13_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_13_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_13_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_13_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_13_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_13_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_13_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_13_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_13_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_13_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_13_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_13_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_13_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_14 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4255.4]
    .reset(NV_NVDLA_CACC_CALC_int8_14_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_14_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_14_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_14_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_14_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_14_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_14_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_14_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_14_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_14_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_14_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_14_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_14_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_15 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4258.4]
    .reset(NV_NVDLA_CACC_CALC_int8_15_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_15_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_15_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_15_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_15_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_15_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_15_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_15_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_15_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_15_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_15_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_15_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_15_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_16 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4261.4]
    .reset(NV_NVDLA_CACC_CALC_int8_16_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_16_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_16_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_16_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_16_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_16_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_16_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_16_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_16_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_16_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_16_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_16_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_16_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_17 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4264.4]
    .reset(NV_NVDLA_CACC_CALC_int8_17_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_17_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_17_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_17_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_17_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_17_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_17_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_17_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_17_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_17_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_17_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_17_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_17_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_18 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4267.4]
    .reset(NV_NVDLA_CACC_CALC_int8_18_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_18_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_18_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_18_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_18_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_18_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_18_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_18_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_18_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_18_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_18_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_18_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_18_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_19 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4270.4]
    .reset(NV_NVDLA_CACC_CALC_int8_19_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_19_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_19_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_19_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_19_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_19_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_19_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_19_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_19_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_19_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_19_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_19_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_19_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_20 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4273.4]
    .reset(NV_NVDLA_CACC_CALC_int8_20_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_20_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_20_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_20_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_20_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_20_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_20_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_20_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_20_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_20_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_20_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_20_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_20_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_21 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4276.4]
    .reset(NV_NVDLA_CACC_CALC_int8_21_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_21_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_21_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_21_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_21_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_21_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_21_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_21_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_21_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_21_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_21_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_21_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_21_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_22 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4279.4]
    .reset(NV_NVDLA_CACC_CALC_int8_22_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_22_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_22_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_22_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_22_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_22_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_22_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_22_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_22_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_22_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_22_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_22_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_22_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_23 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4282.4]
    .reset(NV_NVDLA_CACC_CALC_int8_23_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_23_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_23_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_23_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_23_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_23_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_23_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_23_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_23_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_23_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_23_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_23_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_23_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_24 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4285.4]
    .reset(NV_NVDLA_CACC_CALC_int8_24_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_24_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_24_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_24_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_24_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_24_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_24_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_24_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_24_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_24_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_24_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_24_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_24_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_25 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4288.4]
    .reset(NV_NVDLA_CACC_CALC_int8_25_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_25_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_25_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_25_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_25_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_25_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_25_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_25_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_25_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_25_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_25_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_25_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_25_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_26 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4291.4]
    .reset(NV_NVDLA_CACC_CALC_int8_26_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_26_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_26_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_26_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_26_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_26_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_26_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_26_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_26_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_26_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_26_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_26_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_26_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_27 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4294.4]
    .reset(NV_NVDLA_CACC_CALC_int8_27_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_27_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_27_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_27_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_27_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_27_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_27_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_27_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_27_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_27_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_27_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_27_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_27_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_28 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4297.4]
    .reset(NV_NVDLA_CACC_CALC_int8_28_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_28_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_28_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_28_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_28_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_28_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_28_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_28_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_28_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_28_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_28_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_28_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_28_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_29 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4300.4]
    .reset(NV_NVDLA_CACC_CALC_int8_29_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_29_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_29_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_29_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_29_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_29_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_29_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_29_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_29_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_29_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_29_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_29_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_29_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_30 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4303.4]
    .reset(NV_NVDLA_CACC_CALC_int8_30_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_30_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_30_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_30_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_30_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_30_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_30_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_30_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_30_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_30_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_30_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_30_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_30_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_31 ( // @[NV_NVDLA_CACC_calculator.scala 110:57:@4306.4]
    .reset(NV_NVDLA_CACC_CALC_int8_31_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_31_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_31_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_31_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_31_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_31_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_31_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_31_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_31_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_31_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_31_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_31_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_31_io_out_partial_valid)
  );
  assign _GEN_0 = io_accu_ctrl_pd_valid ? io_accu_ctrl_pd_bits : _T_283; // @[Reg.scala 20:19:@4019.4]
  assign _T_292 = _T_283[5:0]; // @[NV_NVDLA_CACC_calculator.scala 78:36:@4035.4]
  assign _T_294 = _T_283[9]; // @[NV_NVDLA_CACC_calculator.scala 80:42:@4037.4]
  assign _T_295 = _T_283[10]; // @[NV_NVDLA_CACC_calculator.scala 81:43:@4038.4]
  assign _T_296 = _T_283[11]; // @[NV_NVDLA_CACC_calculator.scala 82:41:@4039.4]
  assign _T_482 = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 96:37:@4205.4]
  assign _T_483 = ~ _T_295; // @[NV_NVDLA_CACC_calculator.scala 97:36:@4206.4]
  assign _T_484 = _T_291 & _T_483; // @[NV_NVDLA_CACC_calculator.scala 97:33:@4207.4]
  assign _GEN_4 = _T_291 ? _T_292 : _T_695; // @[NV_NVDLA_CACC_calculator.scala 143:30:@4707.4]
  assign _GEN_5 = _T_679 ? _T_695 : _T_698; // @[NV_NVDLA_CACC_calculator.scala 143:30:@4712.4]
  assign _GEN_6 = _T_482 ? _T_294 : _T_711; // @[NV_NVDLA_CACC_calculator.scala 165:34:@4728.4]
  assign _GEN_7 = _T_482 ? _T_296 : _T_719; // @[NV_NVDLA_CACC_calculator.scala 165:34:@4728.4]
  assign _GEN_8 = _T_703 ? _T_711 : _T_714; // @[NV_NVDLA_CACC_calculator.scala 165:34:@4733.4]
  assign _GEN_9 = _T_703 ? _T_719 : _T_722; // @[NV_NVDLA_CACC_calculator.scala 165:34:@4733.4]
  assign _T_526_0 = NV_NVDLA_CACC_CALC_int8_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4320.4]
  assign _T_764 = _T_526_0 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4739.4]
  assign _T_602_0 = NV_NVDLA_CACC_CALC_int8_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4319.4]
  assign _T_765 = _T_764 & _T_602_0; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4740.4]
  assign _T_526_1 = NV_NVDLA_CACC_CALC_int8_1_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4332.4]
  assign _T_769 = _T_526_1 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4743.4]
  assign _T_602_1 = NV_NVDLA_CACC_CALC_int8_1_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4331.4]
  assign _T_770 = _T_769 & _T_602_1; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4744.4]
  assign _T_526_2 = NV_NVDLA_CACC_CALC_int8_2_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4344.4]
  assign _T_774 = _T_526_2 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4747.4]
  assign _T_602_2 = NV_NVDLA_CACC_CALC_int8_2_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4343.4]
  assign _T_775 = _T_774 & _T_602_2; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4748.4]
  assign _T_526_3 = NV_NVDLA_CACC_CALC_int8_3_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4356.4]
  assign _T_779 = _T_526_3 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4751.4]
  assign _T_602_3 = NV_NVDLA_CACC_CALC_int8_3_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4355.4]
  assign _T_780 = _T_779 & _T_602_3; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4752.4]
  assign _T_526_4 = NV_NVDLA_CACC_CALC_int8_4_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4368.4]
  assign _T_784 = _T_526_4 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4755.4]
  assign _T_602_4 = NV_NVDLA_CACC_CALC_int8_4_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4367.4]
  assign _T_785 = _T_784 & _T_602_4; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4756.4]
  assign _T_526_5 = NV_NVDLA_CACC_CALC_int8_5_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4380.4]
  assign _T_789 = _T_526_5 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4759.4]
  assign _T_602_5 = NV_NVDLA_CACC_CALC_int8_5_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4379.4]
  assign _T_790 = _T_789 & _T_602_5; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4760.4]
  assign _T_526_6 = NV_NVDLA_CACC_CALC_int8_6_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4392.4]
  assign _T_794 = _T_526_6 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4763.4]
  assign _T_602_6 = NV_NVDLA_CACC_CALC_int8_6_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4391.4]
  assign _T_795 = _T_794 & _T_602_6; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4764.4]
  assign _T_526_7 = NV_NVDLA_CACC_CALC_int8_7_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4404.4]
  assign _T_799 = _T_526_7 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4767.4]
  assign _T_602_7 = NV_NVDLA_CACC_CALC_int8_7_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4403.4]
  assign _T_800 = _T_799 & _T_602_7; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4768.4]
  assign _T_526_8 = NV_NVDLA_CACC_CALC_int8_8_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4416.4]
  assign _T_804 = _T_526_8 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4771.4]
  assign _T_602_8 = NV_NVDLA_CACC_CALC_int8_8_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4415.4]
  assign _T_805 = _T_804 & _T_602_8; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4772.4]
  assign _T_526_9 = NV_NVDLA_CACC_CALC_int8_9_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4428.4]
  assign _T_809 = _T_526_9 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4775.4]
  assign _T_602_9 = NV_NVDLA_CACC_CALC_int8_9_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4427.4]
  assign _T_810 = _T_809 & _T_602_9; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4776.4]
  assign _T_526_10 = NV_NVDLA_CACC_CALC_int8_10_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4440.4]
  assign _T_814 = _T_526_10 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4779.4]
  assign _T_602_10 = NV_NVDLA_CACC_CALC_int8_10_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4439.4]
  assign _T_815 = _T_814 & _T_602_10; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4780.4]
  assign _T_526_11 = NV_NVDLA_CACC_CALC_int8_11_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4452.4]
  assign _T_819 = _T_526_11 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4783.4]
  assign _T_602_11 = NV_NVDLA_CACC_CALC_int8_11_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4451.4]
  assign _T_820 = _T_819 & _T_602_11; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4784.4]
  assign _T_526_12 = NV_NVDLA_CACC_CALC_int8_12_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4464.4]
  assign _T_824 = _T_526_12 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4787.4]
  assign _T_602_12 = NV_NVDLA_CACC_CALC_int8_12_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4463.4]
  assign _T_825 = _T_824 & _T_602_12; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4788.4]
  assign _T_526_13 = NV_NVDLA_CACC_CALC_int8_13_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4476.4]
  assign _T_829 = _T_526_13 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4791.4]
  assign _T_602_13 = NV_NVDLA_CACC_CALC_int8_13_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4475.4]
  assign _T_830 = _T_829 & _T_602_13; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4792.4]
  assign _T_526_14 = NV_NVDLA_CACC_CALC_int8_14_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4488.4]
  assign _T_834 = _T_526_14 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4795.4]
  assign _T_602_14 = NV_NVDLA_CACC_CALC_int8_14_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4487.4]
  assign _T_835 = _T_834 & _T_602_14; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4796.4]
  assign _T_526_15 = NV_NVDLA_CACC_CALC_int8_15_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4500.4]
  assign _T_839 = _T_526_15 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4799.4]
  assign _T_602_15 = NV_NVDLA_CACC_CALC_int8_15_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4499.4]
  assign _T_840 = _T_839 & _T_602_15; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4800.4]
  assign _T_526_16 = NV_NVDLA_CACC_CALC_int8_16_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4512.4]
  assign _T_844 = _T_526_16 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4803.4]
  assign _T_602_16 = NV_NVDLA_CACC_CALC_int8_16_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4511.4]
  assign _T_845 = _T_844 & _T_602_16; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4804.4]
  assign _T_526_17 = NV_NVDLA_CACC_CALC_int8_17_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4524.4]
  assign _T_849 = _T_526_17 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4807.4]
  assign _T_602_17 = NV_NVDLA_CACC_CALC_int8_17_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4523.4]
  assign _T_850 = _T_849 & _T_602_17; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4808.4]
  assign _T_526_18 = NV_NVDLA_CACC_CALC_int8_18_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4536.4]
  assign _T_854 = _T_526_18 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4811.4]
  assign _T_602_18 = NV_NVDLA_CACC_CALC_int8_18_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4535.4]
  assign _T_855 = _T_854 & _T_602_18; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4812.4]
  assign _T_526_19 = NV_NVDLA_CACC_CALC_int8_19_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4548.4]
  assign _T_859 = _T_526_19 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4815.4]
  assign _T_602_19 = NV_NVDLA_CACC_CALC_int8_19_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4547.4]
  assign _T_860 = _T_859 & _T_602_19; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4816.4]
  assign _T_526_20 = NV_NVDLA_CACC_CALC_int8_20_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4560.4]
  assign _T_864 = _T_526_20 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4819.4]
  assign _T_602_20 = NV_NVDLA_CACC_CALC_int8_20_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4559.4]
  assign _T_865 = _T_864 & _T_602_20; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4820.4]
  assign _T_526_21 = NV_NVDLA_CACC_CALC_int8_21_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4572.4]
  assign _T_869 = _T_526_21 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4823.4]
  assign _T_602_21 = NV_NVDLA_CACC_CALC_int8_21_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4571.4]
  assign _T_870 = _T_869 & _T_602_21; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4824.4]
  assign _T_526_22 = NV_NVDLA_CACC_CALC_int8_22_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4584.4]
  assign _T_874 = _T_526_22 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4827.4]
  assign _T_602_22 = NV_NVDLA_CACC_CALC_int8_22_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4583.4]
  assign _T_875 = _T_874 & _T_602_22; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4828.4]
  assign _T_526_23 = NV_NVDLA_CACC_CALC_int8_23_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4596.4]
  assign _T_879 = _T_526_23 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4831.4]
  assign _T_602_23 = NV_NVDLA_CACC_CALC_int8_23_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4595.4]
  assign _T_880 = _T_879 & _T_602_23; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4832.4]
  assign _T_526_24 = NV_NVDLA_CACC_CALC_int8_24_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4608.4]
  assign _T_884 = _T_526_24 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4835.4]
  assign _T_602_24 = NV_NVDLA_CACC_CALC_int8_24_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4607.4]
  assign _T_885 = _T_884 & _T_602_24; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4836.4]
  assign _T_526_25 = NV_NVDLA_CACC_CALC_int8_25_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4620.4]
  assign _T_889 = _T_526_25 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4839.4]
  assign _T_602_25 = NV_NVDLA_CACC_CALC_int8_25_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4619.4]
  assign _T_890 = _T_889 & _T_602_25; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4840.4]
  assign _T_526_26 = NV_NVDLA_CACC_CALC_int8_26_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4632.4]
  assign _T_894 = _T_526_26 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4843.4]
  assign _T_602_26 = NV_NVDLA_CACC_CALC_int8_26_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4631.4]
  assign _T_895 = _T_894 & _T_602_26; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4844.4]
  assign _T_526_27 = NV_NVDLA_CACC_CALC_int8_27_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4644.4]
  assign _T_899 = _T_526_27 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4847.4]
  assign _T_602_27 = NV_NVDLA_CACC_CALC_int8_27_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4643.4]
  assign _T_900 = _T_899 & _T_602_27; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4848.4]
  assign _T_526_28 = NV_NVDLA_CACC_CALC_int8_28_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4656.4]
  assign _T_904 = _T_526_28 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4851.4]
  assign _T_602_28 = NV_NVDLA_CACC_CALC_int8_28_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4655.4]
  assign _T_905 = _T_904 & _T_602_28; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4852.4]
  assign _T_526_29 = NV_NVDLA_CACC_CALC_int8_29_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4668.4]
  assign _T_909 = _T_526_29 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4855.4]
  assign _T_602_29 = NV_NVDLA_CACC_CALC_int8_29_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4667.4]
  assign _T_910 = _T_909 & _T_602_29; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4856.4]
  assign _T_526_30 = NV_NVDLA_CACC_CALC_int8_30_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4680.4]
  assign _T_914 = _T_526_30 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4859.4]
  assign _T_602_30 = NV_NVDLA_CACC_CALC_int8_30_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4679.4]
  assign _T_915 = _T_914 & _T_602_30; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4860.4]
  assign _T_526_31 = NV_NVDLA_CACC_CALC_int8_31_io_out_partial_valid; // @[NV_NVDLA_CACC_calculator.scala 105:29:@4209.4 NV_NVDLA_CACC_calculator.scala 124:26:@4692.4]
  assign _T_919 = _T_526_31 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4863.4]
  assign _T_602_31 = NV_NVDLA_CACC_CALC_int8_31_io_out_partial_data; // @[NV_NVDLA_CACC_calculator.scala 107:29:@4211.4 NV_NVDLA_CACC_calculator.scala 123:26:@4691.4]
  assign _T_920 = _T_919 & _T_602_31; // @[NV_NVDLA_CACC_calculator.scala 178:72:@4864.4]
  assign _T_564_0 = NV_NVDLA_CACC_CALC_int8_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4318.4]
  assign _T_962 = _T_564_0 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4868.4]
  assign _T_640_0 = NV_NVDLA_CACC_CALC_int8_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4316.4]
  assign _T_963 = _T_962 & _T_640_0; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4869.4]
  assign _T_564_1 = NV_NVDLA_CACC_CALC_int8_1_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4330.4]
  assign _T_967 = _T_564_1 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4872.4]
  assign _T_640_1 = NV_NVDLA_CACC_CALC_int8_1_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4328.4]
  assign _T_968 = _T_967 & _T_640_1; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4873.4]
  assign _T_564_2 = NV_NVDLA_CACC_CALC_int8_2_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4342.4]
  assign _T_972 = _T_564_2 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4876.4]
  assign _T_640_2 = NV_NVDLA_CACC_CALC_int8_2_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4340.4]
  assign _T_973 = _T_972 & _T_640_2; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4877.4]
  assign _T_564_3 = NV_NVDLA_CACC_CALC_int8_3_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4354.4]
  assign _T_977 = _T_564_3 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4880.4]
  assign _T_640_3 = NV_NVDLA_CACC_CALC_int8_3_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4352.4]
  assign _T_978 = _T_977 & _T_640_3; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4881.4]
  assign _T_564_4 = NV_NVDLA_CACC_CALC_int8_4_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4366.4]
  assign _T_982 = _T_564_4 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4884.4]
  assign _T_640_4 = NV_NVDLA_CACC_CALC_int8_4_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4364.4]
  assign _T_983 = _T_982 & _T_640_4; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4885.4]
  assign _T_564_5 = NV_NVDLA_CACC_CALC_int8_5_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4378.4]
  assign _T_987 = _T_564_5 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4888.4]
  assign _T_640_5 = NV_NVDLA_CACC_CALC_int8_5_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4376.4]
  assign _T_988 = _T_987 & _T_640_5; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4889.4]
  assign _T_564_6 = NV_NVDLA_CACC_CALC_int8_6_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4390.4]
  assign _T_992 = _T_564_6 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4892.4]
  assign _T_640_6 = NV_NVDLA_CACC_CALC_int8_6_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4388.4]
  assign _T_993 = _T_992 & _T_640_6; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4893.4]
  assign _T_564_7 = NV_NVDLA_CACC_CALC_int8_7_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4402.4]
  assign _T_997 = _T_564_7 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4896.4]
  assign _T_640_7 = NV_NVDLA_CACC_CALC_int8_7_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4400.4]
  assign _T_998 = _T_997 & _T_640_7; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4897.4]
  assign _T_564_8 = NV_NVDLA_CACC_CALC_int8_8_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4414.4]
  assign _T_1002 = _T_564_8 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4900.4]
  assign _T_640_8 = NV_NVDLA_CACC_CALC_int8_8_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4412.4]
  assign _T_1003 = _T_1002 & _T_640_8; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4901.4]
  assign _T_564_9 = NV_NVDLA_CACC_CALC_int8_9_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4426.4]
  assign _T_1007 = _T_564_9 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4904.4]
  assign _T_640_9 = NV_NVDLA_CACC_CALC_int8_9_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4424.4]
  assign _T_1008 = _T_1007 & _T_640_9; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4905.4]
  assign _T_564_10 = NV_NVDLA_CACC_CALC_int8_10_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4438.4]
  assign _T_1012 = _T_564_10 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4908.4]
  assign _T_640_10 = NV_NVDLA_CACC_CALC_int8_10_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4436.4]
  assign _T_1013 = _T_1012 & _T_640_10; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4909.4]
  assign _T_564_11 = NV_NVDLA_CACC_CALC_int8_11_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4450.4]
  assign _T_1017 = _T_564_11 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4912.4]
  assign _T_640_11 = NV_NVDLA_CACC_CALC_int8_11_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4448.4]
  assign _T_1018 = _T_1017 & _T_640_11; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4913.4]
  assign _T_564_12 = NV_NVDLA_CACC_CALC_int8_12_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4462.4]
  assign _T_1022 = _T_564_12 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4916.4]
  assign _T_640_12 = NV_NVDLA_CACC_CALC_int8_12_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4460.4]
  assign _T_1023 = _T_1022 & _T_640_12; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4917.4]
  assign _T_564_13 = NV_NVDLA_CACC_CALC_int8_13_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4474.4]
  assign _T_1027 = _T_564_13 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4920.4]
  assign _T_640_13 = NV_NVDLA_CACC_CALC_int8_13_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4472.4]
  assign _T_1028 = _T_1027 & _T_640_13; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4921.4]
  assign _T_564_14 = NV_NVDLA_CACC_CALC_int8_14_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4486.4]
  assign _T_1032 = _T_564_14 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4924.4]
  assign _T_640_14 = NV_NVDLA_CACC_CALC_int8_14_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4484.4]
  assign _T_1033 = _T_1032 & _T_640_14; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4925.4]
  assign _T_564_15 = NV_NVDLA_CACC_CALC_int8_15_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4498.4]
  assign _T_1037 = _T_564_15 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4928.4]
  assign _T_640_15 = NV_NVDLA_CACC_CALC_int8_15_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4496.4]
  assign _T_1038 = _T_1037 & _T_640_15; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4929.4]
  assign _T_564_16 = NV_NVDLA_CACC_CALC_int8_16_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4510.4]
  assign _T_1042 = _T_564_16 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4932.4]
  assign _T_640_16 = NV_NVDLA_CACC_CALC_int8_16_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4508.4]
  assign _T_1043 = _T_1042 & _T_640_16; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4933.4]
  assign _T_564_17 = NV_NVDLA_CACC_CALC_int8_17_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4522.4]
  assign _T_1047 = _T_564_17 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4936.4]
  assign _T_640_17 = NV_NVDLA_CACC_CALC_int8_17_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4520.4]
  assign _T_1048 = _T_1047 & _T_640_17; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4937.4]
  assign _T_564_18 = NV_NVDLA_CACC_CALC_int8_18_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4534.4]
  assign _T_1052 = _T_564_18 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4940.4]
  assign _T_640_18 = NV_NVDLA_CACC_CALC_int8_18_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4532.4]
  assign _T_1053 = _T_1052 & _T_640_18; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4941.4]
  assign _T_564_19 = NV_NVDLA_CACC_CALC_int8_19_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4546.4]
  assign _T_1057 = _T_564_19 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4944.4]
  assign _T_640_19 = NV_NVDLA_CACC_CALC_int8_19_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4544.4]
  assign _T_1058 = _T_1057 & _T_640_19; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4945.4]
  assign _T_564_20 = NV_NVDLA_CACC_CALC_int8_20_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4558.4]
  assign _T_1062 = _T_564_20 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4948.4]
  assign _T_640_20 = NV_NVDLA_CACC_CALC_int8_20_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4556.4]
  assign _T_1063 = _T_1062 & _T_640_20; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4949.4]
  assign _T_564_21 = NV_NVDLA_CACC_CALC_int8_21_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4570.4]
  assign _T_1067 = _T_564_21 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4952.4]
  assign _T_640_21 = NV_NVDLA_CACC_CALC_int8_21_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4568.4]
  assign _T_1068 = _T_1067 & _T_640_21; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4953.4]
  assign _T_564_22 = NV_NVDLA_CACC_CALC_int8_22_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4582.4]
  assign _T_1072 = _T_564_22 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4956.4]
  assign _T_640_22 = NV_NVDLA_CACC_CALC_int8_22_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4580.4]
  assign _T_1073 = _T_1072 & _T_640_22; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4957.4]
  assign _T_564_23 = NV_NVDLA_CACC_CALC_int8_23_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4594.4]
  assign _T_1077 = _T_564_23 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4960.4]
  assign _T_640_23 = NV_NVDLA_CACC_CALC_int8_23_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4592.4]
  assign _T_1078 = _T_1077 & _T_640_23; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4961.4]
  assign _T_564_24 = NV_NVDLA_CACC_CALC_int8_24_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4606.4]
  assign _T_1082 = _T_564_24 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4964.4]
  assign _T_640_24 = NV_NVDLA_CACC_CALC_int8_24_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4604.4]
  assign _T_1083 = _T_1082 & _T_640_24; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4965.4]
  assign _T_564_25 = NV_NVDLA_CACC_CALC_int8_25_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4618.4]
  assign _T_1087 = _T_564_25 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4968.4]
  assign _T_640_25 = NV_NVDLA_CACC_CALC_int8_25_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4616.4]
  assign _T_1088 = _T_1087 & _T_640_25; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4969.4]
  assign _T_564_26 = NV_NVDLA_CACC_CALC_int8_26_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4630.4]
  assign _T_1092 = _T_564_26 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4972.4]
  assign _T_640_26 = NV_NVDLA_CACC_CALC_int8_26_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4628.4]
  assign _T_1093 = _T_1092 & _T_640_26; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4973.4]
  assign _T_564_27 = NV_NVDLA_CACC_CALC_int8_27_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4642.4]
  assign _T_1097 = _T_564_27 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4976.4]
  assign _T_640_27 = NV_NVDLA_CACC_CALC_int8_27_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4640.4]
  assign _T_1098 = _T_1097 & _T_640_27; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4977.4]
  assign _T_564_28 = NV_NVDLA_CACC_CALC_int8_28_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4654.4]
  assign _T_1102 = _T_564_28 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4980.4]
  assign _T_640_28 = NV_NVDLA_CACC_CALC_int8_28_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4652.4]
  assign _T_1103 = _T_1102 & _T_640_28; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4981.4]
  assign _T_564_29 = NV_NVDLA_CACC_CALC_int8_29_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4666.4]
  assign _T_1107 = _T_564_29 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4984.4]
  assign _T_640_29 = NV_NVDLA_CACC_CALC_int8_29_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4664.4]
  assign _T_1108 = _T_1107 & _T_640_29; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4985.4]
  assign _T_564_30 = NV_NVDLA_CACC_CALC_int8_30_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4678.4]
  assign _T_1112 = _T_564_30 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4988.4]
  assign _T_640_30 = NV_NVDLA_CACC_CALC_int8_30_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4676.4]
  assign _T_1113 = _T_1112 & _T_640_30; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4989.4]
  assign _T_564_31 = NV_NVDLA_CACC_CALC_int8_31_io_out_final_valid; // @[NV_NVDLA_CACC_calculator.scala 106:29:@4210.4 NV_NVDLA_CACC_calculator.scala 122:26:@4690.4]
  assign _T_1117 = _T_564_31 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4992.4]
  assign _T_640_31 = NV_NVDLA_CACC_CALC_int8_31_io_out_final_data; // @[NV_NVDLA_CACC_calculator.scala 108:29:@4212.4 NV_NVDLA_CACC_calculator.scala 120:26:@4688.4]
  assign _T_1118 = _T_1117 & _T_640_31; // @[NV_NVDLA_CACC_calculator.scala 182:71:@4993.4]
  assign _GEN_10 = _T_690 ? _T_698 : _T_1124; // @[Reg.scala 20:19:@4999.4]
  assign _T_1131 = {_T_800,_T_795,_T_790,_T_785,_T_780,_T_775,_T_770,_T_765}; // @[NV_NVDLA_CACC_calculator.scala 189:44:@5009.4]
  assign _T_1139 = {_T_840,_T_835,_T_830,_T_825,_T_820,_T_815,_T_810,_T_805,_T_1131}; // @[NV_NVDLA_CACC_calculator.scala 189:44:@5017.4]
  assign _T_1146 = {_T_880,_T_875,_T_870,_T_865,_T_860,_T_855,_T_850,_T_845}; // @[NV_NVDLA_CACC_calculator.scala 189:44:@5024.4]
  assign _T_1155 = {_T_920,_T_915,_T_910,_T_905,_T_900,_T_895,_T_890,_T_885,_T_1146,_T_1139}; // @[NV_NVDLA_CACC_calculator.scala 189:44:@5033.4]
  assign _T_1164 = {_T_998,_T_993,_T_988,_T_983,_T_978,_T_973,_T_968,_T_963}; // @[NV_NVDLA_CACC_calculator.scala 192:40:@5045.4]
  assign _T_1172 = {_T_1038,_T_1033,_T_1028,_T_1023,_T_1018,_T_1013,_T_1008,_T_1003,_T_1164}; // @[NV_NVDLA_CACC_calculator.scala 192:40:@5053.4]
  assign _T_1179 = {_T_1078,_T_1073,_T_1068,_T_1063,_T_1058,_T_1053,_T_1048,_T_1043}; // @[NV_NVDLA_CACC_calculator.scala 192:40:@5060.4]
  assign _T_1188 = {_T_1118,_T_1113,_T_1108,_T_1103,_T_1098,_T_1093,_T_1088,_T_1083,_T_1179,_T_1172}; // @[NV_NVDLA_CACC_calculator.scala 192:40:@5069.4]
  assign _GEN_13 = _T_706 ? _T_714 : _T_1199; // @[Reg.scala 20:19:@5082.4]
  assign _GEN_14 = _T_706 ? _T_722 : _T_1202; // @[Reg.scala 20:19:@5086.4]
  assign _T_1452 = _T_722 & _T_714; // @[NV_NVDLA_CACC_calculator.scala 206:42:@5128.4]
  assign _T_1453 = ~ _T_1452; // @[NV_NVDLA_CACC_calculator.scala 207:44:@5129.4]
  assign _T_1454 = _T_706 & _T_1453; // @[NV_NVDLA_CACC_calculator.scala 207:42:@5130.4]
  assign _T_1455 = _T_1454 & _T_1209; // @[NV_NVDLA_CACC_calculator.scala 207:57:@5131.4]
  assign _GEN_15 = _T_706 ? _T_1452 : _T_1209; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_0 = NV_NVDLA_CACC_CALC_int8_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4317.4]
  assign _GEN_16 = _T_706 ? _T_488_0 : _T_1348_0; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_1 = NV_NVDLA_CACC_CALC_int8_1_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4329.4]
  assign _GEN_17 = _T_706 ? _T_488_1 : _T_1348_1; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_2 = NV_NVDLA_CACC_CALC_int8_2_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4341.4]
  assign _GEN_18 = _T_706 ? _T_488_2 : _T_1348_2; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_3 = NV_NVDLA_CACC_CALC_int8_3_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4353.4]
  assign _GEN_19 = _T_706 ? _T_488_3 : _T_1348_3; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_4 = NV_NVDLA_CACC_CALC_int8_4_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4365.4]
  assign _GEN_20 = _T_706 ? _T_488_4 : _T_1348_4; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_5 = NV_NVDLA_CACC_CALC_int8_5_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4377.4]
  assign _GEN_21 = _T_706 ? _T_488_5 : _T_1348_5; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_6 = NV_NVDLA_CACC_CALC_int8_6_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4389.4]
  assign _GEN_22 = _T_706 ? _T_488_6 : _T_1348_6; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_7 = NV_NVDLA_CACC_CALC_int8_7_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4401.4]
  assign _GEN_23 = _T_706 ? _T_488_7 : _T_1348_7; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_8 = NV_NVDLA_CACC_CALC_int8_8_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4413.4]
  assign _GEN_24 = _T_706 ? _T_488_8 : _T_1348_8; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_9 = NV_NVDLA_CACC_CALC_int8_9_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4425.4]
  assign _GEN_25 = _T_706 ? _T_488_9 : _T_1348_9; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_10 = NV_NVDLA_CACC_CALC_int8_10_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4437.4]
  assign _GEN_26 = _T_706 ? _T_488_10 : _T_1348_10; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_11 = NV_NVDLA_CACC_CALC_int8_11_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4449.4]
  assign _GEN_27 = _T_706 ? _T_488_11 : _T_1348_11; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_12 = NV_NVDLA_CACC_CALC_int8_12_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4461.4]
  assign _GEN_28 = _T_706 ? _T_488_12 : _T_1348_12; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_13 = NV_NVDLA_CACC_CALC_int8_13_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4473.4]
  assign _GEN_29 = _T_706 ? _T_488_13 : _T_1348_13; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_14 = NV_NVDLA_CACC_CALC_int8_14_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4485.4]
  assign _GEN_30 = _T_706 ? _T_488_14 : _T_1348_14; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_15 = NV_NVDLA_CACC_CALC_int8_15_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4497.4]
  assign _GEN_31 = _T_706 ? _T_488_15 : _T_1348_15; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_16 = NV_NVDLA_CACC_CALC_int8_16_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4509.4]
  assign _GEN_32 = _T_706 ? _T_488_16 : _T_1348_16; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_17 = NV_NVDLA_CACC_CALC_int8_17_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4521.4]
  assign _GEN_33 = _T_706 ? _T_488_17 : _T_1348_17; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_18 = NV_NVDLA_CACC_CALC_int8_18_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4533.4]
  assign _GEN_34 = _T_706 ? _T_488_18 : _T_1348_18; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_19 = NV_NVDLA_CACC_CALC_int8_19_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4545.4]
  assign _GEN_35 = _T_706 ? _T_488_19 : _T_1348_19; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_20 = NV_NVDLA_CACC_CALC_int8_20_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4557.4]
  assign _GEN_36 = _T_706 ? _T_488_20 : _T_1348_20; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_21 = NV_NVDLA_CACC_CALC_int8_21_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4569.4]
  assign _GEN_37 = _T_706 ? _T_488_21 : _T_1348_21; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_22 = NV_NVDLA_CACC_CALC_int8_22_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4581.4]
  assign _GEN_38 = _T_706 ? _T_488_22 : _T_1348_22; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_23 = NV_NVDLA_CACC_CALC_int8_23_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4593.4]
  assign _GEN_39 = _T_706 ? _T_488_23 : _T_1348_23; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_24 = NV_NVDLA_CACC_CALC_int8_24_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4605.4]
  assign _GEN_40 = _T_706 ? _T_488_24 : _T_1348_24; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_25 = NV_NVDLA_CACC_CALC_int8_25_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4617.4]
  assign _GEN_41 = _T_706 ? _T_488_25 : _T_1348_25; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_26 = NV_NVDLA_CACC_CALC_int8_26_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4629.4]
  assign _GEN_42 = _T_706 ? _T_488_26 : _T_1348_26; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_27 = NV_NVDLA_CACC_CALC_int8_27_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4641.4]
  assign _GEN_43 = _T_706 ? _T_488_27 : _T_1348_27; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_28 = NV_NVDLA_CACC_CALC_int8_28_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4653.4]
  assign _GEN_44 = _T_706 ? _T_488_28 : _T_1348_28; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_29 = NV_NVDLA_CACC_CALC_int8_29_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4665.4]
  assign _GEN_45 = _T_706 ? _T_488_29 : _T_1348_29; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_30 = NV_NVDLA_CACC_CALC_int8_30_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4677.4]
  assign _GEN_46 = _T_706 ? _T_488_30 : _T_1348_30; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_488_31 = NV_NVDLA_CACC_CALC_int8_31_io_out_final_sat; // @[NV_NVDLA_CACC_calculator.scala 104:29:@4208.4 NV_NVDLA_CACC_calculator.scala 121:26:@4689.4]
  assign _GEN_47 = _T_706 ? _T_488_31 : _T_1348_31; // @[NV_NVDLA_CACC_calculator.scala 210:29:@5133.4]
  assign _T_1494 = _T_1348_0 + _T_1348_1; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5202.4]
  assign _GEN_49 = {{1'd0}, _T_1348_2}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5203.4]
  assign _T_1495 = _T_1494 + _GEN_49; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5203.4]
  assign _GEN_50 = {{2'd0}, _T_1348_3}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5204.4]
  assign _T_1496 = _T_1495 + _GEN_50; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5204.4]
  assign _GEN_51 = {{3'd0}, _T_1348_4}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5205.4]
  assign _T_1497 = _T_1496 + _GEN_51; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5205.4]
  assign _GEN_52 = {{4'd0}, _T_1348_5}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5206.4]
  assign _T_1498 = _T_1497 + _GEN_52; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5206.4]
  assign _GEN_53 = {{5'd0}, _T_1348_6}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5207.4]
  assign _T_1499 = _T_1498 + _GEN_53; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5207.4]
  assign _GEN_54 = {{6'd0}, _T_1348_7}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5208.4]
  assign _T_1500 = _T_1499 + _GEN_54; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5208.4]
  assign _GEN_55 = {{7'd0}, _T_1348_8}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5209.4]
  assign _T_1501 = _T_1500 + _GEN_55; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5209.4]
  assign _GEN_56 = {{8'd0}, _T_1348_9}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5210.4]
  assign _T_1502 = _T_1501 + _GEN_56; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5210.4]
  assign _GEN_57 = {{9'd0}, _T_1348_10}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5211.4]
  assign _T_1503 = _T_1502 + _GEN_57; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5211.4]
  assign _GEN_58 = {{10'd0}, _T_1348_11}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5212.4]
  assign _T_1504 = _T_1503 + _GEN_58; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5212.4]
  assign _GEN_59 = {{11'd0}, _T_1348_12}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5213.4]
  assign _T_1505 = _T_1504 + _GEN_59; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5213.4]
  assign _GEN_60 = {{12'd0}, _T_1348_13}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5214.4]
  assign _T_1506 = _T_1505 + _GEN_60; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5214.4]
  assign _GEN_61 = {{13'd0}, _T_1348_14}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5215.4]
  assign _T_1507 = _T_1506 + _GEN_61; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5215.4]
  assign _GEN_62 = {{14'd0}, _T_1348_15}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5216.4]
  assign _T_1508 = _T_1507 + _GEN_62; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5216.4]
  assign _GEN_63 = {{15'd0}, _T_1348_16}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5217.4]
  assign _T_1509 = _T_1508 + _GEN_63; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5217.4]
  assign _GEN_64 = {{16'd0}, _T_1348_17}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5218.4]
  assign _T_1510 = _T_1509 + _GEN_64; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5218.4]
  assign _GEN_65 = {{17'd0}, _T_1348_18}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5219.4]
  assign _T_1511 = _T_1510 + _GEN_65; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5219.4]
  assign _GEN_66 = {{18'd0}, _T_1348_19}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5220.4]
  assign _T_1512 = _T_1511 + _GEN_66; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5220.4]
  assign _GEN_67 = {{19'd0}, _T_1348_20}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5221.4]
  assign _T_1513 = _T_1512 + _GEN_67; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5221.4]
  assign _GEN_68 = {{20'd0}, _T_1348_21}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5222.4]
  assign _T_1514 = _T_1513 + _GEN_68; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5222.4]
  assign _GEN_69 = {{21'd0}, _T_1348_22}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5223.4]
  assign _T_1515 = _T_1514 + _GEN_69; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5223.4]
  assign _GEN_70 = {{22'd0}, _T_1348_23}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5224.4]
  assign _T_1516 = _T_1515 + _GEN_70; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5224.4]
  assign _GEN_71 = {{23'd0}, _T_1348_24}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5225.4]
  assign _T_1517 = _T_1516 + _GEN_71; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5225.4]
  assign _GEN_72 = {{24'd0}, _T_1348_25}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5226.4]
  assign _T_1518 = _T_1517 + _GEN_72; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5226.4]
  assign _GEN_73 = {{25'd0}, _T_1348_26}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5227.4]
  assign _T_1519 = _T_1518 + _GEN_73; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5227.4]
  assign _GEN_74 = {{26'd0}, _T_1348_27}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5228.4]
  assign _T_1520 = _T_1519 + _GEN_74; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5228.4]
  assign _GEN_75 = {{27'd0}, _T_1348_28}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5229.4]
  assign _T_1521 = _T_1520 + _GEN_75; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5229.4]
  assign _GEN_76 = {{28'd0}, _T_1348_29}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5230.4]
  assign _T_1522 = _T_1521 + _GEN_76; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5230.4]
  assign _GEN_77 = {{29'd0}, _T_1348_30}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5231.4]
  assign _T_1523 = _T_1522 + _GEN_77; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5231.4]
  assign _GEN_78 = {{30'd0}, _T_1348_31}; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5232.4]
  assign _T_1524 = _T_1523 + _GEN_78; // @[NV_NVDLA_CACC_calculator.scala 215:98:@5232.4]
  assign _T_1528 = _T_1527 + _T_1524; // @[NV_NVDLA_CACC_calculator.scala 218:36:@5234.4]
  assign _T_1529 = _T_1528[31:0]; // @[NV_NVDLA_CACC_calculator.scala 218:47:@5235.4]
  assign _T_1531 = _T_1528[32]; // @[NV_NVDLA_CACC_calculator.scala 219:43:@5237.4]
  assign _T_1539 = _T_1531 ? 32'hffffffff : _T_1529; // @[NV_NVDLA_CACC_calculator.scala 222:23:@5240.4]
  assign _T_1540 = _T_1451 ? _T_1524 : _T_1539; // @[NV_NVDLA_CACC_calculator.scala 221:23:@5241.4]
  assign _T_1542 = _T_1524 != 32'h0; // @[NV_NVDLA_CACC_calculator.scala 223:49:@5243.4]
  assign _T_1543 = _T_1542 | _T_1451; // @[NV_NVDLA_CACC_calculator.scala 223:54:@5244.4]
  assign _T_1544 = _T_1206 & _T_1543; // @[NV_NVDLA_CACC_calculator.scala 223:37:@5245.4]
  assign _GEN_48 = _T_1544 ? _T_1540 : _T_1527; // @[NV_NVDLA_CACC_calculator.scala 224:21:@5246.4]
  assign io_abuf_wr_addr_valid = _T_1121; // @[NV_NVDLA_CACC_calculator.scala 187:27:@4997.4]
  assign io_abuf_wr_addr_bits = _T_1124; // @[NV_NVDLA_CACC_calculator.scala 188:26:@5002.4]
  assign io_abuf_wr_data = _T_1157; // @[NV_NVDLA_CACC_calculator.scala 189:21:@5038.4]
  assign io_dlv_valid = _T_1193; // @[NV_NVDLA_CACC_calculator.scala 193:18:@5077.4]
  assign io_dlv_data = _T_1190; // @[NV_NVDLA_CACC_calculator.scala 192:17:@5074.4]
  assign io_dlv_pd = {_T_1202,_T_1199}; // @[NV_NVDLA_CACC_calculator.scala 197:15:@5090.4]
  assign io_dp2reg_sat_count = _T_1527; // @[NV_NVDLA_CACC_calculator.scala 228:25:@5249.4]
  assign NV_NVDLA_CACC_CALC_int8_reset = reset; // @[:@4215.4]
  assign NV_NVDLA_CACC_CALC_int8_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4309.4]
  assign NV_NVDLA_CACC_CALC_int8_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4310.4]
  assign NV_NVDLA_CACC_CALC_int8_io_in_data = io_mac_a2accu_data_0; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4311.4]
  assign NV_NVDLA_CACC_CALC_int8_io_in_op = io_abuf_rd_data[33:0]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4312.4]
  assign NV_NVDLA_CACC_CALC_int8_io_in_op_valid = io_mac_a2accu_mask_0 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4313.4]
  assign NV_NVDLA_CACC_CALC_int8_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4314.4]
  assign NV_NVDLA_CACC_CALC_int8_io_in_valid = io_mac_a2accu_mask_0; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4315.4]
  assign NV_NVDLA_CACC_CALC_int8_1_reset = reset; // @[:@4218.4]
  assign NV_NVDLA_CACC_CALC_int8_1_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4321.4]
  assign NV_NVDLA_CACC_CALC_int8_1_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4322.4]
  assign NV_NVDLA_CACC_CALC_int8_1_io_in_data = io_mac_a2accu_data_1; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4323.4]
  assign NV_NVDLA_CACC_CALC_int8_1_io_in_op = io_abuf_rd_data[67:34]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4324.4]
  assign NV_NVDLA_CACC_CALC_int8_1_io_in_op_valid = io_mac_a2accu_mask_1 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4325.4]
  assign NV_NVDLA_CACC_CALC_int8_1_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4326.4]
  assign NV_NVDLA_CACC_CALC_int8_1_io_in_valid = io_mac_a2accu_mask_1; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4327.4]
  assign NV_NVDLA_CACC_CALC_int8_2_reset = reset; // @[:@4221.4]
  assign NV_NVDLA_CACC_CALC_int8_2_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4333.4]
  assign NV_NVDLA_CACC_CALC_int8_2_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4334.4]
  assign NV_NVDLA_CACC_CALC_int8_2_io_in_data = io_mac_a2accu_data_2; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4335.4]
  assign NV_NVDLA_CACC_CALC_int8_2_io_in_op = io_abuf_rd_data[101:68]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4336.4]
  assign NV_NVDLA_CACC_CALC_int8_2_io_in_op_valid = io_mac_a2accu_mask_2 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4337.4]
  assign NV_NVDLA_CACC_CALC_int8_2_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4338.4]
  assign NV_NVDLA_CACC_CALC_int8_2_io_in_valid = io_mac_a2accu_mask_2; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4339.4]
  assign NV_NVDLA_CACC_CALC_int8_3_reset = reset; // @[:@4224.4]
  assign NV_NVDLA_CACC_CALC_int8_3_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4345.4]
  assign NV_NVDLA_CACC_CALC_int8_3_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4346.4]
  assign NV_NVDLA_CACC_CALC_int8_3_io_in_data = io_mac_a2accu_data_3; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4347.4]
  assign NV_NVDLA_CACC_CALC_int8_3_io_in_op = io_abuf_rd_data[135:102]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4348.4]
  assign NV_NVDLA_CACC_CALC_int8_3_io_in_op_valid = io_mac_a2accu_mask_3 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4349.4]
  assign NV_NVDLA_CACC_CALC_int8_3_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4350.4]
  assign NV_NVDLA_CACC_CALC_int8_3_io_in_valid = io_mac_a2accu_mask_3; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4351.4]
  assign NV_NVDLA_CACC_CALC_int8_4_reset = reset; // @[:@4227.4]
  assign NV_NVDLA_CACC_CALC_int8_4_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4357.4]
  assign NV_NVDLA_CACC_CALC_int8_4_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4358.4]
  assign NV_NVDLA_CACC_CALC_int8_4_io_in_data = io_mac_a2accu_data_4; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4359.4]
  assign NV_NVDLA_CACC_CALC_int8_4_io_in_op = io_abuf_rd_data[169:136]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4360.4]
  assign NV_NVDLA_CACC_CALC_int8_4_io_in_op_valid = io_mac_a2accu_mask_4 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4361.4]
  assign NV_NVDLA_CACC_CALC_int8_4_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4362.4]
  assign NV_NVDLA_CACC_CALC_int8_4_io_in_valid = io_mac_a2accu_mask_4; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4363.4]
  assign NV_NVDLA_CACC_CALC_int8_5_reset = reset; // @[:@4230.4]
  assign NV_NVDLA_CACC_CALC_int8_5_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4369.4]
  assign NV_NVDLA_CACC_CALC_int8_5_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4370.4]
  assign NV_NVDLA_CACC_CALC_int8_5_io_in_data = io_mac_a2accu_data_5; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4371.4]
  assign NV_NVDLA_CACC_CALC_int8_5_io_in_op = io_abuf_rd_data[203:170]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4372.4]
  assign NV_NVDLA_CACC_CALC_int8_5_io_in_op_valid = io_mac_a2accu_mask_5 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4373.4]
  assign NV_NVDLA_CACC_CALC_int8_5_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4374.4]
  assign NV_NVDLA_CACC_CALC_int8_5_io_in_valid = io_mac_a2accu_mask_5; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4375.4]
  assign NV_NVDLA_CACC_CALC_int8_6_reset = reset; // @[:@4233.4]
  assign NV_NVDLA_CACC_CALC_int8_6_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4381.4]
  assign NV_NVDLA_CACC_CALC_int8_6_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4382.4]
  assign NV_NVDLA_CACC_CALC_int8_6_io_in_data = io_mac_a2accu_data_6; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4383.4]
  assign NV_NVDLA_CACC_CALC_int8_6_io_in_op = io_abuf_rd_data[237:204]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4384.4]
  assign NV_NVDLA_CACC_CALC_int8_6_io_in_op_valid = io_mac_a2accu_mask_6 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4385.4]
  assign NV_NVDLA_CACC_CALC_int8_6_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4386.4]
  assign NV_NVDLA_CACC_CALC_int8_6_io_in_valid = io_mac_a2accu_mask_6; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4387.4]
  assign NV_NVDLA_CACC_CALC_int8_7_reset = reset; // @[:@4236.4]
  assign NV_NVDLA_CACC_CALC_int8_7_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4393.4]
  assign NV_NVDLA_CACC_CALC_int8_7_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4394.4]
  assign NV_NVDLA_CACC_CALC_int8_7_io_in_data = io_mac_a2accu_data_7; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4395.4]
  assign NV_NVDLA_CACC_CALC_int8_7_io_in_op = io_abuf_rd_data[271:238]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4396.4]
  assign NV_NVDLA_CACC_CALC_int8_7_io_in_op_valid = io_mac_a2accu_mask_7 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4397.4]
  assign NV_NVDLA_CACC_CALC_int8_7_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4398.4]
  assign NV_NVDLA_CACC_CALC_int8_7_io_in_valid = io_mac_a2accu_mask_7; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4399.4]
  assign NV_NVDLA_CACC_CALC_int8_8_reset = reset; // @[:@4239.4]
  assign NV_NVDLA_CACC_CALC_int8_8_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4405.4]
  assign NV_NVDLA_CACC_CALC_int8_8_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4406.4]
  assign NV_NVDLA_CACC_CALC_int8_8_io_in_data = io_mac_a2accu_data_8; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4407.4]
  assign NV_NVDLA_CACC_CALC_int8_8_io_in_op = io_abuf_rd_data[305:272]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4408.4]
  assign NV_NVDLA_CACC_CALC_int8_8_io_in_op_valid = io_mac_a2accu_mask_8 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4409.4]
  assign NV_NVDLA_CACC_CALC_int8_8_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4410.4]
  assign NV_NVDLA_CACC_CALC_int8_8_io_in_valid = io_mac_a2accu_mask_8; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4411.4]
  assign NV_NVDLA_CACC_CALC_int8_9_reset = reset; // @[:@4242.4]
  assign NV_NVDLA_CACC_CALC_int8_9_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4417.4]
  assign NV_NVDLA_CACC_CALC_int8_9_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4418.4]
  assign NV_NVDLA_CACC_CALC_int8_9_io_in_data = io_mac_a2accu_data_9; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4419.4]
  assign NV_NVDLA_CACC_CALC_int8_9_io_in_op = io_abuf_rd_data[339:306]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4420.4]
  assign NV_NVDLA_CACC_CALC_int8_9_io_in_op_valid = io_mac_a2accu_mask_9 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4421.4]
  assign NV_NVDLA_CACC_CALC_int8_9_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4422.4]
  assign NV_NVDLA_CACC_CALC_int8_9_io_in_valid = io_mac_a2accu_mask_9; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4423.4]
  assign NV_NVDLA_CACC_CALC_int8_10_reset = reset; // @[:@4245.4]
  assign NV_NVDLA_CACC_CALC_int8_10_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4429.4]
  assign NV_NVDLA_CACC_CALC_int8_10_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4430.4]
  assign NV_NVDLA_CACC_CALC_int8_10_io_in_data = io_mac_a2accu_data_10; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4431.4]
  assign NV_NVDLA_CACC_CALC_int8_10_io_in_op = io_abuf_rd_data[373:340]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4432.4]
  assign NV_NVDLA_CACC_CALC_int8_10_io_in_op_valid = io_mac_a2accu_mask_10 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4433.4]
  assign NV_NVDLA_CACC_CALC_int8_10_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4434.4]
  assign NV_NVDLA_CACC_CALC_int8_10_io_in_valid = io_mac_a2accu_mask_10; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4435.4]
  assign NV_NVDLA_CACC_CALC_int8_11_reset = reset; // @[:@4248.4]
  assign NV_NVDLA_CACC_CALC_int8_11_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4441.4]
  assign NV_NVDLA_CACC_CALC_int8_11_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4442.4]
  assign NV_NVDLA_CACC_CALC_int8_11_io_in_data = io_mac_a2accu_data_11; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4443.4]
  assign NV_NVDLA_CACC_CALC_int8_11_io_in_op = io_abuf_rd_data[407:374]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4444.4]
  assign NV_NVDLA_CACC_CALC_int8_11_io_in_op_valid = io_mac_a2accu_mask_11 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4445.4]
  assign NV_NVDLA_CACC_CALC_int8_11_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4446.4]
  assign NV_NVDLA_CACC_CALC_int8_11_io_in_valid = io_mac_a2accu_mask_11; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4447.4]
  assign NV_NVDLA_CACC_CALC_int8_12_reset = reset; // @[:@4251.4]
  assign NV_NVDLA_CACC_CALC_int8_12_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4453.4]
  assign NV_NVDLA_CACC_CALC_int8_12_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4454.4]
  assign NV_NVDLA_CACC_CALC_int8_12_io_in_data = io_mac_a2accu_data_12; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4455.4]
  assign NV_NVDLA_CACC_CALC_int8_12_io_in_op = io_abuf_rd_data[441:408]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4456.4]
  assign NV_NVDLA_CACC_CALC_int8_12_io_in_op_valid = io_mac_a2accu_mask_12 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4457.4]
  assign NV_NVDLA_CACC_CALC_int8_12_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4458.4]
  assign NV_NVDLA_CACC_CALC_int8_12_io_in_valid = io_mac_a2accu_mask_12; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4459.4]
  assign NV_NVDLA_CACC_CALC_int8_13_reset = reset; // @[:@4254.4]
  assign NV_NVDLA_CACC_CALC_int8_13_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4465.4]
  assign NV_NVDLA_CACC_CALC_int8_13_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4466.4]
  assign NV_NVDLA_CACC_CALC_int8_13_io_in_data = io_mac_a2accu_data_13; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4467.4]
  assign NV_NVDLA_CACC_CALC_int8_13_io_in_op = io_abuf_rd_data[475:442]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4468.4]
  assign NV_NVDLA_CACC_CALC_int8_13_io_in_op_valid = io_mac_a2accu_mask_13 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4469.4]
  assign NV_NVDLA_CACC_CALC_int8_13_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4470.4]
  assign NV_NVDLA_CACC_CALC_int8_13_io_in_valid = io_mac_a2accu_mask_13; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4471.4]
  assign NV_NVDLA_CACC_CALC_int8_14_reset = reset; // @[:@4257.4]
  assign NV_NVDLA_CACC_CALC_int8_14_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4477.4]
  assign NV_NVDLA_CACC_CALC_int8_14_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4478.4]
  assign NV_NVDLA_CACC_CALC_int8_14_io_in_data = io_mac_a2accu_data_14; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4479.4]
  assign NV_NVDLA_CACC_CALC_int8_14_io_in_op = io_abuf_rd_data[509:476]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4480.4]
  assign NV_NVDLA_CACC_CALC_int8_14_io_in_op_valid = io_mac_a2accu_mask_14 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4481.4]
  assign NV_NVDLA_CACC_CALC_int8_14_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4482.4]
  assign NV_NVDLA_CACC_CALC_int8_14_io_in_valid = io_mac_a2accu_mask_14; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4483.4]
  assign NV_NVDLA_CACC_CALC_int8_15_reset = reset; // @[:@4260.4]
  assign NV_NVDLA_CACC_CALC_int8_15_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4489.4]
  assign NV_NVDLA_CACC_CALC_int8_15_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4490.4]
  assign NV_NVDLA_CACC_CALC_int8_15_io_in_data = io_mac_a2accu_data_15; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4491.4]
  assign NV_NVDLA_CACC_CALC_int8_15_io_in_op = io_abuf_rd_data[543:510]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4492.4]
  assign NV_NVDLA_CACC_CALC_int8_15_io_in_op_valid = io_mac_a2accu_mask_15 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4493.4]
  assign NV_NVDLA_CACC_CALC_int8_15_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4494.4]
  assign NV_NVDLA_CACC_CALC_int8_15_io_in_valid = io_mac_a2accu_mask_15; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4495.4]
  assign NV_NVDLA_CACC_CALC_int8_16_reset = reset; // @[:@4263.4]
  assign NV_NVDLA_CACC_CALC_int8_16_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4501.4]
  assign NV_NVDLA_CACC_CALC_int8_16_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4502.4]
  assign NV_NVDLA_CACC_CALC_int8_16_io_in_data = io_mac_b2accu_data_0; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4503.4]
  assign NV_NVDLA_CACC_CALC_int8_16_io_in_op = io_abuf_rd_data[577:544]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4504.4]
  assign NV_NVDLA_CACC_CALC_int8_16_io_in_op_valid = io_mac_b2accu_mask_0 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4505.4]
  assign NV_NVDLA_CACC_CALC_int8_16_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4506.4]
  assign NV_NVDLA_CACC_CALC_int8_16_io_in_valid = io_mac_b2accu_mask_0; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4507.4]
  assign NV_NVDLA_CACC_CALC_int8_17_reset = reset; // @[:@4266.4]
  assign NV_NVDLA_CACC_CALC_int8_17_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4513.4]
  assign NV_NVDLA_CACC_CALC_int8_17_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4514.4]
  assign NV_NVDLA_CACC_CALC_int8_17_io_in_data = io_mac_b2accu_data_1; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4515.4]
  assign NV_NVDLA_CACC_CALC_int8_17_io_in_op = io_abuf_rd_data[611:578]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4516.4]
  assign NV_NVDLA_CACC_CALC_int8_17_io_in_op_valid = io_mac_b2accu_mask_1 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4517.4]
  assign NV_NVDLA_CACC_CALC_int8_17_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4518.4]
  assign NV_NVDLA_CACC_CALC_int8_17_io_in_valid = io_mac_b2accu_mask_1; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4519.4]
  assign NV_NVDLA_CACC_CALC_int8_18_reset = reset; // @[:@4269.4]
  assign NV_NVDLA_CACC_CALC_int8_18_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4525.4]
  assign NV_NVDLA_CACC_CALC_int8_18_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4526.4]
  assign NV_NVDLA_CACC_CALC_int8_18_io_in_data = io_mac_b2accu_data_2; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4527.4]
  assign NV_NVDLA_CACC_CALC_int8_18_io_in_op = io_abuf_rd_data[645:612]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4528.4]
  assign NV_NVDLA_CACC_CALC_int8_18_io_in_op_valid = io_mac_b2accu_mask_2 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4529.4]
  assign NV_NVDLA_CACC_CALC_int8_18_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4530.4]
  assign NV_NVDLA_CACC_CALC_int8_18_io_in_valid = io_mac_b2accu_mask_2; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4531.4]
  assign NV_NVDLA_CACC_CALC_int8_19_reset = reset; // @[:@4272.4]
  assign NV_NVDLA_CACC_CALC_int8_19_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4537.4]
  assign NV_NVDLA_CACC_CALC_int8_19_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4538.4]
  assign NV_NVDLA_CACC_CALC_int8_19_io_in_data = io_mac_b2accu_data_3; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4539.4]
  assign NV_NVDLA_CACC_CALC_int8_19_io_in_op = io_abuf_rd_data[679:646]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4540.4]
  assign NV_NVDLA_CACC_CALC_int8_19_io_in_op_valid = io_mac_b2accu_mask_3 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4541.4]
  assign NV_NVDLA_CACC_CALC_int8_19_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4542.4]
  assign NV_NVDLA_CACC_CALC_int8_19_io_in_valid = io_mac_b2accu_mask_3; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4543.4]
  assign NV_NVDLA_CACC_CALC_int8_20_reset = reset; // @[:@4275.4]
  assign NV_NVDLA_CACC_CALC_int8_20_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4549.4]
  assign NV_NVDLA_CACC_CALC_int8_20_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4550.4]
  assign NV_NVDLA_CACC_CALC_int8_20_io_in_data = io_mac_b2accu_data_4; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4551.4]
  assign NV_NVDLA_CACC_CALC_int8_20_io_in_op = io_abuf_rd_data[713:680]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4552.4]
  assign NV_NVDLA_CACC_CALC_int8_20_io_in_op_valid = io_mac_b2accu_mask_4 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4553.4]
  assign NV_NVDLA_CACC_CALC_int8_20_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4554.4]
  assign NV_NVDLA_CACC_CALC_int8_20_io_in_valid = io_mac_b2accu_mask_4; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4555.4]
  assign NV_NVDLA_CACC_CALC_int8_21_reset = reset; // @[:@4278.4]
  assign NV_NVDLA_CACC_CALC_int8_21_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4561.4]
  assign NV_NVDLA_CACC_CALC_int8_21_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4562.4]
  assign NV_NVDLA_CACC_CALC_int8_21_io_in_data = io_mac_b2accu_data_5; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4563.4]
  assign NV_NVDLA_CACC_CALC_int8_21_io_in_op = io_abuf_rd_data[747:714]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4564.4]
  assign NV_NVDLA_CACC_CALC_int8_21_io_in_op_valid = io_mac_b2accu_mask_5 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4565.4]
  assign NV_NVDLA_CACC_CALC_int8_21_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4566.4]
  assign NV_NVDLA_CACC_CALC_int8_21_io_in_valid = io_mac_b2accu_mask_5; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4567.4]
  assign NV_NVDLA_CACC_CALC_int8_22_reset = reset; // @[:@4281.4]
  assign NV_NVDLA_CACC_CALC_int8_22_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4573.4]
  assign NV_NVDLA_CACC_CALC_int8_22_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4574.4]
  assign NV_NVDLA_CACC_CALC_int8_22_io_in_data = io_mac_b2accu_data_6; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4575.4]
  assign NV_NVDLA_CACC_CALC_int8_22_io_in_op = io_abuf_rd_data[781:748]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4576.4]
  assign NV_NVDLA_CACC_CALC_int8_22_io_in_op_valid = io_mac_b2accu_mask_6 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4577.4]
  assign NV_NVDLA_CACC_CALC_int8_22_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4578.4]
  assign NV_NVDLA_CACC_CALC_int8_22_io_in_valid = io_mac_b2accu_mask_6; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4579.4]
  assign NV_NVDLA_CACC_CALC_int8_23_reset = reset; // @[:@4284.4]
  assign NV_NVDLA_CACC_CALC_int8_23_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4585.4]
  assign NV_NVDLA_CACC_CALC_int8_23_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4586.4]
  assign NV_NVDLA_CACC_CALC_int8_23_io_in_data = io_mac_b2accu_data_7; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4587.4]
  assign NV_NVDLA_CACC_CALC_int8_23_io_in_op = io_abuf_rd_data[815:782]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4588.4]
  assign NV_NVDLA_CACC_CALC_int8_23_io_in_op_valid = io_mac_b2accu_mask_7 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4589.4]
  assign NV_NVDLA_CACC_CALC_int8_23_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4590.4]
  assign NV_NVDLA_CACC_CALC_int8_23_io_in_valid = io_mac_b2accu_mask_7; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4591.4]
  assign NV_NVDLA_CACC_CALC_int8_24_reset = reset; // @[:@4287.4]
  assign NV_NVDLA_CACC_CALC_int8_24_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4597.4]
  assign NV_NVDLA_CACC_CALC_int8_24_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4598.4]
  assign NV_NVDLA_CACC_CALC_int8_24_io_in_data = io_mac_b2accu_data_8; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4599.4]
  assign NV_NVDLA_CACC_CALC_int8_24_io_in_op = io_abuf_rd_data[849:816]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4600.4]
  assign NV_NVDLA_CACC_CALC_int8_24_io_in_op_valid = io_mac_b2accu_mask_8 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4601.4]
  assign NV_NVDLA_CACC_CALC_int8_24_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4602.4]
  assign NV_NVDLA_CACC_CALC_int8_24_io_in_valid = io_mac_b2accu_mask_8; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4603.4]
  assign NV_NVDLA_CACC_CALC_int8_25_reset = reset; // @[:@4290.4]
  assign NV_NVDLA_CACC_CALC_int8_25_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4609.4]
  assign NV_NVDLA_CACC_CALC_int8_25_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4610.4]
  assign NV_NVDLA_CACC_CALC_int8_25_io_in_data = io_mac_b2accu_data_9; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4611.4]
  assign NV_NVDLA_CACC_CALC_int8_25_io_in_op = io_abuf_rd_data[883:850]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4612.4]
  assign NV_NVDLA_CACC_CALC_int8_25_io_in_op_valid = io_mac_b2accu_mask_9 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4613.4]
  assign NV_NVDLA_CACC_CALC_int8_25_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4614.4]
  assign NV_NVDLA_CACC_CALC_int8_25_io_in_valid = io_mac_b2accu_mask_9; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4615.4]
  assign NV_NVDLA_CACC_CALC_int8_26_reset = reset; // @[:@4293.4]
  assign NV_NVDLA_CACC_CALC_int8_26_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4621.4]
  assign NV_NVDLA_CACC_CALC_int8_26_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4622.4]
  assign NV_NVDLA_CACC_CALC_int8_26_io_in_data = io_mac_b2accu_data_10; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4623.4]
  assign NV_NVDLA_CACC_CALC_int8_26_io_in_op = io_abuf_rd_data[917:884]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4624.4]
  assign NV_NVDLA_CACC_CALC_int8_26_io_in_op_valid = io_mac_b2accu_mask_10 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4625.4]
  assign NV_NVDLA_CACC_CALC_int8_26_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4626.4]
  assign NV_NVDLA_CACC_CALC_int8_26_io_in_valid = io_mac_b2accu_mask_10; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4627.4]
  assign NV_NVDLA_CACC_CALC_int8_27_reset = reset; // @[:@4296.4]
  assign NV_NVDLA_CACC_CALC_int8_27_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4633.4]
  assign NV_NVDLA_CACC_CALC_int8_27_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4634.4]
  assign NV_NVDLA_CACC_CALC_int8_27_io_in_data = io_mac_b2accu_data_11; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4635.4]
  assign NV_NVDLA_CACC_CALC_int8_27_io_in_op = io_abuf_rd_data[951:918]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4636.4]
  assign NV_NVDLA_CACC_CALC_int8_27_io_in_op_valid = io_mac_b2accu_mask_11 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4637.4]
  assign NV_NVDLA_CACC_CALC_int8_27_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4638.4]
  assign NV_NVDLA_CACC_CALC_int8_27_io_in_valid = io_mac_b2accu_mask_11; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4639.4]
  assign NV_NVDLA_CACC_CALC_int8_28_reset = reset; // @[:@4299.4]
  assign NV_NVDLA_CACC_CALC_int8_28_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4645.4]
  assign NV_NVDLA_CACC_CALC_int8_28_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4646.4]
  assign NV_NVDLA_CACC_CALC_int8_28_io_in_data = io_mac_b2accu_data_12; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4647.4]
  assign NV_NVDLA_CACC_CALC_int8_28_io_in_op = io_abuf_rd_data[985:952]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4648.4]
  assign NV_NVDLA_CACC_CALC_int8_28_io_in_op_valid = io_mac_b2accu_mask_12 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4649.4]
  assign NV_NVDLA_CACC_CALC_int8_28_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4650.4]
  assign NV_NVDLA_CACC_CALC_int8_28_io_in_valid = io_mac_b2accu_mask_12; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4651.4]
  assign NV_NVDLA_CACC_CALC_int8_29_reset = reset; // @[:@4302.4]
  assign NV_NVDLA_CACC_CALC_int8_29_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4657.4]
  assign NV_NVDLA_CACC_CALC_int8_29_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4658.4]
  assign NV_NVDLA_CACC_CALC_int8_29_io_in_data = io_mac_b2accu_data_13; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4659.4]
  assign NV_NVDLA_CACC_CALC_int8_29_io_in_op = io_abuf_rd_data[1019:986]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4660.4]
  assign NV_NVDLA_CACC_CALC_int8_29_io_in_op_valid = io_mac_b2accu_mask_13 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4661.4]
  assign NV_NVDLA_CACC_CALC_int8_29_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4662.4]
  assign NV_NVDLA_CACC_CALC_int8_29_io_in_valid = io_mac_b2accu_mask_13; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4663.4]
  assign NV_NVDLA_CACC_CALC_int8_30_reset = reset; // @[:@4305.4]
  assign NV_NVDLA_CACC_CALC_int8_30_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4669.4]
  assign NV_NVDLA_CACC_CALC_int8_30_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4670.4]
  assign NV_NVDLA_CACC_CALC_int8_30_io_in_data = io_mac_b2accu_data_14; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4671.4]
  assign NV_NVDLA_CACC_CALC_int8_30_io_in_op = io_abuf_rd_data[1053:1020]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4672.4]
  assign NV_NVDLA_CACC_CALC_int8_30_io_in_op_valid = io_mac_b2accu_mask_14 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4673.4]
  assign NV_NVDLA_CACC_CALC_int8_30_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4674.4]
  assign NV_NVDLA_CACC_CALC_int8_30_io_in_valid = io_mac_b2accu_mask_14; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4675.4]
  assign NV_NVDLA_CACC_CALC_int8_31_reset = reset; // @[:@4308.4]
  assign NV_NVDLA_CACC_CALC_int8_31_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_NVDLA_CACC_calculator.scala 113:42:@4681.4]
  assign NV_NVDLA_CACC_CALC_int8_31_io_cfg_truncate = io_cfg_truncate; // @[NV_NVDLA_CACC_calculator.scala 114:40:@4682.4]
  assign NV_NVDLA_CACC_CALC_int8_31_io_in_data = io_mac_b2accu_data_15; // @[NV_NVDLA_CACC_calculator.scala 115:35:@4683.4]
  assign NV_NVDLA_CACC_CALC_int8_31_io_in_op = io_abuf_rd_data[1087:1054]; // @[NV_NVDLA_CACC_calculator.scala 116:33:@4684.4]
  assign NV_NVDLA_CACC_CALC_int8_31_io_in_op_valid = io_mac_b2accu_mask_15 & io_accu_ctrl_ram_valid; // @[NV_NVDLA_CACC_calculator.scala 117:39:@4685.4]
  assign NV_NVDLA_CACC_CALC_int8_31_io_in_sel = _T_291 & _T_295; // @[NV_NVDLA_CACC_calculator.scala 118:34:@4686.4]
  assign NV_NVDLA_CACC_CALC_int8_31_io_in_valid = io_mac_b2accu_mask_15; // @[NV_NVDLA_CACC_calculator.scala 119:36:@4687.4]
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
  _T_283 = _RAND_0[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_287 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_289 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_291 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_679 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_687 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_690 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_695 = _RAND_7[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_698 = _RAND_8[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_703 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_706 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_711 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_714 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_719 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_722 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_1121 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_1124 = _RAND_16[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {34{`RANDOM}};
  _T_1157 = _RAND_17[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {32{`RANDOM}};
  _T_1190 = _RAND_18[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_1193 = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_1199 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_1202 = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_1206 = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_1209 = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  _T_1348_0 = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  _T_1348_1 = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  _T_1348_2 = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  _T_1348_3 = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  _T_1348_4 = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  _T_1348_5 = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  _T_1348_6 = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  _T_1348_7 = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  _T_1348_8 = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  _T_1348_9 = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  _T_1348_10 = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  _T_1348_11 = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  _T_1348_12 = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  _T_1348_13 = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  _T_1348_14 = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  _T_1348_15 = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  _T_1348_16 = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  _T_1348_17 = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  _T_1348_18 = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  _T_1348_19 = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  _T_1348_20 = _RAND_44[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  _T_1348_21 = _RAND_45[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  _T_1348_22 = _RAND_46[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  _T_1348_23 = _RAND_47[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  _T_1348_24 = _RAND_48[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  _T_1348_25 = _RAND_49[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  _T_1348_26 = _RAND_50[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  _T_1348_27 = _RAND_51[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  _T_1348_28 = _RAND_52[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  _T_1348_29 = _RAND_53[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  _T_1348_30 = _RAND_54[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  _T_1348_31 = _RAND_55[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  _T_1451 = _RAND_56[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  _T_1527 = _RAND_57[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_283 <= 13'h0;
    end else begin
      if (io_accu_ctrl_pd_valid) begin
        _T_283 <= io_accu_ctrl_pd_bits;
      end
    end
    _T_287 <= io_mac_b2accu_pvld | io_mac_a2accu_pvld;
    _T_289 <= _T_287;
    _T_291 <= _T_289;
    if (reset) begin
      _T_679 <= 1'h0;
    end else begin
      _T_679 <= _T_291;
    end
    if (reset) begin
      _T_687 <= 1'h0;
    end else begin
      _T_687 <= _T_484;
    end
    if (reset) begin
      _T_690 <= 1'h0;
    end else begin
      _T_690 <= _T_687;
    end
    if (reset) begin
      _T_695 <= 6'h0;
    end else begin
      if (_T_291) begin
        _T_695 <= _T_292;
      end
    end
    if (reset) begin
      _T_698 <= 6'h0;
    end else begin
      if (_T_679) begin
        _T_698 <= _T_695;
      end
    end
    if (reset) begin
      _T_703 <= 1'h0;
    end else begin
      _T_703 <= _T_482;
    end
    if (reset) begin
      _T_706 <= 1'h0;
    end else begin
      _T_706 <= _T_703;
    end
    if (reset) begin
      _T_711 <= 1'h0;
    end else begin
      if (_T_482) begin
        _T_711 <= _T_294;
      end
    end
    if (reset) begin
      _T_714 <= 1'h0;
    end else begin
      if (_T_703) begin
        _T_714 <= _T_711;
      end
    end
    if (reset) begin
      _T_719 <= 1'h0;
    end else begin
      if (_T_482) begin
        _T_719 <= _T_296;
      end
    end
    if (reset) begin
      _T_722 <= 1'h0;
    end else begin
      if (_T_703) begin
        _T_722 <= _T_719;
      end
    end
    if (reset) begin
      _T_1121 <= 1'h0;
    end else begin
      _T_1121 <= _T_690;
    end
    if (reset) begin
      _T_1124 <= 6'h0;
    end else begin
      if (_T_690) begin
        _T_1124 <= _T_698;
      end
    end
    if (_T_690) begin
      _T_1157 <= _T_1155;
    end
    if (_T_706) begin
      _T_1190 <= _T_1188;
    end
    if (reset) begin
      _T_1193 <= 1'h0;
    end else begin
      _T_1193 <= _T_706;
    end
    if (reset) begin
      _T_1199 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1199 <= _T_714;
      end
    end
    if (reset) begin
      _T_1202 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1202 <= _T_722;
      end
    end
    if (reset) begin
      _T_1206 <= 1'h0;
    end else begin
      _T_1206 <= _T_706;
    end
    if (reset) begin
      _T_1209 <= 1'h1;
    end else begin
      if (_T_706) begin
        _T_1209 <= _T_1452;
      end
    end
    if (reset) begin
      _T_1348_0 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_0 <= _T_488_0;
      end
    end
    if (reset) begin
      _T_1348_1 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_1 <= _T_488_1;
      end
    end
    if (reset) begin
      _T_1348_2 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_2 <= _T_488_2;
      end
    end
    if (reset) begin
      _T_1348_3 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_3 <= _T_488_3;
      end
    end
    if (reset) begin
      _T_1348_4 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_4 <= _T_488_4;
      end
    end
    if (reset) begin
      _T_1348_5 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_5 <= _T_488_5;
      end
    end
    if (reset) begin
      _T_1348_6 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_6 <= _T_488_6;
      end
    end
    if (reset) begin
      _T_1348_7 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_7 <= _T_488_7;
      end
    end
    if (reset) begin
      _T_1348_8 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_8 <= _T_488_8;
      end
    end
    if (reset) begin
      _T_1348_9 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_9 <= _T_488_9;
      end
    end
    if (reset) begin
      _T_1348_10 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_10 <= _T_488_10;
      end
    end
    if (reset) begin
      _T_1348_11 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_11 <= _T_488_11;
      end
    end
    if (reset) begin
      _T_1348_12 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_12 <= _T_488_12;
      end
    end
    if (reset) begin
      _T_1348_13 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_13 <= _T_488_13;
      end
    end
    if (reset) begin
      _T_1348_14 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_14 <= _T_488_14;
      end
    end
    if (reset) begin
      _T_1348_15 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_15 <= _T_488_15;
      end
    end
    if (reset) begin
      _T_1348_16 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_16 <= _T_488_16;
      end
    end
    if (reset) begin
      _T_1348_17 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_17 <= _T_488_17;
      end
    end
    if (reset) begin
      _T_1348_18 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_18 <= _T_488_18;
      end
    end
    if (reset) begin
      _T_1348_19 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_19 <= _T_488_19;
      end
    end
    if (reset) begin
      _T_1348_20 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_20 <= _T_488_20;
      end
    end
    if (reset) begin
      _T_1348_21 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_21 <= _T_488_21;
      end
    end
    if (reset) begin
      _T_1348_22 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_22 <= _T_488_22;
      end
    end
    if (reset) begin
      _T_1348_23 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_23 <= _T_488_23;
      end
    end
    if (reset) begin
      _T_1348_24 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_24 <= _T_488_24;
      end
    end
    if (reset) begin
      _T_1348_25 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_25 <= _T_488_25;
      end
    end
    if (reset) begin
      _T_1348_26 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_26 <= _T_488_26;
      end
    end
    if (reset) begin
      _T_1348_27 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_27 <= _T_488_27;
      end
    end
    if (reset) begin
      _T_1348_28 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_28 <= _T_488_28;
      end
    end
    if (reset) begin
      _T_1348_29 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_29 <= _T_488_29;
      end
    end
    if (reset) begin
      _T_1348_30 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_30 <= _T_488_30;
      end
    end
    if (reset) begin
      _T_1348_31 <= 1'h0;
    end else begin
      if (_T_706) begin
        _T_1348_31 <= _T_488_31;
      end
    end
    if (reset) begin
      _T_1451 <= 1'h0;
    end else begin
      _T_1451 <= _T_1455;
    end
    if (reset) begin
      _T_1527 <= 32'h0;
    end else begin
      if (_T_1544) begin
        if (_T_1451) begin
          _T_1527 <= _T_1524;
        end else begin
          if (_T_1531) begin
            _T_1527 <= 32'hffffffff;
          end else begin
            _T_1527 <= _T_1529;
          end
        end
      end
    end
  end
endmodule
module NV_NVDLA_CACC_delivery_ctrl( // @[:@5251.2]
  input           reset, // @[:@5253.4]
  input           io_nvdla_core_clk, // @[:@5254.4]
  input           io_dbuf_rd_ready, // @[:@5254.4]
  output          io_dbuf_rd_addr_valid, // @[:@5254.4]
  output [5:0]    io_dbuf_rd_addr_bits, // @[:@5254.4]
  output          io_dbuf_rd_layer_end, // @[:@5254.4]
  output          io_dbuf_wr_addr_valid, // @[:@5254.4]
  output [5:0]    io_dbuf_wr_addr_bits, // @[:@5254.4]
  output [1023:0] io_dbuf_wr_data, // @[:@5254.4]
  output          io_dp2reg_done, // @[:@5254.4]
  input  [1023:0] io_dlv_data, // @[:@5254.4]
  input  [1:0]    io_dlv_pd, // @[:@5254.4]
  input           io_dlv_valid // @[:@5254.4]
);
  wire  _T_33; // @[NV_NVDLA_CACC_delivery_ctrl.scala 60:31:@5256.4]
  wire  _T_34; // @[NV_NVDLA_CACC_delivery_ctrl.scala 61:30:@5257.4]
  reg [5:0] _T_37; // @[NV_NVDLA_CACC_delivery_ctrl.scala 66:31:@5258.4]
  reg [31:0] _RAND_0;
  reg [5:0] _T_40; // @[NV_NVDLA_CACC_delivery_ctrl.scala 67:31:@5259.4]
  reg [31:0] _RAND_1;
  reg  _T_43; // @[NV_NVDLA_CACC_delivery_ctrl.scala 68:29:@5260.4]
  reg [31:0] _RAND_2;
  reg [1023:0] _T_46; // @[NV_NVDLA_CACC_delivery_ctrl.scala 69:31:@5261.4]
  reg [1023:0] _RAND_3;
  wire [6:0] _T_48; // @[NV_NVDLA_CACC_delivery_ctrl.scala 71:39:@5262.4]
  wire [5:0] _T_49; // @[NV_NVDLA_CACC_delivery_ctrl.scala 71:39:@5263.4]
  wire [5:0] _GEN_0; // @[NV_NVDLA_CACC_delivery_ctrl.scala 74:19:@5265.4]
  wire [5:0] _GEN_1; // @[NV_NVDLA_CACC_delivery_ctrl.scala 74:19:@5265.4]
  wire [1023:0] _GEN_2; // @[NV_NVDLA_CACC_delivery_ctrl.scala 74:19:@5265.4]
  reg  _T_55; // @[NV_NVDLA_CACC_delivery_ctrl.scala 90:71:@5274.4]
  reg [31:0] _RAND_4;
  reg  _T_60; // @[NV_NVDLA_CACC_delivery_ctrl.scala 92:70:@5276.4]
  reg [31:0] _RAND_5;
  wire  _GEN_3; // @[NV_NVDLA_CACC_delivery_ctrl.scala 99:30:@5280.4]
  reg [63:0] _T_65; // @[NV_NVDLA_CACC_delivery_ctrl.scala 109:27:@5284.4]
  reg [63:0] _RAND_6;
  wire  _T_67; // @[NV_NVDLA_CACC_delivery_ctrl.scala 111:27:@5285.4]
  wire  _T_80; // @[NV_NVDLA_CACC_delivery_ctrl.scala 123:34:@5297.4]
  wire [63:0] _GEN_8; // @[NV_NVDLA_CACC_delivery_ctrl.scala 114:35:@5287.4]
  wire [64:0] _T_71; // @[NV_NVDLA_CACC_delivery_ctrl.scala 114:35:@5287.4]
  wire [63:0] _T_72; // @[NV_NVDLA_CACC_delivery_ctrl.scala 114:35:@5288.4]
  wire [63:0] _GEN_9; // @[NV_NVDLA_CACC_delivery_ctrl.scala 114:54:@5289.4]
  wire [64:0] _T_73; // @[NV_NVDLA_CACC_delivery_ctrl.scala 114:54:@5289.4]
  wire [64:0] _T_74; // @[NV_NVDLA_CACC_delivery_ctrl.scala 114:54:@5290.4]
  wire [63:0] _T_75; // @[NV_NVDLA_CACC_delivery_ctrl.scala 114:54:@5291.4]
  wire  _T_76; // @[NV_NVDLA_CACC_delivery_ctrl.scala 116:25:@5292.4]
  wire [63:0] _GEN_4; // @[NV_NVDLA_CACC_delivery_ctrl.scala 116:46:@5293.4]
  reg [5:0] _T_79; // @[NV_NVDLA_CACC_delivery_ctrl.scala 121:31:@5296.4]
  reg [31:0] _RAND_7;
  wire [6:0] _T_82; // @[NV_NVDLA_CACC_delivery_ctrl.scala 124:45:@5299.4]
  wire [5:0] _T_83; // @[NV_NVDLA_CACC_delivery_ctrl.scala 124:45:@5300.4]
  wire  _T_85; // @[NV_NVDLA_CACC_delivery_ctrl.scala 125:33:@5301.4]
  wire  _T_86; // @[NV_NVDLA_CACC_delivery_ctrl.scala 125:18:@5302.4]
  wire [5:0] _GEN_5; // @[NV_NVDLA_CACC_delivery_ctrl.scala 129:14:@5306.4]
  wire  _T_88; // @[NV_NVDLA_CACC_delivery_ctrl.scala 134:34:@5309.4]
  wire  _T_89; // @[NV_NVDLA_CACC_delivery_ctrl.scala 134:51:@5310.4]
  reg  _T_92; // @[NV_NVDLA_CACC_delivery_ctrl.scala 135:26:@5311.4]
  reg [31:0] _RAND_8;
  reg  _T_95; // @[NV_NVDLA_CACC_delivery_ctrl.scala 138:31:@5314.4]
  reg [31:0] _RAND_9;
  reg  _T_98; // @[NV_NVDLA_CACC_delivery_ctrl.scala 139:31:@5315.4]
  reg [31:0] _RAND_10;
  reg [5:0] _T_101; // @[NV_NVDLA_CACC_delivery_ctrl.scala 140:32:@5316.4]
  reg [31:0] _RAND_11;
  reg [5:0] _T_104; // @[NV_NVDLA_CACC_delivery_ctrl.scala 141:32:@5317.4]
  reg [31:0] _RAND_12;
  wire  _T_107; // @[NV_NVDLA_CACC_delivery_ctrl.scala 145:51:@5320.4]
  wire  _T_108; // @[NV_NVDLA_CACC_delivery_ctrl.scala 145:27:@5321.4]
  wire  _T_109; // @[NV_NVDLA_CACC_delivery_ctrl.scala 145:74:@5322.4]
  wire  _T_110; // @[NV_NVDLA_CACC_delivery_ctrl.scala 146:47:@5323.4]
  wire  _T_113; // @[NV_NVDLA_CACC_delivery_ctrl.scala 146:73:@5324.4]
  wire  _T_114; // @[NV_NVDLA_CACC_delivery_ctrl.scala 146:29:@5325.4]
  wire  _T_115; // @[NV_NVDLA_CACC_delivery_ctrl.scala 147:47:@5326.4]
  wire  _T_118; // @[NV_NVDLA_CACC_delivery_ctrl.scala 147:73:@5327.4]
  wire  _T_119; // @[NV_NVDLA_CACC_delivery_ctrl.scala 147:29:@5328.4]
  wire  _T_120; // @[NV_NVDLA_CACC_delivery_ctrl.scala 148:38:@5329.4]
  wire  _T_121; // @[NV_NVDLA_CACC_delivery_ctrl.scala 148:36:@5330.4]
  wire  _T_122; // @[NV_NVDLA_CACC_delivery_ctrl.scala 148:72:@5331.4]
  wire  _T_123; // @[NV_NVDLA_CACC_delivery_ctrl.scala 148:57:@5332.4]
  wire  _T_124; // @[NV_NVDLA_CACC_delivery_ctrl.scala 148:101:@5333.4]
  wire  _T_125; // @[NV_NVDLA_CACC_delivery_ctrl.scala 148:87:@5334.4]
  wire  _T_126; // @[NV_NVDLA_CACC_delivery_ctrl.scala 149:36:@5335.4]
  wire  _T_127; // @[NV_NVDLA_CACC_delivery_ctrl.scala 149:57:@5336.4]
  wire  _T_128; // @[NV_NVDLA_CACC_delivery_ctrl.scala 149:55:@5337.4]
  wire [5:0] _T_129; // @[NV_NVDLA_CACC_delivery_ctrl.scala 150:30:@5338.4]
  wire [5:0] _GEN_6; // @[NV_NVDLA_CACC_delivery_ctrl.scala 156:22:@5342.4]
  wire [5:0] _GEN_7; // @[NV_NVDLA_CACC_delivery_ctrl.scala 159:22:@5345.4]
  assign _T_33 = io_dlv_pd[0]; // @[NV_NVDLA_CACC_delivery_ctrl.scala 60:31:@5256.4]
  assign _T_34 = io_dlv_pd[1]; // @[NV_NVDLA_CACC_delivery_ctrl.scala 61:30:@5257.4]
  assign _T_48 = _T_37 + 6'h1; // @[NV_NVDLA_CACC_delivery_ctrl.scala 71:39:@5262.4]
  assign _T_49 = _T_37 + 6'h1; // @[NV_NVDLA_CACC_delivery_ctrl.scala 71:39:@5263.4]
  assign _GEN_0 = io_dlv_valid ? _T_49 : _T_37; // @[NV_NVDLA_CACC_delivery_ctrl.scala 74:19:@5265.4]
  assign _GEN_1 = io_dlv_valid ? _T_37 : _T_40; // @[NV_NVDLA_CACC_delivery_ctrl.scala 74:19:@5265.4]
  assign _GEN_2 = io_dlv_valid ? io_dlv_data : _T_46; // @[NV_NVDLA_CACC_delivery_ctrl.scala 74:19:@5265.4]
  assign _GEN_3 = io_dlv_valid ? 1'h1 : _T_60; // @[NV_NVDLA_CACC_delivery_ctrl.scala 99:30:@5280.4]
  assign _T_67 = _T_55 ? _T_60 : 1'h0; // @[NV_NVDLA_CACC_delivery_ctrl.scala 111:27:@5285.4]
  assign _T_80 = io_dbuf_rd_addr_valid & io_dbuf_rd_ready; // @[NV_NVDLA_CACC_delivery_ctrl.scala 123:34:@5297.4]
  assign _GEN_8 = {{63'd0}, _T_67}; // @[NV_NVDLA_CACC_delivery_ctrl.scala 114:35:@5287.4]
  assign _T_71 = _T_65 + _GEN_8; // @[NV_NVDLA_CACC_delivery_ctrl.scala 114:35:@5287.4]
  assign _T_72 = _T_65 + _GEN_8; // @[NV_NVDLA_CACC_delivery_ctrl.scala 114:35:@5288.4]
  assign _GEN_9 = {{63'd0}, _T_80}; // @[NV_NVDLA_CACC_delivery_ctrl.scala 114:54:@5289.4]
  assign _T_73 = _T_72 - _GEN_9; // @[NV_NVDLA_CACC_delivery_ctrl.scala 114:54:@5289.4]
  assign _T_74 = $unsigned(_T_73); // @[NV_NVDLA_CACC_delivery_ctrl.scala 114:54:@5290.4]
  assign _T_75 = _T_74[63:0]; // @[NV_NVDLA_CACC_delivery_ctrl.scala 114:54:@5291.4]
  assign _T_76 = _T_55 | _T_80; // @[NV_NVDLA_CACC_delivery_ctrl.scala 116:25:@5292.4]
  assign _GEN_4 = _T_76 ? _T_75 : _T_65; // @[NV_NVDLA_CACC_delivery_ctrl.scala 116:46:@5293.4]
  assign _T_82 = _T_79 + 6'h1; // @[NV_NVDLA_CACC_delivery_ctrl.scala 124:45:@5299.4]
  assign _T_83 = _T_79 + 6'h1; // @[NV_NVDLA_CACC_delivery_ctrl.scala 124:45:@5300.4]
  assign _T_85 = _T_65 != 64'h0; // @[NV_NVDLA_CACC_delivery_ctrl.scala 125:33:@5301.4]
  assign _T_86 = ~ _T_85; // @[NV_NVDLA_CACC_delivery_ctrl.scala 125:18:@5302.4]
  assign _GEN_5 = _T_80 ? _T_83 : _T_79; // @[NV_NVDLA_CACC_delivery_ctrl.scala 129:14:@5306.4]
  assign _T_88 = io_dlv_valid & _T_33; // @[NV_NVDLA_CACC_delivery_ctrl.scala 134:34:@5309.4]
  assign _T_89 = _T_88 & _T_34; // @[NV_NVDLA_CACC_delivery_ctrl.scala 134:51:@5310.4]
  assign _T_107 = io_dbuf_rd_addr_bits == _T_101; // @[NV_NVDLA_CACC_delivery_ctrl.scala 145:51:@5320.4]
  assign _T_108 = _T_80 & _T_107; // @[NV_NVDLA_CACC_delivery_ctrl.scala 145:27:@5321.4]
  assign _T_109 = _T_108 & _T_95; // @[NV_NVDLA_CACC_delivery_ctrl.scala 145:74:@5322.4]
  assign _T_110 = _T_98 | _T_89; // @[NV_NVDLA_CACC_delivery_ctrl.scala 146:47:@5323.4]
  assign _T_113 = _T_109 ? 1'h0 : _T_95; // @[NV_NVDLA_CACC_delivery_ctrl.scala 146:73:@5324.4]
  assign _T_114 = _T_110 ? 1'h1 : _T_113; // @[NV_NVDLA_CACC_delivery_ctrl.scala 146:29:@5325.4]
  assign _T_115 = _T_95 & _T_89; // @[NV_NVDLA_CACC_delivery_ctrl.scala 147:47:@5326.4]
  assign _T_118 = _T_109 ? 1'h0 : _T_98; // @[NV_NVDLA_CACC_delivery_ctrl.scala 147:73:@5327.4]
  assign _T_119 = _T_115 ? 1'h1 : _T_118; // @[NV_NVDLA_CACC_delivery_ctrl.scala 147:29:@5328.4]
  assign _T_120 = ~ _T_95; // @[NV_NVDLA_CACC_delivery_ctrl.scala 148:38:@5329.4]
  assign _T_121 = _T_89 & _T_120; // @[NV_NVDLA_CACC_delivery_ctrl.scala 148:36:@5330.4]
  assign _T_122 = _T_89 & _T_109; // @[NV_NVDLA_CACC_delivery_ctrl.scala 148:72:@5331.4]
  assign _T_123 = _T_121 | _T_122; // @[NV_NVDLA_CACC_delivery_ctrl.scala 148:57:@5332.4]
  assign _T_124 = _T_109 & _T_98; // @[NV_NVDLA_CACC_delivery_ctrl.scala 148:101:@5333.4]
  assign _T_125 = _T_123 | _T_124; // @[NV_NVDLA_CACC_delivery_ctrl.scala 148:87:@5334.4]
  assign _T_126 = _T_89 & _T_95; // @[NV_NVDLA_CACC_delivery_ctrl.scala 149:36:@5335.4]
  assign _T_127 = ~ _T_109; // @[NV_NVDLA_CACC_delivery_ctrl.scala 149:57:@5336.4]
  assign _T_128 = _T_126 & _T_127; // @[NV_NVDLA_CACC_delivery_ctrl.scala 149:55:@5337.4]
  assign _T_129 = _T_98 ? _T_104 : _T_37; // @[NV_NVDLA_CACC_delivery_ctrl.scala 150:30:@5338.4]
  assign _GEN_6 = _T_125 ? _T_129 : _T_101; // @[NV_NVDLA_CACC_delivery_ctrl.scala 156:22:@5342.4]
  assign _GEN_7 = _T_128 ? _T_37 : _T_104; // @[NV_NVDLA_CACC_delivery_ctrl.scala 159:22:@5345.4]
  assign io_dbuf_rd_addr_valid = ~ _T_86; // @[NV_NVDLA_CACC_delivery_ctrl.scala 126:23:@5304.4]
  assign io_dbuf_rd_addr_bits = _T_79; // @[NV_NVDLA_CACC_delivery_ctrl.scala 127:22:@5305.4]
  assign io_dbuf_rd_layer_end = _T_108 & _T_95; // @[NV_NVDLA_CACC_delivery_ctrl.scala 152:22:@5339.4]
  assign io_dbuf_wr_addr_valid = _T_43; // @[NV_NVDLA_CACC_delivery_ctrl.scala 80:23:@5270.4]
  assign io_dbuf_wr_addr_bits = _T_40; // @[NV_NVDLA_CACC_delivery_ctrl.scala 81:22:@5271.4]
  assign io_dbuf_wr_data = _T_46; // @[NV_NVDLA_CACC_delivery_ctrl.scala 82:17:@5272.4]
  assign io_dp2reg_done = _T_92; // @[NV_NVDLA_CACC_delivery_ctrl.scala 135:16:@5313.4]
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
  _T_37 = _RAND_0[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_40 = _RAND_1[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_43 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {32{`RANDOM}};
  _T_46 = _RAND_3[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_55 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_60 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {2{`RANDOM}};
  _T_65 = _RAND_6[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_79 = _RAND_7[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_92 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_95 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_98 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_101 = _RAND_11[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_104 = _RAND_12[5:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_37 <= 6'h0;
    end else begin
      if (io_dlv_valid) begin
        _T_37 <= _T_49;
      end
    end
    if (reset) begin
      _T_40 <= 6'h0;
    end else begin
      if (io_dlv_valid) begin
        _T_40 <= _T_37;
      end
    end
    if (reset) begin
      _T_43 <= 1'h0;
    end else begin
      _T_43 <= io_dlv_valid;
    end
    if (reset) begin
      _T_46 <= 1024'h0;
    end else begin
      if (io_dlv_valid) begin
        _T_46 <= io_dlv_data;
      end
    end
    if (reset) begin
      _T_55 <= 1'h0;
    end else begin
      _T_55 <= io_dlv_valid;
    end
    if (reset) begin
      _T_60 <= 1'h0;
    end else begin
      if (io_dlv_valid) begin
        _T_60 <= 1'h1;
      end
    end
    if (reset) begin
      _T_65 <= 64'h0;
    end else begin
      if (_T_76) begin
        _T_65 <= _T_75;
      end
    end
    if (reset) begin
      _T_79 <= 6'h0;
    end else begin
      if (_T_80) begin
        _T_79 <= _T_83;
      end
    end
    if (reset) begin
      _T_92 <= 1'h0;
    end else begin
      _T_92 <= _T_89;
    end
    if (reset) begin
      _T_95 <= 1'h0;
    end else begin
      if (_T_110) begin
        _T_95 <= 1'h1;
      end else begin
        if (_T_109) begin
          _T_95 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_98 <= 1'h0;
    end else begin
      if (_T_115) begin
        _T_98 <= 1'h1;
      end else begin
        if (_T_109) begin
          _T_98 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_101 <= 6'h0;
    end else begin
      if (_T_125) begin
        if (_T_98) begin
          _T_101 <= _T_104;
        end else begin
          _T_101 <= _T_37;
        end
      end
    end
    if (reset) begin
      _T_104 <= 6'h0;
    end else begin
      if (_T_128) begin
        _T_104 <= _T_37;
      end
    end
  end
endmodule
module nv_ram_rws_1( // @[:@5349.2]
  input           io_clk, // @[:@5352.4]
  input           io_re, // @[:@5352.4]
  input           io_we, // @[:@5352.4]
  input  [5:0]    io_ra, // @[:@5352.4]
  input  [5:0]    io_wa, // @[:@5352.4]
  input  [1023:0] io_di, // @[:@5352.4]
  output [1023:0] io_dout // @[:@5352.4]
);
  reg [1023:0] _T_22_0; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_0;
  reg [1023:0] _T_22_1; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_1;
  reg [1023:0] _T_22_2; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_2;
  reg [1023:0] _T_22_3; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_3;
  reg [1023:0] _T_22_4; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_4;
  reg [1023:0] _T_22_5; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_5;
  reg [1023:0] _T_22_6; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_6;
  reg [1023:0] _T_22_7; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_7;
  reg [1023:0] _T_22_8; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_8;
  reg [1023:0] _T_22_9; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_9;
  reg [1023:0] _T_22_10; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_10;
  reg [1023:0] _T_22_11; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_11;
  reg [1023:0] _T_22_12; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_12;
  reg [1023:0] _T_22_13; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_13;
  reg [1023:0] _T_22_14; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_14;
  reg [1023:0] _T_22_15; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_15;
  reg [1023:0] _T_22_16; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_16;
  reg [1023:0] _T_22_17; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_17;
  reg [1023:0] _T_22_18; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_18;
  reg [1023:0] _T_22_19; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_19;
  reg [1023:0] _T_22_20; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_20;
  reg [1023:0] _T_22_21; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_21;
  reg [1023:0] _T_22_22; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_22;
  reg [1023:0] _T_22_23; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_23;
  reg [1023:0] _T_22_24; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_24;
  reg [1023:0] _T_22_25; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_25;
  reg [1023:0] _T_22_26; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_26;
  reg [1023:0] _T_22_27; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_27;
  reg [1023:0] _T_22_28; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_28;
  reg [1023:0] _T_22_29; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_29;
  reg [1023:0] _T_22_30; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_30;
  reg [1023:0] _T_22_31; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_31;
  reg [1023:0] _T_22_32; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_32;
  reg [1023:0] _T_22_33; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_33;
  reg [1023:0] _T_22_34; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_34;
  reg [1023:0] _T_22_35; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_35;
  reg [1023:0] _T_22_36; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_36;
  reg [1023:0] _T_22_37; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_37;
  reg [1023:0] _T_22_38; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_38;
  reg [1023:0] _T_22_39; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_39;
  reg [1023:0] _T_22_40; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_40;
  reg [1023:0] _T_22_41; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_41;
  reg [1023:0] _T_22_42; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_42;
  reg [1023:0] _T_22_43; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_43;
  reg [1023:0] _T_22_44; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_44;
  reg [1023:0] _T_22_45; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_45;
  reg [1023:0] _T_22_46; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_46;
  reg [1023:0] _T_22_47; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_47;
  reg [1023:0] _T_22_48; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_48;
  reg [1023:0] _T_22_49; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_49;
  reg [1023:0] _T_22_50; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_50;
  reg [1023:0] _T_22_51; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_51;
  reg [1023:0] _T_22_52; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_52;
  reg [1023:0] _T_22_53; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_53;
  reg [1023:0] _T_22_54; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_54;
  reg [1023:0] _T_22_55; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_55;
  reg [1023:0] _T_22_56; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_56;
  reg [1023:0] _T_22_57; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_57;
  reg [1023:0] _T_22_58; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_58;
  reg [1023:0] _T_22_59; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_59;
  reg [1023:0] _T_22_60; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_60;
  reg [1023:0] _T_22_61; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_61;
  reg [1023:0] _T_22_62; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_62;
  reg [1023:0] _T_22_63; // @[nv_ram_rws.scala 27:18:@5354.4]
  reg [1023:0] _RAND_63;
  reg [5:0] _T_90; // @[nv_ram_rws.scala 28:19:@5355.4]
  reg [31:0] _RAND_64;
  wire [1023:0] _GEN_0; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_1; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_2; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_3; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_4; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_5; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_6; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_7; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_8; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_9; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_10; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_11; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_12; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_13; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_14; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_15; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_16; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_17; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_18; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_19; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_20; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_21; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_22; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_23; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_24; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_25; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_26; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_27; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_28; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_29; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_30; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_31; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_32; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_33; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_34; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_35; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_36; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_37; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_38; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_39; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_40; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_41; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_42; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_43; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_44; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_45; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_46; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_47; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_48; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_49; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_50; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_51; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_52; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_53; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_54; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_55; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_56; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_57; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_58; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_59; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_60; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_61; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_62; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_63; // @[nv_ram_rws.scala 31:20:@5357.6]
  wire [1023:0] _GEN_130; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_131; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_132; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_133; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_134; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_135; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_136; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_137; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_138; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_139; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_140; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_141; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_142; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_143; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_144; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_145; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_146; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_147; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_148; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_149; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_150; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_151; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_152; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_153; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_154; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_155; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_156; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_157; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_158; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_159; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_160; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_161; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_162; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_163; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_164; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_165; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_166; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_167; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_168; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_169; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_170; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_171; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_172; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_173; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_174; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_175; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_176; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_177; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_178; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_179; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_180; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_181; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_182; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_183; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_184; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_185; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_186; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_187; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_188; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_189; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_190; // @[nv_ram_rws.scala 36:13:@5362.4]
  wire [1023:0] _GEN_191; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_0 = 6'h0 == io_wa ? io_di : _T_22_0; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_1 = 6'h1 == io_wa ? io_di : _T_22_1; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_2 = 6'h2 == io_wa ? io_di : _T_22_2; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_3 = 6'h3 == io_wa ? io_di : _T_22_3; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_4 = 6'h4 == io_wa ? io_di : _T_22_4; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_5 = 6'h5 == io_wa ? io_di : _T_22_5; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_6 = 6'h6 == io_wa ? io_di : _T_22_6; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_7 = 6'h7 == io_wa ? io_di : _T_22_7; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_8 = 6'h8 == io_wa ? io_di : _T_22_8; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_9 = 6'h9 == io_wa ? io_di : _T_22_9; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_10 = 6'ha == io_wa ? io_di : _T_22_10; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_11 = 6'hb == io_wa ? io_di : _T_22_11; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_12 = 6'hc == io_wa ? io_di : _T_22_12; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_13 = 6'hd == io_wa ? io_di : _T_22_13; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_14 = 6'he == io_wa ? io_di : _T_22_14; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_15 = 6'hf == io_wa ? io_di : _T_22_15; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_16 = 6'h10 == io_wa ? io_di : _T_22_16; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_17 = 6'h11 == io_wa ? io_di : _T_22_17; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_18 = 6'h12 == io_wa ? io_di : _T_22_18; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_19 = 6'h13 == io_wa ? io_di : _T_22_19; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_20 = 6'h14 == io_wa ? io_di : _T_22_20; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_21 = 6'h15 == io_wa ? io_di : _T_22_21; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_22 = 6'h16 == io_wa ? io_di : _T_22_22; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_23 = 6'h17 == io_wa ? io_di : _T_22_23; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_24 = 6'h18 == io_wa ? io_di : _T_22_24; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_25 = 6'h19 == io_wa ? io_di : _T_22_25; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_26 = 6'h1a == io_wa ? io_di : _T_22_26; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_27 = 6'h1b == io_wa ? io_di : _T_22_27; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_28 = 6'h1c == io_wa ? io_di : _T_22_28; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_29 = 6'h1d == io_wa ? io_di : _T_22_29; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_30 = 6'h1e == io_wa ? io_di : _T_22_30; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_31 = 6'h1f == io_wa ? io_di : _T_22_31; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_32 = 6'h20 == io_wa ? io_di : _T_22_32; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_33 = 6'h21 == io_wa ? io_di : _T_22_33; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_34 = 6'h22 == io_wa ? io_di : _T_22_34; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_35 = 6'h23 == io_wa ? io_di : _T_22_35; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_36 = 6'h24 == io_wa ? io_di : _T_22_36; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_37 = 6'h25 == io_wa ? io_di : _T_22_37; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_38 = 6'h26 == io_wa ? io_di : _T_22_38; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_39 = 6'h27 == io_wa ? io_di : _T_22_39; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_40 = 6'h28 == io_wa ? io_di : _T_22_40; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_41 = 6'h29 == io_wa ? io_di : _T_22_41; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_42 = 6'h2a == io_wa ? io_di : _T_22_42; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_43 = 6'h2b == io_wa ? io_di : _T_22_43; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_44 = 6'h2c == io_wa ? io_di : _T_22_44; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_45 = 6'h2d == io_wa ? io_di : _T_22_45; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_46 = 6'h2e == io_wa ? io_di : _T_22_46; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_47 = 6'h2f == io_wa ? io_di : _T_22_47; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_48 = 6'h30 == io_wa ? io_di : _T_22_48; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_49 = 6'h31 == io_wa ? io_di : _T_22_49; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_50 = 6'h32 == io_wa ? io_di : _T_22_50; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_51 = 6'h33 == io_wa ? io_di : _T_22_51; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_52 = 6'h34 == io_wa ? io_di : _T_22_52; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_53 = 6'h35 == io_wa ? io_di : _T_22_53; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_54 = 6'h36 == io_wa ? io_di : _T_22_54; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_55 = 6'h37 == io_wa ? io_di : _T_22_55; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_56 = 6'h38 == io_wa ? io_di : _T_22_56; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_57 = 6'h39 == io_wa ? io_di : _T_22_57; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_58 = 6'h3a == io_wa ? io_di : _T_22_58; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_59 = 6'h3b == io_wa ? io_di : _T_22_59; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_60 = 6'h3c == io_wa ? io_di : _T_22_60; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_61 = 6'h3d == io_wa ? io_di : _T_22_61; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_62 = 6'h3e == io_wa ? io_di : _T_22_62; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_63 = 6'h3f == io_wa ? io_di : _T_22_63; // @[nv_ram_rws.scala 31:20:@5357.6]
  assign _GEN_130 = 6'h1 == _T_90 ? _T_22_1 : _T_22_0; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_131 = 6'h2 == _T_90 ? _T_22_2 : _GEN_130; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_132 = 6'h3 == _T_90 ? _T_22_3 : _GEN_131; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_133 = 6'h4 == _T_90 ? _T_22_4 : _GEN_132; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_134 = 6'h5 == _T_90 ? _T_22_5 : _GEN_133; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_135 = 6'h6 == _T_90 ? _T_22_6 : _GEN_134; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_136 = 6'h7 == _T_90 ? _T_22_7 : _GEN_135; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_137 = 6'h8 == _T_90 ? _T_22_8 : _GEN_136; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_138 = 6'h9 == _T_90 ? _T_22_9 : _GEN_137; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_139 = 6'ha == _T_90 ? _T_22_10 : _GEN_138; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_140 = 6'hb == _T_90 ? _T_22_11 : _GEN_139; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_141 = 6'hc == _T_90 ? _T_22_12 : _GEN_140; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_142 = 6'hd == _T_90 ? _T_22_13 : _GEN_141; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_143 = 6'he == _T_90 ? _T_22_14 : _GEN_142; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_144 = 6'hf == _T_90 ? _T_22_15 : _GEN_143; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_145 = 6'h10 == _T_90 ? _T_22_16 : _GEN_144; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_146 = 6'h11 == _T_90 ? _T_22_17 : _GEN_145; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_147 = 6'h12 == _T_90 ? _T_22_18 : _GEN_146; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_148 = 6'h13 == _T_90 ? _T_22_19 : _GEN_147; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_149 = 6'h14 == _T_90 ? _T_22_20 : _GEN_148; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_150 = 6'h15 == _T_90 ? _T_22_21 : _GEN_149; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_151 = 6'h16 == _T_90 ? _T_22_22 : _GEN_150; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_152 = 6'h17 == _T_90 ? _T_22_23 : _GEN_151; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_153 = 6'h18 == _T_90 ? _T_22_24 : _GEN_152; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_154 = 6'h19 == _T_90 ? _T_22_25 : _GEN_153; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_155 = 6'h1a == _T_90 ? _T_22_26 : _GEN_154; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_156 = 6'h1b == _T_90 ? _T_22_27 : _GEN_155; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_157 = 6'h1c == _T_90 ? _T_22_28 : _GEN_156; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_158 = 6'h1d == _T_90 ? _T_22_29 : _GEN_157; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_159 = 6'h1e == _T_90 ? _T_22_30 : _GEN_158; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_160 = 6'h1f == _T_90 ? _T_22_31 : _GEN_159; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_161 = 6'h20 == _T_90 ? _T_22_32 : _GEN_160; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_162 = 6'h21 == _T_90 ? _T_22_33 : _GEN_161; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_163 = 6'h22 == _T_90 ? _T_22_34 : _GEN_162; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_164 = 6'h23 == _T_90 ? _T_22_35 : _GEN_163; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_165 = 6'h24 == _T_90 ? _T_22_36 : _GEN_164; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_166 = 6'h25 == _T_90 ? _T_22_37 : _GEN_165; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_167 = 6'h26 == _T_90 ? _T_22_38 : _GEN_166; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_168 = 6'h27 == _T_90 ? _T_22_39 : _GEN_167; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_169 = 6'h28 == _T_90 ? _T_22_40 : _GEN_168; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_170 = 6'h29 == _T_90 ? _T_22_41 : _GEN_169; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_171 = 6'h2a == _T_90 ? _T_22_42 : _GEN_170; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_172 = 6'h2b == _T_90 ? _T_22_43 : _GEN_171; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_173 = 6'h2c == _T_90 ? _T_22_44 : _GEN_172; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_174 = 6'h2d == _T_90 ? _T_22_45 : _GEN_173; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_175 = 6'h2e == _T_90 ? _T_22_46 : _GEN_174; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_176 = 6'h2f == _T_90 ? _T_22_47 : _GEN_175; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_177 = 6'h30 == _T_90 ? _T_22_48 : _GEN_176; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_178 = 6'h31 == _T_90 ? _T_22_49 : _GEN_177; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_179 = 6'h32 == _T_90 ? _T_22_50 : _GEN_178; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_180 = 6'h33 == _T_90 ? _T_22_51 : _GEN_179; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_181 = 6'h34 == _T_90 ? _T_22_52 : _GEN_180; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_182 = 6'h35 == _T_90 ? _T_22_53 : _GEN_181; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_183 = 6'h36 == _T_90 ? _T_22_54 : _GEN_182; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_184 = 6'h37 == _T_90 ? _T_22_55 : _GEN_183; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_185 = 6'h38 == _T_90 ? _T_22_56 : _GEN_184; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_186 = 6'h39 == _T_90 ? _T_22_57 : _GEN_185; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_187 = 6'h3a == _T_90 ? _T_22_58 : _GEN_186; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_188 = 6'h3b == _T_90 ? _T_22_59 : _GEN_187; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_189 = 6'h3c == _T_90 ? _T_22_60 : _GEN_188; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_190 = 6'h3d == _T_90 ? _T_22_61 : _GEN_189; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign _GEN_191 = 6'h3e == _T_90 ? _T_22_62 : _GEN_190; // @[nv_ram_rws.scala 36:13:@5362.4]
  assign io_dout = 6'h3f == _T_90 ? _T_22_63 : _GEN_191; // @[nv_ram_rws.scala 36:13:@5362.4]
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
  _RAND_0 = {32{`RANDOM}};
  _T_22_0 = _RAND_0[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {32{`RANDOM}};
  _T_22_1 = _RAND_1[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {32{`RANDOM}};
  _T_22_2 = _RAND_2[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {32{`RANDOM}};
  _T_22_3 = _RAND_3[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {32{`RANDOM}};
  _T_22_4 = _RAND_4[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {32{`RANDOM}};
  _T_22_5 = _RAND_5[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {32{`RANDOM}};
  _T_22_6 = _RAND_6[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {32{`RANDOM}};
  _T_22_7 = _RAND_7[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {32{`RANDOM}};
  _T_22_8 = _RAND_8[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {32{`RANDOM}};
  _T_22_9 = _RAND_9[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {32{`RANDOM}};
  _T_22_10 = _RAND_10[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {32{`RANDOM}};
  _T_22_11 = _RAND_11[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {32{`RANDOM}};
  _T_22_12 = _RAND_12[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {32{`RANDOM}};
  _T_22_13 = _RAND_13[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {32{`RANDOM}};
  _T_22_14 = _RAND_14[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {32{`RANDOM}};
  _T_22_15 = _RAND_15[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {32{`RANDOM}};
  _T_22_16 = _RAND_16[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {32{`RANDOM}};
  _T_22_17 = _RAND_17[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {32{`RANDOM}};
  _T_22_18 = _RAND_18[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {32{`RANDOM}};
  _T_22_19 = _RAND_19[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {32{`RANDOM}};
  _T_22_20 = _RAND_20[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {32{`RANDOM}};
  _T_22_21 = _RAND_21[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {32{`RANDOM}};
  _T_22_22 = _RAND_22[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {32{`RANDOM}};
  _T_22_23 = _RAND_23[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {32{`RANDOM}};
  _T_22_24 = _RAND_24[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {32{`RANDOM}};
  _T_22_25 = _RAND_25[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {32{`RANDOM}};
  _T_22_26 = _RAND_26[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {32{`RANDOM}};
  _T_22_27 = _RAND_27[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {32{`RANDOM}};
  _T_22_28 = _RAND_28[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {32{`RANDOM}};
  _T_22_29 = _RAND_29[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {32{`RANDOM}};
  _T_22_30 = _RAND_30[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {32{`RANDOM}};
  _T_22_31 = _RAND_31[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {32{`RANDOM}};
  _T_22_32 = _RAND_32[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {32{`RANDOM}};
  _T_22_33 = _RAND_33[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {32{`RANDOM}};
  _T_22_34 = _RAND_34[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {32{`RANDOM}};
  _T_22_35 = _RAND_35[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {32{`RANDOM}};
  _T_22_36 = _RAND_36[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {32{`RANDOM}};
  _T_22_37 = _RAND_37[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {32{`RANDOM}};
  _T_22_38 = _RAND_38[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {32{`RANDOM}};
  _T_22_39 = _RAND_39[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {32{`RANDOM}};
  _T_22_40 = _RAND_40[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {32{`RANDOM}};
  _T_22_41 = _RAND_41[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {32{`RANDOM}};
  _T_22_42 = _RAND_42[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {32{`RANDOM}};
  _T_22_43 = _RAND_43[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {32{`RANDOM}};
  _T_22_44 = _RAND_44[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {32{`RANDOM}};
  _T_22_45 = _RAND_45[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {32{`RANDOM}};
  _T_22_46 = _RAND_46[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {32{`RANDOM}};
  _T_22_47 = _RAND_47[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {32{`RANDOM}};
  _T_22_48 = _RAND_48[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {32{`RANDOM}};
  _T_22_49 = _RAND_49[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {32{`RANDOM}};
  _T_22_50 = _RAND_50[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {32{`RANDOM}};
  _T_22_51 = _RAND_51[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {32{`RANDOM}};
  _T_22_52 = _RAND_52[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {32{`RANDOM}};
  _T_22_53 = _RAND_53[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {32{`RANDOM}};
  _T_22_54 = _RAND_54[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {32{`RANDOM}};
  _T_22_55 = _RAND_55[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {32{`RANDOM}};
  _T_22_56 = _RAND_56[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {32{`RANDOM}};
  _T_22_57 = _RAND_57[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {32{`RANDOM}};
  _T_22_58 = _RAND_58[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {32{`RANDOM}};
  _T_22_59 = _RAND_59[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {32{`RANDOM}};
  _T_22_60 = _RAND_60[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {32{`RANDOM}};
  _T_22_61 = _RAND_61[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {32{`RANDOM}};
  _T_22_62 = _RAND_62[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {32{`RANDOM}};
  _T_22_63 = _RAND_63[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  _T_90 = _RAND_64[5:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_clk) begin
    if (io_we) begin
      if (6'h0 == io_wa) begin
        _T_22_0 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h1 == io_wa) begin
        _T_22_1 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h2 == io_wa) begin
        _T_22_2 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h3 == io_wa) begin
        _T_22_3 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h4 == io_wa) begin
        _T_22_4 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h5 == io_wa) begin
        _T_22_5 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h6 == io_wa) begin
        _T_22_6 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h7 == io_wa) begin
        _T_22_7 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h8 == io_wa) begin
        _T_22_8 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h9 == io_wa) begin
        _T_22_9 <= io_di;
      end
    end
    if (io_we) begin
      if (6'ha == io_wa) begin
        _T_22_10 <= io_di;
      end
    end
    if (io_we) begin
      if (6'hb == io_wa) begin
        _T_22_11 <= io_di;
      end
    end
    if (io_we) begin
      if (6'hc == io_wa) begin
        _T_22_12 <= io_di;
      end
    end
    if (io_we) begin
      if (6'hd == io_wa) begin
        _T_22_13 <= io_di;
      end
    end
    if (io_we) begin
      if (6'he == io_wa) begin
        _T_22_14 <= io_di;
      end
    end
    if (io_we) begin
      if (6'hf == io_wa) begin
        _T_22_15 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h10 == io_wa) begin
        _T_22_16 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h11 == io_wa) begin
        _T_22_17 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h12 == io_wa) begin
        _T_22_18 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h13 == io_wa) begin
        _T_22_19 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h14 == io_wa) begin
        _T_22_20 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h15 == io_wa) begin
        _T_22_21 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h16 == io_wa) begin
        _T_22_22 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h17 == io_wa) begin
        _T_22_23 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h18 == io_wa) begin
        _T_22_24 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h19 == io_wa) begin
        _T_22_25 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h1a == io_wa) begin
        _T_22_26 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h1b == io_wa) begin
        _T_22_27 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h1c == io_wa) begin
        _T_22_28 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h1d == io_wa) begin
        _T_22_29 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h1e == io_wa) begin
        _T_22_30 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h1f == io_wa) begin
        _T_22_31 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h20 == io_wa) begin
        _T_22_32 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h21 == io_wa) begin
        _T_22_33 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h22 == io_wa) begin
        _T_22_34 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h23 == io_wa) begin
        _T_22_35 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h24 == io_wa) begin
        _T_22_36 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h25 == io_wa) begin
        _T_22_37 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h26 == io_wa) begin
        _T_22_38 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h27 == io_wa) begin
        _T_22_39 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h28 == io_wa) begin
        _T_22_40 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h29 == io_wa) begin
        _T_22_41 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h2a == io_wa) begin
        _T_22_42 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h2b == io_wa) begin
        _T_22_43 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h2c == io_wa) begin
        _T_22_44 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h2d == io_wa) begin
        _T_22_45 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h2e == io_wa) begin
        _T_22_46 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h2f == io_wa) begin
        _T_22_47 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h30 == io_wa) begin
        _T_22_48 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h31 == io_wa) begin
        _T_22_49 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h32 == io_wa) begin
        _T_22_50 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h33 == io_wa) begin
        _T_22_51 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h34 == io_wa) begin
        _T_22_52 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h35 == io_wa) begin
        _T_22_53 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h36 == io_wa) begin
        _T_22_54 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h37 == io_wa) begin
        _T_22_55 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h38 == io_wa) begin
        _T_22_56 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h39 == io_wa) begin
        _T_22_57 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h3a == io_wa) begin
        _T_22_58 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h3b == io_wa) begin
        _T_22_59 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h3c == io_wa) begin
        _T_22_60 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h3d == io_wa) begin
        _T_22_61 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h3e == io_wa) begin
        _T_22_62 <= io_di;
      end
    end
    if (io_we) begin
      if (6'h3f == io_wa) begin
        _T_22_63 <= io_di;
      end
    end
    if (io_re) begin
      _T_90 <= io_ra;
    end
  end
endmodule
module NV_NVDLA_CACC_delivery_buffer( // @[:@5364.2]
  input           reset, // @[:@5366.4]
  input           io_nvdla_core_clk, // @[:@5367.4]
  input           io_cacc2sdp_pd_ready, // @[:@5367.4]
  output          io_cacc2sdp_pd_valid, // @[:@5367.4]
  output [513:0]  io_cacc2sdp_pd_bits, // @[:@5367.4]
  output [1:0]    io_cacc2glb_done_intr_pd, // @[:@5367.4]
  output          io_accu2sc_credit_size_valid, // @[:@5367.4]
  input           io_dbuf_wr_addr_valid, // @[:@5367.4]
  input  [5:0]    io_dbuf_wr_addr_bits, // @[:@5367.4]
  input  [1023:0] io_dbuf_wr_data, // @[:@5367.4]
  input           io_dbuf_rd_layer_end, // @[:@5367.4]
  input           io_dbuf_rd_addr_valid, // @[:@5367.4]
  input  [5:0]    io_dbuf_rd_addr_bits, // @[:@5367.4]
  output          io_dbuf_rd_ready // @[:@5367.4]
);
  wire  nv_ram_rws_io_clk; // @[NV_NVDLA_CACC_delivery_buffer.scala 61:25:@5373.4]
  wire  nv_ram_rws_io_re; // @[NV_NVDLA_CACC_delivery_buffer.scala 61:25:@5373.4]
  wire  nv_ram_rws_io_we; // @[NV_NVDLA_CACC_delivery_buffer.scala 61:25:@5373.4]
  wire [5:0] nv_ram_rws_io_ra; // @[NV_NVDLA_CACC_delivery_buffer.scala 61:25:@5373.4]
  wire [5:0] nv_ram_rws_io_wa; // @[NV_NVDLA_CACC_delivery_buffer.scala 61:25:@5373.4]
  wire [1023:0] nv_ram_rws_io_di; // @[NV_NVDLA_CACC_delivery_buffer.scala 61:25:@5373.4]
  wire [1023:0] nv_ram_rws_io_dout; // @[NV_NVDLA_CACC_delivery_buffer.scala 61:25:@5373.4]
  reg [1:0] _T_49; // @[NV_NVDLA_CACC_delivery_buffer.scala 58:29:@5369.4]
  reg [31:0] _RAND_0;
  wire  _T_51; // @[NV_NVDLA_CACC_delivery_buffer.scala 59:39:@5370.4]
  wire  _T_52; // @[NV_NVDLA_CACC_delivery_buffer.scala 59:22:@5371.4]
  wire  _T_53; // @[NV_NVDLA_CACC_delivery_buffer.scala 59:44:@5372.4]
  reg [1:0] _T_59; // @[NV_NVDLA_CACC_delivery_buffer.scala 75:27:@5383.4]
  reg [31:0] _RAND_1;
  wire  _T_60; // @[NV_NVDLA_CACC_delivery_buffer.scala 77:49:@5384.4]
  wire  _T_61; // @[NV_NVDLA_CACC_delivery_buffer.scala 77:89:@5385.4]
  wire  _T_62; // @[NV_NVDLA_CACC_delivery_buffer.scala 78:41:@5386.4]
  wire [1:0] _T_63; // @[Cat.scala 30:58:@5387.4]
  wire [1:0] _T_64; // @[NV_NVDLA_CACC_delivery_buffer.scala 77:27:@5388.4]
  wire [2:0] _GEN_0; // @[NV_NVDLA_CACC_delivery_buffer.scala 83:89:@5392.4]
  wire [2:0] _T_72; // @[NV_NVDLA_CACC_delivery_buffer.scala 83:89:@5392.4]
  wire [2:0] _T_73; // @[NV_NVDLA_CACC_delivery_buffer.scala 83:29:@5393.4]
  wire [2:0] _T_74; // @[NV_NVDLA_CACC_delivery_buffer.scala 82:29:@5394.4]
  wire [1:0] _T_75; // @[NV_NVDLA_CACC_delivery_buffer.scala 83:112:@5395.4]
  wire [511:0] _T_81; // @[NV_NVDLA_CACC_delivery_buffer.scala 89:42:@5402.4]
  wire [511:0] _T_86; // @[Bitwise.scala 72:12:@5405.4]
  wire [511:0] _T_87; // @[NV_NVDLA_CACC_delivery_buffer.scala 89:104:@5406.4]
  wire [511:0] _T_88; // @[NV_NVDLA_CACC_delivery_buffer.scala 89:42:@5407.4]
  wire [511:0] _T_93; // @[Bitwise.scala 72:12:@5410.4]
  wire [511:0] _T_94; // @[NV_NVDLA_CACC_delivery_buffer.scala 89:104:@5411.4]
  wire [511:0] _T_103; // @[NV_NVDLA_CACC_delivery_buffer.scala 89:163:@5415.4]
  reg  _T_106; // @[NV_NVDLA_CACC_delivery_buffer.scala 92:38:@5416.4]
  reg [31:0] _RAND_2;
  wire  _T_112; // @[NV_NVDLA_CACC_delivery_buffer.scala 94:36:@5419.4]
  wire  _T_113; // @[NV_NVDLA_CACC_delivery_buffer.scala 93:36:@5420.4]
  wire  _T_140; // @[NV_NVDLA_CACC_delivery_buffer.scala 116:30:@5444.4]
  wire  _T_117; // @[NV_NVDLA_CACC_delivery_buffer.scala 101:50:@5423.4]
  wire  _T_118; // @[NV_NVDLA_CACC_delivery_buffer.scala 101:62:@5424.4]
  wire  _T_119; // @[NV_NVDLA_CACC_delivery_buffer.scala 101:85:@5425.4]
  wire [1:0] _T_120; // @[Cat.scala 30:58:@5426.4]
  reg  _T_124; // @[NV_NVDLA_CACC_delivery_buffer.scala 105:23:@5429.4]
  reg [31:0] _RAND_3;
  reg [1:0] _T_127; // @[NV_NVDLA_CACC_delivery_buffer.scala 106:30:@5430.4]
  reg [31:0] _RAND_4;
  wire  _T_129; // @[NV_NVDLA_CACC_delivery_buffer.scala 107:61:@5432.4]
  wire  _T_130; // @[NV_NVDLA_CACC_delivery_buffer.scala 108:38:@5433.4]
  wire  _T_131; // @[NV_NVDLA_CACC_delivery_buffer.scala 108:62:@5434.4]
  wire  _T_132; // @[NV_NVDLA_CACC_delivery_buffer.scala 108:60:@5435.4]
  wire [1:0] _T_133; // @[Cat.scala 30:58:@5436.4]
  wire  _T_135; // @[NV_NVDLA_CACC_delivery_buffer.scala 109:21:@5438.4]
  wire  _T_142; // @[NV_NVDLA_CACC_delivery_buffer.scala 117:85:@5447.4]
  reg  _T_145; // @[NV_NVDLA_CACC_delivery_buffer.scala 117:40:@5448.4]
  reg [31:0] _RAND_5;
  nv_ram_rws_1 nv_ram_rws ( // @[NV_NVDLA_CACC_delivery_buffer.scala 61:25:@5373.4]
    .io_clk(nv_ram_rws_io_clk),
    .io_re(nv_ram_rws_io_re),
    .io_we(nv_ram_rws_io_we),
    .io_ra(nv_ram_rws_io_ra),
    .io_wa(nv_ram_rws_io_wa),
    .io_di(nv_ram_rws_io_di),
    .io_dout(nv_ram_rws_io_dout)
  );
  assign _T_51 = _T_49 != 2'h0; // @[NV_NVDLA_CACC_delivery_buffer.scala 59:39:@5370.4]
  assign _T_52 = ~ _T_51; // @[NV_NVDLA_CACC_delivery_buffer.scala 59:22:@5371.4]
  assign _T_53 = _T_52 & io_dbuf_rd_addr_valid; // @[NV_NVDLA_CACC_delivery_buffer.scala 59:44:@5372.4]
  assign _T_60 = io_cacc2sdp_pd_valid & io_cacc2sdp_pd_ready; // @[NV_NVDLA_CACC_delivery_buffer.scala 77:49:@5384.4]
  assign _T_61 = _T_59[0]; // @[NV_NVDLA_CACC_delivery_buffer.scala 77:89:@5385.4]
  assign _T_62 = _T_59[1]; // @[NV_NVDLA_CACC_delivery_buffer.scala 78:41:@5386.4]
  assign _T_63 = {_T_61,_T_62}; // @[Cat.scala 30:58:@5387.4]
  assign _T_64 = _T_60 ? _T_63 : _T_59; // @[NV_NVDLA_CACC_delivery_buffer.scala 77:27:@5388.4]
  assign _GEN_0 = {{1'd0}, _T_49}; // @[NV_NVDLA_CACC_delivery_buffer.scala 83:89:@5392.4]
  assign _T_72 = _GEN_0 << 1'h1; // @[NV_NVDLA_CACC_delivery_buffer.scala 83:89:@5392.4]
  assign _T_73 = _T_60 ? _T_72 : {{1'd0}, _T_49}; // @[NV_NVDLA_CACC_delivery_buffer.scala 83:29:@5393.4]
  assign _T_74 = _T_53 ? 3'h3 : _T_73; // @[NV_NVDLA_CACC_delivery_buffer.scala 82:29:@5394.4]
  assign _T_75 = _T_74[1:0]; // @[NV_NVDLA_CACC_delivery_buffer.scala 83:112:@5395.4]
  assign _T_81 = nv_ram_rws_io_dout[511:0]; // @[NV_NVDLA_CACC_delivery_buffer.scala 89:42:@5402.4]
  assign _T_86 = _T_61 ? 512'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff : 512'h0; // @[Bitwise.scala 72:12:@5405.4]
  assign _T_87 = _T_81 & _T_86; // @[NV_NVDLA_CACC_delivery_buffer.scala 89:104:@5406.4]
  assign _T_88 = nv_ram_rws_io_dout[1023:512]; // @[NV_NVDLA_CACC_delivery_buffer.scala 89:42:@5407.4]
  assign _T_93 = _T_62 ? 512'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff : 512'h0; // @[Bitwise.scala 72:12:@5410.4]
  assign _T_94 = _T_88 & _T_93; // @[NV_NVDLA_CACC_delivery_buffer.scala 89:104:@5411.4]
  assign _T_103 = _T_87 | _T_94; // @[NV_NVDLA_CACC_delivery_buffer.scala 89:163:@5415.4]
  assign _T_112 = _T_52 ? 1'h0 : _T_106; // @[NV_NVDLA_CACC_delivery_buffer.scala 94:36:@5419.4]
  assign _T_113 = io_dbuf_rd_layer_end ? 1'h1 : _T_112; // @[NV_NVDLA_CACC_delivery_buffer.scala 93:36:@5420.4]
  assign _T_140 = _T_49 == 2'h2; // @[NV_NVDLA_CACC_delivery_buffer.scala 116:30:@5444.4]
  assign _T_117 = _T_106 & _T_140; // @[NV_NVDLA_CACC_delivery_buffer.scala 101:50:@5423.4]
  assign _T_118 = _T_117 & io_cacc2sdp_pd_valid; // @[NV_NVDLA_CACC_delivery_buffer.scala 101:62:@5424.4]
  assign _T_119 = _T_118 & io_cacc2sdp_pd_ready; // @[NV_NVDLA_CACC_delivery_buffer.scala 101:85:@5425.4]
  assign _T_120 = {_T_119,1'h0}; // @[Cat.scala 30:58:@5426.4]
  assign _T_129 = _T_60 & _T_119; // @[NV_NVDLA_CACC_delivery_buffer.scala 107:61:@5432.4]
  assign _T_130 = _T_129 & _T_124; // @[NV_NVDLA_CACC_delivery_buffer.scala 108:38:@5433.4]
  assign _T_131 = ~ _T_124; // @[NV_NVDLA_CACC_delivery_buffer.scala 108:62:@5434.4]
  assign _T_132 = _T_129 & _T_131; // @[NV_NVDLA_CACC_delivery_buffer.scala 108:60:@5435.4]
  assign _T_133 = {_T_130,_T_132}; // @[Cat.scala 30:58:@5436.4]
  assign _T_135 = _T_129 ? _T_131 : _T_124; // @[NV_NVDLA_CACC_delivery_buffer.scala 109:21:@5438.4]
  assign _T_142 = _T_60 & _T_140; // @[NV_NVDLA_CACC_delivery_buffer.scala 117:85:@5447.4]
  assign io_cacc2sdp_pd_valid = _T_49 != 2'h0; // @[NV_NVDLA_CACC_delivery_buffer.scala 85:22:@5398.4]
  assign io_cacc2sdp_pd_bits = {_T_120,_T_103}; // @[NV_NVDLA_CACC_delivery_buffer.scala 102:21:@5428.4]
  assign io_cacc2glb_done_intr_pd = _T_127; // @[NV_NVDLA_CACC_delivery_buffer.scala 112:26:@5441.4]
  assign io_accu2sc_credit_size_valid = _T_145; // @[NV_NVDLA_CACC_delivery_buffer.scala 117:30:@5450.4]
  assign io_dbuf_rd_ready = ~ _T_51; // @[NV_NVDLA_CACC_delivery_buffer.scala 86:18:@5401.4]
  assign nv_ram_rws_io_clk = io_nvdla_core_clk; // @[NV_NVDLA_CACC_delivery_buffer.scala 63:20:@5376.4]
  assign nv_ram_rws_io_re = _T_52 & io_dbuf_rd_addr_valid; // @[NV_NVDLA_CACC_delivery_buffer.scala 65:19:@5378.4]
  assign nv_ram_rws_io_we = io_dbuf_wr_addr_valid; // @[NV_NVDLA_CACC_delivery_buffer.scala 66:19:@5379.4]
  assign nv_ram_rws_io_ra = io_dbuf_rd_addr_bits; // @[NV_NVDLA_CACC_delivery_buffer.scala 64:19:@5377.4]
  assign nv_ram_rws_io_wa = io_dbuf_wr_addr_bits; // @[NV_NVDLA_CACC_delivery_buffer.scala 67:19:@5380.4]
  assign nv_ram_rws_io_di = io_dbuf_wr_data; // @[NV_NVDLA_CACC_delivery_buffer.scala 68:19:@5381.4]
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
  _T_49 = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_59 = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_106 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_124 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_127 = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_145 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_49 <= 2'h0;
    end else begin
      _T_49 <= _T_75;
    end
    if (reset) begin
      _T_59 <= 2'h1;
    end else begin
      if (_T_60) begin
        _T_59 <= _T_63;
      end
    end
    if (reset) begin
      _T_106 <= 1'h0;
    end else begin
      if (io_dbuf_rd_layer_end) begin
        _T_106 <= 1'h1;
      end else begin
        if (_T_52) begin
          _T_106 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_124 <= 1'h0;
    end else begin
      if (_T_129) begin
        _T_124 <= _T_131;
      end
    end
    if (reset) begin
      _T_127 <= 2'h0;
    end else begin
      _T_127 <= _T_133;
    end
    if (reset) begin
      _T_145 <= 1'h0;
    end else begin
      _T_145 <= _T_142;
    end
  end
endmodule
module NV_NVDLA_slcg( // @[:@5452.2]
  input   io_nvdla_clock_nvdla_core_clk, // @[:@5455.4]
  output  io_nvdla_core_gated_clk // @[:@5455.4]
);
  assign io_nvdla_core_gated_clk = io_nvdla_clock_nvdla_core_clk; // @[slcg.scala 23:33:@5457.4]
endmodule
module NV_soDLA_cacc( // @[:@5480.2]
  input          clock, // @[:@5481.4]
  input          reset, // @[:@5482.4]
  input          io_nvdla_clock_nvdla_core_clk, // @[:@5483.4]
  input          io_nvdla_clock_dla_clk_ovr_on_sync, // @[:@5483.4]
  input          io_nvdla_clock_global_clk_ovr_on_sync, // @[:@5483.4]
  input          io_nvdla_clock_tmc2slcg_disable_clock_gating, // @[:@5483.4]
  input          io_nvdla_core_rstn, // @[:@5483.4]
  output         io_csb2cacc_req_ready, // @[:@5483.4]
  input          io_csb2cacc_req_valid, // @[:@5483.4]
  input  [62:0]  io_csb2cacc_req_bits, // @[:@5483.4]
  output         io_csb2cacc_resp_valid, // @[:@5483.4]
  output [33:0]  io_csb2cacc_resp_bits, // @[:@5483.4]
  input          io_mac_a2accu_valid, // @[:@5483.4]
  input          io_mac_a2accu_bits_mask_0, // @[:@5483.4]
  input          io_mac_a2accu_bits_mask_1, // @[:@5483.4]
  input          io_mac_a2accu_bits_mask_2, // @[:@5483.4]
  input          io_mac_a2accu_bits_mask_3, // @[:@5483.4]
  input          io_mac_a2accu_bits_mask_4, // @[:@5483.4]
  input          io_mac_a2accu_bits_mask_5, // @[:@5483.4]
  input          io_mac_a2accu_bits_mask_6, // @[:@5483.4]
  input          io_mac_a2accu_bits_mask_7, // @[:@5483.4]
  input          io_mac_a2accu_bits_mask_8, // @[:@5483.4]
  input          io_mac_a2accu_bits_mask_9, // @[:@5483.4]
  input          io_mac_a2accu_bits_mask_10, // @[:@5483.4]
  input          io_mac_a2accu_bits_mask_11, // @[:@5483.4]
  input          io_mac_a2accu_bits_mask_12, // @[:@5483.4]
  input          io_mac_a2accu_bits_mask_13, // @[:@5483.4]
  input          io_mac_a2accu_bits_mask_14, // @[:@5483.4]
  input          io_mac_a2accu_bits_mask_15, // @[:@5483.4]
  input  [21:0]  io_mac_a2accu_bits_data_0, // @[:@5483.4]
  input  [21:0]  io_mac_a2accu_bits_data_1, // @[:@5483.4]
  input  [21:0]  io_mac_a2accu_bits_data_2, // @[:@5483.4]
  input  [21:0]  io_mac_a2accu_bits_data_3, // @[:@5483.4]
  input  [21:0]  io_mac_a2accu_bits_data_4, // @[:@5483.4]
  input  [21:0]  io_mac_a2accu_bits_data_5, // @[:@5483.4]
  input  [21:0]  io_mac_a2accu_bits_data_6, // @[:@5483.4]
  input  [21:0]  io_mac_a2accu_bits_data_7, // @[:@5483.4]
  input  [21:0]  io_mac_a2accu_bits_data_8, // @[:@5483.4]
  input  [21:0]  io_mac_a2accu_bits_data_9, // @[:@5483.4]
  input  [21:0]  io_mac_a2accu_bits_data_10, // @[:@5483.4]
  input  [21:0]  io_mac_a2accu_bits_data_11, // @[:@5483.4]
  input  [21:0]  io_mac_a2accu_bits_data_12, // @[:@5483.4]
  input  [21:0]  io_mac_a2accu_bits_data_13, // @[:@5483.4]
  input  [21:0]  io_mac_a2accu_bits_data_14, // @[:@5483.4]
  input  [21:0]  io_mac_a2accu_bits_data_15, // @[:@5483.4]
  input  [8:0]   io_mac_a2accu_bits_pd, // @[:@5483.4]
  input          io_mac_b2accu_valid, // @[:@5483.4]
  input          io_mac_b2accu_bits_mask_0, // @[:@5483.4]
  input          io_mac_b2accu_bits_mask_1, // @[:@5483.4]
  input          io_mac_b2accu_bits_mask_2, // @[:@5483.4]
  input          io_mac_b2accu_bits_mask_3, // @[:@5483.4]
  input          io_mac_b2accu_bits_mask_4, // @[:@5483.4]
  input          io_mac_b2accu_bits_mask_5, // @[:@5483.4]
  input          io_mac_b2accu_bits_mask_6, // @[:@5483.4]
  input          io_mac_b2accu_bits_mask_7, // @[:@5483.4]
  input          io_mac_b2accu_bits_mask_8, // @[:@5483.4]
  input          io_mac_b2accu_bits_mask_9, // @[:@5483.4]
  input          io_mac_b2accu_bits_mask_10, // @[:@5483.4]
  input          io_mac_b2accu_bits_mask_11, // @[:@5483.4]
  input          io_mac_b2accu_bits_mask_12, // @[:@5483.4]
  input          io_mac_b2accu_bits_mask_13, // @[:@5483.4]
  input          io_mac_b2accu_bits_mask_14, // @[:@5483.4]
  input          io_mac_b2accu_bits_mask_15, // @[:@5483.4]
  input  [21:0]  io_mac_b2accu_bits_data_0, // @[:@5483.4]
  input  [21:0]  io_mac_b2accu_bits_data_1, // @[:@5483.4]
  input  [21:0]  io_mac_b2accu_bits_data_2, // @[:@5483.4]
  input  [21:0]  io_mac_b2accu_bits_data_3, // @[:@5483.4]
  input  [21:0]  io_mac_b2accu_bits_data_4, // @[:@5483.4]
  input  [21:0]  io_mac_b2accu_bits_data_5, // @[:@5483.4]
  input  [21:0]  io_mac_b2accu_bits_data_6, // @[:@5483.4]
  input  [21:0]  io_mac_b2accu_bits_data_7, // @[:@5483.4]
  input  [21:0]  io_mac_b2accu_bits_data_8, // @[:@5483.4]
  input  [21:0]  io_mac_b2accu_bits_data_9, // @[:@5483.4]
  input  [21:0]  io_mac_b2accu_bits_data_10, // @[:@5483.4]
  input  [21:0]  io_mac_b2accu_bits_data_11, // @[:@5483.4]
  input  [21:0]  io_mac_b2accu_bits_data_12, // @[:@5483.4]
  input  [21:0]  io_mac_b2accu_bits_data_13, // @[:@5483.4]
  input  [21:0]  io_mac_b2accu_bits_data_14, // @[:@5483.4]
  input  [21:0]  io_mac_b2accu_bits_data_15, // @[:@5483.4]
  input  [8:0]   io_mac_b2accu_bits_pd, // @[:@5483.4]
  input          io_cacc2sdp_pd_ready, // @[:@5483.4]
  output         io_cacc2sdp_pd_valid, // @[:@5483.4]
  output [513:0] io_cacc2sdp_pd_bits, // @[:@5483.4]
  output         io_accu2sc_credit_size_valid, // @[:@5483.4]
  output [2:0]   io_accu2sc_credit_size_bits, // @[:@5483.4]
  output [1:0]   io_cacc2glb_done_intr_pd, // @[:@5483.4]
  input  [31:0]  io_pwrbus_ram_pd // @[:@5483.4]
);
  wire  NV_NVDLA_CACC_regfile_reset; // @[NV_NVDLA_cacc.scala 60:27:@5488.4]
  wire  NV_NVDLA_CACC_regfile_io_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 60:27:@5488.4]
  wire  NV_NVDLA_CACC_regfile_io_csb2cacc_req_valid; // @[NV_NVDLA_cacc.scala 60:27:@5488.4]
  wire [62:0] NV_NVDLA_CACC_regfile_io_csb2cacc_req_bits; // @[NV_NVDLA_cacc.scala 60:27:@5488.4]
  wire  NV_NVDLA_CACC_regfile_io_csb2cacc_resp_valid; // @[NV_NVDLA_cacc.scala 60:27:@5488.4]
  wire [33:0] NV_NVDLA_CACC_regfile_io_csb2cacc_resp_bits; // @[NV_NVDLA_cacc.scala 60:27:@5488.4]
  wire  NV_NVDLA_CACC_regfile_io_reg2dp_op_en; // @[NV_NVDLA_cacc.scala 60:27:@5488.4]
  wire [4:0] NV_NVDLA_CACC_regfile_io_reg2dp_field_clip_truncate; // @[NV_NVDLA_cacc.scala 60:27:@5488.4]
  wire  NV_NVDLA_CACC_regfile_io_dp2reg_done; // @[NV_NVDLA_cacc.scala 60:27:@5488.4]
  wire [31:0] NV_NVDLA_CACC_regfile_io_dp2reg_sat_count; // @[NV_NVDLA_cacc.scala 60:27:@5488.4]
  wire  NV_NVDLA_CACC_assembly_ctrl_reset; // @[NV_NVDLA_cacc.scala 70:33:@5497.4]
  wire  NV_NVDLA_CACC_assembly_ctrl_io_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 70:33:@5497.4]
  wire  NV_NVDLA_CACC_assembly_ctrl_io_abuf_rd_addr_valid; // @[NV_NVDLA_cacc.scala 70:33:@5497.4]
  wire [5:0] NV_NVDLA_CACC_assembly_ctrl_io_abuf_rd_addr_bits; // @[NV_NVDLA_cacc.scala 70:33:@5497.4]
  wire  NV_NVDLA_CACC_assembly_ctrl_io_mac_a2accu_pd_valid; // @[NV_NVDLA_cacc.scala 70:33:@5497.4]
  wire [8:0] NV_NVDLA_CACC_assembly_ctrl_io_mac_a2accu_pd_bits; // @[NV_NVDLA_cacc.scala 70:33:@5497.4]
  wire  NV_NVDLA_CACC_assembly_ctrl_io_accu_ctrl_pd_valid; // @[NV_NVDLA_cacc.scala 70:33:@5497.4]
  wire [12:0] NV_NVDLA_CACC_assembly_ctrl_io_accu_ctrl_pd_bits; // @[NV_NVDLA_cacc.scala 70:33:@5497.4]
  wire  NV_NVDLA_CACC_assembly_ctrl_io_accu_ctrl_ram_valid; // @[NV_NVDLA_cacc.scala 70:33:@5497.4]
  wire [4:0] NV_NVDLA_CACC_assembly_ctrl_io_cfg_truncate; // @[NV_NVDLA_cacc.scala 70:33:@5497.4]
  wire  NV_NVDLA_CACC_assembly_ctrl_io_reg2dp_op_en; // @[NV_NVDLA_cacc.scala 70:33:@5497.4]
  wire [4:0] NV_NVDLA_CACC_assembly_ctrl_io_reg2dp_clip_truncate; // @[NV_NVDLA_cacc.scala 70:33:@5497.4]
  wire  NV_NVDLA_CACC_assembly_ctrl_io_dp2reg_done; // @[NV_NVDLA_cacc.scala 70:33:@5497.4]
  wire  NV_NVDLA_CACC_assembly_ctrl_io_wait_for_op_en; // @[NV_NVDLA_cacc.scala 70:33:@5497.4]
  wire  NV_NVDLA_CACC_assembly_buffer_reset; // @[NV_NVDLA_cacc.scala 83:35:@5505.4]
  wire  NV_NVDLA_CACC_assembly_buffer_io_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 83:35:@5505.4]
  wire  NV_NVDLA_CACC_assembly_buffer_io_abuf_wr_addr_valid; // @[NV_NVDLA_cacc.scala 83:35:@5505.4]
  wire [5:0] NV_NVDLA_CACC_assembly_buffer_io_abuf_wr_addr_bits; // @[NV_NVDLA_cacc.scala 83:35:@5505.4]
  wire [1087:0] NV_NVDLA_CACC_assembly_buffer_io_abuf_wr_data; // @[NV_NVDLA_cacc.scala 83:35:@5505.4]
  wire  NV_NVDLA_CACC_assembly_buffer_io_abuf_rd_addr_valid; // @[NV_NVDLA_cacc.scala 83:35:@5505.4]
  wire [5:0] NV_NVDLA_CACC_assembly_buffer_io_abuf_rd_addr_bits; // @[NV_NVDLA_cacc.scala 83:35:@5505.4]
  wire [1087:0] NV_NVDLA_CACC_assembly_buffer_io_abuf_rd_data; // @[NV_NVDLA_cacc.scala 83:35:@5505.4]
  wire  NV_NVDLA_CACC_calculator_reset; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_nvdla_cell_clk; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [1087:0] NV_NVDLA_CACC_calculator_io_abuf_rd_data; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_abuf_wr_addr_valid; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [5:0] NV_NVDLA_CACC_calculator_io_abuf_wr_addr_bits; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [1087:0] NV_NVDLA_CACC_calculator_io_abuf_wr_data; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_dlv_valid; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [1023:0] NV_NVDLA_CACC_calculator_io_dlv_data; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [1:0] NV_NVDLA_CACC_calculator_io_dlv_pd; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_accu_ctrl_pd_valid; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [12:0] NV_NVDLA_CACC_calculator_io_accu_ctrl_pd_bits; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_accu_ctrl_ram_valid; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [4:0] NV_NVDLA_CACC_calculator_io_cfg_truncate; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_0; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_1; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_2; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_3; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_4; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_5; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_6; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_7; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_8; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_9; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_10; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_11; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_12; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_13; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_14; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_a2accu_data_15; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_0; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_1; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_2; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_3; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_4; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_5; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_6; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_7; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_8; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_9; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_10; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_11; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_12; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_13; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_14; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_15; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_a2accu_pvld; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_0; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_1; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_2; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_3; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_4; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_5; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_6; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_7; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_8; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_9; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_10; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_11; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_12; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_13; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_14; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [21:0] NV_NVDLA_CACC_calculator_io_mac_b2accu_data_15; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_0; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_1; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_2; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_3; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_4; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_5; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_6; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_7; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_8; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_9; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_10; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_11; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_12; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_13; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_14; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_15; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_calculator_io_mac_b2accu_pvld; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire [31:0] NV_NVDLA_CACC_calculator_io_dp2reg_sat_count; // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
  wire  NV_NVDLA_CACC_delivery_ctrl_reset; // @[NV_NVDLA_cacc.scala 119:33:@5592.4]
  wire  NV_NVDLA_CACC_delivery_ctrl_io_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 119:33:@5592.4]
  wire  NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_ready; // @[NV_NVDLA_cacc.scala 119:33:@5592.4]
  wire  NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_addr_valid; // @[NV_NVDLA_cacc.scala 119:33:@5592.4]
  wire [5:0] NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_addr_bits; // @[NV_NVDLA_cacc.scala 119:33:@5592.4]
  wire  NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_layer_end; // @[NV_NVDLA_cacc.scala 119:33:@5592.4]
  wire  NV_NVDLA_CACC_delivery_ctrl_io_dbuf_wr_addr_valid; // @[NV_NVDLA_cacc.scala 119:33:@5592.4]
  wire [5:0] NV_NVDLA_CACC_delivery_ctrl_io_dbuf_wr_addr_bits; // @[NV_NVDLA_cacc.scala 119:33:@5592.4]
  wire [1023:0] NV_NVDLA_CACC_delivery_ctrl_io_dbuf_wr_data; // @[NV_NVDLA_cacc.scala 119:33:@5592.4]
  wire  NV_NVDLA_CACC_delivery_ctrl_io_dp2reg_done; // @[NV_NVDLA_cacc.scala 119:33:@5592.4]
  wire [1023:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_data; // @[NV_NVDLA_cacc.scala 119:33:@5592.4]
  wire [1:0] NV_NVDLA_CACC_delivery_ctrl_io_dlv_pd; // @[NV_NVDLA_cacc.scala 119:33:@5592.4]
  wire  NV_NVDLA_CACC_delivery_ctrl_io_dlv_valid; // @[NV_NVDLA_cacc.scala 119:33:@5592.4]
  wire  NV_NVDLA_CACC_delivery_buffer_reset; // @[NV_NVDLA_cacc.scala 137:35:@5603.4]
  wire  NV_NVDLA_CACC_delivery_buffer_io_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 137:35:@5603.4]
  wire  NV_NVDLA_CACC_delivery_buffer_io_cacc2sdp_pd_ready; // @[NV_NVDLA_cacc.scala 137:35:@5603.4]
  wire  NV_NVDLA_CACC_delivery_buffer_io_cacc2sdp_pd_valid; // @[NV_NVDLA_cacc.scala 137:35:@5603.4]
  wire [513:0] NV_NVDLA_CACC_delivery_buffer_io_cacc2sdp_pd_bits; // @[NV_NVDLA_cacc.scala 137:35:@5603.4]
  wire [1:0] NV_NVDLA_CACC_delivery_buffer_io_cacc2glb_done_intr_pd; // @[NV_NVDLA_cacc.scala 137:35:@5603.4]
  wire  NV_NVDLA_CACC_delivery_buffer_io_accu2sc_credit_size_valid; // @[NV_NVDLA_cacc.scala 137:35:@5603.4]
  wire  NV_NVDLA_CACC_delivery_buffer_io_dbuf_wr_addr_valid; // @[NV_NVDLA_cacc.scala 137:35:@5603.4]
  wire [5:0] NV_NVDLA_CACC_delivery_buffer_io_dbuf_wr_addr_bits; // @[NV_NVDLA_cacc.scala 137:35:@5603.4]
  wire [1023:0] NV_NVDLA_CACC_delivery_buffer_io_dbuf_wr_data; // @[NV_NVDLA_cacc.scala 137:35:@5603.4]
  wire  NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_layer_end; // @[NV_NVDLA_cacc.scala 137:35:@5603.4]
  wire  NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_addr_valid; // @[NV_NVDLA_cacc.scala 137:35:@5603.4]
  wire [5:0] NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_addr_bits; // @[NV_NVDLA_cacc.scala 137:35:@5603.4]
  wire  NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_ready; // @[NV_NVDLA_cacc.scala 137:35:@5603.4]
  wire  NV_NVDLA_slcg_io_nvdla_clock_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 158:41:@5621.4]
  wire  NV_NVDLA_slcg_io_nvdla_core_gated_clk; // @[NV_NVDLA_cacc.scala 158:41:@5621.4]
  wire  NV_NVDLA_slcg_1_io_nvdla_clock_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 158:41:@5624.4]
  wire  NV_NVDLA_slcg_1_io_nvdla_core_gated_clk; // @[NV_NVDLA_cacc.scala 158:41:@5624.4]
  wire  NV_NVDLA_slcg_2_io_nvdla_clock_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 158:41:@5627.4]
  wire  NV_NVDLA_slcg_2_io_nvdla_core_gated_clk; // @[NV_NVDLA_cacc.scala 158:41:@5627.4]
  wire  NV_NVDLA_slcg_3_io_nvdla_clock_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 166:31:@5651.4]
  wire  NV_NVDLA_slcg_3_io_nvdla_core_gated_clk; // @[NV_NVDLA_cacc.scala 166:31:@5651.4]
  NV_NVDLA_CACC_regfile NV_NVDLA_CACC_regfile ( // @[NV_NVDLA_cacc.scala 60:27:@5488.4]
    .reset(NV_NVDLA_CACC_regfile_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_regfile_io_nvdla_core_clk),
    .io_csb2cacc_req_valid(NV_NVDLA_CACC_regfile_io_csb2cacc_req_valid),
    .io_csb2cacc_req_bits(NV_NVDLA_CACC_regfile_io_csb2cacc_req_bits),
    .io_csb2cacc_resp_valid(NV_NVDLA_CACC_regfile_io_csb2cacc_resp_valid),
    .io_csb2cacc_resp_bits(NV_NVDLA_CACC_regfile_io_csb2cacc_resp_bits),
    .io_reg2dp_op_en(NV_NVDLA_CACC_regfile_io_reg2dp_op_en),
    .io_reg2dp_field_clip_truncate(NV_NVDLA_CACC_regfile_io_reg2dp_field_clip_truncate),
    .io_dp2reg_done(NV_NVDLA_CACC_regfile_io_dp2reg_done),
    .io_dp2reg_sat_count(NV_NVDLA_CACC_regfile_io_dp2reg_sat_count)
  );
  NV_NVDLA_CACC_assembly_ctrl NV_NVDLA_CACC_assembly_ctrl ( // @[NV_NVDLA_cacc.scala 70:33:@5497.4]
    .reset(NV_NVDLA_CACC_assembly_ctrl_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_assembly_ctrl_io_nvdla_core_clk),
    .io_abuf_rd_addr_valid(NV_NVDLA_CACC_assembly_ctrl_io_abuf_rd_addr_valid),
    .io_abuf_rd_addr_bits(NV_NVDLA_CACC_assembly_ctrl_io_abuf_rd_addr_bits),
    .io_mac_a2accu_pd_valid(NV_NVDLA_CACC_assembly_ctrl_io_mac_a2accu_pd_valid),
    .io_mac_a2accu_pd_bits(NV_NVDLA_CACC_assembly_ctrl_io_mac_a2accu_pd_bits),
    .io_accu_ctrl_pd_valid(NV_NVDLA_CACC_assembly_ctrl_io_accu_ctrl_pd_valid),
    .io_accu_ctrl_pd_bits(NV_NVDLA_CACC_assembly_ctrl_io_accu_ctrl_pd_bits),
    .io_accu_ctrl_ram_valid(NV_NVDLA_CACC_assembly_ctrl_io_accu_ctrl_ram_valid),
    .io_cfg_truncate(NV_NVDLA_CACC_assembly_ctrl_io_cfg_truncate),
    .io_reg2dp_op_en(NV_NVDLA_CACC_assembly_ctrl_io_reg2dp_op_en),
    .io_reg2dp_clip_truncate(NV_NVDLA_CACC_assembly_ctrl_io_reg2dp_clip_truncate),
    .io_dp2reg_done(NV_NVDLA_CACC_assembly_ctrl_io_dp2reg_done),
    .io_wait_for_op_en(NV_NVDLA_CACC_assembly_ctrl_io_wait_for_op_en)
  );
  NV_NVDLA_CACC_assembly_buffer NV_NVDLA_CACC_assembly_buffer ( // @[NV_NVDLA_cacc.scala 83:35:@5505.4]
    .reset(NV_NVDLA_CACC_assembly_buffer_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_assembly_buffer_io_nvdla_core_clk),
    .io_abuf_wr_addr_valid(NV_NVDLA_CACC_assembly_buffer_io_abuf_wr_addr_valid),
    .io_abuf_wr_addr_bits(NV_NVDLA_CACC_assembly_buffer_io_abuf_wr_addr_bits),
    .io_abuf_wr_data(NV_NVDLA_CACC_assembly_buffer_io_abuf_wr_data),
    .io_abuf_rd_addr_valid(NV_NVDLA_CACC_assembly_buffer_io_abuf_rd_addr_valid),
    .io_abuf_rd_addr_bits(NV_NVDLA_CACC_assembly_buffer_io_abuf_rd_addr_bits),
    .io_abuf_rd_data(NV_NVDLA_CACC_assembly_buffer_io_abuf_rd_data)
  );
  NV_NVDLA_CACC_calculator NV_NVDLA_CACC_calculator ( // @[NV_NVDLA_cacc.scala 94:30:@5512.4]
    .reset(NV_NVDLA_CACC_calculator_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_calculator_io_nvdla_core_clk),
    .io_nvdla_cell_clk(NV_NVDLA_CACC_calculator_io_nvdla_cell_clk),
    .io_abuf_rd_data(NV_NVDLA_CACC_calculator_io_abuf_rd_data),
    .io_abuf_wr_addr_valid(NV_NVDLA_CACC_calculator_io_abuf_wr_addr_valid),
    .io_abuf_wr_addr_bits(NV_NVDLA_CACC_calculator_io_abuf_wr_addr_bits),
    .io_abuf_wr_data(NV_NVDLA_CACC_calculator_io_abuf_wr_data),
    .io_dlv_valid(NV_NVDLA_CACC_calculator_io_dlv_valid),
    .io_dlv_data(NV_NVDLA_CACC_calculator_io_dlv_data),
    .io_dlv_pd(NV_NVDLA_CACC_calculator_io_dlv_pd),
    .io_accu_ctrl_pd_valid(NV_NVDLA_CACC_calculator_io_accu_ctrl_pd_valid),
    .io_accu_ctrl_pd_bits(NV_NVDLA_CACC_calculator_io_accu_ctrl_pd_bits),
    .io_accu_ctrl_ram_valid(NV_NVDLA_CACC_calculator_io_accu_ctrl_ram_valid),
    .io_cfg_truncate(NV_NVDLA_CACC_calculator_io_cfg_truncate),
    .io_mac_a2accu_data_0(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_0),
    .io_mac_a2accu_data_1(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_1),
    .io_mac_a2accu_data_2(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_2),
    .io_mac_a2accu_data_3(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_3),
    .io_mac_a2accu_data_4(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_4),
    .io_mac_a2accu_data_5(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_5),
    .io_mac_a2accu_data_6(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_6),
    .io_mac_a2accu_data_7(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_7),
    .io_mac_a2accu_data_8(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_8),
    .io_mac_a2accu_data_9(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_9),
    .io_mac_a2accu_data_10(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_10),
    .io_mac_a2accu_data_11(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_11),
    .io_mac_a2accu_data_12(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_12),
    .io_mac_a2accu_data_13(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_13),
    .io_mac_a2accu_data_14(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_14),
    .io_mac_a2accu_data_15(NV_NVDLA_CACC_calculator_io_mac_a2accu_data_15),
    .io_mac_a2accu_mask_0(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_0),
    .io_mac_a2accu_mask_1(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_1),
    .io_mac_a2accu_mask_2(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_2),
    .io_mac_a2accu_mask_3(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_3),
    .io_mac_a2accu_mask_4(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_4),
    .io_mac_a2accu_mask_5(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_5),
    .io_mac_a2accu_mask_6(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_6),
    .io_mac_a2accu_mask_7(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_7),
    .io_mac_a2accu_mask_8(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_8),
    .io_mac_a2accu_mask_9(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_9),
    .io_mac_a2accu_mask_10(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_10),
    .io_mac_a2accu_mask_11(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_11),
    .io_mac_a2accu_mask_12(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_12),
    .io_mac_a2accu_mask_13(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_13),
    .io_mac_a2accu_mask_14(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_14),
    .io_mac_a2accu_mask_15(NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_15),
    .io_mac_a2accu_pvld(NV_NVDLA_CACC_calculator_io_mac_a2accu_pvld),
    .io_mac_b2accu_data_0(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_0),
    .io_mac_b2accu_data_1(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_1),
    .io_mac_b2accu_data_2(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_2),
    .io_mac_b2accu_data_3(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_3),
    .io_mac_b2accu_data_4(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_4),
    .io_mac_b2accu_data_5(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_5),
    .io_mac_b2accu_data_6(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_6),
    .io_mac_b2accu_data_7(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_7),
    .io_mac_b2accu_data_8(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_8),
    .io_mac_b2accu_data_9(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_9),
    .io_mac_b2accu_data_10(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_10),
    .io_mac_b2accu_data_11(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_11),
    .io_mac_b2accu_data_12(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_12),
    .io_mac_b2accu_data_13(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_13),
    .io_mac_b2accu_data_14(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_14),
    .io_mac_b2accu_data_15(NV_NVDLA_CACC_calculator_io_mac_b2accu_data_15),
    .io_mac_b2accu_mask_0(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_0),
    .io_mac_b2accu_mask_1(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_1),
    .io_mac_b2accu_mask_2(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_2),
    .io_mac_b2accu_mask_3(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_3),
    .io_mac_b2accu_mask_4(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_4),
    .io_mac_b2accu_mask_5(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_5),
    .io_mac_b2accu_mask_6(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_6),
    .io_mac_b2accu_mask_7(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_7),
    .io_mac_b2accu_mask_8(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_8),
    .io_mac_b2accu_mask_9(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_9),
    .io_mac_b2accu_mask_10(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_10),
    .io_mac_b2accu_mask_11(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_11),
    .io_mac_b2accu_mask_12(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_12),
    .io_mac_b2accu_mask_13(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_13),
    .io_mac_b2accu_mask_14(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_14),
    .io_mac_b2accu_mask_15(NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_15),
    .io_mac_b2accu_pvld(NV_NVDLA_CACC_calculator_io_mac_b2accu_pvld),
    .io_dp2reg_sat_count(NV_NVDLA_CACC_calculator_io_dp2reg_sat_count)
  );
  NV_NVDLA_CACC_delivery_ctrl NV_NVDLA_CACC_delivery_ctrl ( // @[NV_NVDLA_cacc.scala 119:33:@5592.4]
    .reset(NV_NVDLA_CACC_delivery_ctrl_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_delivery_ctrl_io_nvdla_core_clk),
    .io_dbuf_rd_ready(NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_ready),
    .io_dbuf_rd_addr_valid(NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_addr_valid),
    .io_dbuf_rd_addr_bits(NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_addr_bits),
    .io_dbuf_rd_layer_end(NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_layer_end),
    .io_dbuf_wr_addr_valid(NV_NVDLA_CACC_delivery_ctrl_io_dbuf_wr_addr_valid),
    .io_dbuf_wr_addr_bits(NV_NVDLA_CACC_delivery_ctrl_io_dbuf_wr_addr_bits),
    .io_dbuf_wr_data(NV_NVDLA_CACC_delivery_ctrl_io_dbuf_wr_data),
    .io_dp2reg_done(NV_NVDLA_CACC_delivery_ctrl_io_dp2reg_done),
    .io_dlv_data(NV_NVDLA_CACC_delivery_ctrl_io_dlv_data),
    .io_dlv_pd(NV_NVDLA_CACC_delivery_ctrl_io_dlv_pd),
    .io_dlv_valid(NV_NVDLA_CACC_delivery_ctrl_io_dlv_valid)
  );
  NV_NVDLA_CACC_delivery_buffer NV_NVDLA_CACC_delivery_buffer ( // @[NV_NVDLA_cacc.scala 137:35:@5603.4]
    .reset(NV_NVDLA_CACC_delivery_buffer_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_delivery_buffer_io_nvdla_core_clk),
    .io_cacc2sdp_pd_ready(NV_NVDLA_CACC_delivery_buffer_io_cacc2sdp_pd_ready),
    .io_cacc2sdp_pd_valid(NV_NVDLA_CACC_delivery_buffer_io_cacc2sdp_pd_valid),
    .io_cacc2sdp_pd_bits(NV_NVDLA_CACC_delivery_buffer_io_cacc2sdp_pd_bits),
    .io_cacc2glb_done_intr_pd(NV_NVDLA_CACC_delivery_buffer_io_cacc2glb_done_intr_pd),
    .io_accu2sc_credit_size_valid(NV_NVDLA_CACC_delivery_buffer_io_accu2sc_credit_size_valid),
    .io_dbuf_wr_addr_valid(NV_NVDLA_CACC_delivery_buffer_io_dbuf_wr_addr_valid),
    .io_dbuf_wr_addr_bits(NV_NVDLA_CACC_delivery_buffer_io_dbuf_wr_addr_bits),
    .io_dbuf_wr_data(NV_NVDLA_CACC_delivery_buffer_io_dbuf_wr_data),
    .io_dbuf_rd_layer_end(NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_layer_end),
    .io_dbuf_rd_addr_valid(NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_addr_valid),
    .io_dbuf_rd_addr_bits(NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_addr_bits),
    .io_dbuf_rd_ready(NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_ready)
  );
  NV_NVDLA_slcg NV_NVDLA_slcg ( // @[NV_NVDLA_cacc.scala 158:41:@5621.4]
    .io_nvdla_clock_nvdla_core_clk(NV_NVDLA_slcg_io_nvdla_clock_nvdla_core_clk),
    .io_nvdla_core_gated_clk(NV_NVDLA_slcg_io_nvdla_core_gated_clk)
  );
  NV_NVDLA_slcg NV_NVDLA_slcg_1 ( // @[NV_NVDLA_cacc.scala 158:41:@5624.4]
    .io_nvdla_clock_nvdla_core_clk(NV_NVDLA_slcg_1_io_nvdla_clock_nvdla_core_clk),
    .io_nvdla_core_gated_clk(NV_NVDLA_slcg_1_io_nvdla_core_gated_clk)
  );
  NV_NVDLA_slcg NV_NVDLA_slcg_2 ( // @[NV_NVDLA_cacc.scala 158:41:@5627.4]
    .io_nvdla_clock_nvdla_core_clk(NV_NVDLA_slcg_2_io_nvdla_clock_nvdla_core_clk),
    .io_nvdla_core_gated_clk(NV_NVDLA_slcg_2_io_nvdla_core_gated_clk)
  );
  NV_NVDLA_slcg NV_NVDLA_slcg_3 ( // @[NV_NVDLA_cacc.scala 166:31:@5651.4]
    .io_nvdla_clock_nvdla_core_clk(NV_NVDLA_slcg_3_io_nvdla_clock_nvdla_core_clk),
    .io_nvdla_core_gated_clk(NV_NVDLA_slcg_3_io_nvdla_core_gated_clk)
  );
  assign io_csb2cacc_req_ready = 1'h1; // @[NV_NVDLA_cacc.scala 63:27:@5496.4]
  assign io_csb2cacc_resp_valid = NV_NVDLA_CACC_regfile_io_csb2cacc_resp_valid; // @[NV_NVDLA_cacc.scala 63:27:@5493.4]
  assign io_csb2cacc_resp_bits = NV_NVDLA_CACC_regfile_io_csb2cacc_resp_bits; // @[NV_NVDLA_cacc.scala 63:27:@5492.4]
  assign io_cacc2sdp_pd_valid = NV_NVDLA_CACC_delivery_buffer_io_cacc2sdp_pd_valid; // @[NV_NVDLA_cacc.scala 143:20:@5609.4]
  assign io_cacc2sdp_pd_bits = NV_NVDLA_CACC_delivery_buffer_io_cacc2sdp_pd_bits; // @[NV_NVDLA_cacc.scala 143:20:@5608.4]
  assign io_accu2sc_credit_size_valid = NV_NVDLA_CACC_delivery_buffer_io_accu2sc_credit_size_valid; // @[NV_NVDLA_cacc.scala 152:28:@5620.4]
  assign io_accu2sc_credit_size_bits = 3'h1; // @[NV_NVDLA_cacc.scala 152:28:@5619.4]
  assign io_cacc2glb_done_intr_pd = NV_NVDLA_CACC_delivery_buffer_io_cacc2glb_done_intr_pd; // @[NV_NVDLA_cacc.scala 150:30:@5618.4]
  assign NV_NVDLA_CACC_regfile_reset = io_nvdla_core_rstn == 1'h0; // @[:@5490.4]
  assign NV_NVDLA_CACC_regfile_io_nvdla_core_clk = io_nvdla_clock_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 62:33:@5491.4]
  assign NV_NVDLA_CACC_regfile_io_csb2cacc_req_valid = io_csb2cacc_req_valid; // @[NV_NVDLA_cacc.scala 63:27:@5495.4]
  assign NV_NVDLA_CACC_regfile_io_csb2cacc_req_bits = io_csb2cacc_req_bits; // @[NV_NVDLA_cacc.scala 63:27:@5494.4]
  assign NV_NVDLA_CACC_regfile_io_dp2reg_done = NV_NVDLA_CACC_delivery_ctrl_io_dp2reg_done; // @[NV_NVDLA_cacc.scala 130:30:@5601.4]
  assign NV_NVDLA_CACC_regfile_io_dp2reg_sat_count = NV_NVDLA_CACC_calculator_io_dp2reg_sat_count; // @[NV_NVDLA_cacc.scala 114:35:@5591.4]
  assign NV_NVDLA_CACC_assembly_ctrl_reset = io_nvdla_core_rstn == 1'h0; // @[:@5499.4]
  assign NV_NVDLA_CACC_assembly_ctrl_io_nvdla_core_clk = NV_NVDLA_slcg_io_nvdla_core_gated_clk; // @[NV_NVDLA_cacc.scala 72:39:@5500.4]
  assign NV_NVDLA_CACC_assembly_ctrl_io_mac_a2accu_pd_valid = io_mac_a2accu_valid; // @[NV_NVDLA_cacc.scala 74:44:@5501.4]
  assign NV_NVDLA_CACC_assembly_ctrl_io_mac_a2accu_pd_bits = io_mac_a2accu_bits_pd; // @[NV_NVDLA_cacc.scala 75:43:@5502.4]
  assign NV_NVDLA_CACC_assembly_ctrl_io_reg2dp_op_en = NV_NVDLA_CACC_regfile_io_reg2dp_op_en; // @[NV_NVDLA_cacc.scala 77:37:@5503.4]
  assign NV_NVDLA_CACC_assembly_ctrl_io_reg2dp_clip_truncate = NV_NVDLA_CACC_regfile_io_reg2dp_field_clip_truncate; // @[NV_NVDLA_cacc.scala 78:45:@5504.4]
  assign NV_NVDLA_CACC_assembly_ctrl_io_dp2reg_done = NV_NVDLA_CACC_delivery_ctrl_io_dp2reg_done; // @[NV_NVDLA_cacc.scala 131:36:@5602.4]
  assign NV_NVDLA_CACC_assembly_buffer_reset = io_nvdla_core_rstn == 1'h0; // @[:@5507.4]
  assign NV_NVDLA_CACC_assembly_buffer_io_nvdla_core_clk = NV_NVDLA_slcg_1_io_nvdla_core_gated_clk; // @[NV_NVDLA_cacc.scala 85:41:@5508.4]
  assign NV_NVDLA_CACC_assembly_buffer_io_abuf_wr_addr_valid = NV_NVDLA_CACC_calculator_io_abuf_wr_addr_valid; // @[NV_NVDLA_cacc.scala 100:34:@5520.4]
  assign NV_NVDLA_CACC_assembly_buffer_io_abuf_wr_addr_bits = NV_NVDLA_CACC_calculator_io_abuf_wr_addr_bits; // @[NV_NVDLA_cacc.scala 100:34:@5519.4]
  assign NV_NVDLA_CACC_assembly_buffer_io_abuf_wr_data = NV_NVDLA_CACC_calculator_io_abuf_wr_data; // @[NV_NVDLA_cacc.scala 100:34:@5518.4]
  assign NV_NVDLA_CACC_assembly_buffer_io_abuf_rd_addr_valid = NV_NVDLA_CACC_assembly_ctrl_io_abuf_rd_addr_valid; // @[NV_NVDLA_cacc.scala 88:45:@5510.4]
  assign NV_NVDLA_CACC_assembly_buffer_io_abuf_rd_addr_bits = NV_NVDLA_CACC_assembly_ctrl_io_abuf_rd_addr_bits; // @[NV_NVDLA_cacc.scala 89:44:@5511.4]
  assign NV_NVDLA_CACC_calculator_reset = io_nvdla_core_rstn == 1'h0; // @[:@5514.4]
  assign NV_NVDLA_CACC_calculator_io_nvdla_core_clk = NV_NVDLA_slcg_2_io_nvdla_core_gated_clk; // @[NV_NVDLA_cacc.scala 97:36:@5516.4]
  assign NV_NVDLA_CACC_calculator_io_nvdla_cell_clk = NV_NVDLA_slcg_3_io_nvdla_core_gated_clk; // @[NV_NVDLA_cacc.scala 96:36:@5515.4]
  assign NV_NVDLA_CACC_calculator_io_abuf_rd_data = NV_NVDLA_CACC_assembly_buffer_io_abuf_rd_data; // @[NV_NVDLA_cacc.scala 99:34:@5517.4]
  assign NV_NVDLA_CACC_calculator_io_accu_ctrl_pd_valid = NV_NVDLA_CACC_assembly_ctrl_io_accu_ctrl_pd_valid; // @[NV_NVDLA_cacc.scala 102:34:@5522.4]
  assign NV_NVDLA_CACC_calculator_io_accu_ctrl_pd_bits = NV_NVDLA_CACC_assembly_ctrl_io_accu_ctrl_pd_bits; // @[NV_NVDLA_cacc.scala 102:34:@5521.4]
  assign NV_NVDLA_CACC_calculator_io_accu_ctrl_ram_valid = NV_NVDLA_CACC_assembly_ctrl_io_accu_ctrl_ram_valid; // @[NV_NVDLA_cacc.scala 103:41:@5523.4]
  assign NV_NVDLA_CACC_calculator_io_cfg_truncate = NV_NVDLA_CACC_assembly_ctrl_io_cfg_truncate; // @[NV_NVDLA_cacc.scala 105:34:@5524.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_0 = io_mac_a2accu_bits_data_0; // @[NV_NVDLA_cacc.scala 107:37:@5525.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_1 = io_mac_a2accu_bits_data_1; // @[NV_NVDLA_cacc.scala 107:37:@5526.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_2 = io_mac_a2accu_bits_data_2; // @[NV_NVDLA_cacc.scala 107:37:@5527.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_3 = io_mac_a2accu_bits_data_3; // @[NV_NVDLA_cacc.scala 107:37:@5528.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_4 = io_mac_a2accu_bits_data_4; // @[NV_NVDLA_cacc.scala 107:37:@5529.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_5 = io_mac_a2accu_bits_data_5; // @[NV_NVDLA_cacc.scala 107:37:@5530.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_6 = io_mac_a2accu_bits_data_6; // @[NV_NVDLA_cacc.scala 107:37:@5531.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_7 = io_mac_a2accu_bits_data_7; // @[NV_NVDLA_cacc.scala 107:37:@5532.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_8 = io_mac_a2accu_bits_data_8; // @[NV_NVDLA_cacc.scala 107:37:@5533.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_9 = io_mac_a2accu_bits_data_9; // @[NV_NVDLA_cacc.scala 107:37:@5534.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_10 = io_mac_a2accu_bits_data_10; // @[NV_NVDLA_cacc.scala 107:37:@5535.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_11 = io_mac_a2accu_bits_data_11; // @[NV_NVDLA_cacc.scala 107:37:@5536.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_12 = io_mac_a2accu_bits_data_12; // @[NV_NVDLA_cacc.scala 107:37:@5537.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_13 = io_mac_a2accu_bits_data_13; // @[NV_NVDLA_cacc.scala 107:37:@5538.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_14 = io_mac_a2accu_bits_data_14; // @[NV_NVDLA_cacc.scala 107:37:@5539.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_data_15 = io_mac_a2accu_bits_data_15; // @[NV_NVDLA_cacc.scala 107:37:@5540.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_0 = io_mac_a2accu_bits_mask_0; // @[NV_NVDLA_cacc.scala 108:37:@5541.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_1 = io_mac_a2accu_bits_mask_1; // @[NV_NVDLA_cacc.scala 108:37:@5542.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_2 = io_mac_a2accu_bits_mask_2; // @[NV_NVDLA_cacc.scala 108:37:@5543.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_3 = io_mac_a2accu_bits_mask_3; // @[NV_NVDLA_cacc.scala 108:37:@5544.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_4 = io_mac_a2accu_bits_mask_4; // @[NV_NVDLA_cacc.scala 108:37:@5545.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_5 = io_mac_a2accu_bits_mask_5; // @[NV_NVDLA_cacc.scala 108:37:@5546.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_6 = io_mac_a2accu_bits_mask_6; // @[NV_NVDLA_cacc.scala 108:37:@5547.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_7 = io_mac_a2accu_bits_mask_7; // @[NV_NVDLA_cacc.scala 108:37:@5548.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_8 = io_mac_a2accu_bits_mask_8; // @[NV_NVDLA_cacc.scala 108:37:@5549.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_9 = io_mac_a2accu_bits_mask_9; // @[NV_NVDLA_cacc.scala 108:37:@5550.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_10 = io_mac_a2accu_bits_mask_10; // @[NV_NVDLA_cacc.scala 108:37:@5551.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_11 = io_mac_a2accu_bits_mask_11; // @[NV_NVDLA_cacc.scala 108:37:@5552.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_12 = io_mac_a2accu_bits_mask_12; // @[NV_NVDLA_cacc.scala 108:37:@5553.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_13 = io_mac_a2accu_bits_mask_13; // @[NV_NVDLA_cacc.scala 108:37:@5554.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_14 = io_mac_a2accu_bits_mask_14; // @[NV_NVDLA_cacc.scala 108:37:@5555.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_mask_15 = io_mac_a2accu_bits_mask_15; // @[NV_NVDLA_cacc.scala 108:37:@5556.4]
  assign NV_NVDLA_CACC_calculator_io_mac_a2accu_pvld = io_mac_a2accu_valid; // @[NV_NVDLA_cacc.scala 109:37:@5557.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_0 = io_mac_b2accu_bits_data_0; // @[NV_NVDLA_cacc.scala 110:37:@5558.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_1 = io_mac_b2accu_bits_data_1; // @[NV_NVDLA_cacc.scala 110:37:@5559.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_2 = io_mac_b2accu_bits_data_2; // @[NV_NVDLA_cacc.scala 110:37:@5560.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_3 = io_mac_b2accu_bits_data_3; // @[NV_NVDLA_cacc.scala 110:37:@5561.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_4 = io_mac_b2accu_bits_data_4; // @[NV_NVDLA_cacc.scala 110:37:@5562.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_5 = io_mac_b2accu_bits_data_5; // @[NV_NVDLA_cacc.scala 110:37:@5563.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_6 = io_mac_b2accu_bits_data_6; // @[NV_NVDLA_cacc.scala 110:37:@5564.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_7 = io_mac_b2accu_bits_data_7; // @[NV_NVDLA_cacc.scala 110:37:@5565.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_8 = io_mac_b2accu_bits_data_8; // @[NV_NVDLA_cacc.scala 110:37:@5566.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_9 = io_mac_b2accu_bits_data_9; // @[NV_NVDLA_cacc.scala 110:37:@5567.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_10 = io_mac_b2accu_bits_data_10; // @[NV_NVDLA_cacc.scala 110:37:@5568.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_11 = io_mac_b2accu_bits_data_11; // @[NV_NVDLA_cacc.scala 110:37:@5569.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_12 = io_mac_b2accu_bits_data_12; // @[NV_NVDLA_cacc.scala 110:37:@5570.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_13 = io_mac_b2accu_bits_data_13; // @[NV_NVDLA_cacc.scala 110:37:@5571.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_14 = io_mac_b2accu_bits_data_14; // @[NV_NVDLA_cacc.scala 110:37:@5572.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_data_15 = io_mac_b2accu_bits_data_15; // @[NV_NVDLA_cacc.scala 110:37:@5573.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_0 = io_mac_b2accu_bits_mask_0; // @[NV_NVDLA_cacc.scala 111:37:@5574.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_1 = io_mac_b2accu_bits_mask_1; // @[NV_NVDLA_cacc.scala 111:37:@5575.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_2 = io_mac_b2accu_bits_mask_2; // @[NV_NVDLA_cacc.scala 111:37:@5576.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_3 = io_mac_b2accu_bits_mask_3; // @[NV_NVDLA_cacc.scala 111:37:@5577.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_4 = io_mac_b2accu_bits_mask_4; // @[NV_NVDLA_cacc.scala 111:37:@5578.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_5 = io_mac_b2accu_bits_mask_5; // @[NV_NVDLA_cacc.scala 111:37:@5579.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_6 = io_mac_b2accu_bits_mask_6; // @[NV_NVDLA_cacc.scala 111:37:@5580.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_7 = io_mac_b2accu_bits_mask_7; // @[NV_NVDLA_cacc.scala 111:37:@5581.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_8 = io_mac_b2accu_bits_mask_8; // @[NV_NVDLA_cacc.scala 111:37:@5582.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_9 = io_mac_b2accu_bits_mask_9; // @[NV_NVDLA_cacc.scala 111:37:@5583.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_10 = io_mac_b2accu_bits_mask_10; // @[NV_NVDLA_cacc.scala 111:37:@5584.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_11 = io_mac_b2accu_bits_mask_11; // @[NV_NVDLA_cacc.scala 111:37:@5585.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_12 = io_mac_b2accu_bits_mask_12; // @[NV_NVDLA_cacc.scala 111:37:@5586.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_13 = io_mac_b2accu_bits_mask_13; // @[NV_NVDLA_cacc.scala 111:37:@5587.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_14 = io_mac_b2accu_bits_mask_14; // @[NV_NVDLA_cacc.scala 111:37:@5588.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_mask_15 = io_mac_b2accu_bits_mask_15; // @[NV_NVDLA_cacc.scala 111:37:@5589.4]
  assign NV_NVDLA_CACC_calculator_io_mac_b2accu_pvld = io_mac_b2accu_valid; // @[NV_NVDLA_cacc.scala 112:37:@5590.4]
  assign NV_NVDLA_CACC_delivery_ctrl_reset = io_nvdla_core_rstn == 1'h0; // @[:@5594.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_nvdla_core_clk = io_nvdla_clock_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 121:39:@5595.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_ready = NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_ready; // @[NV_NVDLA_cacc.scala 147:38:@5614.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_data = NV_NVDLA_CACC_calculator_io_dlv_data; // @[NV_NVDLA_cacc.scala 123:33:@5596.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_pd = NV_NVDLA_CACC_calculator_io_dlv_pd; // @[NV_NVDLA_cacc.scala 125:31:@5598.4]
  assign NV_NVDLA_CACC_delivery_ctrl_io_dlv_valid = NV_NVDLA_CACC_calculator_io_dlv_valid; // @[NV_NVDLA_cacc.scala 126:34:@5599.4]
  assign NV_NVDLA_CACC_delivery_buffer_reset = io_nvdla_core_rstn == 1'h0; // @[:@5605.4]
  assign NV_NVDLA_CACC_delivery_buffer_io_nvdla_core_clk = io_nvdla_clock_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 139:41:@5606.4]
  assign NV_NVDLA_CACC_delivery_buffer_io_cacc2sdp_pd_ready = io_cacc2sdp_pd_ready; // @[NV_NVDLA_cacc.scala 143:20:@5610.4]
  assign NV_NVDLA_CACC_delivery_buffer_io_dbuf_wr_addr_valid = NV_NVDLA_CACC_delivery_ctrl_io_dbuf_wr_addr_valid; // @[NV_NVDLA_cacc.scala 148:34:@5617.4]
  assign NV_NVDLA_CACC_delivery_buffer_io_dbuf_wr_addr_bits = NV_NVDLA_CACC_delivery_ctrl_io_dbuf_wr_addr_bits; // @[NV_NVDLA_cacc.scala 148:34:@5616.4]
  assign NV_NVDLA_CACC_delivery_buffer_io_dbuf_wr_data = NV_NVDLA_CACC_delivery_ctrl_io_dbuf_wr_data; // @[NV_NVDLA_cacc.scala 148:34:@5615.4]
  assign NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_layer_end = NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_layer_end; // @[NV_NVDLA_cacc.scala 146:44:@5613.4]
  assign NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_addr_valid = NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_addr_valid; // @[NV_NVDLA_cacc.scala 145:39:@5612.4]
  assign NV_NVDLA_CACC_delivery_buffer_io_dbuf_rd_addr_bits = NV_NVDLA_CACC_delivery_ctrl_io_dbuf_rd_addr_bits; // @[NV_NVDLA_cacc.scala 145:39:@5611.4]
  assign NV_NVDLA_slcg_io_nvdla_clock_nvdla_core_clk = io_nvdla_clock_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 161:37:@5633.4]
  assign NV_NVDLA_slcg_1_io_nvdla_clock_nvdla_core_clk = io_nvdla_clock_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 161:37:@5640.4]
  assign NV_NVDLA_slcg_2_io_nvdla_clock_nvdla_core_clk = io_nvdla_clock_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 161:37:@5647.4]
  assign NV_NVDLA_slcg_3_io_nvdla_clock_nvdla_core_clk = io_nvdla_clock_nvdla_core_clk; // @[NV_NVDLA_cacc.scala 167:34:@5657.4]
endmodule
