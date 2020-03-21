module CKLNQD12( // @[:@32.2]
  input   io_CP, // @[:@35.4]
  input   io_TE, // @[:@35.4]
  input   io_E, // @[:@35.4]
  output  io_Q // @[:@35.4]
);
  wire  _T_13; // @[CKLNQD12.scala 16:21:@37.4]
  wire  _T_16; // @[CKLNQD12.scala 16:14:@39.4]
  wire  _T_17; // @[CKLNQD12.scala 16:36:@40.4]
  reg  _T_20; // @[CKLNQD12.scala 17:21:@42.4]
  reg [31:0] _RAND_0;
  wire  _T_23; // @[CKLNQD12.scala 18:34:@46.4]
  assign _T_13 = $unsigned(io_CP); // @[CKLNQD12.scala 16:21:@37.4]
  assign _T_16 = _T_13 == 1'h0; // @[CKLNQD12.scala 16:14:@39.4]
  assign _T_17 = _T_16; // @[CKLNQD12.scala 16:36:@40.4]
  assign _T_23 = _T_13 & _T_20; // @[CKLNQD12.scala 18:34:@46.4]
  assign io_Q = _T_23; // @[CKLNQD12.scala 18:10:@48.4]
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
  _T_20 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge _T_17) begin
    _T_20 <= io_TE | io_E;
  end
endmodule
module NV_CLK_gate_power( // @[:@50.2]
  input   io_clk, // @[:@53.4]
  input   io_clk_en, // @[:@53.4]
  output  io_clk_gated // @[:@53.4]
);
  wire  p_clkgate_io_CP; // @[NV_CLK_gate_power.scala 18:29:@55.4]
  wire  p_clkgate_io_TE; // @[NV_CLK_gate_power.scala 18:29:@55.4]
  wire  p_clkgate_io_E; // @[NV_CLK_gate_power.scala 18:29:@55.4]
  wire  p_clkgate_io_Q; // @[NV_CLK_gate_power.scala 18:29:@55.4]
  CKLNQD12 p_clkgate ( // @[NV_CLK_gate_power.scala 18:29:@55.4]
    .io_CP(p_clkgate_io_CP),
    .io_TE(p_clkgate_io_TE),
    .io_E(p_clkgate_io_E),
    .io_Q(p_clkgate_io_Q)
  );
  assign io_clk_gated = p_clkgate_io_Q; // @[NV_CLK_gate_power.scala 22:20:@61.4]
  assign p_clkgate_io_CP = io_clk; // @[NV_CLK_gate_power.scala 20:23:@59.4]
  assign p_clkgate_io_TE = 1'h0; // @[NV_CLK_gate_power.scala 19:23:@58.4]
  assign p_clkgate_io_E = io_clk_en; // @[NV_CLK_gate_power.scala 21:22:@60.4]
endmodule
module nv_flopram( // @[:@186.2]
  input         io_clk, // @[:@189.4]
  input         io_clk_mgated, // @[:@189.4]
  input  [49:0] io_di, // @[:@189.4]
  input         io_iwe, // @[:@189.4]
  input         io_we, // @[:@189.4]
  input  [1:0]  io_wa, // @[:@189.4]
  input  [2:0]  io_ra, // @[:@189.4]
  output [49:0] io_dout // @[:@189.4]
);
  reg [49:0] di_d; // @[Reg.scala 11:16:@191.4]
  reg [63:0] _RAND_0;
  reg [49:0] _T_26; // @[nv_flopram.scala 67:35:@197.4]
  reg [63:0] _RAND_1;
  reg [49:0] _T_28; // @[nv_flopram.scala 67:35:@198.4]
  reg [63:0] _RAND_2;
  reg [49:0] _T_30; // @[nv_flopram.scala 67:35:@199.4]
  reg [63:0] _RAND_3;
  reg [49:0] _T_32; // @[nv_flopram.scala 67:35:@200.4]
  reg [63:0] _RAND_4;
  wire  _T_36; // @[nv_flopram.scala 71:32:@203.6]
  wire [49:0] _GEN_1; // @[nv_flopram.scala 71:40:@204.6]
  wire  _T_38; // @[nv_flopram.scala 71:32:@207.6]
  wire [49:0] _GEN_2; // @[nv_flopram.scala 71:40:@208.6]
  wire  _T_40; // @[nv_flopram.scala 71:32:@211.6]
  wire [49:0] _GEN_3; // @[nv_flopram.scala 71:40:@212.6]
  wire  _T_42; // @[nv_flopram.scala 71:32:@215.6]
  wire [49:0] _GEN_4; // @[nv_flopram.scala 71:40:@216.6]
  wire  _T_49; // @[Mux.scala 46:19:@221.4]
  wire [49:0] _T_50; // @[Mux.scala 46:16:@222.4]
  wire  _T_51; // @[Mux.scala 46:19:@223.4]
  wire [49:0] _T_52; // @[Mux.scala 46:16:@224.4]
  wire  _T_53; // @[Mux.scala 46:19:@225.4]
  wire [49:0] _T_54; // @[Mux.scala 46:16:@226.4]
  wire  _T_55; // @[Mux.scala 46:19:@227.4]
  wire [49:0] _T_56; // @[Mux.scala 46:16:@228.4]
  wire  _T_57; // @[Mux.scala 46:19:@229.4]
  assign _T_36 = io_wa == 2'h0; // @[nv_flopram.scala 71:32:@203.6]
  assign _GEN_1 = _T_36 ? di_d : _T_26; // @[nv_flopram.scala 71:40:@204.6]
  assign _T_38 = io_wa == 2'h1; // @[nv_flopram.scala 71:32:@207.6]
  assign _GEN_2 = _T_38 ? di_d : _T_28; // @[nv_flopram.scala 71:40:@208.6]
  assign _T_40 = io_wa == 2'h2; // @[nv_flopram.scala 71:32:@211.6]
  assign _GEN_3 = _T_40 ? di_d : _T_30; // @[nv_flopram.scala 71:40:@212.6]
  assign _T_42 = io_wa == 2'h3; // @[nv_flopram.scala 71:32:@215.6]
  assign _GEN_4 = _T_42 ? di_d : _T_32; // @[nv_flopram.scala 71:40:@216.6]
  assign _T_49 = 3'h4 == io_ra; // @[Mux.scala 46:19:@221.4]
  assign _T_50 = _T_49 ? io_di : 50'h0; // @[Mux.scala 46:16:@222.4]
  assign _T_51 = 3'h3 == io_ra; // @[Mux.scala 46:19:@223.4]
  assign _T_52 = _T_51 ? _T_32 : _T_50; // @[Mux.scala 46:16:@224.4]
  assign _T_53 = 3'h2 == io_ra; // @[Mux.scala 46:19:@225.4]
  assign _T_54 = _T_53 ? _T_30 : _T_52; // @[Mux.scala 46:16:@226.4]
  assign _T_55 = 3'h1 == io_ra; // @[Mux.scala 46:19:@227.4]
  assign _T_56 = _T_55 ? _T_28 : _T_54; // @[Mux.scala 46:16:@228.4]
  assign _T_57 = 3'h0 == io_ra; // @[Mux.scala 46:19:@229.4]
  assign io_dout = _T_57 ? _T_26 : _T_56; // @[nv_flopram.scala 81:13:@231.4]
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
  di_d = _RAND_0[49:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  _T_26 = _RAND_1[49:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_28 = _RAND_2[49:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{`RANDOM}};
  _T_30 = _RAND_3[49:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_32 = _RAND_4[49:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_clk) begin
    if (io_iwe) begin
      di_d <= io_di;
    end
  end
  always @(posedge io_clk_mgated) begin
    if (io_we) begin
      if (_T_36) begin
        _T_26 <= di_d;
      end
    end
    if (io_we) begin
      if (_T_38) begin
        _T_28 <= di_d;
      end
    end
    if (io_we) begin
      if (_T_40) begin
        _T_30 <= di_d;
      end
    end
    if (io_we) begin
      if (_T_42) begin
        _T_32 <= di_d;
      end
    end
  end
endmodule
module NV_NVDLA_CSB_MASTER_falcon2csb_fifo_gray_cntr_strict( // @[:@264.2]
  input        io_inc, // @[:@267.4]
  input  [2:0] io_gray, // @[:@267.4]
  output [2:0] io_gray_next // @[:@267.4]
);
  wire  _T_11; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 403:26:@269.4]
  wire  _T_12; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 403:39:@270.4]
  wire  _T_13; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 403:30:@271.4]
  wire  _T_14; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 403:53:@272.4]
  wire  polarity; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 403:44:@273.4]
  wire  _T_15; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 406:28:@274.4]
  wire  _T_19; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 406:76:@277.4]
  wire  _T_20; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 406:74:@278.4]
  wire  _T_21; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 406:64:@279.4]
  wire  _T_24; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 406:111:@282.4]
  wire  _T_25; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 406:101:@283.4]
  wire  _T_28; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 406:137:@285.4]
  wire  _T_29; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 406:135:@286.4]
  wire [2:0] _T_31; // @[Cat.scala 30:58:@288.4]
  assign _T_11 = io_gray[0]; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 403:26:@269.4]
  assign _T_12 = io_gray[1]; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 403:39:@270.4]
  assign _T_13 = _T_11 ^ _T_12; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 403:30:@271.4]
  assign _T_14 = io_gray[2]; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 403:53:@272.4]
  assign polarity = _T_13 ^ _T_14; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 403:44:@273.4]
  assign _T_15 = ~ io_inc; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 406:28:@274.4]
  assign _T_19 = _T_11 == 1'h0; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 406:76:@277.4]
  assign _T_20 = polarity & _T_19; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 406:74:@278.4]
  assign _T_21 = _T_14 ^ _T_20; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 406:64:@279.4]
  assign _T_24 = polarity & _T_11; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 406:111:@282.4]
  assign _T_25 = _T_12 ^ _T_24; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 406:101:@283.4]
  assign _T_28 = polarity == 1'h0; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 406:137:@285.4]
  assign _T_29 = _T_11 ^ _T_28; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 406:135:@286.4]
  assign _T_31 = {_T_21,_T_25,_T_29}; // @[Cat.scala 30:58:@288.4]
  assign io_gray_next = _T_15 ? io_gray : _T_31; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 406:21:@290.4]
endmodule
module p_SSYNC3DO_C_PPP( // @[:@292.2]
  input   io_clk, // @[:@295.4]
  input   io_d, // @[:@295.4]
  output  io_q, // @[:@295.4]
  input   io_clr_ // @[:@295.4]
);
  wire  _T_14; // @[p_SSYNC3DO_C_PPP.scala 15:27:@297.4]
  reg  _T_17; // @[p_SSYNC3DO_C_PPP.scala 17:24:@298.4]
  reg [31:0] _RAND_0;
  reg  _T_20; // @[p_SSYNC3DO_C_PPP.scala 18:25:@299.4]
  reg [31:0] _RAND_1;
  reg  _T_23; // @[p_SSYNC3DO_C_PPP.scala 19:25:@300.4]
  reg [31:0] _RAND_2;
  assign _T_14 = io_clr_ == 1'h0; // @[p_SSYNC3DO_C_PPP.scala 15:27:@297.4]
  assign io_q = _T_17; // @[p_SSYNC3DO_C_PPP.scala 25:10:@304.4]
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
  _T_17 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_20 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_23 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_clk) begin
    if (_T_14) begin
      _T_17 <= 1'h0;
    end else begin
      _T_17 <= _T_20;
    end
    if (_T_14) begin
      _T_20 <= 1'h0;
    end else begin
      _T_20 <= _T_23;
    end
    if (_T_14) begin
      _T_23 <= 1'h0;
    end else begin
      _T_23 <= io_d;
    end
  end
endmodule
module p_STRICTSYNC3DOTM_C_PPP( // @[:@306.2]
  input   io_SRC_D_NEXT, // @[:@309.4]
  input   io_SRC_CLK, // @[:@309.4]
  input   io_SRC_CLRN, // @[:@309.4]
  input   io_DST_CLK, // @[:@309.4]
  input   io_DST_CLRN, // @[:@309.4]
  output  io_SRC_D, // @[:@309.4]
  output  io_DST_Q // @[:@309.4]
);
  wire  sync3d_io_clk; // @[p_STRICTSYNC3DOTM_C_PPP.scala 27:22:@315.4]
  wire  sync3d_io_d; // @[p_STRICTSYNC3DOTM_C_PPP.scala 27:22:@315.4]
  wire  sync3d_io_q; // @[p_STRICTSYNC3DOTM_C_PPP.scala 27:22:@315.4]
  wire  sync3d_io_clr_; // @[p_STRICTSYNC3DOTM_C_PPP.scala 27:22:@315.4]
  wire  _T_23; // @[p_STRICTSYNC3DOTM_C_PPP.scala 25:45:@311.4]
  reg  _T_26; // @[p_STRICTSYNC3DOTM_C_PPP.scala 25:67:@312.4]
  reg [31:0] _RAND_0;
  p_SSYNC3DO_C_PPP sync3d ( // @[p_STRICTSYNC3DOTM_C_PPP.scala 27:22:@315.4]
    .io_clk(sync3d_io_clk),
    .io_d(sync3d_io_d),
    .io_q(sync3d_io_q),
    .io_clr_(sync3d_io_clr_)
  );
  assign _T_23 = ~ io_SRC_CLRN; // @[p_STRICTSYNC3DOTM_C_PPP.scala 25:45:@311.4]
  assign io_SRC_D = _T_26; // @[p_STRICTSYNC3DOTM_C_PPP.scala 25:12:@314.4]
  assign io_DST_Q = sync3d_io_q; // @[p_STRICTSYNC3DOTM_C_PPP.scala 31:12:@321.4]
  assign sync3d_io_clk = io_DST_CLK; // @[p_STRICTSYNC3DOTM_C_PPP.scala 28:17:@318.4]
  assign sync3d_io_d = io_SRC_D; // @[p_STRICTSYNC3DOTM_C_PPP.scala 30:15:@320.4]
  assign sync3d_io_clr_ = io_DST_CLRN; // @[p_STRICTSYNC3DOTM_C_PPP.scala 29:18:@319.4]
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
  _T_26 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_SRC_CLK) begin
    if (_T_23) begin
      _T_26 <= 1'h0;
    end else begin
      _T_26 <= io_SRC_D_NEXT;
    end
  end
endmodule
module NV_NVDLA_CSB_MASTER_falcon2csb_fifo_gray_cntr( // @[:@385.2]
  input        reset, // @[:@387.4]
  input        io_clk, // @[:@388.4]
  input        io_inc, // @[:@388.4]
  output [2:0] io_gray // @[:@388.4]
);
  reg [2:0] _T_13; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 425:29:@390.4]
  reg [31:0] _RAND_0;
  wire  _T_14; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 426:30:@391.4]
  wire  _T_15; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 426:44:@392.4]
  wire  _T_16; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 426:34:@393.4]
  wire  _T_17; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 426:57:@394.4]
  wire  _T_18; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 426:47:@395.4]
  wire  _T_19; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 428:34:@397.6]
  wire  _T_20; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 428:57:@398.6]
  wire  _T_22; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 428:49:@399.6]
  wire  _T_23; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 428:47:@400.6]
  wire  _T_24; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 428:37:@401.6]
  wire  _T_25; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 428:71:@402.6]
  wire  _T_27; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 428:84:@404.6]
  wire  _T_28; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 428:74:@405.6]
  wire  _T_31; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 428:110:@407.6]
  wire  _T_32; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 428:108:@408.6]
  wire [2:0] _T_34; // @[Cat.scala 30:58:@410.6]
  wire [2:0] _GEN_0; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 427:19:@396.4]
  assign _T_14 = _T_13[0]; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 426:30:@391.4]
  assign _T_15 = _T_13[1]; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 426:44:@392.4]
  assign _T_16 = _T_14 ^ _T_15; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 426:34:@393.4]
  assign _T_17 = _T_13[2]; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 426:57:@394.4]
  assign _T_18 = _T_16 ^ _T_17; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 426:47:@395.4]
  assign _T_19 = io_gray[2]; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 428:34:@397.6]
  assign _T_20 = io_gray[0]; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 428:57:@398.6]
  assign _T_22 = _T_20 == 1'h0; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 428:49:@399.6]
  assign _T_23 = _T_18 & _T_22; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 428:47:@400.6]
  assign _T_24 = _T_19 ^ _T_23; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 428:37:@401.6]
  assign _T_25 = io_gray[1]; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 428:71:@402.6]
  assign _T_27 = _T_18 & _T_20; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 428:84:@404.6]
  assign _T_28 = _T_25 ^ _T_27; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 428:74:@405.6]
  assign _T_31 = _T_18 == 1'h0; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 428:110:@407.6]
  assign _T_32 = _T_20 ^ _T_31; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 428:108:@408.6]
  assign _T_34 = {_T_24,_T_28,_T_32}; // @[Cat.scala 30:58:@410.6]
  assign _GEN_0 = io_inc ? _T_34 : _T_13; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 427:19:@396.4]
  assign io_gray = _T_13; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 430:15:@413.4]
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
  _T_13 = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_clk) begin
    if (reset) begin
      _T_13 <= 3'h0;
    end else begin
      if (io_inc) begin
        _T_13 <= _T_34;
      end
    end
  end
endmodule
module NV_NVDLA_CSB_MASTER_falcon2csb_fifo( // @[:@628.2]
  input         reset, // @[:@630.4]
  input         io_wr_clk, // @[:@631.4]
  input         io_rd_clk, // @[:@631.4]
  input         io_wr_reset_, // @[:@631.4]
  input         io_rd_reset_, // @[:@631.4]
  output        io_wr_ready, // @[:@631.4]
  input         io_wr_req, // @[:@631.4]
  output        io_rd_req, // @[:@631.4]
  input  [49:0] io_wr_data, // @[:@631.4]
  output [49:0] io_rd_data // @[:@631.4]
);
  wire  wr_clk_wr_dft_mgate_io_clk; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 39:37:@636.4]
  wire  wr_clk_wr_dft_mgate_io_clk_en; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 39:37:@636.4]
  wire  wr_clk_wr_dft_mgate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 39:37:@636.4]
  wire  rd_clk_rd_dft_mgate_io_clk; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 54:37:@644.4]
  wire  rd_clk_rd_dft_mgate_io_clk_en; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 54:37:@644.4]
  wire  rd_clk_rd_dft_mgate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 54:37:@644.4]
  wire  wr_clk_wr_mgate_io_clk; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 77:33:@650.4]
  wire  wr_clk_wr_mgate_io_clk_en; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 77:33:@650.4]
  wire  wr_clk_wr_mgate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 77:33:@650.4]
  wire  rd_clk_rd_mgate_io_clk; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 83:33:@656.4]
  wire  rd_clk_rd_mgate_io_clk_en; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 83:33:@656.4]
  wire  rd_clk_rd_mgate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 83:33:@656.4]
  wire  ram_io_clk; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 159:21:@723.4]
  wire  ram_io_clk_mgated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 159:21:@723.4]
  wire [49:0] ram_io_di; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 159:21:@723.4]
  wire  ram_io_iwe; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 159:21:@723.4]
  wire  ram_io_we; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 159:21:@723.4]
  wire [1:0] ram_io_wa; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 159:21:@723.4]
  wire [2:0] ram_io_ra; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 159:21:@723.4]
  wire [49:0] ram_io_dout; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 159:21:@723.4]
  wire  wr_clk_wr_mgated_snd_gate_io_clk; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 232:43:@741.4]
  wire  wr_clk_wr_mgated_snd_gate_io_clk_en; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 232:43:@741.4]
  wire  wr_clk_wr_mgated_snd_gate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 232:43:@741.4]
  wire  wr_pushing_gray_io_inc; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 238:33:@747.4]
  wire [2:0] wr_pushing_gray_io_gray; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 238:33:@747.4]
  wire [2:0] wr_pushing_gray_io_gray_next; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 238:33:@747.4]
  wire  nv_AFIFO_wr_pushing_sync0_io_SRC_D_NEXT; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 245:43:@752.4]
  wire  nv_AFIFO_wr_pushing_sync0_io_SRC_CLK; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 245:43:@752.4]
  wire  nv_AFIFO_wr_pushing_sync0_io_SRC_CLRN; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 245:43:@752.4]
  wire  nv_AFIFO_wr_pushing_sync0_io_DST_CLK; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 245:43:@752.4]
  wire  nv_AFIFO_wr_pushing_sync0_io_DST_CLRN; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 245:43:@752.4]
  wire  nv_AFIFO_wr_pushing_sync0_io_SRC_D; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 245:43:@752.4]
  wire  nv_AFIFO_wr_pushing_sync0_io_DST_Q; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 245:43:@752.4]
  wire  nv_AFIFO_wr_pushing_sync1_io_SRC_D_NEXT; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 256:43:@763.4]
  wire  nv_AFIFO_wr_pushing_sync1_io_SRC_CLK; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 256:43:@763.4]
  wire  nv_AFIFO_wr_pushing_sync1_io_SRC_CLRN; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 256:43:@763.4]
  wire  nv_AFIFO_wr_pushing_sync1_io_DST_CLK; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 256:43:@763.4]
  wire  nv_AFIFO_wr_pushing_sync1_io_DST_CLRN; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 256:43:@763.4]
  wire  nv_AFIFO_wr_pushing_sync1_io_SRC_D; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 256:43:@763.4]
  wire  nv_AFIFO_wr_pushing_sync1_io_DST_Q; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 256:43:@763.4]
  wire  nv_AFIFO_wr_pushing_sync2_io_SRC_D_NEXT; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 267:43:@774.4]
  wire  nv_AFIFO_wr_pushing_sync2_io_SRC_CLK; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 267:43:@774.4]
  wire  nv_AFIFO_wr_pushing_sync2_io_SRC_CLRN; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 267:43:@774.4]
  wire  nv_AFIFO_wr_pushing_sync2_io_DST_CLK; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 267:43:@774.4]
  wire  nv_AFIFO_wr_pushing_sync2_io_DST_CLRN; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 267:43:@774.4]
  wire  nv_AFIFO_wr_pushing_sync2_io_SRC_D; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 267:43:@774.4]
  wire  nv_AFIFO_wr_pushing_sync2_io_DST_Q; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 267:43:@774.4]
  wire  rd_pushing_gray_reset; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 284:33:@792.4]
  wire  rd_pushing_gray_io_clk; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 284:33:@792.4]
  wire  rd_pushing_gray_io_inc; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 284:33:@792.4]
  wire [2:0] rd_pushing_gray_io_gray; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 284:33:@792.4]
  wire  rd_clk_rd_mgated_snd_gate_io_clk; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 290:43:@798.4]
  wire  rd_clk_rd_mgated_snd_gate_io_clk_en; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 290:43:@798.4]
  wire  rd_clk_rd_mgated_snd_gate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 290:43:@798.4]
  wire  wr_clk_rcv_gate_io_clk; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 295:33:@804.4]
  wire  wr_clk_rcv_gate_io_clk_en; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 295:33:@804.4]
  wire  wr_clk_rcv_gate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 295:33:@804.4]
  wire  rd_popping_gray_io_inc; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 303:33:@812.4]
  wire [2:0] rd_popping_gray_io_gray; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 303:33:@812.4]
  wire [2:0] rd_popping_gray_io_gray_next; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 303:33:@812.4]
  wire  nv_AFIFO_rd_popping_sync0_io_SRC_D_NEXT; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 310:43:@817.4]
  wire  nv_AFIFO_rd_popping_sync0_io_SRC_CLK; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 310:43:@817.4]
  wire  nv_AFIFO_rd_popping_sync0_io_SRC_CLRN; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 310:43:@817.4]
  wire  nv_AFIFO_rd_popping_sync0_io_DST_CLK; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 310:43:@817.4]
  wire  nv_AFIFO_rd_popping_sync0_io_DST_CLRN; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 310:43:@817.4]
  wire  nv_AFIFO_rd_popping_sync0_io_SRC_D; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 310:43:@817.4]
  wire  nv_AFIFO_rd_popping_sync0_io_DST_Q; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 310:43:@817.4]
  wire  nv_AFIFO_rd_popping_sync1_io_SRC_D_NEXT; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 321:43:@828.4]
  wire  nv_AFIFO_rd_popping_sync1_io_SRC_CLK; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 321:43:@828.4]
  wire  nv_AFIFO_rd_popping_sync1_io_SRC_CLRN; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 321:43:@828.4]
  wire  nv_AFIFO_rd_popping_sync1_io_DST_CLK; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 321:43:@828.4]
  wire  nv_AFIFO_rd_popping_sync1_io_DST_CLRN; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 321:43:@828.4]
  wire  nv_AFIFO_rd_popping_sync1_io_SRC_D; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 321:43:@828.4]
  wire  nv_AFIFO_rd_popping_sync1_io_DST_Q; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 321:43:@828.4]
  wire  nv_AFIFO_rd_popping_sync2_io_SRC_D_NEXT; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 332:43:@839.4]
  wire  nv_AFIFO_rd_popping_sync2_io_SRC_CLK; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 332:43:@839.4]
  wire  nv_AFIFO_rd_popping_sync2_io_SRC_CLRN; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 332:43:@839.4]
  wire  nv_AFIFO_rd_popping_sync2_io_DST_CLK; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 332:43:@839.4]
  wire  nv_AFIFO_rd_popping_sync2_io_DST_CLRN; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 332:43:@839.4]
  wire  nv_AFIFO_rd_popping_sync2_io_SRC_D; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 332:43:@839.4]
  wire  nv_AFIFO_rd_popping_sync2_io_DST_Q; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 332:43:@839.4]
  wire  wr_popping_gray_reset; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 349:33:@858.4]
  wire  wr_popping_gray_io_clk; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 349:33:@858.4]
  wire  wr_popping_gray_io_inc; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 349:33:@858.4]
  wire [2:0] wr_popping_gray_io_gray; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 349:33:@858.4]
  wire  _T_31; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 94:58:@662.4]
  reg  wr_req_in; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 94:80:@663.4]
  reg [31:0] _RAND_0;
  reg  wr_busy_in; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 95:81:@665.4]
  reg [31:0] _RAND_1;
  wire  _T_39; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 96:20:@666.4]
  wire [2:0] rd_popping_gray_cntr_sync; // @[Cat.scala 30:58:@854.4]
  wire [2:0] wr_popping_gray_cntr; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 346:36:@855.4 NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 352:26:@863.4]
  wire  wr_popping; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 347:45:@856.4]
  reg  wr_busy_int; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 111:81:@682.4]
  reg [31:0] _RAND_2;
  wire  _T_55; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 112:34:@683.4]
  wire  ram_we; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 112:31:@684.4]
  reg [2:0] wr_count; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 114:78:@688.4]
  reg [31:0] _RAND_3;
  wire [3:0] _T_67; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 117:66:@693.4]
  wire [2:0] _T_68; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 117:66:@694.4]
  wire [2:0] wr_count_next_no_wr_popping; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 117:42:@695.4]
  wire  wr_count_next_no_wr_popping_is_4; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 120:74:@697.4]
  wire  wr_count_next_is_4; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 121:33:@698.4]
  wire [3:0] _T_63; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 116:74:@689.4]
  wire [3:0] _T_64; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 116:74:@690.4]
  wire [2:0] _T_65; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 116:74:@691.4]
  wire [2:0] wr_count_next_wr_popping; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 116:39:@692.4]
  wire [2:0] wr_count_next; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 118:28:@696.4]
  wire  _T_41; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 101:50:@669.4]
  wire  _T_43; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 101:68:@670.4]
  wire  wr_busy_in_next_wr_req_eq_0; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 101:66:@671.4]
  wire  wr_busy_in_next; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 102:30:@672.4]
  wire  wr_busy_in_int; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 130:33:@705.4]
  wire  _T_46; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 106:10:@675.4]
  wire  _T_49; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 107:30:@678.6]
  wire  _GEN_0; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 106:26:@676.4]
  wire  _T_78; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 133:24:@708.4]
  wire [2:0] _GEN_1; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 133:38:@709.4]
  reg [1:0] wr_adr; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 141:76:@713.4]
  reg [31:0] _RAND_4;
  wire [2:0] _T_84; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 146:30:@714.4]
  wire [1:0] wr_adr_next; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 146:30:@715.4]
  wire [1:0] _GEN_2; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 147:23:@716.4]
  wire  _T_86; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 151:54:@719.4]
  reg [1:0] rd_adr; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 151:76:@720.4]
  reg [31:0] _RAND_5;
  wire [2:0] _T_93; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 172:38:@735.4]
  wire [1:0] rd_adr_next_popping; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 172:38:@736.4]
  reg [2:0] rd_count_p; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 361:80:@874.4]
  reg [31:0] _RAND_6;
  wire  _T_151; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 366:28:@883.4]
  wire [2:0] wr_pushing_gray_cntr_sync; // @[Cat.scala 30:58:@789.4]
  wire [2:0] rd_pushing_gray_cntr; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 281:36:@790.4 NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 287:26:@797.4]
  wire  rd_pushing; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 282:48:@791.4]
  wire  rd_req_p; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 366:36:@884.4]
  reg  rd_req_int; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 358:80:@866.4]
  reg [31:0] _RAND_7;
  wire [1:0] _GEN_3; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 173:21:@737.4]
  wire [1:0] _T_105; // @[Cat.scala 30:58:@785.4]
  wire [1:0] _T_123; // @[Cat.scala 30:58:@850.4]
  wire [3:0] _T_144; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 362:76:@875.4]
  wire [3:0] _T_145; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 362:76:@876.4]
  wire [2:0] _T_146; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 362:76:@877.4]
  wire [2:0] rd_count_p_next_rd_popping; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 362:41:@878.4]
  wire [3:0] _T_148; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 363:67:@879.4]
  wire [2:0] _T_149; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 363:67:@880.4]
  wire [2:0] rd_count_p_next_no_rd_popping; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 363:44:@881.4]
  wire [2:0] rd_count_p_next; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 365:30:@882.4]
  wire  _T_153; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 368:22:@886.4]
  wire [2:0] _GEN_4; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 368:37:@887.4]
  reg [49:0] nv_AFIFO_rd_data; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 372:82:@891.4]
  reg [63:0] _RAND_8;
  wire  _T_160; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 383:73:@900.4]
  wire  _T_161; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 383:87:@901.4]
  wire  _T_162; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 383:101:@902.4]
  wire  _T_166; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 383:115:@905.4]
  wire  _T_167; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 383:162:@906.4]
  NV_CLK_gate_power wr_clk_wr_dft_mgate ( // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 39:37:@636.4]
    .io_clk(wr_clk_wr_dft_mgate_io_clk),
    .io_clk_en(wr_clk_wr_dft_mgate_io_clk_en),
    .io_clk_gated(wr_clk_wr_dft_mgate_io_clk_gated)
  );
  NV_CLK_gate_power rd_clk_rd_dft_mgate ( // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 54:37:@644.4]
    .io_clk(rd_clk_rd_dft_mgate_io_clk),
    .io_clk_en(rd_clk_rd_dft_mgate_io_clk_en),
    .io_clk_gated(rd_clk_rd_dft_mgate_io_clk_gated)
  );
  NV_CLK_gate_power wr_clk_wr_mgate ( // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 77:33:@650.4]
    .io_clk(wr_clk_wr_mgate_io_clk),
    .io_clk_en(wr_clk_wr_mgate_io_clk_en),
    .io_clk_gated(wr_clk_wr_mgate_io_clk_gated)
  );
  NV_CLK_gate_power rd_clk_rd_mgate ( // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 83:33:@656.4]
    .io_clk(rd_clk_rd_mgate_io_clk),
    .io_clk_en(rd_clk_rd_mgate_io_clk_en),
    .io_clk_gated(rd_clk_rd_mgate_io_clk_gated)
  );
  nv_flopram ram ( // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 159:21:@723.4]
    .io_clk(ram_io_clk),
    .io_clk_mgated(ram_io_clk_mgated),
    .io_di(ram_io_di),
    .io_iwe(ram_io_iwe),
    .io_we(ram_io_we),
    .io_wa(ram_io_wa),
    .io_ra(ram_io_ra),
    .io_dout(ram_io_dout)
  );
  NV_CLK_gate_power wr_clk_wr_mgated_snd_gate ( // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 232:43:@741.4]
    .io_clk(wr_clk_wr_mgated_snd_gate_io_clk),
    .io_clk_en(wr_clk_wr_mgated_snd_gate_io_clk_en),
    .io_clk_gated(wr_clk_wr_mgated_snd_gate_io_clk_gated)
  );
  NV_NVDLA_CSB_MASTER_falcon2csb_fifo_gray_cntr_strict wr_pushing_gray ( // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 238:33:@747.4]
    .io_inc(wr_pushing_gray_io_inc),
    .io_gray(wr_pushing_gray_io_gray),
    .io_gray_next(wr_pushing_gray_io_gray_next)
  );
  p_STRICTSYNC3DOTM_C_PPP nv_AFIFO_wr_pushing_sync0 ( // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 245:43:@752.4]
    .io_SRC_D_NEXT(nv_AFIFO_wr_pushing_sync0_io_SRC_D_NEXT),
    .io_SRC_CLK(nv_AFIFO_wr_pushing_sync0_io_SRC_CLK),
    .io_SRC_CLRN(nv_AFIFO_wr_pushing_sync0_io_SRC_CLRN),
    .io_DST_CLK(nv_AFIFO_wr_pushing_sync0_io_DST_CLK),
    .io_DST_CLRN(nv_AFIFO_wr_pushing_sync0_io_DST_CLRN),
    .io_SRC_D(nv_AFIFO_wr_pushing_sync0_io_SRC_D),
    .io_DST_Q(nv_AFIFO_wr_pushing_sync0_io_DST_Q)
  );
  p_STRICTSYNC3DOTM_C_PPP nv_AFIFO_wr_pushing_sync1 ( // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 256:43:@763.4]
    .io_SRC_D_NEXT(nv_AFIFO_wr_pushing_sync1_io_SRC_D_NEXT),
    .io_SRC_CLK(nv_AFIFO_wr_pushing_sync1_io_SRC_CLK),
    .io_SRC_CLRN(nv_AFIFO_wr_pushing_sync1_io_SRC_CLRN),
    .io_DST_CLK(nv_AFIFO_wr_pushing_sync1_io_DST_CLK),
    .io_DST_CLRN(nv_AFIFO_wr_pushing_sync1_io_DST_CLRN),
    .io_SRC_D(nv_AFIFO_wr_pushing_sync1_io_SRC_D),
    .io_DST_Q(nv_AFIFO_wr_pushing_sync1_io_DST_Q)
  );
  p_STRICTSYNC3DOTM_C_PPP nv_AFIFO_wr_pushing_sync2 ( // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 267:43:@774.4]
    .io_SRC_D_NEXT(nv_AFIFO_wr_pushing_sync2_io_SRC_D_NEXT),
    .io_SRC_CLK(nv_AFIFO_wr_pushing_sync2_io_SRC_CLK),
    .io_SRC_CLRN(nv_AFIFO_wr_pushing_sync2_io_SRC_CLRN),
    .io_DST_CLK(nv_AFIFO_wr_pushing_sync2_io_DST_CLK),
    .io_DST_CLRN(nv_AFIFO_wr_pushing_sync2_io_DST_CLRN),
    .io_SRC_D(nv_AFIFO_wr_pushing_sync2_io_SRC_D),
    .io_DST_Q(nv_AFIFO_wr_pushing_sync2_io_DST_Q)
  );
  NV_NVDLA_CSB_MASTER_falcon2csb_fifo_gray_cntr rd_pushing_gray ( // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 284:33:@792.4]
    .reset(rd_pushing_gray_reset),
    .io_clk(rd_pushing_gray_io_clk),
    .io_inc(rd_pushing_gray_io_inc),
    .io_gray(rd_pushing_gray_io_gray)
  );
  NV_CLK_gate_power rd_clk_rd_mgated_snd_gate ( // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 290:43:@798.4]
    .io_clk(rd_clk_rd_mgated_snd_gate_io_clk),
    .io_clk_en(rd_clk_rd_mgated_snd_gate_io_clk_en),
    .io_clk_gated(rd_clk_rd_mgated_snd_gate_io_clk_gated)
  );
  NV_CLK_gate_power wr_clk_rcv_gate ( // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 295:33:@804.4]
    .io_clk(wr_clk_rcv_gate_io_clk),
    .io_clk_en(wr_clk_rcv_gate_io_clk_en),
    .io_clk_gated(wr_clk_rcv_gate_io_clk_gated)
  );
  NV_NVDLA_CSB_MASTER_falcon2csb_fifo_gray_cntr_strict rd_popping_gray ( // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 303:33:@812.4]
    .io_inc(rd_popping_gray_io_inc),
    .io_gray(rd_popping_gray_io_gray),
    .io_gray_next(rd_popping_gray_io_gray_next)
  );
  p_STRICTSYNC3DOTM_C_PPP nv_AFIFO_rd_popping_sync0 ( // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 310:43:@817.4]
    .io_SRC_D_NEXT(nv_AFIFO_rd_popping_sync0_io_SRC_D_NEXT),
    .io_SRC_CLK(nv_AFIFO_rd_popping_sync0_io_SRC_CLK),
    .io_SRC_CLRN(nv_AFIFO_rd_popping_sync0_io_SRC_CLRN),
    .io_DST_CLK(nv_AFIFO_rd_popping_sync0_io_DST_CLK),
    .io_DST_CLRN(nv_AFIFO_rd_popping_sync0_io_DST_CLRN),
    .io_SRC_D(nv_AFIFO_rd_popping_sync0_io_SRC_D),
    .io_DST_Q(nv_AFIFO_rd_popping_sync0_io_DST_Q)
  );
  p_STRICTSYNC3DOTM_C_PPP nv_AFIFO_rd_popping_sync1 ( // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 321:43:@828.4]
    .io_SRC_D_NEXT(nv_AFIFO_rd_popping_sync1_io_SRC_D_NEXT),
    .io_SRC_CLK(nv_AFIFO_rd_popping_sync1_io_SRC_CLK),
    .io_SRC_CLRN(nv_AFIFO_rd_popping_sync1_io_SRC_CLRN),
    .io_DST_CLK(nv_AFIFO_rd_popping_sync1_io_DST_CLK),
    .io_DST_CLRN(nv_AFIFO_rd_popping_sync1_io_DST_CLRN),
    .io_SRC_D(nv_AFIFO_rd_popping_sync1_io_SRC_D),
    .io_DST_Q(nv_AFIFO_rd_popping_sync1_io_DST_Q)
  );
  p_STRICTSYNC3DOTM_C_PPP nv_AFIFO_rd_popping_sync2 ( // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 332:43:@839.4]
    .io_SRC_D_NEXT(nv_AFIFO_rd_popping_sync2_io_SRC_D_NEXT),
    .io_SRC_CLK(nv_AFIFO_rd_popping_sync2_io_SRC_CLK),
    .io_SRC_CLRN(nv_AFIFO_rd_popping_sync2_io_SRC_CLRN),
    .io_DST_CLK(nv_AFIFO_rd_popping_sync2_io_DST_CLK),
    .io_DST_CLRN(nv_AFIFO_rd_popping_sync2_io_DST_CLRN),
    .io_SRC_D(nv_AFIFO_rd_popping_sync2_io_SRC_D),
    .io_DST_Q(nv_AFIFO_rd_popping_sync2_io_DST_Q)
  );
  NV_NVDLA_CSB_MASTER_falcon2csb_fifo_gray_cntr wr_popping_gray ( // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 349:33:@858.4]
    .reset(wr_popping_gray_reset),
    .io_clk(wr_popping_gray_io_clk),
    .io_inc(wr_popping_gray_io_inc),
    .io_gray(wr_popping_gray_io_gray)
  );
  assign _T_31 = io_wr_reset_ == 1'h0; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 94:58:@662.4]
  assign _T_39 = wr_busy_in == 1'h0; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 96:20:@666.4]
  assign rd_popping_gray_cntr_sync = {nv_AFIFO_rd_popping_sync2_io_DST_Q,nv_AFIFO_rd_popping_sync1_io_DST_Q,nv_AFIFO_rd_popping_sync0_io_DST_Q}; // @[Cat.scala 30:58:@854.4]
  assign wr_popping_gray_cntr = wr_popping_gray_io_gray; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 346:36:@855.4 NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 352:26:@863.4]
  assign wr_popping = rd_popping_gray_cntr_sync != wr_popping_gray_cntr; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 347:45:@856.4]
  assign _T_55 = wr_busy_int == 1'h0; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 112:34:@683.4]
  assign ram_we = wr_req_in & _T_55; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 112:31:@684.4]
  assign _T_67 = wr_count + 3'h1; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 117:66:@693.4]
  assign _T_68 = wr_count + 3'h1; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 117:66:@694.4]
  assign wr_count_next_no_wr_popping = ram_we ? _T_68 : wr_count; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 117:42:@695.4]
  assign wr_count_next_no_wr_popping_is_4 = wr_count_next_no_wr_popping == 3'h4; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 120:74:@697.4]
  assign wr_count_next_is_4 = wr_popping ? 1'h0 : wr_count_next_no_wr_popping_is_4; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 121:33:@698.4]
  assign _T_63 = wr_count - 3'h1; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 116:74:@689.4]
  assign _T_64 = $unsigned(_T_63); // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 116:74:@690.4]
  assign _T_65 = _T_64[2:0]; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 116:74:@691.4]
  assign wr_count_next_wr_popping = ram_we ? wr_count : _T_65; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 116:39:@692.4]
  assign wr_count_next = wr_popping ? wr_count_next_wr_popping : wr_count_next_no_wr_popping; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 118:28:@696.4]
  assign _T_41 = wr_req_in & wr_count_next_is_4; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 101:50:@669.4]
  assign _T_43 = ram_we == 1'h0; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 101:68:@670.4]
  assign wr_busy_in_next_wr_req_eq_0 = _T_41 & _T_43; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 101:66:@671.4]
  assign wr_busy_in_next = io_wr_req ? wr_count_next_is_4 : wr_busy_in_next_wr_req_eq_0; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 102:30:@672.4]
  assign wr_busy_in_int = wr_req_in & wr_busy_int; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 130:33:@705.4]
  assign _T_46 = wr_busy_in_int == 1'h0; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 106:10:@675.4]
  assign _T_49 = io_wr_req & _T_39; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 107:30:@678.6]
  assign _GEN_0 = _T_46 ? _T_49 : wr_req_in; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 106:26:@676.4]
  assign _T_78 = ram_we ^ wr_popping; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 133:24:@708.4]
  assign _GEN_1 = _T_78 ? wr_count_next : wr_count; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 133:38:@709.4]
  assign _T_84 = wr_adr + 2'h1; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 146:30:@714.4]
  assign wr_adr_next = wr_adr + 2'h1; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 146:30:@715.4]
  assign _GEN_2 = ram_we ? wr_adr_next : wr_adr; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 147:23:@716.4]
  assign _T_86 = io_rd_reset_ == 1'h0; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 151:54:@719.4]
  assign _T_93 = rd_adr + 2'h1; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 172:38:@735.4]
  assign rd_adr_next_popping = rd_adr + 2'h1; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 172:38:@736.4]
  assign _T_151 = rd_count_p != 3'h0; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 366:28:@883.4]
  assign wr_pushing_gray_cntr_sync = {nv_AFIFO_wr_pushing_sync2_io_DST_Q,nv_AFIFO_wr_pushing_sync1_io_DST_Q,nv_AFIFO_wr_pushing_sync0_io_DST_Q}; // @[Cat.scala 30:58:@789.4]
  assign rd_pushing_gray_cntr = rd_pushing_gray_io_gray; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 281:36:@790.4 NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 287:26:@797.4]
  assign rd_pushing = wr_pushing_gray_cntr_sync != rd_pushing_gray_cntr; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 282:48:@791.4]
  assign rd_req_p = _T_151 | rd_pushing; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 366:36:@884.4]
  assign _GEN_3 = rd_req_p ? rd_adr_next_popping : rd_adr; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 173:21:@737.4]
  assign _T_105 = {nv_AFIFO_wr_pushing_sync2_io_SRC_D,nv_AFIFO_wr_pushing_sync1_io_SRC_D}; // @[Cat.scala 30:58:@785.4]
  assign _T_123 = {nv_AFIFO_rd_popping_sync2_io_SRC_D,nv_AFIFO_rd_popping_sync1_io_SRC_D}; // @[Cat.scala 30:58:@850.4]
  assign _T_144 = rd_count_p - 3'h1; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 362:76:@875.4]
  assign _T_145 = $unsigned(_T_144); // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 362:76:@876.4]
  assign _T_146 = _T_145[2:0]; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 362:76:@877.4]
  assign rd_count_p_next_rd_popping = rd_pushing ? rd_count_p : _T_146; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 362:41:@878.4]
  assign _T_148 = rd_count_p + 3'h1; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 363:67:@879.4]
  assign _T_149 = rd_count_p + 3'h1; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 363:67:@880.4]
  assign rd_count_p_next_no_rd_popping = rd_pushing ? _T_149 : rd_count_p; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 363:44:@881.4]
  assign rd_count_p_next = rd_req_p ? rd_count_p_next_rd_popping : rd_count_p_next_no_rd_popping; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 365:30:@882.4]
  assign _T_153 = rd_pushing | rd_req_p; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 368:22:@886.4]
  assign _GEN_4 = _T_153 ? rd_count_p_next : rd_count_p; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 368:37:@887.4]
  assign _T_160 = ram_we | ram_we; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 383:73:@900.4]
  assign _T_161 = _T_160 | wr_popping; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 383:87:@901.4]
  assign _T_162 = _T_161 | wr_popping; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 383:101:@902.4]
  assign _T_166 = _T_162 | ram_we; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 383:115:@905.4]
  assign _T_167 = wr_busy_int != wr_count_next_is_4; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 383:162:@906.4]
  assign io_wr_ready = wr_busy_in == 1'h0; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 96:17:@667.4]
  assign io_rd_req = rd_req_int; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 359:15:@867.4]
  assign io_rd_data = nv_AFIFO_rd_data; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 380:16:@899.4]
  assign wr_clk_wr_dft_mgate_io_clk = io_wr_clk; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 40:32:@639.4]
  assign wr_clk_wr_dft_mgate_io_clk_en = 1'h1; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 41:35:@640.4]
  assign rd_clk_rd_dft_mgate_io_clk = io_rd_clk; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 55:32:@647.4]
  assign rd_clk_rd_dft_mgate_io_clk_en = 1'h1; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 56:35:@648.4]
  assign wr_clk_wr_mgate_io_clk = io_wr_clk; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 78:28:@653.4]
  assign wr_clk_wr_mgate_io_clk_en = _T_166 | _T_167; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 79:31:@654.4]
  assign rd_clk_rd_mgate_io_clk = io_rd_clk; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 84:28:@659.4]
  assign rd_clk_rd_mgate_io_clk_en = _T_153 | rd_req_int; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 85:31:@660.4]
  assign ram_io_clk = wr_clk_wr_dft_mgate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 160:16:@726.4]
  assign ram_io_clk_mgated = wr_clk_wr_mgate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 161:27:@727.4]
  assign ram_io_di = io_wr_data; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 163:15:@729.4]
  assign ram_io_iwe = _T_39 & io_wr_req; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 164:20:@730.4]
  assign ram_io_we = wr_req_in & _T_55; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 165:15:@731.4]
  assign ram_io_wa = wr_adr; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 166:19:@732.4]
  assign ram_io_ra = {{1'd0}, rd_adr}; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 167:15:@733.4]
  assign wr_clk_wr_mgated_snd_gate_io_clk = io_wr_clk; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 233:38:@744.4]
  assign wr_clk_wr_mgated_snd_gate_io_clk_en = wr_req_in & _T_55; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 234:41:@746.4]
  assign wr_pushing_gray_io_inc = wr_req_in & _T_55; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 240:36:@750.4]
  assign wr_pushing_gray_io_gray = {_T_105,nv_AFIFO_wr_pushing_sync0_io_SRC_D}; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 242:29:@751.4]
  assign nv_AFIFO_wr_pushing_sync0_io_SRC_D_NEXT = wr_pushing_gray_io_gray_next[0]; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 247:45:@757.4]
  assign nv_AFIFO_wr_pushing_sync0_io_SRC_CLK = wr_clk_wr_mgated_snd_gate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 246:42:@755.4]
  assign nv_AFIFO_wr_pushing_sync0_io_SRC_CLRN = io_wr_reset_; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 251:43:@761.4]
  assign nv_AFIFO_wr_pushing_sync0_io_DST_CLK = rd_clk_rd_dft_mgate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 248:42:@758.4]
  assign nv_AFIFO_wr_pushing_sync0_io_DST_CLRN = io_rd_reset_; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 252:43:@762.4]
  assign nv_AFIFO_wr_pushing_sync1_io_SRC_D_NEXT = wr_pushing_gray_io_gray_next[1]; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 258:45:@768.4]
  assign nv_AFIFO_wr_pushing_sync1_io_SRC_CLK = wr_clk_wr_mgated_snd_gate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 257:42:@766.4]
  assign nv_AFIFO_wr_pushing_sync1_io_SRC_CLRN = io_wr_reset_; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 262:43:@772.4]
  assign nv_AFIFO_wr_pushing_sync1_io_DST_CLK = rd_clk_rd_dft_mgate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 259:42:@769.4]
  assign nv_AFIFO_wr_pushing_sync1_io_DST_CLRN = io_rd_reset_; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 263:43:@773.4]
  assign nv_AFIFO_wr_pushing_sync2_io_SRC_D_NEXT = wr_pushing_gray_io_gray_next[2]; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 269:45:@779.4]
  assign nv_AFIFO_wr_pushing_sync2_io_SRC_CLK = wr_clk_wr_mgated_snd_gate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 268:42:@777.4]
  assign nv_AFIFO_wr_pushing_sync2_io_SRC_CLRN = io_wr_reset_; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 273:43:@783.4]
  assign nv_AFIFO_wr_pushing_sync2_io_DST_CLK = rd_clk_rd_dft_mgate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 270:42:@780.4]
  assign nv_AFIFO_wr_pushing_sync2_io_DST_CLRN = io_rd_reset_; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 274:43:@784.4]
  assign rd_pushing_gray_reset = reset; // @[:@794.4]
  assign rd_pushing_gray_io_clk = rd_clk_rd_mgate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 285:28:@795.4]
  assign rd_pushing_gray_io_inc = wr_pushing_gray_cntr_sync != rd_pushing_gray_cntr; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 286:28:@796.4]
  assign rd_clk_rd_mgated_snd_gate_io_clk = io_rd_clk; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 291:38:@801.4]
  assign rd_clk_rd_mgated_snd_gate_io_clk_en = _T_151 | rd_pushing; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 292:41:@803.4]
  assign wr_clk_rcv_gate_io_clk = io_wr_clk; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 296:28:@807.4]
  assign wr_clk_rcv_gate_io_clk_en = wr_count_next_no_wr_popping != 3'h0; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 297:31:@810.4]
  assign rd_popping_gray_io_inc = _T_151 | rd_pushing; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 305:36:@815.4]
  assign rd_popping_gray_io_gray = {_T_123,nv_AFIFO_rd_popping_sync0_io_SRC_D}; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 307:29:@816.4]
  assign nv_AFIFO_rd_popping_sync0_io_SRC_D_NEXT = rd_popping_gray_io_gray_next[0]; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 312:45:@822.4]
  assign nv_AFIFO_rd_popping_sync0_io_SRC_CLK = rd_clk_rd_mgated_snd_gate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 311:42:@820.4]
  assign nv_AFIFO_rd_popping_sync0_io_SRC_CLRN = io_rd_reset_; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 316:43:@826.4]
  assign nv_AFIFO_rd_popping_sync0_io_DST_CLK = wr_clk_rcv_gate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 313:42:@823.4]
  assign nv_AFIFO_rd_popping_sync0_io_DST_CLRN = io_wr_reset_; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 317:43:@827.4]
  assign nv_AFIFO_rd_popping_sync1_io_SRC_D_NEXT = rd_popping_gray_io_gray_next[1]; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 323:45:@833.4]
  assign nv_AFIFO_rd_popping_sync1_io_SRC_CLK = rd_clk_rd_mgated_snd_gate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 322:42:@831.4]
  assign nv_AFIFO_rd_popping_sync1_io_SRC_CLRN = io_rd_reset_; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 327:43:@837.4]
  assign nv_AFIFO_rd_popping_sync1_io_DST_CLK = wr_clk_rcv_gate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 324:42:@834.4]
  assign nv_AFIFO_rd_popping_sync1_io_DST_CLRN = io_wr_reset_; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 328:43:@838.4]
  assign nv_AFIFO_rd_popping_sync2_io_SRC_D_NEXT = rd_popping_gray_io_gray_next[1]; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 334:45:@844.4]
  assign nv_AFIFO_rd_popping_sync2_io_SRC_CLK = rd_clk_rd_mgated_snd_gate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 333:42:@842.4]
  assign nv_AFIFO_rd_popping_sync2_io_SRC_CLRN = io_rd_reset_; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 338:43:@848.4]
  assign nv_AFIFO_rd_popping_sync2_io_DST_CLK = wr_clk_rcv_gate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 335:42:@845.4]
  assign nv_AFIFO_rd_popping_sync2_io_DST_CLRN = io_wr_reset_; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 339:43:@849.4]
  assign wr_popping_gray_reset = reset; // @[:@860.4]
  assign wr_popping_gray_io_clk = wr_clk_wr_mgate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 350:28:@861.4]
  assign wr_popping_gray_io_inc = rd_popping_gray_cntr_sync != wr_popping_gray_cntr; // @[NV_NVDLA_CSB_MASTER_falcon2csb_fifo.scala 351:28:@862.4]
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
  wr_req_in = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  wr_busy_in = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  wr_busy_int = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  wr_count = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  wr_adr = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  rd_adr = _RAND_5[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  rd_count_p = _RAND_6[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  rd_req_int = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {2{`RANDOM}};
  nv_AFIFO_rd_data = _RAND_8[49:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge wr_clk_wr_dft_mgate_io_clk_gated) begin
    if (_T_31) begin
      wr_req_in <= 1'h0;
    end else begin
      if (_T_46) begin
        wr_req_in <= _T_49;
      end
    end
    if (_T_31) begin
      wr_busy_in <= 1'h0;
    end else begin
      if (io_wr_req) begin
        if (wr_popping) begin
          wr_busy_in <= 1'h0;
        end else begin
          wr_busy_in <= wr_count_next_no_wr_popping_is_4;
        end
      end else begin
        wr_busy_in <= wr_busy_in_next_wr_req_eq_0;
      end
    end
  end
  always @(posedge wr_clk_wr_mgate_io_clk_gated) begin
    if (_T_31) begin
      wr_busy_int <= 1'h0;
    end else begin
      if (wr_popping) begin
        wr_busy_int <= 1'h0;
      end else begin
        wr_busy_int <= wr_count_next_no_wr_popping_is_4;
      end
    end
    if (_T_31) begin
      wr_count <= 3'h0;
    end else begin
      if (_T_78) begin
        if (wr_popping) begin
          if (!(ram_we)) begin
            wr_count <= _T_65;
          end
        end else begin
          if (ram_we) begin
            wr_count <= _T_68;
          end
        end
      end
    end
    if (_T_31) begin
      wr_adr <= 2'h0;
    end else begin
      if (ram_we) begin
        wr_adr <= wr_adr_next;
      end
    end
  end
  always @(posedge rd_clk_rd_mgate_io_clk_gated) begin
    if (_T_86) begin
      rd_adr <= 2'h0;
    end else begin
      if (rd_req_p) begin
        rd_adr <= rd_adr_next_popping;
      end
    end
    if (_T_86) begin
      rd_count_p <= 3'h0;
    end else begin
      if (_T_153) begin
        if (rd_req_p) begin
          if (!(rd_pushing)) begin
            rd_count_p <= _T_146;
          end
        end else begin
          if (rd_pushing) begin
            rd_count_p <= _T_149;
          end
        end
      end
    end
    if (_T_86) begin
      rd_req_int <= 1'h0;
    end else begin
      rd_req_int <= rd_req_p;
    end
    if (rd_req_p) begin
      nv_AFIFO_rd_data <= ram_io_dout;
    end
  end
endmodule
module nv_flopram_1( // @[:@1100.2]
  input         io_clk, // @[:@1103.4]
  input         io_clk_mgated, // @[:@1103.4]
  input  [33:0] io_di, // @[:@1103.4]
  input         io_iwe, // @[:@1103.4]
  input         io_we, // @[:@1103.4]
  input         io_wa, // @[:@1103.4]
  input  [1:0]  io_ra, // @[:@1103.4]
  output [33:0] io_dout // @[:@1103.4]
);
  reg [33:0] di_d; // @[Reg.scala 11:16:@1105.4]
  reg [63:0] _RAND_0;
  reg [33:0] _T_26; // @[nv_flopram.scala 67:35:@1111.4]
  reg [63:0] _RAND_1;
  reg [33:0] _T_28; // @[nv_flopram.scala 67:35:@1112.4]
  reg [63:0] _RAND_2;
  wire  _T_32; // @[nv_flopram.scala 71:32:@1115.6]
  wire [33:0] _GEN_1; // @[nv_flopram.scala 71:40:@1116.6]
  wire [33:0] _GEN_2; // @[nv_flopram.scala 71:40:@1120.6]
  wire  _T_39; // @[Mux.scala 46:19:@1125.4]
  wire [33:0] _T_40; // @[Mux.scala 46:16:@1126.4]
  wire  _T_41; // @[Mux.scala 46:19:@1127.4]
  wire [33:0] _T_42; // @[Mux.scala 46:16:@1128.4]
  wire  _T_43; // @[Mux.scala 46:19:@1129.4]
  assign _T_32 = io_wa == 1'h0; // @[nv_flopram.scala 71:32:@1115.6]
  assign _GEN_1 = _T_32 ? di_d : _T_26; // @[nv_flopram.scala 71:40:@1116.6]
  assign _GEN_2 = io_wa ? di_d : _T_28; // @[nv_flopram.scala 71:40:@1120.6]
  assign _T_39 = 2'h2 == io_ra; // @[Mux.scala 46:19:@1125.4]
  assign _T_40 = _T_39 ? io_di : 34'h0; // @[Mux.scala 46:16:@1126.4]
  assign _T_41 = 2'h1 == io_ra; // @[Mux.scala 46:19:@1127.4]
  assign _T_42 = _T_41 ? _T_28 : _T_40; // @[Mux.scala 46:16:@1128.4]
  assign _T_43 = 2'h0 == io_ra; // @[Mux.scala 46:19:@1129.4]
  assign io_dout = _T_43 ? _T_26 : _T_42; // @[nv_flopram.scala 81:13:@1131.4]
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
  di_d = _RAND_0[33:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  _T_26 = _RAND_1[33:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_28 = _RAND_2[33:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_clk) begin
    if (io_iwe) begin
      di_d <= io_di;
    end
  end
  always @(posedge io_clk_mgated) begin
    if (io_we) begin
      if (_T_32) begin
        _T_26 <= di_d;
      end
    end
    if (io_we) begin
      if (io_wa) begin
        _T_28 <= di_d;
      end
    end
  end
endmodule
module NV_NVDLA_CSB_MASTER_csb2falcon_fifo_gray_cntr_strict( // @[:@1164.2]
  input        io_inc, // @[:@1167.4]
  input  [1:0] io_gray, // @[:@1167.4]
  output [1:0] io_gray_next // @[:@1167.4]
);
  wire  _T_11; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 379:26:@1169.4]
  wire  _T_12; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 379:39:@1170.4]
  wire  polarity; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 379:30:@1171.4]
  wire  _T_13; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 382:28:@1172.4]
  wire  _T_15; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 382:64:@1174.4]
  wire  _T_18; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 382:87:@1176.4]
  wire  _T_19; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 382:85:@1177.4]
  wire [1:0] _T_20; // @[Cat.scala 30:58:@1178.4]
  assign _T_11 = io_gray[0]; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 379:26:@1169.4]
  assign _T_12 = io_gray[1]; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 379:39:@1170.4]
  assign polarity = _T_11 ^ _T_12; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 379:30:@1171.4]
  assign _T_13 = ~ io_inc; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 382:28:@1172.4]
  assign _T_15 = _T_12 ^ polarity; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 382:64:@1174.4]
  assign _T_18 = polarity == 1'h0; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 382:87:@1176.4]
  assign _T_19 = _T_11 ^ _T_18; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 382:85:@1177.4]
  assign _T_20 = {_T_15,_T_19}; // @[Cat.scala 30:58:@1178.4]
  assign io_gray_next = _T_13 ? io_gray : _T_20; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 382:21:@1180.4]
