// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_csb_master.v
//`include "simulate_x_tick.vh"
module NV_NVDLA_csb_master (
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
//
// NV_NVDLA_csb_master_ports.v
//
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

wrapper_csb_master wrapper_csb_master(
        .nvdla_core_clk(nvdla_core_clk),
        .nvdla_core_rstn(nvdla_core_rstn),
        .nvdla_falcon_clk(nvdla_falcon_clk),
        .nvdla_falcon_rstn(nvdla_falcon_rstn),
        .pwrbus_ram_pd(pwrbus_ram_pd),
        .csb2nvdla_valid(csb2nvdla_valid),
        .csb2nvdla_ready(csb2nvdla_ready),
        .csb2nvdla_addr(csb2nvdla_addr),
        .csb2nvdla_wdat(csb2nvdla_wdat),
        .csb2nvdla_write(csb2nvdla_write),
        .csb2nvdla_nposted(csb2nvdla_nposted),
        .nvdla2csb_valid(nvdla2csb_valid),
        .nvdla2csb_data(nvdla2csb_data),
        .nvdla2csb_wr_complete(nvdla2csb_wr_complete),
        .csb2cfgrom_req_pvld(csb2cfgrom_req_pvld),
        .csb2cfgrom_req_prdy(csb2cfgrom_req_prdy),
        .csb2cfgrom_req_pd(csb2cfgrom_req_pd),
        .cfgrom2csb_resp_valid(cfgrom2csb_resp_valid),
        .cfgrom2csb_resp_pd(cfgrom2csb_resp_pd),
        .csb2glb_req_pvld(csb2glb_req_pvld),
        .csb2glb_req_prdy(csb2glb_req_prdy),
        .csb2glb_req_pd(csb2glb_req_pd),
        .glb2csb_resp_valid(glb2csb_resp_valid),
        .glb2csb_resp_pd(glb2csb_resp_pd),
        .csb2mcif_req_pvld(csb2mcif_req_pvld),
        .csb2mcif_req_prdy(csb2mcif_req_prdy),
        .csb2mcif_req_pd(csb2mcif_req_pd),
        .mcif2csb_resp_valid(mcif2csb_resp_valid),
        .mcif2csb_resp_pd(mcif2csb_resp_pd),
        .csb2cvif_req_pvld(csb2cvif_req_pvld),
        .csb2cvif_req_prdy(csb2cvif_req_prdy),
        .csb2cvif_req_pd(csb2cvif_req_pd),
        .cvif2csb_resp_valid(cvif2csb_resp_valid),
        .cvif2csb_resp_pd(cvif2csb_resp_pd),
        .csb2cdma_req_pvld(csb2cdma_req_pvld),
        .csb2cdma_req_prdy(csb2cdma_req_prdy),
        .csb2cdma_req_pd(csb2cdma_req_pd),
        .cdma2csb_resp_valid(cdma2csb_resp_valid),
        .cdma2csb_resp_pd(cdma2csb_resp_pd),
        .csb2csc_req_pvld(csb2csc_req_pvld),
        .csb2csc_req_prdy(csb2csc_req_prdy),
        .csb2csc_req_pd(csb2csc_req_pd),
        .csc2csb_resp_valid(csc2csb_resp_valid),
        .csc2csb_resp_pd(csc2csb_resp_pd),
        .csb2cmac_a_req_pvld(csb2cmac_a_req_pvld),
        .csb2cmac_a_req_prdy(csb2cmac_a_req_prdy),
        .csb2cmac_a_req_pd(csb2cmac_a_req_pd),
        .cmac_a2csb_resp_valid(cmac_a2csb_resp_valid),
        .cmac_a2csb_resp_pd(cmac_a2csb_resp_pd),
        .csb2cmac_b_req_pvld(csb2cmac_b_req_pvld),
        .csb2cmac_b_req_prdy(csb2cmac_b_req_prdy),
        .csb2cmac_b_req_pd(csb2cmac_b_req_pd),
        .cmac_b2csb_resp_valid(cmac_b2csb_resp_valid),
        .cmac_b2csb_resp_pd(cmac_b2csb_resp_pd),
        .csb2cacc_req_pvld(csb2cacc_req_pvld),
        .csb2cacc_req_prdy(csb2cacc_req_prdy),
        .csb2cacc_req_pd(csb2cacc_req_pd),
        .cacc2csb_resp_valid(cacc2csb_resp_valid),
        .cacc2csb_resp_pd(cacc2csb_resp_pd),
        .csb2sdp_rdma_req_pvld(csb2sdp_rdma_req_pvld),
        .csb2sdp_rdma_req_prdy(csb2sdp_rdma_req_prdy),
        .csb2sdp_rdma_req_pd(csb2sdp_rdma_req_pd),
        .sdp_rdma2csb_resp_valid(sdp_rdma2csb_resp_valid),
        .sdp_rdma2csb_resp_pd(sdp_rdma2csb_resp_pd),
        .csb2sdp_req_pvld(csb2sdp_req_pvld),
        .csb2sdp_req_prdy(csb2sdp_req_prdy),
        .csb2sdp_req_pd(csb2sdp_req_pd),
        .sdp2csb_resp_valid(sdp2csb_resp_valid),
        .sdp2csb_resp_pd(sdp2csb_resp_pd),
        .csb2pdp_rdma_req_pvld(csb2pdp_rdma_req_pvld),
        .csb2pdp_rdma_req_prdy(csb2pdp_rdma_req_prdy),
        .csb2pdp_rdma_req_pd(csb2pdp_rdma_req_pd),
        .pdp_rdma2csb_resp_valid(pdp_rdma2csb_resp_valid),
        .pdp_rdma2csb_resp_pd(pdp_rdma2csb_resp_pd),
        .csb2pdp_req_pvld(csb2pdp_req_pvld),
        .csb2pdp_req_prdy(csb2pdp_req_prdy),
        .csb2pdp_req_pd(csb2pdp_req_pd),
        .pdp2csb_resp_valid(pdp2csb_resp_valid),
        .pdp2csb_resp_pd(pdp2csb_resp_pd),
        .csb2cdp_rdma_req_pvld(csb2cdp_rdma_req_pvld),
        .csb2cdp_rdma_req_prdy(csb2cdp_rdma_req_prdy),
        .csb2cdp_rdma_req_pd(csb2cdp_rdma_req_pd),
        .cdp_rdma2csb_resp_valid(cdp_rdma2csb_resp_valid),
        .cdp_rdma2csb_resp_pd(cdp_rdma2csb_resp_pd),
        .csb2cdp_req_pvld(csb2cdp_req_pvld),
        .csb2cdp_req_prdy(csb2cdp_req_prdy),
        .csb2cdp_req_pd(csb2cdp_req_pd),
        .cdp2csb_resp_valid(cdp2csb_resp_valid),
        .cdp2csb_resp_pd(cdp2csb_resp_pd)
);
endmodule


