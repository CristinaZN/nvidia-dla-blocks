// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_csc.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CSC.h
    //entry bits
    //atomC
    //in bytes, entry/8
    //CSC_ENTRY_HEX/2
    //CSC_ENTRY_HEX/4
    //CSC_ENTRY_HEX-1
    //atomK
    //atomK
    //atomK*2
//notice, for image case, first atom OP within one strip OP must fetch from entry align place, in the middle of an entry is not supported.
//thus, when atomC/atomK=4, stripe=4*atomK, feature data still keeps atomK*2
    `define CC_ATOMC_DIV_ATOMK_EQUAL_2
//batch keep 1
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CBUF.h
    `define CBUF_BANK_RAM_CASE2
    `define CBUF_NO_SUPPORT_READ_JUMPING
//ram case could be 0/1/2/3/4/5  0:1ram/bank; 1:1*2ram/bank; 2:2*1ram/bank; 3:2*2ram/bank  4:4*1ram/bank  5:4*2ram/bank
`define CDMA2CBUF_DEBUG_PRINT //open debug print
module NV_NVDLA_csc (
   accu2sc_credit_size //|< i
  ,accu2sc_credit_vld //|< i
  ,cdma2sc_dat_entries //|< i
  ,cdma2sc_dat_pending_ack //|< i
  ,cdma2sc_dat_slices //|< i
  ,cdma2sc_dat_updt //|< i
  ,cdma2sc_wmb_entries //|< i
  ,cdma2sc_wt_entries //|< i
  ,cdma2sc_wt_kernels //|< i
  ,cdma2sc_wt_pending_ack //|< i
  ,cdma2sc_wt_updt //|< i
  ,csb2csc_req_pd //|< i
  ,csb2csc_req_pvld //|< i
  ,dla_clk_ovr_on_sync //|< i
  ,global_clk_ovr_on_sync //|< i
  ,nvdla_core_clk //|< i
  ,nvdla_core_rstn //|< i
  ,pwrbus_ram_pd //|< i
  ,sc2buf_dat_rd_data //|< i
  ,sc2buf_dat_rd_valid //|< i
  ,sc2buf_dat_rd_shift //|> o
  ,sc2buf_dat_rd_next1_en //|> o
  ,sc2buf_dat_rd_next1_addr //|> o
  ,sc2buf_wt_rd_data //|< i
  ,sc2buf_wt_rd_valid //|< i
  ,tmc2slcg_disable_clock_gating //|< i
  ,csb2csc_req_prdy //|> o
  ,csc2csb_resp_pd //|> o
  ,csc2csb_resp_valid //|> o
  ,sc2buf_dat_rd_addr //|> o
  ,sc2buf_dat_rd_en //|> o
  ,sc2buf_wt_rd_addr //|> o
  ,sc2buf_wt_rd_en //|> o
  ,sc2cdma_dat_entries //|> o
  ,sc2cdma_dat_pending_req //|> o
  ,sc2cdma_dat_slices //|> o
  ,sc2cdma_dat_updt //|> o
  ,sc2cdma_wmb_entries //|> o
  ,sc2cdma_wt_entries //|> o
  ,sc2cdma_wt_kernels //|> o
  ,sc2cdma_wt_pending_req //|> o
  ,sc2cdma_wt_updt //|> o
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: ,sc2mac_dat_a_data${i} //|> o );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,sc2mac_dat_a_data0 //|> o 
,sc2mac_dat_a_data1 //|> o 
,sc2mac_dat_a_data2 //|> o 
,sc2mac_dat_a_data3 //|> o 
,sc2mac_dat_a_data4 //|> o 
,sc2mac_dat_a_data5 //|> o 
,sc2mac_dat_a_data6 //|> o 
,sc2mac_dat_a_data7 //|> o 
,sc2mac_dat_a_data8 //|> o 
,sc2mac_dat_a_data9 //|> o 
,sc2mac_dat_a_data10 //|> o 
,sc2mac_dat_a_data11 //|> o 
,sc2mac_dat_a_data12 //|> o 
,sc2mac_dat_a_data13 //|> o 
,sc2mac_dat_a_data14 //|> o 
,sc2mac_dat_a_data15 //|> o 
,sc2mac_dat_a_data16 //|> o 
,sc2mac_dat_a_data17 //|> o 
,sc2mac_dat_a_data18 //|> o 
,sc2mac_dat_a_data19 //|> o 
,sc2mac_dat_a_data20 //|> o 
,sc2mac_dat_a_data21 //|> o 
,sc2mac_dat_a_data22 //|> o 
,sc2mac_dat_a_data23 //|> o 
,sc2mac_dat_a_data24 //|> o 
,sc2mac_dat_a_data25 //|> o 
,sc2mac_dat_a_data26 //|> o 
,sc2mac_dat_a_data27 //|> o 
,sc2mac_dat_a_data28 //|> o 
,sc2mac_dat_a_data29 //|> o 
,sc2mac_dat_a_data30 //|> o 
,sc2mac_dat_a_data31 //|> o 
,sc2mac_dat_a_data32 //|> o 
,sc2mac_dat_a_data33 //|> o 
,sc2mac_dat_a_data34 //|> o 
,sc2mac_dat_a_data35 //|> o 
,sc2mac_dat_a_data36 //|> o 
,sc2mac_dat_a_data37 //|> o 
,sc2mac_dat_a_data38 //|> o 
,sc2mac_dat_a_data39 //|> o 
,sc2mac_dat_a_data40 //|> o 
,sc2mac_dat_a_data41 //|> o 
,sc2mac_dat_a_data42 //|> o 
,sc2mac_dat_a_data43 //|> o 
,sc2mac_dat_a_data44 //|> o 
,sc2mac_dat_a_data45 //|> o 
,sc2mac_dat_a_data46 //|> o 
,sc2mac_dat_a_data47 //|> o 
,sc2mac_dat_a_data48 //|> o 
,sc2mac_dat_a_data49 //|> o 
,sc2mac_dat_a_data50 //|> o 
,sc2mac_dat_a_data51 //|> o 
,sc2mac_dat_a_data52 //|> o 
,sc2mac_dat_a_data53 //|> o 
,sc2mac_dat_a_data54 //|> o 
,sc2mac_dat_a_data55 //|> o 
,sc2mac_dat_a_data56 //|> o 
,sc2mac_dat_a_data57 //|> o 
,sc2mac_dat_a_data58 //|> o 
,sc2mac_dat_a_data59 //|> o 
,sc2mac_dat_a_data60 //|> o 
,sc2mac_dat_a_data61 //|> o 
,sc2mac_dat_a_data62 //|> o 
,sc2mac_dat_a_data63 //|> o 
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,sc2mac_dat_a_mask //|> o
  ,sc2mac_dat_a_pd //|> o
  ,sc2mac_dat_a_pvld //|> o
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: ,sc2mac_dat_b_data${i} //|> o );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,sc2mac_dat_b_data0 //|> o 
,sc2mac_dat_b_data1 //|> o 
,sc2mac_dat_b_data2 //|> o 
,sc2mac_dat_b_data3 //|> o 
,sc2mac_dat_b_data4 //|> o 
,sc2mac_dat_b_data5 //|> o 
,sc2mac_dat_b_data6 //|> o 
,sc2mac_dat_b_data7 //|> o 
,sc2mac_dat_b_data8 //|> o 
,sc2mac_dat_b_data9 //|> o 
,sc2mac_dat_b_data10 //|> o 
,sc2mac_dat_b_data11 //|> o 
,sc2mac_dat_b_data12 //|> o 
,sc2mac_dat_b_data13 //|> o 
,sc2mac_dat_b_data14 //|> o 
,sc2mac_dat_b_data15 //|> o 
,sc2mac_dat_b_data16 //|> o 
,sc2mac_dat_b_data17 //|> o 
,sc2mac_dat_b_data18 //|> o 
,sc2mac_dat_b_data19 //|> o 
,sc2mac_dat_b_data20 //|> o 
,sc2mac_dat_b_data21 //|> o 
,sc2mac_dat_b_data22 //|> o 
,sc2mac_dat_b_data23 //|> o 
,sc2mac_dat_b_data24 //|> o 
,sc2mac_dat_b_data25 //|> o 
,sc2mac_dat_b_data26 //|> o 
,sc2mac_dat_b_data27 //|> o 
,sc2mac_dat_b_data28 //|> o 
,sc2mac_dat_b_data29 //|> o 
,sc2mac_dat_b_data30 //|> o 
,sc2mac_dat_b_data31 //|> o 
,sc2mac_dat_b_data32 //|> o 
,sc2mac_dat_b_data33 //|> o 
,sc2mac_dat_b_data34 //|> o 
,sc2mac_dat_b_data35 //|> o 
,sc2mac_dat_b_data36 //|> o 
,sc2mac_dat_b_data37 //|> o 
,sc2mac_dat_b_data38 //|> o 
,sc2mac_dat_b_data39 //|> o 
,sc2mac_dat_b_data40 //|> o 
,sc2mac_dat_b_data41 //|> o 
,sc2mac_dat_b_data42 //|> o 
,sc2mac_dat_b_data43 //|> o 
,sc2mac_dat_b_data44 //|> o 
,sc2mac_dat_b_data45 //|> o 
,sc2mac_dat_b_data46 //|> o 
,sc2mac_dat_b_data47 //|> o 
,sc2mac_dat_b_data48 //|> o 
,sc2mac_dat_b_data49 //|> o 
,sc2mac_dat_b_data50 //|> o 
,sc2mac_dat_b_data51 //|> o 
,sc2mac_dat_b_data52 //|> o 
,sc2mac_dat_b_data53 //|> o 
,sc2mac_dat_b_data54 //|> o 
,sc2mac_dat_b_data55 //|> o 
,sc2mac_dat_b_data56 //|> o 
,sc2mac_dat_b_data57 //|> o 
,sc2mac_dat_b_data58 //|> o 
,sc2mac_dat_b_data59 //|> o 
,sc2mac_dat_b_data60 //|> o 
,sc2mac_dat_b_data61 //|> o 
,sc2mac_dat_b_data62 //|> o 
,sc2mac_dat_b_data63 //|> o 
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,sc2mac_dat_b_mask //|> o
  ,sc2mac_dat_b_pd //|> o
  ,sc2mac_dat_b_pvld //|> o
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: ,sc2mac_wt_a_data${i} //|> o );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,sc2mac_wt_a_data0 //|> o 
,sc2mac_wt_a_data1 //|> o 
,sc2mac_wt_a_data2 //|> o 
,sc2mac_wt_a_data3 //|> o 
,sc2mac_wt_a_data4 //|> o 
,sc2mac_wt_a_data5 //|> o 
,sc2mac_wt_a_data6 //|> o 
,sc2mac_wt_a_data7 //|> o 
,sc2mac_wt_a_data8 //|> o 
,sc2mac_wt_a_data9 //|> o 
,sc2mac_wt_a_data10 //|> o 
,sc2mac_wt_a_data11 //|> o 
,sc2mac_wt_a_data12 //|> o 
,sc2mac_wt_a_data13 //|> o 
,sc2mac_wt_a_data14 //|> o 
,sc2mac_wt_a_data15 //|> o 
,sc2mac_wt_a_data16 //|> o 
,sc2mac_wt_a_data17 //|> o 
,sc2mac_wt_a_data18 //|> o 
,sc2mac_wt_a_data19 //|> o 
,sc2mac_wt_a_data20 //|> o 
,sc2mac_wt_a_data21 //|> o 
,sc2mac_wt_a_data22 //|> o 
,sc2mac_wt_a_data23 //|> o 
,sc2mac_wt_a_data24 //|> o 
,sc2mac_wt_a_data25 //|> o 
,sc2mac_wt_a_data26 //|> o 
,sc2mac_wt_a_data27 //|> o 
,sc2mac_wt_a_data28 //|> o 
,sc2mac_wt_a_data29 //|> o 
,sc2mac_wt_a_data30 //|> o 
,sc2mac_wt_a_data31 //|> o 
,sc2mac_wt_a_data32 //|> o 
,sc2mac_wt_a_data33 //|> o 
,sc2mac_wt_a_data34 //|> o 
,sc2mac_wt_a_data35 //|> o 
,sc2mac_wt_a_data36 //|> o 
,sc2mac_wt_a_data37 //|> o 
,sc2mac_wt_a_data38 //|> o 
,sc2mac_wt_a_data39 //|> o 
,sc2mac_wt_a_data40 //|> o 
,sc2mac_wt_a_data41 //|> o 
,sc2mac_wt_a_data42 //|> o 
,sc2mac_wt_a_data43 //|> o 
,sc2mac_wt_a_data44 //|> o 
,sc2mac_wt_a_data45 //|> o 
,sc2mac_wt_a_data46 //|> o 
,sc2mac_wt_a_data47 //|> o 
,sc2mac_wt_a_data48 //|> o 
,sc2mac_wt_a_data49 //|> o 
,sc2mac_wt_a_data50 //|> o 
,sc2mac_wt_a_data51 //|> o 
,sc2mac_wt_a_data52 //|> o 
,sc2mac_wt_a_data53 //|> o 
,sc2mac_wt_a_data54 //|> o 
,sc2mac_wt_a_data55 //|> o 
,sc2mac_wt_a_data56 //|> o 
,sc2mac_wt_a_data57 //|> o 
,sc2mac_wt_a_data58 //|> o 
,sc2mac_wt_a_data59 //|> o 
,sc2mac_wt_a_data60 //|> o 
,sc2mac_wt_a_data61 //|> o 
,sc2mac_wt_a_data62 //|> o 
,sc2mac_wt_a_data63 //|> o 
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,sc2mac_wt_a_mask //|> o
  ,sc2mac_wt_a_pvld //|> o
  ,sc2mac_wt_a_sel //|> o
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: ,sc2mac_wt_b_data${i} //|> o );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,sc2mac_wt_b_data0 //|> o 
,sc2mac_wt_b_data1 //|> o 
,sc2mac_wt_b_data2 //|> o 
,sc2mac_wt_b_data3 //|> o 
,sc2mac_wt_b_data4 //|> o 
,sc2mac_wt_b_data5 //|> o 
,sc2mac_wt_b_data6 //|> o 
,sc2mac_wt_b_data7 //|> o 
,sc2mac_wt_b_data8 //|> o 
,sc2mac_wt_b_data9 //|> o 
,sc2mac_wt_b_data10 //|> o 
,sc2mac_wt_b_data11 //|> o 
,sc2mac_wt_b_data12 //|> o 
,sc2mac_wt_b_data13 //|> o 
,sc2mac_wt_b_data14 //|> o 
,sc2mac_wt_b_data15 //|> o 
,sc2mac_wt_b_data16 //|> o 
,sc2mac_wt_b_data17 //|> o 
,sc2mac_wt_b_data18 //|> o 
,sc2mac_wt_b_data19 //|> o 
,sc2mac_wt_b_data20 //|> o 
,sc2mac_wt_b_data21 //|> o 
,sc2mac_wt_b_data22 //|> o 
,sc2mac_wt_b_data23 //|> o 
,sc2mac_wt_b_data24 //|> o 
,sc2mac_wt_b_data25 //|> o 
,sc2mac_wt_b_data26 //|> o 
,sc2mac_wt_b_data27 //|> o 
,sc2mac_wt_b_data28 //|> o 
,sc2mac_wt_b_data29 //|> o 
,sc2mac_wt_b_data30 //|> o 
,sc2mac_wt_b_data31 //|> o 
,sc2mac_wt_b_data32 //|> o 
,sc2mac_wt_b_data33 //|> o 
,sc2mac_wt_b_data34 //|> o 
,sc2mac_wt_b_data35 //|> o 
,sc2mac_wt_b_data36 //|> o 
,sc2mac_wt_b_data37 //|> o 
,sc2mac_wt_b_data38 //|> o 
,sc2mac_wt_b_data39 //|> o 
,sc2mac_wt_b_data40 //|> o 
,sc2mac_wt_b_data41 //|> o 
,sc2mac_wt_b_data42 //|> o 
,sc2mac_wt_b_data43 //|> o 
,sc2mac_wt_b_data44 //|> o 
,sc2mac_wt_b_data45 //|> o 
,sc2mac_wt_b_data46 //|> o 
,sc2mac_wt_b_data47 //|> o 
,sc2mac_wt_b_data48 //|> o 
,sc2mac_wt_b_data49 //|> o 
,sc2mac_wt_b_data50 //|> o 
,sc2mac_wt_b_data51 //|> o 
,sc2mac_wt_b_data52 //|> o 
,sc2mac_wt_b_data53 //|> o 
,sc2mac_wt_b_data54 //|> o 
,sc2mac_wt_b_data55 //|> o 
,sc2mac_wt_b_data56 //|> o 
,sc2mac_wt_b_data57 //|> o 
,sc2mac_wt_b_data58 //|> o 
,sc2mac_wt_b_data59 //|> o 
,sc2mac_wt_b_data60 //|> o 
,sc2mac_wt_b_data61 //|> o 
,sc2mac_wt_b_data62 //|> o 
,sc2mac_wt_b_data63 //|> o 
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,sc2mac_wt_b_mask //|> o
  ,sc2mac_wt_b_pvld //|> o
  ,sc2mac_wt_b_sel //|> o
  `ifdef CBUF_WEIGHT_COMPRESSED
  ,sc2buf_wmb_rd_addr //|> o
  ,sc2buf_wmb_rd_en //|> o
  ,sc2buf_wmb_rd_data //|< i
  ,sc2buf_wmb_rd_valid //|< i
  `endif
  );