endmodule
module NV_NVDLA_CSB_MASTER_csb2falcon_fifo_gray_cntr( // @[:@1244.2]
  input        reset, // @[:@1246.4]
  input        io_clk, // @[:@1247.4]
  input        io_inc, // @[:@1247.4]
  output [1:0] io_gray // @[:@1247.4]
);
  reg [1:0] _T_13; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 401:29:@1249.4]
  reg [31:0] _RAND_0;
  wire  _T_14; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 402:30:@1250.4]
  wire  _T_15; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 402:44:@1251.4]
  wire  _T_16; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 402:34:@1252.4]
  wire  _T_18; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 404:38:@1255.6]
  wire  _T_21; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 404:62:@1257.6]
  wire  _T_22; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 404:60:@1258.6]
  wire [1:0] _T_23; // @[Cat.scala 30:58:@1259.6]
  wire [1:0] _GEN_0; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 403:19:@1253.4]
  assign _T_14 = _T_13[0]; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 402:30:@1250.4]
  assign _T_15 = _T_13[1]; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 402:44:@1251.4]
  assign _T_16 = _T_14 ^ _T_15; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 402:34:@1252.4]
  assign _T_18 = _T_15 ^ _T_16; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 404:38:@1255.6]
  assign _T_21 = _T_16 == 1'h0; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 404:62:@1257.6]
  assign _T_22 = _T_14 ^ _T_21; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 404:60:@1258.6]
  assign _T_23 = {_T_18,_T_22}; // @[Cat.scala 30:58:@1259.6]
  assign _GEN_0 = io_inc ? _T_23 : _T_13; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 403:19:@1253.4]
  assign io_gray = _T_13; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 406:15:@1262.4]
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
  _T_13 = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_clk) begin
    if (reset) begin
      _T_13 <= 2'h0;
    end else begin
      if (io_inc) begin
        _T_13 <= _T_23;
      end
    end
  end
