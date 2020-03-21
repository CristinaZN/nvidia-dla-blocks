module wrapper_csb_master(
    nvdla_core_clk //|< i
    ,nvdla_core_rstn //|< i  
	 ,nvdla_falcon_clk //|< i
    ,nvdla_falcon_rstn //|< i
    ,pwrbus_ram_pd //|< i
    ,csb2nvdla_valid //|< i
    ,csb2nvdla_ready //|> o
    ,csb2nvdla_addr //|< i
    ,csb2nvdla_wdat //|< i
    ,csb2nvdla_write //|< i
    ,csb2nvdla_nposted //|< i
    ,nvdla2csb_valid //|> o
    ,nvdla2csb_data //|> o
    ,nvdla2csb_wr_complete //|> o
    ,csb2cfgrom_req_pvld //|> o
    ,csb2cfgrom_req_prdy //|< i
    ,csb2cfgrom_req_pd //|> o
    ,cfgrom2csb_resp_valid //|< i
    ,cfgrom2csb_resp_pd //|< i
    ,csb2glb_req_pvld //|> o
    ,csb2glb_req_prdy //|< i
    ,csb2glb_req_pd //|> o
    ,glb2csb_resp_valid //|< i
    ,glb2csb_resp_pd //|< i
    ,csb2mcif_req_pvld //|> o
    ,csb2mcif_req_prdy //|< i
    ,csb2mcif_req_pd //|> o
    ,mcif2csb_resp_valid //|< i
    ,mcif2csb_resp_pd //|< i
    ,csb2cvif_req_pvld //|> o
    ,csb2cvif_req_prdy //|< i
    ,csb2cvif_req_pd //|> o
    ,cvif2csb_resp_valid //|< i
    ,cvif2csb_resp_pd //|< i
    ,csb2cdma_req_pvld //|> o
    ,csb2cdma_req_prdy //|< i
    ,csb2cdma_req_pd //|> o
    ,cdma2csb_resp_valid //|< i
    ,cdma2csb_resp_pd //|< i
    ,csb2csc_req_pvld //|> o
    ,csb2csc_req_prdy //|< i
    ,csb2csc_req_pd //|> o
    ,csc2csb_resp_valid //|< i
    ,csc2csb_resp_pd //|< i
    ,csb2cmac_a_req_pvld //|> o
    ,csb2cmac_a_req_prdy //|< i
    ,csb2cmac_a_req_pd //|> o
    ,cmac_a2csb_resp_valid //|< i
    ,cmac_a2csb_resp_pd //|< i
    ,csb2cmac_b_req_pvld //|> o
    ,csb2cmac_b_req_prdy //|< i
    ,csb2cmac_b_req_pd //|> o
    ,cmac_b2csb_resp_valid //|< i
    ,cmac_b2csb_resp_pd //|< i
    ,csb2cacc_req_pvld //|> o
    ,csb2cacc_req_prdy //|< i
    ,csb2cacc_req_pd //|> o
    ,cacc2csb_resp_valid //|< i
    ,cacc2csb_resp_pd //|< i
    ,csb2sdp_rdma_req_pvld //|> o
    ,csb2sdp_rdma_req_prdy //|< i
    ,csb2sdp_rdma_req_pd //|> o
    ,sdp_rdma2csb_resp_valid //|< i
    ,sdp_rdma2csb_resp_pd //|< i
    ,csb2sdp_req_pvld //|> o
    ,csb2sdp_req_prdy //|< i
    ,csb2sdp_req_pd //|> o
    ,sdp2csb_resp_valid //|< i
    ,sdp2csb_resp_pd //|< i
    ,csb2pdp_rdma_req_pvld //|> o
    ,csb2pdp_rdma_req_prdy //|< i
    ,csb2pdp_rdma_req_pd //|> o
    ,pdp_rdma2csb_resp_valid //|< i
    ,pdp_rdma2csb_resp_pd //|< i
    ,csb2pdp_req_pvld //|> o
    ,csb2pdp_req_prdy //|< i
    ,csb2pdp_req_pd //|> o
    ,pdp2csb_resp_valid //|< i
    ,pdp2csb_resp_pd //|< i
    ,csb2cdp_rdma_req_pvld //|> o
    ,csb2cdp_rdma_req_prdy //|< i
    ,csb2cdp_rdma_req_pd //|> o
    ,cdp_rdma2csb_resp_valid //|< i
    ,cdp_rdma2csb_resp_pd //|< i
    ,csb2cdp_req_pvld //|> o
    ,csb2cdp_req_prdy //|< i
    ,csb2cdp_req_pd //|> o
    ,cdp2csb_resp_valid //|< i
    ,cdp2csb_resp_pd //|< i

);
//======================nvdla part============================
    input nvdla_core_clk;
    input nvdla_core_rstn;
    input nvdla_falcon_clk; /* csb2nvdla, nvdla2csb, nvdla2csb_wr */
    input nvdla_falcon_rstn; /* csb2nvdla, nvdla2csb, nvdla2csb_wr */
    input [31:0] pwrbus_ram_pd;
    input csb2nvdla_valid; /* data valid */
    output csb2nvdla_ready; /* data return handshake */
    input [15:0] csb2nvdla_addr;
    input [31:0] csb2nvdla_wdat;
    input csb2nvdla_write;
    input csb2nvdla_nposted;
    output nvdla2csb_valid; /* data valid */
    output [31:0] nvdla2csb_data;
    output nvdla2csb_wr_complete;
    output csb2cfgrom_req_pvld; /* data valid */
    input csb2cfgrom_req_prdy; /* data return handshake */
    output [62:0] csb2cfgrom_req_pd;
    input cfgrom2csb_resp_valid; /* data valid */
    input [33:0] cfgrom2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
    output csb2glb_req_pvld; /* data valid */
    input csb2glb_req_prdy; /* data return handshake */
    output [62:0] csb2glb_req_pd;
    input glb2csb_resp_valid; /* data valid */
    input [33:0] glb2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
    output csb2mcif_req_pvld; /* data valid */
    input csb2mcif_req_prdy; /* data return handshake */
    output [62:0] csb2mcif_req_pd;
    input mcif2csb_resp_valid; /* data valid */
    input [33:0] mcif2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
    output csb2cvif_req_pvld; /* data valid */
    input csb2cvif_req_prdy; /* data return handshake */
    output [62:0] csb2cvif_req_pd;
    input cvif2csb_resp_valid; /* data valid */
    input [33:0] cvif2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
    output csb2cdma_req_pvld; /* data valid */
    input csb2cdma_req_prdy; /* data return handshake */
    output [62:0] csb2cdma_req_pd;
    input cdma2csb_resp_valid; /* data valid */
    input [33:0] cdma2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
    output csb2csc_req_pvld; /* data valid */
    input csb2csc_req_prdy; /* data return handshake */
    output [62:0] csb2csc_req_pd;
    input csc2csb_resp_valid; /* data valid */
    input [33:0] csc2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
    output csb2cmac_a_req_pvld; /* data valid */
    input csb2cmac_a_req_prdy; /* data return handshake */
    output [62:0] csb2cmac_a_req_pd;
    input cmac_a2csb_resp_valid; /* data valid */
    input [33:0] cmac_a2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
    output csb2cmac_b_req_pvld; /* data valid */
    input csb2cmac_b_req_prdy; /* data return handshake */
    output [62:0] csb2cmac_b_req_pd;
    input cmac_b2csb_resp_valid; /* data valid */
    input [33:0] cmac_b2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
    output csb2cacc_req_pvld; /* data valid */
    input csb2cacc_req_prdy; /* data return handshake */
    output [62:0] csb2cacc_req_pd;
    input cacc2csb_resp_valid; /* data valid */
    input [33:0] cacc2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
    output csb2sdp_rdma_req_pvld; /* data valid */
    input csb2sdp_rdma_req_prdy; /* data return handshake */
    output [62:0] csb2sdp_rdma_req_pd;
    input sdp_rdma2csb_resp_valid; /* data valid */
    input [33:0] sdp_rdma2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
    output csb2sdp_req_pvld; /* data valid */
    input csb2sdp_req_prdy; /* data return handshake */
    output [62:0] csb2sdp_req_pd;
    input sdp2csb_resp_valid; /* data valid */
    input [33:0] sdp2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
    output csb2pdp_rdma_req_pvld; /* data valid */
    input csb2pdp_rdma_req_prdy; /* data return handshake */
    output [62:0] csb2pdp_rdma_req_pd;
    input pdp_rdma2csb_resp_valid; /* data valid */
    input [33:0] pdp_rdma2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
    output csb2pdp_req_pvld; /* data valid */
    input csb2pdp_req_prdy; /* data return handshake */
    output [62:0] csb2pdp_req_pd;
    input pdp2csb_resp_valid; /* data valid */
    input [33:0] pdp2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
    output csb2cdp_rdma_req_pvld; /* data valid */
    input csb2cdp_rdma_req_prdy; /* data return handshake */
    output [62:0] csb2cdp_rdma_req_pd;
    input cdp_rdma2csb_resp_valid; /* data valid */
    input [33:0] cdp_rdma2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
    output csb2cdp_req_pvld; /* data valid */
    input csb2cdp_req_prdy; /* data return handshake */
    output [62:0] csb2cdp_req_pd;
    input cdp2csb_resp_valid; /* data valid */
    input [33:0] cdp2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
