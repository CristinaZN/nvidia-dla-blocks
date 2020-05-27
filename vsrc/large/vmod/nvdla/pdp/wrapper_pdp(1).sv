module wrapper_pdp(
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
//======================nvdla part============================
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

//======================nvdla part end========================

//======================sodla part============================
    wire          clock; // @[:@21359.4]
    wire          reset; // @[:@21360.4]
    wire          io_nvdla_clock_nvdla_core_clk; // @[:@21361.4]
    wire          io_nvdla_clock_dla_clk_ovr_on_sync; // @[:@21361.4]
    wire          io_nvdla_clock_global_clk_ovr_on_sync; // @[:@21361.4]
    wire          io_nvdla_clock_tmc2slcg_disable_clock_gating; // @[:@21361.4]
    wire          io_nvdla_core_rstn; // @[:@21361.4]
    wire  [31:0]  io_pwrbus_ram_pd; // @[:@21361.4]
    wire         io_csb2pdp_rdma_req_ready; // @[:@21361.4]
    wire          io_csb2pdp_rdma_req_valid; // @[:@21361.4]
    wire  [62:0]  io_csb2pdp_rdma_req_bits; // @[:@21361.4]
    wire         io_csb2pdp_rdma_resp_valid; // @[:@21361.4]
    wire [33:0]  io_csb2pdp_rdma_resp_bits; // @[:@21361.4]
    wire         io_csb2pdp_req_ready; // @[:@21361.4]
    wire          io_csb2pdp_req_valid; // @[:@21361.4]
    wire  [62:0]  io_csb2pdp_req_bits; // @[:@21361.4]
    wire         io_csb2pdp_resp_valid; // @[:@21361.4]
    wire [33:0]  io_csb2pdp_resp_bits; // @[:@21361.4]
    wire          io_pdp2cvif_rd_req_pd_ready; // @[:@21361.4]
    wire         io_pdp2cvif_rd_req_pd_valid; // @[:@21361.4]
    wire [78:0]  io_pdp2cvif_rd_req_pd_bits; // @[:@21361.4]
    wire          io_pdp2cvif_wr_req_pd_ready; // @[:@21361.4]
    wire         io_pdp2cvif_wr_req_pd_valid; // @[:@21361.4]
    wire [257:0] io_pdp2cvif_wr_req_pd_bits; // @[:@21361.4]
    wire         io_cvif2pdp_rd_rsp_pd_ready; // @[:@21361.4]
    wire          io_cvif2pdp_rd_rsp_pd_valid; // @[:@21361.4]
    wire  [256:0] io_cvif2pdp_rd_rsp_pd_bits; // @[:@21361.4]
    wire         io_pdp2cvif_rd_cdt_lat_fifo_pop; // @[:@21361.4]
    wire          io_cvif2pdp_wr_rsp_complete; // @[:@21361.4]
    wire          io_pdp2mcif_rd_req_pd_ready; // @[:@21361.4]
    wire         io_pdp2mcif_rd_req_pd_valid; // @[:@21361.4]
    wire [78:0]  io_pdp2mcif_rd_req_pd_bits; // @[:@21361.4]
    wire          io_pdp2mcif_wr_req_pd_ready; // @[:@21361.4]
    wire         io_pdp2mcif_wr_req_pd_valid; // @[:@21361.4]
    wire [257:0] io_pdp2mcif_wr_req_pd_bits; // @[:@21361.4]
    wire         io_mcif2pdp_rd_rsp_pd_ready; // @[:@21361.4]
    wire          io_mcif2pdp_rd_rsp_pd_valid; // @[:@21361.4]
    wire  [256:0] io_mcif2pdp_rd_rsp_pd_bits; // @[:@21361.4]
    wire         io_pdp2mcif_rd_cdt_lat_fifo_pop; // @[:@21361.4]
    wire          io_mcif2pdp_wr_rsp_complete; // @[:@21361.4]
    wire [1:0]   io_pdp2glb_done_intr_pd; // @[:@21361.4]
    wire         io_sdp2pdp_pd_ready; // @[:@21361.4]
    wire          io_sdp2pdp_pd_valid; // @[:@21361.4]
    wire  [127:0] io_sdp2pdp_pd_bits; // @[:@21361.4]
    //=====================sodla part end=========================
    //
    //===========connect nvdla_cmac to sodla_cmac=================

    assign          io_nvdla_clock_nvdla_core_clk=nvdla_core_clk;
    assign          io_nvdla_clock_dla_clk_ovr_on_sync=dla_clk_ovr_on_sync;
    assign          io_nvdla_clock_global_clk_ovr_on_sync=global_clk_ovr_on_sync;
    assign          io_nvdla_clock_tmc2slcg_disable_clock_gating=tmc2slcg_disable_clock_gating;
    assign          io_nvdla_core_rstn=nvdla_core_rstn;
    assign    io_pwrbus_ram_pd=pwrbus_ram_pd;
    assign         io_csb2pdp_rdma_req_ready=csb2pdp_rdma_req_prdy;
    assign          io_csb2pdp_rdma_req_valid=csb2pdp_rdma_req_pvld;
    assign    io_csb2pdp_rdma_req_bits=csb2pdp_rdma_req_pd;
    assign         io_csb2pdp_rdma_resp_valid=pdp_rdma2csb_resp_valid;
    assign   io_csb2pdp_rdma_resp_bits=pdp_rdma2csb_resp_pd;
    assign         io_csb2pdp_req_ready=csb2pdp_req_prdy;
    assign          io_csb2pdp_req_valid=csb2pdp_req_pvld;
    assign    io_csb2pdp_req_bits=csb2pdp_req_pd;
    assign         io_csb2pdp_resp_valid=pdp2csb_resp_valid;
    assign   io_csb2pdp_resp_bits=pdp2csb_resp_pd;
    assign          io_pdp2cvif_rd_req_pd_ready=pdp2cvif_rd_req_ready;
    assign         io_pdp2cvif_rd_req_pd_valid=pdp2cvif_wr_req_valid;
    assign   io_pdp2cvif_rd_req_pd_bits=pdp2cvif_rd_req_pd;
    assign          io_pdp2cvif_wr_req_pd_ready=pdp2cvif_wr_req_ready;
    assign         io_pdp2cvif_wr_req_pd_valid=pdp2cvif_wr_req_valid;
    assign  io_pdp2cvif_wr_req_pd_bits=pdp2cvif_wr_req_pd;
    assign         io_cvif2pdp_rd_rsp_pd_ready=cvif2pdp_rd_rsp_ready;
    assign          io_cvif2pdp_rd_rsp_pd_valid=cvif2pdp_rd_rsp_valid;
    assign   io_cvif2pdp_rd_rsp_pd_bits=cvif2pdp_rd_rsp_pd;
    assign         io_pdp2cvif_rd_cdt_lat_fifo_pop=pdp2cvif_rd_cdt_lat_fifo_pop;
    assign          io_cvif2pdp_wr_rsp_complete=cvif2pdp_wr_rsp_complete;
    assign          io_pdp2mcif_rd_req_pd_ready=pdp2mcif_rd_req_ready;
    assign         io_pdp2mcif_rd_req_pd_valid=pdp2mcif_rd_req_valid;
    assign   io_pdp2mcif_rd_req_pd_bits=pdp2mcif_rd_req_pd;
    assign          io_pdp2mcif_wr_req_pd_ready=pdp2mcif_wr_req_ready;
    assign         io_pdp2mcif_wr_req_pd_valid=pdp2mcif_wr_req_valid;
    assign  io_pdp2mcif_wr_req_pd_bits=pdp2mcif_wr_req_pd;
    assign         io_mcif2pdp_rd_rsp_pd_ready=mcif2pdp_rd_rsp_ready;
    assign          io_mcif2pdp_rd_rsp_pd_valid=mcif2pdp_rd_rsp_valid;
    assign   io_mcif2pdp_rd_rsp_pd_bits=mcif2pdp_rd_rsp_pd;
    assign         io_pdp2mcif_rd_cdt_lat_fifo_pop=pdp2mcif_rd_cdt_lat_fifo_pop;
    assign          io_mcif2pdp_wr_rsp_complete=mcif2pdp_wr_rsp_complete;
    assign    io_pdp2glb_done_intr_pd=pdp2glb_done_intr_pd;
    assign         io_sdp2pdp_pd_ready=sdp2pdp_ready;
    assign          io_sdp2pdp_pd_valid=sdp2pdp_valid;
    assign   io_sdp2pdp_pd_bits=sdp2pdp_pd;

    NV_soDLA_pdp NV_soDLA_pdp(
        .io_nvdla_clock_nvdla_core_clk(io_nvdla_clock_nvdla_core_clk),
        .io_nvdla_clock_dla_clk_ovr_on_sync(io_nvdla_clock_dla_clk_ovr_on_sync),
        .io_nvdla_clock_global_clk_ovr_on_sync(io_nvdla_clock_global_clk_ovr_on_sync),
        .io_nvdla_clock_tmc2slcg_disable_clock_gating(io_nvdla_clock_tmc2slcg_disable_clock_gating),
        .io_nvdla_core_rstn(io_nvdla_core_rstn),
        .io_pwrbus_ram_pd(io_pwrbus_ram_pd),
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
        .io_pdp2cvif_rd_req_pd_ready(io_pdp2cvif_rd_req_pd_ready),
        .io_pdp2cvif_rd_req_pd_valid(io_pdp2cvif_rd_req_pd_valid),
        .io_pdp2cvif_rd_req_pd_bits(io_pdp2cvif_rd_req_pd_bits),
        .io_pdp2cvif_wr_req_pd_ready(io_pdp2cvif_wr_req_pd_ready),
        .io_pdp2cvif_wr_req_pd_valid(io_pdp2cvif_wr_req_pd_valid),
        .io_pdp2cvif_wr_req_pd_bits(io_pdp2cvif_wr_req_pd_bits),
        .io_cvif2pdp_rd_rsp_pd_ready(io_cvif2pdp_rd_rsp_pd_ready),
        .io_cvif2pdp_rd_rsp_pd_valid(io_cvif2pdp_rd_rsp_pd_valid),
        .io_cvif2pdp_rd_rsp_pd_bits(io_cvif2pdp_rd_rsp_pd_bits),
        .io_pdp2cvif_rd_cdt_lat_fifo_pop(io_pdp2cvif_rd_cdt_lat_fifo_pop),
        .io_cvif2pdp_wr_rsp_complete(io_cvif2pdp_wr_rsp_complete),
        .io_pdp2mcif_rd_req_pd_ready(io_pdp2mcif_rd_req_pd_ready),
        .io_pdp2mcif_rd_req_pd_valid(io_pdp2mcif_rd_req_pd_valid),
        .io_pdp2mcif_rd_req_pd_bits(io_pdp2mcif_rd_req_pd_bits),
        .io_pdp2mcif_wr_req_pd_ready(io_pdp2mcif_wr_req_pd_ready),
        .io_pdp2mcif_wr_req_pd_valid(io_pdp2mcif_wr_req_pd_valid),
        .io_pdp2mcif_wr_req_pd_bits(io_pdp2mcif_wr_req_pd_bits),
        .io_mcif2pdp_rd_rsp_pd_ready(io_mcif2pdp_rd_rsp_pd_ready),
        .io_mcif2pdp_rd_rsp_pd_valid(io_mcif2pdp_rd_rsp_pd_valid),
        .io_mcif2pdp_rd_rsp_pd_bits(io_mcif2pdp_rd_rsp_pd_bits),
        .io_pdp2mcif_rd_cdt_lat_fifo_pop(io_pdp2mcif_rd_cdt_lat_fifo_pop),
        .io_mcif2pdp_wr_rsp_complete(io_mcif2pdp_wr_rsp_complete),
        .io_pdp2glb_done_intr_pd(io_pdp2glb_done_intr_pd),
        .io_sdp2pdp_pd_ready(io_sdp2pdp_pd_ready),
        .io_sdp2pdp_pd_valid(io_sdp2pdp_pd_valid),
        .io_sdp2pdp_pd_bits(io_sdp2pdp_pd_bits)

    );



endmodule