endmodule
module NV_NVDLA_CSB_MASTER_csb2falcon_fifo( // @[:@1426.2]
  input         reset, // @[:@1428.4]
  input         io_wr_clk, // @[:@1429.4]
  input         io_wr_reset_, // @[:@1429.4]
  input         io_rd_clk, // @[:@1429.4]
  input         io_rd_reset_, // @[:@1429.4]
  input         io_wr_req, // @[:@1429.4]
  output        io_rd_req, // @[:@1429.4]
  input  [33:0] io_wr_data, // @[:@1429.4]
  output [33:0] io_rd_data // @[:@1429.4]
);
  wire  wr_clk_wr_dft_mgate_io_clk; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 38:37:@1434.4]
  wire  wr_clk_wr_dft_mgate_io_clk_en; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 38:37:@1434.4]
  wire  wr_clk_wr_dft_mgate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 38:37:@1434.4]
  wire  rd_clk_rd_dft_mgate_io_clk; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 53:37:@1442.4]
  wire  rd_clk_rd_dft_mgate_io_clk_en; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 53:37:@1442.4]
  wire  rd_clk_rd_dft_mgate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 53:37:@1442.4]
  wire  wr_clk_wr_mgate_io_clk; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 76:33:@1448.4]
  wire  wr_clk_wr_mgate_io_clk_en; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 76:33:@1448.4]
  wire  wr_clk_wr_mgate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 76:33:@1448.4]
  wire  rd_clk_rd_mgate_io_clk; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 82:33:@1454.4]
  wire  rd_clk_rd_mgate_io_clk_en; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 82:33:@1454.4]
  wire  rd_clk_rd_mgate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 82:33:@1454.4]
  wire  ram_io_clk; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 158:21:@1521.4]
  wire  ram_io_clk_mgated; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 158:21:@1521.4]
  wire [33:0] ram_io_di; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 158:21:@1521.4]
  wire  ram_io_iwe; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 158:21:@1521.4]
  wire  ram_io_we; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 158:21:@1521.4]
  wire  ram_io_wa; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 158:21:@1521.4]
  wire [1:0] ram_io_ra; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 158:21:@1521.4]
  wire [33:0] ram_io_dout; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 158:21:@1521.4]
  wire  wr_clk_wr_mgated_snd_gate_io_clk; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 231:43:@1539.4]
  wire  wr_clk_wr_mgated_snd_gate_io_clk_en; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 231:43:@1539.4]
  wire  wr_clk_wr_mgated_snd_gate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 231:43:@1539.4]
  wire  wr_pushing_gray_io_inc; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 237:33:@1545.4]
  wire [1:0] wr_pushing_gray_io_gray; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 237:33:@1545.4]
  wire [1:0] wr_pushing_gray_io_gray_next; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 237:33:@1545.4]
  wire  nv_AFIFO_wr_pushing_sync0_io_SRC_D_NEXT; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 244:43:@1550.4]
  wire  nv_AFIFO_wr_pushing_sync0_io_SRC_CLK; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 244:43:@1550.4]
  wire  nv_AFIFO_wr_pushing_sync0_io_SRC_CLRN; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 244:43:@1550.4]
  wire  nv_AFIFO_wr_pushing_sync0_io_DST_CLK; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 244:43:@1550.4]
  wire  nv_AFIFO_wr_pushing_sync0_io_DST_CLRN; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 244:43:@1550.4]
  wire  nv_AFIFO_wr_pushing_sync0_io_SRC_D; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 244:43:@1550.4]
  wire  nv_AFIFO_wr_pushing_sync0_io_DST_Q; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 244:43:@1550.4]
  wire  nv_AFIFO_wr_pushing_sync1_io_SRC_D_NEXT; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 255:43:@1561.4]
  wire  nv_AFIFO_wr_pushing_sync1_io_SRC_CLK; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 255:43:@1561.4]
  wire  nv_AFIFO_wr_pushing_sync1_io_SRC_CLRN; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 255:43:@1561.4]
  wire  nv_AFIFO_wr_pushing_sync1_io_DST_CLK; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 255:43:@1561.4]
  wire  nv_AFIFO_wr_pushing_sync1_io_DST_CLRN; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 255:43:@1561.4]
  wire  nv_AFIFO_wr_pushing_sync1_io_SRC_D; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 255:43:@1561.4]
  wire  nv_AFIFO_wr_pushing_sync1_io_DST_Q; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 255:43:@1561.4]
  wire  rd_pushing_gray_reset; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 272:33:@1577.4]
  wire  rd_pushing_gray_io_clk; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 272:33:@1577.4]
  wire  rd_pushing_gray_io_inc; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 272:33:@1577.4]
  wire [1:0] rd_pushing_gray_io_gray; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 272:33:@1577.4]
  wire  rd_clk_rd_mgated_snd_gate_io_clk; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 278:43:@1583.4]
  wire  rd_clk_rd_mgated_snd_gate_io_clk_en; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 278:43:@1583.4]
  wire  rd_clk_rd_mgated_snd_gate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 278:43:@1583.4]
  wire  wr_clk_rcv_gate_io_clk; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 283:33:@1589.4]
  wire  wr_clk_rcv_gate_io_clk_en; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 283:33:@1589.4]
  wire  wr_clk_rcv_gate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 283:33:@1589.4]
  wire  rd_popping_gray_io_inc; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 291:33:@1597.4]
  wire [1:0] rd_popping_gray_io_gray; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 291:33:@1597.4]
  wire [1:0] rd_popping_gray_io_gray_next; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 291:33:@1597.4]
  wire  nv_AFIFO_rd_popping_sync0_io_SRC_D_NEXT; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 298:43:@1602.4]
  wire  nv_AFIFO_rd_popping_sync0_io_SRC_CLK; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 298:43:@1602.4]
  wire  nv_AFIFO_rd_popping_sync0_io_SRC_CLRN; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 298:43:@1602.4]
  wire  nv_AFIFO_rd_popping_sync0_io_DST_CLK; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 298:43:@1602.4]
  wire  nv_AFIFO_rd_popping_sync0_io_DST_CLRN; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 298:43:@1602.4]
  wire  nv_AFIFO_rd_popping_sync0_io_SRC_D; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 298:43:@1602.4]
  wire  nv_AFIFO_rd_popping_sync0_io_DST_Q; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 298:43:@1602.4]
  wire  nv_AFIFO_rd_popping_sync1_io_SRC_D_NEXT; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 309:43:@1613.4]
  wire  nv_AFIFO_rd_popping_sync1_io_SRC_CLK; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 309:43:@1613.4]
  wire  nv_AFIFO_rd_popping_sync1_io_SRC_CLRN; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 309:43:@1613.4]
  wire  nv_AFIFO_rd_popping_sync1_io_DST_CLK; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 309:43:@1613.4]
  wire  nv_AFIFO_rd_popping_sync1_io_DST_CLRN; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 309:43:@1613.4]
  wire  nv_AFIFO_rd_popping_sync1_io_SRC_D; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 309:43:@1613.4]
  wire  nv_AFIFO_rd_popping_sync1_io_DST_Q; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 309:43:@1613.4]
  wire  wr_popping_gray_reset; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 326:33:@1630.4]
  wire  wr_popping_gray_io_clk; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 326:33:@1630.4]
  wire  wr_popping_gray_io_inc; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 326:33:@1630.4]
  wire [1:0] wr_popping_gray_io_gray; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 326:33:@1630.4]
  wire  _T_31; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 93:58:@1460.4]
  reg  wr_req_in; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 93:80:@1461.4]
  reg [31:0] _RAND_0;
  reg  wr_busy_in; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 94:81:@1463.4]
  reg [31:0] _RAND_1;
  wire  _T_39; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 95:20:@1464.4]
  wire [1:0] rd_popping_gray_cntr_sync; // @[Cat.scala 30:58:@1626.4]
  wire [1:0] wr_popping_gray_cntr; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 323:36:@1627.4 NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 329:26:@1635.4]
  wire  wr_popping; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 324:45:@1628.4]
  reg  wr_busy_int; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 110:81:@1480.4]
  reg [31:0] _RAND_2;
  wire  _T_55; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 111:34:@1481.4]
  wire  ram_we; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 111:31:@1482.4]
  reg [1:0] wr_count; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 113:78:@1486.4]
  reg [31:0] _RAND_3;
  wire [2:0] _T_67; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 116:66:@1491.4]
  wire [1:0] _T_68; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 116:66:@1492.4]
  wire [1:0] wr_count_next_no_wr_popping; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 116:42:@1493.4]
  wire  wr_count_next_no_wr_popping_is_2; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 119:74:@1495.4]
  wire  wr_count_next_is_2; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 120:33:@1496.4]
  wire [2:0] _T_63; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 115:74:@1487.4]
  wire [2:0] _T_64; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 115:74:@1488.4]
  wire [1:0] _T_65; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 115:74:@1489.4]
  wire [1:0] wr_count_next_wr_popping; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 115:39:@1490.4]
  wire [1:0] wr_count_next; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 117:28:@1494.4]
  wire  _T_41; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 100:50:@1467.4]
  wire  _T_43; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 100:68:@1468.4]
  wire  wr_busy_in_next_wr_req_eq_0; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 100:66:@1469.4]
  wire  wr_busy_in_next; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 101:30:@1470.4]
  wire  wr_busy_in_int; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 129:33:@1503.4]
  wire  _T_46; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 105:10:@1473.4]
  wire  _T_49; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 106:30:@1476.6]
  wire  _GEN_0; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 105:26:@1474.4]
  wire  _T_78; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 132:24:@1506.4]
  wire [1:0] _GEN_1; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 132:38:@1507.4]
  reg  wr_adr; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 140:76:@1511.4]
  reg [31:0] _RAND_4;
  wire [1:0] _T_84; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 145:30:@1512.4]
  wire  wr_adr_next; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 145:30:@1513.4]
  wire  _GEN_2; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 146:23:@1514.4]
  wire  _T_86; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 150:54:@1517.4]
  reg  rd_adr; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 150:76:@1518.4]
  reg [31:0] _RAND_5;
  wire [1:0] _T_93; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 171:38:@1533.4]
  wire  rd_adr_next_popping; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 171:38:@1534.4]
  reg [1:0] rd_count_p; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 338:81:@1646.4]
  reg [31:0] _RAND_6;
  wire  _T_141; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 343:28:@1655.4]
  wire [1:0] wr_pushing_gray_cntr_sync; // @[Cat.scala 30:58:@1574.4]
  wire [1:0] rd_pushing_gray_cntr; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 269:36:@1575.4 NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 275:26:@1582.4]
  wire  rd_pushing; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 270:48:@1576.4]
  wire  rd_req_p; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 343:36:@1656.4]
  reg  rd_req_int; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 335:80:@1638.4]
  reg [31:0] _RAND_7;
  wire  _GEN_3; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 172:21:@1535.4]
  wire [2:0] _T_134; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 339:76:@1647.4]
  wire [2:0] _T_135; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 339:76:@1648.4]
  wire [1:0] _T_136; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 339:76:@1649.4]
  wire [1:0] rd_count_p_next_rd_popping; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 339:41:@1650.4]
  wire [2:0] _T_138; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 340:67:@1651.4]
  wire [1:0] _T_139; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 340:67:@1652.4]
  wire [1:0] rd_count_p_next_no_rd_popping; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 340:44:@1653.4]
  wire [1:0] rd_count_p_next; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 342:30:@1654.4]
  wire  _T_143; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 345:22:@1658.4]
  wire [1:0] _GEN_4; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 345:37:@1659.4]
  reg [33:0] nv_AFIFO_rd_data; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 349:83:@1663.4]
  reg [63:0] _RAND_8;
  wire  _T_150; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 360:73:@1672.4]
  wire  _T_151; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 360:87:@1673.4]
  wire  _T_152; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 360:101:@1674.4]
  wire  _T_156; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 360:115:@1677.4]
  wire  _T_157; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 360:162:@1678.4]
  NV_CLK_gate_power wr_clk_wr_dft_mgate ( // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 38:37:@1434.4]
    .io_clk(wr_clk_wr_dft_mgate_io_clk),
    .io_clk_en(wr_clk_wr_dft_mgate_io_clk_en),
    .io_clk_gated(wr_clk_wr_dft_mgate_io_clk_gated)
  );
  NV_CLK_gate_power rd_clk_rd_dft_mgate ( // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 53:37:@1442.4]
    .io_clk(rd_clk_rd_dft_mgate_io_clk),
    .io_clk_en(rd_clk_rd_dft_mgate_io_clk_en),
    .io_clk_gated(rd_clk_rd_dft_mgate_io_clk_gated)
  );
  NV_CLK_gate_power wr_clk_wr_mgate ( // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 76:33:@1448.4]
    .io_clk(wr_clk_wr_mgate_io_clk),
    .io_clk_en(wr_clk_wr_mgate_io_clk_en),
    .io_clk_gated(wr_clk_wr_mgate_io_clk_gated)
  );
  NV_CLK_gate_power rd_clk_rd_mgate ( // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 82:33:@1454.4]
    .io_clk(rd_clk_rd_mgate_io_clk),
    .io_clk_en(rd_clk_rd_mgate_io_clk_en),
    .io_clk_gated(rd_clk_rd_mgate_io_clk_gated)
  );
  nv_flopram_1 ram ( // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 158:21:@1521.4]
    .io_clk(ram_io_clk),
    .io_clk_mgated(ram_io_clk_mgated),
    .io_di(ram_io_di),
    .io_iwe(ram_io_iwe),
    .io_we(ram_io_we),
    .io_wa(ram_io_wa),
    .io_ra(ram_io_ra),
    .io_dout(ram_io_dout)
  );
  NV_CLK_gate_power wr_clk_wr_mgated_snd_gate ( // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 231:43:@1539.4]
    .io_clk(wr_clk_wr_mgated_snd_gate_io_clk),
    .io_clk_en(wr_clk_wr_mgated_snd_gate_io_clk_en),
    .io_clk_gated(wr_clk_wr_mgated_snd_gate_io_clk_gated)
  );
  NV_NVDLA_CSB_MASTER_csb2falcon_fifo_gray_cntr_strict wr_pushing_gray ( // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 237:33:@1545.4]
    .io_inc(wr_pushing_gray_io_inc),
    .io_gray(wr_pushing_gray_io_gray),
    .io_gray_next(wr_pushing_gray_io_gray_next)
  );
  p_STRICTSYNC3DOTM_C_PPP nv_AFIFO_wr_pushing_sync0 ( // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 244:43:@1550.4]
    .io_SRC_D_NEXT(nv_AFIFO_wr_pushing_sync0_io_SRC_D_NEXT),
    .io_SRC_CLK(nv_AFIFO_wr_pushing_sync0_io_SRC_CLK),
    .io_SRC_CLRN(nv_AFIFO_wr_pushing_sync0_io_SRC_CLRN),
    .io_DST_CLK(nv_AFIFO_wr_pushing_sync0_io_DST_CLK),
    .io_DST_CLRN(nv_AFIFO_wr_pushing_sync0_io_DST_CLRN),
    .io_SRC_D(nv_AFIFO_wr_pushing_sync0_io_SRC_D),
    .io_DST_Q(nv_AFIFO_wr_pushing_sync0_io_DST_Q)
  );
  p_STRICTSYNC3DOTM_C_PPP nv_AFIFO_wr_pushing_sync1 ( // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 255:43:@1561.4]
    .io_SRC_D_NEXT(nv_AFIFO_wr_pushing_sync1_io_SRC_D_NEXT),
    .io_SRC_CLK(nv_AFIFO_wr_pushing_sync1_io_SRC_CLK),
    .io_SRC_CLRN(nv_AFIFO_wr_pushing_sync1_io_SRC_CLRN),
    .io_DST_CLK(nv_AFIFO_wr_pushing_sync1_io_DST_CLK),
    .io_DST_CLRN(nv_AFIFO_wr_pushing_sync1_io_DST_CLRN),
    .io_SRC_D(nv_AFIFO_wr_pushing_sync1_io_SRC_D),
    .io_DST_Q(nv_AFIFO_wr_pushing_sync1_io_DST_Q)
  );
  NV_NVDLA_CSB_MASTER_csb2falcon_fifo_gray_cntr rd_pushing_gray ( // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 272:33:@1577.4]
    .reset(rd_pushing_gray_reset),
    .io_clk(rd_pushing_gray_io_clk),
    .io_inc(rd_pushing_gray_io_inc),
    .io_gray(rd_pushing_gray_io_gray)
  );
  NV_CLK_gate_power rd_clk_rd_mgated_snd_gate ( // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 278:43:@1583.4]
    .io_clk(rd_clk_rd_mgated_snd_gate_io_clk),
    .io_clk_en(rd_clk_rd_mgated_snd_gate_io_clk_en),
    .io_clk_gated(rd_clk_rd_mgated_snd_gate_io_clk_gated)
  );
  NV_CLK_gate_power wr_clk_rcv_gate ( // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 283:33:@1589.4]
    .io_clk(wr_clk_rcv_gate_io_clk),
    .io_clk_en(wr_clk_rcv_gate_io_clk_en),
    .io_clk_gated(wr_clk_rcv_gate_io_clk_gated)
  );
  NV_NVDLA_CSB_MASTER_csb2falcon_fifo_gray_cntr_strict rd_popping_gray ( // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 291:33:@1597.4]
    .io_inc(rd_popping_gray_io_inc),
    .io_gray(rd_popping_gray_io_gray),
    .io_gray_next(rd_popping_gray_io_gray_next)
  );
  p_STRICTSYNC3DOTM_C_PPP nv_AFIFO_rd_popping_sync0 ( // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 298:43:@1602.4]
    .io_SRC_D_NEXT(nv_AFIFO_rd_popping_sync0_io_SRC_D_NEXT),
    .io_SRC_CLK(nv_AFIFO_rd_popping_sync0_io_SRC_CLK),
    .io_SRC_CLRN(nv_AFIFO_rd_popping_sync0_io_SRC_CLRN),
    .io_DST_CLK(nv_AFIFO_rd_popping_sync0_io_DST_CLK),
    .io_DST_CLRN(nv_AFIFO_rd_popping_sync0_io_DST_CLRN),
    .io_SRC_D(nv_AFIFO_rd_popping_sync0_io_SRC_D),
    .io_DST_Q(nv_AFIFO_rd_popping_sync0_io_DST_Q)
  );
  p_STRICTSYNC3DOTM_C_PPP nv_AFIFO_rd_popping_sync1 ( // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 309:43:@1613.4]
    .io_SRC_D_NEXT(nv_AFIFO_rd_popping_sync1_io_SRC_D_NEXT),
    .io_SRC_CLK(nv_AFIFO_rd_popping_sync1_io_SRC_CLK),
    .io_SRC_CLRN(nv_AFIFO_rd_popping_sync1_io_SRC_CLRN),
    .io_DST_CLK(nv_AFIFO_rd_popping_sync1_io_DST_CLK),
    .io_DST_CLRN(nv_AFIFO_rd_popping_sync1_io_DST_CLRN),
    .io_SRC_D(nv_AFIFO_rd_popping_sync1_io_SRC_D),
    .io_DST_Q(nv_AFIFO_rd_popping_sync1_io_DST_Q)
  );
  NV_NVDLA_CSB_MASTER_csb2falcon_fifo_gray_cntr wr_popping_gray ( // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 326:33:@1630.4]
    .reset(wr_popping_gray_reset),
    .io_clk(wr_popping_gray_io_clk),
    .io_inc(wr_popping_gray_io_inc),
    .io_gray(wr_popping_gray_io_gray)
  );
  assign _T_31 = io_wr_reset_ == 1'h0; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 93:58:@1460.4]
  assign _T_39 = wr_busy_in == 1'h0; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 95:20:@1464.4]
  assign rd_popping_gray_cntr_sync = {nv_AFIFO_rd_popping_sync1_io_DST_Q,nv_AFIFO_rd_popping_sync0_io_DST_Q}; // @[Cat.scala 30:58:@1626.4]
  assign wr_popping_gray_cntr = wr_popping_gray_io_gray; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 323:36:@1627.4 NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 329:26:@1635.4]
  assign wr_popping = rd_popping_gray_cntr_sync != wr_popping_gray_cntr; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 324:45:@1628.4]
  assign _T_55 = wr_busy_int == 1'h0; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 111:34:@1481.4]
  assign ram_we = wr_req_in & _T_55; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 111:31:@1482.4]
  assign _T_67 = wr_count + 2'h1; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 116:66:@1491.4]
  assign _T_68 = wr_count + 2'h1; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 116:66:@1492.4]
  assign wr_count_next_no_wr_popping = ram_we ? _T_68 : wr_count; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 116:42:@1493.4]
  assign wr_count_next_no_wr_popping_is_2 = wr_count_next_no_wr_popping == 2'h2; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 119:74:@1495.4]
  assign wr_count_next_is_2 = wr_popping ? 1'h0 : wr_count_next_no_wr_popping_is_2; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 120:33:@1496.4]
  assign _T_63 = wr_count - 2'h1; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 115:74:@1487.4]
  assign _T_64 = $unsigned(_T_63); // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 115:74:@1488.4]
  assign _T_65 = _T_64[1:0]; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 115:74:@1489.4]
  assign wr_count_next_wr_popping = ram_we ? wr_count : _T_65; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 115:39:@1490.4]
  assign wr_count_next = wr_popping ? wr_count_next_wr_popping : wr_count_next_no_wr_popping; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 117:28:@1494.4]
  assign _T_41 = wr_req_in & wr_count_next_is_2; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 100:50:@1467.4]
  assign _T_43 = ram_we == 1'h0; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 100:68:@1468.4]
  assign wr_busy_in_next_wr_req_eq_0 = _T_41 & _T_43; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 100:66:@1469.4]
  assign wr_busy_in_next = io_wr_req ? wr_count_next_is_2 : wr_busy_in_next_wr_req_eq_0; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 101:30:@1470.4]
  assign wr_busy_in_int = wr_req_in & wr_busy_int; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 129:33:@1503.4]
  assign _T_46 = wr_busy_in_int == 1'h0; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 105:10:@1473.4]
  assign _T_49 = io_wr_req & _T_39; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 106:30:@1476.6]
  assign _GEN_0 = _T_46 ? _T_49 : wr_req_in; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 105:26:@1474.4]
  assign _T_78 = ram_we ^ wr_popping; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 132:24:@1506.4]
  assign _GEN_1 = _T_78 ? wr_count_next : wr_count; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 132:38:@1507.4]
  assign _T_84 = wr_adr + 1'h1; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 145:30:@1512.4]
  assign wr_adr_next = wr_adr + 1'h1; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 145:30:@1513.4]
  assign _GEN_2 = ram_we ? wr_adr_next : wr_adr; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 146:23:@1514.4]
  assign _T_86 = io_rd_reset_ == 1'h0; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 150:54:@1517.4]
  assign _T_93 = rd_adr + 1'h1; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 171:38:@1533.4]
  assign rd_adr_next_popping = rd_adr + 1'h1; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 171:38:@1534.4]
  assign _T_141 = rd_count_p != 2'h0; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 343:28:@1655.4]
  assign wr_pushing_gray_cntr_sync = {nv_AFIFO_wr_pushing_sync1_io_DST_Q,nv_AFIFO_wr_pushing_sync0_io_DST_Q}; // @[Cat.scala 30:58:@1574.4]
  assign rd_pushing_gray_cntr = rd_pushing_gray_io_gray; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 269:36:@1575.4 NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 275:26:@1582.4]
  assign rd_pushing = wr_pushing_gray_cntr_sync != rd_pushing_gray_cntr; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 270:48:@1576.4]
  assign rd_req_p = _T_141 | rd_pushing; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 343:36:@1656.4]
  assign _GEN_3 = rd_req_p ? rd_adr_next_popping : rd_adr; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 172:21:@1535.4]
  assign _T_134 = rd_count_p - 2'h1; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 339:76:@1647.4]
  assign _T_135 = $unsigned(_T_134); // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 339:76:@1648.4]
  assign _T_136 = _T_135[1:0]; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 339:76:@1649.4]
  assign rd_count_p_next_rd_popping = rd_pushing ? rd_count_p : _T_136; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 339:41:@1650.4]
  assign _T_138 = rd_count_p + 2'h1; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 340:67:@1651.4]
  assign _T_139 = rd_count_p + 2'h1; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 340:67:@1652.4]
  assign rd_count_p_next_no_rd_popping = rd_pushing ? _T_139 : rd_count_p; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 340:44:@1653.4]
  assign rd_count_p_next = rd_req_p ? rd_count_p_next_rd_popping : rd_count_p_next_no_rd_popping; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 342:30:@1654.4]
  assign _T_143 = rd_pushing | rd_req_p; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 345:22:@1658.4]
  assign _GEN_4 = _T_143 ? rd_count_p_next : rd_count_p; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 345:37:@1659.4]
  assign _T_150 = ram_we | ram_we; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 360:73:@1672.4]
  assign _T_151 = _T_150 | wr_popping; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 360:87:@1673.4]
  assign _T_152 = _T_151 | wr_popping; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 360:101:@1674.4]
  assign _T_156 = _T_152 | ram_we; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 360:115:@1677.4]
  assign _T_157 = wr_busy_int != wr_count_next_is_2; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 360:162:@1678.4]
  assign io_rd_req = rd_req_int; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 336:15:@1639.4]
  assign io_rd_data = nv_AFIFO_rd_data; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 357:16:@1671.4]
  assign wr_clk_wr_dft_mgate_io_clk = io_wr_clk; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 39:32:@1437.4]
  assign wr_clk_wr_dft_mgate_io_clk_en = 1'h1; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 40:35:@1438.4]
  assign rd_clk_rd_dft_mgate_io_clk = io_rd_clk; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 54:32:@1445.4]
  assign rd_clk_rd_dft_mgate_io_clk_en = 1'h1; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 55:35:@1446.4]
  assign wr_clk_wr_mgate_io_clk = io_wr_clk; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 77:28:@1451.4]
  assign wr_clk_wr_mgate_io_clk_en = _T_156 | _T_157; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 78:31:@1452.4]
  assign rd_clk_rd_mgate_io_clk = io_rd_clk; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 83:28:@1457.4]
  assign rd_clk_rd_mgate_io_clk_en = _T_143 | rd_req_int; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 84:31:@1458.4]
  assign ram_io_clk = wr_clk_wr_dft_mgate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 159:16:@1524.4]
  assign ram_io_clk_mgated = wr_clk_wr_mgate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 160:27:@1525.4]
  assign ram_io_di = io_wr_data; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 162:15:@1527.4]
  assign ram_io_iwe = _T_39 & io_wr_req; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 163:20:@1528.4]
  assign ram_io_we = wr_req_in & _T_55; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 164:15:@1529.4]
  assign ram_io_wa = wr_adr; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 165:19:@1530.4]
  assign ram_io_ra = {{1'd0}, rd_adr}; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 166:15:@1531.4]
  assign wr_clk_wr_mgated_snd_gate_io_clk = io_wr_clk; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 232:38:@1542.4]
  assign wr_clk_wr_mgated_snd_gate_io_clk_en = wr_req_in & _T_55; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 233:41:@1544.4]
  assign wr_pushing_gray_io_inc = wr_req_in & _T_55; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 239:36:@1548.4]
  assign wr_pushing_gray_io_gray = {nv_AFIFO_wr_pushing_sync1_io_SRC_D,nv_AFIFO_wr_pushing_sync0_io_SRC_D}; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 241:29:@1549.4]
  assign nv_AFIFO_wr_pushing_sync0_io_SRC_D_NEXT = wr_pushing_gray_io_gray_next[0]; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 246:45:@1555.4]
  assign nv_AFIFO_wr_pushing_sync0_io_SRC_CLK = wr_clk_wr_mgated_snd_gate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 245:42:@1553.4]
  assign nv_AFIFO_wr_pushing_sync0_io_SRC_CLRN = io_wr_reset_; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 250:43:@1559.4]
  assign nv_AFIFO_wr_pushing_sync0_io_DST_CLK = rd_clk_rd_dft_mgate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 247:42:@1556.4]
  assign nv_AFIFO_wr_pushing_sync0_io_DST_CLRN = io_rd_reset_; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 251:43:@1560.4]
  assign nv_AFIFO_wr_pushing_sync1_io_SRC_D_NEXT = wr_pushing_gray_io_gray_next[1]; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 257:45:@1566.4]
  assign nv_AFIFO_wr_pushing_sync1_io_SRC_CLK = wr_clk_wr_mgated_snd_gate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 256:42:@1564.4]
  assign nv_AFIFO_wr_pushing_sync1_io_SRC_CLRN = io_wr_reset_; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 261:43:@1570.4]
  assign nv_AFIFO_wr_pushing_sync1_io_DST_CLK = rd_clk_rd_dft_mgate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 258:42:@1567.4]
  assign nv_AFIFO_wr_pushing_sync1_io_DST_CLRN = io_rd_reset_; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 262:43:@1571.4]
  assign rd_pushing_gray_reset = reset; // @[:@1579.4]
  assign rd_pushing_gray_io_clk = rd_clk_rd_mgate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 273:28:@1580.4]
  assign rd_pushing_gray_io_inc = wr_pushing_gray_cntr_sync != rd_pushing_gray_cntr; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 274:28:@1581.4]
  assign rd_clk_rd_mgated_snd_gate_io_clk = io_rd_clk; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 279:38:@1586.4]
  assign rd_clk_rd_mgated_snd_gate_io_clk_en = _T_141 | rd_pushing; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 280:41:@1588.4]
  assign wr_clk_rcv_gate_io_clk = io_wr_clk; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 284:28:@1592.4]
  assign wr_clk_rcv_gate_io_clk_en = wr_count_next_no_wr_popping != 2'h0; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 285:31:@1595.4]
  assign rd_popping_gray_io_inc = _T_141 | rd_pushing; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 293:36:@1600.4]
  assign rd_popping_gray_io_gray = {nv_AFIFO_rd_popping_sync1_io_SRC_D,nv_AFIFO_rd_popping_sync0_io_SRC_D}; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 295:29:@1601.4]
  assign nv_AFIFO_rd_popping_sync0_io_SRC_D_NEXT = rd_popping_gray_io_gray_next[0]; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 300:45:@1607.4]
  assign nv_AFIFO_rd_popping_sync0_io_SRC_CLK = rd_clk_rd_mgated_snd_gate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 299:42:@1605.4]
  assign nv_AFIFO_rd_popping_sync0_io_SRC_CLRN = io_rd_reset_; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 304:43:@1611.4]
  assign nv_AFIFO_rd_popping_sync0_io_DST_CLK = wr_clk_rcv_gate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 301:42:@1608.4]
  assign nv_AFIFO_rd_popping_sync0_io_DST_CLRN = io_wr_reset_; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 305:43:@1612.4]
  assign nv_AFIFO_rd_popping_sync1_io_SRC_D_NEXT = rd_popping_gray_io_gray_next[1]; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 311:45:@1618.4]
  assign nv_AFIFO_rd_popping_sync1_io_SRC_CLK = rd_clk_rd_mgated_snd_gate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 310:42:@1616.4]
  assign nv_AFIFO_rd_popping_sync1_io_SRC_CLRN = io_rd_reset_; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 315:43:@1622.4]
  assign nv_AFIFO_rd_popping_sync1_io_DST_CLK = wr_clk_rcv_gate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 312:42:@1619.4]
  assign nv_AFIFO_rd_popping_sync1_io_DST_CLRN = io_wr_reset_; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 316:43:@1623.4]
  assign wr_popping_gray_reset = reset; // @[:@1632.4]
  assign wr_popping_gray_io_clk = wr_clk_wr_mgate_io_clk_gated; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 327:28:@1633.4]
  assign wr_popping_gray_io_inc = rd_popping_gray_cntr_sync != wr_popping_gray_cntr; // @[NV_NVDLA_CSB_MASTER_csb2falcon_fifo.scala 328:28:@1634.4]
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
  wr_req_in = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  wr_busy_in = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  wr_busy_int = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  wr_count = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  wr_adr = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  rd_adr = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  rd_count_p = _RAND_6[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  rd_req_int = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {2{`RANDOM}};
  nv_AFIFO_rd_data = _RAND_8[33:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge wr_clk_wr_dft_mgate_io_clk_gated) begin
    if (_T_31) begin
      wr_req_in <= 1'h0;
    end else begin
      if (_T_46) begin
        wr_req_in <= _T_49;
      end
    end
    if (_T_31) begin
      wr_busy_in <= 1'h0;
    end else begin
      if (io_wr_req) begin
        if (wr_popping) begin
          wr_busy_in <= 1'h0;
        end else begin
          wr_busy_in <= wr_count_next_no_wr_popping_is_2;
        end
      end else begin
        wr_busy_in <= wr_busy_in_next_wr_req_eq_0;
      end
    end
  end
  always @(posedge wr_clk_wr_mgate_io_clk_gated) begin
    if (_T_31) begin
      wr_busy_int <= 1'h0;
    end else begin
      if (wr_popping) begin
        wr_busy_int <= 1'h0;
      end else begin
        wr_busy_int <= wr_count_next_no_wr_popping_is_2;
      end
    end
    if (_T_31) begin
      wr_count <= 2'h0;
    end else begin
      if (_T_78) begin
        if (wr_popping) begin
          if (!(ram_we)) begin
            wr_count <= _T_65;
          end
        end else begin
          if (ram_we) begin
            wr_count <= _T_68;
          end
        end
      end
    end
    if (_T_31) begin
      wr_adr <= 1'h0;
    end else begin
      if (ram_we) begin
        wr_adr <= wr_adr_next;
      end
    end
  end
  always @(posedge rd_clk_rd_mgate_io_clk_gated) begin
    if (_T_86) begin
      rd_adr <= 1'h0;
    end else begin
      if (rd_req_p) begin
        rd_adr <= rd_adr_next_popping;
      end
    end
    if (_T_86) begin
      rd_count_p <= 2'h0;
    end else begin
      if (_T_143) begin
        if (rd_req_p) begin
          if (!(rd_pushing)) begin
            rd_count_p <= _T_136;
          end
        end else begin
          if (rd_pushing) begin
            rd_count_p <= _T_139;
          end
        end
      end
    end
    if (_T_86) begin
      rd_req_int <= 1'h0;
    end else begin
      rd_req_int <= rd_req_p;
    end
    if (rd_req_p) begin
      nv_AFIFO_rd_data <= ram_io_dout;
    end
  end
endmodule
module NV_NVDLA_CSB_MASTER_for_client( // @[:@1689.2]
  input         reset, // @[:@1691.4]
  input         io_nvdla_core_clk, // @[:@1692.4]
  input         io_core_req_pop_valid, // @[:@1692.4]
  input  [17:0] io_core_byte_addr, // @[:@1692.4]
  input  [49:0] io_core_req_pd_d1, // @[:@1692.4]
  input         io_csb2client_req_ready, // @[:@1692.4]
  output        io_csb2client_req_valid, // @[:@1692.4]
  output [62:0] io_csb2client_req_bits, // @[:@1692.4]
  input         io_csb2client_resp_valid, // @[:@1692.4]
  input  [33:0] io_csb2client_resp_bits, // @[:@1692.4]
  output        io_client_resp_pd_valid, // @[:@1692.4]
  output [49:0] io_client_resp_pd_bits, // @[:@1692.4]
  output        io_select_client // @[:@1692.4]
);
  reg  _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 48:34:@1694.4]
  reg [31:0] _RAND_0;
  reg  _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 49:42:@1695.4]
  reg [31:0] _RAND_1;
  reg [49:0] _T_62; // @[NV_NVDLA_CSB_MASTER_helper.scala 50:36:@1696.4]
  reg [63:0] _RAND_2;
  reg  _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 51:40:@1697.4]
  reg [31:0] _RAND_3;
  reg [33:0] _T_67; // @[NV_NVDLA_CSB_MASTER_helper.scala 52:33:@1698.4]
  reg [63:0] _RAND_4;
  wire [17:0] _T_68; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@1699.4]
  wire [31:0] _GEN_2; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@1700.4]
  wire  _T_71; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@1702.4]
  wire  _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@1703.4]
  wire  _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@1704.4]
  wire  _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@1705.4]
  wire  _T_77; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@1706.4]
  wire  _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@1707.4]
  wire  _T_81; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@1708.4]
  wire  _T_84; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@1711.4]
  wire [33:0] _T_86; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@1717.4]
  wire [15:0] _T_88; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@1718.4]
  wire [21:0] _T_89; // @[Cat.scala 30:58:@1719.4]
  wire [40:0] _T_90; // @[Cat.scala 30:58:@1720.4]
  assign _T_68 = io_core_byte_addr & 18'h3f000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@1699.4]
  assign _GEN_2 = {{14'd0}, _T_68}; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@1700.4]
  assign _T_71 = io_core_req_pop_valid & io_select_client; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@1702.4]
  assign _T_73 = ~ io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@1703.4]
  assign _T_74 = io_csb2client_req_ready | _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@1704.4]
  assign _T_76 = _T_74 ? 1'h0 : _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@1705.4]
  assign _T_77 = _T_71 ? 1'h1 : _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@1706.4]
  assign _T_80 = io_csb2client_req_ready ? 1'h0 : io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@1707.4]
  assign _T_81 = _T_57 ? 1'h1 : _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@1708.4]
  assign _T_84 = _T_57 & _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@1711.4]
  assign _T_86 = _T_62[49:16]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@1717.4]
  assign _T_88 = _T_62[15:0]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@1718.4]
  assign _T_89 = {6'h0,_T_88}; // @[Cat.scala 30:58:@1719.4]
  assign _T_90 = {7'h0,_T_86}; // @[Cat.scala 30:58:@1720.4]
  assign io_csb2client_req_valid = _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 74:29:@1727.4]
  assign io_csb2client_req_bits = {_T_90,_T_89}; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:28:@1722.4]
  assign io_client_resp_pd_valid = _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 75:29:@1728.4]
  assign io_client_resp_pd_bits = {{16'd0}, _T_67}; // @[NV_NVDLA_CSB_MASTER_helper.scala 76:28:@1729.4]
  assign io_select_client = _GEN_2 == 32'h0; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:22:@1701.4]
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
  _T_57 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_60 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_62 = _RAND_2[49:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_65 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_67 = _RAND_4[33:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_57 <= 1'h0;
    end else begin
      if (_T_71) begin
        _T_57 <= 1'h1;
      end else begin
        if (_T_74) begin
          _T_57 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_60 <= 1'h0;
    end else begin
      if (_T_57) begin
        _T_60 <= 1'h1;
      end else begin
        if (io_csb2client_req_ready) begin
          _T_60 <= 1'h0;
        end else begin
          _T_60 <= io_csb2client_req_valid;
        end
      end
    end
    if (_T_84) begin
      _T_62 <= io_core_req_pd_d1;
    end
    if (reset) begin
      _T_65 <= 1'h0;
    end else begin
      _T_65 <= io_csb2client_resp_valid;
    end
    if (io_csb2client_resp_valid) begin
      _T_67 <= io_csb2client_resp_bits;
    end
  end
endmodule
module NV_NVDLA_CSB_MASTER_for_client_1( // @[:@1731.2]
  input         reset, // @[:@1733.4]
  input         io_nvdla_core_clk, // @[:@1734.4]
  input         io_core_req_pop_valid, // @[:@1734.4]
  input  [17:0] io_core_byte_addr, // @[:@1734.4]
  input  [49:0] io_core_req_pd_d1, // @[:@1734.4]
  input         io_csb2client_req_ready, // @[:@1734.4]
  output        io_csb2client_req_valid, // @[:@1734.4]
  output [62:0] io_csb2client_req_bits, // @[:@1734.4]
  input         io_csb2client_resp_valid, // @[:@1734.4]
  input  [33:0] io_csb2client_resp_bits, // @[:@1734.4]
  output        io_client_resp_pd_valid, // @[:@1734.4]
  output [49:0] io_client_resp_pd_bits, // @[:@1734.4]
  output        io_select_client // @[:@1734.4]
);
  reg  _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 48:34:@1736.4]
  reg [31:0] _RAND_0;
  reg  _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 49:42:@1737.4]
  reg [31:0] _RAND_1;
  reg [49:0] _T_62; // @[NV_NVDLA_CSB_MASTER_helper.scala 50:36:@1738.4]
  reg [63:0] _RAND_2;
  reg  _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 51:40:@1739.4]
  reg [31:0] _RAND_3;
  reg [33:0] _T_67; // @[NV_NVDLA_CSB_MASTER_helper.scala 52:33:@1740.4]
  reg [63:0] _RAND_4;
  wire [17:0] _T_68; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@1741.4]
  wire [31:0] _GEN_2; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@1742.4]
  wire  _T_71; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@1744.4]
  wire  _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@1745.4]
  wire  _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@1746.4]
  wire  _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@1747.4]
  wire  _T_77; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@1748.4]
  wire  _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@1749.4]
  wire  _T_81; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@1750.4]
  wire  _T_84; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@1753.4]
  wire [33:0] _T_86; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@1759.4]
  wire [15:0] _T_88; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@1760.4]
  wire [21:0] _T_89; // @[Cat.scala 30:58:@1761.4]
  wire [40:0] _T_90; // @[Cat.scala 30:58:@1762.4]
  assign _T_68 = io_core_byte_addr & 18'h3f000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@1741.4]
  assign _GEN_2 = {{14'd0}, _T_68}; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@1742.4]
  assign _T_71 = io_core_req_pop_valid & io_select_client; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@1744.4]
  assign _T_73 = ~ io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@1745.4]
  assign _T_74 = io_csb2client_req_ready | _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@1746.4]
  assign _T_76 = _T_74 ? 1'h0 : _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@1747.4]
  assign _T_77 = _T_71 ? 1'h1 : _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@1748.4]
  assign _T_80 = io_csb2client_req_ready ? 1'h0 : io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@1749.4]
  assign _T_81 = _T_57 ? 1'h1 : _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@1750.4]
  assign _T_84 = _T_57 & _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@1753.4]
  assign _T_86 = _T_62[49:16]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@1759.4]
  assign _T_88 = _T_62[15:0]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@1760.4]
  assign _T_89 = {6'h0,_T_88}; // @[Cat.scala 30:58:@1761.4]
  assign _T_90 = {7'h0,_T_86}; // @[Cat.scala 30:58:@1762.4]
  assign io_csb2client_req_valid = _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 74:29:@1769.4]
  assign io_csb2client_req_bits = {_T_90,_T_89}; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:28:@1764.4]
  assign io_client_resp_pd_valid = _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 75:29:@1770.4]
  assign io_client_resp_pd_bits = {{16'd0}, _T_67}; // @[NV_NVDLA_CSB_MASTER_helper.scala 76:28:@1771.4]
  assign io_select_client = _GEN_2 == 32'h1000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:22:@1743.4]
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
  _T_57 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_60 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_62 = _RAND_2[49:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_65 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_67 = _RAND_4[33:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_57 <= 1'h0;
    end else begin
      if (_T_71) begin
        _T_57 <= 1'h1;
      end else begin
        if (_T_74) begin
          _T_57 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_60 <= 1'h0;
    end else begin
      if (_T_57) begin
        _T_60 <= 1'h1;
      end else begin
        if (io_csb2client_req_ready) begin
          _T_60 <= 1'h0;
        end else begin
          _T_60 <= io_csb2client_req_valid;
        end
      end
    end
    if (_T_84) begin
      _T_62 <= io_core_req_pd_d1;
    end
    if (reset) begin
      _T_65 <= 1'h0;
    end else begin
      _T_65 <= io_csb2client_resp_valid;
    end
    if (io_csb2client_resp_valid) begin
      _T_67 <= io_csb2client_resp_bits;
    end
  end
endmodule
module NV_NVDLA_CSB_MASTER_for_client_2( // @[:@1773.2]
  input         reset, // @[:@1775.4]
  input         io_nvdla_core_clk, // @[:@1776.4]
  input         io_core_req_pop_valid, // @[:@1776.4]
  input  [17:0] io_core_byte_addr, // @[:@1776.4]
  input  [49:0] io_core_req_pd_d1, // @[:@1776.4]
  input         io_csb2client_req_ready, // @[:@1776.4]
  output        io_csb2client_req_valid, // @[:@1776.4]
  output [62:0] io_csb2client_req_bits, // @[:@1776.4]
  input         io_csb2client_resp_valid, // @[:@1776.4]
  input  [33:0] io_csb2client_resp_bits, // @[:@1776.4]
  output        io_client_resp_pd_valid, // @[:@1776.4]
  output [49:0] io_client_resp_pd_bits, // @[:@1776.4]
  output        io_select_client // @[:@1776.4]
);
  reg  _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 48:34:@1778.4]
  reg [31:0] _RAND_0;
  reg  _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 49:42:@1779.4]
  reg [31:0] _RAND_1;
  reg [49:0] _T_62; // @[NV_NVDLA_CSB_MASTER_helper.scala 50:36:@1780.4]
  reg [63:0] _RAND_2;
  reg  _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 51:40:@1781.4]
  reg [31:0] _RAND_3;
  reg [33:0] _T_67; // @[NV_NVDLA_CSB_MASTER_helper.scala 52:33:@1782.4]
  reg [63:0] _RAND_4;
  wire [17:0] _T_68; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@1783.4]
  wire [31:0] _GEN_2; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@1784.4]
  wire  _T_71; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@1786.4]
  wire  _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@1787.4]
  wire  _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@1788.4]
  wire  _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@1789.4]
  wire  _T_77; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@1790.4]
  wire  _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@1791.4]
  wire  _T_81; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@1792.4]
  wire  _T_84; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@1795.4]
  wire [33:0] _T_86; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@1801.4]
  wire [15:0] _T_88; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@1802.4]
  wire [21:0] _T_89; // @[Cat.scala 30:58:@1803.4]
  wire [40:0] _T_90; // @[Cat.scala 30:58:@1804.4]
  assign _T_68 = io_core_byte_addr & 18'h3f000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@1783.4]
  assign _GEN_2 = {{14'd0}, _T_68}; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@1784.4]
  assign _T_71 = io_core_req_pop_valid & io_select_client; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@1786.4]
  assign _T_73 = ~ io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@1787.4]
  assign _T_74 = io_csb2client_req_ready | _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@1788.4]
  assign _T_76 = _T_74 ? 1'h0 : _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@1789.4]
  assign _T_77 = _T_71 ? 1'h1 : _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@1790.4]
  assign _T_80 = io_csb2client_req_ready ? 1'h0 : io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@1791.4]
  assign _T_81 = _T_57 ? 1'h1 : _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@1792.4]
  assign _T_84 = _T_57 & _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@1795.4]
  assign _T_86 = _T_62[49:16]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@1801.4]
  assign _T_88 = _T_62[15:0]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@1802.4]
  assign _T_89 = {6'h0,_T_88}; // @[Cat.scala 30:58:@1803.4]
  assign _T_90 = {7'h0,_T_86}; // @[Cat.scala 30:58:@1804.4]
  assign io_csb2client_req_valid = _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 74:29:@1811.4]
  assign io_csb2client_req_bits = {_T_90,_T_89}; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:28:@1806.4]
  assign io_client_resp_pd_valid = _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 75:29:@1812.4]
  assign io_client_resp_pd_bits = {{16'd0}, _T_67}; // @[NV_NVDLA_CSB_MASTER_helper.scala 76:28:@1813.4]
  assign io_select_client = _GEN_2 == 32'h2000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:22:@1785.4]
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
  _T_57 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_60 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_62 = _RAND_2[49:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_65 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_67 = _RAND_4[33:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_57 <= 1'h0;
    end else begin
      if (_T_71) begin
        _T_57 <= 1'h1;
      end else begin
        if (_T_74) begin
          _T_57 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_60 <= 1'h0;
    end else begin
      if (_T_57) begin
        _T_60 <= 1'h1;
      end else begin
        if (io_csb2client_req_ready) begin
          _T_60 <= 1'h0;
        end else begin
          _T_60 <= io_csb2client_req_valid;
        end
      end
    end
    if (_T_84) begin
      _T_62 <= io_core_req_pd_d1;
    end
    if (reset) begin
      _T_65 <= 1'h0;
    end else begin
      _T_65 <= io_csb2client_resp_valid;
    end
    if (io_csb2client_resp_valid) begin
      _T_67 <= io_csb2client_resp_bits;
    end
  end
endmodule
module NV_NVDLA_CSB_MASTER_for_client_3( // @[:@1815.2]
  input         reset, // @[:@1817.4]
  input         io_nvdla_core_clk, // @[:@1818.4]
  input         io_core_req_pop_valid, // @[:@1818.4]
  input  [17:0] io_core_byte_addr, // @[:@1818.4]
  input  [49:0] io_core_req_pd_d1, // @[:@1818.4]
  input         io_csb2client_req_ready, // @[:@1818.4]
  output        io_csb2client_req_valid, // @[:@1818.4]
  output [62:0] io_csb2client_req_bits, // @[:@1818.4]
  input         io_csb2client_resp_valid, // @[:@1818.4]
  input  [33:0] io_csb2client_resp_bits, // @[:@1818.4]
  output        io_client_resp_pd_valid, // @[:@1818.4]
  output [49:0] io_client_resp_pd_bits, // @[:@1818.4]
  output        io_select_client // @[:@1818.4]
);
  reg  _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 48:34:@1820.4]
  reg [31:0] _RAND_0;
  reg  _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 49:42:@1821.4]
  reg [31:0] _RAND_1;
  reg [49:0] _T_62; // @[NV_NVDLA_CSB_MASTER_helper.scala 50:36:@1822.4]
  reg [63:0] _RAND_2;
  reg  _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 51:40:@1823.4]
  reg [31:0] _RAND_3;
  reg [33:0] _T_67; // @[NV_NVDLA_CSB_MASTER_helper.scala 52:33:@1824.4]
  reg [63:0] _RAND_4;
  wire [17:0] _T_68; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@1825.4]
  wire [31:0] _GEN_2; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@1826.4]
  wire  _T_71; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@1828.4]
  wire  _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@1829.4]
  wire  _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@1830.4]
  wire  _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@1831.4]
  wire  _T_77; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@1832.4]
  wire  _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@1833.4]
  wire  _T_81; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@1834.4]
  wire  _T_84; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@1837.4]
  wire [33:0] _T_86; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@1843.4]
  wire [15:0] _T_88; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@1844.4]
  wire [21:0] _T_89; // @[Cat.scala 30:58:@1845.4]
  wire [40:0] _T_90; // @[Cat.scala 30:58:@1846.4]
  assign _T_68 = io_core_byte_addr & 18'h3f000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@1825.4]
  assign _GEN_2 = {{14'd0}, _T_68}; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@1826.4]
  assign _T_71 = io_core_req_pop_valid & io_select_client; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@1828.4]
  assign _T_73 = ~ io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@1829.4]
  assign _T_74 = io_csb2client_req_ready | _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@1830.4]
  assign _T_76 = _T_74 ? 1'h0 : _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@1831.4]
  assign _T_77 = _T_71 ? 1'h1 : _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@1832.4]
  assign _T_80 = io_csb2client_req_ready ? 1'h0 : io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@1833.4]
  assign _T_81 = _T_57 ? 1'h1 : _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@1834.4]
  assign _T_84 = _T_57 & _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@1837.4]
  assign _T_86 = _T_62[49:16]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@1843.4]
  assign _T_88 = _T_62[15:0]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@1844.4]
  assign _T_89 = {6'h0,_T_88}; // @[Cat.scala 30:58:@1845.4]
  assign _T_90 = {7'h0,_T_86}; // @[Cat.scala 30:58:@1846.4]
  assign io_csb2client_req_valid = _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 74:29:@1853.4]
  assign io_csb2client_req_bits = {_T_90,_T_89}; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:28:@1848.4]
  assign io_client_resp_pd_valid = _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 75:29:@1854.4]
  assign io_client_resp_pd_bits = {{16'd0}, _T_67}; // @[NV_NVDLA_CSB_MASTER_helper.scala 76:28:@1855.4]
  assign io_select_client = _GEN_2 == 32'hf000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:22:@1827.4]
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
  _T_57 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_60 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_62 = _RAND_2[49:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_65 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_67 = _RAND_4[33:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_57 <= 1'h0;
    end else begin
      if (_T_71) begin
        _T_57 <= 1'h1;
      end else begin
        if (_T_74) begin
          _T_57 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_60 <= 1'h0;
    end else begin
      if (_T_57) begin
        _T_60 <= 1'h1;
      end else begin
        if (io_csb2client_req_ready) begin
          _T_60 <= 1'h0;
        end else begin
          _T_60 <= io_csb2client_req_valid;
        end
      end
    end
    if (_T_84) begin
      _T_62 <= io_core_req_pd_d1;
    end
    if (reset) begin
      _T_65 <= 1'h0;
    end else begin
      _T_65 <= io_csb2client_resp_valid;
    end
    if (io_csb2client_resp_valid) begin
      _T_67 <= io_csb2client_resp_bits;
    end
  end
endmodule
module NV_NVDLA_CSB_MASTER_for_client_4( // @[:@1857.2]
  input         reset, // @[:@1859.4]
  input         io_nvdla_core_clk, // @[:@1860.4]
  input         io_core_req_pop_valid, // @[:@1860.4]
  input  [17:0] io_core_byte_addr, // @[:@1860.4]
  input  [49:0] io_core_req_pd_d1, // @[:@1860.4]
  input         io_csb2client_req_ready, // @[:@1860.4]
  output        io_csb2client_req_valid, // @[:@1860.4]
  output [62:0] io_csb2client_req_bits, // @[:@1860.4]
  input         io_csb2client_resp_valid, // @[:@1860.4]
  input  [33:0] io_csb2client_resp_bits, // @[:@1860.4]
  output        io_client_resp_pd_valid, // @[:@1860.4]
  output [49:0] io_client_resp_pd_bits, // @[:@1860.4]
  output        io_select_client // @[:@1860.4]
);
  reg  _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 48:34:@1862.4]
  reg [31:0] _RAND_0;
  reg  _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 49:42:@1863.4]
  reg [31:0] _RAND_1;
  reg [49:0] _T_62; // @[NV_NVDLA_CSB_MASTER_helper.scala 50:36:@1864.4]
  reg [63:0] _RAND_2;
  reg  _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 51:40:@1865.4]
  reg [31:0] _RAND_3;
  reg [33:0] _T_67; // @[NV_NVDLA_CSB_MASTER_helper.scala 52:33:@1866.4]
  reg [63:0] _RAND_4;
  wire [17:0] _T_68; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@1867.4]
  wire [31:0] _GEN_2; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@1868.4]
  wire  _T_71; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@1870.4]
  wire  _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@1871.4]
  wire  _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@1872.4]
  wire  _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@1873.4]
  wire  _T_77; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@1874.4]
  wire  _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@1875.4]
  wire  _T_81; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@1876.4]
  wire  _T_84; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@1879.4]
  wire [33:0] _T_86; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@1885.4]
  wire [15:0] _T_88; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@1886.4]
  wire [21:0] _T_89; // @[Cat.scala 30:58:@1887.4]
  wire [40:0] _T_90; // @[Cat.scala 30:58:@1888.4]
  assign _T_68 = io_core_byte_addr & 18'h3f000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@1867.4]
  assign _GEN_2 = {{14'd0}, _T_68}; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@1868.4]
  assign _T_71 = io_core_req_pop_valid & io_select_client; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@1870.4]
  assign _T_73 = ~ io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@1871.4]
  assign _T_74 = io_csb2client_req_ready | _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@1872.4]
  assign _T_76 = _T_74 ? 1'h0 : _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@1873.4]
  assign _T_77 = _T_71 ? 1'h1 : _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@1874.4]
  assign _T_80 = io_csb2client_req_ready ? 1'h0 : io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@1875.4]
  assign _T_81 = _T_57 ? 1'h1 : _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@1876.4]
  assign _T_84 = _T_57 & _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@1879.4]
  assign _T_86 = _T_62[49:16]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@1885.4]
  assign _T_88 = _T_62[15:0]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@1886.4]
  assign _T_89 = {6'h0,_T_88}; // @[Cat.scala 30:58:@1887.4]
  assign _T_90 = {7'h0,_T_86}; // @[Cat.scala 30:58:@1888.4]
  assign io_csb2client_req_valid = _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 74:29:@1895.4]
  assign io_csb2client_req_bits = {_T_90,_T_89}; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:28:@1890.4]
  assign io_client_resp_pd_valid = _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 75:29:@1896.4]
  assign io_client_resp_pd_bits = {{16'd0}, _T_67}; // @[NV_NVDLA_CSB_MASTER_helper.scala 76:28:@1897.4]
  assign io_select_client = _GEN_2 == 32'h3000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:22:@1869.4]
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
  _T_57 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_60 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_62 = _RAND_2[49:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_65 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_67 = _RAND_4[33:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_57 <= 1'h0;
    end else begin
      if (_T_71) begin
        _T_57 <= 1'h1;
      end else begin
        if (_T_74) begin
          _T_57 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_60 <= 1'h0;
    end else begin
      if (_T_57) begin
        _T_60 <= 1'h1;
      end else begin
        if (io_csb2client_req_ready) begin
          _T_60 <= 1'h0;
        end else begin
          _T_60 <= io_csb2client_req_valid;
        end
      end
    end
    if (_T_84) begin
      _T_62 <= io_core_req_pd_d1;
    end
    if (reset) begin
      _T_65 <= 1'h0;
    end else begin
      _T_65 <= io_csb2client_resp_valid;
    end
    if (io_csb2client_resp_valid) begin
      _T_67 <= io_csb2client_resp_bits;
    end
  end
endmodule
module NV_NVDLA_CSB_MASTER_for_client_5( // @[:@1899.2]
  input         reset, // @[:@1901.4]
  input         io_nvdla_core_clk, // @[:@1902.4]
  input         io_core_req_pop_valid, // @[:@1902.4]
  input  [17:0] io_core_byte_addr, // @[:@1902.4]
  input  [49:0] io_core_req_pd_d1, // @[:@1902.4]
  input         io_csb2client_req_ready, // @[:@1902.4]
  output        io_csb2client_req_valid, // @[:@1902.4]
  output [62:0] io_csb2client_req_bits, // @[:@1902.4]
  input         io_csb2client_resp_valid, // @[:@1902.4]
  input  [33:0] io_csb2client_resp_bits, // @[:@1902.4]
  output        io_client_resp_pd_valid, // @[:@1902.4]
  output [49:0] io_client_resp_pd_bits, // @[:@1902.4]
  output        io_select_client // @[:@1902.4]
);
  reg  _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 48:34:@1904.4]
  reg [31:0] _RAND_0;
  reg  _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 49:42:@1905.4]
  reg [31:0] _RAND_1;
  reg [49:0] _T_62; // @[NV_NVDLA_CSB_MASTER_helper.scala 50:36:@1906.4]
  reg [63:0] _RAND_2;
  reg  _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 51:40:@1907.4]
  reg [31:0] _RAND_3;
  reg [33:0] _T_67; // @[NV_NVDLA_CSB_MASTER_helper.scala 52:33:@1908.4]
  reg [63:0] _RAND_4;
  wire [17:0] _T_68; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@1909.4]
  wire [31:0] _GEN_2; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@1910.4]
  wire  _T_71; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@1912.4]
  wire  _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@1913.4]
  wire  _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@1914.4]
  wire  _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@1915.4]
  wire  _T_77; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@1916.4]
  wire  _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@1917.4]
  wire  _T_81; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@1918.4]
  wire  _T_84; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@1921.4]
  wire [33:0] _T_86; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@1927.4]
  wire [15:0] _T_88; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@1928.4]
  wire [21:0] _T_89; // @[Cat.scala 30:58:@1929.4]
  wire [40:0] _T_90; // @[Cat.scala 30:58:@1930.4]
  assign _T_68 = io_core_byte_addr & 18'h3f000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@1909.4]
  assign _GEN_2 = {{14'd0}, _T_68}; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@1910.4]
  assign _T_71 = io_core_req_pop_valid & io_select_client; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@1912.4]
  assign _T_73 = ~ io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@1913.4]
  assign _T_74 = io_csb2client_req_ready | _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@1914.4]
  assign _T_76 = _T_74 ? 1'h0 : _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@1915.4]
  assign _T_77 = _T_71 ? 1'h1 : _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@1916.4]
  assign _T_80 = io_csb2client_req_ready ? 1'h0 : io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@1917.4]
  assign _T_81 = _T_57 ? 1'h1 : _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@1918.4]
  assign _T_84 = _T_57 & _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@1921.4]
  assign _T_86 = _T_62[49:16]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@1927.4]
  assign _T_88 = _T_62[15:0]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@1928.4]
  assign _T_89 = {6'h0,_T_88}; // @[Cat.scala 30:58:@1929.4]
  assign _T_90 = {7'h0,_T_86}; // @[Cat.scala 30:58:@1930.4]
  assign io_csb2client_req_valid = _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 74:29:@1937.4]
  assign io_csb2client_req_bits = {_T_90,_T_89}; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:28:@1932.4]
  assign io_client_resp_pd_valid = _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 75:29:@1938.4]
  assign io_client_resp_pd_bits = {{16'd0}, _T_67}; // @[NV_NVDLA_CSB_MASTER_helper.scala 76:28:@1939.4]
  assign io_select_client = _GEN_2 == 32'h4000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:22:@1911.4]
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
  _T_57 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_60 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_62 = _RAND_2[49:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_65 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_67 = _RAND_4[33:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_57 <= 1'h0;
    end else begin
      if (_T_71) begin
        _T_57 <= 1'h1;
      end else begin
        if (_T_74) begin
          _T_57 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_60 <= 1'h0;
    end else begin
      if (_T_57) begin
        _T_60 <= 1'h1;
      end else begin
        if (io_csb2client_req_ready) begin
          _T_60 <= 1'h0;
        end else begin
          _T_60 <= io_csb2client_req_valid;
        end
      end
    end
    if (_T_84) begin
      _T_62 <= io_core_req_pd_d1;
    end
    if (reset) begin
      _T_65 <= 1'h0;
    end else begin
      _T_65 <= io_csb2client_resp_valid;
    end
    if (io_csb2client_resp_valid) begin
      _T_67 <= io_csb2client_resp_bits;
    end
  end
endmodule
module NV_NVDLA_CSB_MASTER_for_client_6( // @[:@1941.2]
  input         reset, // @[:@1943.4]
  input         io_nvdla_core_clk, // @[:@1944.4]
  input         io_core_req_pop_valid, // @[:@1944.4]
  input  [17:0] io_core_byte_addr, // @[:@1944.4]
  input  [49:0] io_core_req_pd_d1, // @[:@1944.4]
  input         io_csb2client_req_ready, // @[:@1944.4]
  output        io_csb2client_req_valid, // @[:@1944.4]
  output [62:0] io_csb2client_req_bits, // @[:@1944.4]
  input         io_csb2client_resp_valid, // @[:@1944.4]
  input  [33:0] io_csb2client_resp_bits, // @[:@1944.4]
  output        io_client_resp_pd_valid, // @[:@1944.4]
  output [49:0] io_client_resp_pd_bits, // @[:@1944.4]
  output        io_select_client // @[:@1944.4]
);
  reg  _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 48:34:@1946.4]
  reg [31:0] _RAND_0;
  reg  _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 49:42:@1947.4]
  reg [31:0] _RAND_1;
  reg [49:0] _T_62; // @[NV_NVDLA_CSB_MASTER_helper.scala 50:36:@1948.4]
  reg [63:0] _RAND_2;
  reg  _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 51:40:@1949.4]
  reg [31:0] _RAND_3;
  reg [33:0] _T_67; // @[NV_NVDLA_CSB_MASTER_helper.scala 52:33:@1950.4]
  reg [63:0] _RAND_4;
  wire [17:0] _T_68; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@1951.4]
  wire [31:0] _GEN_2; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@1952.4]
  wire  _T_71; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@1954.4]
  wire  _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@1955.4]
  wire  _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@1956.4]
  wire  _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@1957.4]
  wire  _T_77; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@1958.4]
  wire  _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@1959.4]
  wire  _T_81; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@1960.4]
  wire  _T_84; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@1963.4]
  wire [33:0] _T_86; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@1969.4]
  wire [15:0] _T_88; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@1970.4]
  wire [21:0] _T_89; // @[Cat.scala 30:58:@1971.4]
  wire [40:0] _T_90; // @[Cat.scala 30:58:@1972.4]
  assign _T_68 = io_core_byte_addr & 18'h3f000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@1951.4]
  assign _GEN_2 = {{14'd0}, _T_68}; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@1952.4]
  assign _T_71 = io_core_req_pop_valid & io_select_client; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@1954.4]
  assign _T_73 = ~ io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@1955.4]
  assign _T_74 = io_csb2client_req_ready | _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@1956.4]
  assign _T_76 = _T_74 ? 1'h0 : _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@1957.4]
  assign _T_77 = _T_71 ? 1'h1 : _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@1958.4]
  assign _T_80 = io_csb2client_req_ready ? 1'h0 : io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@1959.4]
  assign _T_81 = _T_57 ? 1'h1 : _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@1960.4]
  assign _T_84 = _T_57 & _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@1963.4]
  assign _T_86 = _T_62[49:16]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@1969.4]
  assign _T_88 = _T_62[15:0]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@1970.4]
  assign _T_89 = {6'h0,_T_88}; // @[Cat.scala 30:58:@1971.4]
  assign _T_90 = {7'h0,_T_86}; // @[Cat.scala 30:58:@1972.4]
  assign io_csb2client_req_valid = _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 74:29:@1979.4]
  assign io_csb2client_req_bits = {_T_90,_T_89}; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:28:@1974.4]
  assign io_client_resp_pd_valid = _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 75:29:@1980.4]
  assign io_client_resp_pd_bits = {{16'd0}, _T_67}; // @[NV_NVDLA_CSB_MASTER_helper.scala 76:28:@1981.4]
  assign io_select_client = _GEN_2 == 32'h5000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:22:@1953.4]
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
  _T_57 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_60 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_62 = _RAND_2[49:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_65 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_67 = _RAND_4[33:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_57 <= 1'h0;
    end else begin
      if (_T_71) begin
        _T_57 <= 1'h1;
      end else begin
        if (_T_74) begin
          _T_57 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_60 <= 1'h0;
    end else begin
      if (_T_57) begin
        _T_60 <= 1'h1;
      end else begin
        if (io_csb2client_req_ready) begin
          _T_60 <= 1'h0;
        end else begin
          _T_60 <= io_csb2client_req_valid;
        end
      end
    end
    if (_T_84) begin
      _T_62 <= io_core_req_pd_d1;
    end
    if (reset) begin
      _T_65 <= 1'h0;
    end else begin
      _T_65 <= io_csb2client_resp_valid;
    end
    if (io_csb2client_resp_valid) begin
      _T_67 <= io_csb2client_resp_bits;
    end
  end
endmodule
module NV_NVDLA_CSB_MASTER_for_client_7( // @[:@1983.2]
  input         reset, // @[:@1985.4]
  input         io_nvdla_core_clk, // @[:@1986.4]
  input         io_core_req_pop_valid, // @[:@1986.4]
  input  [17:0] io_core_byte_addr, // @[:@1986.4]
  input  [49:0] io_core_req_pd_d1, // @[:@1986.4]
  input         io_csb2client_req_ready, // @[:@1986.4]
  output        io_csb2client_req_valid, // @[:@1986.4]
  output [62:0] io_csb2client_req_bits, // @[:@1986.4]
  input         io_csb2client_resp_valid, // @[:@1986.4]
  input  [33:0] io_csb2client_resp_bits, // @[:@1986.4]
  output        io_client_resp_pd_valid, // @[:@1986.4]
  output [49:0] io_client_resp_pd_bits, // @[:@1986.4]
  output        io_select_client // @[:@1986.4]
);
  reg  _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 48:34:@1988.4]
  reg [31:0] _RAND_0;
  reg  _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 49:42:@1989.4]
  reg [31:0] _RAND_1;
  reg [49:0] _T_62; // @[NV_NVDLA_CSB_MASTER_helper.scala 50:36:@1990.4]
  reg [63:0] _RAND_2;
  reg  _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 51:40:@1991.4]
  reg [31:0] _RAND_3;
  reg [33:0] _T_67; // @[NV_NVDLA_CSB_MASTER_helper.scala 52:33:@1992.4]
  reg [63:0] _RAND_4;
  wire [17:0] _T_68; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@1993.4]
  wire [31:0] _GEN_2; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@1994.4]
  wire  _T_71; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@1996.4]
  wire  _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@1997.4]
  wire  _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@1998.4]
  wire  _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@1999.4]
  wire  _T_77; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@2000.4]
  wire  _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@2001.4]
  wire  _T_81; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@2002.4]
  wire  _T_84; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@2005.4]
  wire [33:0] _T_86; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@2011.4]
  wire [15:0] _T_88; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@2012.4]
  wire [21:0] _T_89; // @[Cat.scala 30:58:@2013.4]
  wire [40:0] _T_90; // @[Cat.scala 30:58:@2014.4]
  assign _T_68 = io_core_byte_addr & 18'h3f000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@1993.4]
  assign _GEN_2 = {{14'd0}, _T_68}; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@1994.4]
  assign _T_71 = io_core_req_pop_valid & io_select_client; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@1996.4]
  assign _T_73 = ~ io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@1997.4]
  assign _T_74 = io_csb2client_req_ready | _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@1998.4]
  assign _T_76 = _T_74 ? 1'h0 : _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@1999.4]
  assign _T_77 = _T_71 ? 1'h1 : _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@2000.4]
  assign _T_80 = io_csb2client_req_ready ? 1'h0 : io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@2001.4]
  assign _T_81 = _T_57 ? 1'h1 : _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@2002.4]
  assign _T_84 = _T_57 & _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@2005.4]
  assign _T_86 = _T_62[49:16]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@2011.4]
  assign _T_88 = _T_62[15:0]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@2012.4]
  assign _T_89 = {6'h0,_T_88}; // @[Cat.scala 30:58:@2013.4]
  assign _T_90 = {7'h0,_T_86}; // @[Cat.scala 30:58:@2014.4]
  assign io_csb2client_req_valid = _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 74:29:@2021.4]
  assign io_csb2client_req_bits = {_T_90,_T_89}; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:28:@2016.4]
  assign io_client_resp_pd_valid = _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 75:29:@2022.4]
  assign io_client_resp_pd_bits = {{16'd0}, _T_67}; // @[NV_NVDLA_CSB_MASTER_helper.scala 76:28:@2023.4]
  assign io_select_client = _GEN_2 == 32'h6000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:22:@1995.4]
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
  _T_57 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_60 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_62 = _RAND_2[49:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_65 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_67 = _RAND_4[33:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_57 <= 1'h0;
    end else begin
      if (_T_71) begin
        _T_57 <= 1'h1;
      end else begin
        if (_T_74) begin
          _T_57 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_60 <= 1'h0;
    end else begin
      if (_T_57) begin
        _T_60 <= 1'h1;
      end else begin
        if (io_csb2client_req_ready) begin
          _T_60 <= 1'h0;
        end else begin
          _T_60 <= io_csb2client_req_valid;
        end
      end
    end
    if (_T_84) begin
      _T_62 <= io_core_req_pd_d1;
    end
    if (reset) begin
      _T_65 <= 1'h0;
    end else begin
      _T_65 <= io_csb2client_resp_valid;
    end
    if (io_csb2client_resp_valid) begin
      _T_67 <= io_csb2client_resp_bits;
    end
  end
endmodule
module NV_NVDLA_CSB_MASTER_for_client_8( // @[:@2025.2]
  input         reset, // @[:@2027.4]
  input         io_nvdla_core_clk, // @[:@2028.4]
  input         io_core_req_pop_valid, // @[:@2028.4]
  input  [17:0] io_core_byte_addr, // @[:@2028.4]
  input  [49:0] io_core_req_pd_d1, // @[:@2028.4]
  input         io_csb2client_req_ready, // @[:@2028.4]
  output        io_csb2client_req_valid, // @[:@2028.4]
  output [62:0] io_csb2client_req_bits, // @[:@2028.4]
  input         io_csb2client_resp_valid, // @[:@2028.4]
  input  [33:0] io_csb2client_resp_bits, // @[:@2028.4]
  output        io_client_resp_pd_valid, // @[:@2028.4]
  output [49:0] io_client_resp_pd_bits, // @[:@2028.4]
  output        io_select_client // @[:@2028.4]
);
  reg  _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 48:34:@2030.4]
  reg [31:0] _RAND_0;
  reg  _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 49:42:@2031.4]
  reg [31:0] _RAND_1;
  reg [49:0] _T_62; // @[NV_NVDLA_CSB_MASTER_helper.scala 50:36:@2032.4]
  reg [63:0] _RAND_2;
  reg  _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 51:40:@2033.4]
  reg [31:0] _RAND_3;
  reg [33:0] _T_67; // @[NV_NVDLA_CSB_MASTER_helper.scala 52:33:@2034.4]
  reg [63:0] _RAND_4;
  wire [17:0] _T_68; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@2035.4]
  wire [31:0] _GEN_2; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@2036.4]
  wire  _T_71; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@2038.4]
  wire  _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@2039.4]
  wire  _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@2040.4]
  wire  _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@2041.4]
  wire  _T_77; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@2042.4]
  wire  _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@2043.4]
  wire  _T_81; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@2044.4]
  wire  _T_84; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@2047.4]
  wire [33:0] _T_86; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@2053.4]
  wire [15:0] _T_88; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@2054.4]
  wire [21:0] _T_89; // @[Cat.scala 30:58:@2055.4]
  wire [40:0] _T_90; // @[Cat.scala 30:58:@2056.4]
  assign _T_68 = io_core_byte_addr & 18'h3f000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@2035.4]
  assign _GEN_2 = {{14'd0}, _T_68}; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@2036.4]
  assign _T_71 = io_core_req_pop_valid & io_select_client; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@2038.4]
  assign _T_73 = ~ io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@2039.4]
  assign _T_74 = io_csb2client_req_ready | _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@2040.4]
  assign _T_76 = _T_74 ? 1'h0 : _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@2041.4]
  assign _T_77 = _T_71 ? 1'h1 : _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@2042.4]
  assign _T_80 = io_csb2client_req_ready ? 1'h0 : io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@2043.4]
  assign _T_81 = _T_57 ? 1'h1 : _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@2044.4]
  assign _T_84 = _T_57 & _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@2047.4]
  assign _T_86 = _T_62[49:16]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@2053.4]
  assign _T_88 = _T_62[15:0]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@2054.4]
  assign _T_89 = {6'h0,_T_88}; // @[Cat.scala 30:58:@2055.4]
  assign _T_90 = {7'h0,_T_86}; // @[Cat.scala 30:58:@2056.4]
  assign io_csb2client_req_valid = _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 74:29:@2063.4]
  assign io_csb2client_req_bits = {_T_90,_T_89}; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:28:@2058.4]
  assign io_client_resp_pd_valid = _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 75:29:@2064.4]
  assign io_client_resp_pd_bits = {{16'd0}, _T_67}; // @[NV_NVDLA_CSB_MASTER_helper.scala 76:28:@2065.4]
  assign io_select_client = _GEN_2 == 32'h7000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:22:@2037.4]
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
  _T_57 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_60 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_62 = _RAND_2[49:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_65 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_67 = _RAND_4[33:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_57 <= 1'h0;
    end else begin
      if (_T_71) begin
        _T_57 <= 1'h1;
      end else begin
        if (_T_74) begin
          _T_57 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_60 <= 1'h0;
    end else begin
      if (_T_57) begin
        _T_60 <= 1'h1;
      end else begin
        if (io_csb2client_req_ready) begin
          _T_60 <= 1'h0;
        end else begin
          _T_60 <= io_csb2client_req_valid;
        end
      end
    end
    if (_T_84) begin
      _T_62 <= io_core_req_pd_d1;
    end
    if (reset) begin
      _T_65 <= 1'h0;
    end else begin
      _T_65 <= io_csb2client_resp_valid;
    end
    if (io_csb2client_resp_valid) begin
      _T_67 <= io_csb2client_resp_bits;
    end
  end
endmodule
module NV_NVDLA_CSB_MASTER_for_client_9( // @[:@2067.2]
  input         reset, // @[:@2069.4]
  input         io_nvdla_core_clk, // @[:@2070.4]
  input         io_core_req_pop_valid, // @[:@2070.4]
  input  [17:0] io_core_byte_addr, // @[:@2070.4]
  input  [49:0] io_core_req_pd_d1, // @[:@2070.4]
  input         io_csb2client_req_ready, // @[:@2070.4]
  output        io_csb2client_req_valid, // @[:@2070.4]
  output [62:0] io_csb2client_req_bits, // @[:@2070.4]
  input         io_csb2client_resp_valid, // @[:@2070.4]
  input  [33:0] io_csb2client_resp_bits, // @[:@2070.4]
  output        io_client_resp_pd_valid, // @[:@2070.4]
  output [49:0] io_client_resp_pd_bits, // @[:@2070.4]
  output        io_select_client // @[:@2070.4]
);
  reg  _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 48:34:@2072.4]
  reg [31:0] _RAND_0;
  reg  _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 49:42:@2073.4]
  reg [31:0] _RAND_1;
  reg [49:0] _T_62; // @[NV_NVDLA_CSB_MASTER_helper.scala 50:36:@2074.4]
  reg [63:0] _RAND_2;
  reg  _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 51:40:@2075.4]
  reg [31:0] _RAND_3;
  reg [33:0] _T_67; // @[NV_NVDLA_CSB_MASTER_helper.scala 52:33:@2076.4]
  reg [63:0] _RAND_4;
  wire [17:0] _T_68; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@2077.4]
  wire [31:0] _GEN_2; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@2078.4]
  wire  _T_71; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@2080.4]
  wire  _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@2081.4]
  wire  _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@2082.4]
  wire  _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@2083.4]
  wire  _T_77; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@2084.4]
  wire  _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@2085.4]
  wire  _T_81; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@2086.4]
  wire  _T_84; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@2089.4]
  wire [33:0] _T_86; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@2095.4]
  wire [15:0] _T_88; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@2096.4]
  wire [21:0] _T_89; // @[Cat.scala 30:58:@2097.4]
  wire [40:0] _T_90; // @[Cat.scala 30:58:@2098.4]
  assign _T_68 = io_core_byte_addr & 18'h3f000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@2077.4]
  assign _GEN_2 = {{14'd0}, _T_68}; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@2078.4]
  assign _T_71 = io_core_req_pop_valid & io_select_client; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@2080.4]
  assign _T_73 = ~ io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@2081.4]
  assign _T_74 = io_csb2client_req_ready | _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@2082.4]
  assign _T_76 = _T_74 ? 1'h0 : _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@2083.4]
  assign _T_77 = _T_71 ? 1'h1 : _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@2084.4]
  assign _T_80 = io_csb2client_req_ready ? 1'h0 : io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@2085.4]
  assign _T_81 = _T_57 ? 1'h1 : _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@2086.4]
  assign _T_84 = _T_57 & _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@2089.4]
  assign _T_86 = _T_62[49:16]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@2095.4]
  assign _T_88 = _T_62[15:0]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@2096.4]
  assign _T_89 = {6'h0,_T_88}; // @[Cat.scala 30:58:@2097.4]
  assign _T_90 = {7'h0,_T_86}; // @[Cat.scala 30:58:@2098.4]
  assign io_csb2client_req_valid = _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 74:29:@2105.4]
  assign io_csb2client_req_bits = {_T_90,_T_89}; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:28:@2100.4]
  assign io_client_resp_pd_valid = _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 75:29:@2106.4]
  assign io_client_resp_pd_bits = {{16'd0}, _T_67}; // @[NV_NVDLA_CSB_MASTER_helper.scala 76:28:@2107.4]
  assign io_select_client = _GEN_2 == 32'h8000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:22:@2079.4]
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
  _T_57 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_60 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_62 = _RAND_2[49:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_65 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_67 = _RAND_4[33:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_57 <= 1'h0;
    end else begin
      if (_T_71) begin
        _T_57 <= 1'h1;
      end else begin
        if (_T_74) begin
          _T_57 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_60 <= 1'h0;
    end else begin
      if (_T_57) begin
        _T_60 <= 1'h1;
      end else begin
        if (io_csb2client_req_ready) begin
          _T_60 <= 1'h0;
        end else begin
          _T_60 <= io_csb2client_req_valid;
        end
      end
    end
    if (_T_84) begin
      _T_62 <= io_core_req_pd_d1;
    end
    if (reset) begin
      _T_65 <= 1'h0;
    end else begin
      _T_65 <= io_csb2client_resp_valid;
    end
    if (io_csb2client_resp_valid) begin
      _T_67 <= io_csb2client_resp_bits;
    end
  end
endmodule
module NV_NVDLA_CSB_MASTER_for_client_10( // @[:@2109.2]
  input         reset, // @[:@2111.4]
  input         io_nvdla_core_clk, // @[:@2112.4]
  input         io_core_req_pop_valid, // @[:@2112.4]
  input  [17:0] io_core_byte_addr, // @[:@2112.4]
  input  [49:0] io_core_req_pd_d1, // @[:@2112.4]
  input         io_csb2client_req_ready, // @[:@2112.4]
  output        io_csb2client_req_valid, // @[:@2112.4]
  output [62:0] io_csb2client_req_bits, // @[:@2112.4]
  input         io_csb2client_resp_valid, // @[:@2112.4]
  input  [33:0] io_csb2client_resp_bits, // @[:@2112.4]
  output        io_client_resp_pd_valid, // @[:@2112.4]
  output [49:0] io_client_resp_pd_bits, // @[:@2112.4]
  output        io_select_client // @[:@2112.4]
);
  reg  _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 48:34:@2114.4]
  reg [31:0] _RAND_0;
  reg  _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 49:42:@2115.4]
  reg [31:0] _RAND_1;
  reg [49:0] _T_62; // @[NV_NVDLA_CSB_MASTER_helper.scala 50:36:@2116.4]
  reg [63:0] _RAND_2;
  reg  _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 51:40:@2117.4]
  reg [31:0] _RAND_3;
  reg [33:0] _T_67; // @[NV_NVDLA_CSB_MASTER_helper.scala 52:33:@2118.4]
  reg [63:0] _RAND_4;
  wire [17:0] _T_68; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@2119.4]
  wire [31:0] _GEN_2; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@2120.4]
  wire  _T_71; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@2122.4]
  wire  _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@2123.4]
  wire  _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@2124.4]
  wire  _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@2125.4]
  wire  _T_77; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@2126.4]
  wire  _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@2127.4]
  wire  _T_81; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@2128.4]
  wire  _T_84; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@2131.4]
  wire [33:0] _T_86; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@2137.4]
  wire [15:0] _T_88; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@2138.4]
  wire [21:0] _T_89; // @[Cat.scala 30:58:@2139.4]
  wire [40:0] _T_90; // @[Cat.scala 30:58:@2140.4]
  assign _T_68 = io_core_byte_addr & 18'h3f000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@2119.4]
  assign _GEN_2 = {{14'd0}, _T_68}; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@2120.4]
  assign _T_71 = io_core_req_pop_valid & io_select_client; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@2122.4]
  assign _T_73 = ~ io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@2123.4]
  assign _T_74 = io_csb2client_req_ready | _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@2124.4]
  assign _T_76 = _T_74 ? 1'h0 : _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@2125.4]
  assign _T_77 = _T_71 ? 1'h1 : _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@2126.4]
  assign _T_80 = io_csb2client_req_ready ? 1'h0 : io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@2127.4]
  assign _T_81 = _T_57 ? 1'h1 : _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@2128.4]
  assign _T_84 = _T_57 & _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@2131.4]
  assign _T_86 = _T_62[49:16]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@2137.4]
  assign _T_88 = _T_62[15:0]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@2138.4]
  assign _T_89 = {6'h0,_T_88}; // @[Cat.scala 30:58:@2139.4]
  assign _T_90 = {7'h0,_T_86}; // @[Cat.scala 30:58:@2140.4]
  assign io_csb2client_req_valid = _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 74:29:@2147.4]
  assign io_csb2client_req_bits = {_T_90,_T_89}; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:28:@2142.4]
  assign io_client_resp_pd_valid = _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 75:29:@2148.4]
  assign io_client_resp_pd_bits = {{16'd0}, _T_67}; // @[NV_NVDLA_CSB_MASTER_helper.scala 76:28:@2149.4]
  assign io_select_client = _GEN_2 == 32'h9000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:22:@2121.4]
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
  _T_57 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_60 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_62 = _RAND_2[49:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_65 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_67 = _RAND_4[33:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_57 <= 1'h0;
    end else begin
      if (_T_71) begin
        _T_57 <= 1'h1;
      end else begin
        if (_T_74) begin
          _T_57 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_60 <= 1'h0;
    end else begin
      if (_T_57) begin
        _T_60 <= 1'h1;
      end else begin
        if (io_csb2client_req_ready) begin
          _T_60 <= 1'h0;
        end else begin
          _T_60 <= io_csb2client_req_valid;
        end
      end
    end
    if (_T_84) begin
      _T_62 <= io_core_req_pd_d1;
    end
    if (reset) begin
      _T_65 <= 1'h0;
    end else begin
      _T_65 <= io_csb2client_resp_valid;
    end
    if (io_csb2client_resp_valid) begin
      _T_67 <= io_csb2client_resp_bits;
    end
  end
endmodule
module NV_NVDLA_CSB_MASTER_for_client_11( // @[:@2151.2]
  input         reset, // @[:@2153.4]
  input         io_nvdla_core_clk, // @[:@2154.4]
  input         io_core_req_pop_valid, // @[:@2154.4]
  input  [17:0] io_core_byte_addr, // @[:@2154.4]
  input  [49:0] io_core_req_pd_d1, // @[:@2154.4]
  input         io_csb2client_req_ready, // @[:@2154.4]
  output        io_csb2client_req_valid, // @[:@2154.4]
  output [62:0] io_csb2client_req_bits, // @[:@2154.4]
  input         io_csb2client_resp_valid, // @[:@2154.4]
  input  [33:0] io_csb2client_resp_bits, // @[:@2154.4]
  output        io_client_resp_pd_valid, // @[:@2154.4]
  output [49:0] io_client_resp_pd_bits, // @[:@2154.4]
  output        io_select_client // @[:@2154.4]
);
  reg  _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 48:34:@2156.4]
  reg [31:0] _RAND_0;
  reg  _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 49:42:@2157.4]
  reg [31:0] _RAND_1;
  reg [49:0] _T_62; // @[NV_NVDLA_CSB_MASTER_helper.scala 50:36:@2158.4]
  reg [63:0] _RAND_2;
  reg  _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 51:40:@2159.4]
  reg [31:0] _RAND_3;
  reg [33:0] _T_67; // @[NV_NVDLA_CSB_MASTER_helper.scala 52:33:@2160.4]
  reg [63:0] _RAND_4;
  wire [17:0] _T_68; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@2161.4]
  wire [31:0] _GEN_2; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@2162.4]
  wire  _T_71; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@2164.4]
  wire  _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@2165.4]
  wire  _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@2166.4]
  wire  _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@2167.4]
  wire  _T_77; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@2168.4]
  wire  _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@2169.4]
  wire  _T_81; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@2170.4]
  wire  _T_84; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@2173.4]
  wire [33:0] _T_86; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@2179.4]
  wire [15:0] _T_88; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@2180.4]
  wire [21:0] _T_89; // @[Cat.scala 30:58:@2181.4]
  wire [40:0] _T_90; // @[Cat.scala 30:58:@2182.4]
  assign _T_68 = io_core_byte_addr & 18'h3f000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@2161.4]
  assign _GEN_2 = {{14'd0}, _T_68}; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@2162.4]
  assign _T_71 = io_core_req_pop_valid & io_select_client; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@2164.4]
  assign _T_73 = ~ io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@2165.4]
  assign _T_74 = io_csb2client_req_ready | _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@2166.4]
  assign _T_76 = _T_74 ? 1'h0 : _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@2167.4]
  assign _T_77 = _T_71 ? 1'h1 : _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@2168.4]
  assign _T_80 = io_csb2client_req_ready ? 1'h0 : io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@2169.4]
  assign _T_81 = _T_57 ? 1'h1 : _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@2170.4]
  assign _T_84 = _T_57 & _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@2173.4]
  assign _T_86 = _T_62[49:16]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@2179.4]
  assign _T_88 = _T_62[15:0]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@2180.4]
  assign _T_89 = {6'h0,_T_88}; // @[Cat.scala 30:58:@2181.4]
  assign _T_90 = {7'h0,_T_86}; // @[Cat.scala 30:58:@2182.4]
  assign io_csb2client_req_valid = _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 74:29:@2189.4]
  assign io_csb2client_req_bits = {_T_90,_T_89}; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:28:@2184.4]
  assign io_client_resp_pd_valid = _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 75:29:@2190.4]
  assign io_client_resp_pd_bits = {{16'd0}, _T_67}; // @[NV_NVDLA_CSB_MASTER_helper.scala 76:28:@2191.4]
  assign io_select_client = _GEN_2 == 32'ha000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:22:@2163.4]
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
  _T_57 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_60 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_62 = _RAND_2[49:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_65 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_67 = _RAND_4[33:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_57 <= 1'h0;
    end else begin
      if (_T_71) begin
        _T_57 <= 1'h1;
      end else begin
        if (_T_74) begin
          _T_57 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_60 <= 1'h0;
    end else begin
      if (_T_57) begin
        _T_60 <= 1'h1;
      end else begin
        if (io_csb2client_req_ready) begin
          _T_60 <= 1'h0;
        end else begin
          _T_60 <= io_csb2client_req_valid;
        end
      end
    end
    if (_T_84) begin
      _T_62 <= io_core_req_pd_d1;
    end
    if (reset) begin
      _T_65 <= 1'h0;
    end else begin
      _T_65 <= io_csb2client_resp_valid;
    end
    if (io_csb2client_resp_valid) begin
      _T_67 <= io_csb2client_resp_bits;
    end
  end
endmodule
module NV_NVDLA_CSB_MASTER_for_client_12( // @[:@2193.2]
  input         reset, // @[:@2195.4]
  input         io_nvdla_core_clk, // @[:@2196.4]
  input         io_core_req_pop_valid, // @[:@2196.4]
  input  [17:0] io_core_byte_addr, // @[:@2196.4]
  input  [49:0] io_core_req_pd_d1, // @[:@2196.4]
  input         io_csb2client_req_ready, // @[:@2196.4]
  output        io_csb2client_req_valid, // @[:@2196.4]
  output [62:0] io_csb2client_req_bits, // @[:@2196.4]
  input         io_csb2client_resp_valid, // @[:@2196.4]
  input  [33:0] io_csb2client_resp_bits, // @[:@2196.4]
  output        io_client_resp_pd_valid, // @[:@2196.4]
  output [49:0] io_client_resp_pd_bits, // @[:@2196.4]
  output        io_select_client // @[:@2196.4]
);
  reg  _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 48:34:@2198.4]
  reg [31:0] _RAND_0;
  reg  _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 49:42:@2199.4]
  reg [31:0] _RAND_1;
  reg [49:0] _T_62; // @[NV_NVDLA_CSB_MASTER_helper.scala 50:36:@2200.4]
  reg [63:0] _RAND_2;
  reg  _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 51:40:@2201.4]
  reg [31:0] _RAND_3;
  reg [33:0] _T_67; // @[NV_NVDLA_CSB_MASTER_helper.scala 52:33:@2202.4]
  reg [63:0] _RAND_4;
  wire [17:0] _T_68; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@2203.4]
  wire [31:0] _GEN_2; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@2204.4]
  wire  _T_71; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@2206.4]
  wire  _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@2207.4]
  wire  _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@2208.4]
  wire  _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@2209.4]
  wire  _T_77; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@2210.4]
  wire  _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@2211.4]
  wire  _T_81; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@2212.4]
  wire  _T_84; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@2215.4]
  wire [33:0] _T_86; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@2221.4]
  wire [15:0] _T_88; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@2222.4]
  wire [21:0] _T_89; // @[Cat.scala 30:58:@2223.4]
  wire [40:0] _T_90; // @[Cat.scala 30:58:@2224.4]
  assign _T_68 = io_core_byte_addr & 18'h3f000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@2203.4]
  assign _GEN_2 = {{14'd0}, _T_68}; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@2204.4]
  assign _T_71 = io_core_req_pop_valid & io_select_client; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@2206.4]
  assign _T_73 = ~ io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@2207.4]
  assign _T_74 = io_csb2client_req_ready | _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@2208.4]
  assign _T_76 = _T_74 ? 1'h0 : _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@2209.4]
  assign _T_77 = _T_71 ? 1'h1 : _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@2210.4]
  assign _T_80 = io_csb2client_req_ready ? 1'h0 : io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@2211.4]
  assign _T_81 = _T_57 ? 1'h1 : _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@2212.4]
  assign _T_84 = _T_57 & _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@2215.4]
  assign _T_86 = _T_62[49:16]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@2221.4]
  assign _T_88 = _T_62[15:0]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@2222.4]
  assign _T_89 = {6'h0,_T_88}; // @[Cat.scala 30:58:@2223.4]
  assign _T_90 = {7'h0,_T_86}; // @[Cat.scala 30:58:@2224.4]
  assign io_csb2client_req_valid = _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 74:29:@2231.4]
  assign io_csb2client_req_bits = {_T_90,_T_89}; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:28:@2226.4]
  assign io_client_resp_pd_valid = _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 75:29:@2232.4]
  assign io_client_resp_pd_bits = {{16'd0}, _T_67}; // @[NV_NVDLA_CSB_MASTER_helper.scala 76:28:@2233.4]
  assign io_select_client = _GEN_2 == 32'hb000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:22:@2205.4]
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
  _T_57 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_60 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_62 = _RAND_2[49:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_65 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_67 = _RAND_4[33:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_57 <= 1'h0;
    end else begin
      if (_T_71) begin
        _T_57 <= 1'h1;
      end else begin
        if (_T_74) begin
          _T_57 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_60 <= 1'h0;
    end else begin
      if (_T_57) begin
        _T_60 <= 1'h1;
      end else begin
        if (io_csb2client_req_ready) begin
          _T_60 <= 1'h0;
        end else begin
          _T_60 <= io_csb2client_req_valid;
        end
      end
    end
    if (_T_84) begin
      _T_62 <= io_core_req_pd_d1;
    end
    if (reset) begin
      _T_65 <= 1'h0;
    end else begin
      _T_65 <= io_csb2client_resp_valid;
    end
    if (io_csb2client_resp_valid) begin
      _T_67 <= io_csb2client_resp_bits;
    end
  end
endmodule
module NV_NVDLA_CSB_MASTER_for_client_13( // @[:@2235.2]
  input         reset, // @[:@2237.4]
  input         io_nvdla_core_clk, // @[:@2238.4]
  input         io_core_req_pop_valid, // @[:@2238.4]
  input  [17:0] io_core_byte_addr, // @[:@2238.4]
  input  [49:0] io_core_req_pd_d1, // @[:@2238.4]
  input         io_csb2client_req_ready, // @[:@2238.4]
  output        io_csb2client_req_valid, // @[:@2238.4]
  output [62:0] io_csb2client_req_bits, // @[:@2238.4]
  input         io_csb2client_resp_valid, // @[:@2238.4]
  input  [33:0] io_csb2client_resp_bits, // @[:@2238.4]
  output        io_client_resp_pd_valid, // @[:@2238.4]
  output [49:0] io_client_resp_pd_bits, // @[:@2238.4]
  output        io_select_client // @[:@2238.4]
);
  reg  _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 48:34:@2240.4]
  reg [31:0] _RAND_0;
  reg  _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 49:42:@2241.4]
  reg [31:0] _RAND_1;
  reg [49:0] _T_62; // @[NV_NVDLA_CSB_MASTER_helper.scala 50:36:@2242.4]
  reg [63:0] _RAND_2;
  reg  _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 51:40:@2243.4]
  reg [31:0] _RAND_3;
  reg [33:0] _T_67; // @[NV_NVDLA_CSB_MASTER_helper.scala 52:33:@2244.4]
  reg [63:0] _RAND_4;
  wire [17:0] _T_68; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@2245.4]
  wire [31:0] _GEN_2; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@2246.4]
  wire  _T_71; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@2248.4]
  wire  _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@2249.4]
  wire  _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@2250.4]
  wire  _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@2251.4]
  wire  _T_77; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@2252.4]
  wire  _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@2253.4]
  wire  _T_81; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@2254.4]
  wire  _T_84; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@2257.4]
  wire [33:0] _T_86; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@2263.4]
  wire [15:0] _T_88; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@2264.4]
  wire [21:0] _T_89; // @[Cat.scala 30:58:@2265.4]
  wire [40:0] _T_90; // @[Cat.scala 30:58:@2266.4]
  assign _T_68 = io_core_byte_addr & 18'h3f000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@2245.4]
  assign _GEN_2 = {{14'd0}, _T_68}; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@2246.4]
  assign _T_71 = io_core_req_pop_valid & io_select_client; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@2248.4]
  assign _T_73 = ~ io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@2249.4]
  assign _T_74 = io_csb2client_req_ready | _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@2250.4]
  assign _T_76 = _T_74 ? 1'h0 : _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@2251.4]
  assign _T_77 = _T_71 ? 1'h1 : _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@2252.4]
  assign _T_80 = io_csb2client_req_ready ? 1'h0 : io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@2253.4]
  assign _T_81 = _T_57 ? 1'h1 : _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@2254.4]
  assign _T_84 = _T_57 & _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@2257.4]
  assign _T_86 = _T_62[49:16]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@2263.4]
  assign _T_88 = _T_62[15:0]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@2264.4]
  assign _T_89 = {6'h0,_T_88}; // @[Cat.scala 30:58:@2265.4]
  assign _T_90 = {7'h0,_T_86}; // @[Cat.scala 30:58:@2266.4]
  assign io_csb2client_req_valid = _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 74:29:@2273.4]
  assign io_csb2client_req_bits = {_T_90,_T_89}; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:28:@2268.4]
  assign io_client_resp_pd_valid = _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 75:29:@2274.4]
  assign io_client_resp_pd_bits = {{16'd0}, _T_67}; // @[NV_NVDLA_CSB_MASTER_helper.scala 76:28:@2275.4]
  assign io_select_client = _GEN_2 == 32'hc000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:22:@2247.4]
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
  _T_57 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_60 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_62 = _RAND_2[49:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_65 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_67 = _RAND_4[33:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_57 <= 1'h0;
    end else begin
      if (_T_71) begin
        _T_57 <= 1'h1;
      end else begin
        if (_T_74) begin
          _T_57 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_60 <= 1'h0;
    end else begin
      if (_T_57) begin
        _T_60 <= 1'h1;
      end else begin
        if (io_csb2client_req_ready) begin
          _T_60 <= 1'h0;
        end else begin
          _T_60 <= io_csb2client_req_valid;
        end
      end
    end
    if (_T_84) begin
      _T_62 <= io_core_req_pd_d1;
    end
    if (reset) begin
      _T_65 <= 1'h0;
    end else begin
      _T_65 <= io_csb2client_resp_valid;
    end
    if (io_csb2client_resp_valid) begin
      _T_67 <= io_csb2client_resp_bits;
    end
  end
endmodule
module NV_NVDLA_CSB_MASTER_for_client_14( // @[:@2277.2]
  input         reset, // @[:@2279.4]
  input         io_nvdla_core_clk, // @[:@2280.4]
  input         io_core_req_pop_valid, // @[:@2280.4]
  input  [17:0] io_core_byte_addr, // @[:@2280.4]
  input  [49:0] io_core_req_pd_d1, // @[:@2280.4]
  input         io_csb2client_req_ready, // @[:@2280.4]
  output        io_csb2client_req_valid, // @[:@2280.4]
  output [62:0] io_csb2client_req_bits, // @[:@2280.4]
  input         io_csb2client_resp_valid, // @[:@2280.4]
  input  [33:0] io_csb2client_resp_bits, // @[:@2280.4]
  output        io_client_resp_pd_valid, // @[:@2280.4]
  output [49:0] io_client_resp_pd_bits, // @[:@2280.4]
  output        io_select_client // @[:@2280.4]
);
  reg  _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 48:34:@2282.4]
  reg [31:0] _RAND_0;
  reg  _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 49:42:@2283.4]
  reg [31:0] _RAND_1;
  reg [49:0] _T_62; // @[NV_NVDLA_CSB_MASTER_helper.scala 50:36:@2284.4]
  reg [63:0] _RAND_2;
  reg  _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 51:40:@2285.4]
  reg [31:0] _RAND_3;
  reg [33:0] _T_67; // @[NV_NVDLA_CSB_MASTER_helper.scala 52:33:@2286.4]
  reg [63:0] _RAND_4;
  wire [17:0] _T_68; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@2287.4]
  wire [31:0] _GEN_2; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@2288.4]
  wire  _T_71; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@2290.4]
  wire  _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@2291.4]
  wire  _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@2292.4]
  wire  _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@2293.4]
  wire  _T_77; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@2294.4]
  wire  _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@2295.4]
  wire  _T_81; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@2296.4]
  wire  _T_84; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@2299.4]
  wire [33:0] _T_86; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@2305.4]
  wire [15:0] _T_88; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@2306.4]
  wire [21:0] _T_89; // @[Cat.scala 30:58:@2307.4]
  wire [40:0] _T_90; // @[Cat.scala 30:58:@2308.4]
  assign _T_68 = io_core_byte_addr & 18'h3f000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:45:@2287.4]
  assign _GEN_2 = {{14'd0}, _T_68}; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:61:@2288.4]
  assign _T_71 = io_core_req_pop_valid & io_select_client; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:55:@2290.4]
  assign _T_73 = ~ io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:60:@2291.4]
  assign _T_74 = io_csb2client_req_ready | _T_73; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:58:@2292.4]
  assign _T_76 = _T_74 ? 1'h0 : _T_57; // @[NV_NVDLA_CSB_MASTER_helper.scala 56:32:@2293.4]
  assign _T_77 = _T_71 ? 1'h1 : _T_76; // @[NV_NVDLA_CSB_MASTER_helper.scala 55:32:@2294.4]
  assign _T_80 = io_csb2client_req_ready ? 1'h0 : io_csb2client_req_valid; // @[NV_NVDLA_CSB_MASTER_helper.scala 59:36:@2295.4]
  assign _T_81 = _T_57 ? 1'h1 : _T_80; // @[NV_NVDLA_CSB_MASTER_helper.scala 58:36:@2296.4]
  assign _T_84 = _T_57 & _T_74; // @[NV_NVDLA_CSB_MASTER_helper.scala 61:45:@2299.4]
  assign _T_86 = _T_62[49:16]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:74:@2305.4]
  assign _T_88 = _T_62[15:0]; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:123:@2306.4]
  assign _T_89 = {6'h0,_T_88}; // @[Cat.scala 30:58:@2307.4]
  assign _T_90 = {7'h0,_T_86}; // @[Cat.scala 30:58:@2308.4]
  assign io_csb2client_req_valid = _T_60; // @[NV_NVDLA_CSB_MASTER_helper.scala 74:29:@2315.4]
  assign io_csb2client_req_bits = {_T_90,_T_89}; // @[NV_NVDLA_CSB_MASTER_helper.scala 68:28:@2310.4]
  assign io_client_resp_pd_valid = _T_65; // @[NV_NVDLA_CSB_MASTER_helper.scala 75:29:@2316.4]
  assign io_client_resp_pd_bits = {{16'd0}, _T_67}; // @[NV_NVDLA_CSB_MASTER_helper.scala 76:28:@2317.4]
  assign io_select_client = _GEN_2 == 32'hd000; // @[NV_NVDLA_CSB_MASTER_helper.scala 54:22:@2289.4]
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
  _T_57 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_60 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_62 = _RAND_2[49:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_65 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_67 = _RAND_4[33:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_57 <= 1'h0;
    end else begin
      if (_T_71) begin
        _T_57 <= 1'h1;
      end else begin
        if (_T_74) begin
          _T_57 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_60 <= 1'h0;
    end else begin
      if (_T_57) begin
        _T_60 <= 1'h1;
      end else begin
        if (io_csb2client_req_ready) begin
          _T_60 <= 1'h0;
        end else begin
          _T_60 <= io_csb2client_req_valid;
        end
      end
    end
    if (_T_84) begin
      _T_62 <= io_core_req_pd_d1;
    end
    if (reset) begin
      _T_65 <= 1'h0;
    end else begin
      _T_65 <= io_csb2client_resp_valid;
    end
    if (io_csb2client_resp_valid) begin
      _T_67 <= io_csb2client_resp_bits;
    end
  end
endmodule
module NV_soDLA_csb_master( // @[:@2319.2]
  input         clock, // @[:@2320.4]
  input         reset, // @[:@2321.4]
  input         io_nvdla_core_clk, // @[:@2322.4]
  input         io_nvdla_falcon_clk, // @[:@2322.4]
  input         io_nvdla_core_rstn, // @[:@2322.4]
  input         io_nvdla_falcon_rstn, // @[:@2322.4]
  input  [31:0] io_pwrbus_ram_pd, // @[:@2322.4]
  output        io_csb2nvdla_ready, // @[:@2322.4]
  input         io_csb2nvdla_valid, // @[:@2322.4]
  input  [15:0] io_csb2nvdla_bits_addr, // @[:@2322.4]
  input  [31:0] io_csb2nvdla_bits_wdat, // @[:@2322.4]
  input         io_csb2nvdla_bits_write, // @[:@2322.4]
  input         io_csb2nvdla_bits_nposted, // @[:@2322.4]
  output        io_nvdla2csb_valid, // @[:@2322.4]
  output [31:0] io_nvdla2csb_bits_data, // @[:@2322.4]
  output        io_nvdla2csb_wr_complete, // @[:@2322.4]
  input         io_csb2cfgrom_req_ready, // @[:@2322.4]
  output        io_csb2cfgrom_req_valid, // @[:@2322.4]
  output [62:0] io_csb2cfgrom_req_bits, // @[:@2322.4]
  input         io_csb2cfgrom_resp_valid, // @[:@2322.4]
  input  [33:0] io_csb2cfgrom_resp_bits, // @[:@2322.4]
  input         io_csb2glb_req_ready, // @[:@2322.4]
  output        io_csb2glb_req_valid, // @[:@2322.4]
  output [62:0] io_csb2glb_req_bits, // @[:@2322.4]
  input         io_csb2glb_resp_valid, // @[:@2322.4]
  input  [33:0] io_csb2glb_resp_bits, // @[:@2322.4]
  input         io_csb2mcif_req_ready, // @[:@2322.4]
  output        io_csb2mcif_req_valid, // @[:@2322.4]
  output [62:0] io_csb2mcif_req_bits, // @[:@2322.4]
  input         io_csb2mcif_resp_valid, // @[:@2322.4]
  input  [33:0] io_csb2mcif_resp_bits, // @[:@2322.4]
  input         io_csb2cvif_req_ready, // @[:@2322.4]
  output        io_csb2cvif_req_valid, // @[:@2322.4]
  output [62:0] io_csb2cvif_req_bits, // @[:@2322.4]
  input         io_csb2cvif_resp_valid, // @[:@2322.4]
  input  [33:0] io_csb2cvif_resp_bits, // @[:@2322.4]
  input         io_csb2cdma_req_ready, // @[:@2322.4]
  output        io_csb2cdma_req_valid, // @[:@2322.4]
  output [62:0] io_csb2cdma_req_bits, // @[:@2322.4]
  input         io_csb2cdma_resp_valid, // @[:@2322.4]
  input  [33:0] io_csb2cdma_resp_bits, // @[:@2322.4]
  input         io_csb2csc_req_ready, // @[:@2322.4]
  output        io_csb2csc_req_valid, // @[:@2322.4]
  output [62:0] io_csb2csc_req_bits, // @[:@2322.4]
  input         io_csb2csc_resp_valid, // @[:@2322.4]
  input  [33:0] io_csb2csc_resp_bits, // @[:@2322.4]
  input         io_csb2cmac_a_req_ready, // @[:@2322.4]
  output        io_csb2cmac_a_req_valid, // @[:@2322.4]
  output [62:0] io_csb2cmac_a_req_bits, // @[:@2322.4]
  input         io_csb2cmac_a_resp_valid, // @[:@2322.4]
  input  [33:0] io_csb2cmac_a_resp_bits, // @[:@2322.4]
  input         io_csb2cmac_b_req_ready, // @[:@2322.4]
  output        io_csb2cmac_b_req_valid, // @[:@2322.4]
  output [62:0] io_csb2cmac_b_req_bits, // @[:@2322.4]
  input         io_csb2cmac_b_resp_valid, // @[:@2322.4]
  input  [33:0] io_csb2cmac_b_resp_bits, // @[:@2322.4]
  input         io_csb2cacc_req_ready, // @[:@2322.4]
  output        io_csb2cacc_req_valid, // @[:@2322.4]
  output [62:0] io_csb2cacc_req_bits, // @[:@2322.4]
  input         io_csb2cacc_resp_valid, // @[:@2322.4]
  input  [33:0] io_csb2cacc_resp_bits, // @[:@2322.4]
  input         io_csb2sdp_rdma_req_ready, // @[:@2322.4]
  output        io_csb2sdp_rdma_req_valid, // @[:@2322.4]
  output [62:0] io_csb2sdp_rdma_req_bits, // @[:@2322.4]
  input         io_csb2sdp_rdma_resp_valid, // @[:@2322.4]
  input  [33:0] io_csb2sdp_rdma_resp_bits, // @[:@2322.4]
  input         io_csb2sdp_req_ready, // @[:@2322.4]
  output        io_csb2sdp_req_valid, // @[:@2322.4]
  output [62:0] io_csb2sdp_req_bits, // @[:@2322.4]
  input         io_csb2sdp_resp_valid, // @[:@2322.4]
  input  [33:0] io_csb2sdp_resp_bits, // @[:@2322.4]
  input         io_csb2pdp_rdma_req_ready, // @[:@2322.4]
  output        io_csb2pdp_rdma_req_valid, // @[:@2322.4]
  output [62:0] io_csb2pdp_rdma_req_bits, // @[:@2322.4]
  input         io_csb2pdp_rdma_resp_valid, // @[:@2322.4]
  input  [33:0] io_csb2pdp_rdma_resp_bits, // @[:@2322.4]
  input         io_csb2pdp_req_ready, // @[:@2322.4]
  output        io_csb2pdp_req_valid, // @[:@2322.4]
  output [62:0] io_csb2pdp_req_bits, // @[:@2322.4]
  input         io_csb2pdp_resp_valid, // @[:@2322.4]
  input  [33:0] io_csb2pdp_resp_bits, // @[:@2322.4]
  input         io_csb2cdp_rdma_req_ready, // @[:@2322.4]
  output        io_csb2cdp_rdma_req_valid, // @[:@2322.4]
  output [62:0] io_csb2cdp_rdma_req_bits, // @[:@2322.4]
  input         io_csb2cdp_rdma_resp_valid, // @[:@2322.4]
  input  [33:0] io_csb2cdp_rdma_resp_bits, // @[:@2322.4]
  input         io_csb2cdp_req_ready, // @[:@2322.4]
  output        io_csb2cdp_req_valid, // @[:@2322.4]
  output [62:0] io_csb2cdp_req_bits, // @[:@2322.4]
  input         io_csb2cdp_resp_valid, // @[:@2322.4]
  input  [33:0] io_csb2cdp_resp_bits // @[:@2322.4]
);
  wire  NV_NVDLA_CSB_MASTER_falcon2csb_fifo_reset; // @[NV_NVDLA_csb_master.scala 98:30:@2328.4]
  wire  NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_wr_clk; // @[NV_NVDLA_csb_master.scala 98:30:@2328.4]
  wire  NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_clk; // @[NV_NVDLA_csb_master.scala 98:30:@2328.4]
  wire  NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_wr_reset_; // @[NV_NVDLA_csb_master.scala 98:30:@2328.4]
  wire  NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_reset_; // @[NV_NVDLA_csb_master.scala 98:30:@2328.4]
  wire  NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_wr_ready; // @[NV_NVDLA_csb_master.scala 98:30:@2328.4]
  wire  NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_wr_req; // @[NV_NVDLA_csb_master.scala 98:30:@2328.4]
  wire  NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_req; // @[NV_NVDLA_csb_master.scala 98:30:@2328.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_wr_data; // @[NV_NVDLA_csb_master.scala 98:30:@2328.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_data; // @[NV_NVDLA_csb_master.scala 98:30:@2328.4]
  wire  NV_NVDLA_CSB_MASTER_csb2falcon_fifo_reset; // @[NV_NVDLA_csb_master.scala 117:30:@2342.4]
  wire  NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_wr_clk; // @[NV_NVDLA_csb_master.scala 117:30:@2342.4]
  wire  NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_wr_reset_; // @[NV_NVDLA_csb_master.scala 117:30:@2342.4]
  wire  NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_rd_clk; // @[NV_NVDLA_csb_master.scala 117:30:@2342.4]
  wire  NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_rd_reset_; // @[NV_NVDLA_csb_master.scala 117:30:@2342.4]
  wire  NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_wr_req; // @[NV_NVDLA_csb_master.scala 117:30:@2342.4]
  wire  NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_rd_req; // @[NV_NVDLA_csb_master.scala 117:30:@2342.4]
  wire [33:0] NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_wr_data; // @[NV_NVDLA_csb_master.scala 117:30:@2342.4]
  wire [33:0] NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_rd_data; // @[NV_NVDLA_csb_master.scala 117:30:@2342.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_reset; // @[NV_NVDLA_csb_master.scala 155:29:@2383.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 155:29:@2383.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_io_core_req_pop_valid; // @[NV_NVDLA_csb_master.scala 155:29:@2383.4]
  wire [17:0] NV_NVDLA_CSB_MASTER_for_client_io_core_byte_addr; // @[NV_NVDLA_csb_master.scala 155:29:@2383.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_io_core_req_pd_d1; // @[NV_NVDLA_csb_master.scala 155:29:@2383.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_io_csb2client_req_ready; // @[NV_NVDLA_csb_master.scala 155:29:@2383.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 155:29:@2383.4]
  wire [62:0] NV_NVDLA_CSB_MASTER_for_client_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 155:29:@2383.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_io_csb2client_resp_valid; // @[NV_NVDLA_csb_master.scala 155:29:@2383.4]
  wire [33:0] NV_NVDLA_CSB_MASTER_for_client_io_csb2client_resp_bits; // @[NV_NVDLA_csb_master.scala 155:29:@2383.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 155:29:@2383.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 155:29:@2383.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_io_select_client; // @[NV_NVDLA_csb_master.scala 155:29:@2383.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_1_reset; // @[NV_NVDLA_csb_master.scala 166:26:@2396.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_1_io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 166:26:@2396.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_1_io_core_req_pop_valid; // @[NV_NVDLA_csb_master.scala 166:26:@2396.4]
  wire [17:0] NV_NVDLA_CSB_MASTER_for_client_1_io_core_byte_addr; // @[NV_NVDLA_csb_master.scala 166:26:@2396.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_1_io_core_req_pd_d1; // @[NV_NVDLA_csb_master.scala 166:26:@2396.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_1_io_csb2client_req_ready; // @[NV_NVDLA_csb_master.scala 166:26:@2396.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_1_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 166:26:@2396.4]
  wire [62:0] NV_NVDLA_CSB_MASTER_for_client_1_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 166:26:@2396.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_1_io_csb2client_resp_valid; // @[NV_NVDLA_csb_master.scala 166:26:@2396.4]
  wire [33:0] NV_NVDLA_CSB_MASTER_for_client_1_io_csb2client_resp_bits; // @[NV_NVDLA_csb_master.scala 166:26:@2396.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_1_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 166:26:@2396.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_1_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 166:26:@2396.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_1_io_select_client; // @[NV_NVDLA_csb_master.scala 166:26:@2396.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_2_reset; // @[NV_NVDLA_csb_master.scala 177:27:@2409.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_2_io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 177:27:@2409.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_2_io_core_req_pop_valid; // @[NV_NVDLA_csb_master.scala 177:27:@2409.4]
  wire [17:0] NV_NVDLA_CSB_MASTER_for_client_2_io_core_byte_addr; // @[NV_NVDLA_csb_master.scala 177:27:@2409.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_2_io_core_req_pd_d1; // @[NV_NVDLA_csb_master.scala 177:27:@2409.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_2_io_csb2client_req_ready; // @[NV_NVDLA_csb_master.scala 177:27:@2409.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_2_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 177:27:@2409.4]
  wire [62:0] NV_NVDLA_CSB_MASTER_for_client_2_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 177:27:@2409.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_2_io_csb2client_resp_valid; // @[NV_NVDLA_csb_master.scala 177:27:@2409.4]
  wire [33:0] NV_NVDLA_CSB_MASTER_for_client_2_io_csb2client_resp_bits; // @[NV_NVDLA_csb_master.scala 177:27:@2409.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_2_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 177:27:@2409.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_2_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 177:27:@2409.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_2_io_select_client; // @[NV_NVDLA_csb_master.scala 177:27:@2409.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_3_reset; // @[NV_NVDLA_csb_master.scala 188:70:@2422.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_3_io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 188:70:@2422.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_3_io_core_req_pop_valid; // @[NV_NVDLA_csb_master.scala 188:70:@2422.4]
  wire [17:0] NV_NVDLA_CSB_MASTER_for_client_3_io_core_byte_addr; // @[NV_NVDLA_csb_master.scala 188:70:@2422.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_3_io_core_req_pd_d1; // @[NV_NVDLA_csb_master.scala 188:70:@2422.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_3_io_csb2client_req_ready; // @[NV_NVDLA_csb_master.scala 188:70:@2422.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_3_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 188:70:@2422.4]
  wire [62:0] NV_NVDLA_CSB_MASTER_for_client_3_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 188:70:@2422.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_3_io_csb2client_resp_valid; // @[NV_NVDLA_csb_master.scala 188:70:@2422.4]
  wire [33:0] NV_NVDLA_CSB_MASTER_for_client_3_io_csb2client_resp_bits; // @[NV_NVDLA_csb_master.scala 188:70:@2422.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_3_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 188:70:@2422.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_3_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 188:70:@2422.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_3_io_select_client; // @[NV_NVDLA_csb_master.scala 188:70:@2422.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_4_reset; // @[NV_NVDLA_csb_master.scala 216:27:@2435.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_4_io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 216:27:@2435.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_4_io_core_req_pop_valid; // @[NV_NVDLA_csb_master.scala 216:27:@2435.4]
  wire [17:0] NV_NVDLA_CSB_MASTER_for_client_4_io_core_byte_addr; // @[NV_NVDLA_csb_master.scala 216:27:@2435.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_4_io_core_req_pd_d1; // @[NV_NVDLA_csb_master.scala 216:27:@2435.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_4_io_csb2client_req_ready; // @[NV_NVDLA_csb_master.scala 216:27:@2435.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_4_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 216:27:@2435.4]
  wire [62:0] NV_NVDLA_CSB_MASTER_for_client_4_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 216:27:@2435.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_4_io_csb2client_resp_valid; // @[NV_NVDLA_csb_master.scala 216:27:@2435.4]
  wire [33:0] NV_NVDLA_CSB_MASTER_for_client_4_io_csb2client_resp_bits; // @[NV_NVDLA_csb_master.scala 216:27:@2435.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_4_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 216:27:@2435.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_4_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 216:27:@2435.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_4_io_select_client; // @[NV_NVDLA_csb_master.scala 216:27:@2435.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_5_reset; // @[NV_NVDLA_csb_master.scala 227:26:@2448.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_5_io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 227:26:@2448.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_5_io_core_req_pop_valid; // @[NV_NVDLA_csb_master.scala 227:26:@2448.4]
  wire [17:0] NV_NVDLA_CSB_MASTER_for_client_5_io_core_byte_addr; // @[NV_NVDLA_csb_master.scala 227:26:@2448.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_5_io_core_req_pd_d1; // @[NV_NVDLA_csb_master.scala 227:26:@2448.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_5_io_csb2client_req_ready; // @[NV_NVDLA_csb_master.scala 227:26:@2448.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_5_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 227:26:@2448.4]
  wire [62:0] NV_NVDLA_CSB_MASTER_for_client_5_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 227:26:@2448.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_5_io_csb2client_resp_valid; // @[NV_NVDLA_csb_master.scala 227:26:@2448.4]
  wire [33:0] NV_NVDLA_CSB_MASTER_for_client_5_io_csb2client_resp_bits; // @[NV_NVDLA_csb_master.scala 227:26:@2448.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_5_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 227:26:@2448.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_5_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 227:26:@2448.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_5_io_select_client; // @[NV_NVDLA_csb_master.scala 227:26:@2448.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_6_reset; // @[NV_NVDLA_csb_master.scala 238:29:@2461.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_6_io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 238:29:@2461.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_6_io_core_req_pop_valid; // @[NV_NVDLA_csb_master.scala 238:29:@2461.4]
  wire [17:0] NV_NVDLA_CSB_MASTER_for_client_6_io_core_byte_addr; // @[NV_NVDLA_csb_master.scala 238:29:@2461.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_6_io_core_req_pd_d1; // @[NV_NVDLA_csb_master.scala 238:29:@2461.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_6_io_csb2client_req_ready; // @[NV_NVDLA_csb_master.scala 238:29:@2461.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_6_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 238:29:@2461.4]
  wire [62:0] NV_NVDLA_CSB_MASTER_for_client_6_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 238:29:@2461.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_6_io_csb2client_resp_valid; // @[NV_NVDLA_csb_master.scala 238:29:@2461.4]
  wire [33:0] NV_NVDLA_CSB_MASTER_for_client_6_io_csb2client_resp_bits; // @[NV_NVDLA_csb_master.scala 238:29:@2461.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_6_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 238:29:@2461.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_6_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 238:29:@2461.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_6_io_select_client; // @[NV_NVDLA_csb_master.scala 238:29:@2461.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_7_reset; // @[NV_NVDLA_csb_master.scala 249:29:@2474.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_7_io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 249:29:@2474.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_7_io_core_req_pop_valid; // @[NV_NVDLA_csb_master.scala 249:29:@2474.4]
  wire [17:0] NV_NVDLA_CSB_MASTER_for_client_7_io_core_byte_addr; // @[NV_NVDLA_csb_master.scala 249:29:@2474.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_7_io_core_req_pd_d1; // @[NV_NVDLA_csb_master.scala 249:29:@2474.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_7_io_csb2client_req_ready; // @[NV_NVDLA_csb_master.scala 249:29:@2474.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_7_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 249:29:@2474.4]
  wire [62:0] NV_NVDLA_CSB_MASTER_for_client_7_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 249:29:@2474.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_7_io_csb2client_resp_valid; // @[NV_NVDLA_csb_master.scala 249:29:@2474.4]
  wire [33:0] NV_NVDLA_CSB_MASTER_for_client_7_io_csb2client_resp_bits; // @[NV_NVDLA_csb_master.scala 249:29:@2474.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_7_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 249:29:@2474.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_7_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 249:29:@2474.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_7_io_select_client; // @[NV_NVDLA_csb_master.scala 249:29:@2474.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_8_reset; // @[NV_NVDLA_csb_master.scala 260:27:@2487.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_8_io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 260:27:@2487.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_8_io_core_req_pop_valid; // @[NV_NVDLA_csb_master.scala 260:27:@2487.4]
  wire [17:0] NV_NVDLA_CSB_MASTER_for_client_8_io_core_byte_addr; // @[NV_NVDLA_csb_master.scala 260:27:@2487.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_8_io_core_req_pd_d1; // @[NV_NVDLA_csb_master.scala 260:27:@2487.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_8_io_csb2client_req_ready; // @[NV_NVDLA_csb_master.scala 260:27:@2487.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_8_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 260:27:@2487.4]
  wire [62:0] NV_NVDLA_CSB_MASTER_for_client_8_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 260:27:@2487.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_8_io_csb2client_resp_valid; // @[NV_NVDLA_csb_master.scala 260:27:@2487.4]
  wire [33:0] NV_NVDLA_CSB_MASTER_for_client_8_io_csb2client_resp_bits; // @[NV_NVDLA_csb_master.scala 260:27:@2487.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_8_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 260:27:@2487.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_8_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 260:27:@2487.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_8_io_select_client; // @[NV_NVDLA_csb_master.scala 260:27:@2487.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_9_reset; // @[NV_NVDLA_csb_master.scala 271:31:@2500.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_9_io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 271:31:@2500.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_9_io_core_req_pop_valid; // @[NV_NVDLA_csb_master.scala 271:31:@2500.4]
  wire [17:0] NV_NVDLA_CSB_MASTER_for_client_9_io_core_byte_addr; // @[NV_NVDLA_csb_master.scala 271:31:@2500.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_9_io_core_req_pd_d1; // @[NV_NVDLA_csb_master.scala 271:31:@2500.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_9_io_csb2client_req_ready; // @[NV_NVDLA_csb_master.scala 271:31:@2500.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_9_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 271:31:@2500.4]
  wire [62:0] NV_NVDLA_CSB_MASTER_for_client_9_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 271:31:@2500.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_9_io_csb2client_resp_valid; // @[NV_NVDLA_csb_master.scala 271:31:@2500.4]
  wire [33:0] NV_NVDLA_CSB_MASTER_for_client_9_io_csb2client_resp_bits; // @[NV_NVDLA_csb_master.scala 271:31:@2500.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_9_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 271:31:@2500.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_9_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 271:31:@2500.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_9_io_select_client; // @[NV_NVDLA_csb_master.scala 271:31:@2500.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_10_reset; // @[NV_NVDLA_csb_master.scala 282:26:@2513.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_10_io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 282:26:@2513.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_10_io_core_req_pop_valid; // @[NV_NVDLA_csb_master.scala 282:26:@2513.4]
  wire [17:0] NV_NVDLA_CSB_MASTER_for_client_10_io_core_byte_addr; // @[NV_NVDLA_csb_master.scala 282:26:@2513.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_10_io_core_req_pd_d1; // @[NV_NVDLA_csb_master.scala 282:26:@2513.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_10_io_csb2client_req_ready; // @[NV_NVDLA_csb_master.scala 282:26:@2513.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_10_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 282:26:@2513.4]
  wire [62:0] NV_NVDLA_CSB_MASTER_for_client_10_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 282:26:@2513.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_10_io_csb2client_resp_valid; // @[NV_NVDLA_csb_master.scala 282:26:@2513.4]
  wire [33:0] NV_NVDLA_CSB_MASTER_for_client_10_io_csb2client_resp_bits; // @[NV_NVDLA_csb_master.scala 282:26:@2513.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_10_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 282:26:@2513.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_10_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 282:26:@2513.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_10_io_select_client; // @[NV_NVDLA_csb_master.scala 282:26:@2513.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_11_reset; // @[NV_NVDLA_csb_master.scala 293:62:@2526.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_11_io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 293:62:@2526.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_11_io_core_req_pop_valid; // @[NV_NVDLA_csb_master.scala 293:62:@2526.4]
  wire [17:0] NV_NVDLA_CSB_MASTER_for_client_11_io_core_byte_addr; // @[NV_NVDLA_csb_master.scala 293:62:@2526.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_11_io_core_req_pd_d1; // @[NV_NVDLA_csb_master.scala 293:62:@2526.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_11_io_csb2client_req_ready; // @[NV_NVDLA_csb_master.scala 293:62:@2526.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_11_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 293:62:@2526.4]
  wire [62:0] NV_NVDLA_CSB_MASTER_for_client_11_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 293:62:@2526.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_11_io_csb2client_resp_valid; // @[NV_NVDLA_csb_master.scala 293:62:@2526.4]
  wire [33:0] NV_NVDLA_CSB_MASTER_for_client_11_io_csb2client_resp_bits; // @[NV_NVDLA_csb_master.scala 293:62:@2526.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_11_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 293:62:@2526.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_11_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 293:62:@2526.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_11_io_select_client; // @[NV_NVDLA_csb_master.scala 293:62:@2526.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_12_reset; // @[NV_NVDLA_csb_master.scala 308:57:@2539.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_12_io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 308:57:@2539.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_12_io_core_req_pop_valid; // @[NV_NVDLA_csb_master.scala 308:57:@2539.4]
  wire [17:0] NV_NVDLA_CSB_MASTER_for_client_12_io_core_byte_addr; // @[NV_NVDLA_csb_master.scala 308:57:@2539.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_12_io_core_req_pd_d1; // @[NV_NVDLA_csb_master.scala 308:57:@2539.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_12_io_csb2client_req_ready; // @[NV_NVDLA_csb_master.scala 308:57:@2539.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_12_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 308:57:@2539.4]
  wire [62:0] NV_NVDLA_CSB_MASTER_for_client_12_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 308:57:@2539.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_12_io_csb2client_resp_valid; // @[NV_NVDLA_csb_master.scala 308:57:@2539.4]
  wire [33:0] NV_NVDLA_CSB_MASTER_for_client_12_io_csb2client_resp_bits; // @[NV_NVDLA_csb_master.scala 308:57:@2539.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_12_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 308:57:@2539.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_12_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 308:57:@2539.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_12_io_select_client; // @[NV_NVDLA_csb_master.scala 308:57:@2539.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_13_reset; // @[NV_NVDLA_csb_master.scala 323:62:@2552.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_13_io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 323:62:@2552.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_13_io_core_req_pop_valid; // @[NV_NVDLA_csb_master.scala 323:62:@2552.4]
  wire [17:0] NV_NVDLA_CSB_MASTER_for_client_13_io_core_byte_addr; // @[NV_NVDLA_csb_master.scala 323:62:@2552.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_13_io_core_req_pd_d1; // @[NV_NVDLA_csb_master.scala 323:62:@2552.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_13_io_csb2client_req_ready; // @[NV_NVDLA_csb_master.scala 323:62:@2552.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_13_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 323:62:@2552.4]
  wire [62:0] NV_NVDLA_CSB_MASTER_for_client_13_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 323:62:@2552.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_13_io_csb2client_resp_valid; // @[NV_NVDLA_csb_master.scala 323:62:@2552.4]
  wire [33:0] NV_NVDLA_CSB_MASTER_for_client_13_io_csb2client_resp_bits; // @[NV_NVDLA_csb_master.scala 323:62:@2552.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_13_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 323:62:@2552.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_13_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 323:62:@2552.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_13_io_select_client; // @[NV_NVDLA_csb_master.scala 323:62:@2552.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_14_reset; // @[NV_NVDLA_csb_master.scala 337:57:@2565.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_14_io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 337:57:@2565.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_14_io_core_req_pop_valid; // @[NV_NVDLA_csb_master.scala 337:57:@2565.4]
  wire [17:0] NV_NVDLA_CSB_MASTER_for_client_14_io_core_byte_addr; // @[NV_NVDLA_csb_master.scala 337:57:@2565.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_14_io_core_req_pd_d1; // @[NV_NVDLA_csb_master.scala 337:57:@2565.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_14_io_csb2client_req_ready; // @[NV_NVDLA_csb_master.scala 337:57:@2565.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_14_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 337:57:@2565.4]
  wire [62:0] NV_NVDLA_CSB_MASTER_for_client_14_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 337:57:@2565.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_14_io_csb2client_resp_valid; // @[NV_NVDLA_csb_master.scala 337:57:@2565.4]
  wire [33:0] NV_NVDLA_CSB_MASTER_for_client_14_io_csb2client_resp_bits; // @[NV_NVDLA_csb_master.scala 337:57:@2565.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_14_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 337:57:@2565.4]
  wire [49:0] NV_NVDLA_CSB_MASTER_for_client_14_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 337:57:@2565.4]
  wire  NV_NVDLA_CSB_MASTER_for_client_14_io_select_client; // @[NV_NVDLA_csb_master.scala 337:57:@2565.4]
  wire  _T_572; // @[NV_NVDLA_csb_master.scala 91:38:@2324.4]
  wire [47:0] _T_573; // @[Cat.scala 30:58:@2325.4]
  wire [1:0] _T_574; // @[Cat.scala 30:58:@2326.4]
  wire  _T_582; // @[NV_NVDLA_csb_master.scala 134:74:@2353.4]
  wire  _T_584; // @[NV_NVDLA_csb_master.scala 134:79:@2354.4]
  wire  _T_585; // @[NV_NVDLA_csb_master.scala 134:53:@2355.4]
  wire  _T_589; // @[NV_NVDLA_csb_master.scala 135:52:@2358.4]
  reg  _T_592; // @[NV_NVDLA_csb_master.scala 137:61:@2359.4]
  reg [31:0] _RAND_0;
  reg [31:0] _T_595; // @[Reg.scala 19:20:@2362.4]
  reg [31:0] _RAND_1;
  wire [33:0] _GEN_0; // @[Reg.scala 20:19:@2363.4]
  reg  _T_598; // @[NV_NVDLA_csb_master.scala 139:67:@2367.4]
  reg [31:0] _RAND_2;
  wire [15:0] _T_599; // @[NV_NVDLA_csb_master.scala 144:32:@2370.4]
  wire  _T_600; // @[NV_NVDLA_csb_master.scala 145:33:@2371.4]
  wire  _T_601; // @[NV_NVDLA_csb_master.scala 146:37:@2372.4]
  wire  _T_602; // @[NV_NVDLA_csb_master.scala 147:40:@2373.4]
  reg [49:0] _T_607; // @[Reg.scala 11:16:@2376.4]
  reg [63:0] _RAND_3;
  reg  _T_623; // @[NV_NVDLA_csb_master.scala 366:33:@2578.4]
  reg [31:0] _RAND_4;
  reg  _T_625; // @[NV_NVDLA_csb_master.scala 367:32:@2579.4]
  reg [31:0] _RAND_5;
  reg  _T_627; // @[NV_NVDLA_csb_master.scala 368:29:@2580.4]
  reg [31:0] _RAND_6;
  wire  _T_628; // @[NV_NVDLA_csb_master.scala 371:23:@2581.4]
  wire  _T_629; // @[NV_NVDLA_csb_master.scala 372:23:@2582.4]
  wire  _T_630; // @[NV_NVDLA_csb_master.scala 373:23:@2583.4]
  wire  _T_632; // @[NV_NVDLA_csb_master.scala 375:23:@2585.4]
  wire  _T_633; // @[NV_NVDLA_csb_master.scala 376:23:@2586.4]
  wire  _T_634; // @[NV_NVDLA_csb_master.scala 377:23:@2587.4]
  wire  _T_635; // @[NV_NVDLA_csb_master.scala 378:23:@2588.4]
  wire  _T_636; // @[NV_NVDLA_csb_master.scala 379:23:@2589.4]
  wire  _T_637; // @[NV_NVDLA_csb_master.scala 380:23:@2590.4]
  wire  _T_638; // @[NV_NVDLA_csb_master.scala 381:23:@2591.4]
  wire  _T_639; // @[NV_NVDLA_csb_master.scala 382:23:@2592.4]
  wire  _T_640; // @[NV_NVDLA_csb_master.scala 383:23:@2593.4]
  wire  _T_641; // @[NV_NVDLA_csb_master.scala 384:23:@2594.4]
  wire  _T_642; // @[NV_NVDLA_csb_master.scala 385:23:@2595.4]
  wire  _T_644; // @[NV_NVDLA_csb_master.scala 370:20:@2597.4]
  wire  _T_645; // @[NV_NVDLA_csb_master.scala 388:44:@2598.4]
  wire  _T_646; // @[NV_NVDLA_csb_master.scala 394:27:@2604.6]
  wire  _T_661; // @[NV_NVDLA_csb_master.scala 402:70:@2614.4]
  wire  _T_662; // @[NV_NVDLA_csb_master.scala 402:45:@2615.4]
  wire  _T_663; // @[NV_NVDLA_csb_master.scala 403:25:@2616.4]
  wire  _T_664; // @[NV_NVDLA_csb_master.scala 403:45:@2617.4]
  reg  _T_667; // @[Reg.scala 19:20:@2618.4]
  reg [31:0] _RAND_7;
  wire  _GEN_4; // @[Reg.scala 20:19:@2619.4]
  wire [64:0] _T_668; // @[NV_NVDLA_csb_master.scala 405:24:@2622.4]
  reg  _T_671; // @[NV_NVDLA_csb_master.scala 407:31:@2623.4]
  reg [31:0] _RAND_8;
  wire  _T_672; // @[Bitwise.scala 72:15:@2625.4]
  wire [33:0] _T_675; // @[Bitwise.scala 72:12:@2626.4]
  wire [49:0] _GEN_5; // @[NV_NVDLA_csb_master.scala 412:96:@2627.4]
  wire [49:0] _T_676; // @[NV_NVDLA_csb_master.scala 412:96:@2627.4]
  wire  _T_683; // @[Bitwise.scala 72:15:@2629.4]
  wire [33:0] _T_686; // @[Bitwise.scala 72:12:@2630.4]
  wire [49:0] _GEN_6; // @[NV_NVDLA_csb_master.scala 418:92:@2631.4]
  wire [49:0] _T_687; // @[NV_NVDLA_csb_master.scala 418:92:@2631.4]
  wire  _T_688; // @[Bitwise.scala 72:15:@2632.4]
  wire [33:0] _T_691; // @[Bitwise.scala 72:12:@2633.4]
  wire [49:0] _GEN_7; // @[NV_NVDLA_csb_master.scala 421:82:@2634.4]
  wire [49:0] _T_692; // @[NV_NVDLA_csb_master.scala 421:82:@2634.4]
  wire  _T_693; // @[Bitwise.scala 72:15:@2635.4]
  wire [33:0] _T_696; // @[Bitwise.scala 72:12:@2636.4]
  wire [49:0] _GEN_8; // @[NV_NVDLA_csb_master.scala 424:92:@2637.4]
  wire [49:0] _T_697; // @[NV_NVDLA_csb_master.scala 424:92:@2637.4]
  wire  _T_698; // @[Bitwise.scala 72:15:@2638.4]
  wire [33:0] _T_701; // @[Bitwise.scala 72:12:@2639.4]
  wire [49:0] _GEN_9; // @[NV_NVDLA_csb_master.scala 427:82:@2640.4]
  wire [49:0] _T_702; // @[NV_NVDLA_csb_master.scala 427:82:@2640.4]
  wire  _T_709; // @[Bitwise.scala 72:15:@2642.4]
  wire [33:0] _T_712; // @[Bitwise.scala 72:12:@2643.4]
  wire [49:0] _GEN_10; // @[NV_NVDLA_csb_master.scala 434:49:@2644.4]
  wire [49:0] _T_713; // @[NV_NVDLA_csb_master.scala 434:49:@2644.4]
  wire  _T_714; // @[Bitwise.scala 72:15:@2645.4]
  wire [33:0] _T_717; // @[Bitwise.scala 72:12:@2646.4]
  wire [49:0] _GEN_11; // @[NV_NVDLA_csb_master.scala 435:52:@2647.4]
  wire [49:0] _T_718; // @[NV_NVDLA_csb_master.scala 435:52:@2647.4]
  wire [49:0] _T_719; // @[NV_NVDLA_csb_master.scala 434:71:@2648.4]
  wire  _T_720; // @[Bitwise.scala 72:15:@2649.4]
  wire [33:0] _T_723; // @[Bitwise.scala 72:12:@2650.4]
  wire [49:0] _GEN_12; // @[NV_NVDLA_csb_master.scala 436:53:@2651.4]
  wire [49:0] _T_724; // @[NV_NVDLA_csb_master.scala 436:53:@2651.4]
  wire [49:0] _T_725; // @[NV_NVDLA_csb_master.scala 435:71:@2652.4]
  wire [49:0] _T_726; // @[NV_NVDLA_csb_master.scala 436:73:@2653.4]
  wire  _T_728; // @[Bitwise.scala 72:15:@2655.4]
  wire [33:0] _T_731; // @[Bitwise.scala 72:12:@2656.4]
  wire [49:0] _GEN_13; // @[NV_NVDLA_csb_master.scala 439:53:@2657.4]
  wire [49:0] _T_732; // @[NV_NVDLA_csb_master.scala 439:53:@2657.4]
  wire [49:0] _T_733; // @[NV_NVDLA_csb_master.scala 438:41:@2658.4]
  wire  _T_734; // @[Bitwise.scala 72:15:@2659.4]
  wire [33:0] _T_737; // @[Bitwise.scala 72:12:@2660.4]
  wire [49:0] _GEN_14; // @[NV_NVDLA_csb_master.scala 440:52:@2661.4]
  wire [49:0] _T_738; // @[NV_NVDLA_csb_master.scala 440:52:@2661.4]
  wire [49:0] _T_739; // @[NV_NVDLA_csb_master.scala 439:73:@2662.4]
  wire  _T_740; // @[Bitwise.scala 72:15:@2663.4]
  wire [33:0] _T_743; // @[Bitwise.scala 72:12:@2664.4]
  wire [49:0] _GEN_15; // @[NV_NVDLA_csb_master.scala 441:55:@2665.4]
  wire [49:0] _T_744; // @[NV_NVDLA_csb_master.scala 441:55:@2665.4]
  wire [49:0] _T_745; // @[NV_NVDLA_csb_master.scala 440:71:@2666.4]
  wire  _T_746; // @[Bitwise.scala 72:15:@2667.4]
  wire [33:0] _T_749; // @[Bitwise.scala 72:12:@2668.4]
  wire [49:0] _GEN_16; // @[NV_NVDLA_csb_master.scala 442:55:@2669.4]
  wire [49:0] _T_750; // @[NV_NVDLA_csb_master.scala 442:55:@2669.4]
  wire [49:0] _T_751; // @[NV_NVDLA_csb_master.scala 441:77:@2670.4]
  wire  _T_752; // @[Bitwise.scala 72:15:@2671.4]
  wire [33:0] _T_755; // @[Bitwise.scala 72:12:@2672.4]
  wire [49:0] _GEN_17; // @[NV_NVDLA_csb_master.scala 443:53:@2673.4]
  wire [49:0] _T_756; // @[NV_NVDLA_csb_master.scala 443:53:@2673.4]
  wire [49:0] _T_757; // @[NV_NVDLA_csb_master.scala 442:77:@2674.4]
  wire  _T_758; // @[Bitwise.scala 72:15:@2675.4]
  wire [33:0] _T_761; // @[Bitwise.scala 72:12:@2676.4]
  wire [49:0] _GEN_18; // @[NV_NVDLA_csb_master.scala 444:57:@2677.4]
  wire [49:0] _T_762; // @[NV_NVDLA_csb_master.scala 444:57:@2677.4]
  wire [49:0] _T_763; // @[NV_NVDLA_csb_master.scala 443:73:@2678.4]
  wire  _T_764; // @[Bitwise.scala 72:15:@2679.4]
  wire [33:0] _T_767; // @[Bitwise.scala 72:12:@2680.4]
  wire [49:0] _GEN_19; // @[NV_NVDLA_csb_master.scala 445:52:@2681.4]
  wire [49:0] _T_768; // @[NV_NVDLA_csb_master.scala 445:52:@2681.4]
  wire [49:0] _T_769; // @[NV_NVDLA_csb_master.scala 444:81:@2682.4]
  wire [49:0] _T_770; // @[NV_NVDLA_csb_master.scala 445:71:@2683.4]
  wire [49:0] _T_771; // @[NV_NVDLA_csb_master.scala 446:45:@2684.4]
  wire [49:0] _T_772; // @[NV_NVDLA_csb_master.scala 447:40:@2685.4]
  wire [49:0] _T_773; // @[NV_NVDLA_csb_master.scala 448:45:@2686.4]
  wire [33:0] _T_778; // @[Bitwise.scala 72:12:@2689.4]
  wire [64:0] _GEN_20; // @[NV_NVDLA_csb_master.scala 451:51:@2690.4]
  wire [64:0] _T_779; // @[NV_NVDLA_csb_master.scala 451:51:@2690.4]
  wire [64:0] _GEN_21; // @[NV_NVDLA_csb_master.scala 450:40:@2691.4]
  wire [64:0] _T_780; // @[NV_NVDLA_csb_master.scala 450:40:@2691.4]
  wire  _T_781; // @[NV_NVDLA_csb_master.scala 453:40:@2693.4]
  wire  _T_782; // @[NV_NVDLA_csb_master.scala 454:43:@2694.4]
  wire  _T_783; // @[NV_NVDLA_csb_master.scala 455:44:@2695.4]
  wire  _T_785; // @[NV_NVDLA_csb_master.scala 457:45:@2697.4]
  wire  _T_786; // @[NV_NVDLA_csb_master.scala 458:44:@2698.4]
  wire  _T_787; // @[NV_NVDLA_csb_master.scala 459:43:@2699.4]
  wire  _T_788; // @[NV_NVDLA_csb_master.scala 460:46:@2700.4]
  wire  _T_789; // @[NV_NVDLA_csb_master.scala 461:46:@2701.4]
  wire  _T_790; // @[NV_NVDLA_csb_master.scala 462:44:@2702.4]
  wire  _T_791; // @[NV_NVDLA_csb_master.scala 463:48:@2703.4]
  wire  _T_792; // @[NV_NVDLA_csb_master.scala 464:43:@2704.4]
  wire  _T_793; // @[NV_NVDLA_csb_master.scala 465:49:@2705.4]
  wire  _T_794; // @[NV_NVDLA_csb_master.scala 466:44:@2706.4]
  wire  _T_795; // @[NV_NVDLA_csb_master.scala 467:49:@2707.4]
  NV_NVDLA_CSB_MASTER_falcon2csb_fifo NV_NVDLA_CSB_MASTER_falcon2csb_fifo ( // @[NV_NVDLA_csb_master.scala 98:30:@2328.4]
    .reset(NV_NVDLA_CSB_MASTER_falcon2csb_fifo_reset),
    .io_wr_clk(NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_wr_clk),
    .io_rd_clk(NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_clk),
    .io_wr_reset_(NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_wr_reset_),
    .io_rd_reset_(NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_reset_),
    .io_wr_ready(NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_wr_ready),
    .io_wr_req(NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_wr_req),
    .io_rd_req(NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_req),
    .io_wr_data(NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_wr_data),
    .io_rd_data(NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_data)
  );
  NV_NVDLA_CSB_MASTER_csb2falcon_fifo NV_NVDLA_CSB_MASTER_csb2falcon_fifo ( // @[NV_NVDLA_csb_master.scala 117:30:@2342.4]
    .reset(NV_NVDLA_CSB_MASTER_csb2falcon_fifo_reset),
    .io_wr_clk(NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_wr_clk),
    .io_wr_reset_(NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_wr_reset_),
    .io_rd_clk(NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_rd_clk),
    .io_rd_reset_(NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_rd_reset_),
    .io_wr_req(NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_wr_req),
    .io_rd_req(NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_rd_req),
    .io_wr_data(NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_wr_data),
    .io_rd_data(NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_rd_data)
  );
  NV_NVDLA_CSB_MASTER_for_client NV_NVDLA_CSB_MASTER_for_client ( // @[NV_NVDLA_csb_master.scala 155:29:@2383.4]
    .reset(NV_NVDLA_CSB_MASTER_for_client_reset),
    .io_nvdla_core_clk(NV_NVDLA_CSB_MASTER_for_client_io_nvdla_core_clk),
    .io_core_req_pop_valid(NV_NVDLA_CSB_MASTER_for_client_io_core_req_pop_valid),
    .io_core_byte_addr(NV_NVDLA_CSB_MASTER_for_client_io_core_byte_addr),
    .io_core_req_pd_d1(NV_NVDLA_CSB_MASTER_for_client_io_core_req_pd_d1),
    .io_csb2client_req_ready(NV_NVDLA_CSB_MASTER_for_client_io_csb2client_req_ready),
    .io_csb2client_req_valid(NV_NVDLA_CSB_MASTER_for_client_io_csb2client_req_valid),
    .io_csb2client_req_bits(NV_NVDLA_CSB_MASTER_for_client_io_csb2client_req_bits),
    .io_csb2client_resp_valid(NV_NVDLA_CSB_MASTER_for_client_io_csb2client_resp_valid),
    .io_csb2client_resp_bits(NV_NVDLA_CSB_MASTER_for_client_io_csb2client_resp_bits),
    .io_client_resp_pd_valid(NV_NVDLA_CSB_MASTER_for_client_io_client_resp_pd_valid),
    .io_client_resp_pd_bits(NV_NVDLA_CSB_MASTER_for_client_io_client_resp_pd_bits),
    .io_select_client(NV_NVDLA_CSB_MASTER_for_client_io_select_client)
  );
  NV_NVDLA_CSB_MASTER_for_client_1 NV_NVDLA_CSB_MASTER_for_client_1 ( // @[NV_NVDLA_csb_master.scala 166:26:@2396.4]
    .reset(NV_NVDLA_CSB_MASTER_for_client_1_reset),
    .io_nvdla_core_clk(NV_NVDLA_CSB_MASTER_for_client_1_io_nvdla_core_clk),
    .io_core_req_pop_valid(NV_NVDLA_CSB_MASTER_for_client_1_io_core_req_pop_valid),
    .io_core_byte_addr(NV_NVDLA_CSB_MASTER_for_client_1_io_core_byte_addr),
    .io_core_req_pd_d1(NV_NVDLA_CSB_MASTER_for_client_1_io_core_req_pd_d1),
    .io_csb2client_req_ready(NV_NVDLA_CSB_MASTER_for_client_1_io_csb2client_req_ready),
    .io_csb2client_req_valid(NV_NVDLA_CSB_MASTER_for_client_1_io_csb2client_req_valid),
    .io_csb2client_req_bits(NV_NVDLA_CSB_MASTER_for_client_1_io_csb2client_req_bits),
    .io_csb2client_resp_valid(NV_NVDLA_CSB_MASTER_for_client_1_io_csb2client_resp_valid),
    .io_csb2client_resp_bits(NV_NVDLA_CSB_MASTER_for_client_1_io_csb2client_resp_bits),
    .io_client_resp_pd_valid(NV_NVDLA_CSB_MASTER_for_client_1_io_client_resp_pd_valid),
    .io_client_resp_pd_bits(NV_NVDLA_CSB_MASTER_for_client_1_io_client_resp_pd_bits),
    .io_select_client(NV_NVDLA_CSB_MASTER_for_client_1_io_select_client)
  );
  NV_NVDLA_CSB_MASTER_for_client_2 NV_NVDLA_CSB_MASTER_for_client_2 ( // @[NV_NVDLA_csb_master.scala 177:27:@2409.4]
    .reset(NV_NVDLA_CSB_MASTER_for_client_2_reset),
    .io_nvdla_core_clk(NV_NVDLA_CSB_MASTER_for_client_2_io_nvdla_core_clk),
    .io_core_req_pop_valid(NV_NVDLA_CSB_MASTER_for_client_2_io_core_req_pop_valid),
    .io_core_byte_addr(NV_NVDLA_CSB_MASTER_for_client_2_io_core_byte_addr),
    .io_core_req_pd_d1(NV_NVDLA_CSB_MASTER_for_client_2_io_core_req_pd_d1),
    .io_csb2client_req_ready(NV_NVDLA_CSB_MASTER_for_client_2_io_csb2client_req_ready),
    .io_csb2client_req_valid(NV_NVDLA_CSB_MASTER_for_client_2_io_csb2client_req_valid),
    .io_csb2client_req_bits(NV_NVDLA_CSB_MASTER_for_client_2_io_csb2client_req_bits),
    .io_csb2client_resp_valid(NV_NVDLA_CSB_MASTER_for_client_2_io_csb2client_resp_valid),
    .io_csb2client_resp_bits(NV_NVDLA_CSB_MASTER_for_client_2_io_csb2client_resp_bits),
    .io_client_resp_pd_valid(NV_NVDLA_CSB_MASTER_for_client_2_io_client_resp_pd_valid),
    .io_client_resp_pd_bits(NV_NVDLA_CSB_MASTER_for_client_2_io_client_resp_pd_bits),
    .io_select_client(NV_NVDLA_CSB_MASTER_for_client_2_io_select_client)
  );
  NV_NVDLA_CSB_MASTER_for_client_3 NV_NVDLA_CSB_MASTER_for_client_3 ( // @[NV_NVDLA_csb_master.scala 188:70:@2422.4]
    .reset(NV_NVDLA_CSB_MASTER_for_client_3_reset),
    .io_nvdla_core_clk(NV_NVDLA_CSB_MASTER_for_client_3_io_nvdla_core_clk),
    .io_core_req_pop_valid(NV_NVDLA_CSB_MASTER_for_client_3_io_core_req_pop_valid),
    .io_core_byte_addr(NV_NVDLA_CSB_MASTER_for_client_3_io_core_byte_addr),
    .io_core_req_pd_d1(NV_NVDLA_CSB_MASTER_for_client_3_io_core_req_pd_d1),
    .io_csb2client_req_ready(NV_NVDLA_CSB_MASTER_for_client_3_io_csb2client_req_ready),
    .io_csb2client_req_valid(NV_NVDLA_CSB_MASTER_for_client_3_io_csb2client_req_valid),
    .io_csb2client_req_bits(NV_NVDLA_CSB_MASTER_for_client_3_io_csb2client_req_bits),
    .io_csb2client_resp_valid(NV_NVDLA_CSB_MASTER_for_client_3_io_csb2client_resp_valid),
    .io_csb2client_resp_bits(NV_NVDLA_CSB_MASTER_for_client_3_io_csb2client_resp_bits),
    .io_client_resp_pd_valid(NV_NVDLA_CSB_MASTER_for_client_3_io_client_resp_pd_valid),
    .io_client_resp_pd_bits(NV_NVDLA_CSB_MASTER_for_client_3_io_client_resp_pd_bits),
    .io_select_client(NV_NVDLA_CSB_MASTER_for_client_3_io_select_client)
  );
  NV_NVDLA_CSB_MASTER_for_client_4 NV_NVDLA_CSB_MASTER_for_client_4 ( // @[NV_NVDLA_csb_master.scala 216:27:@2435.4]
    .reset(NV_NVDLA_CSB_MASTER_for_client_4_reset),
    .io_nvdla_core_clk(NV_NVDLA_CSB_MASTER_for_client_4_io_nvdla_core_clk),
    .io_core_req_pop_valid(NV_NVDLA_CSB_MASTER_for_client_4_io_core_req_pop_valid),
    .io_core_byte_addr(NV_NVDLA_CSB_MASTER_for_client_4_io_core_byte_addr),
    .io_core_req_pd_d1(NV_NVDLA_CSB_MASTER_for_client_4_io_core_req_pd_d1),
    .io_csb2client_req_ready(NV_NVDLA_CSB_MASTER_for_client_4_io_csb2client_req_ready),
    .io_csb2client_req_valid(NV_NVDLA_CSB_MASTER_for_client_4_io_csb2client_req_valid),
    .io_csb2client_req_bits(NV_NVDLA_CSB_MASTER_for_client_4_io_csb2client_req_bits),
    .io_csb2client_resp_valid(NV_NVDLA_CSB_MASTER_for_client_4_io_csb2client_resp_valid),
    .io_csb2client_resp_bits(NV_NVDLA_CSB_MASTER_for_client_4_io_csb2client_resp_bits),
    .io_client_resp_pd_valid(NV_NVDLA_CSB_MASTER_for_client_4_io_client_resp_pd_valid),
    .io_client_resp_pd_bits(NV_NVDLA_CSB_MASTER_for_client_4_io_client_resp_pd_bits),
    .io_select_client(NV_NVDLA_CSB_MASTER_for_client_4_io_select_client)
  );
  NV_NVDLA_CSB_MASTER_for_client_5 NV_NVDLA_CSB_MASTER_for_client_5 ( // @[NV_NVDLA_csb_master.scala 227:26:@2448.4]
    .reset(NV_NVDLA_CSB_MASTER_for_client_5_reset),
    .io_nvdla_core_clk(NV_NVDLA_CSB_MASTER_for_client_5_io_nvdla_core_clk),
    .io_core_req_pop_valid(NV_NVDLA_CSB_MASTER_for_client_5_io_core_req_pop_valid),
    .io_core_byte_addr(NV_NVDLA_CSB_MASTER_for_client_5_io_core_byte_addr),
    .io_core_req_pd_d1(NV_NVDLA_CSB_MASTER_for_client_5_io_core_req_pd_d1),
    .io_csb2client_req_ready(NV_NVDLA_CSB_MASTER_for_client_5_io_csb2client_req_ready),
    .io_csb2client_req_valid(NV_NVDLA_CSB_MASTER_for_client_5_io_csb2client_req_valid),
    .io_csb2client_req_bits(NV_NVDLA_CSB_MASTER_for_client_5_io_csb2client_req_bits),
    .io_csb2client_resp_valid(NV_NVDLA_CSB_MASTER_for_client_5_io_csb2client_resp_valid),
    .io_csb2client_resp_bits(NV_NVDLA_CSB_MASTER_for_client_5_io_csb2client_resp_bits),
    .io_client_resp_pd_valid(NV_NVDLA_CSB_MASTER_for_client_5_io_client_resp_pd_valid),
    .io_client_resp_pd_bits(NV_NVDLA_CSB_MASTER_for_client_5_io_client_resp_pd_bits),
    .io_select_client(NV_NVDLA_CSB_MASTER_for_client_5_io_select_client)
  );
  NV_NVDLA_CSB_MASTER_for_client_6 NV_NVDLA_CSB_MASTER_for_client_6 ( // @[NV_NVDLA_csb_master.scala 238:29:@2461.4]
    .reset(NV_NVDLA_CSB_MASTER_for_client_6_reset),
    .io_nvdla_core_clk(NV_NVDLA_CSB_MASTER_for_client_6_io_nvdla_core_clk),
    .io_core_req_pop_valid(NV_NVDLA_CSB_MASTER_for_client_6_io_core_req_pop_valid),
    .io_core_byte_addr(NV_NVDLA_CSB_MASTER_for_client_6_io_core_byte_addr),
    .io_core_req_pd_d1(NV_NVDLA_CSB_MASTER_for_client_6_io_core_req_pd_d1),
    .io_csb2client_req_ready(NV_NVDLA_CSB_MASTER_for_client_6_io_csb2client_req_ready),
    .io_csb2client_req_valid(NV_NVDLA_CSB_MASTER_for_client_6_io_csb2client_req_valid),
    .io_csb2client_req_bits(NV_NVDLA_CSB_MASTER_for_client_6_io_csb2client_req_bits),
    .io_csb2client_resp_valid(NV_NVDLA_CSB_MASTER_for_client_6_io_csb2client_resp_valid),
    .io_csb2client_resp_bits(NV_NVDLA_CSB_MASTER_for_client_6_io_csb2client_resp_bits),
    .io_client_resp_pd_valid(NV_NVDLA_CSB_MASTER_for_client_6_io_client_resp_pd_valid),
    .io_client_resp_pd_bits(NV_NVDLA_CSB_MASTER_for_client_6_io_client_resp_pd_bits),
    .io_select_client(NV_NVDLA_CSB_MASTER_for_client_6_io_select_client)
  );
  NV_NVDLA_CSB_MASTER_for_client_7 NV_NVDLA_CSB_MASTER_for_client_7 ( // @[NV_NVDLA_csb_master.scala 249:29:@2474.4]
    .reset(NV_NVDLA_CSB_MASTER_for_client_7_reset),
    .io_nvdla_core_clk(NV_NVDLA_CSB_MASTER_for_client_7_io_nvdla_core_clk),
    .io_core_req_pop_valid(NV_NVDLA_CSB_MASTER_for_client_7_io_core_req_pop_valid),
    .io_core_byte_addr(NV_NVDLA_CSB_MASTER_for_client_7_io_core_byte_addr),
    .io_core_req_pd_d1(NV_NVDLA_CSB_MASTER_for_client_7_io_core_req_pd_d1),
    .io_csb2client_req_ready(NV_NVDLA_CSB_MASTER_for_client_7_io_csb2client_req_ready),
    .io_csb2client_req_valid(NV_NVDLA_CSB_MASTER_for_client_7_io_csb2client_req_valid),
    .io_csb2client_req_bits(NV_NVDLA_CSB_MASTER_for_client_7_io_csb2client_req_bits),
    .io_csb2client_resp_valid(NV_NVDLA_CSB_MASTER_for_client_7_io_csb2client_resp_valid),
    .io_csb2client_resp_bits(NV_NVDLA_CSB_MASTER_for_client_7_io_csb2client_resp_bits),
    .io_client_resp_pd_valid(NV_NVDLA_CSB_MASTER_for_client_7_io_client_resp_pd_valid),
    .io_client_resp_pd_bits(NV_NVDLA_CSB_MASTER_for_client_7_io_client_resp_pd_bits),
    .io_select_client(NV_NVDLA_CSB_MASTER_for_client_7_io_select_client)
  );
  NV_NVDLA_CSB_MASTER_for_client_8 NV_NVDLA_CSB_MASTER_for_client_8 ( // @[NV_NVDLA_csb_master.scala 260:27:@2487.4]
    .reset(NV_NVDLA_CSB_MASTER_for_client_8_reset),
    .io_nvdla_core_clk(NV_NVDLA_CSB_MASTER_for_client_8_io_nvdla_core_clk),
    .io_core_req_pop_valid(NV_NVDLA_CSB_MASTER_for_client_8_io_core_req_pop_valid),
    .io_core_byte_addr(NV_NVDLA_CSB_MASTER_for_client_8_io_core_byte_addr),
    .io_core_req_pd_d1(NV_NVDLA_CSB_MASTER_for_client_8_io_core_req_pd_d1),
    .io_csb2client_req_ready(NV_NVDLA_CSB_MASTER_for_client_8_io_csb2client_req_ready),
    .io_csb2client_req_valid(NV_NVDLA_CSB_MASTER_for_client_8_io_csb2client_req_valid),
    .io_csb2client_req_bits(NV_NVDLA_CSB_MASTER_for_client_8_io_csb2client_req_bits),
    .io_csb2client_resp_valid(NV_NVDLA_CSB_MASTER_for_client_8_io_csb2client_resp_valid),
    .io_csb2client_resp_bits(NV_NVDLA_CSB_MASTER_for_client_8_io_csb2client_resp_bits),
    .io_client_resp_pd_valid(NV_NVDLA_CSB_MASTER_for_client_8_io_client_resp_pd_valid),
    .io_client_resp_pd_bits(NV_NVDLA_CSB_MASTER_for_client_8_io_client_resp_pd_bits),
    .io_select_client(NV_NVDLA_CSB_MASTER_for_client_8_io_select_client)
  );
  NV_NVDLA_CSB_MASTER_for_client_9 NV_NVDLA_CSB_MASTER_for_client_9 ( // @[NV_NVDLA_csb_master.scala 271:31:@2500.4]
    .reset(NV_NVDLA_CSB_MASTER_for_client_9_reset),
    .io_nvdla_core_clk(NV_NVDLA_CSB_MASTER_for_client_9_io_nvdla_core_clk),
    .io_core_req_pop_valid(NV_NVDLA_CSB_MASTER_for_client_9_io_core_req_pop_valid),
    .io_core_byte_addr(NV_NVDLA_CSB_MASTER_for_client_9_io_core_byte_addr),
    .io_core_req_pd_d1(NV_NVDLA_CSB_MASTER_for_client_9_io_core_req_pd_d1),
    .io_csb2client_req_ready(NV_NVDLA_CSB_MASTER_for_client_9_io_csb2client_req_ready),
    .io_csb2client_req_valid(NV_NVDLA_CSB_MASTER_for_client_9_io_csb2client_req_valid),
    .io_csb2client_req_bits(NV_NVDLA_CSB_MASTER_for_client_9_io_csb2client_req_bits),
    .io_csb2client_resp_valid(NV_NVDLA_CSB_MASTER_for_client_9_io_csb2client_resp_valid),
    .io_csb2client_resp_bits(NV_NVDLA_CSB_MASTER_for_client_9_io_csb2client_resp_bits),
    .io_client_resp_pd_valid(NV_NVDLA_CSB_MASTER_for_client_9_io_client_resp_pd_valid),
    .io_client_resp_pd_bits(NV_NVDLA_CSB_MASTER_for_client_9_io_client_resp_pd_bits),
    .io_select_client(NV_NVDLA_CSB_MASTER_for_client_9_io_select_client)
  );
  NV_NVDLA_CSB_MASTER_for_client_10 NV_NVDLA_CSB_MASTER_for_client_10 ( // @[NV_NVDLA_csb_master.scala 282:26:@2513.4]
    .reset(NV_NVDLA_CSB_MASTER_for_client_10_reset),
    .io_nvdla_core_clk(NV_NVDLA_CSB_MASTER_for_client_10_io_nvdla_core_clk),
    .io_core_req_pop_valid(NV_NVDLA_CSB_MASTER_for_client_10_io_core_req_pop_valid),
    .io_core_byte_addr(NV_NVDLA_CSB_MASTER_for_client_10_io_core_byte_addr),
    .io_core_req_pd_d1(NV_NVDLA_CSB_MASTER_for_client_10_io_core_req_pd_d1),
    .io_csb2client_req_ready(NV_NVDLA_CSB_MASTER_for_client_10_io_csb2client_req_ready),
    .io_csb2client_req_valid(NV_NVDLA_CSB_MASTER_for_client_10_io_csb2client_req_valid),
    .io_csb2client_req_bits(NV_NVDLA_CSB_MASTER_for_client_10_io_csb2client_req_bits),
    .io_csb2client_resp_valid(NV_NVDLA_CSB_MASTER_for_client_10_io_csb2client_resp_valid),
    .io_csb2client_resp_bits(NV_NVDLA_CSB_MASTER_for_client_10_io_csb2client_resp_bits),
    .io_client_resp_pd_valid(NV_NVDLA_CSB_MASTER_for_client_10_io_client_resp_pd_valid),
    .io_client_resp_pd_bits(NV_NVDLA_CSB_MASTER_for_client_10_io_client_resp_pd_bits),
    .io_select_client(NV_NVDLA_CSB_MASTER_for_client_10_io_select_client)
  );
  NV_NVDLA_CSB_MASTER_for_client_11 NV_NVDLA_CSB_MASTER_for_client_11 ( // @[NV_NVDLA_csb_master.scala 293:62:@2526.4]
    .reset(NV_NVDLA_CSB_MASTER_for_client_11_reset),
    .io_nvdla_core_clk(NV_NVDLA_CSB_MASTER_for_client_11_io_nvdla_core_clk),
    .io_core_req_pop_valid(NV_NVDLA_CSB_MASTER_for_client_11_io_core_req_pop_valid),
    .io_core_byte_addr(NV_NVDLA_CSB_MASTER_for_client_11_io_core_byte_addr),
    .io_core_req_pd_d1(NV_NVDLA_CSB_MASTER_for_client_11_io_core_req_pd_d1),
    .io_csb2client_req_ready(NV_NVDLA_CSB_MASTER_for_client_11_io_csb2client_req_ready),
    .io_csb2client_req_valid(NV_NVDLA_CSB_MASTER_for_client_11_io_csb2client_req_valid),
    .io_csb2client_req_bits(NV_NVDLA_CSB_MASTER_for_client_11_io_csb2client_req_bits),
    .io_csb2client_resp_valid(NV_NVDLA_CSB_MASTER_for_client_11_io_csb2client_resp_valid),
    .io_csb2client_resp_bits(NV_NVDLA_CSB_MASTER_for_client_11_io_csb2client_resp_bits),
    .io_client_resp_pd_valid(NV_NVDLA_CSB_MASTER_for_client_11_io_client_resp_pd_valid),
    .io_client_resp_pd_bits(NV_NVDLA_CSB_MASTER_for_client_11_io_client_resp_pd_bits),
    .io_select_client(NV_NVDLA_CSB_MASTER_for_client_11_io_select_client)
  );
  NV_NVDLA_CSB_MASTER_for_client_12 NV_NVDLA_CSB_MASTER_for_client_12 ( // @[NV_NVDLA_csb_master.scala 308:57:@2539.4]
    .reset(NV_NVDLA_CSB_MASTER_for_client_12_reset),
    .io_nvdla_core_clk(NV_NVDLA_CSB_MASTER_for_client_12_io_nvdla_core_clk),
    .io_core_req_pop_valid(NV_NVDLA_CSB_MASTER_for_client_12_io_core_req_pop_valid),
    .io_core_byte_addr(NV_NVDLA_CSB_MASTER_for_client_12_io_core_byte_addr),
    .io_core_req_pd_d1(NV_NVDLA_CSB_MASTER_for_client_12_io_core_req_pd_d1),
    .io_csb2client_req_ready(NV_NVDLA_CSB_MASTER_for_client_12_io_csb2client_req_ready),
    .io_csb2client_req_valid(NV_NVDLA_CSB_MASTER_for_client_12_io_csb2client_req_valid),
    .io_csb2client_req_bits(NV_NVDLA_CSB_MASTER_for_client_12_io_csb2client_req_bits),
    .io_csb2client_resp_valid(NV_NVDLA_CSB_MASTER_for_client_12_io_csb2client_resp_valid),
    .io_csb2client_resp_bits(NV_NVDLA_CSB_MASTER_for_client_12_io_csb2client_resp_bits),
    .io_client_resp_pd_valid(NV_NVDLA_CSB_MASTER_for_client_12_io_client_resp_pd_valid),
    .io_client_resp_pd_bits(NV_NVDLA_CSB_MASTER_for_client_12_io_client_resp_pd_bits),
    .io_select_client(NV_NVDLA_CSB_MASTER_for_client_12_io_select_client)
  );
  NV_NVDLA_CSB_MASTER_for_client_13 NV_NVDLA_CSB_MASTER_for_client_13 ( // @[NV_NVDLA_csb_master.scala 323:62:@2552.4]
    .reset(NV_NVDLA_CSB_MASTER_for_client_13_reset),
    .io_nvdla_core_clk(NV_NVDLA_CSB_MASTER_for_client_13_io_nvdla_core_clk),
    .io_core_req_pop_valid(NV_NVDLA_CSB_MASTER_for_client_13_io_core_req_pop_valid),
    .io_core_byte_addr(NV_NVDLA_CSB_MASTER_for_client_13_io_core_byte_addr),
    .io_core_req_pd_d1(NV_NVDLA_CSB_MASTER_for_client_13_io_core_req_pd_d1),
    .io_csb2client_req_ready(NV_NVDLA_CSB_MASTER_for_client_13_io_csb2client_req_ready),
    .io_csb2client_req_valid(NV_NVDLA_CSB_MASTER_for_client_13_io_csb2client_req_valid),
    .io_csb2client_req_bits(NV_NVDLA_CSB_MASTER_for_client_13_io_csb2client_req_bits),
    .io_csb2client_resp_valid(NV_NVDLA_CSB_MASTER_for_client_13_io_csb2client_resp_valid),
    .io_csb2client_resp_bits(NV_NVDLA_CSB_MASTER_for_client_13_io_csb2client_resp_bits),
    .io_client_resp_pd_valid(NV_NVDLA_CSB_MASTER_for_client_13_io_client_resp_pd_valid),
    .io_client_resp_pd_bits(NV_NVDLA_CSB_MASTER_for_client_13_io_client_resp_pd_bits),
    .io_select_client(NV_NVDLA_CSB_MASTER_for_client_13_io_select_client)
  );
  NV_NVDLA_CSB_MASTER_for_client_14 NV_NVDLA_CSB_MASTER_for_client_14 ( // @[NV_NVDLA_csb_master.scala 337:57:@2565.4]
    .reset(NV_NVDLA_CSB_MASTER_for_client_14_reset),
    .io_nvdla_core_clk(NV_NVDLA_CSB_MASTER_for_client_14_io_nvdla_core_clk),
    .io_core_req_pop_valid(NV_NVDLA_CSB_MASTER_for_client_14_io_core_req_pop_valid),
    .io_core_byte_addr(NV_NVDLA_CSB_MASTER_for_client_14_io_core_byte_addr),
    .io_core_req_pd_d1(NV_NVDLA_CSB_MASTER_for_client_14_io_core_req_pd_d1),
    .io_csb2client_req_ready(NV_NVDLA_CSB_MASTER_for_client_14_io_csb2client_req_ready),
    .io_csb2client_req_valid(NV_NVDLA_CSB_MASTER_for_client_14_io_csb2client_req_valid),
    .io_csb2client_req_bits(NV_NVDLA_CSB_MASTER_for_client_14_io_csb2client_req_bits),
    .io_csb2client_resp_valid(NV_NVDLA_CSB_MASTER_for_client_14_io_csb2client_resp_valid),
    .io_csb2client_resp_bits(NV_NVDLA_CSB_MASTER_for_client_14_io_csb2client_resp_bits),
    .io_client_resp_pd_valid(NV_NVDLA_CSB_MASTER_for_client_14_io_client_resp_pd_valid),
    .io_client_resp_pd_bits(NV_NVDLA_CSB_MASTER_for_client_14_io_client_resp_pd_bits),
    .io_select_client(NV_NVDLA_CSB_MASTER_for_client_14_io_select_client)
  );
  assign _T_572 = io_nvdla_core_rstn == 1'h0; // @[NV_NVDLA_csb_master.scala 91:38:@2324.4]
  assign _T_573 = {io_csb2nvdla_bits_wdat,io_csb2nvdla_bits_addr}; // @[Cat.scala 30:58:@2325.4]
  assign _T_574 = {io_csb2nvdla_bits_nposted,io_csb2nvdla_bits_write}; // @[Cat.scala 30:58:@2326.4]
  assign _T_582 = NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_rd_data[33]; // @[NV_NVDLA_csb_master.scala 134:74:@2353.4]
  assign _T_584 = _T_582 == 1'h0; // @[NV_NVDLA_csb_master.scala 134:79:@2354.4]
  assign _T_585 = NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_rd_req & _T_584; // @[NV_NVDLA_csb_master.scala 134:53:@2355.4]
  assign _T_589 = NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_rd_req & _T_582; // @[NV_NVDLA_csb_master.scala 135:52:@2358.4]
  assign _GEN_0 = _T_585 ? NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_rd_data : {{2'd0}, _T_595}; // @[Reg.scala 20:19:@2363.4]
  assign _T_599 = NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_data[15:0]; // @[NV_NVDLA_csb_master.scala 144:32:@2370.4]
  assign _T_600 = NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_data[48]; // @[NV_NVDLA_csb_master.scala 145:33:@2371.4]
  assign _T_601 = NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_data[49]; // @[NV_NVDLA_csb_master.scala 146:37:@2372.4]
  assign _T_602 = NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_req; // @[NV_NVDLA_csb_master.scala 147:40:@2373.4]
  assign _T_628 = NV_NVDLA_CSB_MASTER_for_client_io_select_client | NV_NVDLA_CSB_MASTER_for_client_1_io_select_client; // @[NV_NVDLA_csb_master.scala 371:23:@2581.4]
  assign _T_629 = _T_628 | NV_NVDLA_CSB_MASTER_for_client_2_io_select_client; // @[NV_NVDLA_csb_master.scala 372:23:@2582.4]
  assign _T_630 = _T_629 | NV_NVDLA_CSB_MASTER_for_client_3_io_select_client; // @[NV_NVDLA_csb_master.scala 373:23:@2583.4]
  assign _T_632 = _T_630 | NV_NVDLA_CSB_MASTER_for_client_4_io_select_client; // @[NV_NVDLA_csb_master.scala 375:23:@2585.4]
  assign _T_633 = _T_632 | NV_NVDLA_CSB_MASTER_for_client_5_io_select_client; // @[NV_NVDLA_csb_master.scala 376:23:@2586.4]
  assign _T_634 = _T_633 | NV_NVDLA_CSB_MASTER_for_client_6_io_select_client; // @[NV_NVDLA_csb_master.scala 377:23:@2587.4]
  assign _T_635 = _T_634 | NV_NVDLA_CSB_MASTER_for_client_7_io_select_client; // @[NV_NVDLA_csb_master.scala 378:23:@2588.4]
  assign _T_636 = _T_635 | NV_NVDLA_CSB_MASTER_for_client_8_io_select_client; // @[NV_NVDLA_csb_master.scala 379:23:@2589.4]
  assign _T_637 = _T_636 | NV_NVDLA_CSB_MASTER_for_client_9_io_select_client; // @[NV_NVDLA_csb_master.scala 380:23:@2590.4]
  assign _T_638 = _T_637 | NV_NVDLA_CSB_MASTER_for_client_10_io_select_client; // @[NV_NVDLA_csb_master.scala 381:23:@2591.4]
  assign _T_639 = _T_638 | NV_NVDLA_CSB_MASTER_for_client_11_io_select_client; // @[NV_NVDLA_csb_master.scala 382:23:@2592.4]
  assign _T_640 = _T_639 | NV_NVDLA_CSB_MASTER_for_client_12_io_select_client; // @[NV_NVDLA_csb_master.scala 383:23:@2593.4]
  assign _T_641 = _T_640 | NV_NVDLA_CSB_MASTER_for_client_14_io_select_client; // @[NV_NVDLA_csb_master.scala 384:23:@2594.4]
  assign _T_642 = _T_641 | NV_NVDLA_CSB_MASTER_for_client_13_io_select_client; // @[NV_NVDLA_csb_master.scala 385:23:@2595.4]
  assign _T_644 = ~ _T_642; // @[NV_NVDLA_csb_master.scala 370:20:@2597.4]
  assign _T_645 = _T_602 & _T_644; // @[NV_NVDLA_csb_master.scala 388:44:@2598.4]
  assign _T_646 = ~ _T_600; // @[NV_NVDLA_csb_master.scala 394:27:@2604.6]
  assign _T_661 = _T_625 | _T_627; // @[NV_NVDLA_csb_master.scala 402:70:@2614.4]
  assign _T_662 = _T_623 & _T_661; // @[NV_NVDLA_csb_master.scala 402:45:@2615.4]
  assign _T_663 = ~ _T_627; // @[NV_NVDLA_csb_master.scala 403:25:@2616.4]
  assign _T_664 = _T_663 & _T_625; // @[NV_NVDLA_csb_master.scala 403:45:@2617.4]
  assign _GEN_4 = _T_662 ? _T_664 : _T_667; // @[Reg.scala 20:19:@2619.4]
  assign _T_668 = _T_667 ? 65'h10000000000000000 : 65'h0; // @[NV_NVDLA_csb_master.scala 405:24:@2622.4]
  assign _T_672 = NV_NVDLA_CSB_MASTER_for_client_3_io_client_resp_pd_valid; // @[Bitwise.scala 72:15:@2625.4]
  assign _T_675 = _T_672 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@2626.4]
  assign _GEN_5 = {{16'd0}, _T_675}; // @[NV_NVDLA_csb_master.scala 412:96:@2627.4]
  assign _T_676 = _GEN_5 & NV_NVDLA_CSB_MASTER_for_client_3_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 412:96:@2627.4]
  assign _T_683 = NV_NVDLA_CSB_MASTER_for_client_11_io_client_resp_pd_valid; // @[Bitwise.scala 72:15:@2629.4]
  assign _T_686 = _T_683 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@2630.4]
  assign _GEN_6 = {{16'd0}, _T_686}; // @[NV_NVDLA_csb_master.scala 418:92:@2631.4]
  assign _T_687 = _GEN_6 & NV_NVDLA_CSB_MASTER_for_client_11_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 418:92:@2631.4]
  assign _T_688 = NV_NVDLA_CSB_MASTER_for_client_12_io_client_resp_pd_valid; // @[Bitwise.scala 72:15:@2632.4]
  assign _T_691 = _T_688 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@2633.4]
  assign _GEN_7 = {{16'd0}, _T_691}; // @[NV_NVDLA_csb_master.scala 421:82:@2634.4]
  assign _T_692 = _GEN_7 & NV_NVDLA_CSB_MASTER_for_client_12_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 421:82:@2634.4]
  assign _T_693 = NV_NVDLA_CSB_MASTER_for_client_13_io_client_resp_pd_valid; // @[Bitwise.scala 72:15:@2635.4]
  assign _T_696 = _T_693 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@2636.4]
  assign _GEN_8 = {{16'd0}, _T_696}; // @[NV_NVDLA_csb_master.scala 424:92:@2637.4]
  assign _T_697 = _GEN_8 & NV_NVDLA_CSB_MASTER_for_client_13_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 424:92:@2637.4]
  assign _T_698 = NV_NVDLA_CSB_MASTER_for_client_14_io_client_resp_pd_valid; // @[Bitwise.scala 72:15:@2638.4]
  assign _T_701 = _T_698 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@2639.4]
  assign _GEN_9 = {{16'd0}, _T_701}; // @[NV_NVDLA_csb_master.scala 427:82:@2640.4]
  assign _T_702 = _GEN_9 & NV_NVDLA_CSB_MASTER_for_client_14_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 427:82:@2640.4]
  assign _T_709 = NV_NVDLA_CSB_MASTER_for_client_io_client_resp_pd_valid; // @[Bitwise.scala 72:15:@2642.4]
  assign _T_712 = _T_709 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@2643.4]
  assign _GEN_10 = {{16'd0}, _T_712}; // @[NV_NVDLA_csb_master.scala 434:49:@2644.4]
  assign _T_713 = _GEN_10 & NV_NVDLA_CSB_MASTER_for_client_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 434:49:@2644.4]
  assign _T_714 = NV_NVDLA_CSB_MASTER_for_client_1_io_client_resp_pd_valid; // @[Bitwise.scala 72:15:@2645.4]
  assign _T_717 = _T_714 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@2646.4]
  assign _GEN_11 = {{16'd0}, _T_717}; // @[NV_NVDLA_csb_master.scala 435:52:@2647.4]
  assign _T_718 = _GEN_11 & NV_NVDLA_CSB_MASTER_for_client_1_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 435:52:@2647.4]
  assign _T_719 = _T_713 | _T_718; // @[NV_NVDLA_csb_master.scala 434:71:@2648.4]
  assign _T_720 = NV_NVDLA_CSB_MASTER_for_client_2_io_client_resp_pd_valid; // @[Bitwise.scala 72:15:@2649.4]
  assign _T_723 = _T_720 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@2650.4]
  assign _GEN_12 = {{16'd0}, _T_723}; // @[NV_NVDLA_csb_master.scala 436:53:@2651.4]
  assign _T_724 = _GEN_12 & NV_NVDLA_CSB_MASTER_for_client_2_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 436:53:@2651.4]
  assign _T_725 = _T_719 | _T_724; // @[NV_NVDLA_csb_master.scala 435:71:@2652.4]
  assign _T_726 = _T_725 | _T_676; // @[NV_NVDLA_csb_master.scala 436:73:@2653.4]
  assign _T_728 = NV_NVDLA_CSB_MASTER_for_client_4_io_client_resp_pd_valid; // @[Bitwise.scala 72:15:@2655.4]
  assign _T_731 = _T_728 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@2656.4]
  assign _GEN_13 = {{16'd0}, _T_731}; // @[NV_NVDLA_csb_master.scala 439:53:@2657.4]
  assign _T_732 = _GEN_13 & NV_NVDLA_CSB_MASTER_for_client_4_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 439:53:@2657.4]
  assign _T_733 = _T_726 | _T_732; // @[NV_NVDLA_csb_master.scala 438:41:@2658.4]
  assign _T_734 = NV_NVDLA_CSB_MASTER_for_client_5_io_client_resp_pd_valid; // @[Bitwise.scala 72:15:@2659.4]
  assign _T_737 = _T_734 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@2660.4]
  assign _GEN_14 = {{16'd0}, _T_737}; // @[NV_NVDLA_csb_master.scala 440:52:@2661.4]
  assign _T_738 = _GEN_14 & NV_NVDLA_CSB_MASTER_for_client_5_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 440:52:@2661.4]
  assign _T_739 = _T_733 | _T_738; // @[NV_NVDLA_csb_master.scala 439:73:@2662.4]
  assign _T_740 = NV_NVDLA_CSB_MASTER_for_client_6_io_client_resp_pd_valid; // @[Bitwise.scala 72:15:@2663.4]
  assign _T_743 = _T_740 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@2664.4]
  assign _GEN_15 = {{16'd0}, _T_743}; // @[NV_NVDLA_csb_master.scala 441:55:@2665.4]
  assign _T_744 = _GEN_15 & NV_NVDLA_CSB_MASTER_for_client_6_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 441:55:@2665.4]
  assign _T_745 = _T_739 | _T_744; // @[NV_NVDLA_csb_master.scala 440:71:@2666.4]
  assign _T_746 = NV_NVDLA_CSB_MASTER_for_client_7_io_client_resp_pd_valid; // @[Bitwise.scala 72:15:@2667.4]
  assign _T_749 = _T_746 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@2668.4]
  assign _GEN_16 = {{16'd0}, _T_749}; // @[NV_NVDLA_csb_master.scala 442:55:@2669.4]
  assign _T_750 = _GEN_16 & NV_NVDLA_CSB_MASTER_for_client_7_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 442:55:@2669.4]
  assign _T_751 = _T_745 | _T_750; // @[NV_NVDLA_csb_master.scala 441:77:@2670.4]
  assign _T_752 = NV_NVDLA_CSB_MASTER_for_client_8_io_client_resp_pd_valid; // @[Bitwise.scala 72:15:@2671.4]
  assign _T_755 = _T_752 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@2672.4]
  assign _GEN_17 = {{16'd0}, _T_755}; // @[NV_NVDLA_csb_master.scala 443:53:@2673.4]
  assign _T_756 = _GEN_17 & NV_NVDLA_CSB_MASTER_for_client_8_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 443:53:@2673.4]
  assign _T_757 = _T_751 | _T_756; // @[NV_NVDLA_csb_master.scala 442:77:@2674.4]
  assign _T_758 = NV_NVDLA_CSB_MASTER_for_client_9_io_client_resp_pd_valid; // @[Bitwise.scala 72:15:@2675.4]
  assign _T_761 = _T_758 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@2676.4]
  assign _GEN_18 = {{16'd0}, _T_761}; // @[NV_NVDLA_csb_master.scala 444:57:@2677.4]
  assign _T_762 = _GEN_18 & NV_NVDLA_CSB_MASTER_for_client_9_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 444:57:@2677.4]
  assign _T_763 = _T_757 | _T_762; // @[NV_NVDLA_csb_master.scala 443:73:@2678.4]
  assign _T_764 = NV_NVDLA_CSB_MASTER_for_client_10_io_client_resp_pd_valid; // @[Bitwise.scala 72:15:@2679.4]
  assign _T_767 = _T_764 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@2680.4]
  assign _GEN_19 = {{16'd0}, _T_767}; // @[NV_NVDLA_csb_master.scala 445:52:@2681.4]
  assign _T_768 = _GEN_19 & NV_NVDLA_CSB_MASTER_for_client_10_io_client_resp_pd_bits; // @[NV_NVDLA_csb_master.scala 445:52:@2681.4]
  assign _T_769 = _T_763 | _T_768; // @[NV_NVDLA_csb_master.scala 444:81:@2682.4]
  assign _T_770 = _T_769 | _T_687; // @[NV_NVDLA_csb_master.scala 445:71:@2683.4]
  assign _T_771 = _T_770 | _T_692; // @[NV_NVDLA_csb_master.scala 446:45:@2684.4]
  assign _T_772 = _T_771 | _T_697; // @[NV_NVDLA_csb_master.scala 447:40:@2685.4]
  assign _T_773 = _T_772 | _T_702; // @[NV_NVDLA_csb_master.scala 448:45:@2686.4]
  assign _T_778 = _T_671 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@2689.4]
  assign _GEN_20 = {{31'd0}, _T_778}; // @[NV_NVDLA_csb_master.scala 451:51:@2690.4]
  assign _T_779 = _GEN_20 & _T_668; // @[NV_NVDLA_csb_master.scala 451:51:@2690.4]
  assign _GEN_21 = {{15'd0}, _T_773}; // @[NV_NVDLA_csb_master.scala 450:40:@2691.4]
  assign _T_780 = _GEN_21 | _T_779; // @[NV_NVDLA_csb_master.scala 450:40:@2691.4]
  assign _T_781 = NV_NVDLA_CSB_MASTER_for_client_io_client_resp_pd_valid | NV_NVDLA_CSB_MASTER_for_client_1_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 453:40:@2693.4]
  assign _T_782 = _T_781 | NV_NVDLA_CSB_MASTER_for_client_2_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 454:43:@2694.4]
  assign _T_783 = _T_782 | NV_NVDLA_CSB_MASTER_for_client_3_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 455:44:@2695.4]
  assign _T_785 = _T_783 | NV_NVDLA_CSB_MASTER_for_client_4_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 457:45:@2697.4]
  assign _T_786 = _T_785 | NV_NVDLA_CSB_MASTER_for_client_5_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 458:44:@2698.4]
  assign _T_787 = _T_786 | NV_NVDLA_CSB_MASTER_for_client_6_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 459:43:@2699.4]
  assign _T_788 = _T_787 | NV_NVDLA_CSB_MASTER_for_client_7_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 460:46:@2700.4]
  assign _T_789 = _T_788 | NV_NVDLA_CSB_MASTER_for_client_8_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 461:46:@2701.4]
  assign _T_790 = _T_789 | NV_NVDLA_CSB_MASTER_for_client_9_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 462:44:@2702.4]
  assign _T_791 = _T_790 | NV_NVDLA_CSB_MASTER_for_client_10_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 463:48:@2703.4]
  assign _T_792 = _T_791 | NV_NVDLA_CSB_MASTER_for_client_11_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 464:43:@2704.4]
  assign _T_793 = _T_792 | NV_NVDLA_CSB_MASTER_for_client_12_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 465:49:@2705.4]
  assign _T_794 = _T_793 | NV_NVDLA_CSB_MASTER_for_client_13_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 466:44:@2706.4]
  assign _T_795 = _T_794 | NV_NVDLA_CSB_MASTER_for_client_14_io_client_resp_pd_valid; // @[NV_NVDLA_csb_master.scala 467:49:@2707.4]
  assign io_csb2nvdla_ready = NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_wr_ready; // @[NV_NVDLA_csb_master.scala 109:20:@2338.4]
  assign io_nvdla2csb_valid = _T_592; // @[NV_NVDLA_csb_master.scala 137:20:@2361.4]
  assign io_nvdla2csb_bits_data = _T_595; // @[NV_NVDLA_csb_master.scala 138:24:@2366.4]
  assign io_nvdla2csb_wr_complete = _T_598; // @[NV_NVDLA_csb_master.scala 139:26:@2369.4]
  assign io_csb2cfgrom_req_valid = NV_NVDLA_CSB_MASTER_for_client_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 161:31:@2394.4]
  assign io_csb2cfgrom_req_bits = NV_NVDLA_CSB_MASTER_for_client_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 161:31:@2393.4]
  assign io_csb2glb_req_valid = NV_NVDLA_CSB_MASTER_for_client_1_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 172:28:@2407.4]
  assign io_csb2glb_req_bits = NV_NVDLA_CSB_MASTER_for_client_1_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 172:28:@2406.4]
  assign io_csb2mcif_req_valid = NV_NVDLA_CSB_MASTER_for_client_2_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 183:29:@2420.4]
  assign io_csb2mcif_req_bits = NV_NVDLA_CSB_MASTER_for_client_2_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 183:29:@2419.4]
  assign io_csb2cvif_req_valid = NV_NVDLA_CSB_MASTER_for_client_3_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 195:37:@2433.4]
  assign io_csb2cvif_req_bits = NV_NVDLA_CSB_MASTER_for_client_3_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 195:37:@2432.4]
  assign io_csb2cdma_req_valid = NV_NVDLA_CSB_MASTER_for_client_4_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 222:29:@2446.4]
  assign io_csb2cdma_req_bits = NV_NVDLA_CSB_MASTER_for_client_4_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 222:29:@2445.4]
  assign io_csb2csc_req_valid = NV_NVDLA_CSB_MASTER_for_client_5_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 233:28:@2459.4]
  assign io_csb2csc_req_bits = NV_NVDLA_CSB_MASTER_for_client_5_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 233:28:@2458.4]
  assign io_csb2cmac_a_req_valid = NV_NVDLA_CSB_MASTER_for_client_6_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 244:31:@2472.4]
  assign io_csb2cmac_a_req_bits = NV_NVDLA_CSB_MASTER_for_client_6_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 244:31:@2471.4]
  assign io_csb2cmac_b_req_valid = NV_NVDLA_CSB_MASTER_for_client_7_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 255:31:@2485.4]
  assign io_csb2cmac_b_req_bits = NV_NVDLA_CSB_MASTER_for_client_7_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 255:31:@2484.4]
  assign io_csb2cacc_req_valid = NV_NVDLA_CSB_MASTER_for_client_8_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 266:29:@2498.4]
  assign io_csb2cacc_req_bits = NV_NVDLA_CSB_MASTER_for_client_8_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 266:29:@2497.4]
  assign io_csb2sdp_rdma_req_valid = NV_NVDLA_CSB_MASTER_for_client_9_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 277:33:@2511.4]
  assign io_csb2sdp_rdma_req_bits = NV_NVDLA_CSB_MASTER_for_client_9_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 277:33:@2510.4]
  assign io_csb2sdp_req_valid = NV_NVDLA_CSB_MASTER_for_client_10_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 288:28:@2524.4]
  assign io_csb2sdp_req_bits = NV_NVDLA_CSB_MASTER_for_client_10_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 288:28:@2523.4]
  assign io_csb2pdp_rdma_req_valid = NV_NVDLA_CSB_MASTER_for_client_11_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 300:41:@2537.4]
  assign io_csb2pdp_rdma_req_bits = NV_NVDLA_CSB_MASTER_for_client_11_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 300:41:@2536.4]
  assign io_csb2pdp_req_valid = NV_NVDLA_CSB_MASTER_for_client_12_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 315:36:@2550.4]
  assign io_csb2pdp_req_bits = NV_NVDLA_CSB_MASTER_for_client_12_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 315:36:@2549.4]
  assign io_csb2cdp_rdma_req_valid = NV_NVDLA_CSB_MASTER_for_client_13_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 330:41:@2563.4]
  assign io_csb2cdp_rdma_req_bits = NV_NVDLA_CSB_MASTER_for_client_13_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 330:41:@2562.4]
  assign io_csb2cdp_req_valid = NV_NVDLA_CSB_MASTER_for_client_14_io_csb2client_req_valid; // @[NV_NVDLA_csb_master.scala 344:36:@2576.4]
  assign io_csb2cdp_req_bits = NV_NVDLA_CSB_MASTER_for_client_14_io_csb2client_req_bits; // @[NV_NVDLA_csb_master.scala 344:36:@2575.4]
  assign NV_NVDLA_CSB_MASTER_falcon2csb_fifo_reset = io_nvdla_core_rstn == 1'h0; // @[:@2330.4]
  assign NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_wr_clk = io_nvdla_falcon_clk; // @[NV_NVDLA_csb_master.scala 100:28:@2331.4]
  assign NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_clk = io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 101:28:@2332.4]
  assign NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_wr_reset_ = io_nvdla_falcon_rstn; // @[NV_NVDLA_csb_master.scala 102:31:@2333.4]
  assign NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_reset_ = io_nvdla_core_rstn; // @[NV_NVDLA_csb_master.scala 103:31:@2334.4]
  assign NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_wr_req = io_csb2nvdla_valid; // @[NV_NVDLA_csb_master.scala 107:28:@2336.4]
  assign NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_wr_data = {_T_574,_T_573}; // @[NV_NVDLA_csb_master.scala 108:29:@2337.4]
  assign NV_NVDLA_CSB_MASTER_csb2falcon_fifo_reset = io_nvdla_core_rstn == 1'h0; // @[:@2344.4]
  assign NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_wr_clk = io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 119:28:@2345.4]
  assign NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_wr_reset_ = io_nvdla_core_rstn; // @[NV_NVDLA_csb_master.scala 121:31:@2347.4]
  assign NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_rd_clk = io_nvdla_falcon_clk; // @[NV_NVDLA_csb_master.scala 120:28:@2346.4]
  assign NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_rd_reset_ = io_nvdla_falcon_rstn; // @[NV_NVDLA_csb_master.scala 122:31:@2348.4]
  assign NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_wr_req = _T_795 | _T_671; // @[NV_NVDLA_csb_master.scala 125:28:@2350.4]
  assign NV_NVDLA_CSB_MASTER_csb2falcon_fifo_io_wr_data = _T_780[33:0]; // @[NV_NVDLA_csb_master.scala 126:29:@2351.4]
  assign NV_NVDLA_CSB_MASTER_for_client_reset = io_nvdla_core_rstn == 1'h0; // @[:@2385.4]
  assign NV_NVDLA_CSB_MASTER_for_client_io_nvdla_core_clk = io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 156:35:@2386.4]
  assign NV_NVDLA_CSB_MASTER_for_client_io_core_req_pop_valid = NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_req; // @[NV_NVDLA_csb_master.scala 157:39:@2387.4]
  assign NV_NVDLA_CSB_MASTER_for_client_io_core_byte_addr = {_T_599,2'h0}; // @[NV_NVDLA_csb_master.scala 158:35:@2388.4]
  assign NV_NVDLA_CSB_MASTER_for_client_io_core_req_pd_d1 = _T_607; // @[NV_NVDLA_csb_master.scala 160:35:@2390.4]
  assign NV_NVDLA_CSB_MASTER_for_client_io_csb2client_req_ready = io_csb2cfgrom_req_ready; // @[NV_NVDLA_csb_master.scala 161:31:@2395.4]
  assign NV_NVDLA_CSB_MASTER_for_client_io_csb2client_resp_valid = io_csb2cfgrom_resp_valid; // @[NV_NVDLA_csb_master.scala 161:31:@2392.4]
  assign NV_NVDLA_CSB_MASTER_for_client_io_csb2client_resp_bits = io_csb2cfgrom_resp_bits; // @[NV_NVDLA_csb_master.scala 161:31:@2391.4]
  assign NV_NVDLA_CSB_MASTER_for_client_1_reset = io_nvdla_core_rstn == 1'h0; // @[:@2398.4]
  assign NV_NVDLA_CSB_MASTER_for_client_1_io_nvdla_core_clk = io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 167:32:@2399.4]
  assign NV_NVDLA_CSB_MASTER_for_client_1_io_core_req_pop_valid = NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_req; // @[NV_NVDLA_csb_master.scala 168:36:@2400.4]
  assign NV_NVDLA_CSB_MASTER_for_client_1_io_core_byte_addr = {_T_599,2'h0}; // @[NV_NVDLA_csb_master.scala 169:32:@2401.4]
  assign NV_NVDLA_CSB_MASTER_for_client_1_io_core_req_pd_d1 = _T_607; // @[NV_NVDLA_csb_master.scala 171:32:@2403.4]
  assign NV_NVDLA_CSB_MASTER_for_client_1_io_csb2client_req_ready = io_csb2glb_req_ready; // @[NV_NVDLA_csb_master.scala 172:28:@2408.4]
  assign NV_NVDLA_CSB_MASTER_for_client_1_io_csb2client_resp_valid = io_csb2glb_resp_valid; // @[NV_NVDLA_csb_master.scala 172:28:@2405.4]
  assign NV_NVDLA_CSB_MASTER_for_client_1_io_csb2client_resp_bits = io_csb2glb_resp_bits; // @[NV_NVDLA_csb_master.scala 172:28:@2404.4]
  assign NV_NVDLA_CSB_MASTER_for_client_2_reset = io_nvdla_core_rstn == 1'h0; // @[:@2411.4]
  assign NV_NVDLA_CSB_MASTER_for_client_2_io_nvdla_core_clk = io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 178:33:@2412.4]
  assign NV_NVDLA_CSB_MASTER_for_client_2_io_core_req_pop_valid = NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_req; // @[NV_NVDLA_csb_master.scala 179:37:@2413.4]
  assign NV_NVDLA_CSB_MASTER_for_client_2_io_core_byte_addr = {_T_599,2'h0}; // @[NV_NVDLA_csb_master.scala 180:33:@2414.4]
  assign NV_NVDLA_CSB_MASTER_for_client_2_io_core_req_pd_d1 = _T_607; // @[NV_NVDLA_csb_master.scala 182:33:@2416.4]
  assign NV_NVDLA_CSB_MASTER_for_client_2_io_csb2client_req_ready = io_csb2mcif_req_ready; // @[NV_NVDLA_csb_master.scala 183:29:@2421.4]
  assign NV_NVDLA_CSB_MASTER_for_client_2_io_csb2client_resp_valid = io_csb2mcif_resp_valid; // @[NV_NVDLA_csb_master.scala 183:29:@2418.4]
  assign NV_NVDLA_CSB_MASTER_for_client_2_io_csb2client_resp_bits = io_csb2mcif_resp_bits; // @[NV_NVDLA_csb_master.scala 183:29:@2417.4]
  assign NV_NVDLA_CSB_MASTER_for_client_3_reset = io_nvdla_core_rstn == 1'h0; // @[:@2424.4]
  assign NV_NVDLA_CSB_MASTER_for_client_3_io_nvdla_core_clk = io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 190:41:@2425.4]
  assign NV_NVDLA_CSB_MASTER_for_client_3_io_core_req_pop_valid = NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_req; // @[NV_NVDLA_csb_master.scala 191:45:@2426.4]
  assign NV_NVDLA_CSB_MASTER_for_client_3_io_core_byte_addr = {_T_599,2'h0}; // @[NV_NVDLA_csb_master.scala 192:41:@2427.4]
  assign NV_NVDLA_CSB_MASTER_for_client_3_io_core_req_pd_d1 = _T_607; // @[NV_NVDLA_csb_master.scala 194:41:@2429.4]
  assign NV_NVDLA_CSB_MASTER_for_client_3_io_csb2client_req_ready = io_csb2cvif_req_ready; // @[NV_NVDLA_csb_master.scala 195:37:@2434.4]
  assign NV_NVDLA_CSB_MASTER_for_client_3_io_csb2client_resp_valid = io_csb2cvif_resp_valid; // @[NV_NVDLA_csb_master.scala 195:37:@2431.4]
  assign NV_NVDLA_CSB_MASTER_for_client_3_io_csb2client_resp_bits = io_csb2cvif_resp_bits; // @[NV_NVDLA_csb_master.scala 195:37:@2430.4]
  assign NV_NVDLA_CSB_MASTER_for_client_4_reset = io_nvdla_core_rstn == 1'h0; // @[:@2437.4]
  assign NV_NVDLA_CSB_MASTER_for_client_4_io_nvdla_core_clk = io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 217:33:@2438.4]
  assign NV_NVDLA_CSB_MASTER_for_client_4_io_core_req_pop_valid = NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_req; // @[NV_NVDLA_csb_master.scala 218:37:@2439.4]
  assign NV_NVDLA_CSB_MASTER_for_client_4_io_core_byte_addr = {_T_599,2'h0}; // @[NV_NVDLA_csb_master.scala 219:33:@2440.4]
  assign NV_NVDLA_CSB_MASTER_for_client_4_io_core_req_pd_d1 = _T_607; // @[NV_NVDLA_csb_master.scala 221:33:@2442.4]
  assign NV_NVDLA_CSB_MASTER_for_client_4_io_csb2client_req_ready = io_csb2cdma_req_ready; // @[NV_NVDLA_csb_master.scala 222:29:@2447.4]
  assign NV_NVDLA_CSB_MASTER_for_client_4_io_csb2client_resp_valid = io_csb2cdma_resp_valid; // @[NV_NVDLA_csb_master.scala 222:29:@2444.4]
  assign NV_NVDLA_CSB_MASTER_for_client_4_io_csb2client_resp_bits = io_csb2cdma_resp_bits; // @[NV_NVDLA_csb_master.scala 222:29:@2443.4]
  assign NV_NVDLA_CSB_MASTER_for_client_5_reset = io_nvdla_core_rstn == 1'h0; // @[:@2450.4]
  assign NV_NVDLA_CSB_MASTER_for_client_5_io_nvdla_core_clk = io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 228:32:@2451.4]
  assign NV_NVDLA_CSB_MASTER_for_client_5_io_core_req_pop_valid = NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_req; // @[NV_NVDLA_csb_master.scala 229:36:@2452.4]
  assign NV_NVDLA_CSB_MASTER_for_client_5_io_core_byte_addr = {_T_599,2'h0}; // @[NV_NVDLA_csb_master.scala 230:32:@2453.4]
  assign NV_NVDLA_CSB_MASTER_for_client_5_io_core_req_pd_d1 = _T_607; // @[NV_NVDLA_csb_master.scala 232:32:@2455.4]
  assign NV_NVDLA_CSB_MASTER_for_client_5_io_csb2client_req_ready = io_csb2csc_req_ready; // @[NV_NVDLA_csb_master.scala 233:28:@2460.4]
  assign NV_NVDLA_CSB_MASTER_for_client_5_io_csb2client_resp_valid = io_csb2csc_resp_valid; // @[NV_NVDLA_csb_master.scala 233:28:@2457.4]
  assign NV_NVDLA_CSB_MASTER_for_client_5_io_csb2client_resp_bits = io_csb2csc_resp_bits; // @[NV_NVDLA_csb_master.scala 233:28:@2456.4]
  assign NV_NVDLA_CSB_MASTER_for_client_6_reset = io_nvdla_core_rstn == 1'h0; // @[:@2463.4]
  assign NV_NVDLA_CSB_MASTER_for_client_6_io_nvdla_core_clk = io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 239:35:@2464.4]
  assign NV_NVDLA_CSB_MASTER_for_client_6_io_core_req_pop_valid = NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_req; // @[NV_NVDLA_csb_master.scala 240:39:@2465.4]
  assign NV_NVDLA_CSB_MASTER_for_client_6_io_core_byte_addr = {_T_599,2'h0}; // @[NV_NVDLA_csb_master.scala 241:35:@2466.4]
  assign NV_NVDLA_CSB_MASTER_for_client_6_io_core_req_pd_d1 = _T_607; // @[NV_NVDLA_csb_master.scala 243:35:@2468.4]
  assign NV_NVDLA_CSB_MASTER_for_client_6_io_csb2client_req_ready = io_csb2cmac_a_req_ready; // @[NV_NVDLA_csb_master.scala 244:31:@2473.4]
  assign NV_NVDLA_CSB_MASTER_for_client_6_io_csb2client_resp_valid = io_csb2cmac_a_resp_valid; // @[NV_NVDLA_csb_master.scala 244:31:@2470.4]
  assign NV_NVDLA_CSB_MASTER_for_client_6_io_csb2client_resp_bits = io_csb2cmac_a_resp_bits; // @[NV_NVDLA_csb_master.scala 244:31:@2469.4]
  assign NV_NVDLA_CSB_MASTER_for_client_7_reset = io_nvdla_core_rstn == 1'h0; // @[:@2476.4]
  assign NV_NVDLA_CSB_MASTER_for_client_7_io_nvdla_core_clk = io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 250:35:@2477.4]
  assign NV_NVDLA_CSB_MASTER_for_client_7_io_core_req_pop_valid = NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_req; // @[NV_NVDLA_csb_master.scala 251:39:@2478.4]
  assign NV_NVDLA_CSB_MASTER_for_client_7_io_core_byte_addr = {_T_599,2'h0}; // @[NV_NVDLA_csb_master.scala 252:35:@2479.4]
  assign NV_NVDLA_CSB_MASTER_for_client_7_io_core_req_pd_d1 = _T_607; // @[NV_NVDLA_csb_master.scala 254:35:@2481.4]
  assign NV_NVDLA_CSB_MASTER_for_client_7_io_csb2client_req_ready = io_csb2cmac_b_req_ready; // @[NV_NVDLA_csb_master.scala 255:31:@2486.4]
  assign NV_NVDLA_CSB_MASTER_for_client_7_io_csb2client_resp_valid = io_csb2cmac_b_resp_valid; // @[NV_NVDLA_csb_master.scala 255:31:@2483.4]
  assign NV_NVDLA_CSB_MASTER_for_client_7_io_csb2client_resp_bits = io_csb2cmac_b_resp_bits; // @[NV_NVDLA_csb_master.scala 255:31:@2482.4]
  assign NV_NVDLA_CSB_MASTER_for_client_8_reset = io_nvdla_core_rstn == 1'h0; // @[:@2489.4]
  assign NV_NVDLA_CSB_MASTER_for_client_8_io_nvdla_core_clk = io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 261:33:@2490.4]
  assign NV_NVDLA_CSB_MASTER_for_client_8_io_core_req_pop_valid = NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_req; // @[NV_NVDLA_csb_master.scala 262:37:@2491.4]
  assign NV_NVDLA_CSB_MASTER_for_client_8_io_core_byte_addr = {_T_599,2'h0}; // @[NV_NVDLA_csb_master.scala 263:33:@2492.4]
  assign NV_NVDLA_CSB_MASTER_for_client_8_io_core_req_pd_d1 = _T_607; // @[NV_NVDLA_csb_master.scala 265:33:@2494.4]
  assign NV_NVDLA_CSB_MASTER_for_client_8_io_csb2client_req_ready = io_csb2cacc_req_ready; // @[NV_NVDLA_csb_master.scala 266:29:@2499.4]
  assign NV_NVDLA_CSB_MASTER_for_client_8_io_csb2client_resp_valid = io_csb2cacc_resp_valid; // @[NV_NVDLA_csb_master.scala 266:29:@2496.4]
  assign NV_NVDLA_CSB_MASTER_for_client_8_io_csb2client_resp_bits = io_csb2cacc_resp_bits; // @[NV_NVDLA_csb_master.scala 266:29:@2495.4]
  assign NV_NVDLA_CSB_MASTER_for_client_9_reset = io_nvdla_core_rstn == 1'h0; // @[:@2502.4]
  assign NV_NVDLA_CSB_MASTER_for_client_9_io_nvdla_core_clk = io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 272:37:@2503.4]
  assign NV_NVDLA_CSB_MASTER_for_client_9_io_core_req_pop_valid = NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_req; // @[NV_NVDLA_csb_master.scala 273:41:@2504.4]
  assign NV_NVDLA_CSB_MASTER_for_client_9_io_core_byte_addr = {_T_599,2'h0}; // @[NV_NVDLA_csb_master.scala 274:37:@2505.4]
  assign NV_NVDLA_CSB_MASTER_for_client_9_io_core_req_pd_d1 = _T_607; // @[NV_NVDLA_csb_master.scala 276:37:@2507.4]
  assign NV_NVDLA_CSB_MASTER_for_client_9_io_csb2client_req_ready = io_csb2sdp_rdma_req_ready; // @[NV_NVDLA_csb_master.scala 277:33:@2512.4]
  assign NV_NVDLA_CSB_MASTER_for_client_9_io_csb2client_resp_valid = io_csb2sdp_rdma_resp_valid; // @[NV_NVDLA_csb_master.scala 277:33:@2509.4]
  assign NV_NVDLA_CSB_MASTER_for_client_9_io_csb2client_resp_bits = io_csb2sdp_rdma_resp_bits; // @[NV_NVDLA_csb_master.scala 277:33:@2508.4]
  assign NV_NVDLA_CSB_MASTER_for_client_10_reset = io_nvdla_core_rstn == 1'h0; // @[:@2515.4]
  assign NV_NVDLA_CSB_MASTER_for_client_10_io_nvdla_core_clk = io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 283:32:@2516.4]
  assign NV_NVDLA_CSB_MASTER_for_client_10_io_core_req_pop_valid = NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_req; // @[NV_NVDLA_csb_master.scala 284:36:@2517.4]
  assign NV_NVDLA_CSB_MASTER_for_client_10_io_core_byte_addr = {_T_599,2'h0}; // @[NV_NVDLA_csb_master.scala 285:32:@2518.4]
  assign NV_NVDLA_CSB_MASTER_for_client_10_io_core_req_pd_d1 = _T_607; // @[NV_NVDLA_csb_master.scala 287:32:@2520.4]
  assign NV_NVDLA_CSB_MASTER_for_client_10_io_csb2client_req_ready = io_csb2sdp_req_ready; // @[NV_NVDLA_csb_master.scala 288:28:@2525.4]
  assign NV_NVDLA_CSB_MASTER_for_client_10_io_csb2client_resp_valid = io_csb2sdp_resp_valid; // @[NV_NVDLA_csb_master.scala 288:28:@2522.4]
  assign NV_NVDLA_CSB_MASTER_for_client_10_io_csb2client_resp_bits = io_csb2sdp_resp_bits; // @[NV_NVDLA_csb_master.scala 288:28:@2521.4]
  assign NV_NVDLA_CSB_MASTER_for_client_11_reset = io_nvdla_core_rstn == 1'h0; // @[:@2528.4]
  assign NV_NVDLA_CSB_MASTER_for_client_11_io_nvdla_core_clk = io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 295:45:@2529.4]
  assign NV_NVDLA_CSB_MASTER_for_client_11_io_core_req_pop_valid = NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_req; // @[NV_NVDLA_csb_master.scala 296:49:@2530.4]
  assign NV_NVDLA_CSB_MASTER_for_client_11_io_core_byte_addr = {_T_599,2'h0}; // @[NV_NVDLA_csb_master.scala 297:45:@2531.4]
  assign NV_NVDLA_CSB_MASTER_for_client_11_io_core_req_pd_d1 = _T_607; // @[NV_NVDLA_csb_master.scala 299:45:@2533.4]
  assign NV_NVDLA_CSB_MASTER_for_client_11_io_csb2client_req_ready = io_csb2pdp_rdma_req_ready; // @[NV_NVDLA_csb_master.scala 300:41:@2538.4]
  assign NV_NVDLA_CSB_MASTER_for_client_11_io_csb2client_resp_valid = io_csb2pdp_rdma_resp_valid; // @[NV_NVDLA_csb_master.scala 300:41:@2535.4]
  assign NV_NVDLA_CSB_MASTER_for_client_11_io_csb2client_resp_bits = io_csb2pdp_rdma_resp_bits; // @[NV_NVDLA_csb_master.scala 300:41:@2534.4]
  assign NV_NVDLA_CSB_MASTER_for_client_12_reset = io_nvdla_core_rstn == 1'h0; // @[:@2541.4]
  assign NV_NVDLA_CSB_MASTER_for_client_12_io_nvdla_core_clk = io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 310:40:@2542.4]
  assign NV_NVDLA_CSB_MASTER_for_client_12_io_core_req_pop_valid = NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_req; // @[NV_NVDLA_csb_master.scala 311:44:@2543.4]
  assign NV_NVDLA_CSB_MASTER_for_client_12_io_core_byte_addr = {_T_599,2'h0}; // @[NV_NVDLA_csb_master.scala 312:40:@2544.4]
  assign NV_NVDLA_CSB_MASTER_for_client_12_io_core_req_pd_d1 = _T_607; // @[NV_NVDLA_csb_master.scala 314:40:@2546.4]
  assign NV_NVDLA_CSB_MASTER_for_client_12_io_csb2client_req_ready = io_csb2pdp_req_ready; // @[NV_NVDLA_csb_master.scala 315:36:@2551.4]
  assign NV_NVDLA_CSB_MASTER_for_client_12_io_csb2client_resp_valid = io_csb2pdp_resp_valid; // @[NV_NVDLA_csb_master.scala 315:36:@2548.4]
  assign NV_NVDLA_CSB_MASTER_for_client_12_io_csb2client_resp_bits = io_csb2pdp_resp_bits; // @[NV_NVDLA_csb_master.scala 315:36:@2547.4]
  assign NV_NVDLA_CSB_MASTER_for_client_13_reset = io_nvdla_core_rstn == 1'h0; // @[:@2554.4]
  assign NV_NVDLA_CSB_MASTER_for_client_13_io_nvdla_core_clk = io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 325:45:@2555.4]
  assign NV_NVDLA_CSB_MASTER_for_client_13_io_core_req_pop_valid = NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_req; // @[NV_NVDLA_csb_master.scala 326:49:@2556.4]
  assign NV_NVDLA_CSB_MASTER_for_client_13_io_core_byte_addr = {_T_599,2'h0}; // @[NV_NVDLA_csb_master.scala 327:45:@2557.4]
  assign NV_NVDLA_CSB_MASTER_for_client_13_io_core_req_pd_d1 = _T_607; // @[NV_NVDLA_csb_master.scala 329:45:@2559.4]
  assign NV_NVDLA_CSB_MASTER_for_client_13_io_csb2client_req_ready = io_csb2cdp_rdma_req_ready; // @[NV_NVDLA_csb_master.scala 330:41:@2564.4]
  assign NV_NVDLA_CSB_MASTER_for_client_13_io_csb2client_resp_valid = io_csb2cdp_rdma_resp_valid; // @[NV_NVDLA_csb_master.scala 330:41:@2561.4]
  assign NV_NVDLA_CSB_MASTER_for_client_13_io_csb2client_resp_bits = io_csb2cdp_rdma_resp_bits; // @[NV_NVDLA_csb_master.scala 330:41:@2560.4]
  assign NV_NVDLA_CSB_MASTER_for_client_14_reset = io_nvdla_core_rstn == 1'h0; // @[:@2567.4]
  assign NV_NVDLA_CSB_MASTER_for_client_14_io_nvdla_core_clk = io_nvdla_core_clk; // @[NV_NVDLA_csb_master.scala 339:40:@2568.4]
  assign NV_NVDLA_CSB_MASTER_for_client_14_io_core_req_pop_valid = NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_req; // @[NV_NVDLA_csb_master.scala 340:44:@2569.4]
  assign NV_NVDLA_CSB_MASTER_for_client_14_io_core_byte_addr = {_T_599,2'h0}; // @[NV_NVDLA_csb_master.scala 341:40:@2570.4]
  assign NV_NVDLA_CSB_MASTER_for_client_14_io_core_req_pd_d1 = _T_607; // @[NV_NVDLA_csb_master.scala 343:40:@2572.4]
  assign NV_NVDLA_CSB_MASTER_for_client_14_io_csb2client_req_ready = io_csb2cdp_req_ready; // @[NV_NVDLA_csb_master.scala 344:36:@2577.4]
  assign NV_NVDLA_CSB_MASTER_for_client_14_io_csb2client_resp_valid = io_csb2cdp_resp_valid; // @[NV_NVDLA_csb_master.scala 344:36:@2574.4]
  assign NV_NVDLA_CSB_MASTER_for_client_14_io_csb2client_resp_bits = io_csb2cdp_resp_bits; // @[NV_NVDLA_csb_master.scala 344:36:@2573.4]
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
  _T_592 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_595 = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_598 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{`RANDOM}};
  _T_607 = _RAND_3[49:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_623 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_625 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_627 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_667 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_671 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_falcon_clk) begin
    if (_T_572) begin
      _T_592 <= 1'h0;
    end else begin
      _T_592 <= _T_585;
    end
    if (_T_572) begin
      _T_595 <= 32'h0;
    end else begin
      _T_595 <= _GEN_0[31:0];
    end
    if (_T_572) begin
      _T_598 <= 1'h0;
    end else begin
      _T_598 <= _T_589;
    end
  end
  always @(posedge io_nvdla_core_clk) begin
    if (_T_602) begin
      _T_607 <= NV_NVDLA_CSB_MASTER_falcon2csb_fifo_io_rd_data;
    end
    if (_T_572) begin
      _T_623 <= 1'h0;
    end else begin
      _T_623 <= _T_645;
    end
    if (_T_645) begin
      _T_625 <= _T_601;
    end
    if (_T_645) begin
      _T_627 <= _T_646;
    end
    if (_T_572) begin
      _T_667 <= 1'h0;
    end else begin
      if (_T_662) begin
        _T_667 <= _T_664;
      end
    end
    if (_T_572) begin
      _T_671 <= 1'h0;
    end else begin
      _T_671 <= _T_662;
    end
  end
endmodule