//======================nvdla part end========================

//======================sodla part============================
    wire         clock; // @[:@2320.4]
    wire         reset; // @[:@2321.4]
    wire         io_nvdla_core_clk; // @[:@2322.4]
    wire         io_nvdla_falcon_clk; // @[:@2322.4]
    wire         io_nvdla_core_rstn; // @[:@2322.4]
    wire         io_nvdla_falcon_rstn; // @[:@2322.4]
    wire  [31:0] io_pwrbus_ram_pd; // @[:@2322.4]
    wire        io_csb2nvdla_ready; // @[:@2322.4]
    wire         io_csb2nvdla_valid; // @[:@2322.4]
    wire  [15:0] io_csb2nvdla_bits_addr; // @[:@2322.4]
    wire  [31:0] io_csb2nvdla_bits_wdat; // @[:@2322.4]
    wire         io_csb2nvdla_bits_write; // @[:@2322.4]
    wire         io_csb2nvdla_bits_nposted; // @[:@2322.4]
    wire        io_nvdla2csb_valid; // @[:@2322.4]
    wire [31:0] io_nvdla2csb_bits_data; // @[:@2322.4]
    wire        io_nvdla2csb_wr_complete; // @[:@2322.4]
    wire         io_csb2cfgrom_req_ready; // @[:@2322.4]
    wire        io_csb2cfgrom_req_valid; // @[:@2322.4]
    wire [62:0] io_csb2cfgrom_req_bits; // @[:@2322.4]
    wire         io_csb2cfgrom_resp_valid; // @[:@2322.4]
    wire  [33:0] io_csb2cfgrom_resp_bits; // @[:@2322.4]
    wire         io_csb2glb_req_ready; // @[:@2322.4]
    wire        io_csb2glb_req_valid; // @[:@2322.4]
    wire [62:0] io_csb2glb_req_bits; // @[:@2322.4]
    wire         io_csb2glb_resp_valid; // @[:@2322.4]
    wire  [33:0] io_csb2glb_resp_bits; // @[:@2322.4]
    wire         io_csb2mcif_req_ready; // @[:@2322.4]
    wire        io_csb2mcif_req_valid; // @[:@2322.4]
    wire [62:0] io_csb2mcif_req_bits; // @[:@2322.4]
    wire         io_csb2mcif_resp_valid; // @[:@2322.4]
    wire  [33:0] io_csb2mcif_resp_bits; // @[:@2322.4]
    wire         io_csb2cvif_req_ready; // @[:@2322.4]
    wire        io_csb2cvif_req_valid; // @[:@2322.4]
    wire [62:0] io_csb2cvif_req_bits; // @[:@2322.4]
    wire         io_csb2cvif_resp_valid; // @[:@2322.4]
    wire  [33:0] io_csb2cvif_resp_bits; // @[:@2322.4]
    wire         io_csb2cdma_req_ready; // @[:@2322.4]
    wire        io_csb2cdma_req_valid; // @[:@2322.4]
    wire [62:0] io_csb2cdma_req_bits; // @[:@2322.4]
    wire         io_csb2cdma_resp_valid; // @[:@2322.4]
    wire  [33:0] io_csb2cdma_resp_bits; // @[:@2322.4]
    wire         io_csb2csc_req_ready; // @[:@2322.4]
    wire        io_csb2csc_req_valid; // @[:@2322.4]
    wire [62:0] io_csb2csc_req_bits; // @[:@2322.4]
    wire         io_csb2csc_resp_valid; // @[:@2322.4]
    wire  [33:0] io_csb2csc_resp_bits; // @[:@2322.4]
    wire         io_csb2cmac_a_req_ready; // @[:@2322.4]
    wire        io_csb2cmac_a_req_valid; // @[:@2322.4]
    wire [62:0] io_csb2cmac_a_req_bits; // @[:@2322.4]
    wire         io_csb2cmac_a_resp_valid; // @[:@2322.4]
    wire  [33:0] io_csb2cmac_a_resp_bits; // @[:@2322.4]
    wire         io_csb2cmac_b_req_ready; // @[:@2322.4]
    wire        io_csb2cmac_b_req_valid; // @[:@2322.4]
    wire [62:0] io_csb2cmac_b_req_bits; // @[:@2322.4]
    wire         io_csb2cmac_b_resp_valid; // @[:@2322.4]
    wire  [33:0] io_csb2cmac_b_resp_bits; // @[:@2322.4]
    wire         io_csb2cacc_req_ready; // @[:@2322.4]
    wire        io_csb2cacc_req_valid; // @[:@2322.4]
    wire [62:0] io_csb2cacc_req_bits; // @[:@2322.4]
    wire         io_csb2cacc_resp_valid; // @[:@2322.4]
    wire  [33:0] io_csb2cacc_resp_bits; // @[:@2322.4]
    wire         io_csb2sdp_rdma_req_ready; // @[:@2322.4]
    wire        io_csb2sdp_rdma_req_valid; // @[:@2322.4]
    wire [62:0] io_csb2sdp_rdma_req_bits; // @[:@2322.4]
    wire         io_csb2sdp_rdma_resp_valid; // @[:@2322.4]
    wire  [33:0] io_csb2sdp_rdma_resp_bits; // @[:@2322.4]
    wire         io_csb2sdp_req_ready; // @[:@2322.4]
    wire        io_csb2sdp_req_valid; // @[:@2322.4]
    wire [62:0] io_csb2sdp_req_bits; // @[:@2322.4]
    wire         io_csb2sdp_resp_valid; // @[:@2322.4]
    wire  [33:0] io_csb2sdp_resp_bits; // @[:@2322.4]
    wire         io_csb2pdp_rdma_req_ready; // @[:@2322.4]
    wire        io_csb2pdp_rdma_req_valid; // @[:@2322.4]
    wire [62:0] io_csb2pdp_rdma_req_bits; // @[:@2322.4]
    wire         io_csb2pdp_rdma_resp_valid; // @[:@2322.4]
    wire  [33:0] io_csb2pdp_rdma_resp_bits; // @[:@2322.4]
    wire         io_csb2pdp_req_ready; // @[:@2322.4]
    wire        io_csb2pdp_req_valid; // @[:@2322.4]
    wire [62:0] io_csb2pdp_req_bits; // @[:@2322.4]
    wire         io_csb2pdp_resp_valid; // @[:@2322.4]
    wire  [33:0] io_csb2pdp_resp_bits; // @[:@2322.4]
    wire         io_csb2cdp_rdma_req_ready; // @[:@2322.4]
    wire        io_csb2cdp_rdma_req_valid; // @[:@2322.4]
    wire [62:0] io_csb2cdp_rdma_req_bits; // @[:@2322.4]
    wire         io_csb2cdp_rdma_resp_valid; // @[:@2322.4]
    wire  [33:0] io_csb2cdp_rdma_resp_bits; // @[:@2322.4]
    wire         io_csb2cdp_req_ready; // @[:@2322.4]
    wire        io_csb2cdp_req_valid; // @[:@2322.4]
    wire [62:0] io_csb2cdp_req_bits; // @[:@2322.4]
    wire         io_csb2cdp_resp_valid; // @[:@2322.4]
    wire  [33:0] io_csb2cdp_resp_bits ;// @[:@2322.4]
    //=====================sodla part end=========================
    //
    //===========connect nvdla_cmac to sodla_cmac=================

    assign         io_nvdla_core_clk=nvdla_core_clk;
    assign         io_nvdla_falcon_clk=nvdla_falcon_clk;
    assign         io_nvdla_core_rstn=nvdla_core_rstn;
    assign         io_nvdla_falcon_rstn=nvdla_falcon_rstn;
    assign   io_pwrbus_ram_pd=pwrbus_ram_pd;
    assign        io_csb2nvdla_ready=csb2nvdla_ready;
    assign         io_csb2nvdla_valid=csb2nvdla_valid;
    assign   io_csb2nvdla_bits_addr=csb2nvdla_addr;
    assign   io_csb2nvdla_bits_wdat=csb2nvdla_wdat;
    assign         io_csb2nvdla_bits_write=csb2nvdla_write;
    assign         io_csb2nvdla_bits_nposted=csb2nvdla_nposted;
    assign        io_nvdla2csb_valid=nvdla2csb_valid;
    assign  io_nvdla2csb_bits_data=nvdla2csb_data;
    assign        io_nvdla2csb_wr_complete=nvdla2csb_wr_complete;
    assign         io_csb2cfgrom_req_ready=csb2cfgrom_req_prdy;
    assign        io_csb2cfgrom_req_valid=csb2cfgrom_req_pvld;
    assign  io_csb2cfgrom_req_bits=csb2cfgrom_req_pd;
    assign         io_csb2cfgrom_resp_valid=cfgrom2csb_resp_valid;
    assign   io_csb2cfgrom_resp_bits=cfgrom2csb_resp_pd;
    assign         io_csb2glb_req_ready=csb2glb_req_prdy;
    assign        io_csb2glb_req_valid=csb2glb_req_pvld;
    assign  io_csb2glb_req_bits=csb2glb_req_pd;
    assign         io_csb2glb_resp_valid=glb2csb_resp_valid;
    assign   io_csb2glb_resp_bits=glb2csb_resp_pd;
    assign         io_csb2mcif_req_ready=csb2mcif_req_prdy;
    assign        io_csb2mcif_req_valid=csb2mcif_req_pvld;
    assign  io_csb2mcif_req_bits=csb2mcif_req_pd;
    assign         io_csb2mcif_resp_valid=mcif2csb_resp_valid;
    assign   io_csb2mcif_resp_bits=mcif2csb_resp_pd;
    assign         io_csb2cvif_req_ready=csb2cvif_req_prdy;
    assign        io_csb2cvif_req_valid=csb2cvif_req_pvld;
    assign  io_csb2cvif_req_bits=csb2cvif_req_pd;
    assign         io_csb2cvif_resp_valid=cvif2csb_resp_valid;
    assign   io_csb2cvif_resp_bits=cvif2csb_resp_pd;
    assign         io_csb2cdma_req_ready=csb2cdma_req_prdy;
    assign        io_csb2cdma_req_valid=csb2cdma_req_pvld;
    assign  io_csb2cdma_req_bits=csb2cdma_req_pd;
    assign         io_csb2cdma_resp_valid=cdma2csb_resp_valid;
    assign   io_csb2cdma_resp_bits=cdma2csb_resp_pd;
    assign         io_csb2csc_req_ready=csb2csc_req_prdy;
    assign        io_csb2csc_req_valid=csb2csc_req_pvld;
    assign  io_csb2csc_req_bits=csb2csc_req_pd;
    assign         io_csb2csc_resp_valid=csc2csb_resp_valid;
    assign   io_csb2csc_resp_bits=csc2csb_resp_pd;
    assign         io_csb2cmac_a_req_ready=csb2cmac_a_req_prdy;
    assign        io_csb2cmac_a_req_valid=csb2cmac_a_req_pvld;
    assign  io_csb2cmac_a_req_bits=csb2cmac_a_req_pd;
    assign         io_csb2cmac_a_resp_valid=cmac_a2csb_resp_valid;
    assign   io_csb2cmac_a_resp_bits=cmac_a2csb_resp_pd;
    assign         io_csb2cmac_b_req_ready=csb2cmac_b_req_prdy;
    assign        io_csb2cmac_b_req_valid=csb2cmac_b_req_pvld;
    assign  io_csb2cmac_b_req_bits=csb2cmac_b_req_pd;
    assign         io_csb2cmac_b_resp_valid=cmac_b2csb_resp_valid;
    assign   io_csb2cmac_b_resp_bits=cmac_b2csb_resp_pd;
    assign         io_csb2cacc_req_ready=csb2cacc_req_prdy;
    assign        io_csb2cacc_req_valid=csb2cacc_req_pvld;
    assign  io_csb2cacc_req_bits=csb2cacc_req_pd;
    assign         io_csb2cacc_resp_valid=cacc2csb_resp_valid;
    assign   io_csb2cacc_resp_bits=cacc2csb_resp_pd;
    assign         io_csb2sdp_rdma_req_ready=csb2sdp_rdma_req_prdy;
    assign        io_csb2sdp_rdma_req_valid=csb2sdp_rdma_req_pvld;
    assign  io_csb2sdp_rdma_req_bits=csb2sdp_rdma_req_pd;
    assign         io_csb2sdp_rdma_resp_valid=sdp_rdma2csb_resp_valid;
    assign   io_csb2sdp_rdma_resp_bits=sdp_rdma2csb_resp_pd;
    assign         io_csb2sdp_req_ready=csb2sdp_req_prdy;
    assign        io_csb2sdp_req_valid=csb2sdp_req_pvld;
    assign  io_csb2sdp_req_bits=csb2sdp_req_pd;
    assign         io_csb2sdp_resp_valid=sdp2csb_resp_valid;
    assign   io_csb2sdp_resp_bits=sdp2csb_resp_pd;
    assign         io_csb2pdp_rdma_req_ready=csb2pdp_rdma_req_prdy;
    assign        io_csb2pdp_rdma_req_valid=csb2pdp_rdma_req_pvld;
    assign  io_csb2pdp_rdma_req_bits=csb2pdp_rdma_req_pd;
    assign         io_csb2pdp_rdma_resp_valid=pdp_rdma2csb_resp_valid;
    assign   io_csb2pdp_rdma_resp_bits=pdp_rdma2csb_resp_pd;
    assign         io_csb2pdp_req_ready=csb2pdp_req_prdy;
    assign        io_csb2pdp_req_valid=csb2pdp_req_pvld;
    assign  io_csb2pdp_req_bits=csb2pdp_req_pd;
    assign         io_csb2pdp_resp_valid=pdp2csb_resp_valid;
    assign   io_csb2pdp_resp_bits=pdp2csb_resp_pd;
    assign         io_csb2cdp_rdma_req_ready=csb2cdp_rdma_req_prdy;
    assign        io_csb2cdp_rdma_req_valid=csb2cdp_rdma_req_pvld;
    assign  io_csb2cdp_rdma_req_bits=csb2cdp_rdma_req_pd;
    assign         io_csb2cdp_rdma_resp_valid=cdp_rdma2csb_resp_valid;
    assign   io_csb2cdp_rdma_resp_bits=cdp_rdma2csb_resp_pd;
    assign         io_csb2cdp_req_ready=csb2cdp_req_prdy;
    assign        io_csb2cdp_req_valid=csb2cdp_req_pvld;
    assign  io_csb2cdp_req_bits=csb2cdp_req_pd;
    assign         io_csb2cdp_resp_valid=cdp2csb_resp_valid;
    assign   io_csb2cdp_resp_bits=cdp2csb_resp_pd;

    NV_soDLA_csb_master NV_soDLA_csb_master(

        .io_nvdla_core_clk(io_nvdla_core_clk),
        .io_nvdla_falcon_clk(io_nvdla_falcon_clk),
        .io_nvdla_core_rstn(io_nvdla_core_rstn),
        .io_nvdla_falcon_rstn(io_nvdla_falcon_rstn),
        .io_pwrbus_ram_pd(io_pwrbus_ram_pd),
        .io_csb2nvdla_ready(io_csb2nvdla_ready),
        .io_csb2nvdla_valid(io_csb2nvdla_valid),
        .io_csb2nvdla_bits_addr(io_csb2nvdla_bits_addr),
        .io_csb2nvdla_bits_wdat(io_csb2nvdla_bits_wdat),
        .io_csb2nvdla_bits_write(io_csb2nvdla_bits_write),
        .io_csb2nvdla_bits_nposted(io_csb2nvdla_bits_nposted),
        .io_nvdla2csb_valid(io_nvdla2csb_valid),
        .io_nvdla2csb_bits_data(io_nvdla2csb_bits_data),
        .io_nvdla2csb_wr_complete(io_nvdla2csb_wr_complete),
        .io_csb2cfgrom_req_ready(io_csb2cfgrom_req_ready),
        .io_csb2cfgrom_req_valid(io_csb2cfgrom_req_valid),
        .io_csb2cfgrom_req_bits(io_csb2cfgrom_req_bits),
        .io_csb2cfgrom_resp_valid(io_csb2cfgrom_resp_valid),
        .io_csb2cfgrom_resp_bits(io_csb2cfgrom_resp_bits),
        .io_csb2glb_req_ready(io_csb2glb_req_ready),
        .io_csb2glb_req_valid(io_csb2glb_req_valid),
        .io_csb2glb_req_bits(io_csb2glb_req_bits),
        .io_csb2glb_resp_valid(io_csb2glb_resp_valid),
        .io_csb2glb_resp_bits(io_csb2glb_resp_bits),
        .io_csb2mcif_req_ready(io_csb2mcif_req_ready),
        .io_csb2mcif_req_valid(io_csb2mcif_req_valid),
        .io_csb2mcif_req_bits(io_csb2mcif_req_bits),
        .io_csb2mcif_resp_valid(io_csb2mcif_resp_valid),
        .io_csb2mcif_resp_bits(io_csb2mcif_resp_bits),
        .io_csb2cvif_req_ready(io_csb2cvif_req_ready),
        .io_csb2cvif_req_valid(io_csb2cvif_req_valid),
        .io_csb2cvif_req_bits(io_csb2cvif_req_bits),
        .io_csb2cvif_resp_valid(io_csb2cvif_resp_valid),
        .io_csb2cvif_resp_bits(io_csb2cvif_resp_bits),
        .io_csb2cdma_req_ready(io_csb2cdma_req_ready),
        .io_csb2cdma_req_valid(io_csb2cdma_req_valid),
        .io_csb2cdma_req_bits(io_csb2cdma_req_bits),
        .io_csb2cdma_resp_valid(io_csb2cdma_resp_valid),
        .io_csb2cdma_resp_bits(io_csb2cdma_resp_bits),
        .io_csb2csc_req_ready(io_csb2csc_req_ready),
        .io_csb2csc_req_valid(io_csb2csc_req_valid),
        .io_csb2csc_req_bits(io_csb2csc_req_bits),
        .io_csb2csc_resp_valid(io_csb2csc_resp_valid),
        .io_csb2csc_resp_bits(io_csb2csc_resp_bits),
        .io_csb2cmac_a_req_ready(io_csb2cmac_a_req_ready),
        .io_csb2cmac_a_req_valid(io_csb2cmac_a_req_valid),
        .io_csb2cmac_a_req_bits(io_csb2cmac_a_req_bits),
        .io_csb2cmac_a_resp_valid(io_csb2cmac_a_resp_valid),
        .io_csb2cmac_a_resp_bits(io_csb2cmac_a_resp_bits),
        .io_csb2cmac_b_req_ready(io_csb2cmac_b_req_ready),
        .io_csb2cmac_b_req_valid(io_csb2cmac_b_req_valid),
        .io_csb2cmac_b_req_bits(io_csb2cmac_b_req_bits),
        .io_csb2cmac_b_resp_valid(io_csb2cmac_b_resp_valid),
        .io_csb2cmac_b_resp_bits(io_csb2cmac_b_resp_bits),
        .io_csb2cacc_req_ready(io_csb2cacc_req_ready),
        .io_csb2cacc_req_valid(io_csb2cacc_req_valid),
        .io_csb2cacc_req_bits(io_csb2cacc_req_bits),
        .io_csb2cacc_resp_valid(io_csb2cacc_resp_valid),
        .io_csb2cacc_resp_bits(io_csb2cacc_resp_bits),
        .io_csb2sdp_rdma_req_ready(io_csb2sdp_rdma_req_ready),
        .io_csb2sdp_rdma_req_valid(io_csb2sdp_rdma_req_valid),
        .io_csb2sdp_rdma_req_bits(io_csb2sdp_rdma_req_bits),
        .io_csb2sdp_rdma_resp_valid(io_csb2sdp_rdma_resp_valid),
        .io_csb2sdp_rdma_resp_bits(io_csb2sdp_rdma_resp_bits),
        .io_csb2sdp_req_ready(io_csb2sdp_req_ready),
        .io_csb2sdp_req_valid(io_csb2sdp_req_valid),
        .io_csb2sdp_req_bits(io_csb2sdp_req_bits),
        .io_csb2sdp_resp_valid(io_csb2sdp_resp_valid),
        .io_csb2sdp_resp_bits(io_csb2sdp_resp_bits),
        .io_csb2pdp_rdma_req_ready(io_csb2pdp_rdma_req_ready),
        .io_csb2pdp_rdma_req_valid(io_csb2pdp_rdma_req_valid),
        .io_csb2pdp_rdma_req_bits(io_csb2pdp_rdma_req_bits),
        .io_csb2pdp_rdma_resp_valid(io_csb2pdp_rdma_resp_valid),
        .io_csb2pdp_rdma_resp_bits(io_csb2pdp_rdma_resp_bits),
        .io_csb2pdp_req_ready(io_csb2pdp_req_ready),
        .io_csb2pdp_req_valid(io_csb2pdp_req_valid),
        .io_csb2pdp_req_bits(io_csb2pdp_req_bits),
        .io_csb2pdp_resp_valid(io_csb2pdp_resp_valid),
        .io_csb2pdp_resp_bits(io_csb2pdp_resp_bits),
        .io_csb2cdp_rdma_req_ready(io_csb2cdp_rdma_req_ready),
        .io_csb2cdp_rdma_req_valid(io_csb2cdp_rdma_req_valid),
        .io_csb2cdp_rdma_req_bits(io_csb2cdp_rdma_req_bits),
        .io_csb2cdp_rdma_resp_valid(io_csb2cdp_rdma_resp_valid),
        .io_csb2cdp_rdma_resp_bits(io_csb2cdp_rdma_resp_bits),
        .io_csb2cdp_req_ready(io_csb2cdp_req_ready),
        .io_csb2cdp_req_valid(io_csb2cdp_req_valid),
        .io_csb2cdp_req_bits(io_csb2cdp_req_bits),
        .io_csb2cdp_resp_valid(io_csb2cdp_resp_valid),
        .io_csb2cdp_resp_bits(io_csb2cdp_resp_bits)

    );

endmodule