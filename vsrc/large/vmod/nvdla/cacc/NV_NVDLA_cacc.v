// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License, Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_cacc.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License, Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CACC.h
module NV_NVDLA_cacc (
   cacc2sdp_ready //|< i
  ,csb2cacc_req_pd //|< i
  ,csb2cacc_req_pvld //|< i
  ,dla_clk_ovr_on_sync //|< i
  ,global_clk_ovr_on_sync //|< i
//: for(my $i=0, $i<32/2 , $i++){
//: print qq(
//: ,mac_a2accu_data${i} //|< i
//: ,mac_b2accu_data${i} //|< i )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,mac_a2accu_data0 //|< i
,mac_b2accu_data0 //|< i 
,mac_a2accu_data1 //|< i
,mac_b2accu_data1 //|< i 
,mac_a2accu_data2 //|< i
,mac_b2accu_data2 //|< i 
,mac_a2accu_data3 //|< i
,mac_b2accu_data3 //|< i 
,mac_a2accu_data4 //|< i
,mac_b2accu_data4 //|< i 
,mac_a2accu_data5 //|< i
,mac_b2accu_data5 //|< i 
,mac_a2accu_data6 //|< i
,mac_b2accu_data6 //|< i 
,mac_a2accu_data7 //|< i
,mac_b2accu_data7 //|< i 
,mac_a2accu_data8 //|< i
,mac_b2accu_data8 //|< i 
,mac_a2accu_data9 //|< i
,mac_b2accu_data9 //|< i 
,mac_a2accu_data10 //|< i
,mac_b2accu_data10 //|< i 
,mac_a2accu_data11 //|< i
,mac_b2accu_data11 //|< i 
,mac_a2accu_data12 //|< i
,mac_b2accu_data12 //|< i 
,mac_a2accu_data13 //|< i
,mac_b2accu_data13 //|< i 
,mac_a2accu_data14 //|< i
,mac_b2accu_data14 //|< i 
,mac_a2accu_data15 //|< i
,mac_b2accu_data15 //|< i 
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,mac_a2accu_mask //|< i
  ,mac_a2accu_mode //|< i
  ,mac_a2accu_pd //|< i
  ,mac_a2accu_pvld //|< i
  ,mac_b2accu_mask //|< i
  ,mac_b2accu_mode //|< i
  ,mac_b2accu_pd //|< i
  ,mac_b2accu_pvld //|< i
  ,nvdla_core_clk //|< i
  ,nvdla_core_rstn //|< i
  ,pwrbus_ram_pd //|< i
  ,tmc2slcg_disable_clock_gating //|< i
  ,accu2sc_credit_size //|> o
  ,accu2sc_credit_vld //|> o
  ,cacc2csb_resp_pd //|> o
  ,cacc2csb_resp_valid //|> o
  ,cacc2glb_done_intr_pd //|> o
  ,cacc2sdp_pd //|> o
  ,cacc2sdp_valid //|> o
  ,csb2cacc_req_prdy //|> o
  );
//
// NV_NVDLA_cacc_ports.v
//
    input nvdla_core_clk; /* csb2cacc_req, cacc2csb_resp, mac_a2accu, mac_b2accu, cacc2sdp, accu2sc_credit, cacc2glb_done_intr */
    input nvdla_core_rstn; /* csb2cacc_req, cacc2csb_resp, mac_a2accu, mac_b2accu, cacc2sdp, accu2sc_credit, cacc2glb_done_intr */
    input [31:0] pwrbus_ram_pd;
    input csb2cacc_req_pvld; /* data valid */
    output csb2cacc_req_prdy; /* data return handshake */
    input [62:0] csb2cacc_req_pd;
    output cacc2csb_resp_valid; /* data valid */
    output [33:0] cacc2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
    input mac_a2accu_pvld; /* data valid */
    input [32/2-1:0] mac_a2accu_mask;
    input mac_a2accu_mode;
