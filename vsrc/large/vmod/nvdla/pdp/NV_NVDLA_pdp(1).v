// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_pdp.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_PDP_define.h
/////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////
//#ifdef NVDLA_FEATURE_DATA_TYPE_INT8
//#if ( NVDLA_PDP_THROUGHPUT  ==  8 )
//    #define LARGE_FIFO_RAM
//#endif
//#if ( NVDLA_PDP_THROUGHPUT == 1 )
//    #define SMALL_FIFO_RAM
//#endif
//#endif
module NV_NVDLA_pdp (
   dla_clk_ovr_on_sync //|< i
  ,global_clk_ovr_on_sync //|< i
  ,tmc2slcg_disable_clock_gating //|< i
  ,nvdla_core_clk //|< i
  ,nvdla_core_rstn //|< i
  ,csb2pdp_rdma_req_pvld //|< i
  ,csb2pdp_rdma_req_prdy //|> o
  ,csb2pdp_rdma_req_pd //|< i
  ,csb2pdp_req_pvld //|< i
  ,csb2pdp_req_prdy //|> o
  ,csb2pdp_req_pd //|< i
  ,cvif2pdp_rd_rsp_valid //|< i
  ,cvif2pdp_rd_rsp_ready //|> o
  ,cvif2pdp_rd_rsp_pd //|< i
  ,cvif2pdp_wr_rsp_complete //|< i
  ,pdp2cvif_rd_cdt_lat_fifo_pop //|> o
  ,pdp2cvif_rd_req_valid //|> o
  ,pdp2cvif_rd_req_ready //|< i
  ,pdp2cvif_rd_req_pd //|> o
  ,pdp2cvif_wr_req_valid //|> o
  ,pdp2cvif_wr_req_ready //|< i
  ,pdp2cvif_wr_req_pd //|> o
  ,mcif2pdp_rd_rsp_valid //|< i
  ,mcif2pdp_rd_rsp_ready //|> o
  ,mcif2pdp_rd_rsp_pd //|< i
  ,mcif2pdp_wr_rsp_complete //|< i
  ,pdp2csb_resp_valid //|> o
  ,pdp2csb_resp_pd //|> o
  ,pdp2glb_done_intr_pd //|> o
  ,pdp2mcif_rd_cdt_lat_fifo_pop //|> o
  ,pdp2mcif_rd_req_valid //|> o
  ,pdp2mcif_rd_req_ready //|< i
  ,pdp2mcif_rd_req_pd //|> o
  ,pdp2mcif_wr_req_valid //|> o
  ,pdp2mcif_wr_req_ready //|< i
  ,pdp2mcif_wr_req_pd //|> o
  ,pdp_rdma2csb_resp_valid //|> o
  ,pdp_rdma2csb_resp_pd //|> o
  ,pwrbus_ram_pd //|< i
  ,sdp2pdp_valid //|< i
  ,sdp2pdp_ready //|> o
  ,sdp2pdp_pd //|< i
  );
///////////////////////////////////////////////////////////////////////
input dla_clk_ovr_on_sync;
input global_clk_ovr_on_sync;
input tmc2slcg_disable_clock_gating;
 input nvdla_core_clk;
 input nvdla_core_rstn;
 input csb2pdp_rdma_req_pvld;
 output csb2pdp_rdma_req_prdy;
 input [62:0] csb2pdp_rdma_req_pd;
 input csb2pdp_req_pvld;
 output csb2pdp_req_prdy;
 input [62:0] csb2pdp_req_pd;
 input cvif2pdp_rd_rsp_valid;
 output cvif2pdp_rd_rsp_ready;
 input [( 256 + (256/8/32) )-1:0] cvif2pdp_rd_rsp_pd;
 input cvif2pdp_wr_rsp_complete;
 output pdp2cvif_rd_cdt_lat_fifo_pop;
 output pdp2cvif_rd_req_valid;
 input pdp2cvif_rd_req_ready;
 output [64 +14:0] pdp2cvif_rd_req_pd;
 output pdp2cvif_wr_req_valid;
 input pdp2cvif_wr_req_ready;
 output [( 256 + (256/8/32) + 1 )-1:0] pdp2cvif_wr_req_pd;
 input mcif2pdp_rd_rsp_valid;
 output mcif2pdp_rd_rsp_ready;
 input [( 256 + (256/8/32) )-1:0] mcif2pdp_rd_rsp_pd;
 input mcif2pdp_wr_rsp_complete;
 output pdp2csb_resp_valid;
 output [33:0] pdp2csb_resp_pd;
 output [1:0] pdp2glb_done_intr_pd;
 output pdp2mcif_rd_cdt_lat_fifo_pop;
 output pdp2mcif_rd_req_valid;
 input pdp2mcif_rd_req_ready;
 output [64 +14:0] pdp2mcif_rd_req_pd;
 output pdp2mcif_wr_req_valid;
 input pdp2mcif_wr_req_ready;
 output [( 256 + (256/8/32) + 1 )-1:0] pdp2mcif_wr_req_pd;
 output pdp_rdma2csb_resp_valid;
 output [33:0] pdp_rdma2csb_resp_pd;
 input [31:0] pwrbus_ram_pd;
 input sdp2pdp_valid;
 output sdp2pdp_ready;
 input [8*16 -1:0] sdp2pdp_pd;