input nvdla_core_clk;
input nvdla_core_rstn;
output sc2cdma_dat_pending_req;
output sc2cdma_wt_pending_req;
input accu2sc_credit_vld; /* data valid */
input [2:0] accu2sc_credit_size;
input cdma2sc_dat_pending_ack;
input cdma2sc_wt_pending_ack;
input csb2csc_req_pvld; /* data valid */
output csb2csc_req_prdy; /* data return handshake */
input [62:0] csb2csc_req_pd;
output csc2csb_resp_valid; /* data valid */
output [33:0] csc2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
input cdma2sc_dat_updt; /* data valid */
input [15 -1:0] cdma2sc_dat_entries;
input [13:0] cdma2sc_dat_slices;
output sc2cdma_dat_updt; /* data valid */
output [15 -1:0] sc2cdma_dat_entries;
output [13:0] sc2cdma_dat_slices;
input [31:0] pwrbus_ram_pd;
output sc2buf_dat_rd_en; /* data valid */
output [13 -1:0] sc2buf_dat_rd_addr;
input sc2buf_dat_rd_valid; /* data valid */
input [512 -1:0] sc2buf_dat_rd_data;
output [10 -1:0] sc2buf_dat_rd_shift;
output sc2buf_dat_rd_next1_en;
output [13 -1:0] sc2buf_dat_rd_next1_addr;
`ifdef CBUF_WEIGHT_COMPRESSED
output sc2buf_wmb_rd_en; /* data valid */
output [13 -1:0] sc2buf_wmb_rd_addr;
input sc2buf_wmb_rd_valid; /* data valid */
input [512 -1:0] sc2buf_wmb_rd_data;
`endif
output sc2buf_wt_rd_en; /* data valid */
output [13 -1:0] sc2buf_wt_rd_addr;
input sc2buf_wt_rd_valid; /* data valid */
input [512 -1:0] sc2buf_wt_rd_data;
output sc2mac_dat_a_pvld; /* data valid */
output [64 -1:0] sc2mac_dat_a_mask;
output [8 -1:0] sc2mac_dat_a_data0; 
output [8 -1:0] sc2mac_dat_a_data1; 
output [8 -1:0] sc2mac_dat_a_data2; 
output [8 -1:0] sc2mac_dat_a_data3; 
output [8 -1:0] sc2mac_dat_a_data4; 
output [8 -1:0] sc2mac_dat_a_data5; 
output [8 -1:0] sc2mac_dat_a_data6; 
output [8 -1:0] sc2mac_dat_a_data7; 
output [8 -1:0] sc2mac_dat_a_data8; 
output [8 -1:0] sc2mac_dat_a_data9; 
output [8 -1:0] sc2mac_dat_a_data10; 
output [8 -1:0] sc2mac_dat_a_data11; 
output [8 -1:0] sc2mac_dat_a_data12; 
output [8 -1:0] sc2mac_dat_a_data13; 
output [8 -1:0] sc2mac_dat_a_data14; 
output [8 -1:0] sc2mac_dat_a_data15; 
output [8 -1:0] sc2mac_dat_a_data16; 
output [8 -1:0] sc2mac_dat_a_data17; 
output [8 -1:0] sc2mac_dat_a_data18; 
output [8 -1:0] sc2mac_dat_a_data19; 
output [8 -1:0] sc2mac_dat_a_data20; 
output [8 -1:0] sc2mac_dat_a_data21; 
output [8 -1:0] sc2mac_dat_a_data22; 
output [8 -1:0] sc2mac_dat_a_data23; 
output [8 -1:0] sc2mac_dat_a_data24; 
output [8 -1:0] sc2mac_dat_a_data25; 
output [8 -1:0] sc2mac_dat_a_data26; 
output [8 -1:0] sc2mac_dat_a_data27; 
output [8 -1:0] sc2mac_dat_a_data28; 
output [8 -1:0] sc2mac_dat_a_data29; 
output [8 -1:0] sc2mac_dat_a_data30; 
output [8 -1:0] sc2mac_dat_a_data31; 
output [8 -1:0] sc2mac_dat_a_data32; 
output [8 -1:0] sc2mac_dat_a_data33; 
output [8 -1:0] sc2mac_dat_a_data34; 
output [8 -1:0] sc2mac_dat_a_data35; 
output [8 -1:0] sc2mac_dat_a_data36; 
output [8 -1:0] sc2mac_dat_a_data37; 
output [8 -1:0] sc2mac_dat_a_data38; 
output [8 -1:0] sc2mac_dat_a_data39; 
output [8 -1:0] sc2mac_dat_a_data40; 
output [8 -1:0] sc2mac_dat_a_data41; 
output [8 -1:0] sc2mac_dat_a_data42; 
output [8 -1:0] sc2mac_dat_a_data43; 
output [8 -1:0] sc2mac_dat_a_data44; 
output [8 -1:0] sc2mac_dat_a_data45; 
output [8 -1:0] sc2mac_dat_a_data46; 
output [8 -1:0] sc2mac_dat_a_data47; 
output [8 -1:0] sc2mac_dat_a_data48; 
output [8 -1:0] sc2mac_dat_a_data49; 
output [8 -1:0] sc2mac_dat_a_data50; 
output [8 -1:0] sc2mac_dat_a_data51; 
output [8 -1:0] sc2mac_dat_a_data52; 
output [8 -1:0] sc2mac_dat_a_data53; 
output [8 -1:0] sc2mac_dat_a_data54; 
output [8 -1:0] sc2mac_dat_a_data55; 
output [8 -1:0] sc2mac_dat_a_data56; 
output [8 -1:0] sc2mac_dat_a_data57; 
output [8 -1:0] sc2mac_dat_a_data58; 
output [8 -1:0] sc2mac_dat_a_data59; 
output [8 -1:0] sc2mac_dat_a_data60; 
output [8 -1:0] sc2mac_dat_a_data61; 
output [8 -1:0] sc2mac_dat_a_data62; 
output [8 -1:0] sc2mac_dat_a_data63; 
output [8:0] sc2mac_dat_a_pd;
output sc2mac_dat_b_pvld; /* data valid */
output [64 -1:0] sc2mac_dat_b_mask;
output [8 -1:0] sc2mac_dat_b_data0; 
output [8 -1:0] sc2mac_dat_b_data1; 
output [8 -1:0] sc2mac_dat_b_data2; 
output [8 -1:0] sc2mac_dat_b_data3; 
output [8 -1:0] sc2mac_dat_b_data4; 
output [8 -1:0] sc2mac_dat_b_data5; 
output [8 -1:0] sc2mac_dat_b_data6; 
output [8 -1:0] sc2mac_dat_b_data7; 
output [8 -1:0] sc2mac_dat_b_data8; 
output [8 -1:0] sc2mac_dat_b_data9; 
output [8 -1:0] sc2mac_dat_b_data10; 
output [8 -1:0] sc2mac_dat_b_data11; 
output [8 -1:0] sc2mac_dat_b_data12; 
output [8 -1:0] sc2mac_dat_b_data13; 
output [8 -1:0] sc2mac_dat_b_data14; 
output [8 -1:0] sc2mac_dat_b_data15; 
output [8 -1:0] sc2mac_dat_b_data16; 
output [8 -1:0] sc2mac_dat_b_data17; 
output [8 -1:0] sc2mac_dat_b_data18; 
output [8 -1:0] sc2mac_dat_b_data19; 
output [8 -1:0] sc2mac_dat_b_data20; 
output [8 -1:0] sc2mac_dat_b_data21; 
output [8 -1:0] sc2mac_dat_b_data22; 
output [8 -1:0] sc2mac_dat_b_data23; 
output [8 -1:0] sc2mac_dat_b_data24; 
output [8 -1:0] sc2mac_dat_b_data25; 
output [8 -1:0] sc2mac_dat_b_data26; 
output [8 -1:0] sc2mac_dat_b_data27; 
output [8 -1:0] sc2mac_dat_b_data28; 
output [8 -1:0] sc2mac_dat_b_data29; 
output [8 -1:0] sc2mac_dat_b_data30; 
output [8 -1:0] sc2mac_dat_b_data31; 
output [8 -1:0] sc2mac_dat_b_data32; 
output [8 -1:0] sc2mac_dat_b_data33; 
output [8 -1:0] sc2mac_dat_b_data34; 
output [8 -1:0] sc2mac_dat_b_data35; 
output [8 -1:0] sc2mac_dat_b_data36; 
output [8 -1:0] sc2mac_dat_b_data37; 
output [8 -1:0] sc2mac_dat_b_data38; 
output [8 -1:0] sc2mac_dat_b_data39; 
output [8 -1:0] sc2mac_dat_b_data40; 
output [8 -1:0] sc2mac_dat_b_data41; 
output [8 -1:0] sc2mac_dat_b_data42; 
output [8 -1:0] sc2mac_dat_b_data43; 
output [8 -1:0] sc2mac_dat_b_data44; 
output [8 -1:0] sc2mac_dat_b_data45; 
output [8 -1:0] sc2mac_dat_b_data46; 
output [8 -1:0] sc2mac_dat_b_data47; 
output [8 -1:0] sc2mac_dat_b_data48; 
output [8 -1:0] sc2mac_dat_b_data49; 
output [8 -1:0] sc2mac_dat_b_data50; 
output [8 -1:0] sc2mac_dat_b_data51; 
output [8 -1:0] sc2mac_dat_b_data52; 
output [8 -1:0] sc2mac_dat_b_data53; 
output [8 -1:0] sc2mac_dat_b_data54; 
output [8 -1:0] sc2mac_dat_b_data55; 
output [8 -1:0] sc2mac_dat_b_data56; 
output [8 -1:0] sc2mac_dat_b_data57; 
output [8 -1:0] sc2mac_dat_b_data58; 
output [8 -1:0] sc2mac_dat_b_data59; 
output [8 -1:0] sc2mac_dat_b_data60; 
output [8 -1:0] sc2mac_dat_b_data61; 
output [8 -1:0] sc2mac_dat_b_data62; 
output [8 -1:0] sc2mac_dat_b_data63; 
output [8:0] sc2mac_dat_b_pd;
output sc2mac_wt_a_pvld; /* data valid */
output [64 -1:0] sc2mac_wt_a_mask;
output [8 -1:0] sc2mac_wt_a_data0; 
output [8 -1:0] sc2mac_wt_a_data1; 
output [8 -1:0] sc2mac_wt_a_data2; 
output [8 -1:0] sc2mac_wt_a_data3; 
output [8 -1:0] sc2mac_wt_a_data4; 
output [8 -1:0] sc2mac_wt_a_data5; 
output [8 -1:0] sc2mac_wt_a_data6; 
output [8 -1:0] sc2mac_wt_a_data7; 
output [8 -1:0] sc2mac_wt_a_data8; 
output [8 -1:0] sc2mac_wt_a_data9; 
output [8 -1:0] sc2mac_wt_a_data10; 
output [8 -1:0] sc2mac_wt_a_data11; 
output [8 -1:0] sc2mac_wt_a_data12; 
output [8 -1:0] sc2mac_wt_a_data13; 
output [8 -1:0] sc2mac_wt_a_data14; 
output [8 -1:0] sc2mac_wt_a_data15; 
output [8 -1:0] sc2mac_wt_a_data16; 
output [8 -1:0] sc2mac_wt_a_data17; 
output [8 -1:0] sc2mac_wt_a_data18; 
output [8 -1:0] sc2mac_wt_a_data19; 
output [8 -1:0] sc2mac_wt_a_data20; 
output [8 -1:0] sc2mac_wt_a_data21; 
output [8 -1:0] sc2mac_wt_a_data22; 
output [8 -1:0] sc2mac_wt_a_data23; 
output [8 -1:0] sc2mac_wt_a_data24; 
output [8 -1:0] sc2mac_wt_a_data25; 
output [8 -1:0] sc2mac_wt_a_data26; 
output [8 -1:0] sc2mac_wt_a_data27; 
output [8 -1:0] sc2mac_wt_a_data28; 
output [8 -1:0] sc2mac_wt_a_data29; 
output [8 -1:0] sc2mac_wt_a_data30; 
output [8 -1:0] sc2mac_wt_a_data31; 
output [8 -1:0] sc2mac_wt_a_data32; 
output [8 -1:0] sc2mac_wt_a_data33; 
output [8 -1:0] sc2mac_wt_a_data34; 
output [8 -1:0] sc2mac_wt_a_data35; 
output [8 -1:0] sc2mac_wt_a_data36; 
output [8 -1:0] sc2mac_wt_a_data37; 
output [8 -1:0] sc2mac_wt_a_data38; 
output [8 -1:0] sc2mac_wt_a_data39; 
output [8 -1:0] sc2mac_wt_a_data40; 
output [8 -1:0] sc2mac_wt_a_data41; 
output [8 -1:0] sc2mac_wt_a_data42; 
output [8 -1:0] sc2mac_wt_a_data43; 
output [8 -1:0] sc2mac_wt_a_data44; 
output [8 -1:0] sc2mac_wt_a_data45; 
output [8 -1:0] sc2mac_wt_a_data46; 
output [8 -1:0] sc2mac_wt_a_data47; 
output [8 -1:0] sc2mac_wt_a_data48; 
output [8 -1:0] sc2mac_wt_a_data49; 
output [8 -1:0] sc2mac_wt_a_data50; 
output [8 -1:0] sc2mac_wt_a_data51; 
output [8 -1:0] sc2mac_wt_a_data52; 
output [8 -1:0] sc2mac_wt_a_data53; 
output [8 -1:0] sc2mac_wt_a_data54; 
output [8 -1:0] sc2mac_wt_a_data55; 
output [8 -1:0] sc2mac_wt_a_data56; 
output [8 -1:0] sc2mac_wt_a_data57; 
output [8 -1:0] sc2mac_wt_a_data58; 
output [8 -1:0] sc2mac_wt_a_data59; 
output [8 -1:0] sc2mac_wt_a_data60; 
output [8 -1:0] sc2mac_wt_a_data61; 
output [8 -1:0] sc2mac_wt_a_data62; 
output [8 -1:0] sc2mac_wt_a_data63; 
output [32/2 -1:0] sc2mac_wt_a_sel;
output sc2mac_wt_b_pvld; /* data valid */
output [64 -1:0] sc2mac_wt_b_mask;
output [8 -1:0] sc2mac_wt_b_data0; 
output [8 -1:0] sc2mac_wt_b_data1; 
output [8 -1:0] sc2mac_wt_b_data2; 
output [8 -1:0] sc2mac_wt_b_data3; 
output [8 -1:0] sc2mac_wt_b_data4; 
output [8 -1:0] sc2mac_wt_b_data5; 
output [8 -1:0] sc2mac_wt_b_data6; 
output [8 -1:0] sc2mac_wt_b_data7; 
output [8 -1:0] sc2mac_wt_b_data8; 
output [8 -1:0] sc2mac_wt_b_data9; 
output [8 -1:0] sc2mac_wt_b_data10; 
output [8 -1:0] sc2mac_wt_b_data11; 
output [8 -1:0] sc2mac_wt_b_data12; 
output [8 -1:0] sc2mac_wt_b_data13; 
output [8 -1:0] sc2mac_wt_b_data14; 
output [8 -1:0] sc2mac_wt_b_data15; 
output [8 -1:0] sc2mac_wt_b_data16; 
output [8 -1:0] sc2mac_wt_b_data17; 
output [8 -1:0] sc2mac_wt_b_data18; 
output [8 -1:0] sc2mac_wt_b_data19; 
output [8 -1:0] sc2mac_wt_b_data20; 
output [8 -1:0] sc2mac_wt_b_data21; 
output [8 -1:0] sc2mac_wt_b_data22; 
output [8 -1:0] sc2mac_wt_b_data23; 
output [8 -1:0] sc2mac_wt_b_data24; 
output [8 -1:0] sc2mac_wt_b_data25; 
output [8 -1:0] sc2mac_wt_b_data26; 
output [8 -1:0] sc2mac_wt_b_data27; 
output [8 -1:0] sc2mac_wt_b_data28; 
output [8 -1:0] sc2mac_wt_b_data29; 
output [8 -1:0] sc2mac_wt_b_data30; 
output [8 -1:0] sc2mac_wt_b_data31; 
output [8 -1:0] sc2mac_wt_b_data32; 
output [8 -1:0] sc2mac_wt_b_data33; 
output [8 -1:0] sc2mac_wt_b_data34; 
output [8 -1:0] sc2mac_wt_b_data35; 
output [8 -1:0] sc2mac_wt_b_data36; 
output [8 -1:0] sc2mac_wt_b_data37; 
output [8 -1:0] sc2mac_wt_b_data38; 
output [8 -1:0] sc2mac_wt_b_data39; 
output [8 -1:0] sc2mac_wt_b_data40; 
output [8 -1:0] sc2mac_wt_b_data41; 
output [8 -1:0] sc2mac_wt_b_data42; 
output [8 -1:0] sc2mac_wt_b_data43; 
output [8 -1:0] sc2mac_wt_b_data44; 
output [8 -1:0] sc2mac_wt_b_data45; 
output [8 -1:0] sc2mac_wt_b_data46; 
output [8 -1:0] sc2mac_wt_b_data47; 
output [8 -1:0] sc2mac_wt_b_data48; 
output [8 -1:0] sc2mac_wt_b_data49; 
output [8 -1:0] sc2mac_wt_b_data50; 
output [8 -1:0] sc2mac_wt_b_data51; 
output [8 -1:0] sc2mac_wt_b_data52; 
output [8 -1:0] sc2mac_wt_b_data53; 
output [8 -1:0] sc2mac_wt_b_data54; 
output [8 -1:0] sc2mac_wt_b_data55; 
output [8 -1:0] sc2mac_wt_b_data56; 
output [8 -1:0] sc2mac_wt_b_data57; 
output [8 -1:0] sc2mac_wt_b_data58; 
output [8 -1:0] sc2mac_wt_b_data59; 
output [8 -1:0] sc2mac_wt_b_data60; 
output [8 -1:0] sc2mac_wt_b_data61; 
output [8 -1:0] sc2mac_wt_b_data62; 
output [8 -1:0] sc2mac_wt_b_data63; 
output [32/2 -1:0] sc2mac_wt_b_sel;
input cdma2sc_wt_updt; /* data valid */
input [13:0] cdma2sc_wt_kernels;
input [15 -1:0] cdma2sc_wt_entries;
input [8:0] cdma2sc_wmb_entries;
output sc2cdma_wt_updt; /* data valid */
output [13:0] sc2cdma_wt_kernels;
output [15 -1:0] sc2cdma_wt_entries;
output [8:0] sc2cdma_wmb_entries;
input dla_clk_ovr_on_sync;
input global_clk_ovr_on_sync;
input tmc2slcg_disable_clock_gating;