//: for(my $i=0; $i<32/2 ; $i++){
//: print qq(
//: input [22 -1:0] mac_a2accu_data${i}; //|< i
//: input [22 -1:0] mac_b2accu_data${i}; //|< i )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

    input [22 -1:0] mac_a2accu_data0; //|< i
    input [22 -1:0] mac_b2accu_data0; //|< i
    input [22 -1:0] mac_a2accu_data1; //|< i
    input [22 -1:0] mac_b2accu_data1; //|< i
    input [22 -1:0] mac_a2accu_data2; //|< i
    input [22 -1:0] mac_b2accu_data2; //|< i
    input [22 -1:0] mac_a2accu_data3; //|< i
    input [22 -1:0] mac_b2accu_data3; //|< i
    input [22 -1:0] mac_a2accu_data4; //|< i
    input [22 -1:0] mac_b2accu_data4; //|< i
    input [22 -1:0] mac_a2accu_data5; //|< i
    input [22 -1:0] mac_b2accu_data5; //|< i
    input [22 -1:0] mac_a2accu_data6; //|< i
    input [22 -1:0] mac_b2accu_data6; //|< i
    input [22 -1:0] mac_a2accu_data7; //|< i
    input [22 -1:0] mac_b2accu_data7; //|< i
    input [22 -1:0] mac_a2accu_data8; //|< i
    input [22 -1:0] mac_b2accu_data8; //|< i
    input [22 -1:0] mac_a2accu_data9; //|< i
    input [22 -1:0] mac_b2accu_data9; //|< i
    input [22 -1:0] mac_a2accu_data10; //|< i
    input [22 -1:0] mac_b2accu_data10; //|< i
    input [22 -1:0] mac_a2accu_data11; //|< i
    input [22 -1:0] mac_b2accu_data11; //|< i
    input [22 -1:0] mac_a2accu_data12; //|< i
    input [22 -1:0] mac_b2accu_data12; //|< i
    input [22 -1:0] mac_a2accu_data13; //|< i
    input [22 -1:0] mac_b2accu_data13; //|< i
    input [22 -1:0] mac_a2accu_data14; //|< i
    input [22 -1:0] mac_b2accu_data14; //|< i
    input [22 -1:0] mac_a2accu_data15; //|< i
    input [22 -1:0] mac_b2accu_data15; //|< i
//| eperl: generated_end (DO NOT EDIT ABOVE)
    input [8:0] mac_a2accu_pd;
    input mac_b2accu_pvld; /* data valid */
    input [32/2-1:0] mac_b2accu_mask;
    input mac_b2accu_mode;
    input [8:0] mac_b2accu_pd;
    output cacc2sdp_valid; /* data valid */
    input cacc2sdp_ready; /* data return handshake */
    output [32*16 +2 -1:0] cacc2sdp_pd;
    output accu2sc_credit_vld; /* data valid */
    output [2:0] accu2sc_credit_size;
    output [1:0] cacc2glb_done_intr_pd;
//Port for SLCG
    input dla_clk_ovr_on_sync;
    input global_clk_ovr_on_sync;
    input tmc2slcg_disable_clock_gating;