///////////////////////////////////////////////////////////////////////
    wrapper_pdp wrapper_pdp(
        .dla_clk_ovr_on_sync(dla_clk_ovr_on_sync),
        .global_clk_ovr_on_sync(global_clk_ovr_on_sync),
        .tmc2slcg_disable_clock_gating(tmc2slcg_disable_clock_gating),
        .nvdla_core_clk(nvdla_core_clk),
        .nvdla_core_rstn(nvdla_core_rstn),
        .csb2pdp_rdma_req_pvld(csb2pdp_rdma_req_pvld),
        .csb2pdp_rdma_req_prdy(csb2pdp_rdma_req_prdy),
        .csb2pdp_rdma_req_pd(csb2pdp_rdma_req_pd),
        .csb2pdp_req_pvld(csb2pdp_req_pvld),
        .csb2pdp_req_prdy(csb2pdp_req_prdy),
        .csb2pdp_req_pd(csb2pdp_req_pd),
        .cvif2pdp_rd_rsp_valid(cvif2pdp_rd_rsp_valid),
        .cvif2pdp_rd_rsp_ready(cvif2pdp_rd_rsp_ready),
        .cvif2pdp_rd_rsp_pd(cvif2pdp_rd_rsp_pd),
        .cvif2pdp_wr_rsp_complete(cvif2pdp_wr_rsp_complete),
        .pdp2cvif_rd_cdt_lat_fifo_pop(pdp2cvif_rd_cdt_lat_fifo_pop),
        .pdp2cvif_rd_req_valid(pdp2cvif_rd_req_valid),
        .pdp2cvif_rd_req_ready(pdp2cvif_rd_req_ready),
        .pdp2cvif_rd_req_pd(pdp2cvif_rd_req_pd),
        .pdp2cvif_wr_req_valid(pdp2cvif_wr_req_valid),
        .pdp2cvif_wr_req_ready(pdp2cvif_wr_req_ready),
        .pdp2cvif_wr_req_pd(pdp2cvif_wr_req_pd),
        .mcif2pdp_rd_rsp_valid(mcif2pdp_rd_rsp_valid),
        .mcif2pdp_rd_rsp_ready(mcif2pdp_rd_rsp_ready),
        .mcif2pdp_rd_rsp_pd(mcif2pdp_rd_rsp_pd),
        .mcif2pdp_wr_rsp_complete(mcif2pdp_wr_rsp_complete),
        .pdp2csb_resp_valid(pdp2csb_resp_valid),
        .pdp2csb_resp_pd(pdp2csb_resp_pd),
        .pdp2glb_done_intr_pd(pdp2glb_done_intr_pd),
        .pdp2mcif_rd_cdt_lat_fifo_pop(pdp2mcif_rd_cdt_lat_fifo_pop),
        .pdp2mcif_rd_req_valid(pdp2mcif_rd_req_valid),
        .pdp2mcif_rd_req_ready(pdp2mcif_rd_req_ready),
        .pdp2mcif_rd_req_pd(pdp2mcif_rd_req_pd),
        .pdp2mcif_wr_req_valid(pdp2mcif_wr_req_valid),
        .pdp2mcif_wr_req_ready(pdp2mcif_wr_req_ready),
        .pdp2mcif_wr_req_pd(pdp2mcif_wr_req_pd),
        .pdp_rdma2csb_resp_valid(pdp_rdma2csb_resp_valid),
        .pdp_rdma2csb_resp_pd(pdp_rdma2csb_resp_pd),
        .pwrbus_ram_pd(pwrbus_ram_pd),
        .sdp2pdp_valid(sdp2pdp_valid),
        .sdp2pdp_ready(sdp2pdp_ready),
        .sdp2pdp_pd(sdp2pdp_pd),

    );
endmodule// NV_NVDLA_pdp