wrapper_csc wrapper_csc(
.nvdla_core_clk(nvdla_core_clk),
.nvdla_core_rstn(nvdla_core_rstn),
.sc2cdma_dat_pending_req(sc2cdma_dat_pending_req),
.sc2cdma_wt_pending_req(sc2cdma_wt_pending_req),
.accu2sc_credit_vld(accu2sc_credit_vld),
.accu2sc_credit_size(accu2sc_credit_size),
.cdma2sc_dat_pending_ack(cdma2sc_dat_pending_ack),
.cdma2sc_wt_pending_ack(cdma2sc_wt_pending_ack),
.csb2csc_req_pvld(csb2csc_req_pvld),
.csb2csc_req_prdy(csb2csc_req_prdy),
.csb2csc_req_pd(csb2csc_req_pd),
.csc2csb_resp_valid(csc2csb_resp_valid),
.csc2csb_resp_pd(csc2csb_resp_pd),
.cdma2sc_dat_updt(cdma2sc_dat_updt),
.cdma2sc_dat_entries(cdma2sc_dat_entries),
.cdma2sc_dat_slices(cdma2sc_dat_slices),
.sc2cdma_dat_updt(sc2cdma_dat_updt),
.sc2cdma_dat_entries(sc2cdma_dat_entries),
.sc2cdma_dat_slices(sc2cdma_dat_slices),
.pwrbus_ram_pd(pwrbus_ram_pd),
.sc2buf_dat_rd_en(sc2buf_dat_rd_en),
.sc2buf_dat_rd_addr(sc2buf_dat_rd_addr),
.sc2buf_dat_rd_valid(sc2buf_dat_rd_valid),
.sc2buf_dat_rd_data(sc2buf_dat_rd_data),
.sc2buf_dat_rd_shift(sc2buf_dat_rd_shift),
.sc2buf_dat_rd_next1_en(sc2buf_dat_rd_next1_en),
.sc2buf_dat_rd_next1_addr(sc2buf_dat_rd_next1_addr),
.sc2buf_wmb_rd_en(sc2buf_wmb_rd_en),
.sc2buf_wmb_rd_addr(sc2buf_wmb_rd_addr),
.sc2buf_wmb_rd_valid(sc2buf_wmb_rd_valid),
.sc2buf_wmb_rd_data(sc2buf_wmb_rd_data),
.sc2buf_wt_rd_en(sc2buf_wt_rd_en),
.sc2buf_wt_rd_addr(sc2buf_wt_rd_addr),
.sc2buf_wt_rd_valid(sc2buf_wt_rd_valid),
.sc2buf_wt_rd_data(sc2buf_wt_rd_data),
.sc2mac_dat_a_pvld(sc2mac_dat_a_pvld),
.sc2mac_dat_a_mask(sc2mac_dat_a_mask),
.sc2mac_dat_a_data0(sc2mac_dat_a_data0),
.sc2mac_dat_a_data1(sc2mac_dat_a_data1),
.sc2mac_dat_a_data2(sc2mac_dat_a_data2),
.sc2mac_dat_a_data3(sc2mac_dat_a_data3),
.sc2mac_dat_a_data4(sc2mac_dat_a_data4),
.sc2mac_dat_a_data5(sc2mac_dat_a_data5),
.sc2mac_dat_a_data6(sc2mac_dat_a_data6),
.sc2mac_dat_a_data7(sc2mac_dat_a_data7),
.sc2mac_dat_a_data8(sc2mac_dat_a_data8),
.sc2mac_dat_a_data9(sc2mac_dat_a_data9),
.sc2mac_dat_a_data10(sc2mac_dat_a_data10),
.sc2mac_dat_a_data11(sc2mac_dat_a_data11),
.sc2mac_dat_a_data12(sc2mac_dat_a_data12),
.sc2mac_dat_a_data13(sc2mac_dat_a_data13),
.sc2mac_dat_a_data14(sc2mac_dat_a_data14),
.sc2mac_dat_a_data15(sc2mac_dat_a_data15),
.sc2mac_dat_a_data16(sc2mac_dat_a_data16),
.sc2mac_dat_a_data17(sc2mac_dat_a_data17),
.sc2mac_dat_a_data18(sc2mac_dat_a_data18),
.sc2mac_dat_a_data19(sc2mac_dat_a_data19),
.sc2mac_dat_a_data20(sc2mac_dat_a_data20),
.sc2mac_dat_a_data21(sc2mac_dat_a_data21),
.sc2mac_dat_a_data22(sc2mac_dat_a_data22),
.sc2mac_dat_a_data23(sc2mac_dat_a_data23),
.sc2mac_dat_a_data24(sc2mac_dat_a_data24),
.sc2mac_dat_a_data25(sc2mac_dat_a_data25),
.sc2mac_dat_a_data26(sc2mac_dat_a_data26),
.sc2mac_dat_a_data27(sc2mac_dat_a_data27),
.sc2mac_dat_a_data28(sc2mac_dat_a_data28),
.sc2mac_dat_a_data29(sc2mac_dat_a_data29),
.sc2mac_dat_a_data30(sc2mac_dat_a_data30),
.sc2mac_dat_a_data31(sc2mac_dat_a_data31),
.sc2mac_dat_a_data32(sc2mac_dat_a_data32),
.sc2mac_dat_a_data33(sc2mac_dat_a_data33),
.sc2mac_dat_a_data34(sc2mac_dat_a_data34),
.sc2mac_dat_a_data35(sc2mac_dat_a_data35),
.sc2mac_dat_a_data36(sc2mac_dat_a_data36),
.sc2mac_dat_a_data37(sc2mac_dat_a_data37),
.sc2mac_dat_a_data38(sc2mac_dat_a_data38),
.sc2mac_dat_a_data39(sc2mac_dat_a_data39),
.sc2mac_dat_a_data40(sc2mac_dat_a_data40),
.sc2mac_dat_a_data41(sc2mac_dat_a_data41),
.sc2mac_dat_a_data42(sc2mac_dat_a_data42),
.sc2mac_dat_a_data43(sc2mac_dat_a_data43),
.sc2mac_dat_a_data44(sc2mac_dat_a_data44),
.sc2mac_dat_a_data45(sc2mac_dat_a_data45),
.sc2mac_dat_a_data46(sc2mac_dat_a_data46),
.sc2mac_dat_a_data47(sc2mac_dat_a_data47),
.sc2mac_dat_a_data48(sc2mac_dat_a_data48),
.sc2mac_dat_a_data49(sc2mac_dat_a_data49),
.sc2mac_dat_a_data50(sc2mac_dat_a_data50),
.sc2mac_dat_a_data51(sc2mac_dat_a_data51),
.sc2mac_dat_a_data52(sc2mac_dat_a_data52),
.sc2mac_dat_a_data53(sc2mac_dat_a_data53),
.sc2mac_dat_a_data54(sc2mac_dat_a_data54),
.sc2mac_dat_a_data55(sc2mac_dat_a_data55),
.sc2mac_dat_a_data56(sc2mac_dat_a_data56),
.sc2mac_dat_a_data57(sc2mac_dat_a_data57),
.sc2mac_dat_a_data58(sc2mac_dat_a_data58),
.sc2mac_dat_a_data59(sc2mac_dat_a_data59),
.sc2mac_dat_a_data60(sc2mac_dat_a_data60),
.sc2mac_dat_a_data61(sc2mac_dat_a_data61),
.sc2mac_dat_a_data62(sc2mac_dat_a_data62),
.sc2mac_dat_a_data63(sc2mac_dat_a_data63),
.sc2mac_dat_a_pd(sc2mac_dat_a_pd),
.sc2mac_dat_b_pvld(sc2mac_dat_b_pvld),
.sc2mac_dat_b_mask(sc2mac_dat_b_mask),
.sc2mac_dat_b_data0(sc2mac_dat_b_data0),
.sc2mac_dat_b_data1(sc2mac_dat_b_data1),
.sc2mac_dat_b_data2(sc2mac_dat_b_data2),
.sc2mac_dat_b_data3(sc2mac_dat_b_data3),
.sc2mac_dat_b_data4(sc2mac_dat_b_data4),
.sc2mac_dat_b_data5(sc2mac_dat_b_data5),
.sc2mac_dat_b_data6(sc2mac_dat_b_data6),
.sc2mac_dat_b_data7(sc2mac_dat_b_data7),
.sc2mac_dat_b_data8(sc2mac_dat_b_data8),
.sc2mac_dat_b_data9(sc2mac_dat_b_data9),
.sc2mac_dat_b_data10(sc2mac_dat_b_data10),
.sc2mac_dat_b_data11(sc2mac_dat_b_data11),
.sc2mac_dat_b_data12(sc2mac_dat_b_data12),
.sc2mac_dat_b_data13(sc2mac_dat_b_data13),
.sc2mac_dat_b_data14(sc2mac_dat_b_data14),
.sc2mac_dat_b_data15(sc2mac_dat_b_data15),
.sc2mac_dat_b_data16(sc2mac_dat_b_data16),
.sc2mac_dat_b_data17(sc2mac_dat_b_data17),
.sc2mac_dat_b_data18(sc2mac_dat_b_data18),
.sc2mac_dat_b_data19(sc2mac_dat_b_data19),
.sc2mac_dat_b_data20(sc2mac_dat_b_data20),
.sc2mac_dat_b_data21(sc2mac_dat_b_data21),
.sc2mac_dat_b_data22(sc2mac_dat_b_data22),
.sc2mac_dat_b_data23(sc2mac_dat_b_data23),
.sc2mac_dat_b_data24(sc2mac_dat_b_data24),
.sc2mac_dat_b_data25(sc2mac_dat_b_data25),
.sc2mac_dat_b_data26(sc2mac_dat_b_data26),
.sc2mac_dat_b_data27(sc2mac_dat_b_data27),
.sc2mac_dat_b_data28(sc2mac_dat_b_data28),
.sc2mac_dat_b_data29(sc2mac_dat_b_data29),
.sc2mac_dat_b_data30(sc2mac_dat_b_data30),
.sc2mac_dat_b_data31(sc2mac_dat_b_data31),
.sc2mac_dat_b_data32(sc2mac_dat_b_data32),
.sc2mac_dat_b_data33(sc2mac_dat_b_data33),
.sc2mac_dat_b_data34(sc2mac_dat_b_data34),
.sc2mac_dat_b_data35(sc2mac_dat_b_data35),
.sc2mac_dat_b_data36(sc2mac_dat_b_data36),
.sc2mac_dat_b_data37(sc2mac_dat_b_data37),
.sc2mac_dat_b_data38(sc2mac_dat_b_data38),
.sc2mac_dat_b_data39(sc2mac_dat_b_data39),
.sc2mac_dat_b_data40(sc2mac_dat_b_data40),
.sc2mac_dat_b_data41(sc2mac_dat_b_data41),
.sc2mac_dat_b_data42(sc2mac_dat_b_data42),
.sc2mac_dat_b_data43(sc2mac_dat_b_data43),
.sc2mac_dat_b_data44(sc2mac_dat_b_data44),
.sc2mac_dat_b_data45(sc2mac_dat_b_data45),
.sc2mac_dat_b_data46(sc2mac_dat_b_data46),
.sc2mac_dat_b_data47(sc2mac_dat_b_data47),
.sc2mac_dat_b_data48(sc2mac_dat_b_data48),
.sc2mac_dat_b_data49(sc2mac_dat_b_data49),
.sc2mac_dat_b_data50(sc2mac_dat_b_data50),
.sc2mac_dat_b_data51(sc2mac_dat_b_data51),
.sc2mac_dat_b_data52(sc2mac_dat_b_data52),
.sc2mac_dat_b_data53(sc2mac_dat_b_data53),
.sc2mac_dat_b_data54(sc2mac_dat_b_data54),
.sc2mac_dat_b_data55(sc2mac_dat_b_data55),
.sc2mac_dat_b_data56(sc2mac_dat_b_data56),
.sc2mac_dat_b_data57(sc2mac_dat_b_data57),
.sc2mac_dat_b_data58(sc2mac_dat_b_data58),
.sc2mac_dat_b_data59(sc2mac_dat_b_data59),
.sc2mac_dat_b_data60(sc2mac_dat_b_data60),
.sc2mac_dat_b_data61(sc2mac_dat_b_data61),
.sc2mac_dat_b_data62(sc2mac_dat_b_data62),
.sc2mac_dat_b_data63(sc2mac_dat_b_data63),
.sc2mac_dat_b_pd(sc2mac_dat_b_pd),
.sc2mac_wt_a_pvld(sc2mac_wt_a_pvld),
.sc2mac_wt_a_mask(sc2mac_wt_a_mask),
.sc2mac_wt_a_data0(sc2mac_wt_a_data0),
.sc2mac_wt_a_data1(sc2mac_wt_a_data1),
.sc2mac_wt_a_data2(sc2mac_wt_a_data2),
.sc2mac_wt_a_data3(sc2mac_wt_a_data3),
.sc2mac_wt_a_data4(sc2mac_wt_a_data4),
.sc2mac_wt_a_data5(sc2mac_wt_a_data5),
.sc2mac_wt_a_data6(sc2mac_wt_a_data6),
.sc2mac_wt_a_data7(sc2mac_wt_a_data7),
.sc2mac_wt_a_data8(sc2mac_wt_a_data8),
.sc2mac_wt_a_data9(sc2mac_wt_a_data9),
.sc2mac_wt_a_data10(sc2mac_wt_a_data10),
.sc2mac_wt_a_data11(sc2mac_wt_a_data11),
.sc2mac_wt_a_data12(sc2mac_wt_a_data12),
.sc2mac_wt_a_data13(sc2mac_wt_a_data13),
.sc2mac_wt_a_data14(sc2mac_wt_a_data14),
.sc2mac_wt_a_data15(sc2mac_wt_a_data15),
.sc2mac_wt_a_data16(sc2mac_wt_a_data16),
.sc2mac_wt_a_data17(sc2mac_wt_a_data17),
.sc2mac_wt_a_data18(sc2mac_wt_a_data18),
.sc2mac_wt_a_data19(sc2mac_wt_a_data19),
.sc2mac_wt_a_data20(sc2mac_wt_a_data20),
.sc2mac_wt_a_data21(sc2mac_wt_a_data21),
.sc2mac_wt_a_data22(sc2mac_wt_a_data22),
.sc2mac_wt_a_data23(sc2mac_wt_a_data23),
.sc2mac_wt_a_data24(sc2mac_wt_a_data24),
.sc2mac_wt_a_data25(sc2mac_wt_a_data25),
.sc2mac_wt_a_data26(sc2mac_wt_a_data26),
.sc2mac_wt_a_data27(sc2mac_wt_a_data27),
.sc2mac_wt_a_data28(sc2mac_wt_a_data28),
.sc2mac_wt_a_data29(sc2mac_wt_a_data29),
.sc2mac_wt_a_data30(sc2mac_wt_a_data30),
.sc2mac_wt_a_data31(sc2mac_wt_a_data31),
.sc2mac_wt_a_data32(sc2mac_wt_a_data32),
.sc2mac_wt_a_data33(sc2mac_wt_a_data33),
.sc2mac_wt_a_data34(sc2mac_wt_a_data34),
.sc2mac_wt_a_data35(sc2mac_wt_a_data35),
.sc2mac_wt_a_data36(sc2mac_wt_a_data36),
.sc2mac_wt_a_data37(sc2mac_wt_a_data37),
.sc2mac_wt_a_data38(sc2mac_wt_a_data38),
.sc2mac_wt_a_data39(sc2mac_wt_a_data39),
.sc2mac_wt_a_data40(sc2mac_wt_a_data40),
.sc2mac_wt_a_data41(sc2mac_wt_a_data41),
.sc2mac_wt_a_data42(sc2mac_wt_a_data42),
.sc2mac_wt_a_data43(sc2mac_wt_a_data43),
.sc2mac_wt_a_data44(sc2mac_wt_a_data44),
.sc2mac_wt_a_data45(sc2mac_wt_a_data45),
.sc2mac_wt_a_data46(sc2mac_wt_a_data46),
.sc2mac_wt_a_data47(sc2mac_wt_a_data47),
.sc2mac_wt_a_data48(sc2mac_wt_a_data48),
.sc2mac_wt_a_data49(sc2mac_wt_a_data49),
.sc2mac_wt_a_data50(sc2mac_wt_a_data50),
.sc2mac_wt_a_data51(sc2mac_wt_a_data51),
.sc2mac_wt_a_data52(sc2mac_wt_a_data52),
.sc2mac_wt_a_data53(sc2mac_wt_a_data53),
.sc2mac_wt_a_data54(sc2mac_wt_a_data54),
.sc2mac_wt_a_data55(sc2mac_wt_a_data55),
.sc2mac_wt_a_data56(sc2mac_wt_a_data56),
.sc2mac_wt_a_data57(sc2mac_wt_a_data57),
.sc2mac_wt_a_data58(sc2mac_wt_a_data58),
.sc2mac_wt_a_data59(sc2mac_wt_a_data59),
.sc2mac_wt_a_data60(sc2mac_wt_a_data60),
.sc2mac_wt_a_data61(sc2mac_wt_a_data61),
.sc2mac_wt_a_data62(sc2mac_wt_a_data62),
.sc2mac_wt_a_data63(sc2mac_wt_a_data63),
.sc2mac_wt_a_sel(sc2mac_wt_a_sel),
.sc2mac_wt_b_pvld(sc2mac_wt_b_pvld),
.sc2mac_wt_b_mask(sc2mac_wt_b_mask),
.sc2mac_wt_b_data0(sc2mac_wt_b_data0),
.sc2mac_wt_b_data1(sc2mac_wt_b_data1),
.sc2mac_wt_b_data2(sc2mac_wt_b_data2),
.sc2mac_wt_b_data3(sc2mac_wt_b_data3),
.sc2mac_wt_b_data4(sc2mac_wt_b_data4),
.sc2mac_wt_b_data5(sc2mac_wt_b_data5),
.sc2mac_wt_b_data6(sc2mac_wt_b_data6),
.sc2mac_wt_b_data7(sc2mac_wt_b_data7),
.sc2mac_wt_b_data8(sc2mac_wt_b_data8),
.sc2mac_wt_b_data9(sc2mac_wt_b_data9),
.sc2mac_wt_b_data10(sc2mac_wt_b_data10),
.sc2mac_wt_b_data11(sc2mac_wt_b_data11),
.sc2mac_wt_b_data12(sc2mac_wt_b_data12),
.sc2mac_wt_b_data13(sc2mac_wt_b_data13),
.sc2mac_wt_b_data14(sc2mac_wt_b_data14),
.sc2mac_wt_b_data15(sc2mac_wt_b_data15),
.sc2mac_wt_b_data16(sc2mac_wt_b_data16),
.sc2mac_wt_b_data17(sc2mac_wt_b_data17),
.sc2mac_wt_b_data18(sc2mac_wt_b_data18),
.sc2mac_wt_b_data19(sc2mac_wt_b_data19),
.sc2mac_wt_b_data20(sc2mac_wt_b_data20),
.sc2mac_wt_b_data21(sc2mac_wt_b_data21),
.sc2mac_wt_b_data22(sc2mac_wt_b_data22),
.sc2mac_wt_b_data23(sc2mac_wt_b_data23),
.sc2mac_wt_b_data24(sc2mac_wt_b_data24),
.sc2mac_wt_b_data25(sc2mac_wt_b_data25),
.sc2mac_wt_b_data26(sc2mac_wt_b_data26),
.sc2mac_wt_b_data27(sc2mac_wt_b_data27),
.sc2mac_wt_b_data28(sc2mac_wt_b_data28),
.sc2mac_wt_b_data29(sc2mac_wt_b_data29),
.sc2mac_wt_b_data30(sc2mac_wt_b_data30),
.sc2mac_wt_b_data31(sc2mac_wt_b_data31),
.sc2mac_wt_b_data32(sc2mac_wt_b_data32),
.sc2mac_wt_b_data33(sc2mac_wt_b_data33),
.sc2mac_wt_b_data34(sc2mac_wt_b_data34),
.sc2mac_wt_b_data35(sc2mac_wt_b_data35),
.sc2mac_wt_b_data36(sc2mac_wt_b_data36),
.sc2mac_wt_b_data37(sc2mac_wt_b_data37),
.sc2mac_wt_b_data38(sc2mac_wt_b_data38),
.sc2mac_wt_b_data39(sc2mac_wt_b_data39),
.sc2mac_wt_b_data40(sc2mac_wt_b_data40),
.sc2mac_wt_b_data41(sc2mac_wt_b_data41),
.sc2mac_wt_b_data42(sc2mac_wt_b_data42),
.sc2mac_wt_b_data43(sc2mac_wt_b_data43),
.sc2mac_wt_b_data44(sc2mac_wt_b_data44),
.sc2mac_wt_b_data45(sc2mac_wt_b_data45),
.sc2mac_wt_b_data46(sc2mac_wt_b_data46),
.sc2mac_wt_b_data47(sc2mac_wt_b_data47),
.sc2mac_wt_b_data48(sc2mac_wt_b_data48),
.sc2mac_wt_b_data49(sc2mac_wt_b_data49),
.sc2mac_wt_b_data50(sc2mac_wt_b_data50),
.sc2mac_wt_b_data51(sc2mac_wt_b_data51),
.sc2mac_wt_b_data52(sc2mac_wt_b_data52),
.sc2mac_wt_b_data53(sc2mac_wt_b_data53),
.sc2mac_wt_b_data54(sc2mac_wt_b_data54),
.sc2mac_wt_b_data55(sc2mac_wt_b_data55),
.sc2mac_wt_b_data56(sc2mac_wt_b_data56),
.sc2mac_wt_b_data57(sc2mac_wt_b_data57),
.sc2mac_wt_b_data58(sc2mac_wt_b_data58),
.sc2mac_wt_b_data59(sc2mac_wt_b_data59),
.sc2mac_wt_b_data60(sc2mac_wt_b_data60),
.sc2mac_wt_b_data61(sc2mac_wt_b_data61),
.sc2mac_wt_b_data62(sc2mac_wt_b_data62),
.sc2mac_wt_b_data63(sc2mac_wt_b_data63),
.sc2mac_wt_b_sel(sc2mac_wt_b_sel),
.cdma2sc_wt_updt(cdma2sc_wt_updt),
.cdma2sc_wt_kernels(cdma2sc_wt_kernels),
.cdma2sc_wt_entries(cdma2sc_wt_entries),
.cdma2sc_wmb_entries(cdma2sc_wmb_entries),
.sc2cdma_wt_updt(sc2cdma_wt_updt),
.sc2cdma_wt_kernels(sc2cdma_wt_kernels),
.sc2cdma_wt_entries(sc2cdma_wt_entries),
.sc2cdma_wmb_entries(sc2cdma_wmb_entries),
.dla_clk_ovr_on_sync(dla_clk_ovr_on_sync),
.global_clk_ovr_on_sync(global_clk_ovr_on_sync),
.tmc2slcg_disable_clock_gating(tmc2slcg_disable_clock_gating)
);
endmodule