wrapper_cacc wrapper_cacc(
    .nvdla_core_clk(nvdla_core_clk), /* csb2cacc_req, cacc2csb_resp, mac_a2accu, mac_b2accu, cacc2sdp, accu2sc_credit, cacc2glb_done_intr */
    .nvdla_core_rstn(nvdla_core_rstn), /* csb2cacc_req, cacc2csb_resp, mac_a2accu, mac_b2accu, cacc2sdp, accu2sc_credit, cacc2glb_done_intr */
    .pwrbus_ram_pd(pwrbus_ram_pd),
    .csb2cacc_req_pvld(csb2cacc_req_pvld), /* data valid */
    .csb2cacc_req_prdy(csb2cacc_req_prdy), /* data return handshake */
    .csb2cacc_req_pd(csb2cacc_req_pd),
    .cacc2csb_resp_valid(cacc2csb_resp_valid), /* data valid */
    .cacc2csb_resp_pd(cacc2csb_resp_pd), /* pkt_id_width=1 pkt_widths=33,33  */
    .mac_a2accu_pvld(mac_a2accu_pvld), /* data valid */
    .mac_a2accu_mask(mac_a2accu_mask),
    .mac_a2accu_mode(mac_a2accu_mode),
    .mac_a2accu_data0(mac_a2accu_data0), //|< i
    .mac_b2accu_data0(mac_b2accu_data0), //|< i
    .mac_a2accu_data1(mac_a2accu_data1), //|< i
    .mac_b2accu_data1(mac_b2accu_data1), //|< i
    .mac_a2accu_data2(mac_a2accu_data2), //|< i
    .mac_b2accu_data2(mac_b2accu_data2), //|< i
    .mac_a2accu_data3(mac_a2accu_data3), //|< i
    .mac_b2accu_data3(mac_b2accu_data3), //|< i
    .mac_a2accu_data4(mac_a2accu_data4), //|< i
    .mac_b2accu_data4(mac_b2accu_data4), //|< i
    .mac_a2accu_data5(mac_a2accu_data5), //|< i
    .mac_b2accu_data5(mac_b2accu_data5), //|< i
    .mac_a2accu_data6(mac_a2accu_data6), //|< i
    .mac_b2accu_data6(mac_b2accu_data6), //|< i
    .mac_a2accu_data7(mac_a2accu_data7), //|< i
    .mac_b2accu_data7(mac_b2accu_data7), //|< i
    .mac_a2accu_data8(mac_a2accu_data8), //|< i
    .mac_b2accu_data8(mac_b2accu_data8), //|< i
    .mac_a2accu_data9(mac_a2accu_data9), //|< i
    .mac_b2accu_data9(mac_b2accu_data9), //|< i
    .mac_a2accu_data10(mac_a2accu_data10), //|< i
    .mac_b2accu_data10(mac_b2accu_data10), //|< i
    .mac_a2accu_data11(mac_a2accu_data11), //|< i
    .mac_b2accu_data11(mac_b2accu_data11), //|< i
    .mac_a2accu_data12(mac_a2accu_data12), //|< i
    .mac_b2accu_data12(mac_b2accu_data12), //|< i
    .mac_a2accu_data13(mac_a2accu_data13), //|< i
    .mac_b2accu_data13(mac_b2accu_data13), //|< i
    .mac_a2accu_data14(mac_a2accu_data14), //|< i
    .mac_b2accu_data14(mac_b2accu_data14), //|< i
    .mac_a2accu_data15(mac_a2accu_data15), //|< i
    .mac_b2accu_data15(mac_b2accu_data15), //|< i
    .mac_a2accu_pd(mac_a2accu_pd),
    .mac_b2accu_pvld(mac_b2accu_pvld), /* data valid */
    .mac_b2accu_mask(mac_b2accu_mask),
    .mac_b2accu_mode(mac_b2accu_mode),
    .mac_b2accu_pd(mac_b2accu_pd),
    .cacc2sdp_valid(cacc2sdp_valid), /* data valid */
    .cacc2sdp_ready(cacc2sdp_ready), /* data return handshake */
    .cacc2sdp_pd(cacc2sdp_pd),
    .accu2sc_credit_vld(accu2sc_credit_vld), /* data valid */
    .accu2sc_credit_size(accu2sc_credit_size),
    .cacc2glb_done_intr_pd(cacc2glb_done_intr_pd),
    .dla_clk_ovr_on_sync(dla_clk_ovr_on_sync),
    .global_clk_ovr_on_sync(global_clk_ovr_on_sync),
    .tmc2slcg_disable_clock_gating(tmc2slcg_disable_clock_gating)

    );



endmodule : NV_NVDLA_cacc // NV_NVDLA_cacc
