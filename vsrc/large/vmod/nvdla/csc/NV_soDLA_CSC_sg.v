module nv_ram_rwsp( // @[:@34.2]
  input         io_clk, // @[:@37.4]
  input         io_re, // @[:@37.4]
  input         io_we, // @[:@37.4]
  input         io_ore, // @[:@37.4]
  input  [1:0]  io_ra, // @[:@37.4]
  input  [1:0]  io_wa, // @[:@37.4]
  input  [32:0] io_di, // @[:@37.4]
  output [32:0] io_dout // @[:@37.4]
);
  reg [32:0] _T_26_0; // @[nv_ram_rwsp.scala 31:18:@39.4]
  reg [63:0] _RAND_0;
  reg [32:0] _T_26_1; // @[nv_ram_rwsp.scala 31:18:@39.4]
  reg [63:0] _RAND_1;
  reg [32:0] _T_26_2; // @[nv_ram_rwsp.scala 31:18:@39.4]
  reg [63:0] _RAND_2;
  reg [32:0] _T_26_3; // @[nv_ram_rwsp.scala 31:18:@39.4]
  reg [63:0] _RAND_3;
  reg [1:0] _T_34; // @[nv_ram_rwsp.scala 32:19:@40.4]
  reg [31:0] _RAND_4;
  reg [32:0] _T_36; // @[nv_ram_rwsp.scala 33:21:@41.4]
  reg [63:0] _RAND_5;
  wire [32:0] _GEN_0; // @[nv_ram_rwsp.scala 36:20:@43.6]
  wire [32:0] _GEN_1; // @[nv_ram_rwsp.scala 36:20:@43.6]
  wire [32:0] _GEN_2; // @[nv_ram_rwsp.scala 36:20:@43.6]
  wire [32:0] _GEN_3; // @[nv_ram_rwsp.scala 36:20:@43.6]
  wire [32:0] _GEN_10; // @[nv_ram_rwsp.scala 43:16:@49.6]
  wire [32:0] _GEN_11; // @[nv_ram_rwsp.scala 43:16:@49.6]
  wire [32:0] _GEN_12; // @[nv_ram_rwsp.scala 43:16:@49.6]
  assign _GEN_0 = 2'h0 == io_wa ? io_di : _T_26_0; // @[nv_ram_rwsp.scala 36:20:@43.6]
  assign _GEN_1 = 2'h1 == io_wa ? io_di : _T_26_1; // @[nv_ram_rwsp.scala 36:20:@43.6]
  assign _GEN_2 = 2'h2 == io_wa ? io_di : _T_26_2; // @[nv_ram_rwsp.scala 36:20:@43.6]
  assign _GEN_3 = 2'h3 == io_wa ? io_di : _T_26_3; // @[nv_ram_rwsp.scala 36:20:@43.6]
  assign _GEN_10 = 2'h1 == _T_34 ? _T_26_1 : _T_26_0; // @[nv_ram_rwsp.scala 43:16:@49.6]
  assign _GEN_11 = 2'h2 == _T_34 ? _T_26_2 : _GEN_10; // @[nv_ram_rwsp.scala 43:16:@49.6]
  assign _GEN_12 = 2'h3 == _T_34 ? _T_26_3 : _GEN_11; // @[nv_ram_rwsp.scala 43:16:@49.6]
  assign io_dout = _T_36; // @[nv_ram_rwsp.scala 45:13:@51.4]
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
  _RAND_0 = {2{`RANDOM}};
  _T_26_0 = _RAND_0[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  _T_26_1 = _RAND_1[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_26_2 = _RAND_2[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{`RANDOM}};
  _T_26_3 = _RAND_3[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_34 = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{`RANDOM}};
  _T_36 = _RAND_5[32:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_clk) begin
    if (io_we) begin
      if (2'h0 == io_wa) begin
        _T_26_0 <= io_di;
      end
    end
    if (io_we) begin
      if (2'h1 == io_wa) begin
        _T_26_1 <= io_di;
      end
    end
    if (io_we) begin
      if (2'h2 == io_wa) begin
        _T_26_2 <= io_di;
      end
    end
    if (io_we) begin
      if (2'h3 == io_wa) begin
        _T_26_3 <= io_di;
      end
    end
    if (io_re) begin
      _T_34 <= io_ra;
    end
    if (io_ore) begin
      if (2'h3 == _T_34) begin
        _T_36 <= _T_26_3;
      end else begin
        if (2'h2 == _T_34) begin
          _T_36 <= _T_26_2;
        end else begin
          if (2'h1 == _T_34) begin
            _T_36 <= _T_26_1;
          end else begin
            _T_36 <= _T_26_0;
          end
        end
      end
    end
  end
endmodule
module NV_NVDLA_fifo( // @[:@53.2]
  input         clock, // @[:@54.4]
  input         reset, // @[:@55.4]
  input         io_clk, // @[:@56.4]
  input         io_wr_pvld, // @[:@56.4]
  output        io_wr_prdy, // @[:@56.4]
  input  [32:0] io_wr_pd, // @[:@56.4]
  output        io_wr_empty, // @[:@56.4]
  output        io_rd_pvld, // @[:@56.4]
  input         io_rd_prdy, // @[:@56.4]
  output [32:0] io_rd_pd // @[:@56.4]
);
  wire  nv_ram_rwsp_io_clk; // @[FIFO.scala 270:29:@136.4]
  wire  nv_ram_rwsp_io_re; // @[FIFO.scala 270:29:@136.4]
  wire  nv_ram_rwsp_io_we; // @[FIFO.scala 270:29:@136.4]
  wire  nv_ram_rwsp_io_ore; // @[FIFO.scala 270:29:@136.4]
  wire [1:0] nv_ram_rwsp_io_ra; // @[FIFO.scala 270:29:@136.4]
  wire [1:0] nv_ram_rwsp_io_wa; // @[FIFO.scala 270:29:@136.4]
  wire [32:0] nv_ram_rwsp_io_di; // @[FIFO.scala 270:29:@136.4]
  wire [32:0] nv_ram_rwsp_io_dout; // @[FIFO.scala 270:29:@136.4]
  reg  _T_28; // @[FIFO.scala 156:56:@65.4]
  reg [31:0] _RAND_0;
  reg  _T_31; // @[FIFO.scala 158:52:@66.4]
  reg [31:0] _RAND_1;
  reg [32:0] _T_33; // @[FIFO.scala 159:64:@67.4]
  reg [63:0] _RAND_2;
  reg  _T_36; // @[FIFO.scala 160:52:@68.4]
  reg [31:0] _RAND_3;
  wire  _T_135; // @[FIFO.scala 331:38:@167.4]
  wire  _T_56; // @[FIFO.scala 183:39:@89.4]
  wire  _T_57; // @[FIFO.scala 183:36:@90.4]
  reg [2:0] _T_62; // @[FIFO.scala 186:53:@93.4]
  reg [31:0] _RAND_4;
  wire [3:0] _T_69; // @[FIFO.scala 191:69:@98.4]
  wire [2:0] _T_70; // @[FIFO.scala 191:69:@99.4]
  wire [2:0] _T_71; // @[FIFO.scala 191:46:@100.4]
  wire  _T_74; // @[FIFO.scala 194:80:@102.4]
  wire  _T_76; // @[FIFO.scala 195:40:@103.4]
  wire [3:0] _T_64; // @[FIFO.scala 190:76:@94.4]
  wire [3:0] _T_65; // @[FIFO.scala 190:76:@95.4]
  wire [2:0] _T_66; // @[FIFO.scala 190:76:@96.4]
  wire [2:0] _T_67; // @[FIFO.scala 190:43:@97.4]
  wire [2:0] _T_72; // @[FIFO.scala 192:32:@101.4]
  wire  _T_39; // @[FIFO.scala 166:60:@70.4]
  wire  _T_41; // @[FIFO.scala 166:80:@71.4]
  wire  _T_42; // @[FIFO.scala 166:77:@72.4]
  wire  _T_43; // @[FIFO.scala 167:38:@73.4]
  wire  _T_44; // @[FIFO.scala 168:45:@74.4]
  wire  _T_46; // @[FIFO.scala 171:18:@76.4]
  wire  _T_48; // @[FIFO.scala 172:45:@78.6]
  wire  _T_49; // @[FIFO.scala 172:42:@79.6]
  wire  _GEN_0; // @[FIFO.scala 171:34:@77.4]
  wire  _T_52; // @[FIFO.scala 176:34:@83.4]
  wire  _T_84; // @[FIFO.scala 202:27:@111.4]
  wire [2:0] _GEN_2; // @[FIFO.scala 202:40:@112.4]
  wire  _T_86; // @[FIFO.scala 207:54:@115.4]
  wire  _T_88; // @[FIFO.scala 207:65:@116.4]
  wire  _T_89; // @[FIFO.scala 207:62:@117.4]
  reg  _T_92; // @[FIFO.scala 207:39:@118.4]
  reg [31:0] _RAND_5;
  reg [1:0] _T_95; // @[FIFO.scala 215:68:@121.4]
  reg [31:0] _RAND_6;
  wire [2:0] _T_97; // @[FIFO.scala 217:42:@122.4]
  wire [1:0] _T_98; // @[FIFO.scala 217:42:@123.4]
  wire [1:0] _GEN_3; // @[FIFO.scala 218:29:@124.4]
  reg [1:0] _T_103; // @[FIFO.scala 224:63:@128.4]
  reg [31:0] _RAND_7;
  wire [2:0] _T_105; // @[FIFO.scala 225:42:@129.4]
  wire [1:0] _T_106; // @[FIFO.scala 225:42:@130.4]
  wire [1:0] _GEN_4; // @[FIFO.scala 227:29:@131.4]
  reg  _T_114; // @[FIFO.scala 289:73:@150.4]
  reg [31:0] _RAND_8;
  reg  _T_117; // @[FIFO.scala 295:72:@152.4]
  reg [31:0] _RAND_9;
  reg  _T_120; // @[FIFO.scala 297:97:@153.4]
  reg [31:0] _RAND_10;
  reg [2:0] _T_123; // @[FIFO.scala 299:53:@154.4]
  reg [31:0] _RAND_11;
  wire [3:0] _T_125; // @[FIFO.scala 300:74:@155.4]
  wire [3:0] _T_126; // @[FIFO.scala 300:74:@156.4]
  wire [2:0] _T_127; // @[FIFO.scala 300:74:@157.4]
  wire [2:0] _T_128; // @[FIFO.scala 300:43:@158.4]
  wire [3:0] _T_130; // @[FIFO.scala 301:68:@159.4]
  wire [2:0] _T_131; // @[FIFO.scala 301:68:@160.4]
  wire [2:0] _T_132; // @[FIFO.scala 301:46:@161.4]
  wire [2:0] _T_133; // @[FIFO.scala 302:32:@162.4]
  wire  _T_134; // @[FIFO.scala 303:25:@163.4]
  wire [2:0] _GEN_5; // @[FIFO.scala 303:39:@164.4]
  wire  _T_137; // @[FIFO.scala 333:77:@169.4]
  wire  _T_139; // @[FIFO.scala 334:83:@170.4]
  wire  _T_140; // @[FIFO.scala 335:44:@171.4]
  wire  _T_141; // @[FIFO.scala 336:60:@172.4]
  wire  _T_143; // @[FIFO.scala 336:81:@174.4]
  wire  _GEN_6; // @[FIFO.scala 338:43:@178.4]
  wire  _T_147; // @[FIFO.scala 341:66:@181.4]
  wire  _T_148; // @[FIFO.scala 341:63:@182.4]
  wire  _T_149; // @[FIFO.scala 341:43:@183.4]
  nv_ram_rwsp nv_ram_rwsp ( // @[FIFO.scala 270:29:@136.4]
    .io_clk(nv_ram_rwsp_io_clk),
    .io_re(nv_ram_rwsp_io_re),
    .io_we(nv_ram_rwsp_io_we),
    .io_ore(nv_ram_rwsp_io_ore),
    .io_ra(nv_ram_rwsp_io_ra),
    .io_wa(nv_ram_rwsp_io_wa),
    .io_di(nv_ram_rwsp_io_di),
    .io_dout(nv_ram_rwsp_io_dout)
  );
  assign _T_135 = io_rd_pvld & io_rd_prdy; // @[FIFO.scala 331:38:@167.4]
  assign _T_56 = _T_28 == 1'h0; // @[FIFO.scala 183:39:@89.4]
  assign _T_57 = _T_31 & _T_56; // @[FIFO.scala 183:36:@90.4]
  assign _T_69 = _T_62 + 3'h1; // @[FIFO.scala 191:69:@98.4]
  assign _T_70 = _T_62 + 3'h1; // @[FIFO.scala 191:69:@99.4]
  assign _T_71 = _T_57 ? _T_70 : _T_62; // @[FIFO.scala 191:46:@100.4]
  assign _T_74 = _T_71 == 3'h4; // @[FIFO.scala 194:80:@102.4]
  assign _T_76 = _T_135 ? 1'h0 : _T_74; // @[FIFO.scala 195:40:@103.4]
  assign _T_64 = _T_62 - 3'h1; // @[FIFO.scala 190:76:@94.4]
  assign _T_65 = $unsigned(_T_64); // @[FIFO.scala 190:76:@95.4]
  assign _T_66 = _T_65[2:0]; // @[FIFO.scala 190:76:@96.4]
  assign _T_67 = _T_57 ? _T_62 : _T_66; // @[FIFO.scala 190:43:@97.4]
  assign _T_72 = _T_135 ? _T_67 : _T_71; // @[FIFO.scala 192:32:@101.4]
  assign _T_39 = _T_31 & _T_76; // @[FIFO.scala 166:60:@70.4]
  assign _T_41 = _T_57 == 1'h0; // @[FIFO.scala 166:80:@71.4]
  assign _T_42 = _T_39 & _T_41; // @[FIFO.scala 166:77:@72.4]
  assign _T_43 = io_wr_pvld ? _T_76 : _T_42; // @[FIFO.scala 167:38:@73.4]
  assign _T_44 = _T_31 & _T_28; // @[FIFO.scala 168:45:@74.4]
  assign _T_46 = _T_44 == 1'h0; // @[FIFO.scala 171:18:@76.4]
  assign _T_48 = _T_36 == 1'h0; // @[FIFO.scala 172:45:@78.6]
  assign _T_49 = io_wr_pvld & _T_48; // @[FIFO.scala 172:42:@79.6]
  assign _GEN_0 = _T_46 ? _T_49 : _T_31; // @[FIFO.scala 171:34:@77.4]
  assign _T_52 = _T_48 & io_wr_pvld; // @[FIFO.scala 176:34:@83.4]
  assign _T_84 = _T_57 ^ _T_135; // @[FIFO.scala 202:27:@111.4]
  assign _GEN_2 = _T_84 ? _T_72 : _T_62; // @[FIFO.scala 202:40:@112.4]
  assign _T_86 = _T_72 == 3'h0; // @[FIFO.scala 207:54:@115.4]
  assign _T_88 = io_wr_pvld == 1'h0; // @[FIFO.scala 207:65:@116.4]
  assign _T_89 = _T_86 & _T_88; // @[FIFO.scala 207:62:@117.4]
  assign _T_97 = _T_95 + 2'h1; // @[FIFO.scala 217:42:@122.4]
  assign _T_98 = _T_95 + 2'h1; // @[FIFO.scala 217:42:@123.4]
  assign _GEN_3 = _T_57 ? _T_98 : _T_95; // @[FIFO.scala 218:29:@124.4]
  assign _T_105 = _T_103 + 2'h1; // @[FIFO.scala 225:42:@129.4]
  assign _T_106 = _T_103 + 2'h1; // @[FIFO.scala 225:42:@130.4]
  assign _GEN_4 = _T_135 ? _T_106 : _T_103; // @[FIFO.scala 227:29:@131.4]
  assign _T_125 = _T_123 - 3'h1; // @[FIFO.scala 300:74:@155.4]
  assign _T_126 = $unsigned(_T_125); // @[FIFO.scala 300:74:@156.4]
  assign _T_127 = _T_126[2:0]; // @[FIFO.scala 300:74:@157.4]
  assign _T_128 = _T_114 ? _T_123 : _T_127; // @[FIFO.scala 300:43:@158.4]
  assign _T_130 = _T_123 + 3'h1; // @[FIFO.scala 301:68:@159.4]
  assign _T_131 = _T_123 + 3'h1; // @[FIFO.scala 301:68:@160.4]
  assign _T_132 = _T_114 ? _T_131 : _T_123; // @[FIFO.scala 301:46:@161.4]
  assign _T_133 = _T_135 ? _T_128 : _T_132; // @[FIFO.scala 302:32:@162.4]
  assign _T_134 = _T_114 | _T_135; // @[FIFO.scala 303:25:@163.4]
  assign _GEN_5 = _T_134 ? _T_133 : _T_123; // @[FIFO.scala 303:39:@164.4]
  assign _T_137 = _T_128 != 3'h0; // @[FIFO.scala 333:77:@169.4]
  assign _T_139 = _T_132 != 3'h0; // @[FIFO.scala 334:83:@170.4]
  assign _T_140 = _T_135 ? _T_137 : _T_139; // @[FIFO.scala 335:44:@171.4]
  assign _T_141 = ~ _T_117; // @[FIFO.scala 336:60:@172.4]
  assign _T_143 = _T_141 | _T_135; // @[FIFO.scala 336:81:@174.4]
  assign _GEN_6 = _T_134 ? _T_140 : _T_117; // @[FIFO.scala 338:43:@178.4]
  assign _T_147 = io_rd_prdy == 1'h0; // @[FIFO.scala 341:66:@181.4]
  assign _T_148 = _T_120 & _T_147; // @[FIFO.scala 341:63:@182.4]
  assign _T_149 = _T_117 | _T_148; // @[FIFO.scala 341:43:@183.4]
  assign io_wr_prdy = _T_36 == 1'h0; // @[FIFO.scala 182:20:@88.4]
  assign io_wr_empty = _T_92; // @[FIFO.scala 207:29:@120.4]
  assign io_rd_pvld = _T_120; // @[FIFO.scala 344:24:@185.4]
  assign io_rd_pd = nv_ram_rwsp_io_dout; // @[FIFO.scala 345:22:@186.4]
  assign nv_ram_rwsp_io_clk = io_clk; // @[FIFO.scala 271:24:@139.4]
  assign nv_ram_rwsp_io_re = _T_140 & _T_143; // @[FIFO.scala 279:23:@146.4]
  assign nv_ram_rwsp_io_we = _T_31 & _T_56; // @[FIFO.scala 276:23:@142.4]
  assign nv_ram_rwsp_io_ore = io_rd_pvld & io_rd_prdy; // @[FIFO.scala 280:24:@147.4]
  assign nv_ram_rwsp_io_ra = _T_135 ? _T_106 : _T_103; // @[FIFO.scala 278:23:@145.4]
  assign nv_ram_rwsp_io_wa = _T_95; // @[FIFO.scala 274:27:@141.4]
  assign nv_ram_rwsp_io_di = _T_33; // @[FIFO.scala 277:23:@143.4]
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
  _T_28 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_31 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_33 = _RAND_2[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_36 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_62 = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_92 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_95 = _RAND_6[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_103 = _RAND_7[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_114 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_117 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_120 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_123 = _RAND_11[2:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_28 <= 1'h0;
    end else begin
      if (_T_135) begin
        _T_28 <= 1'h0;
      end else begin
        _T_28 <= _T_74;
      end
    end
    if (reset) begin
      _T_31 <= 1'h0;
    end else begin
      if (_T_46) begin
        _T_31 <= _T_49;
      end
    end
    if (_T_52) begin
      _T_33 <= io_wr_pd;
    end
    if (reset) begin
      _T_36 <= 1'h0;
    end else begin
      if (io_wr_pvld) begin
        if (_T_135) begin
          _T_36 <= 1'h0;
        end else begin
          _T_36 <= _T_74;
        end
      end else begin
        _T_36 <= _T_42;
      end
    end
    if (reset) begin
      _T_62 <= 3'h0;
    end else begin
      if (_T_84) begin
        if (_T_135) begin
          if (!(_T_57)) begin
            _T_62 <= _T_66;
          end
        end else begin
          if (_T_57) begin
            _T_62 <= _T_70;
          end
        end
      end
    end
    if (reset) begin
      _T_92 <= 1'h1;
    end else begin
      _T_92 <= _T_89;
    end
    if (reset) begin
      _T_95 <= 2'h0;
    end else begin
      if (_T_57) begin
        _T_95 <= _T_98;
      end
    end
    if (reset) begin
      _T_103 <= 2'h0;
    end else begin
      if (_T_135) begin
        _T_103 <= _T_106;
      end
    end
    if (reset) begin
      _T_114 <= 1'h0;
    end else begin
      _T_114 <= _T_57;
    end
    if (reset) begin
      _T_117 <= 1'h0;
    end else begin
      if (_T_134) begin
        if (_T_135) begin
          _T_117 <= _T_137;
        end else begin
          _T_117 <= _T_139;
        end
      end
    end
    if (reset) begin
      _T_120 <= 1'h0;
    end else begin
      _T_120 <= _T_149;
    end
    if (reset) begin
      _T_123 <= 3'h0;
    end else begin
      if (_T_134) begin
        if (_T_135) begin
          if (!(_T_114)) begin
            _T_123 <= _T_127;
          end
        end else begin
          if (_T_114) begin
            _T_123 <= _T_131;
          end
        end
      end
    end
  end
endmodule
module nv_ram_rwsp_1( // @[:@233.2]
  input         io_clk, // @[:@236.4]
  input         io_re, // @[:@236.4]
  input         io_we, // @[:@236.4]
  input         io_ore, // @[:@236.4]
  input  [1:0]  io_ra, // @[:@236.4]
  input  [1:0]  io_wa, // @[:@236.4]
  input  [19:0] io_di, // @[:@236.4]
  output [19:0] io_dout // @[:@236.4]
);
  reg [19:0] _T_26_0; // @[nv_ram_rwsp.scala 31:18:@238.4]
  reg [31:0] _RAND_0;
  reg [19:0] _T_26_1; // @[nv_ram_rwsp.scala 31:18:@238.4]
  reg [31:0] _RAND_1;
  reg [19:0] _T_26_2; // @[nv_ram_rwsp.scala 31:18:@238.4]
  reg [31:0] _RAND_2;
  reg [19:0] _T_26_3; // @[nv_ram_rwsp.scala 31:18:@238.4]
  reg [31:0] _RAND_3;
  reg [1:0] _T_34; // @[nv_ram_rwsp.scala 32:19:@239.4]
  reg [31:0] _RAND_4;
  reg [19:0] _T_36; // @[nv_ram_rwsp.scala 33:21:@240.4]
  reg [31:0] _RAND_5;
  wire [19:0] _GEN_0; // @[nv_ram_rwsp.scala 36:20:@242.6]
  wire [19:0] _GEN_1; // @[nv_ram_rwsp.scala 36:20:@242.6]
  wire [19:0] _GEN_2; // @[nv_ram_rwsp.scala 36:20:@242.6]
  wire [19:0] _GEN_3; // @[nv_ram_rwsp.scala 36:20:@242.6]
  wire [19:0] _GEN_10; // @[nv_ram_rwsp.scala 43:16:@248.6]
  wire [19:0] _GEN_11; // @[nv_ram_rwsp.scala 43:16:@248.6]
  wire [19:0] _GEN_12; // @[nv_ram_rwsp.scala 43:16:@248.6]
  assign _GEN_0 = 2'h0 == io_wa ? io_di : _T_26_0; // @[nv_ram_rwsp.scala 36:20:@242.6]
  assign _GEN_1 = 2'h1 == io_wa ? io_di : _T_26_1; // @[nv_ram_rwsp.scala 36:20:@242.6]
  assign _GEN_2 = 2'h2 == io_wa ? io_di : _T_26_2; // @[nv_ram_rwsp.scala 36:20:@242.6]
  assign _GEN_3 = 2'h3 == io_wa ? io_di : _T_26_3; // @[nv_ram_rwsp.scala 36:20:@242.6]
  assign _GEN_10 = 2'h1 == _T_34 ? _T_26_1 : _T_26_0; // @[nv_ram_rwsp.scala 43:16:@248.6]
  assign _GEN_11 = 2'h2 == _T_34 ? _T_26_2 : _GEN_10; // @[nv_ram_rwsp.scala 43:16:@248.6]
  assign _GEN_12 = 2'h3 == _T_34 ? _T_26_3 : _GEN_11; // @[nv_ram_rwsp.scala 43:16:@248.6]
  assign io_dout = _T_36; // @[nv_ram_rwsp.scala 45:13:@250.4]
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
  _T_26_0 = _RAND_0[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_26_1 = _RAND_1[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_26_2 = _RAND_2[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_26_3 = _RAND_3[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_34 = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_36 = _RAND_5[19:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_clk) begin
    if (io_we) begin
      if (2'h0 == io_wa) begin
        _T_26_0 <= io_di;
      end
    end
    if (io_we) begin
      if (2'h1 == io_wa) begin
        _T_26_1 <= io_di;
      end
    end
    if (io_we) begin
      if (2'h2 == io_wa) begin
        _T_26_2 <= io_di;
      end
    end
    if (io_we) begin
      if (2'h3 == io_wa) begin
        _T_26_3 <= io_di;
      end
    end
    if (io_re) begin
      _T_34 <= io_ra;
    end
    if (io_ore) begin
      if (2'h3 == _T_34) begin
        _T_36 <= _T_26_3;
      end else begin
        if (2'h2 == _T_34) begin
          _T_36 <= _T_26_2;
        end else begin
          if (2'h1 == _T_34) begin
            _T_36 <= _T_26_1;
          end else begin
            _T_36 <= _T_26_0;
          end
        end
      end
    end
  end
endmodule
module NV_NVDLA_fifo_1( // @[:@252.2]
  input         clock, // @[:@253.4]
  input         reset, // @[:@254.4]
  input         io_clk, // @[:@255.4]
  input         io_wr_pvld, // @[:@255.4]
  output        io_wr_prdy, // @[:@255.4]
  input  [19:0] io_wr_pd, // @[:@255.4]
  output        io_wr_empty, // @[:@255.4]
  output        io_rd_pvld, // @[:@255.4]
  input         io_rd_prdy, // @[:@255.4]
  output [19:0] io_rd_pd // @[:@255.4]
);
  wire  nv_ram_rwsp_io_clk; // @[FIFO.scala 270:29:@335.4]
  wire  nv_ram_rwsp_io_re; // @[FIFO.scala 270:29:@335.4]
  wire  nv_ram_rwsp_io_we; // @[FIFO.scala 270:29:@335.4]
  wire  nv_ram_rwsp_io_ore; // @[FIFO.scala 270:29:@335.4]
  wire [1:0] nv_ram_rwsp_io_ra; // @[FIFO.scala 270:29:@335.4]
  wire [1:0] nv_ram_rwsp_io_wa; // @[FIFO.scala 270:29:@335.4]
  wire [19:0] nv_ram_rwsp_io_di; // @[FIFO.scala 270:29:@335.4]
  wire [19:0] nv_ram_rwsp_io_dout; // @[FIFO.scala 270:29:@335.4]
  reg  _T_28; // @[FIFO.scala 156:56:@264.4]
  reg [31:0] _RAND_0;
  reg  _T_31; // @[FIFO.scala 158:52:@265.4]
  reg [31:0] _RAND_1;
  reg [19:0] _T_33; // @[FIFO.scala 159:64:@266.4]
  reg [31:0] _RAND_2;
  reg  _T_36; // @[FIFO.scala 160:52:@267.4]
  reg [31:0] _RAND_3;
  wire  _T_135; // @[FIFO.scala 331:38:@366.4]
  wire  _T_56; // @[FIFO.scala 183:39:@288.4]
  wire  _T_57; // @[FIFO.scala 183:36:@289.4]
  reg [2:0] _T_62; // @[FIFO.scala 186:53:@292.4]
  reg [31:0] _RAND_4;
  wire [3:0] _T_69; // @[FIFO.scala 191:69:@297.4]
  wire [2:0] _T_70; // @[FIFO.scala 191:69:@298.4]
  wire [2:0] _T_71; // @[FIFO.scala 191:46:@299.4]
  wire  _T_74; // @[FIFO.scala 194:80:@301.4]
  wire  _T_76; // @[FIFO.scala 195:40:@302.4]
  wire [3:0] _T_64; // @[FIFO.scala 190:76:@293.4]
  wire [3:0] _T_65; // @[FIFO.scala 190:76:@294.4]
  wire [2:0] _T_66; // @[FIFO.scala 190:76:@295.4]
  wire [2:0] _T_67; // @[FIFO.scala 190:43:@296.4]
  wire [2:0] _T_72; // @[FIFO.scala 192:32:@300.4]
  wire  _T_39; // @[FIFO.scala 166:60:@269.4]
  wire  _T_41; // @[FIFO.scala 166:80:@270.4]
  wire  _T_42; // @[FIFO.scala 166:77:@271.4]
  wire  _T_43; // @[FIFO.scala 167:38:@272.4]
  wire  _T_44; // @[FIFO.scala 168:45:@273.4]
  wire  _T_46; // @[FIFO.scala 171:18:@275.4]
  wire  _T_48; // @[FIFO.scala 172:45:@277.6]
  wire  _T_49; // @[FIFO.scala 172:42:@278.6]
  wire  _GEN_0; // @[FIFO.scala 171:34:@276.4]
  wire  _T_52; // @[FIFO.scala 176:34:@282.4]
  wire  _T_84; // @[FIFO.scala 202:27:@310.4]
  wire [2:0] _GEN_2; // @[FIFO.scala 202:40:@311.4]
  wire  _T_86; // @[FIFO.scala 207:54:@314.4]
  wire  _T_88; // @[FIFO.scala 207:65:@315.4]
  wire  _T_89; // @[FIFO.scala 207:62:@316.4]
  reg  _T_92; // @[FIFO.scala 207:39:@317.4]
  reg [31:0] _RAND_5;
  reg [1:0] _T_95; // @[FIFO.scala 215:68:@320.4]
  reg [31:0] _RAND_6;
  wire [2:0] _T_97; // @[FIFO.scala 217:42:@321.4]
  wire [1:0] _T_98; // @[FIFO.scala 217:42:@322.4]
  wire [1:0] _GEN_3; // @[FIFO.scala 218:29:@323.4]
  reg [1:0] _T_103; // @[FIFO.scala 224:63:@327.4]
  reg [31:0] _RAND_7;
  wire [2:0] _T_105; // @[FIFO.scala 225:42:@328.4]
  wire [1:0] _T_106; // @[FIFO.scala 225:42:@329.4]
  wire [1:0] _GEN_4; // @[FIFO.scala 227:29:@330.4]
  reg  _T_114; // @[FIFO.scala 289:73:@349.4]
  reg [31:0] _RAND_8;
  reg  _T_117; // @[FIFO.scala 295:72:@351.4]
  reg [31:0] _RAND_9;
  reg  _T_120; // @[FIFO.scala 297:97:@352.4]
  reg [31:0] _RAND_10;
  reg [2:0] _T_123; // @[FIFO.scala 299:53:@353.4]
  reg [31:0] _RAND_11;
  wire [3:0] _T_125; // @[FIFO.scala 300:74:@354.4]
  wire [3:0] _T_126; // @[FIFO.scala 300:74:@355.4]
  wire [2:0] _T_127; // @[FIFO.scala 300:74:@356.4]
  wire [2:0] _T_128; // @[FIFO.scala 300:43:@357.4]
  wire [3:0] _T_130; // @[FIFO.scala 301:68:@358.4]
  wire [2:0] _T_131; // @[FIFO.scala 301:68:@359.4]
  wire [2:0] _T_132; // @[FIFO.scala 301:46:@360.4]
  wire [2:0] _T_133; // @[FIFO.scala 302:32:@361.4]
  wire  _T_134; // @[FIFO.scala 303:25:@362.4]
  wire [2:0] _GEN_5; // @[FIFO.scala 303:39:@363.4]
  wire  _T_137; // @[FIFO.scala 333:77:@368.4]
  wire  _T_139; // @[FIFO.scala 334:83:@369.4]
  wire  _T_140; // @[FIFO.scala 335:44:@370.4]
  wire  _T_141; // @[FIFO.scala 336:60:@371.4]
  wire  _T_143; // @[FIFO.scala 336:81:@373.4]
  wire  _GEN_6; // @[FIFO.scala 338:43:@377.4]
  wire  _T_147; // @[FIFO.scala 341:66:@380.4]
  wire  _T_148; // @[FIFO.scala 341:63:@381.4]
  wire  _T_149; // @[FIFO.scala 341:43:@382.4]
  nv_ram_rwsp_1 nv_ram_rwsp ( // @[FIFO.scala 270:29:@335.4]
    .io_clk(nv_ram_rwsp_io_clk),
    .io_re(nv_ram_rwsp_io_re),
    .io_we(nv_ram_rwsp_io_we),
    .io_ore(nv_ram_rwsp_io_ore),
    .io_ra(nv_ram_rwsp_io_ra),
    .io_wa(nv_ram_rwsp_io_wa),
    .io_di(nv_ram_rwsp_io_di),
    .io_dout(nv_ram_rwsp_io_dout)
  );
  assign _T_135 = io_rd_pvld & io_rd_prdy; // @[FIFO.scala 331:38:@366.4]
  assign _T_56 = _T_28 == 1'h0; // @[FIFO.scala 183:39:@288.4]
  assign _T_57 = _T_31 & _T_56; // @[FIFO.scala 183:36:@289.4]
  assign _T_69 = _T_62 + 3'h1; // @[FIFO.scala 191:69:@297.4]
  assign _T_70 = _T_62 + 3'h1; // @[FIFO.scala 191:69:@298.4]
  assign _T_71 = _T_57 ? _T_70 : _T_62; // @[FIFO.scala 191:46:@299.4]
  assign _T_74 = _T_71 == 3'h4; // @[FIFO.scala 194:80:@301.4]
  assign _T_76 = _T_135 ? 1'h0 : _T_74; // @[FIFO.scala 195:40:@302.4]
  assign _T_64 = _T_62 - 3'h1; // @[FIFO.scala 190:76:@293.4]
  assign _T_65 = $unsigned(_T_64); // @[FIFO.scala 190:76:@294.4]
  assign _T_66 = _T_65[2:0]; // @[FIFO.scala 190:76:@295.4]
  assign _T_67 = _T_57 ? _T_62 : _T_66; // @[FIFO.scala 190:43:@296.4]
  assign _T_72 = _T_135 ? _T_67 : _T_71; // @[FIFO.scala 192:32:@300.4]
  assign _T_39 = _T_31 & _T_76; // @[FIFO.scala 166:60:@269.4]
  assign _T_41 = _T_57 == 1'h0; // @[FIFO.scala 166:80:@270.4]
  assign _T_42 = _T_39 & _T_41; // @[FIFO.scala 166:77:@271.4]
  assign _T_43 = io_wr_pvld ? _T_76 : _T_42; // @[FIFO.scala 167:38:@272.4]
  assign _T_44 = _T_31 & _T_28; // @[FIFO.scala 168:45:@273.4]
  assign _T_46 = _T_44 == 1'h0; // @[FIFO.scala 171:18:@275.4]
  assign _T_48 = _T_36 == 1'h0; // @[FIFO.scala 172:45:@277.6]
  assign _T_49 = io_wr_pvld & _T_48; // @[FIFO.scala 172:42:@278.6]
  assign _GEN_0 = _T_46 ? _T_49 : _T_31; // @[FIFO.scala 171:34:@276.4]
  assign _T_52 = _T_48 & io_wr_pvld; // @[FIFO.scala 176:34:@282.4]
  assign _T_84 = _T_57 ^ _T_135; // @[FIFO.scala 202:27:@310.4]
  assign _GEN_2 = _T_84 ? _T_72 : _T_62; // @[FIFO.scala 202:40:@311.4]
  assign _T_86 = _T_72 == 3'h0; // @[FIFO.scala 207:54:@314.4]
  assign _T_88 = io_wr_pvld == 1'h0; // @[FIFO.scala 207:65:@315.4]
  assign _T_89 = _T_86 & _T_88; // @[FIFO.scala 207:62:@316.4]
  assign _T_97 = _T_95 + 2'h1; // @[FIFO.scala 217:42:@321.4]
  assign _T_98 = _T_95 + 2'h1; // @[FIFO.scala 217:42:@322.4]
  assign _GEN_3 = _T_57 ? _T_98 : _T_95; // @[FIFO.scala 218:29:@323.4]
  assign _T_105 = _T_103 + 2'h1; // @[FIFO.scala 225:42:@328.4]
  assign _T_106 = _T_103 + 2'h1; // @[FIFO.scala 225:42:@329.4]
  assign _GEN_4 = _T_135 ? _T_106 : _T_103; // @[FIFO.scala 227:29:@330.4]
  assign _T_125 = _T_123 - 3'h1; // @[FIFO.scala 300:74:@354.4]
  assign _T_126 = $unsigned(_T_125); // @[FIFO.scala 300:74:@355.4]
  assign _T_127 = _T_126[2:0]; // @[FIFO.scala 300:74:@356.4]
  assign _T_128 = _T_114 ? _T_123 : _T_127; // @[FIFO.scala 300:43:@357.4]
  assign _T_130 = _T_123 + 3'h1; // @[FIFO.scala 301:68:@358.4]
  assign _T_131 = _T_123 + 3'h1; // @[FIFO.scala 301:68:@359.4]
  assign _T_132 = _T_114 ? _T_131 : _T_123; // @[FIFO.scala 301:46:@360.4]
  assign _T_133 = _T_135 ? _T_128 : _T_132; // @[FIFO.scala 302:32:@361.4]
  assign _T_134 = _T_114 | _T_135; // @[FIFO.scala 303:25:@362.4]
  assign _GEN_5 = _T_134 ? _T_133 : _T_123; // @[FIFO.scala 303:39:@363.4]
  assign _T_137 = _T_128 != 3'h0; // @[FIFO.scala 333:77:@368.4]
  assign _T_139 = _T_132 != 3'h0; // @[FIFO.scala 334:83:@369.4]
  assign _T_140 = _T_135 ? _T_137 : _T_139; // @[FIFO.scala 335:44:@370.4]
  assign _T_141 = ~ _T_117; // @[FIFO.scala 336:60:@371.4]
  assign _T_143 = _T_141 | _T_135; // @[FIFO.scala 336:81:@373.4]
  assign _GEN_6 = _T_134 ? _T_140 : _T_117; // @[FIFO.scala 338:43:@377.4]
  assign _T_147 = io_rd_prdy == 1'h0; // @[FIFO.scala 341:66:@380.4]
  assign _T_148 = _T_120 & _T_147; // @[FIFO.scala 341:63:@381.4]
  assign _T_149 = _T_117 | _T_148; // @[FIFO.scala 341:43:@382.4]
  assign io_wr_prdy = _T_36 == 1'h0; // @[FIFO.scala 182:20:@287.4]
  assign io_wr_empty = _T_92; // @[FIFO.scala 207:29:@319.4]
  assign io_rd_pvld = _T_120; // @[FIFO.scala 344:24:@384.4]
  assign io_rd_pd = nv_ram_rwsp_io_dout; // @[FIFO.scala 345:22:@385.4]
  assign nv_ram_rwsp_io_clk = io_clk; // @[FIFO.scala 271:24:@338.4]
  assign nv_ram_rwsp_io_re = _T_140 & _T_143; // @[FIFO.scala 279:23:@345.4]
  assign nv_ram_rwsp_io_we = _T_31 & _T_56; // @[FIFO.scala 276:23:@341.4]
  assign nv_ram_rwsp_io_ore = io_rd_pvld & io_rd_prdy; // @[FIFO.scala 280:24:@346.4]
  assign nv_ram_rwsp_io_ra = _T_135 ? _T_106 : _T_103; // @[FIFO.scala 278:23:@344.4]
  assign nv_ram_rwsp_io_wa = _T_95; // @[FIFO.scala 274:27:@340.4]
  assign nv_ram_rwsp_io_di = _T_33; // @[FIFO.scala 277:23:@342.4]
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
  _T_28 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_31 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_33 = _RAND_2[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_36 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_62 = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_92 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_95 = _RAND_6[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_103 = _RAND_7[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_114 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_117 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_120 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_123 = _RAND_11[2:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_28 <= 1'h0;
    end else begin
      if (_T_135) begin
        _T_28 <= 1'h0;
      end else begin
        _T_28 <= _T_74;
      end
    end
    if (reset) begin
      _T_31 <= 1'h0;
    end else begin
      if (_T_46) begin
        _T_31 <= _T_49;
      end
    end
    if (_T_52) begin
      _T_33 <= io_wr_pd;
    end
    if (reset) begin
      _T_36 <= 1'h0;
    end else begin
      if (io_wr_pvld) begin
        if (_T_135) begin
          _T_36 <= 1'h0;
        end else begin
          _T_36 <= _T_74;
        end
      end else begin
        _T_36 <= _T_42;
      end
    end
    if (reset) begin
      _T_62 <= 3'h0;
    end else begin
      if (_T_84) begin
        if (_T_135) begin
          if (!(_T_57)) begin
            _T_62 <= _T_66;
          end
        end else begin
          if (_T_57) begin
            _T_62 <= _T_70;
          end
        end
      end
    end
    if (reset) begin
      _T_92 <= 1'h1;
    end else begin
      _T_92 <= _T_89;
    end
    if (reset) begin
      _T_95 <= 2'h0;
    end else begin
      if (_T_57) begin
        _T_95 <= _T_98;
      end
    end
    if (reset) begin
      _T_103 <= 2'h0;
    end else begin
      if (_T_135) begin
        _T_103 <= _T_106;
      end
    end
    if (reset) begin
      _T_114 <= 1'h0;
    end else begin
      _T_114 <= _T_57;
    end
    if (reset) begin
      _T_117 <= 1'h0;
    end else begin
      if (_T_134) begin
        if (_T_135) begin
          _T_117 <= _T_137;
        end else begin
          _T_117 <= _T_139;
        end
      end
    end
    if (reset) begin
      _T_120 <= 1'h0;
    end else begin
      _T_120 <= _T_149;
    end
    if (reset) begin
      _T_123 <= 3'h0;
    end else begin
      if (_T_134) begin
        if (_T_135) begin
          if (!(_T_114)) begin
            _T_123 <= _T_127;
          end
        end else begin
          if (_T_114) begin
            _T_123 <= _T_131;
          end
        end
      end
    end
  end
endmodule
module NV_soDLA_CSC_sg( // @[:@401.2]
  input         clock, // @[:@402.4]
  input         reset, // @[:@403.4]
  input         io_nvdla_core_clk, // @[:@404.4]
  input         io_nvdla_core_ng_clk, // @[:@404.4]
  input         io_cdma2sc_dat_updt_valid, // @[:@404.4]
  input  [14:0] io_cdma2sc_dat_updt_bits_entries, // @[:@404.4]
  input  [13:0] io_cdma2sc_dat_updt_bits_slices, // @[:@404.4]
  output        io_sc2cdma_dat_pending_req, // @[:@404.4]
  input         io_cdma2sc_dat_pending_ack, // @[:@404.4]
  input         io_cdma2sc_wt_updt_valid, // @[:@404.4]
  input  [14:0] io_cdma2sc_wt_updt_bits_entries, // @[:@404.4]
  input  [13:0] io_cdma2sc_wt_updt_bits_kernels, // @[:@404.4]
  output        io_sc2cdma_wt_pending_req, // @[:@404.4]
  input         io_cdma2sc_wt_pending_ack, // @[:@404.4]
  output [1:0]  io_sc_state, // @[:@404.4]
  output        io_sg2dl_pd_valid, // @[:@404.4]
  output [30:0] io_sg2dl_pd_bits, // @[:@404.4]
  output        io_sg2dl_reuse_rls, // @[:@404.4]
  output        io_sg2wl_pd_valid, // @[:@404.4]
  output [17:0] io_sg2wl_pd_bits, // @[:@404.4]
  output        io_sg2wl_reuse_rls, // @[:@404.4]
  input         io_accu2sc_credit_size_valid, // @[:@404.4]
  input  [2:0]  io_accu2sc_credit_size_bits, // @[:@404.4]
  input         io_reg2dp_op_en, // @[:@404.4]
  input         io_reg2dp_conv_mode, // @[:@404.4]
  input  [1:0]  io_reg2dp_proc_precision, // @[:@404.4]
  input         io_reg2dp_data_reuse, // @[:@404.4]
  input         io_reg2dp_skip_data_rls, // @[:@404.4]
  input         io_reg2dp_weight_reuse, // @[:@404.4]
  input         io_reg2dp_skip_weight_rls, // @[:@404.4]
  input  [4:0]  io_reg2dp_batches, // @[:@404.4]
  input         io_reg2dp_datain_format, // @[:@404.4]
  input  [12:0] io_reg2dp_datain_height_ext, // @[:@404.4]
  input  [1:0]  io_reg2dp_y_extension, // @[:@404.4]
  input  [4:0]  io_reg2dp_weight_width_ext, // @[:@404.4]
  input  [4:0]  io_reg2dp_weight_height_ext, // @[:@404.4]
  input  [12:0] io_reg2dp_weight_channel_ext, // @[:@404.4]
  input  [12:0] io_reg2dp_weight_kernel, // @[:@404.4]
  input  [12:0] io_reg2dp_dataout_width, // @[:@404.4]
  input  [12:0] io_reg2dp_dataout_height, // @[:@404.4]
  input  [4:0]  io_reg2dp_data_bank, // @[:@404.4]
  input  [4:0]  io_reg2dp_weight_bank, // @[:@404.4]
  input  [20:0] io_reg2dp_atomics, // @[:@404.4]
  input  [11:0] io_reg2dp_rls_slices, // @[:@404.4]
  output        io_dp2reg_done, // @[:@404.4]
  input  [31:0] io_pwrbus_ram_pd // @[:@404.4]
);
  wire  NV_NVDLA_fifo_clock; // @[NV_NVDLA_CSC_sg.scala 433:28:@883.4]
  wire  NV_NVDLA_fifo_reset; // @[NV_NVDLA_CSC_sg.scala 433:28:@883.4]
  wire  NV_NVDLA_fifo_io_clk; // @[NV_NVDLA_CSC_sg.scala 433:28:@883.4]
  wire  NV_NVDLA_fifo_io_wr_pvld; // @[NV_NVDLA_CSC_sg.scala 433:28:@883.4]
  wire  NV_NVDLA_fifo_io_wr_prdy; // @[NV_NVDLA_CSC_sg.scala 433:28:@883.4]
  wire [32:0] NV_NVDLA_fifo_io_wr_pd; // @[NV_NVDLA_CSC_sg.scala 433:28:@883.4]
  wire  NV_NVDLA_fifo_io_wr_empty; // @[NV_NVDLA_CSC_sg.scala 433:28:@883.4]
  wire  NV_NVDLA_fifo_io_rd_pvld; // @[NV_NVDLA_CSC_sg.scala 433:28:@883.4]
  wire  NV_NVDLA_fifo_io_rd_prdy; // @[NV_NVDLA_CSC_sg.scala 433:28:@883.4]
  wire [32:0] NV_NVDLA_fifo_io_rd_pd; // @[NV_NVDLA_CSC_sg.scala 433:28:@883.4]
  wire  NV_NVDLA_fifo_1_clock; // @[NV_NVDLA_CSC_sg.scala 446:27:@894.4]
  wire  NV_NVDLA_fifo_1_reset; // @[NV_NVDLA_CSC_sg.scala 446:27:@894.4]
  wire  NV_NVDLA_fifo_1_io_clk; // @[NV_NVDLA_CSC_sg.scala 446:27:@894.4]
  wire  NV_NVDLA_fifo_1_io_wr_pvld; // @[NV_NVDLA_CSC_sg.scala 446:27:@894.4]
  wire  NV_NVDLA_fifo_1_io_wr_prdy; // @[NV_NVDLA_CSC_sg.scala 446:27:@894.4]
  wire [19:0] NV_NVDLA_fifo_1_io_wr_pd; // @[NV_NVDLA_CSC_sg.scala 446:27:@894.4]
  wire  NV_NVDLA_fifo_1_io_wr_empty; // @[NV_NVDLA_CSC_sg.scala 446:27:@894.4]
  wire  NV_NVDLA_fifo_1_io_rd_pvld; // @[NV_NVDLA_CSC_sg.scala 446:27:@894.4]
  wire  NV_NVDLA_fifo_1_io_rd_prdy; // @[NV_NVDLA_CSC_sg.scala 446:27:@894.4]
  wire [19:0] NV_NVDLA_fifo_1_io_rd_pd; // @[NV_NVDLA_CSC_sg.scala 446:27:@894.4]
  reg  _T_131; // @[NV_NVDLA_CSC_sg.scala 88:29:@408.4]
  reg [31:0] _RAND_0;
  reg  _T_136; // @[NV_NVDLA_CSC_sg.scala 90:26:@410.4]
  reg [31:0] _RAND_1;
  reg [1:0] _T_142; // @[NV_NVDLA_CSC_sg.scala 93:28:@411.4]
  reg [31:0] _RAND_2;
  wire  _T_145; // @[Conditional.scala 37:30:@414.4]
  reg [4:0] _T_165; // @[NV_NVDLA_CSC_sg.scala 121:33:@455.4]
  reg [31:0] _RAND_3;
  wire  _T_209; // @[NV_NVDLA_CSC_sg.scala 138:43:@476.4]
  reg [4:0] _T_168; // @[NV_NVDLA_CSC_sg.scala 122:35:@456.4]
  reg [31:0] _RAND_4;
  wire  _T_210; // @[NV_NVDLA_CSC_sg.scala 139:44:@477.4]
  wire  _T_211; // @[NV_NVDLA_CSC_sg.scala 140:38:@478.4]
  wire  _T_146; // @[NV_NVDLA_CSC_sg.scala 98:31:@416.6]
  wire [1:0] _GEN_0; // @[NV_NVDLA_CSC_sg.scala 99:37:@421.8]
  wire [1:0] _GEN_1; // @[NV_NVDLA_CSC_sg.scala 98:47:@417.6]
  wire  _T_147; // @[Conditional.scala 37:30:@426.6]
  wire  _T_241; // @[NV_NVDLA_CSC_sg.scala 160:30:@510.4]
  reg  _T_171; // @[NV_NVDLA_CSC_sg.scala 123:34:@457.4]
  reg [31:0] _RAND_5;
  reg  _T_174; // @[NV_NVDLA_CSC_sg.scala 124:34:@458.4]
  reg [31:0] _RAND_6;
  wire  _T_212; // @[NV_NVDLA_CSC_sg.scala 141:51:@480.4]
  wire  _T_213; // @[NV_NVDLA_CSC_sg.scala 141:34:@481.4]
  wire  _T_214; // @[NV_NVDLA_CSC_sg.scala 141:32:@482.4]
  reg  _T_180; // @[NV_NVDLA_CSC_sg.scala 126:33:@460.4]
  reg [31:0] _RAND_7;
  reg  _T_183; // @[NV_NVDLA_CSC_sg.scala 127:33:@461.4]
  reg [31:0] _RAND_8;
  wire  _T_215; // @[NV_NVDLA_CSC_sg.scala 141:87:@483.4]
  wire  _T_216; // @[NV_NVDLA_CSC_sg.scala 141:71:@484.4]
  wire  _T_217; // @[NV_NVDLA_CSC_sg.scala 141:69:@485.4]
  wire [1:0] _GEN_2; // @[NV_NVDLA_CSC_sg.scala 102:29:@428.8]
  wire  _T_148; // @[Conditional.scala 37:30:@433.8]
  wire  _T_154; // @[NV_NVDLA_CSC_sg.scala 116:27:@450.4 NV_NVDLA_CSC_sg.scala 441:17:@891.4]
  wire  _T_204; // @[NV_NVDLA_CSC_sg.scala 137:22:@470.4]
  wire  _T_160; // @[NV_NVDLA_CSC_sg.scala 119:26:@453.4 NV_NVDLA_CSC_sg.scala 454:16:@902.4]
  wire  _T_205; // @[NV_NVDLA_CSC_sg.scala 137:37:@471.4]
  wire  _T_206; // @[NV_NVDLA_CSC_sg.scala 137:35:@472.4]
  wire  _T_156; // @[NV_NVDLA_CSC_sg.scala 117:30:@451.4 NV_NVDLA_CSC_sg.scala 444:20:@893.4]
  wire  _T_207; // @[NV_NVDLA_CSC_sg.scala 137:49:@473.4]
  wire  _T_162; // @[NV_NVDLA_CSC_sg.scala 120:29:@454.4 NV_NVDLA_CSC_sg.scala 457:19:@904.4]
  wire  _T_208; // @[NV_NVDLA_CSC_sg.scala 137:66:@474.4]
  wire  _T_149; // @[NV_NVDLA_CSC_sg.scala 105:26:@435.10]
  wire  _T_150; // @[NV_NVDLA_CSC_sg.scala 105:44:@436.10]
  wire  _T_151; // @[NV_NVDLA_CSC_sg.scala 105:42:@437.10]
  wire [1:0] _GEN_3; // @[NV_NVDLA_CSC_sg.scala 105:54:@438.10]
  wire [1:0] _GEN_6; // @[Conditional.scala 39:67:@434.8]
  wire [1:0] _GEN_7; // @[Conditional.scala 39:67:@427.6]
  wire [1:0] _GEN_8; // @[Conditional.scala 40:58:@415.4]
  reg  _T_177; // @[NV_NVDLA_CSC_sg.scala 125:34:@459.4]
  reg [31:0] _RAND_9;
  reg  _T_186; // @[NV_NVDLA_CSC_sg.scala 128:33:@462.4]
  reg [31:0] _RAND_10;
  reg [6:0] _T_191; // @[NV_NVDLA_CSC_sg.scala 130:34:@464.4]
  reg [31:0] _RAND_11;
  reg [7:0] _T_198; // @[NV_NVDLA_CSC_sg.scala 133:31:@467.4]
  reg [31:0] _RAND_12;
  reg [7:0] _T_201; // @[NV_NVDLA_CSC_sg.scala 134:28:@468.4]
  reg [31:0] _RAND_13;
  wire  _T_243; // @[NV_NVDLA_CSC_sg.scala 162:27:@513.4]
  wire  _T_218; // @[NV_NVDLA_CSC_sg.scala 144:26:@488.6]
  wire  _T_244; // @[NV_NVDLA_CSC_sg.scala 163:31:@515.4]
  wire  _T_219; // @[NV_NVDLA_CSC_sg.scala 144:35:@489.6]
  wire [8:0] _T_221; // @[NV_NVDLA_CSC_sg.scala 144:74:@490.6]
  wire [8:0] _T_222; // @[NV_NVDLA_CSC_sg.scala 144:74:@491.6]
  wire [7:0] _T_223; // @[NV_NVDLA_CSC_sg.scala 144:74:@492.6]
  wire [7:0] _T_224; // @[NV_NVDLA_CSC_sg.scala 144:25:@493.6]
  wire [7:0] _GEN_9; // @[NV_NVDLA_CSC_sg.scala 143:22:@487.4]
  reg [5:0] _T_799; // @[NV_NVDLA_CSC_sg.scala 501:26:@944.4]
  reg [31:0] _RAND_14;
  wire  _T_861; // @[NV_NVDLA_CSC_sg.scala 521:45:@984.4]
  wire  _T_862; // @[NV_NVDLA_CSC_sg.scala 521:34:@985.4]
  wire [30:0] _T_748; // @[NV_NVDLA_CSC_sg.scala 463:34:@906.4]
  wire  _T_757; // @[NV_NVDLA_CSC_sg.scala 474:40:@915.4]
  wire  _T_883; // @[NV_NVDLA_CSC_sg.scala 561:21:@1021.4]
  reg [8:0] _T_870; // @[NV_NVDLA_CSC_sg.scala 548:61:@1010.4]
  reg [31:0] _RAND_15;
  wire [8:0] _T_877; // @[Cat.scala 30:58:@1017.4]
  wire  _T_884; // @[NV_NVDLA_CSC_sg.scala 561:55:@1022.4]
  wire  _T_885; // @[NV_NVDLA_CSC_sg.scala 561:41:@1023.4]
  wire  _T_863; // @[NV_NVDLA_CSC_sg.scala 521:54:@986.4]
  wire [1:0] _T_747; // @[NV_NVDLA_CSC_sg.scala 462:35:@905.4]
  wire [1:0] _T_749; // @[NV_NVDLA_CSC_sg.scala 464:33:@907.4]
  wire  _T_864; // @[NV_NVDLA_CSC_sg.scala 521:85:@987.4]
  wire  _T_866; // @[NV_NVDLA_CSC_sg.scala 521:101:@989.4]
  wire  _T_867; // @[NV_NVDLA_CSC_sg.scala 521:69:@990.4]
  wire  _T_225; // @[NV_NVDLA_CSC_sg.scala 148:22:@498.4]
  wire  _T_759; // @[NV_NVDLA_CSC_sg.scala 476:35:@917.4]
  wire  _T_226; // @[NV_NVDLA_CSC_sg.scala 148:38:@499.4]
  wire [7:0] _T_228; // @[NV_NVDLA_CSC_sg.scala 149:41:@501.6]
  wire [7:0] _GEN_10; // @[NV_NVDLA_CSC_sg.scala 148:57:@500.4]
  reg [2:0] _T_237; // @[NV_NVDLA_CSC_sg.scala 156:28:@506.4]
  reg [31:0] _RAND_16;
  wire  _T_238; // @[NV_NVDLA_CSC_sg.scala 158:49:@507.4]
  wire  _T_239; // @[NV_NVDLA_CSC_sg.scala 158:36:@508.4]
  wire  _T_242; // @[NV_NVDLA_CSC_sg.scala 161:33:@512.4]
  wire  _T_245; // @[NV_NVDLA_CSC_sg.scala 164:37:@517.4]
  wire [1:0] _T_250; // @[NV_NVDLA_CSC_sg.scala 165:90:@518.4]
  wire [1:0] _T_251; // @[NV_NVDLA_CSC_sg.scala 165:55:@519.4]
  wire  _T_312; // @[NV_NVDLA_CSC_sg.scala 199:40:@566.4]
  wire  _T_313; // @[NV_NVDLA_CSC_sg.scala 200:26:@567.4]
  wire  _T_314; // @[NV_NVDLA_CSC_sg.scala 201:27:@568.4]
  wire  _T_315; // @[NV_NVDLA_CSC_sg.scala 201:25:@569.4]
  wire [2:0] _T_318; // @[Cat.scala 30:58:@571.4]
  wire  _T_253; // @[NV_NVDLA_CSC_sg.scala 166:37:@522.4]
  wire  _T_255; // @[NV_NVDLA_CSC_sg.scala 168:53:@523.4]
  wire  _T_256; // @[NV_NVDLA_CSC_sg.scala 168:39:@524.4]
  reg  _T_259; // @[NV_NVDLA_CSC_sg.scala 168:30:@525.4]
  reg [31:0] _RAND_17;
  wire  _T_260; // @[NV_NVDLA_CSC_sg.scala 169:43:@528.4]
  wire  _T_262; // @[NV_NVDLA_CSC_sg.scala 169:85:@529.4]
  wire  _T_264; // @[NV_NVDLA_CSC_sg.scala 169:83:@530.4]
  wire  _T_265; // @[NV_NVDLA_CSC_sg.scala 169:27:@531.4]
  wire  _T_269; // @[NV_NVDLA_CSC_sg.scala 170:64:@534.4]
  wire  _T_270; // @[NV_NVDLA_CSC_sg.scala 170:26:@535.4]
  wire  _T_271; // @[NV_NVDLA_CSC_sg.scala 171:39:@537.4]
  wire  _T_275; // @[NV_NVDLA_CSC_sg.scala 171:79:@539.4]
  wire  _T_276; // @[NV_NVDLA_CSC_sg.scala 171:27:@540.4]
  wire  _T_277; // @[NV_NVDLA_CSC_sg.scala 172:38:@542.4]
  wire  _T_281; // @[NV_NVDLA_CSC_sg.scala 172:77:@544.4]
  wire  _T_282; // @[NV_NVDLA_CSC_sg.scala 172:26:@545.4]
  reg [13:0] _T_289; // @[NV_NVDLA_CSC_sg.scala 181:30:@550.4]
  reg [31:0] _RAND_18;
  reg [13:0] _T_296; // @[NV_NVDLA_CSC_sg.scala 182:29:@552.4]
  reg [31:0] _RAND_19;
  reg [13:0] _T_303; // @[NV_NVDLA_CSC_sg.scala 183:31:@554.4]
  reg [31:0] _RAND_20;
  reg  _T_306; // @[NV_NVDLA_CSC_sg.scala 184:39:@555.4]
  reg [31:0] _RAND_21;
  wire [13:0] _T_308; // @[NV_NVDLA_CSC_sg.scala 190:49:@560.6]
  wire [4:0] _GEN_11; // @[NV_NVDLA_CSC_sg.scala 186:25:@556.4]
  wire [4:0] _GEN_12; // @[NV_NVDLA_CSC_sg.scala 186:25:@556.4]
  wire [13:0] _GEN_13; // @[NV_NVDLA_CSC_sg.scala 186:25:@556.4]
  wire [13:0] _GEN_14; // @[NV_NVDLA_CSC_sg.scala 186:25:@556.4]
  wire  _GEN_15; // @[NV_NVDLA_CSC_sg.scala 186:25:@556.4]
  wire [2:0] _GEN_16; // @[NV_NVDLA_CSC_sg.scala 186:25:@556.4]
  reg [13:0] _T_326; // @[NV_NVDLA_CSC_sg.scala 207:33:@574.4]
  reg [31:0] _RAND_22;
  reg [21:0] _T_333; // @[NV_NVDLA_CSC_sg.scala 208:34:@576.4]
  reg [31:0] _RAND_23;
  reg [4:0] _T_347; // @[NV_NVDLA_CSC_sg.scala 210:35:@580.4]
  reg [31:0] _RAND_24;
  reg [4:0] _T_354; // @[NV_NVDLA_CSC_sg.scala 211:36:@582.4]
  reg [31:0] _RAND_25;
  reg [13:0] _T_361; // @[NV_NVDLA_CSC_sg.scala 212:33:@584.4]
  reg [31:0] _RAND_26;
  reg [9:0] _T_368; // @[NV_NVDLA_CSC_sg.scala 213:32:@586.4]
  reg [31:0] _RAND_27;
  reg [2:0] _T_371; // @[NV_NVDLA_CSC_sg.scala 214:31:@587.4]
  reg [31:0] _RAND_28;
  reg [2:0] _T_374; // @[NV_NVDLA_CSC_sg.scala 215:32:@588.4]
  reg [31:0] _RAND_29;
  reg [13:0] _T_381; // @[NV_NVDLA_CSC_sg.scala 216:29:@590.4]
  reg [31:0] _RAND_30;
  reg  _T_384; // @[NV_NVDLA_CSC_sg.scala 217:28:@591.4]
  reg [31:0] _RAND_31;
  reg [5:0] _T_387; // @[NV_NVDLA_CSC_sg.scala 218:30:@592.4]
  reg [31:0] _RAND_32;
  reg [6:0] _T_390; // @[NV_NVDLA_CSC_sg.scala 219:30:@593.4]
  reg [31:0] _RAND_33;
  wire [8:0] _T_392; // @[NV_NVDLA_CSC_sg.scala 221:44:@594.4]
  wire [2:0] _T_393; // @[NV_NVDLA_CSC_sg.scala 221:69:@595.4]
  wire [13:0] _T_395; // @[NV_NVDLA_CSC_sg.scala 224:55:@597.6]
  wire [13:0] _T_397; // @[NV_NVDLA_CSC_sg.scala 225:64:@599.6]
  wire [21:0] _T_399; // @[NV_NVDLA_CSC_sg.scala 225:90:@600.6]
  wire [21:0] _T_400; // @[NV_NVDLA_CSC_sg.scala 225:31:@601.6]
  wire [4:0] _T_403; // @[NV_NVDLA_CSC_sg.scala 227:32:@604.6]
  wire [13:0] _T_405; // @[NV_NVDLA_CSC_sg.scala 229:56:@607.6]
  wire [7:0] _T_406; // @[NV_NVDLA_CSC_sg.scala 230:49:@609.6]
  wire [8:0] _T_408; // @[NV_NVDLA_CSC_sg.scala 230:71:@610.6]
  wire  _T_409; // @[NV_NVDLA_CSC_sg.scala 232:44:@613.6]
  wire  _T_411; // @[NV_NVDLA_CSC_sg.scala 233:44:@614.6]
  wire  _T_413; // @[NV_NVDLA_CSC_sg.scala 233:98:@615.6]
  wire [1:0] _T_414; // @[Cat.scala 30:58:@616.6]
  wire [1:0] _T_415; // @[NV_NVDLA_CSC_sg.scala 234:55:@617.6]
  wire [1:0] _T_416; // @[NV_NVDLA_CSC_sg.scala 233:29:@618.6]
  wire [1:0] _T_417; // @[NV_NVDLA_CSC_sg.scala 232:29:@619.6]
  wire [12:0] _T_419; // @[NV_NVDLA_CSC_sg.scala 235:44:@621.6]
  wire [11:0] _T_420; // @[NV_NVDLA_CSC_sg.scala 235:44:@622.6]
  wire [12:0] _GEN_62; // @[NV_NVDLA_CSC_sg.scala 236:116:@625.6]
  wire [13:0] _T_423; // @[NV_NVDLA_CSC_sg.scala 236:116:@625.6]
  wire [13:0] _T_424; // @[NV_NVDLA_CSC_sg.scala 236:116:@626.6]
  wire [13:0] _T_425; // @[NV_NVDLA_CSC_sg.scala 236:26:@627.6]
  wire [6:0] _T_428; // @[NV_NVDLA_CSC_sg.scala 240:27:@630.6]
  wire [13:0] _GEN_17; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  wire [21:0] _GEN_18; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  wire [4:0] _GEN_20; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  wire [4:0] _GEN_21; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  wire [13:0] _GEN_22; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  wire [9:0] _GEN_23; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  wire [2:0] _GEN_24; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  wire [2:0] _GEN_25; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  wire [13:0] _GEN_26; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  wire [13:0] _GEN_27; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  wire  _GEN_28; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  wire [6:0] _GEN_29; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  wire [6:0] _GEN_30; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  reg [13:0] _T_593; // @[NV_NVDLA_CSC_sg.scala 333:29:@745.4]
  reg [31:0] _RAND_34;
  wire  _T_600; // @[NV_NVDLA_CSC_sg.scala 337:38:@748.4]
  reg [13:0] _T_596; // @[NV_NVDLA_CSC_sg.scala 334:35:@746.4]
  reg [31:0] _RAND_35;
  reg [9:0] _T_449; // @[NV_NVDLA_CSC_sg.scala 257:31:@645.4]
  reg [31:0] _RAND_36;
  wire [10:0] _T_451; // @[NV_NVDLA_CSC_sg.scala 258:41:@646.4]
  wire [9:0] _T_452; // @[NV_NVDLA_CSC_sg.scala 258:41:@647.4]
  wire  _T_453; // @[NV_NVDLA_CSC_sg.scala 259:40:@648.4]
  wire  _T_454; // @[NV_NVDLA_CSC_sg.scala 260:26:@650.4]
  wire [4:0] _T_456; // @[NV_NVDLA_CSC_sg.scala 260:87:@651.4]
  wire [5:0] _T_458; // @[NV_NVDLA_CSC_sg.scala 260:110:@652.4]
  wire [5:0] _T_459; // @[NV_NVDLA_CSC_sg.scala 260:25:@653.4]
  wire [13:0] _GEN_63; // @[NV_NVDLA_CSC_sg.scala 338:49:@749.4]
  wire [14:0] _T_601; // @[NV_NVDLA_CSC_sg.scala 338:49:@749.4]
  wire [13:0] _T_602; // @[NV_NVDLA_CSC_sg.scala 338:49:@750.4]
  reg [14:0] _T_599; // @[NV_NVDLA_CSC_sg.scala 335:30:@747.4]
  reg [31:0] _RAND_37;
  wire [14:0] _GEN_64; // @[NV_NVDLA_CSC_sg.scala 339:46:@751.4]
  wire  _T_603; // @[NV_NVDLA_CSC_sg.scala 339:46:@751.4]
  wire  _T_615; // @[NV_NVDLA_CSC_sg.scala 350:37:@763.4]
  wire  _T_616; // @[NV_NVDLA_CSC_sg.scala 351:30:@764.4]
  wire  _T_617; // @[NV_NVDLA_CSC_sg.scala 351:45:@765.4]
  wire  _T_618; // @[NV_NVDLA_CSC_sg.scala 351:43:@766.4]
  wire  _T_611; // @[NV_NVDLA_CSC_sg.scala 346:30:@760.4 NV_NVDLA_CSC_sg.scala 439:20:@889.4]
  wire  _T_613; // @[NV_NVDLA_CSC_sg.scala 347:29:@761.4 NV_NVDLA_CSC_sg.scala 452:19:@900.4]
  wire  _T_614; // @[NV_NVDLA_CSC_sg.scala 349:42:@762.4]
  wire  _T_620; // @[NV_NVDLA_CSC_sg.scala 351:69:@768.4]
  wire  _T_621; // @[NV_NVDLA_CSC_sg.scala 351:57:@769.4]
  reg [4:0] _T_554; // @[NV_NVDLA_CSC_sg.scala 308:34:@719.4]
  reg [31:0] _RAND_38;
  wire  _T_570; // @[NV_NVDLA_CSC_sg.scala 315:38:@727.4]
  reg [4:0] _T_561; // @[NV_NVDLA_CSC_sg.scala 309:34:@721.4]
  reg [31:0] _RAND_39;
  wire [4:0] _GEN_65; // @[NV_NVDLA_CSC_sg.scala 314:47:@726.4]
  wire [5:0] _T_569; // @[NV_NVDLA_CSC_sg.scala 314:47:@726.4]
  wire [5:0] _GEN_66; // @[NV_NVDLA_CSC_sg.scala 316:42:@728.4]
  wire  _T_571; // @[NV_NVDLA_CSC_sg.scala 316:42:@728.4]
  wire  _T_580; // @[NV_NVDLA_CSC_sg.scala 322:35:@734.4]
  wire  _T_634; // @[NV_NVDLA_CSC_sg.scala 358:28:@788.4]
  reg [13:0] _T_524; // @[NV_NVDLA_CSC_sg.scala 297:33:@702.4]
  reg [31:0] _RAND_40;
  wire [14:0] _T_526; // @[NV_NVDLA_CSC_sg.scala 298:45:@703.4]
  wire [13:0] _T_527; // @[NV_NVDLA_CSC_sg.scala 298:45:@704.4]
  wire  _T_528; // @[NV_NVDLA_CSC_sg.scala 299:47:@705.4]
  wire  _T_635; // @[NV_NVDLA_CSC_sg.scala 358:44:@789.4]
  reg [21:0] _T_489; // @[NV_NVDLA_CSC_sg.scala 278:32:@674.4]
  reg [31:0] _RAND_41;
  wire [21:0] _GEN_67; // @[NV_NVDLA_CSC_sg.scala 280:47:@678.4]
  wire [22:0] _T_494; // @[NV_NVDLA_CSC_sg.scala 280:47:@678.4]
  wire [21:0] _T_495; // @[NV_NVDLA_CSC_sg.scala 280:47:@679.4]
  wire  _T_497; // @[NV_NVDLA_CSC_sg.scala 282:49:@681.4]
  wire  _T_636; // @[NV_NVDLA_CSC_sg.scala 358:62:@790.4]
  wire  _T_472; // @[NV_NVDLA_CSC_sg.scala 270:24:@662.4]
  reg [12:0] _T_469; // @[NV_NVDLA_CSC_sg.scala 267:35:@660.4]
  reg [31:0] _RAND_42;
  wire  _T_473; // @[NV_NVDLA_CSC_sg.scala 270:55:@663.4]
  wire  _T_474; // @[NV_NVDLA_CSC_sg.scala 270:35:@664.4]
  wire  _T_637; // @[NV_NVDLA_CSC_sg.scala 358:79:@791.4]
  wire  _T_638; // @[NV_NVDLA_CSC_sg.scala 358:94:@792.4]
  wire  _T_436; // @[NV_NVDLA_CSC_sg.scala 251:19:@637.4]
  wire  _T_439; // @[NV_NVDLA_CSC_sg.scala 252:48:@639.6]
  wire  _T_440; // @[NV_NVDLA_CSC_sg.scala 252:25:@640.6]
  wire  _GEN_31; // @[NV_NVDLA_CSC_sg.scala 251:33:@638.4]
  wire  _T_460; // @[NV_NVDLA_CSC_sg.scala 262:19:@654.4]
  wire [9:0] _T_462; // @[NV_NVDLA_CSC_sg.scala 263:27:@656.6]
  wire [9:0] _GEN_32; // @[NV_NVDLA_CSC_sg.scala 262:33:@655.4]
  wire  _T_626; // @[NV_NVDLA_CSC_sg.scala 356:29:@778.4]
  wire  _T_627; // @[NV_NVDLA_CSC_sg.scala 356:39:@779.4]
  wire  _T_628; // @[NV_NVDLA_CSC_sg.scala 356:55:@780.4]
  wire  _T_629; // @[NV_NVDLA_CSC_sg.scala 356:73:@781.4]
  wire  _T_475; // @[NV_NVDLA_CSC_sg.scala 271:19:@665.4]
  wire [13:0] _T_479; // @[NV_NVDLA_CSC_sg.scala 274:47:@667.6]
  wire [12:0] _T_480; // @[NV_NVDLA_CSC_sg.scala 274:47:@668.6]
  wire [12:0] _T_481; // @[NV_NVDLA_CSC_sg.scala 273:32:@669.6]
  wire [12:0] _T_482; // @[NV_NVDLA_CSC_sg.scala 272:32:@670.6]
  wire [12:0] _GEN_33; // @[NV_NVDLA_CSC_sg.scala 271:32:@666.4]
  wire [7:0] _T_491; // @[Cat.scala 30:58:@675.4]
  wire [21:0] _GEN_68; // @[NV_NVDLA_CSC_sg.scala 279:46:@676.4]
  wire [22:0] _T_492; // @[NV_NVDLA_CSC_sg.scala 279:46:@676.4]
  wire [21:0] _T_493; // @[NV_NVDLA_CSC_sg.scala 279:46:@677.4]
  wire  _T_496; // @[NV_NVDLA_CSC_sg.scala 281:49:@680.4]
  wire [22:0] _T_498; // @[NV_NVDLA_CSC_sg.scala 284:43:@682.4]
  wire [22:0] _T_499; // @[NV_NVDLA_CSC_sg.scala 284:43:@683.4]
  wire [21:0] _T_500; // @[NV_NVDLA_CSC_sg.scala 284:43:@684.4]
  wire [6:0] _T_501; // @[NV_NVDLA_CSC_sg.scala 284:60:@685.4]
  wire [6:0] _T_502; // @[NV_NVDLA_CSC_sg.scala 285:59:@686.4]
  wire [6:0] _T_503; // @[NV_NVDLA_CSC_sg.scala 285:25:@687.4]
  wire  _T_506; // @[NV_NVDLA_CSC_sg.scala 288:19:@689.4]
  wire [21:0] _GEN_70; // @[NV_NVDLA_CSC_sg.scala 292:41:@693.6]
  wire [22:0] _T_511; // @[NV_NVDLA_CSC_sg.scala 292:41:@693.6]
  wire [21:0] _T_512; // @[NV_NVDLA_CSC_sg.scala 292:41:@694.6]
  wire [21:0] _T_513; // @[NV_NVDLA_CSC_sg.scala 291:29:@695.6]
  wire [21:0] _T_514; // @[NV_NVDLA_CSC_sg.scala 290:29:@696.6]
  wire [21:0] _T_515; // @[NV_NVDLA_CSC_sg.scala 289:29:@697.6]
  wire [21:0] _GEN_34; // @[NV_NVDLA_CSC_sg.scala 288:34:@690.4]
  wire  _T_529; // @[NV_NVDLA_CSC_sg.scala 301:27:@706.4]
  wire [5:0] _T_531; // @[NV_NVDLA_CSC_sg.scala 301:93:@707.4]
  wire [6:0] _T_533; // @[NV_NVDLA_CSC_sg.scala 301:117:@708.4]
  wire [6:0] _T_534; // @[NV_NVDLA_CSC_sg.scala 301:26:@709.4]
  wire  _T_535; // @[NV_NVDLA_CSC_sg.scala 303:19:@710.4]
  wire [13:0] _T_546; // @[NV_NVDLA_CSC_sg.scala 304:63:@714.6]
  wire [13:0] _T_547; // @[NV_NVDLA_CSC_sg.scala 304:30:@715.6]
  wire [13:0] _GEN_35; // @[NV_NVDLA_CSC_sg.scala 303:35:@711.4]
  wire [5:0] _T_567; // @[NV_NVDLA_CSC_sg.scala 313:47:@724.4]
  wire [4:0] _T_568; // @[NV_NVDLA_CSC_sg.scala 313:47:@725.4]
  wire  _T_572; // @[NV_NVDLA_CSC_sg.scala 318:33:@729.4]
  wire  _T_574; // @[NV_NVDLA_CSC_sg.scala 319:33:@730.4]
  wire [1:0] _T_577; // @[NV_NVDLA_CSC_sg.scala 319:20:@731.4]
  wire [1:0] _T_578; // @[NV_NVDLA_CSC_sg.scala 318:20:@732.4]
  wire [2:0] _T_579; // @[NV_NVDLA_CSC_sg.scala 317:20:@733.4]
  wire  _T_581; // @[NV_NVDLA_CSC_sg.scala 324:19:@735.4]
  wire [4:0] _T_584; // @[NV_NVDLA_CSC_sg.scala 326:32:@737.6]
  wire [4:0] _T_585; // @[NV_NVDLA_CSC_sg.scala 325:31:@738.6]
  wire [4:0] _T_588; // @[NV_NVDLA_CSC_sg.scala 330:48:@740.6]
  wire [4:0] _T_589; // @[NV_NVDLA_CSC_sg.scala 329:32:@741.6]
  wire [4:0] _T_590; // @[NV_NVDLA_CSC_sg.scala 328:31:@742.6]
  wire [4:0] _GEN_36; // @[NV_NVDLA_CSC_sg.scala 324:29:@736.4]
  wire [4:0] _GEN_37; // @[NV_NVDLA_CSC_sg.scala 324:29:@736.4]
  wire  _T_605; // @[NV_NVDLA_CSC_sg.scala 342:43:@754.6]
  wire  _T_606; // @[NV_NVDLA_CSC_sg.scala 342:61:@755.6]
  wire  _T_607; // @[NV_NVDLA_CSC_sg.scala 342:59:@756.6]
  wire [13:0] _T_609; // @[NV_NVDLA_CSC_sg.scala 342:32:@757.6]
  wire [13:0] _GEN_38; // @[NV_NVDLA_CSC_sg.scala 341:33:@753.4]
  wire  _T_639; // @[NV_NVDLA_CSC_sg.scala 360:20:@794.4]
  wire  _T_642; // @[NV_NVDLA_CSC_sg.scala 360:57:@796.4]
  wire  _T_645; // @[NV_NVDLA_CSC_sg.scala 360:83:@797.4]
  wire  _T_646; // @[NV_NVDLA_CSC_sg.scala 360:45:@798.4]
  wire  _T_647; // @[NV_NVDLA_CSC_sg.scala 360:19:@799.4]
  reg [1:0] _T_654; // @[NV_NVDLA_CSC_sg.scala 363:26:@802.4]
  reg [31:0] _RAND_43;
  reg [4:0] _T_657; // @[NV_NVDLA_CSC_sg.scala 364:35:@803.4]
  reg [31:0] _RAND_44;
  reg [4:0] _T_660; // @[NV_NVDLA_CSC_sg.scala 365:35:@804.4]
  reg [31:0] _RAND_45;
  reg [6:0] _T_663; // @[NV_NVDLA_CSC_sg.scala 366:39:@805.4]
  reg [31:0] _RAND_46;
  reg [6:0] _T_666; // @[NV_NVDLA_CSC_sg.scala 367:40:@806.4]
  reg [31:0] _RAND_47;
  reg [2:0] _T_669; // @[NV_NVDLA_CSC_sg.scala 368:36:@807.4]
  reg [31:0] _RAND_48;
  reg  _T_672; // @[NV_NVDLA_CSC_sg.scala 369:36:@808.4]
  reg [31:0] _RAND_49;
  reg  _T_675; // @[NV_NVDLA_CSC_sg.scala 370:38:@809.4]
  reg [31:0] _RAND_50;
  reg  _T_678; // @[NV_NVDLA_CSC_sg.scala 371:36:@810.4]
  reg [31:0] _RAND_51;
  reg  _T_681; // @[NV_NVDLA_CSC_sg.scala 372:36:@811.4]
  reg [31:0] _RAND_52;
  reg  _T_684; // @[NV_NVDLA_CSC_sg.scala 373:38:@812.4]
  reg [31:0] _RAND_53;
  wire [2:0] _T_687; // @[NV_NVDLA_CSC_sg.scala 375:61:@813.4]
  wire [1:0] _T_688; // @[NV_NVDLA_CSC_sg.scala 375:61:@814.4]
  wire [1:0] _T_689; // @[NV_NVDLA_CSC_sg.scala 375:24:@815.4]
  wire  _T_690; // @[NV_NVDLA_CSC_sg.scala 379:43:@816.4]
  wire  _T_692; // @[NV_NVDLA_CSC_sg.scala 380:59:@818.4]
  wire  _T_693; // @[NV_NVDLA_CSC_sg.scala 380:76:@819.4]
  wire  _T_697; // @[NV_NVDLA_CSC_sg.scala 381:91:@823.4]
  wire [1:0] _GEN_39; // @[NV_NVDLA_CSC_sg.scala 383:29:@825.4]
  wire  _T_704; // @[NV_NVDLA_CSC_sg.scala 396:32:@841.6]
  wire  _T_705; // @[NV_NVDLA_CSC_sg.scala 396:57:@842.6]
  wire [4:0] _GEN_40; // @[NV_NVDLA_CSC_sg.scala 386:18:@831.4]
  wire [4:0] _GEN_41; // @[NV_NVDLA_CSC_sg.scala 386:18:@831.4]
  wire [6:0] _GEN_42; // @[NV_NVDLA_CSC_sg.scala 386:18:@831.4]
  wire [6:0] _GEN_43; // @[NV_NVDLA_CSC_sg.scala 386:18:@831.4]
  wire [2:0] _GEN_44; // @[NV_NVDLA_CSC_sg.scala 386:18:@831.4]
  wire  _GEN_45; // @[NV_NVDLA_CSC_sg.scala 386:18:@831.4]
  wire  _GEN_46; // @[NV_NVDLA_CSC_sg.scala 386:18:@831.4]
  wire  _GEN_47; // @[NV_NVDLA_CSC_sg.scala 386:18:@831.4]
  wire  _GEN_48; // @[NV_NVDLA_CSC_sg.scala 386:18:@831.4]
  wire  _GEN_49; // @[NV_NVDLA_CSC_sg.scala 386:18:@831.4]
  reg [6:0] _T_708; // @[NV_NVDLA_CSC_sg.scala 400:37:@845.4]
  reg [31:0] _RAND_54;
  reg [6:0] _T_711; // @[NV_NVDLA_CSC_sg.scala 401:37:@846.4]
  reg [31:0] _RAND_55;
  reg [2:0] _T_714; // @[NV_NVDLA_CSC_sg.scala 402:35:@847.4]
  reg [31:0] _RAND_56;
  reg  _T_717; // @[NV_NVDLA_CSC_sg.scala 403:36:@848.4]
  reg [31:0] _RAND_57;
  wire [1:0] _T_718; // @[NV_NVDLA_CSC_sg.scala 406:42:@849.4]
  wire [30:0] _T_731; // @[Cat.scala 30:58:@862.4]
  wire  _T_734; // @[NV_NVDLA_CSC_sg.scala 415:57:@869.6]
  wire [6:0] _GEN_50; // @[NV_NVDLA_CSC_sg.scala 411:18:@864.4]
  wire [6:0] _GEN_51; // @[NV_NVDLA_CSC_sg.scala 411:18:@864.4]
  wire [2:0] _GEN_52; // @[NV_NVDLA_CSC_sg.scala 411:18:@864.4]
  wire  _GEN_53; // @[NV_NVDLA_CSC_sg.scala 411:18:@864.4]
  wire [1:0] _T_735; // @[NV_NVDLA_CSC_sg.scala 423:41:@872.4]
  wire [5:0] _T_736; // @[NV_NVDLA_CSC_sg.scala 423:67:@873.4]
  wire [17:0] _T_741; // @[Cat.scala 30:58:@878.4]
  wire [17:0] _T_750; // @[NV_NVDLA_CSC_sg.scala 465:32:@908.4]
  wire [6:0] _T_754; // @[NV_NVDLA_CSC_sg.scala 471:42:@912.4]
  wire [5:0] _T_762; // @[NV_NVDLA_CSC_sg.scala 481:38:@921.4]
  wire  _T_774; // @[NV_NVDLA_CSC_sg.scala 492:61:@930.4]
  wire [7:0] _T_776; // @[NV_NVDLA_CSC_sg.scala 492:106:@931.4]
  wire [7:0] _T_778; // @[NV_NVDLA_CSC_sg.scala 492:127:@932.4]
  wire [6:0] _T_779; // @[NV_NVDLA_CSC_sg.scala 492:147:@933.4]
  wire  _T_781; // @[NV_NVDLA_CSC_sg.scala 493:61:@934.4]
  wire [7:0] _T_783; // @[NV_NVDLA_CSC_sg.scala 493:106:@935.4]
  wire [7:0] _T_785; // @[NV_NVDLA_CSC_sg.scala 493:127:@936.4]
  wire [6:0] _T_786; // @[NV_NVDLA_CSC_sg.scala 493:147:@937.4]
  wire [6:0] _T_787; // @[NV_NVDLA_CSC_sg.scala 493:38:@938.4]
  wire [6:0] _T_788; // @[NV_NVDLA_CSC_sg.scala 492:38:@939.4]
  wire [6:0] _T_789; // @[NV_NVDLA_CSC_sg.scala 491:38:@940.4]
  wire [6:0] _T_790; // @[NV_NVDLA_CSC_sg.scala 496:34:@941.4]
  reg  _T_793; // @[NV_NVDLA_CSC_sg.scala 499:34:@942.4]
  reg [31:0] _RAND_58;
  reg [6:0] _T_796; // @[NV_NVDLA_CSC_sg.scala 500:36:@943.4]
  reg [31:0] _RAND_59;
  reg  _T_802; // @[NV_NVDLA_CSC_sg.scala 502:33:@945.4]
  reg [31:0] _RAND_60;
  reg [30:0] _T_805; // @[NV_NVDLA_CSC_sg.scala 503:31:@946.4]
  reg [31:0] _RAND_61;
  reg  _T_808; // @[NV_NVDLA_CSC_sg.scala 504:33:@947.4]
  reg [31:0] _RAND_62;
  reg [17:0] _T_811; // @[NV_NVDLA_CSC_sg.scala 505:31:@948.4]
  reg [31:0] _RAND_63;
  wire  _T_814; // @[NV_NVDLA_CSC_sg.scala 508:30:@950.4]
  wire  _T_817; // @[NV_NVDLA_CSC_sg.scala 509:49:@951.4]
  wire [6:0] _T_819; // @[NV_NVDLA_CSC_sg.scala 509:29:@952.4]
  wire [6:0] _T_820; // @[NV_NVDLA_CSC_sg.scala 508:29:@953.4]
  wire  _T_856; // @[NV_NVDLA_CSC_sg.scala 520:54:@979.4]
  wire  _T_857; // @[NV_NVDLA_CSC_sg.scala 520:85:@980.4]
  wire  _T_858; // @[NV_NVDLA_CSC_sg.scala 520:70:@981.4]
  wire  _T_859; // @[NV_NVDLA_CSC_sg.scala 520:32:@982.4]
  wire  _T_821; // @[NV_NVDLA_CSC_sg.scala 513:29:@954.4]
  wire  _T_824; // @[NV_NVDLA_CSC_sg.scala 514:41:@955.4]
  wire  _T_826; // @[NV_NVDLA_CSC_sg.scala 514:73:@956.4]
  wire  _T_827; // @[NV_NVDLA_CSC_sg.scala 514:62:@957.4]
  wire  _T_829; // @[NV_NVDLA_CSC_sg.scala 515:41:@958.4]
  wire [5:0] _T_830; // @[NV_NVDLA_CSC_sg.scala 515:29:@959.4]
  wire [5:0] _T_831; // @[NV_NVDLA_CSC_sg.scala 514:29:@960.4]
  wire [5:0] _T_832; // @[NV_NVDLA_CSC_sg.scala 513:28:@961.4]
  wire [6:0] _GEN_71; // @[NV_NVDLA_CSC_sg.scala 517:41:@962.4]
  wire  _T_833; // @[NV_NVDLA_CSC_sg.scala 517:41:@962.4]
  wire [7:0] _T_835; // @[NV_NVDLA_CSC_sg.scala 517:76:@963.4]
  wire [7:0] _T_836; // @[NV_NVDLA_CSC_sg.scala 517:76:@964.4]
  wire [6:0] _T_837; // @[NV_NVDLA_CSC_sg.scala 517:76:@965.4]
  wire [6:0] _T_839; // @[NV_NVDLA_CSC_sg.scala 517:99:@966.4]
  wire [6:0] _T_840; // @[NV_NVDLA_CSC_sg.scala 517:99:@967.4]
  wire [5:0] _T_841; // @[NV_NVDLA_CSC_sg.scala 517:99:@968.4]
  wire [6:0] _T_842; // @[NV_NVDLA_CSC_sg.scala 517:25:@969.4]
  wire [5:0] _T_843; // @[NV_NVDLA_CSC_sg.scala 517:106:@970.4]
  wire [6:0] _T_845; // @[NV_NVDLA_CSC_sg.scala 518:31:@971.4]
  wire [6:0] _T_846; // @[NV_NVDLA_CSC_sg.scala 518:31:@972.4]
  wire [5:0] _T_847; // @[NV_NVDLA_CSC_sg.scala 518:31:@973.4]
  wire  _T_848; // @[NV_NVDLA_CSC_sg.scala 519:39:@974.4]
  wire [5:0] _T_852; // @[NV_NVDLA_CSC_sg.scala 519:70:@976.4]
  wire [5:0] _T_853; // @[NV_NVDLA_CSC_sg.scala 519:24:@977.4]
  wire [6:0] _GEN_54; // @[NV_NVDLA_CSC_sg.scala 525:26:@993.4]
  wire [6:0] _GEN_55; // @[NV_NVDLA_CSC_sg.scala 525:26:@993.4]
  wire [30:0] _GEN_56; // @[NV_NVDLA_CSC_sg.scala 531:24:@999.4]
  wire [17:0] _GEN_57; // @[NV_NVDLA_CSC_sg.scala 535:23:@1003.4]
  reg  _T_873; // @[NV_NVDLA_CSC_sg.scala 549:61:@1011.4]
  reg [31:0] _RAND_64;
  reg [2:0] _T_875; // @[NV_NVDLA_CSC_sg.scala 550:58:@1012.4]
  reg [31:0] _RAND_65;
  wire [3:0] _T_879; // @[NV_NVDLA_CSC_sg.scala 559:29:@1018.4]
  wire  _T_880; // @[NV_NVDLA_CSC_sg.scala 560:43:@1019.4]
  wire [8:0] _T_882; // @[NV_NVDLA_CSC_sg.scala 560:29:@1020.4]
  wire  _T_886; // @[NV_NVDLA_CSC_sg.scala 563:24:@1025.4]
  wire [8:0] _GEN_72; // @[NV_NVDLA_CSC_sg.scala 564:34:@1027.6]
  wire [9:0] _T_887; // @[NV_NVDLA_CSC_sg.scala 564:34:@1027.6]
  wire [8:0] _T_888; // @[NV_NVDLA_CSC_sg.scala 564:34:@1028.6]
  wire [9:0] _T_889; // @[NV_NVDLA_CSC_sg.scala 564:51:@1029.6]
  wire [9:0] _T_890; // @[NV_NVDLA_CSC_sg.scala 564:51:@1030.6]
  wire [8:0] _T_891; // @[NV_NVDLA_CSC_sg.scala 564:51:@1031.6]
  wire [8:0] _GEN_59; // @[NV_NVDLA_CSC_sg.scala 563:37:@1026.4]
  wire  _T_892; // @[NV_NVDLA_CSC_sg.scala 570:31:@1034.4]
  wire  _T_894; // @[NV_NVDLA_CSC_sg.scala 570:49:@1036.4]
  wire  _T_895; // @[NV_NVDLA_CSC_sg.scala 571:37:@1037.4]
  wire  _T_896; // @[NV_NVDLA_CSC_sg.scala 571:58:@1038.4]
  wire  _T_897; // @[NV_NVDLA_CSC_sg.scala 571:80:@1039.4]
  wire  _T_898; // @[NV_NVDLA_CSC_sg.scala 571:55:@1040.4]
  wire  _T_900; // @[NV_NVDLA_CSC_sg.scala 571:113:@1041.4]
  wire  _T_901; // @[NV_NVDLA_CSC_sg.scala 571:98:@1042.4]
  wire [13:0] _T_903; // @[NV_NVDLA_CSC_sg.scala 572:29:@1043.4]
  wire [13:0] _T_905; // @[NV_NVDLA_CSC_sg.scala 573:58:@1044.4]
  wire [13:0] _T_906; // @[NV_NVDLA_CSC_sg.scala 573:29:@1045.4]
  wire  _T_908; // @[NV_NVDLA_CSC_sg.scala 574:30:@1047.4]
  wire  _T_909; // @[NV_NVDLA_CSC_sg.scala 574:59:@1048.4]
  wire  _T_911; // @[NV_NVDLA_CSC_sg.scala 575:56:@1050.4]
  wire  _T_912; // @[NV_NVDLA_CSC_sg.scala 575:54:@1051.4]
  wire  _T_913; // @[NV_NVDLA_CSC_sg.scala 575:80:@1052.4]
  wire [13:0] _T_915; // @[NV_NVDLA_CSC_sg.scala 576:30:@1053.4]
  wire [12:0] _T_917; // @[Cat.scala 30:58:@1054.4]
  wire [13:0] _T_919; // @[NV_NVDLA_CSC_sg.scala 577:81:@1055.4]
  wire [13:0] _T_920; // @[NV_NVDLA_CSC_sg.scala 577:30:@1056.4]
  wire  _T_921; // @[NV_NVDLA_CSC_sg.scala 579:26:@1057.4]
  wire  _T_922; // @[NV_NVDLA_CSC_sg.scala 579:40:@1058.4]
  wire  _T_923; // @[NV_NVDLA_CSC_sg.scala 579:60:@1059.4]
  wire [14:0] _T_925; // @[NV_NVDLA_CSC_sg.scala 580:75:@1061.6]
  wire [13:0] _T_926; // @[NV_NVDLA_CSC_sg.scala 580:75:@1062.6]
  wire [14:0] _T_927; // @[NV_NVDLA_CSC_sg.scala 580:92:@1063.6]
  wire [14:0] _T_928; // @[NV_NVDLA_CSC_sg.scala 580:92:@1064.6]
  wire [13:0] _T_929; // @[NV_NVDLA_CSC_sg.scala 580:92:@1065.6]
  wire [13:0] _T_930; // @[NV_NVDLA_CSC_sg.scala 580:26:@1066.6]
  wire [13:0] _GEN_60; // @[NV_NVDLA_CSC_sg.scala 579:88:@1060.4]
  wire  _T_931; // @[NV_NVDLA_CSC_sg.scala 582:25:@1069.4]
  wire  _T_932; // @[NV_NVDLA_CSC_sg.scala 582:38:@1070.4]
  wire  _T_933; // @[NV_NVDLA_CSC_sg.scala 582:57:@1071.4]
  wire [14:0] _GEN_73; // @[NV_NVDLA_CSC_sg.scala 583:75:@1073.6]
  wire [15:0] _T_935; // @[NV_NVDLA_CSC_sg.scala 583:75:@1073.6]
  wire [14:0] _T_936; // @[NV_NVDLA_CSC_sg.scala 583:75:@1074.6]
  wire [14:0] _GEN_74; // @[NV_NVDLA_CSC_sg.scala 583:93:@1075.6]
  wire [15:0] _T_937; // @[NV_NVDLA_CSC_sg.scala 583:93:@1075.6]
  wire [15:0] _T_938; // @[NV_NVDLA_CSC_sg.scala 583:93:@1076.6]
  wire [14:0] _T_939; // @[NV_NVDLA_CSC_sg.scala 583:93:@1077.6]
  wire [14:0] _T_940; // @[NV_NVDLA_CSC_sg.scala 583:27:@1078.6]
  wire [14:0] _GEN_61; // @[NV_NVDLA_CSC_sg.scala 582:84:@1072.4]
  reg  _T_943; // @[NV_NVDLA_CSC_sg.scala 586:66:@1081.4]
  reg [31:0] _RAND_66;
  reg  _T_946; // @[NV_NVDLA_CSC_sg.scala 587:66:@1084.4]
  reg [31:0] _RAND_67;
  NV_NVDLA_fifo NV_NVDLA_fifo ( // @[NV_NVDLA_CSC_sg.scala 433:28:@883.4]
    .clock(NV_NVDLA_fifo_clock),
    .reset(NV_NVDLA_fifo_reset),
    .io_clk(NV_NVDLA_fifo_io_clk),
    .io_wr_pvld(NV_NVDLA_fifo_io_wr_pvld),
    .io_wr_prdy(NV_NVDLA_fifo_io_wr_prdy),
    .io_wr_pd(NV_NVDLA_fifo_io_wr_pd),
    .io_wr_empty(NV_NVDLA_fifo_io_wr_empty),
    .io_rd_pvld(NV_NVDLA_fifo_io_rd_pvld),
    .io_rd_prdy(NV_NVDLA_fifo_io_rd_prdy),
    .io_rd_pd(NV_NVDLA_fifo_io_rd_pd)
  );
  NV_NVDLA_fifo_1 NV_NVDLA_fifo_1 ( // @[NV_NVDLA_CSC_sg.scala 446:27:@894.4]
    .clock(NV_NVDLA_fifo_1_clock),
    .reset(NV_NVDLA_fifo_1_reset),
    .io_clk(NV_NVDLA_fifo_1_io_clk),
    .io_wr_pvld(NV_NVDLA_fifo_1_io_wr_pvld),
    .io_wr_prdy(NV_NVDLA_fifo_1_io_wr_prdy),
    .io_wr_pd(NV_NVDLA_fifo_1_io_wr_pd),
    .io_wr_empty(NV_NVDLA_fifo_1_io_wr_empty),
    .io_rd_pvld(NV_NVDLA_fifo_1_io_rd_pvld),
    .io_rd_prdy(NV_NVDLA_fifo_1_io_rd_prdy),
    .io_rd_pd(NV_NVDLA_fifo_1_io_rd_pd)
  );
  assign _T_145 = 2'h0 == _T_142; // @[Conditional.scala 37:30:@414.4]
  assign _T_209 = _T_165 != io_reg2dp_data_bank; // @[NV_NVDLA_CSC_sg.scala 138:43:@476.4]
  assign _T_210 = _T_168 != io_reg2dp_weight_bank; // @[NV_NVDLA_CSC_sg.scala 139:44:@477.4]
  assign _T_211 = _T_209 | _T_210; // @[NV_NVDLA_CSC_sg.scala 140:38:@478.4]
  assign _T_146 = io_reg2dp_op_en & _T_211; // @[NV_NVDLA_CSC_sg.scala 98:31:@416.6]
  assign _GEN_0 = io_reg2dp_op_en ? 2'h2 : 2'h0; // @[NV_NVDLA_CSC_sg.scala 99:37:@421.8]
  assign _GEN_1 = _T_146 ? 2'h1 : _GEN_0; // @[NV_NVDLA_CSC_sg.scala 98:47:@417.6]
  assign _T_147 = 2'h1 == _T_142; // @[Conditional.scala 37:30:@426.6]
  assign _T_241 = _T_142 == 2'h1; // @[NV_NVDLA_CSC_sg.scala 160:30:@510.4]
  assign _T_212 = _T_171 ^ _T_174; // @[NV_NVDLA_CSC_sg.scala 141:51:@480.4]
  assign _T_213 = ~ _T_212; // @[NV_NVDLA_CSC_sg.scala 141:34:@481.4]
  assign _T_214 = _T_241 & _T_213; // @[NV_NVDLA_CSC_sg.scala 141:32:@482.4]
  assign _T_215 = _T_180 ^ _T_183; // @[NV_NVDLA_CSC_sg.scala 141:87:@483.4]
  assign _T_216 = ~ _T_215; // @[NV_NVDLA_CSC_sg.scala 141:71:@484.4]
  assign _T_217 = _T_214 & _T_216; // @[NV_NVDLA_CSC_sg.scala 141:69:@485.4]
  assign _GEN_2 = _T_217 ? 2'h2 : 2'h0; // @[NV_NVDLA_CSC_sg.scala 102:29:@428.8]
  assign _T_148 = 2'h2 == _T_142; // @[Conditional.scala 37:30:@433.8]
  assign _T_154 = NV_NVDLA_fifo_io_rd_pvld; // @[NV_NVDLA_CSC_sg.scala 116:27:@450.4 NV_NVDLA_CSC_sg.scala 441:17:@891.4]
  assign _T_204 = ~ _T_154; // @[NV_NVDLA_CSC_sg.scala 137:22:@470.4]
  assign _T_160 = NV_NVDLA_fifo_1_io_rd_pvld; // @[NV_NVDLA_CSC_sg.scala 119:26:@453.4 NV_NVDLA_CSC_sg.scala 454:16:@902.4]
  assign _T_205 = ~ _T_160; // @[NV_NVDLA_CSC_sg.scala 137:37:@471.4]
  assign _T_206 = _T_204 & _T_205; // @[NV_NVDLA_CSC_sg.scala 137:35:@472.4]
  assign _T_156 = NV_NVDLA_fifo_io_wr_empty; // @[NV_NVDLA_CSC_sg.scala 117:30:@451.4 NV_NVDLA_CSC_sg.scala 444:20:@893.4]
  assign _T_207 = _T_206 & _T_156; // @[NV_NVDLA_CSC_sg.scala 137:49:@473.4]
  assign _T_162 = NV_NVDLA_fifo_1_io_wr_empty; // @[NV_NVDLA_CSC_sg.scala 120:29:@454.4 NV_NVDLA_CSC_sg.scala 457:19:@904.4]
  assign _T_208 = _T_207 & _T_162; // @[NV_NVDLA_CSC_sg.scala 137:66:@474.4]
  assign _T_149 = _T_131 & _T_208; // @[NV_NVDLA_CSC_sg.scala 105:26:@435.10]
  assign _T_150 = ~ _T_136; // @[NV_NVDLA_CSC_sg.scala 105:44:@436.10]
  assign _T_151 = _T_149 & _T_150; // @[NV_NVDLA_CSC_sg.scala 105:42:@437.10]
  assign _GEN_3 = _T_151 ? 2'h3 : 2'h0; // @[NV_NVDLA_CSC_sg.scala 105:54:@438.10]
  assign _GEN_6 = _T_148 ? _GEN_3 : 2'h0; // @[Conditional.scala 39:67:@434.8]
  assign _GEN_7 = _T_147 ? _GEN_2 : _GEN_6; // @[Conditional.scala 39:67:@427.6]
  assign _GEN_8 = _T_145 ? _GEN_1 : _GEN_7; // @[Conditional.scala 40:58:@415.4]
  assign _T_243 = _T_142 == 2'h3; // @[NV_NVDLA_CSC_sg.scala 162:27:@513.4]
  assign _T_218 = ~ _T_243; // @[NV_NVDLA_CSC_sg.scala 144:26:@488.6]
  assign _T_244 = _GEN_8 == 2'h3; // @[NV_NVDLA_CSC_sg.scala 163:31:@515.4]
  assign _T_219 = _T_218 & _T_244; // @[NV_NVDLA_CSC_sg.scala 144:35:@489.6]
  assign _T_221 = _T_201 - 8'h1; // @[NV_NVDLA_CSC_sg.scala 144:74:@490.6]
  assign _T_222 = $unsigned(_T_221); // @[NV_NVDLA_CSC_sg.scala 144:74:@491.6]
  assign _T_223 = _T_222[7:0]; // @[NV_NVDLA_CSC_sg.scala 144:74:@492.6]
  assign _T_224 = _T_219 ? _T_198 : _T_223; // @[NV_NVDLA_CSC_sg.scala 144:25:@493.6]
  assign _GEN_9 = _T_244 ? _T_224 : _T_201; // @[NV_NVDLA_CSC_sg.scala 143:22:@487.4]
  assign _T_861 = _T_799 == 6'h0; // @[NV_NVDLA_CSC_sg.scala 521:45:@984.4]
  assign _T_862 = _T_154 & _T_861; // @[NV_NVDLA_CSC_sg.scala 521:34:@985.4]
  assign _T_748 = NV_NVDLA_fifo_io_rd_pd[30:0]; // @[NV_NVDLA_CSC_sg.scala 463:34:@906.4]
  assign _T_757 = _T_748[27]; // @[NV_NVDLA_CSC_sg.scala 474:40:@915.4]
  assign _T_883 = ~ _T_757; // @[NV_NVDLA_CSC_sg.scala 561:21:@1021.4]
  assign _T_877 = {2'h0,_T_191}; // @[Cat.scala 30:58:@1017.4]
  assign _T_884 = _T_870 >= _T_877; // @[NV_NVDLA_CSC_sg.scala 561:55:@1022.4]
  assign _T_885 = _T_883 | _T_884; // @[NV_NVDLA_CSC_sg.scala 561:41:@1023.4]
  assign _T_863 = _T_862 & _T_885; // @[NV_NVDLA_CSC_sg.scala 521:54:@986.4]
  assign _T_747 = NV_NVDLA_fifo_io_rd_pd[32:31]; // @[NV_NVDLA_CSC_sg.scala 462:35:@905.4]
  assign _T_749 = NV_NVDLA_fifo_1_io_rd_pd[19:18]; // @[NV_NVDLA_CSC_sg.scala 464:33:@907.4]
  assign _T_864 = _T_747 != _T_749; // @[NV_NVDLA_CSC_sg.scala 521:85:@987.4]
  assign _T_866 = _T_864 | _T_205; // @[NV_NVDLA_CSC_sg.scala 521:101:@989.4]
  assign _T_867 = _T_863 & _T_866; // @[NV_NVDLA_CSC_sg.scala 521:69:@990.4]
  assign _T_225 = _T_154 & _T_867; // @[NV_NVDLA_CSC_sg.scala 148:22:@498.4]
  assign _T_759 = _T_748[29]; // @[NV_NVDLA_CSC_sg.scala 476:35:@917.4]
  assign _T_226 = _T_225 & _T_759; // @[NV_NVDLA_CSC_sg.scala 148:38:@499.4]
  assign _T_228 = _T_191 + 7'h30; // @[NV_NVDLA_CSC_sg.scala 149:41:@501.6]
  assign _GEN_10 = _T_226 ? _T_228 : _T_198; // @[NV_NVDLA_CSC_sg.scala 148:57:@500.4]
  assign _T_238 = _T_142 == 2'h0; // @[NV_NVDLA_CSC_sg.scala 158:49:@507.4]
  assign _T_239 = io_reg2dp_op_en & _T_238; // @[NV_NVDLA_CSC_sg.scala 158:36:@508.4]
  assign _T_242 = _T_142 == 2'h2; // @[NV_NVDLA_CSC_sg.scala 161:33:@512.4]
  assign _T_245 = _GEN_8 == 2'h1; // @[NV_NVDLA_CSC_sg.scala 164:37:@517.4]
  assign _T_250 = _T_242 ? 2'h2 : 2'h3; // @[NV_NVDLA_CSC_sg.scala 165:90:@518.4]
  assign _T_251 = _T_241 ? 2'h1 : _T_250; // @[NV_NVDLA_CSC_sg.scala 165:55:@519.4]
  assign _T_312 = io_reg2dp_conv_mode == 1'h0; // @[NV_NVDLA_CSC_sg.scala 199:40:@566.4]
  assign _T_313 = _T_312 & io_reg2dp_datain_format; // @[NV_NVDLA_CSC_sg.scala 200:26:@567.4]
  assign _T_314 = ~ io_reg2dp_datain_format; // @[NV_NVDLA_CSC_sg.scala 201:27:@568.4]
  assign _T_315 = _T_312 & _T_314; // @[NV_NVDLA_CSC_sg.scala 201:25:@569.4]
  assign _T_318 = {_T_313,1'h0,_T_315}; // @[Cat.scala 30:58:@571.4]
  assign _T_253 = _T_237 != _T_318; // @[NV_NVDLA_CSC_sg.scala 166:37:@522.4]
  assign _T_255 = _T_201 == 8'h1; // @[NV_NVDLA_CSC_sg.scala 168:53:@523.4]
  assign _T_256 = _T_243 & _T_255; // @[NV_NVDLA_CSC_sg.scala 168:39:@524.4]
  assign _T_260 = _T_245 & _T_209; // @[NV_NVDLA_CSC_sg.scala 169:43:@528.4]
  assign _T_262 = ~ _T_245; // @[NV_NVDLA_CSC_sg.scala 169:85:@529.4]
  assign _T_264 = _T_262 ? 1'h0 : _T_174; // @[NV_NVDLA_CSC_sg.scala 169:83:@530.4]
  assign _T_265 = _T_260 ? 1'h1 : _T_264; // @[NV_NVDLA_CSC_sg.scala 169:27:@531.4]
  assign _T_269 = _T_262 ? 1'h0 : _T_183; // @[NV_NVDLA_CSC_sg.scala 170:64:@534.4]
  assign _T_270 = _T_245 ? 1'h1 : _T_269; // @[NV_NVDLA_CSC_sg.scala 170:26:@535.4]
  assign _T_271 = _T_241 & _T_177; // @[NV_NVDLA_CSC_sg.scala 171:39:@537.4]
  assign _T_275 = _T_262 ? 1'h0 : _T_171; // @[NV_NVDLA_CSC_sg.scala 171:79:@539.4]
  assign _T_276 = _T_271 ? 1'h1 : _T_275; // @[NV_NVDLA_CSC_sg.scala 171:27:@540.4]
  assign _T_277 = _T_241 & _T_186; // @[NV_NVDLA_CSC_sg.scala 172:38:@542.4]
  assign _T_281 = _T_262 ? 1'h0 : _T_180; // @[NV_NVDLA_CSC_sg.scala 172:77:@544.4]
  assign _T_282 = _T_277 ? 1'h1 : _T_281; // @[NV_NVDLA_CSC_sg.scala 172:26:@545.4]
  assign _T_308 = io_reg2dp_weight_kernel + 13'h1; // @[NV_NVDLA_CSC_sg.scala 190:49:@560.6]
  assign _GEN_11 = io_dp2reg_done ? io_reg2dp_data_bank : _T_165; // @[NV_NVDLA_CSC_sg.scala 186:25:@556.4]
  assign _GEN_12 = io_dp2reg_done ? io_reg2dp_weight_bank : _T_168; // @[NV_NVDLA_CSC_sg.scala 186:25:@556.4]
  assign _GEN_13 = io_dp2reg_done ? _T_296 : _T_289; // @[NV_NVDLA_CSC_sg.scala 186:25:@556.4]
  assign _GEN_14 = io_dp2reg_done ? _T_308 : _T_303; // @[NV_NVDLA_CSC_sg.scala 186:25:@556.4]
  assign _GEN_15 = io_dp2reg_done ? io_reg2dp_skip_weight_rls : _T_306; // @[NV_NVDLA_CSC_sg.scala 186:25:@556.4]
  assign _GEN_16 = io_dp2reg_done ? _T_318 : _T_237; // @[NV_NVDLA_CSC_sg.scala 186:25:@556.4]
  assign _T_392 = 9'h9 << io_reg2dp_y_extension; // @[NV_NVDLA_CSC_sg.scala 221:44:@594.4]
  assign _T_393 = _T_392[5:3]; // @[NV_NVDLA_CSC_sg.scala 221:69:@595.4]
  assign _T_395 = io_reg2dp_datain_height_ext + 13'h1; // @[NV_NVDLA_CSC_sg.scala 224:55:@597.6]
  assign _T_397 = io_reg2dp_dataout_width + 13'h1; // @[NV_NVDLA_CSC_sg.scala 225:64:@599.6]
  assign _T_399 = io_reg2dp_atomics + 21'h1; // @[NV_NVDLA_CSC_sg.scala 225:90:@600.6]
  assign _T_400 = _T_313 ? {{8'd0}, _T_397} : _T_399; // @[NV_NVDLA_CSC_sg.scala 225:31:@601.6]
  assign _T_403 = _T_313 ? 5'h0 : io_reg2dp_weight_width_ext; // @[NV_NVDLA_CSC_sg.scala 227:32:@604.6]
  assign _T_405 = io_reg2dp_weight_channel_ext + 13'h1; // @[NV_NVDLA_CSC_sg.scala 229:56:@607.6]
  assign _T_406 = io_reg2dp_weight_kernel[12:5]; // @[NV_NVDLA_CSC_sg.scala 230:49:@609.6]
  assign _T_408 = _T_406 + 8'h1; // @[NV_NVDLA_CSC_sg.scala 230:71:@610.6]
  assign _T_409 = _T_393[0]; // @[NV_NVDLA_CSC_sg.scala 232:44:@613.6]
  assign _T_411 = _T_393[1]; // @[NV_NVDLA_CSC_sg.scala 233:44:@614.6]
  assign _T_413 = io_reg2dp_weight_height_ext[0]; // @[NV_NVDLA_CSC_sg.scala 233:98:@615.6]
  assign _T_414 = {1'h0,_T_413}; // @[Cat.scala 30:58:@616.6]
  assign _T_415 = io_reg2dp_weight_height_ext[1:0]; // @[NV_NVDLA_CSC_sg.scala 234:55:@617.6]
  assign _T_416 = _T_411 ? _T_414 : _T_415; // @[NV_NVDLA_CSC_sg.scala 233:29:@618.6]
  assign _T_417 = _T_409 ? 2'h0 : _T_416; // @[NV_NVDLA_CSC_sg.scala 232:29:@619.6]
  assign _T_419 = io_reg2dp_rls_slices + 12'h1; // @[NV_NVDLA_CSC_sg.scala 235:44:@621.6]
  assign _T_420 = io_reg2dp_rls_slices + 12'h1; // @[NV_NVDLA_CSC_sg.scala 235:44:@622.6]
  assign _GEN_62 = {{1'd0}, io_reg2dp_rls_slices}; // @[NV_NVDLA_CSC_sg.scala 236:116:@625.6]
  assign _T_423 = io_reg2dp_datain_height_ext - _GEN_62; // @[NV_NVDLA_CSC_sg.scala 236:116:@625.6]
  assign _T_424 = $unsigned(_T_423); // @[NV_NVDLA_CSC_sg.scala 236:116:@626.6]
  assign _T_425 = io_reg2dp_skip_data_rls ? _T_395 : _T_424; // @[NV_NVDLA_CSC_sg.scala 236:26:@627.6]
  assign _T_428 = _T_313 ? 7'h40 : 7'h20; // @[NV_NVDLA_CSC_sg.scala 240:27:@630.6]
  assign _GEN_17 = _T_239 ? _T_395 : _T_326; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  assign _GEN_18 = _T_239 ? _T_400 : _T_333; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  assign _GEN_20 = _T_239 ? _T_403 : _T_347; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  assign _GEN_21 = _T_239 ? io_reg2dp_weight_height_ext : _T_354; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  assign _GEN_22 = _T_239 ? _T_405 : _T_361; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  assign _GEN_23 = _T_239 ? {{1'd0}, _T_408} : _T_368; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  assign _GEN_24 = _T_239 ? _T_393 : _T_371; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  assign _GEN_25 = _T_239 ? {{1'd0}, _T_417} : _T_374; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  assign _GEN_26 = _T_239 ? {{2'd0}, _T_420} : _T_381; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  assign _GEN_27 = _T_239 ? _T_425 : _T_296; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  assign _GEN_28 = _T_239 ? _T_313 : _T_384; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  assign _GEN_29 = _T_239 ? _T_428 : {{1'd0}, _T_387}; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  assign _GEN_30 = _T_239 ? 7'h40 : _T_390; // @[NV_NVDLA_CSC_sg.scala 223:19:@596.4]
  assign _T_600 = _T_593 >= _T_326; // @[NV_NVDLA_CSC_sg.scala 337:38:@748.4]
  assign _T_451 = _T_449 + 10'h1; // @[NV_NVDLA_CSC_sg.scala 258:41:@646.4]
  assign _T_452 = _T_449 + 10'h1; // @[NV_NVDLA_CSC_sg.scala 258:41:@647.4]
  assign _T_453 = _T_452 == _T_368; // @[NV_NVDLA_CSC_sg.scala 259:40:@648.4]
  assign _T_454 = ~ _T_453; // @[NV_NVDLA_CSC_sg.scala 260:26:@650.4]
  assign _T_456 = io_reg2dp_weight_kernel[4:0]; // @[NV_NVDLA_CSC_sg.scala 260:87:@651.4]
  assign _T_458 = _T_456 + 5'h1; // @[NV_NVDLA_CSC_sg.scala 260:110:@652.4]
  assign _T_459 = _T_454 ? 6'h20 : _T_458; // @[NV_NVDLA_CSC_sg.scala 260:25:@653.4]
  assign _GEN_63 = {{8'd0}, _T_459}; // @[NV_NVDLA_CSC_sg.scala 338:49:@749.4]
  assign _T_601 = _T_596 + _GEN_63; // @[NV_NVDLA_CSC_sg.scala 338:49:@749.4]
  assign _T_602 = _T_596 + _GEN_63; // @[NV_NVDLA_CSC_sg.scala 338:49:@750.4]
  assign _GEN_64 = {{1'd0}, _T_602}; // @[NV_NVDLA_CSC_sg.scala 339:46:@751.4]
  assign _T_603 = _GEN_64 <= _T_599; // @[NV_NVDLA_CSC_sg.scala 339:46:@751.4]
  assign _T_615 = _T_600 & _T_603; // @[NV_NVDLA_CSC_sg.scala 350:37:@763.4]
  assign _T_616 = _T_242 & _T_615; // @[NV_NVDLA_CSC_sg.scala 351:30:@764.4]
  assign _T_617 = ~ _T_131; // @[NV_NVDLA_CSC_sg.scala 351:45:@765.4]
  assign _T_618 = _T_616 & _T_617; // @[NV_NVDLA_CSC_sg.scala 351:43:@766.4]
  assign _T_611 = NV_NVDLA_fifo_io_wr_prdy; // @[NV_NVDLA_CSC_sg.scala 346:30:@760.4 NV_NVDLA_CSC_sg.scala 439:20:@889.4]
  assign _T_613 = NV_NVDLA_fifo_1_io_wr_prdy; // @[NV_NVDLA_CSC_sg.scala 347:29:@761.4 NV_NVDLA_CSC_sg.scala 452:19:@900.4]
  assign _T_614 = _T_611 & _T_613; // @[NV_NVDLA_CSC_sg.scala 349:42:@762.4]
  assign _T_620 = _T_150 | _T_614; // @[NV_NVDLA_CSC_sg.scala 351:69:@768.4]
  assign _T_621 = _T_618 & _T_620; // @[NV_NVDLA_CSC_sg.scala 351:57:@769.4]
  assign _T_570 = _T_554 == _T_347; // @[NV_NVDLA_CSC_sg.scala 315:38:@727.4]
  assign _GEN_65 = {{2'd0}, _T_371}; // @[NV_NVDLA_CSC_sg.scala 314:47:@726.4]
  assign _T_569 = _T_561 + _GEN_65; // @[NV_NVDLA_CSC_sg.scala 314:47:@726.4]
  assign _GEN_66 = {{1'd0}, _T_354}; // @[NV_NVDLA_CSC_sg.scala 316:42:@728.4]
  assign _T_571 = _T_569 > _GEN_66; // @[NV_NVDLA_CSC_sg.scala 316:42:@728.4]
  assign _T_580 = _T_570 & _T_571; // @[NV_NVDLA_CSC_sg.scala 322:35:@734.4]
  assign _T_634 = _T_621 & _T_580; // @[NV_NVDLA_CSC_sg.scala 358:28:@788.4]
  assign _T_526 = _T_524 + 14'h40; // @[NV_NVDLA_CSC_sg.scala 298:45:@703.4]
  assign _T_527 = _T_524 + 14'h40; // @[NV_NVDLA_CSC_sg.scala 298:45:@704.4]
  assign _T_528 = _T_527 >= _T_361; // @[NV_NVDLA_CSC_sg.scala 299:47:@705.4]
  assign _T_635 = _T_634 & _T_528; // @[NV_NVDLA_CSC_sg.scala 358:44:@789.4]
  assign _GEN_67 = {{15'd0}, _T_390}; // @[NV_NVDLA_CSC_sg.scala 280:47:@678.4]
  assign _T_494 = _T_489 + _GEN_67; // @[NV_NVDLA_CSC_sg.scala 280:47:@678.4]
  assign _T_495 = _T_489 + _GEN_67; // @[NV_NVDLA_CSC_sg.scala 280:47:@679.4]
  assign _T_497 = _T_495 >= _T_333; // @[NV_NVDLA_CSC_sg.scala 282:49:@681.4]
  assign _T_636 = _T_635 & _T_497; // @[NV_NVDLA_CSC_sg.scala 358:62:@790.4]
  assign _T_472 = ~ _T_384; // @[NV_NVDLA_CSC_sg.scala 270:24:@662.4]
  assign _T_473 = _T_469 == io_reg2dp_dataout_height; // @[NV_NVDLA_CSC_sg.scala 270:55:@663.4]
  assign _T_474 = _T_472 | _T_473; // @[NV_NVDLA_CSC_sg.scala 270:35:@664.4]
  assign _T_637 = _T_636 & _T_474; // @[NV_NVDLA_CSC_sg.scala 358:79:@791.4]
  assign _T_638 = _T_637 & _T_453; // @[NV_NVDLA_CSC_sg.scala 358:94:@792.4]
  assign _T_436 = _T_239 | _T_638; // @[NV_NVDLA_CSC_sg.scala 251:19:@637.4]
  assign _T_439 = _T_453 ? 1'h1 : _T_131; // @[NV_NVDLA_CSC_sg.scala 252:48:@639.6]
  assign _T_440 = _T_239 ? 1'h0 : _T_439; // @[NV_NVDLA_CSC_sg.scala 252:25:@640.6]
  assign _GEN_31 = _T_436 ? _T_440 : _T_131; // @[NV_NVDLA_CSC_sg.scala 251:33:@638.4]
  assign _T_460 = _T_239 | _T_637; // @[NV_NVDLA_CSC_sg.scala 262:19:@654.4]
  assign _T_462 = _T_239 ? 10'h0 : _T_452; // @[NV_NVDLA_CSC_sg.scala 263:27:@656.6]
  assign _GEN_32 = _T_460 ? _T_462 : _T_449; // @[NV_NVDLA_CSC_sg.scala 262:33:@655.4]
  assign _T_626 = _T_384 & _T_621; // @[NV_NVDLA_CSC_sg.scala 356:29:@778.4]
  assign _T_627 = _T_626 & _T_580; // @[NV_NVDLA_CSC_sg.scala 356:39:@779.4]
  assign _T_628 = _T_627 & _T_528; // @[NV_NVDLA_CSC_sg.scala 356:55:@780.4]
  assign _T_629 = _T_628 & _T_497; // @[NV_NVDLA_CSC_sg.scala 356:73:@781.4]
  assign _T_475 = _T_239 | _T_629; // @[NV_NVDLA_CSC_sg.scala 271:19:@665.4]
  assign _T_479 = _T_469 + 13'h1; // @[NV_NVDLA_CSC_sg.scala 274:47:@667.6]
  assign _T_480 = _T_469 + 13'h1; // @[NV_NVDLA_CSC_sg.scala 274:47:@668.6]
  assign _T_481 = _T_474 ? 13'h0 : _T_480; // @[NV_NVDLA_CSC_sg.scala 273:32:@669.6]
  assign _T_482 = _T_239 ? 13'h0 : _T_481; // @[NV_NVDLA_CSC_sg.scala 272:32:@670.6]
  assign _GEN_33 = _T_475 ? _T_482 : _T_469; // @[NV_NVDLA_CSC_sg.scala 271:32:@666.4]
  assign _T_491 = {_T_390,1'h0}; // @[Cat.scala 30:58:@675.4]
  assign _GEN_68 = {{14'd0}, _T_491}; // @[NV_NVDLA_CSC_sg.scala 279:46:@676.4]
  assign _T_492 = _T_489 + _GEN_68; // @[NV_NVDLA_CSC_sg.scala 279:46:@676.4]
  assign _T_493 = _T_489 + _GEN_68; // @[NV_NVDLA_CSC_sg.scala 279:46:@677.4]
  assign _T_496 = _T_493 <= _T_333; // @[NV_NVDLA_CSC_sg.scala 281:49:@680.4]
  assign _T_498 = _T_333 - _T_489; // @[NV_NVDLA_CSC_sg.scala 284:43:@682.4]
  assign _T_499 = $unsigned(_T_498); // @[NV_NVDLA_CSC_sg.scala 284:43:@683.4]
  assign _T_500 = _T_499[21:0]; // @[NV_NVDLA_CSC_sg.scala 284:43:@684.4]
  assign _T_501 = _T_500[6:0]; // @[NV_NVDLA_CSC_sg.scala 284:60:@685.4]
  assign _T_502 = _T_497 ? _T_501 : {{1'd0}, _T_387}; // @[NV_NVDLA_CSC_sg.scala 285:59:@686.4]
  assign _T_503 = _T_496 ? _T_390 : _T_502; // @[NV_NVDLA_CSC_sg.scala 285:25:@687.4]
  assign _T_506 = _T_239 | _T_635; // @[NV_NVDLA_CSC_sg.scala 288:19:@689.4]
  assign _GEN_70 = {{16'd0}, _T_387}; // @[NV_NVDLA_CSC_sg.scala 292:41:@693.6]
  assign _T_511 = _T_489 + _GEN_70; // @[NV_NVDLA_CSC_sg.scala 292:41:@693.6]
  assign _T_512 = _T_489 + _GEN_70; // @[NV_NVDLA_CSC_sg.scala 292:41:@694.6]
  assign _T_513 = _T_496 ? _T_495 : _T_512; // @[NV_NVDLA_CSC_sg.scala 291:29:@695.6]
  assign _T_514 = _T_497 ? 22'h0 : _T_513; // @[NV_NVDLA_CSC_sg.scala 290:29:@696.6]
  assign _T_515 = _T_239 ? 22'h0 : _T_514; // @[NV_NVDLA_CSC_sg.scala 289:29:@697.6]
  assign _GEN_34 = _T_506 ? _T_515 : _T_489; // @[NV_NVDLA_CSC_sg.scala 288:34:@690.4]
  assign _T_529 = ~ _T_528; // @[NV_NVDLA_CSC_sg.scala 301:27:@706.4]
  assign _T_531 = io_reg2dp_weight_channel_ext[5:0]; // @[NV_NVDLA_CSC_sg.scala 301:93:@707.4]
  assign _T_533 = _T_531 + 6'h1; // @[NV_NVDLA_CSC_sg.scala 301:117:@708.4]
  assign _T_534 = _T_529 ? 7'h40 : _T_533; // @[NV_NVDLA_CSC_sg.scala 301:26:@709.4]
  assign _T_535 = _T_239 | _T_634; // @[NV_NVDLA_CSC_sg.scala 303:19:@710.4]
  assign _T_546 = _T_528 ? 14'h0 : _T_527; // @[NV_NVDLA_CSC_sg.scala 304:63:@714.6]
  assign _T_547 = _T_239 ? 14'h0 : _T_546; // @[NV_NVDLA_CSC_sg.scala 304:30:@715.6]
  assign _GEN_35 = _T_535 ? _T_547 : _T_524; // @[NV_NVDLA_CSC_sg.scala 303:35:@711.4]
  assign _T_567 = _T_554 + 5'h1; // @[NV_NVDLA_CSC_sg.scala 313:47:@724.4]
  assign _T_568 = _T_554 + 5'h1; // @[NV_NVDLA_CSC_sg.scala 313:47:@725.4]
  assign _T_572 = _T_371[2]; // @[NV_NVDLA_CSC_sg.scala 318:33:@729.4]
  assign _T_574 = _T_371[1]; // @[NV_NVDLA_CSC_sg.scala 319:33:@730.4]
  assign _T_577 = _T_574 ? 2'h1 : 2'h0; // @[NV_NVDLA_CSC_sg.scala 319:20:@731.4]
  assign _T_578 = _T_572 ? 2'h3 : _T_577; // @[NV_NVDLA_CSC_sg.scala 318:20:@732.4]
  assign _T_579 = _T_571 ? _T_374 : {{1'd0}, _T_578}; // @[NV_NVDLA_CSC_sg.scala 317:20:@733.4]
  assign _T_581 = _T_239 | _T_621; // @[NV_NVDLA_CSC_sg.scala 324:19:@735.4]
  assign _T_584 = _T_570 ? 5'h0 : _T_568; // @[NV_NVDLA_CSC_sg.scala 326:32:@737.6]
  assign _T_585 = _T_239 ? 5'h0 : _T_584; // @[NV_NVDLA_CSC_sg.scala 325:31:@738.6]
  assign _T_588 = _T_569[4:0]; // @[NV_NVDLA_CSC_sg.scala 330:48:@740.6]
  assign _T_589 = _T_571 ? 5'h0 : _T_588; // @[NV_NVDLA_CSC_sg.scala 329:32:@741.6]
  assign _T_590 = _T_239 ? 5'h0 : _T_589; // @[NV_NVDLA_CSC_sg.scala 328:31:@742.6]
  assign _GEN_36 = _T_581 ? _T_585 : _T_554; // @[NV_NVDLA_CSC_sg.scala 324:29:@736.4]
  assign _GEN_37 = _T_581 ? _T_590 : _T_561; // @[NV_NVDLA_CSC_sg.scala 324:29:@736.4]
  assign _T_605 = _T_239 | _T_453; // @[NV_NVDLA_CSC_sg.scala 342:43:@754.6]
  assign _T_606 = ~ io_reg2dp_skip_weight_rls; // @[NV_NVDLA_CSC_sg.scala 342:61:@755.6]
  assign _T_607 = _T_605 | _T_606; // @[NV_NVDLA_CSC_sg.scala 342:59:@756.6]
  assign _T_609 = _T_607 ? 14'h0 : _T_602; // @[NV_NVDLA_CSC_sg.scala 342:32:@757.6]
  assign _GEN_38 = _T_460 ? _T_609 : _T_596; // @[NV_NVDLA_CSC_sg.scala 341:33:@753.4]
  assign _T_639 = ~ _T_242; // @[NV_NVDLA_CSC_sg.scala 360:20:@794.4]
  assign _T_642 = _T_615 & _T_617; // @[NV_NVDLA_CSC_sg.scala 360:57:@796.4]
  assign _T_645 = _T_614 ? 1'h0 : _T_136; // @[NV_NVDLA_CSC_sg.scala 360:83:@797.4]
  assign _T_646 = _T_642 ? 1'h1 : _T_645; // @[NV_NVDLA_CSC_sg.scala 360:45:@798.4]
  assign _T_647 = _T_639 ? 1'h0 : _T_646; // @[NV_NVDLA_CSC_sg.scala 360:19:@799.4]
  assign _T_687 = _T_654 + 2'h1; // @[NV_NVDLA_CSC_sg.scala 375:61:@813.4]
  assign _T_688 = _T_654 + 2'h1; // @[NV_NVDLA_CSC_sg.scala 375:61:@814.4]
  assign _T_689 = _T_239 ? 2'h3 : _T_688; // @[NV_NVDLA_CSC_sg.scala 375:24:@815.4]
  assign _T_690 = _T_580 & _T_528; // @[NV_NVDLA_CSC_sg.scala 379:43:@816.4]
  assign _T_692 = _T_690 & _T_497; // @[NV_NVDLA_CSC_sg.scala 380:59:@818.4]
  assign _T_693 = _T_692 & _T_474; // @[NV_NVDLA_CSC_sg.scala 380:76:@819.4]
  assign _T_697 = _T_693 & _T_453; // @[NV_NVDLA_CSC_sg.scala 381:91:@823.4]
  assign _GEN_39 = _T_581 ? _T_689 : _T_654; // @[NV_NVDLA_CSC_sg.scala 383:29:@825.4]
  assign _T_704 = ~ io_reg2dp_skip_data_rls; // @[NV_NVDLA_CSC_sg.scala 396:32:@841.6]
  assign _T_705 = _T_704 & _T_697; // @[NV_NVDLA_CSC_sg.scala 396:57:@842.6]
  assign _GEN_40 = _T_621 ? _T_554 : _T_657; // @[NV_NVDLA_CSC_sg.scala 386:18:@831.4]
  assign _GEN_41 = _T_621 ? _T_561 : _T_660; // @[NV_NVDLA_CSC_sg.scala 386:18:@831.4]
  assign _GEN_42 = _T_621 ? _T_534 : _T_663; // @[NV_NVDLA_CSC_sg.scala 386:18:@831.4]
  assign _GEN_43 = _T_621 ? _T_503 : _T_666; // @[NV_NVDLA_CSC_sg.scala 386:18:@831.4]
  assign _GEN_44 = _T_621 ? _T_579 : _T_669; // @[NV_NVDLA_CSC_sg.scala 386:18:@831.4]
  assign _GEN_45 = _T_621 ? _T_580 : _T_672; // @[NV_NVDLA_CSC_sg.scala 386:18:@831.4]
  assign _GEN_46 = _T_621 ? _T_690 : _T_675; // @[NV_NVDLA_CSC_sg.scala 386:18:@831.4]
  assign _GEN_47 = _T_621 ? _T_693 : _T_678; // @[NV_NVDLA_CSC_sg.scala 386:18:@831.4]
  assign _GEN_48 = _T_621 ? _T_697 : _T_681; // @[NV_NVDLA_CSC_sg.scala 386:18:@831.4]
  assign _GEN_49 = _T_621 ? _T_705 : _T_684; // @[NV_NVDLA_CSC_sg.scala 386:18:@831.4]
  assign _T_718 = _T_669[1:0]; // @[NV_NVDLA_CSC_sg.scala 406:42:@849.4]
  assign _T_731 = {_T_684,_T_681,_T_678,_T_675,_T_672,_T_718,_T_666,_T_663,_T_660,_T_657}; // @[Cat.scala 30:58:@862.4]
  assign _T_734 = _T_606 & _T_693; // @[NV_NVDLA_CSC_sg.scala 415:57:@869.6]
  assign _GEN_50 = _T_621 ? {{1'd0}, _T_459} : _T_708; // @[NV_NVDLA_CSC_sg.scala 411:18:@864.4]
  assign _GEN_51 = _T_621 ? _T_534 : _T_711; // @[NV_NVDLA_CSC_sg.scala 411:18:@864.4]
  assign _GEN_52 = _T_621 ? _T_579 : _T_714; // @[NV_NVDLA_CSC_sg.scala 411:18:@864.4]
  assign _GEN_53 = _T_621 ? _T_734 : _T_717; // @[NV_NVDLA_CSC_sg.scala 411:18:@864.4]
  assign _T_735 = _T_714[1:0]; // @[NV_NVDLA_CSC_sg.scala 423:41:@872.4]
  assign _T_736 = _T_708[5:0]; // @[NV_NVDLA_CSC_sg.scala 423:67:@873.4]
  assign _T_741 = {_T_717,_T_678,_T_675,_T_735,_T_736,_T_711}; // @[Cat.scala 30:58:@878.4]
  assign _T_750 = NV_NVDLA_fifo_1_io_rd_pd[17:0]; // @[NV_NVDLA_CSC_sg.scala 465:32:@908.4]
  assign _T_754 = _T_748[23:17]; // @[NV_NVDLA_CSC_sg.scala 471:42:@912.4]
  assign _T_762 = _T_750[12:7]; // @[NV_NVDLA_CSC_sg.scala 481:38:@921.4]
  assign _T_774 = io_reg2dp_y_extension == 2'h2; // @[NV_NVDLA_CSC_sg.scala 492:61:@930.4]
  assign _T_776 = _T_754 + 7'h3; // @[NV_NVDLA_CSC_sg.scala 492:106:@931.4]
  assign _T_778 = _T_776 & 8'hfc; // @[NV_NVDLA_CSC_sg.scala 492:127:@932.4]
  assign _T_779 = _T_778[6:0]; // @[NV_NVDLA_CSC_sg.scala 492:147:@933.4]
  assign _T_781 = io_reg2dp_y_extension == 2'h1; // @[NV_NVDLA_CSC_sg.scala 493:61:@934.4]
  assign _T_783 = _T_754 + 7'h1; // @[NV_NVDLA_CSC_sg.scala 493:106:@935.4]
  assign _T_785 = _T_783 & 8'hfe; // @[NV_NVDLA_CSC_sg.scala 493:127:@936.4]
  assign _T_786 = _T_785[6:0]; // @[NV_NVDLA_CSC_sg.scala 493:147:@937.4]
  assign _T_787 = _T_781 ? _T_786 : _T_754; // @[NV_NVDLA_CSC_sg.scala 493:38:@938.4]
  assign _T_788 = _T_774 ? _T_779 : _T_787; // @[NV_NVDLA_CSC_sg.scala 492:38:@939.4]
  assign _T_789 = _T_472 ? 7'h0 : _T_788; // @[NV_NVDLA_CSC_sg.scala 491:38:@940.4]
  assign _T_790 = _T_384 ? _T_789 : _T_754; // @[NV_NVDLA_CSC_sg.scala 496:34:@941.4]
  assign _T_814 = ~ _T_867; // @[NV_NVDLA_CSC_sg.scala 508:30:@950.4]
  assign _T_817 = _T_796 < 7'h20; // @[NV_NVDLA_CSC_sg.scala 509:49:@951.4]
  assign _T_819 = _T_817 ? 7'h20 : _T_796; // @[NV_NVDLA_CSC_sg.scala 509:29:@952.4]
  assign _T_820 = _T_814 ? 7'h0 : _T_819; // @[NV_NVDLA_CSC_sg.scala 508:29:@953.4]
  assign _T_856 = _T_861 & _T_885; // @[NV_NVDLA_CSC_sg.scala 520:54:@979.4]
  assign _T_857 = _T_747 == _T_749; // @[NV_NVDLA_CSC_sg.scala 520:85:@980.4]
  assign _T_858 = _T_856 | _T_857; // @[NV_NVDLA_CSC_sg.scala 520:70:@981.4]
  assign _T_859 = _T_160 & _T_858; // @[NV_NVDLA_CSC_sg.scala 520:32:@982.4]
  assign _T_821 = ~ _T_859; // @[NV_NVDLA_CSC_sg.scala 513:29:@954.4]
  assign _T_824 = _T_762 <= 6'h1; // @[NV_NVDLA_CSC_sg.scala 514:41:@955.4]
  assign _T_826 = _T_799 <= 6'h1; // @[NV_NVDLA_CSC_sg.scala 514:73:@956.4]
  assign _T_827 = _T_824 & _T_826; // @[NV_NVDLA_CSC_sg.scala 514:62:@957.4]
  assign _T_829 = _T_762 > _T_799; // @[NV_NVDLA_CSC_sg.scala 515:41:@958.4]
  assign _T_830 = _T_829 ? _T_762 : _T_799; // @[NV_NVDLA_CSC_sg.scala 515:29:@959.4]
  assign _T_831 = _T_827 ? 6'h2 : _T_830; // @[NV_NVDLA_CSC_sg.scala 514:29:@960.4]
  assign _T_832 = _T_821 ? 6'h0 : _T_831; // @[NV_NVDLA_CSC_sg.scala 513:28:@961.4]
  assign _GEN_71 = {{1'd0}, _T_832}; // @[NV_NVDLA_CSC_sg.scala 517:41:@962.4]
  assign _T_833 = _T_820 >= _GEN_71; // @[NV_NVDLA_CSC_sg.scala 517:41:@962.4]
  assign _T_835 = _T_820 - 7'h1; // @[NV_NVDLA_CSC_sg.scala 517:76:@963.4]
  assign _T_836 = $unsigned(_T_835); // @[NV_NVDLA_CSC_sg.scala 517:76:@964.4]
  assign _T_837 = _T_836[6:0]; // @[NV_NVDLA_CSC_sg.scala 517:76:@965.4]
  assign _T_839 = _T_832 - 6'h1; // @[NV_NVDLA_CSC_sg.scala 517:99:@966.4]
  assign _T_840 = $unsigned(_T_839); // @[NV_NVDLA_CSC_sg.scala 517:99:@967.4]
  assign _T_841 = _T_840[5:0]; // @[NV_NVDLA_CSC_sg.scala 517:99:@968.4]
  assign _T_842 = _T_833 ? _T_837 : {{1'd0}, _T_841}; // @[NV_NVDLA_CSC_sg.scala 517:25:@969.4]
  assign _T_843 = _T_842[5:0]; // @[NV_NVDLA_CSC_sg.scala 517:106:@970.4]
  assign _T_845 = _T_799 - 6'h1; // @[NV_NVDLA_CSC_sg.scala 518:31:@971.4]
  assign _T_846 = $unsigned(_T_845); // @[NV_NVDLA_CSC_sg.scala 518:31:@972.4]
  assign _T_847 = _T_846[5:0]; // @[NV_NVDLA_CSC_sg.scala 518:31:@973.4]
  assign _T_848 = _T_867 | _T_859; // @[NV_NVDLA_CSC_sg.scala 519:39:@974.4]
  assign _T_852 = _T_861 ? 6'h0 : _T_847; // @[NV_NVDLA_CSC_sg.scala 519:70:@976.4]
  assign _T_853 = _T_848 ? _T_843 : _T_852; // @[NV_NVDLA_CSC_sg.scala 519:24:@977.4]
  assign _GEN_54 = _T_793 ? _T_754 : _T_191; // @[NV_NVDLA_CSC_sg.scala 525:26:@993.4]
  assign _GEN_55 = _T_793 ? _T_790 : _T_796; // @[NV_NVDLA_CSC_sg.scala 525:26:@993.4]
  assign _GEN_56 = _T_867 ? _T_748 : _T_805; // @[NV_NVDLA_CSC_sg.scala 531:24:@999.4]
  assign _GEN_57 = _T_859 ? _T_750 : _T_811; // @[NV_NVDLA_CSC_sg.scala 535:23:@1003.4]
  assign _T_879 = _T_873 ? {{1'd0}, _T_875} : 4'h0; // @[NV_NVDLA_CSC_sg.scala 559:29:@1018.4]
  assign _T_880 = _T_867 & _T_757; // @[NV_NVDLA_CSC_sg.scala 560:43:@1019.4]
  assign _T_882 = _T_880 ? _T_877 : 9'h0; // @[NV_NVDLA_CSC_sg.scala 560:29:@1020.4]
  assign _T_886 = _T_867 | _T_873; // @[NV_NVDLA_CSC_sg.scala 563:24:@1025.4]
  assign _GEN_72 = {{5'd0}, _T_879}; // @[NV_NVDLA_CSC_sg.scala 564:34:@1027.6]
  assign _T_887 = _T_870 + _GEN_72; // @[NV_NVDLA_CSC_sg.scala 564:34:@1027.6]
  assign _T_888 = _T_870 + _GEN_72; // @[NV_NVDLA_CSC_sg.scala 564:34:@1028.6]
  assign _T_889 = _T_888 - _T_882; // @[NV_NVDLA_CSC_sg.scala 564:51:@1029.6]
  assign _T_890 = $unsigned(_T_889); // @[NV_NVDLA_CSC_sg.scala 564:51:@1030.6]
  assign _T_891 = _T_890[8:0]; // @[NV_NVDLA_CSC_sg.scala 564:51:@1031.6]
  assign _GEN_59 = _T_886 ? _T_891 : _T_870; // @[NV_NVDLA_CSC_sg.scala 563:37:@1026.4]
  assign _T_892 = _T_621 & _T_697; // @[NV_NVDLA_CSC_sg.scala 570:31:@1034.4]
  assign _T_894 = _T_892 & _T_704; // @[NV_NVDLA_CSC_sg.scala 570:49:@1036.4]
  assign _T_895 = _T_238 & io_reg2dp_op_en; // @[NV_NVDLA_CSC_sg.scala 571:37:@1037.4]
  assign _T_896 = ~ io_reg2dp_data_reuse; // @[NV_NVDLA_CSC_sg.scala 571:58:@1038.4]
  assign _T_897 = _T_896 | _T_253; // @[NV_NVDLA_CSC_sg.scala 571:80:@1039.4]
  assign _T_898 = _T_895 & _T_897; // @[NV_NVDLA_CSC_sg.scala 571:55:@1040.4]
  assign _T_900 = _T_289 != 14'h0; // @[NV_NVDLA_CSC_sg.scala 571:113:@1041.4]
  assign _T_901 = _T_898 & _T_900; // @[NV_NVDLA_CSC_sg.scala 571:98:@1042.4]
  assign _T_903 = io_cdma2sc_dat_updt_valid ? io_cdma2sc_dat_updt_bits_slices : 14'h0; // @[NV_NVDLA_CSC_sg.scala 572:29:@1043.4]
  assign _T_905 = _T_901 ? _T_289 : 14'h0; // @[NV_NVDLA_CSC_sg.scala 573:58:@1044.4]
  assign _T_906 = _T_894 ? _T_381 : _T_905; // @[NV_NVDLA_CSC_sg.scala 573:29:@1045.4]
  assign _T_908 = _T_621 & _T_606; // @[NV_NVDLA_CSC_sg.scala 574:30:@1047.4]
  assign _T_909 = _T_908 & _T_693; // @[NV_NVDLA_CSC_sg.scala 574:59:@1048.4]
  assign _T_911 = ~ io_reg2dp_weight_reuse; // @[NV_NVDLA_CSC_sg.scala 575:56:@1050.4]
  assign _T_912 = _T_895 & _T_911; // @[NV_NVDLA_CSC_sg.scala 575:54:@1051.4]
  assign _T_913 = _T_912 & _T_306; // @[NV_NVDLA_CSC_sg.scala 575:80:@1052.4]
  assign _T_915 = io_cdma2sc_wt_updt_valid ? io_cdma2sc_wt_updt_bits_kernels : 14'h0; // @[NV_NVDLA_CSC_sg.scala 576:30:@1053.4]
  assign _T_917 = {7'h0,_T_459}; // @[Cat.scala 30:58:@1054.4]
  assign _T_919 = _T_913 ? _T_303 : 14'h0; // @[NV_NVDLA_CSC_sg.scala 577:81:@1055.4]
  assign _T_920 = _T_909 ? {{1'd0}, _T_917} : _T_919; // @[NV_NVDLA_CSC_sg.scala 577:30:@1056.4]
  assign _T_921 = _T_174 | _T_894; // @[NV_NVDLA_CSC_sg.scala 579:26:@1057.4]
  assign _T_922 = _T_921 | _T_901; // @[NV_NVDLA_CSC_sg.scala 579:40:@1058.4]
  assign _T_923 = _T_922 | io_cdma2sc_dat_updt_valid; // @[NV_NVDLA_CSC_sg.scala 579:60:@1059.4]
  assign _T_925 = _T_593 + _T_903; // @[NV_NVDLA_CSC_sg.scala 580:75:@1061.6]
  assign _T_926 = _T_593 + _T_903; // @[NV_NVDLA_CSC_sg.scala 580:75:@1062.6]
  assign _T_927 = _T_926 - _T_906; // @[NV_NVDLA_CSC_sg.scala 580:92:@1063.6]
  assign _T_928 = $unsigned(_T_927); // @[NV_NVDLA_CSC_sg.scala 580:92:@1064.6]
  assign _T_929 = _T_928[13:0]; // @[NV_NVDLA_CSC_sg.scala 580:92:@1065.6]
  assign _T_930 = _T_174 ? 14'h0 : _T_929; // @[NV_NVDLA_CSC_sg.scala 580:26:@1066.6]
  assign _GEN_60 = _T_923 ? _T_930 : _T_593; // @[NV_NVDLA_CSC_sg.scala 579:88:@1060.4]
  assign _T_931 = _T_183 | _T_909; // @[NV_NVDLA_CSC_sg.scala 582:25:@1069.4]
  assign _T_932 = _T_931 | _T_913; // @[NV_NVDLA_CSC_sg.scala 582:38:@1070.4]
  assign _T_933 = _T_932 | io_cdma2sc_wt_updt_valid; // @[NV_NVDLA_CSC_sg.scala 582:57:@1071.4]
  assign _GEN_73 = {{1'd0}, _T_915}; // @[NV_NVDLA_CSC_sg.scala 583:75:@1073.6]
  assign _T_935 = _T_599 + _GEN_73; // @[NV_NVDLA_CSC_sg.scala 583:75:@1073.6]
  assign _T_936 = _T_599 + _GEN_73; // @[NV_NVDLA_CSC_sg.scala 583:75:@1074.6]
  assign _GEN_74 = {{1'd0}, _T_920}; // @[NV_NVDLA_CSC_sg.scala 583:93:@1075.6]
  assign _T_937 = _T_936 - _GEN_74; // @[NV_NVDLA_CSC_sg.scala 583:93:@1075.6]
  assign _T_938 = $unsigned(_T_937); // @[NV_NVDLA_CSC_sg.scala 583:93:@1076.6]
  assign _T_939 = _T_938[14:0]; // @[NV_NVDLA_CSC_sg.scala 583:93:@1077.6]
  assign _T_940 = _T_183 ? 15'h0 : _T_939; // @[NV_NVDLA_CSC_sg.scala 583:27:@1078.6]
  assign _GEN_61 = _T_933 ? _T_940 : _T_599; // @[NV_NVDLA_CSC_sg.scala 582:84:@1072.4]
  assign io_sc2cdma_dat_pending_req = _T_174; // @[NV_NVDLA_CSC_sg.scala 175:32:@547.4]
  assign io_sc2cdma_wt_pending_req = _T_183; // @[NV_NVDLA_CSC_sg.scala 176:31:@548.4]
  assign io_sc_state = _T_238 ? 2'h0 : _T_251; // @[NV_NVDLA_CSC_sg.scala 165:17:@521.4]
  assign io_sg2dl_pd_valid = _T_802; // @[NV_NVDLA_CSC_sg.scala 539:23:@1006.4]
  assign io_sg2dl_pd_bits = _T_805; // @[NV_NVDLA_CSC_sg.scala 540:22:@1007.4]
  assign io_sg2dl_reuse_rls = _T_943; // @[NV_NVDLA_CSC_sg.scala 586:24:@1083.4]
  assign io_sg2wl_pd_valid = _T_808; // @[NV_NVDLA_CSC_sg.scala 541:23:@1008.4]
  assign io_sg2wl_pd_bits = _T_811; // @[NV_NVDLA_CSC_sg.scala 542:22:@1009.4]
  assign io_sg2wl_reuse_rls = _T_946; // @[NV_NVDLA_CSC_sg.scala 587:24:@1086.4]
  assign io_dp2reg_done = _T_259; // @[NV_NVDLA_CSC_sg.scala 168:20:@527.4]
  assign NV_NVDLA_fifo_clock = io_nvdla_core_clk; // @[:@884.4]
  assign NV_NVDLA_fifo_reset = reset; // @[:@885.4]
  assign NV_NVDLA_fifo_io_clk = io_nvdla_core_clk; // @[NV_NVDLA_CSC_sg.scala 436:23:@886.4]
  assign NV_NVDLA_fifo_io_wr_pvld = _T_136 & _T_613; // @[NV_NVDLA_CSC_sg.scala 438:27:@888.4]
  assign NV_NVDLA_fifo_io_wr_pd = {_T_654,_T_731}; // @[NV_NVDLA_CSC_sg.scala 440:25:@890.4]
  assign NV_NVDLA_fifo_io_rd_prdy = _T_863 & _T_866; // @[NV_NVDLA_CSC_sg.scala 442:27:@892.4]
  assign NV_NVDLA_fifo_1_clock = io_nvdla_core_clk; // @[:@895.4]
  assign NV_NVDLA_fifo_1_reset = reset; // @[:@896.4]
  assign NV_NVDLA_fifo_1_io_clk = io_nvdla_core_clk; // @[NV_NVDLA_CSC_sg.scala 449:22:@897.4]
  assign NV_NVDLA_fifo_1_io_wr_pvld = _T_136 & _T_611; // @[NV_NVDLA_CSC_sg.scala 451:26:@899.4]
  assign NV_NVDLA_fifo_1_io_wr_pd = {_T_654,_T_741}; // @[NV_NVDLA_CSC_sg.scala 453:24:@901.4]
  assign NV_NVDLA_fifo_1_io_rd_prdy = _T_160 & _T_858; // @[NV_NVDLA_CSC_sg.scala 455:26:@903.4]
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
  _T_131 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_136 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_142 = _RAND_2[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_165 = _RAND_3[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_168 = _RAND_4[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_171 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_174 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_180 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_183 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_177 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_186 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_191 = _RAND_11[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_198 = _RAND_12[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_201 = _RAND_13[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_799 = _RAND_14[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_870 = _RAND_15[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_237 = _RAND_16[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_259 = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_289 = _RAND_18[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_296 = _RAND_19[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_303 = _RAND_20[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_306 = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_326 = _RAND_22[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_333 = _RAND_23[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  _T_347 = _RAND_24[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  _T_354 = _RAND_25[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  _T_361 = _RAND_26[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  _T_368 = _RAND_27[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  _T_371 = _RAND_28[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  _T_374 = _RAND_29[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  _T_381 = _RAND_30[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  _T_384 = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  _T_387 = _RAND_32[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  _T_390 = _RAND_33[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  _T_593 = _RAND_34[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  _T_596 = _RAND_35[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  _T_449 = _RAND_36[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  _T_599 = _RAND_37[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  _T_554 = _RAND_38[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  _T_561 = _RAND_39[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  _T_524 = _RAND_40[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  _T_489 = _RAND_41[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  _T_469 = _RAND_42[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  _T_654 = _RAND_43[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  _T_657 = _RAND_44[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  _T_660 = _RAND_45[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  _T_663 = _RAND_46[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  _T_666 = _RAND_47[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  _T_669 = _RAND_48[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  _T_672 = _RAND_49[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  _T_675 = _RAND_50[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  _T_678 = _RAND_51[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  _T_681 = _RAND_52[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  _T_684 = _RAND_53[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  _T_708 = _RAND_54[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  _T_711 = _RAND_55[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  _T_714 = _RAND_56[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  _T_717 = _RAND_57[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  _T_793 = _RAND_58[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  _T_796 = _RAND_59[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  _T_802 = _RAND_60[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  _T_805 = _RAND_61[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  _T_808 = _RAND_62[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  _T_811 = _RAND_63[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  _T_873 = _RAND_64[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  _T_875 = _RAND_65[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{`RANDOM}};
  _T_943 = _RAND_66[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{`RANDOM}};
  _T_946 = _RAND_67[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_131 <= 1'h0;
    end else begin
      if (_T_436) begin
        if (_T_239) begin
          _T_131 <= 1'h0;
        end else begin
          if (_T_453) begin
            _T_131 <= 1'h1;
          end
        end
      end
    end
    if (reset) begin
      _T_136 <= 1'h0;
    end else begin
      if (_T_639) begin
        _T_136 <= 1'h0;
      end else begin
        if (_T_642) begin
          _T_136 <= 1'h1;
        end else begin
          if (_T_614) begin
            _T_136 <= 1'h0;
          end
        end
      end
    end
    if (reset) begin
      _T_142 <= 2'h0;
    end else begin
      if (_T_145) begin
        if (_T_146) begin
          _T_142 <= 2'h1;
        end else begin
          if (io_reg2dp_op_en) begin
            _T_142 <= 2'h2;
          end else begin
            _T_142 <= 2'h0;
          end
        end
      end else begin
        if (_T_147) begin
          if (_T_217) begin
            _T_142 <= 2'h2;
          end else begin
            _T_142 <= 2'h0;
          end
        end else begin
          if (_T_148) begin
            if (_T_151) begin
              _T_142 <= 2'h3;
            end else begin
              _T_142 <= 2'h0;
            end
          end else begin
            _T_142 <= 2'h0;
          end
        end
      end
    end
    if (reset) begin
      _T_165 <= 5'h1f;
    end else begin
      if (io_dp2reg_done) begin
        _T_165 <= io_reg2dp_data_bank;
      end
    end
    if (reset) begin
      _T_168 <= 5'h1f;
    end else begin
      if (io_dp2reg_done) begin
        _T_168 <= io_reg2dp_weight_bank;
      end
    end
    if (reset) begin
      _T_171 <= 1'h0;
    end else begin
      if (_T_271) begin
        _T_171 <= 1'h1;
      end else begin
        if (_T_262) begin
          _T_171 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_174 <= 1'h0;
    end else begin
      if (_T_260) begin
        _T_174 <= 1'h1;
      end else begin
        if (_T_262) begin
          _T_174 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_180 <= 1'h0;
    end else begin
      if (_T_277) begin
        _T_180 <= 1'h1;
      end else begin
        if (_T_262) begin
          _T_180 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_183 <= 1'h0;
    end else begin
      if (_T_245) begin
        _T_183 <= 1'h1;
      end else begin
        if (_T_262) begin
          _T_183 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_177 <= 1'h0;
    end else begin
      _T_177 <= io_cdma2sc_dat_pending_ack;
    end
    if (reset) begin
      _T_186 <= 1'h0;
    end else begin
      _T_186 <= io_cdma2sc_wt_pending_ack;
    end
    if (reset) begin
      _T_191 <= 7'h0;
    end else begin
      if (_T_793) begin
        _T_191 <= _T_754;
      end
    end
    if (reset) begin
      _T_198 <= 8'h0;
    end else begin
      if (_T_226) begin
        _T_198 <= _T_228;
      end
    end
    if (reset) begin
      _T_201 <= 8'h0;
    end else begin
      if (_T_244) begin
        if (_T_219) begin
          _T_201 <= _T_198;
        end else begin
          _T_201 <= _T_223;
        end
      end
    end
    if (reset) begin
      _T_799 <= 6'h0;
    end else begin
      if (_T_848) begin
        _T_799 <= _T_843;
      end else begin
        if (_T_861) begin
          _T_799 <= 6'h0;
        end else begin
          _T_799 <= _T_847;
        end
      end
    end
    if (reset) begin
      _T_237 <= 3'h0;
    end else begin
      if (io_dp2reg_done) begin
        _T_237 <= _T_318;
      end
    end
    if (reset) begin
      _T_259 <= 1'h0;
    end else begin
      _T_259 <= _T_256;
    end
    if (reset) begin
      _T_289 <= 14'h0;
    end else begin
      if (io_dp2reg_done) begin
        _T_289 <= _T_296;
      end
    end
    if (reset) begin
      _T_296 <= 14'h0;
    end else begin
      if (_T_239) begin
        if (io_reg2dp_skip_data_rls) begin
          _T_296 <= _T_395;
        end else begin
          _T_296 <= _T_424;
        end
      end
    end
    if (reset) begin
      _T_303 <= 14'h0;
    end else begin
      if (io_dp2reg_done) begin
        _T_303 <= _T_308;
      end
    end
    if (reset) begin
      _T_306 <= 1'h0;
    end else begin
      if (io_dp2reg_done) begin
        _T_306 <= io_reg2dp_skip_weight_rls;
      end
    end
    if (reset) begin
      _T_326 <= 14'h0;
    end else begin
      if (_T_239) begin
        _T_326 <= _T_395;
      end
    end
    if (reset) begin
      _T_333 <= 22'h0;
    end else begin
      if (_T_239) begin
        if (_T_313) begin
          _T_333 <= {{8'd0}, _T_397};
        end else begin
          _T_333 <= _T_399;
        end
      end
    end
    if (reset) begin
      _T_347 <= 5'h0;
    end else begin
      if (_T_239) begin
        if (_T_313) begin
          _T_347 <= 5'h0;
        end else begin
          _T_347 <= io_reg2dp_weight_width_ext;
        end
      end
    end
    if (reset) begin
      _T_354 <= 5'h0;
    end else begin
      if (_T_239) begin
        _T_354 <= io_reg2dp_weight_height_ext;
      end
    end
    if (reset) begin
      _T_361 <= 14'h0;
    end else begin
      if (_T_239) begin
        _T_361 <= _T_405;
      end
    end
    if (reset) begin
      _T_368 <= 10'h0;
    end else begin
      if (_T_239) begin
        _T_368 <= {{1'd0}, _T_408};
      end
    end
    if (reset) begin
      _T_371 <= 3'h1;
    end else begin
      if (_T_239) begin
        _T_371 <= _T_393;
      end
    end
    if (reset) begin
      _T_374 <= 3'h1;
    end else begin
      if (_T_239) begin
        _T_374 <= {{1'd0}, _T_417};
      end
    end
    if (reset) begin
      _T_381 <= 14'h0;
    end else begin
      if (_T_239) begin
        _T_381 <= {{2'd0}, _T_420};
      end
    end
    if (reset) begin
      _T_384 <= 1'h0;
    end else begin
      if (_T_239) begin
        _T_384 <= _T_313;
      end
    end
    if (reset) begin
      _T_387 <= 6'h20;
    end else begin
      _T_387 <= _GEN_29[5:0];
    end
    if (reset) begin
      _T_390 <= 7'h40;
    end else begin
      if (_T_239) begin
        _T_390 <= 7'h40;
      end
    end
    if (reset) begin
      _T_593 <= 14'h0;
    end else begin
      if (_T_923) begin
        if (_T_174) begin
          _T_593 <= 14'h0;
        end else begin
          _T_593 <= _T_929;
        end
      end
    end
    if (reset) begin
      _T_596 <= 14'h0;
    end else begin
      if (_T_460) begin
        if (_T_607) begin
          _T_596 <= 14'h0;
        end else begin
          _T_596 <= _T_602;
        end
      end
    end
    if (reset) begin
      _T_449 <= 10'h0;
    end else begin
      if (_T_460) begin
        if (_T_239) begin
          _T_449 <= 10'h0;
        end else begin
          _T_449 <= _T_452;
        end
      end
    end
    if (reset) begin
      _T_599 <= 15'h0;
    end else begin
      if (_T_933) begin
        if (_T_183) begin
          _T_599 <= 15'h0;
        end else begin
          _T_599 <= _T_939;
        end
      end
    end
    if (reset) begin
      _T_554 <= 5'h0;
    end else begin
      if (_T_581) begin
        if (_T_239) begin
          _T_554 <= 5'h0;
        end else begin
          if (_T_570) begin
            _T_554 <= 5'h0;
          end else begin
            _T_554 <= _T_568;
          end
        end
      end
    end
    if (reset) begin
      _T_561 <= 5'h0;
    end else begin
      if (_T_581) begin
        if (_T_239) begin
          _T_561 <= 5'h0;
        end else begin
          if (_T_571) begin
            _T_561 <= 5'h0;
          end else begin
            _T_561 <= _T_588;
          end
        end
      end
    end
    if (reset) begin
      _T_524 <= 14'h0;
    end else begin
      if (_T_535) begin
        if (_T_239) begin
          _T_524 <= 14'h0;
        end else begin
          if (_T_528) begin
            _T_524 <= 14'h0;
          end else begin
            _T_524 <= _T_527;
          end
        end
      end
    end
    if (reset) begin
      _T_489 <= 22'h0;
    end else begin
      if (_T_506) begin
        if (_T_239) begin
          _T_489 <= 22'h0;
        end else begin
          if (_T_497) begin
            _T_489 <= 22'h0;
          end else begin
            if (_T_496) begin
              _T_489 <= _T_495;
            end else begin
              _T_489 <= _T_512;
            end
          end
        end
      end
    end
    if (reset) begin
      _T_469 <= 13'h0;
    end else begin
      if (_T_475) begin
        if (_T_239) begin
          _T_469 <= 13'h0;
        end else begin
          if (_T_474) begin
            _T_469 <= 13'h0;
          end else begin
            _T_469 <= _T_480;
          end
        end
      end
    end
    if (reset) begin
      _T_654 <= 2'h3;
    end else begin
      if (_T_581) begin
        if (_T_239) begin
          _T_654 <= 2'h3;
        end else begin
          _T_654 <= _T_688;
        end
      end
    end
    if (reset) begin
      _T_657 <= 5'h0;
    end else begin
      if (_T_621) begin
        _T_657 <= _T_554;
      end
    end
    if (reset) begin
      _T_660 <= 5'h0;
    end else begin
      if (_T_621) begin
        _T_660 <= _T_561;
      end
    end
    if (reset) begin
      _T_663 <= 7'h0;
    end else begin
      if (_T_621) begin
        if (_T_529) begin
          _T_663 <= 7'h40;
        end else begin
          _T_663 <= _T_533;
        end
      end
    end
    if (reset) begin
      _T_666 <= 7'h0;
    end else begin
      if (_T_621) begin
        if (_T_496) begin
          _T_666 <= _T_390;
        end else begin
          if (_T_497) begin
            _T_666 <= _T_501;
          end else begin
            _T_666 <= {{1'd0}, _T_387};
          end
        end
      end
    end
    if (reset) begin
      _T_669 <= 3'h0;
    end else begin
      if (_T_621) begin
        if (_T_571) begin
          _T_669 <= _T_374;
        end else begin
          _T_669 <= {{1'd0}, _T_578};
        end
      end
    end
    if (reset) begin
      _T_672 <= 1'h0;
    end else begin
      if (_T_621) begin
        _T_672 <= _T_580;
      end
    end
    if (reset) begin
      _T_675 <= 1'h0;
    end else begin
      if (_T_621) begin
        _T_675 <= _T_690;
      end
    end
    if (reset) begin
      _T_678 <= 1'h0;
    end else begin
      if (_T_621) begin
        _T_678 <= _T_693;
      end
    end
    if (reset) begin
      _T_681 <= 1'h0;
    end else begin
      if (_T_621) begin
        _T_681 <= _T_697;
      end
    end
    if (reset) begin
      _T_684 <= 1'h0;
    end else begin
      if (_T_621) begin
        _T_684 <= _T_705;
      end
    end
    if (reset) begin
      _T_708 <= 7'h0;
    end else begin
      if (_T_621) begin
        _T_708 <= {{1'd0}, _T_459};
      end
    end
    if (reset) begin
      _T_711 <= 7'h0;
    end else begin
      if (_T_621) begin
        if (_T_529) begin
          _T_711 <= 7'h40;
        end else begin
          _T_711 <= _T_533;
        end
      end
    end
    if (reset) begin
      _T_714 <= 3'h0;
    end else begin
      if (_T_621) begin
        if (_T_571) begin
          _T_714 <= _T_374;
        end else begin
          _T_714 <= {{1'd0}, _T_578};
        end
      end
    end
    if (reset) begin
      _T_717 <= 1'h0;
    end else begin
      if (_T_621) begin
        _T_717 <= _T_734;
      end
    end
    if (reset) begin
      _T_793 <= 1'h0;
    end else begin
      _T_793 <= _T_859;
    end
    if (reset) begin
      _T_796 <= 7'h0;
    end else begin
      if (_T_793) begin
        if (_T_384) begin
          if (_T_472) begin
            _T_796 <= 7'h0;
          end else begin
            if (_T_774) begin
              _T_796 <= _T_779;
            end else begin
              if (_T_781) begin
                _T_796 <= _T_786;
              end else begin
                _T_796 <= _T_754;
              end
            end
          end
        end else begin
          _T_796 <= _T_754;
        end
      end
    end
    if (reset) begin
      _T_802 <= 1'h0;
    end else begin
      _T_802 <= _T_867;
    end
    if (reset) begin
      _T_805 <= 31'h0;
    end else begin
      if (_T_867) begin
        _T_805 <= _T_748;
      end
    end
    if (reset) begin
      _T_808 <= 1'h0;
    end else begin
      _T_808 <= _T_859;
    end
    if (reset) begin
      _T_811 <= 18'h0;
    end else begin
      if (_T_859) begin
        _T_811 <= _T_750;
      end
    end
  end
  always @(posedge io_nvdla_core_ng_clk) begin
    if (reset) begin
      _T_870 <= 9'h40;
    end else begin
      if (_T_886) begin
        _T_870 <= _T_891;
      end
    end
    if (reset) begin
      _T_873 <= 1'h0;
    end else begin
      _T_873 <= io_accu2sc_credit_size_valid;
    end
    if (io_accu2sc_credit_size_valid) begin
      _T_875 <= io_accu2sc_credit_size_bits;
    end
    if (reset) begin
      _T_943 <= 1'h0;
    end else begin
      _T_943 <= _T_901;
    end
    if (reset) begin
      _T_946 <= 1'h0;
    end else begin
      _T_946 <= _T_913;
    end
  end
endmodule
