module wrapper_csc (
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
  ,sc2buf_wmb_rd_addr //|> o
  ,sc2buf_wmb_rd_en //|> o
  ,sc2buf_wmb_rd_data //|< i
  ,sc2buf_wmb_rd_valid //|< i
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
output sc2buf_wmb_rd_en; /* data valid */
output [13 -1:0] sc2buf_wmb_rd_addr;
input sc2buf_wmb_rd_valid; /* data valid */
input [512 -1:0] sc2buf_wmb_rd_data;
output sc2buf_wt_rd_en; /* data valid */
output [13 -1:0] sc2buf_wt_rd_addr;
input sc2buf_wt_rd_valid; /* data valid */
input [512 -1:0] sc2buf_wt_rd_data;
output sc2mac_dat_a_pvld; /* data valid */
output [64 -1:0] sc2mac_dat_a_mask;
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: output [8 -1:0] sc2mac_dat_a_data${i}; );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

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
//| eperl: generated_end (DO NOT EDIT ABOVE)
output [8:0] sc2mac_dat_a_pd;
output sc2mac_dat_b_pvld; /* data valid */
output [64 -1:0] sc2mac_dat_b_mask;
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: output [8 -1:0] sc2mac_dat_b_data${i}; );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

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
//| eperl: generated_end (DO NOT EDIT ABOVE)
output [8:0] sc2mac_dat_b_pd;
output sc2mac_wt_a_pvld; /* data valid */
output [64 -1:0] sc2mac_wt_a_mask;
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: output [8 -1:0] sc2mac_wt_a_data${i}; );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

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
//| eperl: generated_end (DO NOT EDIT ABOVE)
output [32/2 -1:0] sc2mac_wt_a_sel;
output sc2mac_wt_b_pvld; /* data valid */
output [64 -1:0] sc2mac_wt_b_mask;
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: output [8 -1:0] sc2mac_wt_b_data${i}; );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

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
//| eperl: generated_end (DO NOT EDIT ABOVE)
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

 wire          clock; // @[:@23626.4]
  wire          reset; // @[:@23627.4]
  wire          io_nvdla_clock_nvdla_core_clk; // @[:@23628.4]
  wire          io_nvdla_clock_dla_clk_ovr_on_sync; // @[:@23628.4]
  wire          io_nvdla_clock_global_clk_ovr_on_sync; // @[:@23628.4]
  wire          io_nvdla_clock_tmc2slcg_disable_clock_gating; // @[:@23628.4]
  wire          io_nvdla_core_rstn; // @[:@23628.4]
  wire         io_sc2cdma_dat_pending_req; // @[:@23628.4]
  wire         io_sc2cdma_wt_pending_req; // @[:@23628.4]
  wire          io_cdma2sc_dat_pending_ack; // @[:@23628.4]
  wire          io_cdma2sc_wt_pending_ack; // @[:@23628.4]
  wire          io_cdma2sc_dat_updt_valid; // @[:@23628.4]
  wire  [14:0]  io_cdma2sc_dat_updt_bits_entries; // @[:@23628.4]
  wire  [13:0]  io_cdma2sc_dat_updt_bits_slices; // @[:@23628.4]
  wire         io_sc2cdma_dat_updt_valid; // @[:@23628.4]
  wire [14:0]  io_sc2cdma_dat_updt_bits_entries; // @[:@23628.4]
  wire [13:0]  io_sc2cdma_dat_updt_bits_slices; // @[:@23628.4]
  wire          io_cdma2sc_wt_updt_valid; // @[:@23628.4]
  wire  [14:0]  io_cdma2sc_wt_updt_bits_entries; // @[:@23628.4]
  wire  [13:0]  io_cdma2sc_wt_updt_bits_kernels; // @[:@23628.4]
  wire         io_sc2cdma_wt_updt_valid; // @[:@23628.4]
  wire [14:0]  io_sc2cdma_wt_updt_bits_entries; // @[:@23628.4]
  wire [13:0]  io_sc2cdma_wt_updt_bits_kernels; // @[:@23628.4]
  wire [8:0]   io_sc2cdma_wmb_entries; // @[:@23628.4]
  wire  [8:0]   io_cdma2sc_wmb_entries; // @[:@23628.4]
  wire          io_accu2sc_credit_size_valid; // @[:@23628.4]
  wire  [2:0]   io_accu2sc_credit_size_bits; // @[:@23628.4]
  wire         io_csb2csc_req_ready; // @[:@23628.4]
  wire          io_csb2csc_req_valid; // @[:@23628.4]
  wire  [62:0]  io_csb2csc_req_bits; // @[:@23628.4]
  wire         io_csb2csc_resp_valid; // @[:@23628.4]
  wire [33:0]  io_csb2csc_resp_bits; // @[:@23628.4]
  wire         io_sc2buf_dat_rd_addr_valid; // @[:@23628.4]
  wire [12:0]  io_sc2buf_dat_rd_addr_bits; // @[:@23628.4]
  wire          io_sc2buf_dat_rd_data_valid; // @[:@23628.4]
  wire  [511:0] io_sc2buf_dat_rd_data_bits; // @[:@23628.4]
  wire         io_sc2buf_wt_rd_addr_valid; // @[:@23628.4]
  wire [12:0]  io_sc2buf_wt_rd_addr_bits; // @[:@23628.4]
  wire          io_sc2buf_wt_rd_data_valid; // @[:@23628.4]
  wire  [511:0] io_sc2buf_wt_rd_data_bits; // @[:@23628.4]
  wire         io_sc2mac_dat_a_valid; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_0; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_1; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_2; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_3; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_4; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_5; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_6; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_7; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_8; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_9; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_10; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_11; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_12; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_13; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_14; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_15; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_16; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_17; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_18; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_19; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_20; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_21; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_22; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_23; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_24; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_25; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_26; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_27; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_28; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_29; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_30; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_31; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_32; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_33; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_34; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_35; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_36; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_37; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_38; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_39; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_40; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_41; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_42; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_43; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_44; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_45; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_46; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_47; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_48; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_49; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_50; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_51; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_52; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_53; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_54; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_55; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_56; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_57; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_58; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_59; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_60; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_61; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_62; // @[:@23628.4]
  wire         io_sc2mac_dat_a_bits_mask_63; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_0; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_1; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_2; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_3; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_4; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_5; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_6; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_7; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_8; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_9; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_10; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_11; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_12; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_13; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_14; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_15; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_16; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_17; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_18; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_19; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_20; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_21; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_22; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_23; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_24; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_25; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_26; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_27; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_28; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_29; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_30; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_31; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_32; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_33; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_34; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_35; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_36; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_37; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_38; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_39; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_40; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_41; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_42; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_43; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_44; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_45; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_46; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_47; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_48; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_49; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_50; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_51; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_52; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_53; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_54; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_55; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_56; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_57; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_58; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_59; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_60; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_61; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_62; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_63; // @[:@23628.4]
  wire [8:0]   io_sc2mac_dat_a_bits_pd; // @[:@23628.4]
  wire         io_sc2mac_dat_b_valid; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_0; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_1; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_2; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_3; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_4; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_5; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_6; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_7; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_8; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_9; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_10; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_11; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_12; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_13; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_14; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_15; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_16; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_17; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_18; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_19; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_20; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_21; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_22; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_23; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_24; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_25; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_26; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_27; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_28; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_29; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_30; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_31; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_32; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_33; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_34; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_35; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_36; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_37; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_38; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_39; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_40; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_41; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_42; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_43; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_44; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_45; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_46; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_47; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_48; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_49; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_50; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_51; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_52; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_53; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_54; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_55; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_56; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_57; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_58; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_59; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_60; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_61; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_62; // @[:@23628.4]
  wire         io_sc2mac_dat_b_bits_mask_63; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_0; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_1; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_2; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_3; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_4; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_5; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_6; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_7; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_8; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_9; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_10; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_11; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_12; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_13; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_14; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_15; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_16; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_17; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_18; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_19; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_20; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_21; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_22; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_23; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_24; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_25; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_26; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_27; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_28; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_29; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_30; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_31; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_32; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_33; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_34; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_35; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_36; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_37; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_38; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_39; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_40; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_41; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_42; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_43; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_44; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_45; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_46; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_47; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_48; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_49; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_50; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_51; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_52; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_53; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_54; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_55; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_56; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_57; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_58; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_59; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_60; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_61; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_62; // @[:@23628.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_63; // @[:@23628.4]
  wire [8:0]   io_sc2mac_dat_b_bits_pd; // @[:@23628.4]
  wire         io_sc2mac_wt_a_valid; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_sel_0; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_sel_1; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_sel_2; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_sel_3; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_sel_4; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_sel_5; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_sel_6; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_sel_7; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_sel_8; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_sel_9; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_sel_10; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_sel_11; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_sel_12; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_sel_13; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_sel_14; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_sel_15; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_0; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_1; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_2; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_3; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_4; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_5; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_6; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_7; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_8; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_9; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_10; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_11; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_12; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_13; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_14; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_15; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_16; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_17; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_18; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_19; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_20; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_21; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_22; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_23; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_24; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_25; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_26; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_27; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_28; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_29; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_30; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_31; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_32; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_33; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_34; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_35; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_36; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_37; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_38; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_39; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_40; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_41; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_42; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_43; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_44; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_45; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_46; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_47; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_48; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_49; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_50; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_51; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_52; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_53; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_54; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_55; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_56; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_57; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_58; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_59; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_60; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_61; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_62; // @[:@23628.4]
  wire         io_sc2mac_wt_a_bits_mask_63; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_0; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_1; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_2; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_3; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_4; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_5; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_6; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_7; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_8; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_9; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_10; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_11; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_12; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_13; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_14; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_15; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_16; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_17; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_18; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_19; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_20; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_21; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_22; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_23; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_24; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_25; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_26; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_27; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_28; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_29; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_30; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_31; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_32; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_33; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_34; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_35; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_36; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_37; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_38; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_39; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_40; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_41; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_42; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_43; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_44; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_45; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_46; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_47; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_48; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_49; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_50; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_51; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_52; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_53; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_54; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_55; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_56; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_57; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_58; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_59; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_60; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_61; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_62; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_a_bits_data_63; // @[:@23628.4]
  wire         io_sc2mac_wt_b_valid; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_sel_0; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_sel_1; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_sel_2; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_sel_3; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_sel_4; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_sel_5; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_sel_6; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_sel_7; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_sel_8; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_sel_9; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_sel_10; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_sel_11; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_sel_12; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_sel_13; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_sel_14; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_sel_15; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_0; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_1; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_2; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_3; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_4; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_5; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_6; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_7; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_8; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_9; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_10; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_11; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_12; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_13; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_14; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_15; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_16; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_17; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_18; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_19; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_20; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_21; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_22; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_23; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_24; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_25; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_26; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_27; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_28; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_29; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_30; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_31; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_32; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_33; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_34; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_35; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_36; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_37; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_38; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_39; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_40; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_41; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_42; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_43; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_44; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_45; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_46; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_47; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_48; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_49; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_50; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_51; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_52; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_53; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_54; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_55; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_56; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_57; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_58; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_59; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_60; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_61; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_62; // @[:@23628.4]
  wire         io_sc2mac_wt_b_bits_mask_63; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_0; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_1; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_2; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_3; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_4; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_5; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_6; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_7; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_8; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_9; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_10; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_11; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_12; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_13; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_14; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_15; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_16; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_17; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_18; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_19; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_20; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_21; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_22; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_23; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_24; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_25; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_26; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_27; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_28; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_29; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_30; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_31; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_32; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_33; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_34; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_35; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_36; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_37; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_38; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_39; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_40; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_41; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_42; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_43; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_44; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_45; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_46; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_47; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_48; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_49; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_50; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_51; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_52; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_53; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_54; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_55; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_56; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_57; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_58; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_59; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_60; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_61; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_62; // @[:@23628.4]
  wire [7:0]   io_sc2mac_wt_b_bits_data_63; // @[:@23628.4]
  wire  [31:0]  io_pwrbus_ram_pd; // @[:@23628.4]
  assign        io_nvdla_clock_nvdla_core_clk=nvdla_core_clk; 
  assign        io_nvdla_clock_dla_clk_ovr_on_sync=dla_clk_ovr_on_sync;
  assign        io_nvdla_clock_global_clk_ovr_on_sync=global_clk_ovr_on_sync;
  assign        io_nvdla_clock_tmc2slcg_disable_clock_gating=tmc2slcg_disable_clock_gating; 
  assign        io_nvdla_core_rstn=nvdla_core_rstn; 
  assign         io_sc2cdma_dat_pending_req=sc2cdma_dat_pending_req; 
  assign         io_sc2cdma_wt_pending_req=sc2cdma_wt_pending_req; 
  assign          io_cdma2sc_dat_pending_ack=cdma2sc_dat_pending_ack; 
  assign          io_cdma2sc_wt_pending_ack=cdma2sc_wt_pending_ack; 
  assign          io_cdma2sc_dat_updt_valid=cdma2sc_dat_updt;
  assign          io_cdma2sc_dat_updt_bits_entries=cdma2sc_dat_entries;
  assign          io_cdma2sc_dat_updt_bits_slices=cdma2sc_dat_slices;
  assign         io_sc2cdma_dat_updt_valid=sc2cdma_dat_updt;
  assign         io_sc2cdma_dat_updt_bits_entries=sc2cdma_dat_entries;
  assign         io_sc2cdma_dat_updt_bits_slices=sc2cdma_dat_slices;
  assign          io_cdma2sc_wt_updt_valid=cdma2sc_wt_updt;
  assign          io_cdma2sc_wt_updt_bits_entries=cdma2sc_wt_entries;
  assign          io_cdma2sc_wt_updt_bits_kernels=cdma2sc_wt_kernels;
  assign         io_sc2cdma_wt_updt_valid=sc2cdma_wt_updt;
  assign         io_sc2cdma_wt_updt_bits_entries=sc2cdma_wt_entries;
  assign         io_sc2cdma_wt_updt_bits_kernels=sc2cdma_wt_kernels;
  assign         io_sc2cdma_wmb_entries=sc2cdma_wmb_entries;
  assign         io_cdma2sc_wmb_entries=cdma2sc_wmb_entries;
  assign          io_accu2sc_credit_size_valid=accu2sc_credit_vld;
  assign         io_accu2sc_credit_size_bits=accu2sc_credit_size;
  assign         io_csb2csc_req_ready=csb2csc_req_prdy; 
  assign          io_csb2csc_req_valid=csb2csc_req_pvld; 
  assign          io_csb2csc_req_bits=csb2csc_req_pd;
  assign         io_csb2csc_resp_valid=csc2csb_resp_valid;
  assign         io_csb2csc_resp_bits=csc2csb_resp_pd; 
  assign         io_sc2buf_dat_rd_addr_valid=sc2buf_dat_rd_en;
  assign         io_sc2buf_dat_rd_addr_bits=sc2buf_dat_rd_addr;
  assign          io_sc2buf_dat_rd_data_valid=sc2buf_dat_rd_valid; 
  assign          io_sc2buf_dat_rd_data_bits=sc2buf_dat_rd_data;
  assign         io_sc2buf_wt_rd_addr_valid=sc2buf_wt_rd_en;
  assign         io_sc2buf_wt_rd_addr_bits=sc2buf_wt_rd_addr;
  assign          io_sc2buf_wt_rd_data_valid=sc2buf_wt_rd_valid; 
  assign          io_sc2buf_wt_rd_data_bits=sc2buf_wt_rd_data;
  assign         io_sc2mac_dat_a_valid=sc2mac_dat_a_pvld;
 assign         io_sc2mac_dat_a_bits_mask_0=sc2mac_dat_a_mask[0];
 assign         io_sc2mac_dat_a_bits_mask_1=sc2mac_dat_a_mask[1];
 assign         io_sc2mac_dat_a_bits_mask_2=sc2mac_dat_a_mask[2];
 assign         io_sc2mac_dat_a_bits_mask_3=sc2mac_dat_a_mask[3];
 assign         io_sc2mac_dat_a_bits_mask_4=sc2mac_dat_a_mask[4];
 assign         io_sc2mac_dat_a_bits_mask_5=sc2mac_dat_a_mask[5];
 assign         io_sc2mac_dat_a_bits_mask_6=sc2mac_dat_a_mask[6];
 assign         io_sc2mac_dat_a_bits_mask_7=sc2mac_dat_a_mask[7];
 assign         io_sc2mac_dat_a_bits_mask_8=sc2mac_dat_a_mask[8];
 assign         io_sc2mac_dat_a_bits_mask_9=sc2mac_dat_a_mask[9];
 assign         io_sc2mac_dat_a_bits_mask_10=sc2mac_dat_a_mask[10];
 assign         io_sc2mac_dat_a_bits_mask_11=sc2mac_dat_a_mask[11];
 assign         io_sc2mac_dat_a_bits_mask_12=sc2mac_dat_a_mask[12];
 assign         io_sc2mac_dat_a_bits_mask_13=sc2mac_dat_a_mask[13];
 assign         io_sc2mac_dat_a_bits_mask_14=sc2mac_dat_a_mask[14];
 assign         io_sc2mac_dat_a_bits_mask_15=sc2mac_dat_a_mask[15];
 assign         io_sc2mac_dat_a_bits_mask_16=sc2mac_dat_a_mask[16];
 assign         io_sc2mac_dat_a_bits_mask_17=sc2mac_dat_a_mask[17];
 assign         io_sc2mac_dat_a_bits_mask_18=sc2mac_dat_a_mask[18];
 assign         io_sc2mac_dat_a_bits_mask_19=sc2mac_dat_a_mask[19];
 assign         io_sc2mac_dat_a_bits_mask_20=sc2mac_dat_a_mask[20];
 assign         io_sc2mac_dat_a_bits_mask_21=sc2mac_dat_a_mask[21];
 assign         io_sc2mac_dat_a_bits_mask_22=sc2mac_dat_a_mask[22];
 assign         io_sc2mac_dat_a_bits_mask_23=sc2mac_dat_a_mask[23];
 assign         io_sc2mac_dat_a_bits_mask_24=sc2mac_dat_a_mask[24];
 assign         io_sc2mac_dat_a_bits_mask_25=sc2mac_dat_a_mask[25];
 assign         io_sc2mac_dat_a_bits_mask_26=sc2mac_dat_a_mask[26];
 assign         io_sc2mac_dat_a_bits_mask_27=sc2mac_dat_a_mask[27];
 assign         io_sc2mac_dat_a_bits_mask_28=sc2mac_dat_a_mask[28];
 assign         io_sc2mac_dat_a_bits_mask_29=sc2mac_dat_a_mask[29];
 assign         io_sc2mac_dat_a_bits_mask_30=sc2mac_dat_a_mask[30];
 assign         io_sc2mac_dat_a_bits_mask_31=sc2mac_dat_a_mask[31];
 assign         io_sc2mac_dat_a_bits_mask_32=sc2mac_dat_a_mask[32];
 assign         io_sc2mac_dat_a_bits_mask_33=sc2mac_dat_a_mask[33];
 assign         io_sc2mac_dat_a_bits_mask_34=sc2mac_dat_a_mask[34];
 assign         io_sc2mac_dat_a_bits_mask_35=sc2mac_dat_a_mask[35];
 assign         io_sc2mac_dat_a_bits_mask_36=sc2mac_dat_a_mask[36];
 assign         io_sc2mac_dat_a_bits_mask_37=sc2mac_dat_a_mask[37];
 assign         io_sc2mac_dat_a_bits_mask_38=sc2mac_dat_a_mask[38];
 assign         io_sc2mac_dat_a_bits_mask_39=sc2mac_dat_a_mask[39];
 assign         io_sc2mac_dat_a_bits_mask_40=sc2mac_dat_a_mask[40];
 assign         io_sc2mac_dat_a_bits_mask_41=sc2mac_dat_a_mask[41];
 assign         io_sc2mac_dat_a_bits_mask_42=sc2mac_dat_a_mask[42];
 assign         io_sc2mac_dat_a_bits_mask_43=sc2mac_dat_a_mask[43];
 assign         io_sc2mac_dat_a_bits_mask_44=sc2mac_dat_a_mask[44];
 assign         io_sc2mac_dat_a_bits_mask_45=sc2mac_dat_a_mask[45];
 assign         io_sc2mac_dat_a_bits_mask_46=sc2mac_dat_a_mask[46];
 assign         io_sc2mac_dat_a_bits_mask_47=sc2mac_dat_a_mask[47];
 assign         io_sc2mac_dat_a_bits_mask_48=sc2mac_dat_a_mask[48];
 assign         io_sc2mac_dat_a_bits_mask_49=sc2mac_dat_a_mask[49];
 assign         io_sc2mac_dat_a_bits_mask_50=sc2mac_dat_a_mask[50];
 assign         io_sc2mac_dat_a_bits_mask_51=sc2mac_dat_a_mask[51];
 assign         io_sc2mac_dat_a_bits_mask_52=sc2mac_dat_a_mask[52];
 assign         io_sc2mac_dat_a_bits_mask_53=sc2mac_dat_a_mask[53];
 assign         io_sc2mac_dat_a_bits_mask_54=sc2mac_dat_a_mask[54];
 assign         io_sc2mac_dat_a_bits_mask_55=sc2mac_dat_a_mask[55];
 assign         io_sc2mac_dat_a_bits_mask_56=sc2mac_dat_a_mask[56];
 assign         io_sc2mac_dat_a_bits_mask_57=sc2mac_dat_a_mask[57];
 assign         io_sc2mac_dat_a_bits_mask_58=sc2mac_dat_a_mask[58];
 assign         io_sc2mac_dat_a_bits_mask_59=sc2mac_dat_a_mask[59];
 assign         io_sc2mac_dat_a_bits_mask_60=sc2mac_dat_a_mask[60];
 assign         io_sc2mac_dat_a_bits_mask_61=sc2mac_dat_a_mask[61];
 assign         io_sc2mac_dat_a_bits_mask_62=sc2mac_dat_a_mask[62];
 assign         io_sc2mac_dat_a_bits_mask_63=sc2mac_dat_a_mask[63];
 assign         io_sc2mac_dat_a_bits_data_0=sc2mac_dat_a_data0;
 assign         io_sc2mac_dat_a_bits_data_1=sc2mac_dat_a_data1;
 assign         io_sc2mac_dat_a_bits_data_2=sc2mac_dat_a_data2;
 assign         io_sc2mac_dat_a_bits_data_3=sc2mac_dat_a_data3;
 assign         io_sc2mac_dat_a_bits_data_4=sc2mac_dat_a_data4;
 assign         io_sc2mac_dat_a_bits_data_5=sc2mac_dat_a_data5;
 assign         io_sc2mac_dat_a_bits_data_6=sc2mac_dat_a_data6;
 assign         io_sc2mac_dat_a_bits_data_7=sc2mac_dat_a_data7;
 assign         io_sc2mac_dat_a_bits_data_8=sc2mac_dat_a_data8;
 assign         io_sc2mac_dat_a_bits_data_9=sc2mac_dat_a_data9;
 assign         io_sc2mac_dat_a_bits_data_10=sc2mac_dat_a_data10;
 assign         io_sc2mac_dat_a_bits_data_11=sc2mac_dat_a_data11;
 assign         io_sc2mac_dat_a_bits_data_12=sc2mac_dat_a_data12;
 assign         io_sc2mac_dat_a_bits_data_13=sc2mac_dat_a_data13;
 assign         io_sc2mac_dat_a_bits_data_14=sc2mac_dat_a_data14;
 assign         io_sc2mac_dat_a_bits_data_15=sc2mac_dat_a_data15;
 assign         io_sc2mac_dat_a_bits_data_16=sc2mac_dat_a_data16;
 assign         io_sc2mac_dat_a_bits_data_17=sc2mac_dat_a_data17;
 assign         io_sc2mac_dat_a_bits_data_18=sc2mac_dat_a_data18;
 assign         io_sc2mac_dat_a_bits_data_19=sc2mac_dat_a_data19;
 assign         io_sc2mac_dat_a_bits_data_20=sc2mac_dat_a_data20;
 assign         io_sc2mac_dat_a_bits_data_21=sc2mac_dat_a_data21;
 assign         io_sc2mac_dat_a_bits_data_22=sc2mac_dat_a_data22;
 assign         io_sc2mac_dat_a_bits_data_23=sc2mac_dat_a_data23;
 assign         io_sc2mac_dat_a_bits_data_24=sc2mac_dat_a_data24;
 assign         io_sc2mac_dat_a_bits_data_25=sc2mac_dat_a_data25;
 assign         io_sc2mac_dat_a_bits_data_26=sc2mac_dat_a_data26;
 assign         io_sc2mac_dat_a_bits_data_27=sc2mac_dat_a_data27;
 assign         io_sc2mac_dat_a_bits_data_28=sc2mac_dat_a_data28;
 assign         io_sc2mac_dat_a_bits_data_29=sc2mac_dat_a_data29;
 assign         io_sc2mac_dat_a_bits_data_30=sc2mac_dat_a_data30;
 assign         io_sc2mac_dat_a_bits_data_31=sc2mac_dat_a_data31;
 assign         io_sc2mac_dat_a_bits_data_32=sc2mac_dat_a_data32;
 assign         io_sc2mac_dat_a_bits_data_33=sc2mac_dat_a_data33;
 assign         io_sc2mac_dat_a_bits_data_34=sc2mac_dat_a_data34;
 assign         io_sc2mac_dat_a_bits_data_35=sc2mac_dat_a_data35;
 assign         io_sc2mac_dat_a_bits_data_36=sc2mac_dat_a_data36;
 assign         io_sc2mac_dat_a_bits_data_37=sc2mac_dat_a_data37;
 assign         io_sc2mac_dat_a_bits_data_38=sc2mac_dat_a_data38;
 assign         io_sc2mac_dat_a_bits_data_39=sc2mac_dat_a_data39;
 assign         io_sc2mac_dat_a_bits_data_40=sc2mac_dat_a_data40;
 assign         io_sc2mac_dat_a_bits_data_41=sc2mac_dat_a_data41;
 assign         io_sc2mac_dat_a_bits_data_42=sc2mac_dat_a_data42;
 assign         io_sc2mac_dat_a_bits_data_43=sc2mac_dat_a_data43;
 assign         io_sc2mac_dat_a_bits_data_44=sc2mac_dat_a_data44;
 assign         io_sc2mac_dat_a_bits_data_45=sc2mac_dat_a_data45;
 assign         io_sc2mac_dat_a_bits_data_46=sc2mac_dat_a_data46;
 assign         io_sc2mac_dat_a_bits_data_47=sc2mac_dat_a_data47;
 assign         io_sc2mac_dat_a_bits_data_48=sc2mac_dat_a_data48;
 assign         io_sc2mac_dat_a_bits_data_49=sc2mac_dat_a_data49;
 assign         io_sc2mac_dat_a_bits_data_50=sc2mac_dat_a_data50;
 assign         io_sc2mac_dat_a_bits_data_51=sc2mac_dat_a_data51;
 assign         io_sc2mac_dat_a_bits_data_52=sc2mac_dat_a_data52;
 assign         io_sc2mac_dat_a_bits_data_53=sc2mac_dat_a_data53;
 assign         io_sc2mac_dat_a_bits_data_54=sc2mac_dat_a_data54;
 assign         io_sc2mac_dat_a_bits_data_55=sc2mac_dat_a_data55;
 assign         io_sc2mac_dat_a_bits_data_56=sc2mac_dat_a_data56;
 assign         io_sc2mac_dat_a_bits_data_57=sc2mac_dat_a_data57;
 assign         io_sc2mac_dat_a_bits_data_58=sc2mac_dat_a_data58;
 assign         io_sc2mac_dat_a_bits_data_59=sc2mac_dat_a_data59;
 assign         io_sc2mac_dat_a_bits_data_60=sc2mac_dat_a_data60;
 assign         io_sc2mac_dat_a_bits_data_61=sc2mac_dat_a_data61;
 assign         io_sc2mac_dat_a_bits_data_62=sc2mac_dat_a_data62;
 assign         io_sc2mac_dat_a_bits_data_63=sc2mac_dat_a_data63;
  assign        io_sc2mac_dat_a_bits_pd=sc2mac_dat_a_pd;
  assign         io_sc2mac_dat_b_valid=sc2mac_dat_b_pvld;
 assign         io_sc2mac_dat_b_bits_mask_0=sc2mac_dat_b_mask[0];
 assign         io_sc2mac_dat_b_bits_mask_1=sc2mac_dat_b_mask[1];
 assign         io_sc2mac_dat_b_bits_mask_2=sc2mac_dat_b_mask[2];
 assign         io_sc2mac_dat_b_bits_mask_3=sc2mac_dat_b_mask[3];
 assign         io_sc2mac_dat_b_bits_mask_4=sc2mac_dat_b_mask[4];
 assign         io_sc2mac_dat_b_bits_mask_5=sc2mac_dat_b_mask[5];
 assign         io_sc2mac_dat_b_bits_mask_6=sc2mac_dat_b_mask[6];
 assign         io_sc2mac_dat_b_bits_mask_7=sc2mac_dat_b_mask[7];
 assign         io_sc2mac_dat_b_bits_mask_8=sc2mac_dat_b_mask[8];
 assign         io_sc2mac_dat_b_bits_mask_9=sc2mac_dat_b_mask[9];
 assign         io_sc2mac_dat_b_bits_mask_10=sc2mac_dat_b_mask[10];
 assign         io_sc2mac_dat_b_bits_mask_11=sc2mac_dat_b_mask[11];
 assign         io_sc2mac_dat_b_bits_mask_12=sc2mac_dat_b_mask[12];
 assign         io_sc2mac_dat_b_bits_mask_13=sc2mac_dat_b_mask[13];
 assign         io_sc2mac_dat_b_bits_mask_14=sc2mac_dat_b_mask[14];
 assign         io_sc2mac_dat_b_bits_mask_15=sc2mac_dat_b_mask[15];
 assign         io_sc2mac_dat_b_bits_mask_16=sc2mac_dat_b_mask[16];
 assign         io_sc2mac_dat_b_bits_mask_17=sc2mac_dat_b_mask[17];
 assign         io_sc2mac_dat_b_bits_mask_18=sc2mac_dat_b_mask[18];
 assign         io_sc2mac_dat_b_bits_mask_19=sc2mac_dat_b_mask[19];
 assign         io_sc2mac_dat_b_bits_mask_20=sc2mac_dat_b_mask[20];
 assign         io_sc2mac_dat_b_bits_mask_21=sc2mac_dat_b_mask[21];
 assign         io_sc2mac_dat_b_bits_mask_22=sc2mac_dat_b_mask[22];
 assign         io_sc2mac_dat_b_bits_mask_23=sc2mac_dat_b_mask[23];
 assign         io_sc2mac_dat_b_bits_mask_24=sc2mac_dat_b_mask[24];
 assign         io_sc2mac_dat_b_bits_mask_25=sc2mac_dat_b_mask[25];
 assign         io_sc2mac_dat_b_bits_mask_26=sc2mac_dat_b_mask[26];
 assign         io_sc2mac_dat_b_bits_mask_27=sc2mac_dat_b_mask[27];
 assign         io_sc2mac_dat_b_bits_mask_28=sc2mac_dat_b_mask[28];
 assign         io_sc2mac_dat_b_bits_mask_29=sc2mac_dat_b_mask[29];
 assign         io_sc2mac_dat_b_bits_mask_30=sc2mac_dat_b_mask[30];
 assign         io_sc2mac_dat_b_bits_mask_31=sc2mac_dat_b_mask[31];
 assign         io_sc2mac_dat_b_bits_mask_32=sc2mac_dat_b_mask[32];
 assign         io_sc2mac_dat_b_bits_mask_33=sc2mac_dat_b_mask[33];
 assign         io_sc2mac_dat_b_bits_mask_34=sc2mac_dat_b_mask[34];
 assign         io_sc2mac_dat_b_bits_mask_35=sc2mac_dat_b_mask[35];
 assign         io_sc2mac_dat_b_bits_mask_36=sc2mac_dat_b_mask[36];
 assign         io_sc2mac_dat_b_bits_mask_37=sc2mac_dat_b_mask[37];
 assign         io_sc2mac_dat_b_bits_mask_38=sc2mac_dat_b_mask[38];
 assign         io_sc2mac_dat_b_bits_mask_39=sc2mac_dat_b_mask[39];
 assign         io_sc2mac_dat_b_bits_mask_40=sc2mac_dat_b_mask[40];
 assign         io_sc2mac_dat_b_bits_mask_41=sc2mac_dat_b_mask[41];
 assign         io_sc2mac_dat_b_bits_mask_42=sc2mac_dat_b_mask[42];
 assign         io_sc2mac_dat_b_bits_mask_43=sc2mac_dat_b_mask[43];
 assign         io_sc2mac_dat_b_bits_mask_44=sc2mac_dat_b_mask[44];
 assign         io_sc2mac_dat_b_bits_mask_45=sc2mac_dat_b_mask[45];
 assign         io_sc2mac_dat_b_bits_mask_46=sc2mac_dat_b_mask[46];
 assign         io_sc2mac_dat_b_bits_mask_47=sc2mac_dat_b_mask[47];
 assign         io_sc2mac_dat_b_bits_mask_48=sc2mac_dat_b_mask[48];
 assign         io_sc2mac_dat_b_bits_mask_49=sc2mac_dat_b_mask[49];
 assign         io_sc2mac_dat_b_bits_mask_50=sc2mac_dat_b_mask[50];
 assign         io_sc2mac_dat_b_bits_mask_51=sc2mac_dat_b_mask[51];
 assign         io_sc2mac_dat_b_bits_mask_52=sc2mac_dat_b_mask[52];
 assign         io_sc2mac_dat_b_bits_mask_53=sc2mac_dat_b_mask[53];
 assign         io_sc2mac_dat_b_bits_mask_54=sc2mac_dat_b_mask[54];
 assign         io_sc2mac_dat_b_bits_mask_55=sc2mac_dat_b_mask[55];
 assign         io_sc2mac_dat_b_bits_mask_56=sc2mac_dat_b_mask[56];
 assign         io_sc2mac_dat_b_bits_mask_57=sc2mac_dat_b_mask[57];
 assign         io_sc2mac_dat_b_bits_mask_58=sc2mac_dat_b_mask[58];
 assign         io_sc2mac_dat_b_bits_mask_59=sc2mac_dat_b_mask[59];
 assign         io_sc2mac_dat_b_bits_mask_60=sc2mac_dat_b_mask[60];
 assign         io_sc2mac_dat_b_bits_mask_61=sc2mac_dat_b_mask[61];
 assign         io_sc2mac_dat_b_bits_mask_62=sc2mac_dat_b_mask[62];
 assign         io_sc2mac_dat_b_bits_mask_63=sc2mac_dat_b_mask[63];
 assign         io_sc2mac_dat_b_bits_data_0=sc2mac_dat_b_data0;
 assign         io_sc2mac_dat_b_bits_data_1=sc2mac_dat_b_data1;
 assign         io_sc2mac_dat_b_bits_data_2=sc2mac_dat_b_data2;
 assign         io_sc2mac_dat_b_bits_data_3=sc2mac_dat_b_data3;
 assign         io_sc2mac_dat_b_bits_data_4=sc2mac_dat_b_data4;
 assign         io_sc2mac_dat_b_bits_data_5=sc2mac_dat_b_data5;
 assign         io_sc2mac_dat_b_bits_data_6=sc2mac_dat_b_data6;
 assign         io_sc2mac_dat_b_bits_data_7=sc2mac_dat_b_data7;
 assign         io_sc2mac_dat_b_bits_data_8=sc2mac_dat_b_data8;
 assign         io_sc2mac_dat_b_bits_data_9=sc2mac_dat_b_data9;
 assign         io_sc2mac_dat_b_bits_data_10=sc2mac_dat_b_data10;
 assign         io_sc2mac_dat_b_bits_data_11=sc2mac_dat_b_data11;
 assign         io_sc2mac_dat_b_bits_data_12=sc2mac_dat_b_data12;
 assign         io_sc2mac_dat_b_bits_data_13=sc2mac_dat_b_data13;
 assign         io_sc2mac_dat_b_bits_data_14=sc2mac_dat_b_data14;
 assign         io_sc2mac_dat_b_bits_data_15=sc2mac_dat_b_data15;
 assign         io_sc2mac_dat_b_bits_data_16=sc2mac_dat_b_data16;
 assign         io_sc2mac_dat_b_bits_data_17=sc2mac_dat_b_data17;
 assign         io_sc2mac_dat_b_bits_data_18=sc2mac_dat_b_data18;
 assign         io_sc2mac_dat_b_bits_data_19=sc2mac_dat_b_data19;
 assign         io_sc2mac_dat_b_bits_data_20=sc2mac_dat_b_data20;
 assign         io_sc2mac_dat_b_bits_data_21=sc2mac_dat_b_data21;
 assign         io_sc2mac_dat_b_bits_data_22=sc2mac_dat_b_data22;
 assign         io_sc2mac_dat_b_bits_data_23=sc2mac_dat_b_data23;
 assign         io_sc2mac_dat_b_bits_data_24=sc2mac_dat_b_data24;
 assign         io_sc2mac_dat_b_bits_data_25=sc2mac_dat_b_data25;
 assign         io_sc2mac_dat_b_bits_data_26=sc2mac_dat_b_data26;
 assign         io_sc2mac_dat_b_bits_data_27=sc2mac_dat_b_data27;
 assign         io_sc2mac_dat_b_bits_data_28=sc2mac_dat_b_data28;
 assign         io_sc2mac_dat_b_bits_data_29=sc2mac_dat_b_data29;
 assign         io_sc2mac_dat_b_bits_data_30=sc2mac_dat_b_data30;
 assign         io_sc2mac_dat_b_bits_data_31=sc2mac_dat_b_data31;
 assign         io_sc2mac_dat_b_bits_data_32=sc2mac_dat_b_data32;
 assign         io_sc2mac_dat_b_bits_data_33=sc2mac_dat_b_data33;
 assign         io_sc2mac_dat_b_bits_data_34=sc2mac_dat_b_data34;
 assign         io_sc2mac_dat_b_bits_data_35=sc2mac_dat_b_data35;
 assign         io_sc2mac_dat_b_bits_data_36=sc2mac_dat_b_data36;
 assign         io_sc2mac_dat_b_bits_data_37=sc2mac_dat_b_data37;
 assign         io_sc2mac_dat_b_bits_data_38=sc2mac_dat_b_data38;
 assign         io_sc2mac_dat_b_bits_data_39=sc2mac_dat_b_data39;
 assign         io_sc2mac_dat_b_bits_data_40=sc2mac_dat_b_data40;
 assign         io_sc2mac_dat_b_bits_data_41=sc2mac_dat_b_data41;
 assign         io_sc2mac_dat_b_bits_data_42=sc2mac_dat_b_data42;
 assign         io_sc2mac_dat_b_bits_data_43=sc2mac_dat_b_data43;
 assign         io_sc2mac_dat_b_bits_data_44=sc2mac_dat_b_data44;
 assign         io_sc2mac_dat_b_bits_data_45=sc2mac_dat_b_data45;
 assign         io_sc2mac_dat_b_bits_data_46=sc2mac_dat_b_data46;
 assign         io_sc2mac_dat_b_bits_data_47=sc2mac_dat_b_data47;
 assign         io_sc2mac_dat_b_bits_data_48=sc2mac_dat_b_data48;
 assign         io_sc2mac_dat_b_bits_data_49=sc2mac_dat_b_data49;
 assign         io_sc2mac_dat_b_bits_data_50=sc2mac_dat_b_data50;
 assign         io_sc2mac_dat_b_bits_data_51=sc2mac_dat_b_data51;
 assign         io_sc2mac_dat_b_bits_data_52=sc2mac_dat_b_data52;
 assign         io_sc2mac_dat_b_bits_data_53=sc2mac_dat_b_data53;
 assign         io_sc2mac_dat_b_bits_data_54=sc2mac_dat_b_data54;
 assign         io_sc2mac_dat_b_bits_data_55=sc2mac_dat_b_data55;
 assign         io_sc2mac_dat_b_bits_data_56=sc2mac_dat_b_data56;
 assign         io_sc2mac_dat_b_bits_data_57=sc2mac_dat_b_data57;
 assign         io_sc2mac_dat_b_bits_data_58=sc2mac_dat_b_data58;
 assign         io_sc2mac_dat_b_bits_data_59=sc2mac_dat_b_data59;
 assign         io_sc2mac_dat_b_bits_data_60=sc2mac_dat_b_data60;
 assign         io_sc2mac_dat_b_bits_data_61=sc2mac_dat_b_data61;
 assign         io_sc2mac_dat_b_bits_data_62=sc2mac_dat_b_data62;
 assign         io_sc2mac_dat_b_bits_data_63=sc2mac_dat_b_data63;
  assign        io_sc2mac_dat_b_bits_pd=sc2mac_dat_b_pd;
  assign         io_sc2mac_wt_a_valid=sc2mac_wt_a_pvld;
 assign         io_sc2mac_wt_a_bits_sel_0=sc2mac_wt_a_sel[0];
 assign         io_sc2mac_wt_a_bits_sel_1=sc2mac_wt_a_sel[1];
 assign         io_sc2mac_wt_a_bits_sel_2=sc2mac_wt_a_sel[2];
 assign         io_sc2mac_wt_a_bits_sel_3=sc2mac_wt_a_sel[3];
 assign         io_sc2mac_wt_a_bits_sel_4=sc2mac_wt_a_sel[4];
 assign         io_sc2mac_wt_a_bits_sel_5=sc2mac_wt_a_sel[5];
 assign         io_sc2mac_wt_a_bits_sel_6=sc2mac_wt_a_sel[6];
 assign         io_sc2mac_wt_a_bits_sel_7=sc2mac_wt_a_sel[7];
 assign         io_sc2mac_wt_a_bits_sel_8=sc2mac_wt_a_sel[8];
 assign         io_sc2mac_wt_a_bits_sel_9=sc2mac_wt_a_sel[9];
 assign         io_sc2mac_wt_a_bits_sel_10=sc2mac_wt_a_sel[10];
 assign         io_sc2mac_wt_a_bits_sel_11=sc2mac_wt_a_sel[11];
 assign         io_sc2mac_wt_a_bits_sel_12=sc2mac_wt_a_sel[12];
 assign         io_sc2mac_wt_a_bits_sel_13=sc2mac_wt_a_sel[13];
 assign         io_sc2mac_wt_a_bits_sel_14=sc2mac_wt_a_sel[14];
 assign         io_sc2mac_wt_a_bits_sel_15=sc2mac_wt_a_sel[15];
 assign         io_sc2mac_wt_a_bits_mask_0=sc2mac_wt_a_mask[0];
 assign         io_sc2mac_wt_a_bits_mask_1=sc2mac_wt_a_mask[1];
 assign         io_sc2mac_wt_a_bits_mask_2=sc2mac_wt_a_mask[2];
 assign         io_sc2mac_wt_a_bits_mask_3=sc2mac_wt_a_mask[3];
 assign         io_sc2mac_wt_a_bits_mask_4=sc2mac_wt_a_mask[4];
 assign         io_sc2mac_wt_a_bits_mask_5=sc2mac_wt_a_mask[5];
 assign         io_sc2mac_wt_a_bits_mask_6=sc2mac_wt_a_mask[6];
 assign         io_sc2mac_wt_a_bits_mask_7=sc2mac_wt_a_mask[7];
 assign         io_sc2mac_wt_a_bits_mask_8=sc2mac_wt_a_mask[8];
 assign         io_sc2mac_wt_a_bits_mask_9=sc2mac_wt_a_mask[9];
 assign         io_sc2mac_wt_a_bits_mask_10=sc2mac_wt_a_mask[10];
 assign         io_sc2mac_wt_a_bits_mask_11=sc2mac_wt_a_mask[11];
 assign         io_sc2mac_wt_a_bits_mask_12=sc2mac_wt_a_mask[12];
 assign         io_sc2mac_wt_a_bits_mask_13=sc2mac_wt_a_mask[13];
 assign         io_sc2mac_wt_a_bits_mask_14=sc2mac_wt_a_mask[14];
 assign         io_sc2mac_wt_a_bits_mask_15=sc2mac_wt_a_mask[15];
 assign         io_sc2mac_wt_a_bits_mask_16=sc2mac_wt_a_mask[16];
 assign         io_sc2mac_wt_a_bits_mask_17=sc2mac_wt_a_mask[17];
 assign         io_sc2mac_wt_a_bits_mask_18=sc2mac_wt_a_mask[18];
 assign         io_sc2mac_wt_a_bits_mask_19=sc2mac_wt_a_mask[19];
 assign         io_sc2mac_wt_a_bits_mask_20=sc2mac_wt_a_mask[20];
 assign         io_sc2mac_wt_a_bits_mask_21=sc2mac_wt_a_mask[21];
 assign         io_sc2mac_wt_a_bits_mask_22=sc2mac_wt_a_mask[22];
 assign         io_sc2mac_wt_a_bits_mask_23=sc2mac_wt_a_mask[23];
 assign         io_sc2mac_wt_a_bits_mask_24=sc2mac_wt_a_mask[24];
 assign         io_sc2mac_wt_a_bits_mask_25=sc2mac_wt_a_mask[25];
 assign         io_sc2mac_wt_a_bits_mask_26=sc2mac_wt_a_mask[26];
 assign         io_sc2mac_wt_a_bits_mask_27=sc2mac_wt_a_mask[27];
 assign         io_sc2mac_wt_a_bits_mask_28=sc2mac_wt_a_mask[28];
 assign         io_sc2mac_wt_a_bits_mask_29=sc2mac_wt_a_mask[29];
 assign         io_sc2mac_wt_a_bits_mask_30=sc2mac_wt_a_mask[30];
 assign         io_sc2mac_wt_a_bits_mask_31=sc2mac_wt_a_mask[31];
 assign         io_sc2mac_wt_a_bits_mask_32=sc2mac_wt_a_mask[32];
 assign         io_sc2mac_wt_a_bits_mask_33=sc2mac_wt_a_mask[33];
 assign         io_sc2mac_wt_a_bits_mask_34=sc2mac_wt_a_mask[34];
 assign         io_sc2mac_wt_a_bits_mask_35=sc2mac_wt_a_mask[35];
 assign         io_sc2mac_wt_a_bits_mask_36=sc2mac_wt_a_mask[36];
 assign         io_sc2mac_wt_a_bits_mask_37=sc2mac_wt_a_mask[37];
 assign         io_sc2mac_wt_a_bits_mask_38=sc2mac_wt_a_mask[38];
 assign         io_sc2mac_wt_a_bits_mask_39=sc2mac_wt_a_mask[39];
 assign         io_sc2mac_wt_a_bits_mask_40=sc2mac_wt_a_mask[40];
 assign         io_sc2mac_wt_a_bits_mask_41=sc2mac_wt_a_mask[41];
 assign         io_sc2mac_wt_a_bits_mask_42=sc2mac_wt_a_mask[42];
 assign         io_sc2mac_wt_a_bits_mask_43=sc2mac_wt_a_mask[43];
 assign         io_sc2mac_wt_a_bits_mask_44=sc2mac_wt_a_mask[44];
 assign         io_sc2mac_wt_a_bits_mask_45=sc2mac_wt_a_mask[45];
 assign         io_sc2mac_wt_a_bits_mask_46=sc2mac_wt_a_mask[46];
 assign         io_sc2mac_wt_a_bits_mask_47=sc2mac_wt_a_mask[47];
 assign         io_sc2mac_wt_a_bits_mask_48=sc2mac_wt_a_mask[48];
 assign         io_sc2mac_wt_a_bits_mask_49=sc2mac_wt_a_mask[49];
 assign         io_sc2mac_wt_a_bits_mask_50=sc2mac_wt_a_mask[50];
 assign         io_sc2mac_wt_a_bits_mask_51=sc2mac_wt_a_mask[51];
 assign         io_sc2mac_wt_a_bits_mask_52=sc2mac_wt_a_mask[52];
 assign         io_sc2mac_wt_a_bits_mask_53=sc2mac_wt_a_mask[53];
 assign         io_sc2mac_wt_a_bits_mask_54=sc2mac_wt_a_mask[54];
 assign         io_sc2mac_wt_a_bits_mask_55=sc2mac_wt_a_mask[55];
 assign         io_sc2mac_wt_a_bits_mask_56=sc2mac_wt_a_mask[56];
 assign         io_sc2mac_wt_a_bits_mask_57=sc2mac_wt_a_mask[57];
 assign         io_sc2mac_wt_a_bits_mask_58=sc2mac_wt_a_mask[58];
 assign         io_sc2mac_wt_a_bits_mask_59=sc2mac_wt_a_mask[59];
 assign         io_sc2mac_wt_a_bits_mask_60=sc2mac_wt_a_mask[60];
 assign         io_sc2mac_wt_a_bits_mask_61=sc2mac_wt_a_mask[61];
 assign         io_sc2mac_wt_a_bits_mask_62=sc2mac_wt_a_mask[62];
 assign         io_sc2mac_wt_a_bits_mask_63=sc2mac_wt_a_mask[63];
 assign         io_sc2mac_wt_a_bits_data_0=sc2mac_wt_a_data0;
 assign         io_sc2mac_wt_a_bits_data_1=sc2mac_wt_a_data1;
 assign         io_sc2mac_wt_a_bits_data_2=sc2mac_wt_a_data2;
 assign         io_sc2mac_wt_a_bits_data_3=sc2mac_wt_a_data3;
 assign         io_sc2mac_wt_a_bits_data_4=sc2mac_wt_a_data4;
 assign         io_sc2mac_wt_a_bits_data_5=sc2mac_wt_a_data5;
 assign         io_sc2mac_wt_a_bits_data_6=sc2mac_wt_a_data6;
 assign         io_sc2mac_wt_a_bits_data_7=sc2mac_wt_a_data7;
 assign         io_sc2mac_wt_a_bits_data_8=sc2mac_wt_a_data8;
 assign         io_sc2mac_wt_a_bits_data_9=sc2mac_wt_a_data9;
 assign         io_sc2mac_wt_a_bits_data_10=sc2mac_wt_a_data10;
 assign         io_sc2mac_wt_a_bits_data_11=sc2mac_wt_a_data11;
 assign         io_sc2mac_wt_a_bits_data_12=sc2mac_wt_a_data12;
 assign         io_sc2mac_wt_a_bits_data_13=sc2mac_wt_a_data13;
 assign         io_sc2mac_wt_a_bits_data_14=sc2mac_wt_a_data14;
 assign         io_sc2mac_wt_a_bits_data_15=sc2mac_wt_a_data15;
 assign         io_sc2mac_wt_a_bits_data_16=sc2mac_wt_a_data16;
 assign         io_sc2mac_wt_a_bits_data_17=sc2mac_wt_a_data17;
 assign         io_sc2mac_wt_a_bits_data_18=sc2mac_wt_a_data18;
 assign         io_sc2mac_wt_a_bits_data_19=sc2mac_wt_a_data19;
 assign         io_sc2mac_wt_a_bits_data_20=sc2mac_wt_a_data20;
 assign         io_sc2mac_wt_a_bits_data_21=sc2mac_wt_a_data21;
 assign         io_sc2mac_wt_a_bits_data_22=sc2mac_wt_a_data22;
 assign         io_sc2mac_wt_a_bits_data_23=sc2mac_wt_a_data23;
 assign         io_sc2mac_wt_a_bits_data_24=sc2mac_wt_a_data24;
 assign         io_sc2mac_wt_a_bits_data_25=sc2mac_wt_a_data25;
 assign         io_sc2mac_wt_a_bits_data_26=sc2mac_wt_a_data26;
 assign         io_sc2mac_wt_a_bits_data_27=sc2mac_wt_a_data27;
 assign         io_sc2mac_wt_a_bits_data_28=sc2mac_wt_a_data28;
 assign         io_sc2mac_wt_a_bits_data_29=sc2mac_wt_a_data29;
 assign         io_sc2mac_wt_a_bits_data_30=sc2mac_wt_a_data30;
 assign         io_sc2mac_wt_a_bits_data_31=sc2mac_wt_a_data31;
 assign         io_sc2mac_wt_a_bits_data_32=sc2mac_wt_a_data32;
 assign         io_sc2mac_wt_a_bits_data_33=sc2mac_wt_a_data33;
 assign         io_sc2mac_wt_a_bits_data_34=sc2mac_wt_a_data34;
 assign         io_sc2mac_wt_a_bits_data_35=sc2mac_wt_a_data35;
 assign         io_sc2mac_wt_a_bits_data_36=sc2mac_wt_a_data36;
 assign         io_sc2mac_wt_a_bits_data_37=sc2mac_wt_a_data37;
 assign         io_sc2mac_wt_a_bits_data_38=sc2mac_wt_a_data38;
 assign         io_sc2mac_wt_a_bits_data_39=sc2mac_wt_a_data39;
 assign         io_sc2mac_wt_a_bits_data_40=sc2mac_wt_a_data40;
 assign         io_sc2mac_wt_a_bits_data_41=sc2mac_wt_a_data41;
 assign         io_sc2mac_wt_a_bits_data_42=sc2mac_wt_a_data42;
 assign         io_sc2mac_wt_a_bits_data_43=sc2mac_wt_a_data43;
 assign         io_sc2mac_wt_a_bits_data_44=sc2mac_wt_a_data44;
 assign         io_sc2mac_wt_a_bits_data_45=sc2mac_wt_a_data45;
 assign         io_sc2mac_wt_a_bits_data_46=sc2mac_wt_a_data46;
 assign         io_sc2mac_wt_a_bits_data_47=sc2mac_wt_a_data47;
 assign         io_sc2mac_wt_a_bits_data_48=sc2mac_wt_a_data48;
 assign         io_sc2mac_wt_a_bits_data_49=sc2mac_wt_a_data49;
 assign         io_sc2mac_wt_a_bits_data_50=sc2mac_wt_a_data50;
 assign         io_sc2mac_wt_a_bits_data_51=sc2mac_wt_a_data51;
 assign         io_sc2mac_wt_a_bits_data_52=sc2mac_wt_a_data52;
 assign         io_sc2mac_wt_a_bits_data_53=sc2mac_wt_a_data53;
 assign         io_sc2mac_wt_a_bits_data_54=sc2mac_wt_a_data54;
 assign         io_sc2mac_wt_a_bits_data_55=sc2mac_wt_a_data55;
 assign         io_sc2mac_wt_a_bits_data_56=sc2mac_wt_a_data56;
 assign         io_sc2mac_wt_a_bits_data_57=sc2mac_wt_a_data57;
 assign         io_sc2mac_wt_a_bits_data_58=sc2mac_wt_a_data58;
 assign         io_sc2mac_wt_a_bits_data_59=sc2mac_wt_a_data59;
 assign         io_sc2mac_wt_a_bits_data_60=sc2mac_wt_a_data60;
 assign         io_sc2mac_wt_a_bits_data_61=sc2mac_wt_a_data61;
 assign         io_sc2mac_wt_a_bits_data_62=sc2mac_wt_a_data62;
 assign         io_sc2mac_wt_a_bits_data_63=sc2mac_wt_a_data63;
  assign         io_sc2mac_wt_b_valid=sc2mac_wt_b_pvld;
 assign         io_sc2mac_wt_b_bits_sel_0=sc2mac_wt_b_sel[0];
 assign         io_sc2mac_wt_b_bits_sel_1=sc2mac_wt_b_sel[1];
 assign         io_sc2mac_wt_b_bits_sel_2=sc2mac_wt_b_sel[2];
 assign         io_sc2mac_wt_b_bits_sel_3=sc2mac_wt_b_sel[3];
 assign         io_sc2mac_wt_b_bits_sel_4=sc2mac_wt_b_sel[4];
 assign         io_sc2mac_wt_b_bits_sel_5=sc2mac_wt_b_sel[5];
 assign         io_sc2mac_wt_b_bits_sel_6=sc2mac_wt_b_sel[6];
 assign         io_sc2mac_wt_b_bits_sel_7=sc2mac_wt_b_sel[7];
 assign         io_sc2mac_wt_b_bits_sel_8=sc2mac_wt_b_sel[8];
 assign         io_sc2mac_wt_b_bits_sel_9=sc2mac_wt_b_sel[9];
 assign         io_sc2mac_wt_b_bits_sel_10=sc2mac_wt_b_sel[10];
 assign         io_sc2mac_wt_b_bits_sel_11=sc2mac_wt_b_sel[11];
 assign         io_sc2mac_wt_b_bits_sel_12=sc2mac_wt_b_sel[12];
 assign         io_sc2mac_wt_b_bits_sel_13=sc2mac_wt_b_sel[13];
 assign         io_sc2mac_wt_b_bits_sel_14=sc2mac_wt_b_sel[14];
 assign         io_sc2mac_wt_b_bits_sel_15=sc2mac_wt_b_sel[15];
 assign         io_sc2mac_wt_b_bits_mask_0=sc2mac_wt_b_mask[0];
 assign         io_sc2mac_wt_b_bits_mask_1=sc2mac_wt_b_mask[1];
 assign         io_sc2mac_wt_b_bits_mask_2=sc2mac_wt_b_mask[2];
 assign         io_sc2mac_wt_b_bits_mask_3=sc2mac_wt_b_mask[3];
 assign         io_sc2mac_wt_b_bits_mask_4=sc2mac_wt_b_mask[4];
 assign         io_sc2mac_wt_b_bits_mask_5=sc2mac_wt_b_mask[5];
 assign         io_sc2mac_wt_b_bits_mask_6=sc2mac_wt_b_mask[6];
 assign         io_sc2mac_wt_b_bits_mask_7=sc2mac_wt_b_mask[7];
 assign         io_sc2mac_wt_b_bits_mask_8=sc2mac_wt_b_mask[8];
 assign         io_sc2mac_wt_b_bits_mask_9=sc2mac_wt_b_mask[9];
 assign         io_sc2mac_wt_b_bits_mask_10=sc2mac_wt_b_mask[10];
 assign         io_sc2mac_wt_b_bits_mask_11=sc2mac_wt_b_mask[11];
 assign         io_sc2mac_wt_b_bits_mask_12=sc2mac_wt_b_mask[12];
 assign         io_sc2mac_wt_b_bits_mask_13=sc2mac_wt_b_mask[13];
 assign         io_sc2mac_wt_b_bits_mask_14=sc2mac_wt_b_mask[14];
 assign         io_sc2mac_wt_b_bits_mask_15=sc2mac_wt_b_mask[15];
 assign         io_sc2mac_wt_b_bits_mask_16=sc2mac_wt_b_mask[16];
 assign         io_sc2mac_wt_b_bits_mask_17=sc2mac_wt_b_mask[17];
 assign         io_sc2mac_wt_b_bits_mask_18=sc2mac_wt_b_mask[18];
 assign         io_sc2mac_wt_b_bits_mask_19=sc2mac_wt_b_mask[19];
 assign         io_sc2mac_wt_b_bits_mask_20=sc2mac_wt_b_mask[20];
 assign         io_sc2mac_wt_b_bits_mask_21=sc2mac_wt_b_mask[21];
 assign         io_sc2mac_wt_b_bits_mask_22=sc2mac_wt_b_mask[22];
 assign         io_sc2mac_wt_b_bits_mask_23=sc2mac_wt_b_mask[23];
 assign         io_sc2mac_wt_b_bits_mask_24=sc2mac_wt_b_mask[24];
 assign         io_sc2mac_wt_b_bits_mask_25=sc2mac_wt_b_mask[25];
 assign         io_sc2mac_wt_b_bits_mask_26=sc2mac_wt_b_mask[26];
 assign         io_sc2mac_wt_b_bits_mask_27=sc2mac_wt_b_mask[27];
 assign         io_sc2mac_wt_b_bits_mask_28=sc2mac_wt_b_mask[28];
 assign         io_sc2mac_wt_b_bits_mask_29=sc2mac_wt_b_mask[29];
 assign         io_sc2mac_wt_b_bits_mask_30=sc2mac_wt_b_mask[30];
 assign         io_sc2mac_wt_b_bits_mask_31=sc2mac_wt_b_mask[31];
 assign         io_sc2mac_wt_b_bits_mask_32=sc2mac_wt_b_mask[32];
 assign         io_sc2mac_wt_b_bits_mask_33=sc2mac_wt_b_mask[33];
 assign         io_sc2mac_wt_b_bits_mask_34=sc2mac_wt_b_mask[34];
 assign         io_sc2mac_wt_b_bits_mask_35=sc2mac_wt_b_mask[35];
 assign         io_sc2mac_wt_b_bits_mask_36=sc2mac_wt_b_mask[36];
 assign         io_sc2mac_wt_b_bits_mask_37=sc2mac_wt_b_mask[37];
 assign         io_sc2mac_wt_b_bits_mask_38=sc2mac_wt_b_mask[38];
 assign         io_sc2mac_wt_b_bits_mask_39=sc2mac_wt_b_mask[39];
 assign         io_sc2mac_wt_b_bits_mask_40=sc2mac_wt_b_mask[40];
 assign         io_sc2mac_wt_b_bits_mask_41=sc2mac_wt_b_mask[41];
 assign         io_sc2mac_wt_b_bits_mask_42=sc2mac_wt_b_mask[42];
 assign         io_sc2mac_wt_b_bits_mask_43=sc2mac_wt_b_mask[43];
 assign         io_sc2mac_wt_b_bits_mask_44=sc2mac_wt_b_mask[44];
 assign         io_sc2mac_wt_b_bits_mask_45=sc2mac_wt_b_mask[45];
 assign         io_sc2mac_wt_b_bits_mask_46=sc2mac_wt_b_mask[46];
 assign         io_sc2mac_wt_b_bits_mask_47=sc2mac_wt_b_mask[47];
 assign         io_sc2mac_wt_b_bits_mask_48=sc2mac_wt_b_mask[48];
 assign         io_sc2mac_wt_b_bits_mask_49=sc2mac_wt_b_mask[49];
 assign         io_sc2mac_wt_b_bits_mask_50=sc2mac_wt_b_mask[50];
 assign         io_sc2mac_wt_b_bits_mask_51=sc2mac_wt_b_mask[51];
 assign         io_sc2mac_wt_b_bits_mask_52=sc2mac_wt_b_mask[52];
 assign         io_sc2mac_wt_b_bits_mask_53=sc2mac_wt_b_mask[53];
 assign         io_sc2mac_wt_b_bits_mask_54=sc2mac_wt_b_mask[54];
 assign         io_sc2mac_wt_b_bits_mask_55=sc2mac_wt_b_mask[55];
 assign         io_sc2mac_wt_b_bits_mask_56=sc2mac_wt_b_mask[56];
 assign         io_sc2mac_wt_b_bits_mask_57=sc2mac_wt_b_mask[57];
 assign         io_sc2mac_wt_b_bits_mask_58=sc2mac_wt_b_mask[58];
 assign         io_sc2mac_wt_b_bits_mask_59=sc2mac_wt_b_mask[59];
 assign         io_sc2mac_wt_b_bits_mask_60=sc2mac_wt_b_mask[60];
 assign         io_sc2mac_wt_b_bits_mask_61=sc2mac_wt_b_mask[61];
 assign         io_sc2mac_wt_b_bits_mask_62=sc2mac_wt_b_mask[62];
 assign         io_sc2mac_wt_b_bits_mask_63=sc2mac_wt_b_mask[63];
 assign         io_sc2mac_wt_b_bits_mask_0=sc2mac_wt_b_data0;
 assign         io_sc2mac_wt_b_bits_mask_1=sc2mac_wt_b_data1;
 assign         io_sc2mac_wt_b_bits_mask_2=sc2mac_wt_b_data2;
 assign         io_sc2mac_wt_b_bits_mask_3=sc2mac_wt_b_data3;
 assign         io_sc2mac_wt_b_bits_mask_4=sc2mac_wt_b_data4;
 assign         io_sc2mac_wt_b_bits_mask_5=sc2mac_wt_b_data5;
 assign         io_sc2mac_wt_b_bits_mask_6=sc2mac_wt_b_data6;
 assign         io_sc2mac_wt_b_bits_mask_7=sc2mac_wt_b_data7;
 assign         io_sc2mac_wt_b_bits_mask_8=sc2mac_wt_b_data8;
 assign         io_sc2mac_wt_b_bits_mask_9=sc2mac_wt_b_data9;
 assign         io_sc2mac_wt_b_bits_mask_10=sc2mac_wt_b_data10;
 assign         io_sc2mac_wt_b_bits_mask_11=sc2mac_wt_b_data11;
 assign         io_sc2mac_wt_b_bits_mask_12=sc2mac_wt_b_data12;
 assign         io_sc2mac_wt_b_bits_mask_13=sc2mac_wt_b_data13;
 assign         io_sc2mac_wt_b_bits_mask_14=sc2mac_wt_b_data14;
 assign         io_sc2mac_wt_b_bits_mask_15=sc2mac_wt_b_data15;
 assign         io_sc2mac_wt_b_bits_mask_16=sc2mac_wt_b_data16;
 assign         io_sc2mac_wt_b_bits_mask_17=sc2mac_wt_b_data17;
 assign         io_sc2mac_wt_b_bits_mask_18=sc2mac_wt_b_data18;
 assign         io_sc2mac_wt_b_bits_mask_19=sc2mac_wt_b_data19;
 assign         io_sc2mac_wt_b_bits_mask_20=sc2mac_wt_b_data20;
 assign         io_sc2mac_wt_b_bits_mask_21=sc2mac_wt_b_data21;
 assign         io_sc2mac_wt_b_bits_mask_22=sc2mac_wt_b_data22;
 assign         io_sc2mac_wt_b_bits_mask_23=sc2mac_wt_b_data23;
 assign         io_sc2mac_wt_b_bits_mask_24=sc2mac_wt_b_data24;
 assign         io_sc2mac_wt_b_bits_mask_25=sc2mac_wt_b_data25;
 assign         io_sc2mac_wt_b_bits_mask_26=sc2mac_wt_b_data26;
 assign         io_sc2mac_wt_b_bits_mask_27=sc2mac_wt_b_data27;
 assign         io_sc2mac_wt_b_bits_mask_28=sc2mac_wt_b_data28;
 assign         io_sc2mac_wt_b_bits_mask_29=sc2mac_wt_b_data29;
 assign         io_sc2mac_wt_b_bits_mask_30=sc2mac_wt_b_data30;
 assign         io_sc2mac_wt_b_bits_mask_31=sc2mac_wt_b_data31;
 assign         io_sc2mac_wt_b_bits_mask_32=sc2mac_wt_b_data32;
 assign         io_sc2mac_wt_b_bits_mask_33=sc2mac_wt_b_data33;
 assign         io_sc2mac_wt_b_bits_mask_34=sc2mac_wt_b_data34;
 assign         io_sc2mac_wt_b_bits_mask_35=sc2mac_wt_b_data35;
 assign         io_sc2mac_wt_b_bits_mask_36=sc2mac_wt_b_data36;
 assign         io_sc2mac_wt_b_bits_mask_37=sc2mac_wt_b_data37;
 assign         io_sc2mac_wt_b_bits_mask_38=sc2mac_wt_b_data38;
 assign         io_sc2mac_wt_b_bits_mask_39=sc2mac_wt_b_data39;
 assign         io_sc2mac_wt_b_bits_mask_40=sc2mac_wt_b_data40;
 assign         io_sc2mac_wt_b_bits_mask_41=sc2mac_wt_b_data41;
 assign         io_sc2mac_wt_b_bits_mask_42=sc2mac_wt_b_data42;
 assign         io_sc2mac_wt_b_bits_mask_43=sc2mac_wt_b_data43;
 assign         io_sc2mac_wt_b_bits_mask_44=sc2mac_wt_b_data44;
 assign         io_sc2mac_wt_b_bits_mask_45=sc2mac_wt_b_data45;
 assign         io_sc2mac_wt_b_bits_mask_46=sc2mac_wt_b_data46;
 assign         io_sc2mac_wt_b_bits_mask_47=sc2mac_wt_b_data47;
 assign         io_sc2mac_wt_b_bits_mask_48=sc2mac_wt_b_data48;
 assign         io_sc2mac_wt_b_bits_mask_49=sc2mac_wt_b_data49;
 assign         io_sc2mac_wt_b_bits_mask_50=sc2mac_wt_b_data50;
 assign         io_sc2mac_wt_b_bits_mask_51=sc2mac_wt_b_data51;
 assign         io_sc2mac_wt_b_bits_mask_52=sc2mac_wt_b_data52;
 assign         io_sc2mac_wt_b_bits_mask_53=sc2mac_wt_b_data53;
 assign         io_sc2mac_wt_b_bits_mask_54=sc2mac_wt_b_data54;
 assign         io_sc2mac_wt_b_bits_mask_55=sc2mac_wt_b_data55;
 assign         io_sc2mac_wt_b_bits_mask_56=sc2mac_wt_b_data56;
 assign         io_sc2mac_wt_b_bits_mask_57=sc2mac_wt_b_data57;
 assign         io_sc2mac_wt_b_bits_mask_58=sc2mac_wt_b_data58;
 assign         io_sc2mac_wt_b_bits_mask_59=sc2mac_wt_b_data59;
 assign         io_sc2mac_wt_b_bits_mask_60=sc2mac_wt_b_data60;
 assign         io_sc2mac_wt_b_bits_mask_61=sc2mac_wt_b_data61;
 assign         io_sc2mac_wt_b_bits_mask_62=sc2mac_wt_b_data62;
 assign         io_sc2mac_wt_b_bits_mask_63=sc2mac_wt_b_data63;
 assign  	    io_pwrbus_ram_pd=pwrbus_ram_pd; // @[:@23628.4]

NV_soDLA_csc NV_soDLA_csc(
.clock(clock),
.reset(reset),
.io_nvdla_clock_nvdla_core_clk(io_nvdla_clock_nvdla_core_clk),
.io_nvdla_clock_dla_clk_ovr_on_sync(io_nvdla_clock_dla_clk_ovr_on_sync),
.io_nvdla_clock_global_clk_ovr_on_sync(io_nvdla_clock_global_clk_ovr_on_sync),
.io_nvdla_clock_tmc2slcg_disable_clock_gating(io_nvdla_clock_tmc2slcg_disable_clock_gating),
.io_nvdla_core_rstn(io_nvdla_core_rstn),
.io_sc2cdma_dat_pending_req(io_sc2cdma_dat_pending_req),
.io_sc2cdma_wt_pending_req(io_sc2cdma_wt_pending_req),
.io_cdma2sc_dat_pending_ack(io_cdma2sc_dat_pending_ack),
.io_cdma2sc_wt_pending_ack(io_cdma2sc_wt_pending_ack),
.io_cdma2sc_dat_updt_valid(io_cdma2sc_dat_updt_valid),
.io_cdma2sc_dat_updt_bits_entries(io_cdma2sc_dat_updt_bits_entries),
.io_cdma2sc_dat_updt_bits_slices(io_cdma2sc_dat_updt_bits_slices),
.io_sc2cdma_dat_updt_valid(io_sc2cdma_dat_updt_valid),
.io_sc2cdma_dat_updt_bits_entries(io_sc2cdma_dat_updt_bits_entries),
.io_sc2cdma_dat_updt_bits_slices(io_sc2cdma_dat_updt_bits_slices),
.io_cdma2sc_wt_updt_valid(io_cdma2sc_wt_updt_valid),
.io_cdma2sc_wt_updt_bits_entries(io_cdma2sc_wt_updt_bits_entries),
.io_cdma2sc_wt_updt_bits_kernels(io_cdma2sc_wt_updt_bits_kernels),
.io_sc2cdma_wt_updt_valid(io_sc2cdma_wt_updt_valid),
.io_sc2cdma_wt_updt_bits_entries(io_sc2cdma_wt_updt_bits_entries),
.io_sc2cdma_wt_updt_bits_kernels(io_sc2cdma_wt_updt_bits_kernels),
.io_sc2cdma_wmb_entries(io_sc2cdma_wmb_entries),
.io_cdma2sc_wmb_entries(io_cdma2sc_wmb_entries),
.io_accu2sc_credit_size_valid(io_accu2sc_credit_size_valid),
.io_accu2sc_credit_size_bits(io_accu2sc_credit_size_bits),
.io_csb2csc_req_ready(io_csb2csc_req_ready),
.io_csb2csc_req_valid(io_csb2csc_req_valid),
.io_csb2csc_req_bits(io_csb2csc_req_bits),
.io_csb2csc_resp_valid(io_csb2csc_resp_valid),
.io_csb2csc_resp_bits(io_csb2csc_resp_bits),
.io_sc2buf_dat_rd_addr_valid(io_sc2buf_dat_rd_addr_valid),
.io_sc2buf_dat_rd_addr_bits(io_sc2buf_dat_rd_addr_bits),
.io_sc2buf_dat_rd_data_valid(io_sc2buf_dat_rd_data_valid),
.io_sc2buf_dat_rd_data_bits(io_sc2buf_dat_rd_data_bits),
.io_sc2buf_wt_rd_addr_valid(io_sc2buf_wt_rd_addr_valid),
.io_sc2buf_wt_rd_addr_bits(io_sc2buf_wt_rd_addr_bits),
.io_sc2buf_wt_rd_data_valid(io_sc2buf_wt_rd_data_valid),
.io_sc2buf_wt_rd_data_bits(io_sc2buf_wt_rd_data_bits),
.io_sc2mac_dat_a_valid(io_sc2mac_dat_a_valid),
.io_sc2mac_dat_a_bits_mask_0(io_sc2mac_dat_a_bits_mask_0),
.io_sc2mac_dat_a_bits_mask_1(io_sc2mac_dat_a_bits_mask_1),
.io_sc2mac_dat_a_bits_mask_2(io_sc2mac_dat_a_bits_mask_2),
.io_sc2mac_dat_a_bits_mask_3(io_sc2mac_dat_a_bits_mask_3),
.io_sc2mac_dat_a_bits_mask_4(io_sc2mac_dat_a_bits_mask_4),
.io_sc2mac_dat_a_bits_mask_5(io_sc2mac_dat_a_bits_mask_5),
.io_sc2mac_dat_a_bits_mask_6(io_sc2mac_dat_a_bits_mask_6),
.io_sc2mac_dat_a_bits_mask_7(io_sc2mac_dat_a_bits_mask_7),
.io_sc2mac_dat_a_bits_mask_8(io_sc2mac_dat_a_bits_mask_8),
.io_sc2mac_dat_a_bits_mask_9(io_sc2mac_dat_a_bits_mask_9),
.io_sc2mac_dat_a_bits_mask_10(io_sc2mac_dat_a_bits_mask_10),
.io_sc2mac_dat_a_bits_mask_11(io_sc2mac_dat_a_bits_mask_11),
.io_sc2mac_dat_a_bits_mask_12(io_sc2mac_dat_a_bits_mask_12),
.io_sc2mac_dat_a_bits_mask_13(io_sc2mac_dat_a_bits_mask_13),
.io_sc2mac_dat_a_bits_mask_14(io_sc2mac_dat_a_bits_mask_14),
.io_sc2mac_dat_a_bits_mask_15(io_sc2mac_dat_a_bits_mask_15),
.io_sc2mac_dat_a_bits_mask_16(io_sc2mac_dat_a_bits_mask_16),
.io_sc2mac_dat_a_bits_mask_17(io_sc2mac_dat_a_bits_mask_17),
.io_sc2mac_dat_a_bits_mask_18(io_sc2mac_dat_a_bits_mask_18),
.io_sc2mac_dat_a_bits_mask_19(io_sc2mac_dat_a_bits_mask_19),
.io_sc2mac_dat_a_bits_mask_20(io_sc2mac_dat_a_bits_mask_20),
.io_sc2mac_dat_a_bits_mask_21(io_sc2mac_dat_a_bits_mask_21),
.io_sc2mac_dat_a_bits_mask_22(io_sc2mac_dat_a_bits_mask_22),
.io_sc2mac_dat_a_bits_mask_23(io_sc2mac_dat_a_bits_mask_23),
.io_sc2mac_dat_a_bits_mask_24(io_sc2mac_dat_a_bits_mask_24),
.io_sc2mac_dat_a_bits_mask_25(io_sc2mac_dat_a_bits_mask_25),
.io_sc2mac_dat_a_bits_mask_26(io_sc2mac_dat_a_bits_mask_26),
.io_sc2mac_dat_a_bits_mask_27(io_sc2mac_dat_a_bits_mask_27),
.io_sc2mac_dat_a_bits_mask_28(io_sc2mac_dat_a_bits_mask_28),
.io_sc2mac_dat_a_bits_mask_29(io_sc2mac_dat_a_bits_mask_29),
.io_sc2mac_dat_a_bits_mask_30(io_sc2mac_dat_a_bits_mask_30),
.io_sc2mac_dat_a_bits_mask_31(io_sc2mac_dat_a_bits_mask_31),
.io_sc2mac_dat_a_bits_mask_32(io_sc2mac_dat_a_bits_mask_32),
.io_sc2mac_dat_a_bits_mask_33(io_sc2mac_dat_a_bits_mask_33),
.io_sc2mac_dat_a_bits_mask_34(io_sc2mac_dat_a_bits_mask_34),
.io_sc2mac_dat_a_bits_mask_35(io_sc2mac_dat_a_bits_mask_35),
.io_sc2mac_dat_a_bits_mask_36(io_sc2mac_dat_a_bits_mask_36),
.io_sc2mac_dat_a_bits_mask_37(io_sc2mac_dat_a_bits_mask_37),
.io_sc2mac_dat_a_bits_mask_38(io_sc2mac_dat_a_bits_mask_38),
.io_sc2mac_dat_a_bits_mask_39(io_sc2mac_dat_a_bits_mask_39),
.io_sc2mac_dat_a_bits_mask_40(io_sc2mac_dat_a_bits_mask_40),
.io_sc2mac_dat_a_bits_mask_41(io_sc2mac_dat_a_bits_mask_41),
.io_sc2mac_dat_a_bits_mask_42(io_sc2mac_dat_a_bits_mask_42),
.io_sc2mac_dat_a_bits_mask_43(io_sc2mac_dat_a_bits_mask_43),
.io_sc2mac_dat_a_bits_mask_44(io_sc2mac_dat_a_bits_mask_44),
.io_sc2mac_dat_a_bits_mask_45(io_sc2mac_dat_a_bits_mask_45),
.io_sc2mac_dat_a_bits_mask_46(io_sc2mac_dat_a_bits_mask_46),
.io_sc2mac_dat_a_bits_mask_47(io_sc2mac_dat_a_bits_mask_47),
.io_sc2mac_dat_a_bits_mask_48(io_sc2mac_dat_a_bits_mask_48),
.io_sc2mac_dat_a_bits_mask_49(io_sc2mac_dat_a_bits_mask_49),
.io_sc2mac_dat_a_bits_mask_50(io_sc2mac_dat_a_bits_mask_50),
.io_sc2mac_dat_a_bits_mask_51(io_sc2mac_dat_a_bits_mask_51),
.io_sc2mac_dat_a_bits_mask_52(io_sc2mac_dat_a_bits_mask_52),
.io_sc2mac_dat_a_bits_mask_53(io_sc2mac_dat_a_bits_mask_53),
.io_sc2mac_dat_a_bits_mask_54(io_sc2mac_dat_a_bits_mask_54),
.io_sc2mac_dat_a_bits_mask_55(io_sc2mac_dat_a_bits_mask_55),
.io_sc2mac_dat_a_bits_mask_56(io_sc2mac_dat_a_bits_mask_56),
.io_sc2mac_dat_a_bits_mask_57(io_sc2mac_dat_a_bits_mask_57),
.io_sc2mac_dat_a_bits_mask_58(io_sc2mac_dat_a_bits_mask_58),
.io_sc2mac_dat_a_bits_mask_59(io_sc2mac_dat_a_bits_mask_59),
.io_sc2mac_dat_a_bits_mask_60(io_sc2mac_dat_a_bits_mask_60),
.io_sc2mac_dat_a_bits_mask_61(io_sc2mac_dat_a_bits_mask_61),
.io_sc2mac_dat_a_bits_mask_62(io_sc2mac_dat_a_bits_mask_62),
.io_sc2mac_dat_a_bits_mask_63(io_sc2mac_dat_a_bits_mask_63),
.io_sc2mac_dat_a_bits_data_0(io_sc2mac_dat_a_bits_data_0),
.io_sc2mac_dat_a_bits_data_1(io_sc2mac_dat_a_bits_data_1),
.io_sc2mac_dat_a_bits_data_2(io_sc2mac_dat_a_bits_data_2),
.io_sc2mac_dat_a_bits_data_3(io_sc2mac_dat_a_bits_data_3),
.io_sc2mac_dat_a_bits_data_4(io_sc2mac_dat_a_bits_data_4),
.io_sc2mac_dat_a_bits_data_5(io_sc2mac_dat_a_bits_data_5),
.io_sc2mac_dat_a_bits_data_6(io_sc2mac_dat_a_bits_data_6),
.io_sc2mac_dat_a_bits_data_7(io_sc2mac_dat_a_bits_data_7),
.io_sc2mac_dat_a_bits_data_8(io_sc2mac_dat_a_bits_data_8),
.io_sc2mac_dat_a_bits_data_9(io_sc2mac_dat_a_bits_data_9),
.io_sc2mac_dat_a_bits_data_10(io_sc2mac_dat_a_bits_data_10),
.io_sc2mac_dat_a_bits_data_11(io_sc2mac_dat_a_bits_data_11),
.io_sc2mac_dat_a_bits_data_12(io_sc2mac_dat_a_bits_data_12),
.io_sc2mac_dat_a_bits_data_13(io_sc2mac_dat_a_bits_data_13),
.io_sc2mac_dat_a_bits_data_14(io_sc2mac_dat_a_bits_data_14),
.io_sc2mac_dat_a_bits_data_15(io_sc2mac_dat_a_bits_data_15),
.io_sc2mac_dat_a_bits_data_16(io_sc2mac_dat_a_bits_data_16),
.io_sc2mac_dat_a_bits_data_17(io_sc2mac_dat_a_bits_data_17),
.io_sc2mac_dat_a_bits_data_18(io_sc2mac_dat_a_bits_data_18),
.io_sc2mac_dat_a_bits_data_19(io_sc2mac_dat_a_bits_data_19),
.io_sc2mac_dat_a_bits_data_20(io_sc2mac_dat_a_bits_data_20),
.io_sc2mac_dat_a_bits_data_21(io_sc2mac_dat_a_bits_data_21),
.io_sc2mac_dat_a_bits_data_22(io_sc2mac_dat_a_bits_data_22),
.io_sc2mac_dat_a_bits_data_23(io_sc2mac_dat_a_bits_data_23),
.io_sc2mac_dat_a_bits_data_24(io_sc2mac_dat_a_bits_data_24),
.io_sc2mac_dat_a_bits_data_25(io_sc2mac_dat_a_bits_data_25),
.io_sc2mac_dat_a_bits_data_26(io_sc2mac_dat_a_bits_data_26),
.io_sc2mac_dat_a_bits_data_27(io_sc2mac_dat_a_bits_data_27),
.io_sc2mac_dat_a_bits_data_28(io_sc2mac_dat_a_bits_data_28),
.io_sc2mac_dat_a_bits_data_29(io_sc2mac_dat_a_bits_data_29),
.io_sc2mac_dat_a_bits_data_30(io_sc2mac_dat_a_bits_data_30),
.io_sc2mac_dat_a_bits_data_31(io_sc2mac_dat_a_bits_data_31),
.io_sc2mac_dat_a_bits_data_32(io_sc2mac_dat_a_bits_data_32),
.io_sc2mac_dat_a_bits_data_33(io_sc2mac_dat_a_bits_data_33),
.io_sc2mac_dat_a_bits_data_34(io_sc2mac_dat_a_bits_data_34),
.io_sc2mac_dat_a_bits_data_35(io_sc2mac_dat_a_bits_data_35),
.io_sc2mac_dat_a_bits_data_36(io_sc2mac_dat_a_bits_data_36),
.io_sc2mac_dat_a_bits_data_37(io_sc2mac_dat_a_bits_data_37),
.io_sc2mac_dat_a_bits_data_38(io_sc2mac_dat_a_bits_data_38),
.io_sc2mac_dat_a_bits_data_39(io_sc2mac_dat_a_bits_data_39),
.io_sc2mac_dat_a_bits_data_40(io_sc2mac_dat_a_bits_data_40),
.io_sc2mac_dat_a_bits_data_41(io_sc2mac_dat_a_bits_data_41),
.io_sc2mac_dat_a_bits_data_42(io_sc2mac_dat_a_bits_data_42),
.io_sc2mac_dat_a_bits_data_43(io_sc2mac_dat_a_bits_data_43),
.io_sc2mac_dat_a_bits_data_44(io_sc2mac_dat_a_bits_data_44),
.io_sc2mac_dat_a_bits_data_45(io_sc2mac_dat_a_bits_data_45),
.io_sc2mac_dat_a_bits_data_46(io_sc2mac_dat_a_bits_data_46),
.io_sc2mac_dat_a_bits_data_47(io_sc2mac_dat_a_bits_data_47),
.io_sc2mac_dat_a_bits_data_48(io_sc2mac_dat_a_bits_data_48),
.io_sc2mac_dat_a_bits_data_49(io_sc2mac_dat_a_bits_data_49),
.io_sc2mac_dat_a_bits_data_50(io_sc2mac_dat_a_bits_data_50),
.io_sc2mac_dat_a_bits_data_51(io_sc2mac_dat_a_bits_data_51),
.io_sc2mac_dat_a_bits_data_52(io_sc2mac_dat_a_bits_data_52),
.io_sc2mac_dat_a_bits_data_53(io_sc2mac_dat_a_bits_data_53),
.io_sc2mac_dat_a_bits_data_54(io_sc2mac_dat_a_bits_data_54),
.io_sc2mac_dat_a_bits_data_55(io_sc2mac_dat_a_bits_data_55),
.io_sc2mac_dat_a_bits_data_56(io_sc2mac_dat_a_bits_data_56),
.io_sc2mac_dat_a_bits_data_57(io_sc2mac_dat_a_bits_data_57),
.io_sc2mac_dat_a_bits_data_58(io_sc2mac_dat_a_bits_data_58),
.io_sc2mac_dat_a_bits_data_59(io_sc2mac_dat_a_bits_data_59),
.io_sc2mac_dat_a_bits_data_60(io_sc2mac_dat_a_bits_data_60),
.io_sc2mac_dat_a_bits_data_61(io_sc2mac_dat_a_bits_data_61),
.io_sc2mac_dat_a_bits_data_62(io_sc2mac_dat_a_bits_data_62),
.io_sc2mac_dat_a_bits_data_63(io_sc2mac_dat_a_bits_data_63),
.io_sc2mac_dat_a_bits_pd(io_sc2mac_dat_a_bits_pd),
.io_sc2mac_dat_b_valid(io_sc2mac_dat_b_valid),
.io_sc2mac_dat_b_bits_mask_0(io_sc2mac_dat_b_bits_mask_0),
.io_sc2mac_dat_b_bits_mask_1(io_sc2mac_dat_b_bits_mask_1),
.io_sc2mac_dat_b_bits_mask_2(io_sc2mac_dat_b_bits_mask_2),
.io_sc2mac_dat_b_bits_mask_3(io_sc2mac_dat_b_bits_mask_3),
.io_sc2mac_dat_b_bits_mask_4(io_sc2mac_dat_b_bits_mask_4),
.io_sc2mac_dat_b_bits_mask_5(io_sc2mac_dat_b_bits_mask_5),
.io_sc2mac_dat_b_bits_mask_6(io_sc2mac_dat_b_bits_mask_6),
.io_sc2mac_dat_b_bits_mask_7(io_sc2mac_dat_b_bits_mask_7),
.io_sc2mac_dat_b_bits_mask_8(io_sc2mac_dat_b_bits_mask_8),
.io_sc2mac_dat_b_bits_mask_9(io_sc2mac_dat_b_bits_mask_9),
.io_sc2mac_dat_b_bits_mask_10(io_sc2mac_dat_b_bits_mask_10),
.io_sc2mac_dat_b_bits_mask_11(io_sc2mac_dat_b_bits_mask_11),
.io_sc2mac_dat_b_bits_mask_12(io_sc2mac_dat_b_bits_mask_12),
.io_sc2mac_dat_b_bits_mask_13(io_sc2mac_dat_b_bits_mask_13),
.io_sc2mac_dat_b_bits_mask_14(io_sc2mac_dat_b_bits_mask_14),
.io_sc2mac_dat_b_bits_mask_15(io_sc2mac_dat_b_bits_mask_15),
.io_sc2mac_dat_b_bits_mask_16(io_sc2mac_dat_b_bits_mask_16),
.io_sc2mac_dat_b_bits_mask_17(io_sc2mac_dat_b_bits_mask_17),
.io_sc2mac_dat_b_bits_mask_18(io_sc2mac_dat_b_bits_mask_18),
.io_sc2mac_dat_b_bits_mask_19(io_sc2mac_dat_b_bits_mask_19),
.io_sc2mac_dat_b_bits_mask_20(io_sc2mac_dat_b_bits_mask_20),
.io_sc2mac_dat_b_bits_mask_21(io_sc2mac_dat_b_bits_mask_21),
.io_sc2mac_dat_b_bits_mask_22(io_sc2mac_dat_b_bits_mask_22),
.io_sc2mac_dat_b_bits_mask_23(io_sc2mac_dat_b_bits_mask_23),
.io_sc2mac_dat_b_bits_mask_24(io_sc2mac_dat_b_bits_mask_24),
.io_sc2mac_dat_b_bits_mask_25(io_sc2mac_dat_b_bits_mask_25),
.io_sc2mac_dat_b_bits_mask_26(io_sc2mac_dat_b_bits_mask_26),
.io_sc2mac_dat_b_bits_mask_27(io_sc2mac_dat_b_bits_mask_27),
.io_sc2mac_dat_b_bits_mask_28(io_sc2mac_dat_b_bits_mask_28),
.io_sc2mac_dat_b_bits_mask_29(io_sc2mac_dat_b_bits_mask_29),
.io_sc2mac_dat_b_bits_mask_30(io_sc2mac_dat_b_bits_mask_30),
.io_sc2mac_dat_b_bits_mask_31(io_sc2mac_dat_b_bits_mask_31),
.io_sc2mac_dat_b_bits_mask_32(io_sc2mac_dat_b_bits_mask_32),
.io_sc2mac_dat_b_bits_mask_33(io_sc2mac_dat_b_bits_mask_33),
.io_sc2mac_dat_b_bits_mask_34(io_sc2mac_dat_b_bits_mask_34),
.io_sc2mac_dat_b_bits_mask_35(io_sc2mac_dat_b_bits_mask_35),
.io_sc2mac_dat_b_bits_mask_36(io_sc2mac_dat_b_bits_mask_36),
.io_sc2mac_dat_b_bits_mask_37(io_sc2mac_dat_b_bits_mask_37),
.io_sc2mac_dat_b_bits_mask_38(io_sc2mac_dat_b_bits_mask_38),
.io_sc2mac_dat_b_bits_mask_39(io_sc2mac_dat_b_bits_mask_39),
.io_sc2mac_dat_b_bits_mask_40(io_sc2mac_dat_b_bits_mask_40),
.io_sc2mac_dat_b_bits_mask_41(io_sc2mac_dat_b_bits_mask_41),
.io_sc2mac_dat_b_bits_mask_42(io_sc2mac_dat_b_bits_mask_42),
.io_sc2mac_dat_b_bits_mask_43(io_sc2mac_dat_b_bits_mask_43),
.io_sc2mac_dat_b_bits_mask_44(io_sc2mac_dat_b_bits_mask_44),
.io_sc2mac_dat_b_bits_mask_45(io_sc2mac_dat_b_bits_mask_45),
.io_sc2mac_dat_b_bits_mask_46(io_sc2mac_dat_b_bits_mask_46),
.io_sc2mac_dat_b_bits_mask_47(io_sc2mac_dat_b_bits_mask_47),
.io_sc2mac_dat_b_bits_mask_48(io_sc2mac_dat_b_bits_mask_48),
.io_sc2mac_dat_b_bits_mask_49(io_sc2mac_dat_b_bits_mask_49),
.io_sc2mac_dat_b_bits_mask_50(io_sc2mac_dat_b_bits_mask_50),
.io_sc2mac_dat_b_bits_mask_51(io_sc2mac_dat_b_bits_mask_51),
.io_sc2mac_dat_b_bits_mask_52(io_sc2mac_dat_b_bits_mask_52),
.io_sc2mac_dat_b_bits_mask_53(io_sc2mac_dat_b_bits_mask_53),
.io_sc2mac_dat_b_bits_mask_54(io_sc2mac_dat_b_bits_mask_54),
.io_sc2mac_dat_b_bits_mask_55(io_sc2mac_dat_b_bits_mask_55),
.io_sc2mac_dat_b_bits_mask_56(io_sc2mac_dat_b_bits_mask_56),
.io_sc2mac_dat_b_bits_mask_57(io_sc2mac_dat_b_bits_mask_57),
.io_sc2mac_dat_b_bits_mask_58(io_sc2mac_dat_b_bits_mask_58),
.io_sc2mac_dat_b_bits_mask_59(io_sc2mac_dat_b_bits_mask_59),
.io_sc2mac_dat_b_bits_mask_60(io_sc2mac_dat_b_bits_mask_60),
.io_sc2mac_dat_b_bits_mask_61(io_sc2mac_dat_b_bits_mask_61),
.io_sc2mac_dat_b_bits_mask_62(io_sc2mac_dat_b_bits_mask_62),
.io_sc2mac_dat_b_bits_mask_63(io_sc2mac_dat_b_bits_mask_63),
.io_sc2mac_dat_b_bits_data_0(io_sc2mac_dat_b_bits_data_0),
.io_sc2mac_dat_b_bits_data_1(io_sc2mac_dat_b_bits_data_1),
.io_sc2mac_dat_b_bits_data_2(io_sc2mac_dat_b_bits_data_2),
.io_sc2mac_dat_b_bits_data_3(io_sc2mac_dat_b_bits_data_3),
.io_sc2mac_dat_b_bits_data_4(io_sc2mac_dat_b_bits_data_4),
.io_sc2mac_dat_b_bits_data_5(io_sc2mac_dat_b_bits_data_5),
.io_sc2mac_dat_b_bits_data_6(io_sc2mac_dat_b_bits_data_6),
.io_sc2mac_dat_b_bits_data_7(io_sc2mac_dat_b_bits_data_7),
.io_sc2mac_dat_b_bits_data_8(io_sc2mac_dat_b_bits_data_8),
.io_sc2mac_dat_b_bits_data_9(io_sc2mac_dat_b_bits_data_9),
.io_sc2mac_dat_b_bits_data_10(io_sc2mac_dat_b_bits_data_10),
.io_sc2mac_dat_b_bits_data_11(io_sc2mac_dat_b_bits_data_11),
.io_sc2mac_dat_b_bits_data_12(io_sc2mac_dat_b_bits_data_12),
.io_sc2mac_dat_b_bits_data_13(io_sc2mac_dat_b_bits_data_13),
.io_sc2mac_dat_b_bits_data_14(io_sc2mac_dat_b_bits_data_14),
.io_sc2mac_dat_b_bits_data_15(io_sc2mac_dat_b_bits_data_15),
.io_sc2mac_dat_b_bits_data_16(io_sc2mac_dat_b_bits_data_16),
.io_sc2mac_dat_b_bits_data_17(io_sc2mac_dat_b_bits_data_17),
.io_sc2mac_dat_b_bits_data_18(io_sc2mac_dat_b_bits_data_18),
.io_sc2mac_dat_b_bits_data_19(io_sc2mac_dat_b_bits_data_19),
.io_sc2mac_dat_b_bits_data_20(io_sc2mac_dat_b_bits_data_20),
.io_sc2mac_dat_b_bits_data_21(io_sc2mac_dat_b_bits_data_21),
.io_sc2mac_dat_b_bits_data_22(io_sc2mac_dat_b_bits_data_22),
.io_sc2mac_dat_b_bits_data_23(io_sc2mac_dat_b_bits_data_23),
.io_sc2mac_dat_b_bits_data_24(io_sc2mac_dat_b_bits_data_24),
.io_sc2mac_dat_b_bits_data_25(io_sc2mac_dat_b_bits_data_25),
.io_sc2mac_dat_b_bits_data_26(io_sc2mac_dat_b_bits_data_26),
.io_sc2mac_dat_b_bits_data_27(io_sc2mac_dat_b_bits_data_27),
.io_sc2mac_dat_b_bits_data_28(io_sc2mac_dat_b_bits_data_28),
.io_sc2mac_dat_b_bits_data_29(io_sc2mac_dat_b_bits_data_29),
.io_sc2mac_dat_b_bits_data_30(io_sc2mac_dat_b_bits_data_30),
.io_sc2mac_dat_b_bits_data_31(io_sc2mac_dat_b_bits_data_31),
.io_sc2mac_dat_b_bits_data_32(io_sc2mac_dat_b_bits_data_32),
.io_sc2mac_dat_b_bits_data_33(io_sc2mac_dat_b_bits_data_33),
.io_sc2mac_dat_b_bits_data_34(io_sc2mac_dat_b_bits_data_34),
.io_sc2mac_dat_b_bits_data_35(io_sc2mac_dat_b_bits_data_35),
.io_sc2mac_dat_b_bits_data_36(io_sc2mac_dat_b_bits_data_36),
.io_sc2mac_dat_b_bits_data_37(io_sc2mac_dat_b_bits_data_37),
.io_sc2mac_dat_b_bits_data_38(io_sc2mac_dat_b_bits_data_38),
.io_sc2mac_dat_b_bits_data_39(io_sc2mac_dat_b_bits_data_39),
.io_sc2mac_dat_b_bits_data_40(io_sc2mac_dat_b_bits_data_40),
.io_sc2mac_dat_b_bits_data_41(io_sc2mac_dat_b_bits_data_41),
.io_sc2mac_dat_b_bits_data_42(io_sc2mac_dat_b_bits_data_42),
.io_sc2mac_dat_b_bits_data_43(io_sc2mac_dat_b_bits_data_43),
.io_sc2mac_dat_b_bits_data_44(io_sc2mac_dat_b_bits_data_44),
.io_sc2mac_dat_b_bits_data_45(io_sc2mac_dat_b_bits_data_45),
.io_sc2mac_dat_b_bits_data_46(io_sc2mac_dat_b_bits_data_46),
.io_sc2mac_dat_b_bits_data_47(io_sc2mac_dat_b_bits_data_47),
.io_sc2mac_dat_b_bits_data_48(io_sc2mac_dat_b_bits_data_48),
.io_sc2mac_dat_b_bits_data_49(io_sc2mac_dat_b_bits_data_49),
.io_sc2mac_dat_b_bits_data_50(io_sc2mac_dat_b_bits_data_50),
.io_sc2mac_dat_b_bits_data_51(io_sc2mac_dat_b_bits_data_51),
.io_sc2mac_dat_b_bits_data_52(io_sc2mac_dat_b_bits_data_52),
.io_sc2mac_dat_b_bits_data_53(io_sc2mac_dat_b_bits_data_53),
.io_sc2mac_dat_b_bits_data_54(io_sc2mac_dat_b_bits_data_54),
.io_sc2mac_dat_b_bits_data_55(io_sc2mac_dat_b_bits_data_55),
.io_sc2mac_dat_b_bits_data_56(io_sc2mac_dat_b_bits_data_56),
.io_sc2mac_dat_b_bits_data_57(io_sc2mac_dat_b_bits_data_57),
.io_sc2mac_dat_b_bits_data_58(io_sc2mac_dat_b_bits_data_58),
.io_sc2mac_dat_b_bits_data_59(io_sc2mac_dat_b_bits_data_59),
.io_sc2mac_dat_b_bits_data_60(io_sc2mac_dat_b_bits_data_60),
.io_sc2mac_dat_b_bits_data_61(io_sc2mac_dat_b_bits_data_61),
.io_sc2mac_dat_b_bits_data_62(io_sc2mac_dat_b_bits_data_62),
.io_sc2mac_dat_b_bits_data_63(io_sc2mac_dat_b_bits_data_63),
.io_sc2mac_dat_b_bits_pd(io_sc2mac_dat_b_bits_pd),
.io_sc2mac_wt_a_valid(io_sc2mac_wt_a_valid),
.io_sc2mac_wt_a_bits_sel_0(io_sc2mac_wt_a_bits_sel_0),
.io_sc2mac_wt_a_bits_sel_1(io_sc2mac_wt_a_bits_sel_1),
.io_sc2mac_wt_a_bits_sel_2(io_sc2mac_wt_a_bits_sel_2),
.io_sc2mac_wt_a_bits_sel_3(io_sc2mac_wt_a_bits_sel_3),
.io_sc2mac_wt_a_bits_sel_4(io_sc2mac_wt_a_bits_sel_4),
.io_sc2mac_wt_a_bits_sel_5(io_sc2mac_wt_a_bits_sel_5),
.io_sc2mac_wt_a_bits_sel_6(io_sc2mac_wt_a_bits_sel_6),
.io_sc2mac_wt_a_bits_sel_7(io_sc2mac_wt_a_bits_sel_7),
.io_sc2mac_wt_a_bits_sel_8(io_sc2mac_wt_a_bits_sel_8),
.io_sc2mac_wt_a_bits_sel_9(io_sc2mac_wt_a_bits_sel_9),
.io_sc2mac_wt_a_bits_sel_10(io_sc2mac_wt_a_bits_sel_10),
.io_sc2mac_wt_a_bits_sel_11(io_sc2mac_wt_a_bits_sel_11),
.io_sc2mac_wt_a_bits_sel_12(io_sc2mac_wt_a_bits_sel_12),
.io_sc2mac_wt_a_bits_sel_13(io_sc2mac_wt_a_bits_sel_13),
.io_sc2mac_wt_a_bits_sel_14(io_sc2mac_wt_a_bits_sel_14),
.io_sc2mac_wt_a_bits_sel_15(io_sc2mac_wt_a_bits_sel_15),
.io_sc2mac_wt_a_bits_mask_0(io_sc2mac_wt_a_bits_mask_0),
.io_sc2mac_wt_a_bits_mask_1(io_sc2mac_wt_a_bits_mask_1),
.io_sc2mac_wt_a_bits_mask_2(io_sc2mac_wt_a_bits_mask_2),
.io_sc2mac_wt_a_bits_mask_3(io_sc2mac_wt_a_bits_mask_3),
.io_sc2mac_wt_a_bits_mask_4(io_sc2mac_wt_a_bits_mask_4),
.io_sc2mac_wt_a_bits_mask_5(io_sc2mac_wt_a_bits_mask_5),
.io_sc2mac_wt_a_bits_mask_6(io_sc2mac_wt_a_bits_mask_6),
.io_sc2mac_wt_a_bits_mask_7(io_sc2mac_wt_a_bits_mask_7),
.io_sc2mac_wt_a_bits_mask_8(io_sc2mac_wt_a_bits_mask_8),
.io_sc2mac_wt_a_bits_mask_9(io_sc2mac_wt_a_bits_mask_9),
.io_sc2mac_wt_a_bits_mask_10(io_sc2mac_wt_a_bits_mask_10),
.io_sc2mac_wt_a_bits_mask_11(io_sc2mac_wt_a_bits_mask_11),
.io_sc2mac_wt_a_bits_mask_12(io_sc2mac_wt_a_bits_mask_12),
.io_sc2mac_wt_a_bits_mask_13(io_sc2mac_wt_a_bits_mask_13),
.io_sc2mac_wt_a_bits_mask_14(io_sc2mac_wt_a_bits_mask_14),
.io_sc2mac_wt_a_bits_mask_15(io_sc2mac_wt_a_bits_mask_15),
.io_sc2mac_wt_a_bits_mask_16(io_sc2mac_wt_a_bits_mask_16),
.io_sc2mac_wt_a_bits_mask_17(io_sc2mac_wt_a_bits_mask_17),
.io_sc2mac_wt_a_bits_mask_18(io_sc2mac_wt_a_bits_mask_18),
.io_sc2mac_wt_a_bits_mask_19(io_sc2mac_wt_a_bits_mask_19),
.io_sc2mac_wt_a_bits_mask_20(io_sc2mac_wt_a_bits_mask_20),
.io_sc2mac_wt_a_bits_mask_21(io_sc2mac_wt_a_bits_mask_21),
.io_sc2mac_wt_a_bits_mask_22(io_sc2mac_wt_a_bits_mask_22),
.io_sc2mac_wt_a_bits_mask_23(io_sc2mac_wt_a_bits_mask_23),
.io_sc2mac_wt_a_bits_mask_24(io_sc2mac_wt_a_bits_mask_24),
.io_sc2mac_wt_a_bits_mask_25(io_sc2mac_wt_a_bits_mask_25),
.io_sc2mac_wt_a_bits_mask_26(io_sc2mac_wt_a_bits_mask_26),
.io_sc2mac_wt_a_bits_mask_27(io_sc2mac_wt_a_bits_mask_27),
.io_sc2mac_wt_a_bits_mask_28(io_sc2mac_wt_a_bits_mask_28),
.io_sc2mac_wt_a_bits_mask_29(io_sc2mac_wt_a_bits_mask_29),
.io_sc2mac_wt_a_bits_mask_30(io_sc2mac_wt_a_bits_mask_30),
.io_sc2mac_wt_a_bits_mask_31(io_sc2mac_wt_a_bits_mask_31),
.io_sc2mac_wt_a_bits_mask_32(io_sc2mac_wt_a_bits_mask_32),
.io_sc2mac_wt_a_bits_mask_33(io_sc2mac_wt_a_bits_mask_33),
.io_sc2mac_wt_a_bits_mask_34(io_sc2mac_wt_a_bits_mask_34),
.io_sc2mac_wt_a_bits_mask_35(io_sc2mac_wt_a_bits_mask_35),
.io_sc2mac_wt_a_bits_mask_36(io_sc2mac_wt_a_bits_mask_36),
.io_sc2mac_wt_a_bits_mask_37(io_sc2mac_wt_a_bits_mask_37),
.io_sc2mac_wt_a_bits_mask_38(io_sc2mac_wt_a_bits_mask_38),
.io_sc2mac_wt_a_bits_mask_39(io_sc2mac_wt_a_bits_mask_39),
.io_sc2mac_wt_a_bits_mask_40(io_sc2mac_wt_a_bits_mask_40),
.io_sc2mac_wt_a_bits_mask_41(io_sc2mac_wt_a_bits_mask_41),
.io_sc2mac_wt_a_bits_mask_42(io_sc2mac_wt_a_bits_mask_42),
.io_sc2mac_wt_a_bits_mask_43(io_sc2mac_wt_a_bits_mask_43),
.io_sc2mac_wt_a_bits_mask_44(io_sc2mac_wt_a_bits_mask_44),
.io_sc2mac_wt_a_bits_mask_45(io_sc2mac_wt_a_bits_mask_45),
.io_sc2mac_wt_a_bits_mask_46(io_sc2mac_wt_a_bits_mask_46),
.io_sc2mac_wt_a_bits_mask_47(io_sc2mac_wt_a_bits_mask_47),
.io_sc2mac_wt_a_bits_mask_48(io_sc2mac_wt_a_bits_mask_48),
.io_sc2mac_wt_a_bits_mask_49(io_sc2mac_wt_a_bits_mask_49),
.io_sc2mac_wt_a_bits_mask_50(io_sc2mac_wt_a_bits_mask_50),
.io_sc2mac_wt_a_bits_mask_51(io_sc2mac_wt_a_bits_mask_51),
.io_sc2mac_wt_a_bits_mask_52(io_sc2mac_wt_a_bits_mask_52),
.io_sc2mac_wt_a_bits_mask_53(io_sc2mac_wt_a_bits_mask_53),
.io_sc2mac_wt_a_bits_mask_54(io_sc2mac_wt_a_bits_mask_54),
.io_sc2mac_wt_a_bits_mask_55(io_sc2mac_wt_a_bits_mask_55),
.io_sc2mac_wt_a_bits_mask_56(io_sc2mac_wt_a_bits_mask_56),
.io_sc2mac_wt_a_bits_mask_57(io_sc2mac_wt_a_bits_mask_57),
.io_sc2mac_wt_a_bits_mask_58(io_sc2mac_wt_a_bits_mask_58),
.io_sc2mac_wt_a_bits_mask_59(io_sc2mac_wt_a_bits_mask_59),
.io_sc2mac_wt_a_bits_mask_60(io_sc2mac_wt_a_bits_mask_60),
.io_sc2mac_wt_a_bits_mask_61(io_sc2mac_wt_a_bits_mask_61),
.io_sc2mac_wt_a_bits_mask_62(io_sc2mac_wt_a_bits_mask_62),
.io_sc2mac_wt_a_bits_mask_63(io_sc2mac_wt_a_bits_mask_63),
.io_sc2mac_wt_a_bits_data_0(io_sc2mac_wt_a_bits_data_0),
.io_sc2mac_wt_a_bits_data_1(io_sc2mac_wt_a_bits_data_1),
.io_sc2mac_wt_a_bits_data_2(io_sc2mac_wt_a_bits_data_2),
.io_sc2mac_wt_a_bits_data_3(io_sc2mac_wt_a_bits_data_3),
.io_sc2mac_wt_a_bits_data_4(io_sc2mac_wt_a_bits_data_4),
.io_sc2mac_wt_a_bits_data_5(io_sc2mac_wt_a_bits_data_5),
.io_sc2mac_wt_a_bits_data_6(io_sc2mac_wt_a_bits_data_6),
.io_sc2mac_wt_a_bits_data_7(io_sc2mac_wt_a_bits_data_7),
.io_sc2mac_wt_a_bits_data_8(io_sc2mac_wt_a_bits_data_8),
.io_sc2mac_wt_a_bits_data_9(io_sc2mac_wt_a_bits_data_9),
.io_sc2mac_wt_a_bits_data_10(io_sc2mac_wt_a_bits_data_10),
.io_sc2mac_wt_a_bits_data_11(io_sc2mac_wt_a_bits_data_11),
.io_sc2mac_wt_a_bits_data_12(io_sc2mac_wt_a_bits_data_12),
.io_sc2mac_wt_a_bits_data_13(io_sc2mac_wt_a_bits_data_13),
.io_sc2mac_wt_a_bits_data_14(io_sc2mac_wt_a_bits_data_14),
.io_sc2mac_wt_a_bits_data_15(io_sc2mac_wt_a_bits_data_15),
.io_sc2mac_wt_a_bits_data_16(io_sc2mac_wt_a_bits_data_16),
.io_sc2mac_wt_a_bits_data_17(io_sc2mac_wt_a_bits_data_17),
.io_sc2mac_wt_a_bits_data_18(io_sc2mac_wt_a_bits_data_18),
.io_sc2mac_wt_a_bits_data_19(io_sc2mac_wt_a_bits_data_19),
.io_sc2mac_wt_a_bits_data_20(io_sc2mac_wt_a_bits_data_20),
.io_sc2mac_wt_a_bits_data_21(io_sc2mac_wt_a_bits_data_21),
.io_sc2mac_wt_a_bits_data_22(io_sc2mac_wt_a_bits_data_22),
.io_sc2mac_wt_a_bits_data_23(io_sc2mac_wt_a_bits_data_23),
.io_sc2mac_wt_a_bits_data_24(io_sc2mac_wt_a_bits_data_24),
.io_sc2mac_wt_a_bits_data_25(io_sc2mac_wt_a_bits_data_25),
.io_sc2mac_wt_a_bits_data_26(io_sc2mac_wt_a_bits_data_26),
.io_sc2mac_wt_a_bits_data_27(io_sc2mac_wt_a_bits_data_27),
.io_sc2mac_wt_a_bits_data_28(io_sc2mac_wt_a_bits_data_28),
.io_sc2mac_wt_a_bits_data_29(io_sc2mac_wt_a_bits_data_29),
.io_sc2mac_wt_a_bits_data_30(io_sc2mac_wt_a_bits_data_30),
.io_sc2mac_wt_a_bits_data_31(io_sc2mac_wt_a_bits_data_31),
.io_sc2mac_wt_a_bits_data_32(io_sc2mac_wt_a_bits_data_32),
.io_sc2mac_wt_a_bits_data_33(io_sc2mac_wt_a_bits_data_33),
.io_sc2mac_wt_a_bits_data_34(io_sc2mac_wt_a_bits_data_34),
.io_sc2mac_wt_a_bits_data_35(io_sc2mac_wt_a_bits_data_35),
.io_sc2mac_wt_a_bits_data_36(io_sc2mac_wt_a_bits_data_36),
.io_sc2mac_wt_a_bits_data_37(io_sc2mac_wt_a_bits_data_37),
.io_sc2mac_wt_a_bits_data_38(io_sc2mac_wt_a_bits_data_38),
.io_sc2mac_wt_a_bits_data_39(io_sc2mac_wt_a_bits_data_39),
.io_sc2mac_wt_a_bits_data_40(io_sc2mac_wt_a_bits_data_40),
.io_sc2mac_wt_a_bits_data_41(io_sc2mac_wt_a_bits_data_41),
.io_sc2mac_wt_a_bits_data_42(io_sc2mac_wt_a_bits_data_42),
.io_sc2mac_wt_a_bits_data_43(io_sc2mac_wt_a_bits_data_43),
.io_sc2mac_wt_a_bits_data_44(io_sc2mac_wt_a_bits_data_44),
.io_sc2mac_wt_a_bits_data_45(io_sc2mac_wt_a_bits_data_45),
.io_sc2mac_wt_a_bits_data_46(io_sc2mac_wt_a_bits_data_46),
.io_sc2mac_wt_a_bits_data_47(io_sc2mac_wt_a_bits_data_47),
.io_sc2mac_wt_a_bits_data_48(io_sc2mac_wt_a_bits_data_48),
.io_sc2mac_wt_a_bits_data_49(io_sc2mac_wt_a_bits_data_49),
.io_sc2mac_wt_a_bits_data_50(io_sc2mac_wt_a_bits_data_50),
.io_sc2mac_wt_a_bits_data_51(io_sc2mac_wt_a_bits_data_51),
.io_sc2mac_wt_a_bits_data_52(io_sc2mac_wt_a_bits_data_52),
.io_sc2mac_wt_a_bits_data_53(io_sc2mac_wt_a_bits_data_53),
.io_sc2mac_wt_a_bits_data_54(io_sc2mac_wt_a_bits_data_54),
.io_sc2mac_wt_a_bits_data_55(io_sc2mac_wt_a_bits_data_55),
.io_sc2mac_wt_a_bits_data_56(io_sc2mac_wt_a_bits_data_56),
.io_sc2mac_wt_a_bits_data_57(io_sc2mac_wt_a_bits_data_57),
.io_sc2mac_wt_a_bits_data_58(io_sc2mac_wt_a_bits_data_58),
.io_sc2mac_wt_a_bits_data_59(io_sc2mac_wt_a_bits_data_59),
.io_sc2mac_wt_a_bits_data_60(io_sc2mac_wt_a_bits_data_60),
.io_sc2mac_wt_a_bits_data_61(io_sc2mac_wt_a_bits_data_61),
.io_sc2mac_wt_a_bits_data_62(io_sc2mac_wt_a_bits_data_62),
.io_sc2mac_wt_a_bits_data_63(io_sc2mac_wt_a_bits_data_63),
.io_sc2mac_wt_b_valid(io_sc2mac_wt_b_valid),
.io_sc2mac_wt_b_bits_sel_0(io_sc2mac_wt_b_bits_sel_0),
.io_sc2mac_wt_b_bits_sel_1(io_sc2mac_wt_b_bits_sel_1),
.io_sc2mac_wt_b_bits_sel_2(io_sc2mac_wt_b_bits_sel_2),
.io_sc2mac_wt_b_bits_sel_3(io_sc2mac_wt_b_bits_sel_3),
.io_sc2mac_wt_b_bits_sel_4(io_sc2mac_wt_b_bits_sel_4),
.io_sc2mac_wt_b_bits_sel_5(io_sc2mac_wt_b_bits_sel_5),
.io_sc2mac_wt_b_bits_sel_6(io_sc2mac_wt_b_bits_sel_6),
.io_sc2mac_wt_b_bits_sel_7(io_sc2mac_wt_b_bits_sel_7),
.io_sc2mac_wt_b_bits_sel_8(io_sc2mac_wt_b_bits_sel_8),
.io_sc2mac_wt_b_bits_sel_9(io_sc2mac_wt_b_bits_sel_9),
.io_sc2mac_wt_b_bits_sel_10(io_sc2mac_wt_b_bits_sel_10),
.io_sc2mac_wt_b_bits_sel_11(io_sc2mac_wt_b_bits_sel_11),
.io_sc2mac_wt_b_bits_sel_12(io_sc2mac_wt_b_bits_sel_12),
.io_sc2mac_wt_b_bits_sel_13(io_sc2mac_wt_b_bits_sel_13),
.io_sc2mac_wt_b_bits_sel_14(io_sc2mac_wt_b_bits_sel_14),
.io_sc2mac_wt_b_bits_sel_15(io_sc2mac_wt_b_bits_sel_15),
.io_sc2mac_wt_b_bits_mask_0(io_sc2mac_wt_b_bits_mask_0),
.io_sc2mac_wt_b_bits_mask_1(io_sc2mac_wt_b_bits_mask_1),
.io_sc2mac_wt_b_bits_mask_2(io_sc2mac_wt_b_bits_mask_2),
.io_sc2mac_wt_b_bits_mask_3(io_sc2mac_wt_b_bits_mask_3),
.io_sc2mac_wt_b_bits_mask_4(io_sc2mac_wt_b_bits_mask_4),
.io_sc2mac_wt_b_bits_mask_5(io_sc2mac_wt_b_bits_mask_5),
.io_sc2mac_wt_b_bits_mask_6(io_sc2mac_wt_b_bits_mask_6),
.io_sc2mac_wt_b_bits_mask_7(io_sc2mac_wt_b_bits_mask_7),
.io_sc2mac_wt_b_bits_mask_8(io_sc2mac_wt_b_bits_mask_8),
.io_sc2mac_wt_b_bits_mask_9(io_sc2mac_wt_b_bits_mask_9),
.io_sc2mac_wt_b_bits_mask_10(io_sc2mac_wt_b_bits_mask_10),
.io_sc2mac_wt_b_bits_mask_11(io_sc2mac_wt_b_bits_mask_11),
.io_sc2mac_wt_b_bits_mask_12(io_sc2mac_wt_b_bits_mask_12),
.io_sc2mac_wt_b_bits_mask_13(io_sc2mac_wt_b_bits_mask_13),
.io_sc2mac_wt_b_bits_mask_14(io_sc2mac_wt_b_bits_mask_14),
.io_sc2mac_wt_b_bits_mask_15(io_sc2mac_wt_b_bits_mask_15),
.io_sc2mac_wt_b_bits_mask_16(io_sc2mac_wt_b_bits_mask_16),
.io_sc2mac_wt_b_bits_mask_17(io_sc2mac_wt_b_bits_mask_17),
.io_sc2mac_wt_b_bits_mask_18(io_sc2mac_wt_b_bits_mask_18),
.io_sc2mac_wt_b_bits_mask_19(io_sc2mac_wt_b_bits_mask_19),
.io_sc2mac_wt_b_bits_mask_20(io_sc2mac_wt_b_bits_mask_20),
.io_sc2mac_wt_b_bits_mask_21(io_sc2mac_wt_b_bits_mask_21),
.io_sc2mac_wt_b_bits_mask_22(io_sc2mac_wt_b_bits_mask_22),
.io_sc2mac_wt_b_bits_mask_23(io_sc2mac_wt_b_bits_mask_23),
.io_sc2mac_wt_b_bits_mask_24(io_sc2mac_wt_b_bits_mask_24),
.io_sc2mac_wt_b_bits_mask_25(io_sc2mac_wt_b_bits_mask_25),
.io_sc2mac_wt_b_bits_mask_26(io_sc2mac_wt_b_bits_mask_26),
.io_sc2mac_wt_b_bits_mask_27(io_sc2mac_wt_b_bits_mask_27),
.io_sc2mac_wt_b_bits_mask_28(io_sc2mac_wt_b_bits_mask_28),
.io_sc2mac_wt_b_bits_mask_29(io_sc2mac_wt_b_bits_mask_29),
.io_sc2mac_wt_b_bits_mask_30(io_sc2mac_wt_b_bits_mask_30),
.io_sc2mac_wt_b_bits_mask_31(io_sc2mac_wt_b_bits_mask_31),
.io_sc2mac_wt_b_bits_mask_32(io_sc2mac_wt_b_bits_mask_32),
.io_sc2mac_wt_b_bits_mask_33(io_sc2mac_wt_b_bits_mask_33),
.io_sc2mac_wt_b_bits_mask_34(io_sc2mac_wt_b_bits_mask_34),
.io_sc2mac_wt_b_bits_mask_35(io_sc2mac_wt_b_bits_mask_35),
.io_sc2mac_wt_b_bits_mask_36(io_sc2mac_wt_b_bits_mask_36),
.io_sc2mac_wt_b_bits_mask_37(io_sc2mac_wt_b_bits_mask_37),
.io_sc2mac_wt_b_bits_mask_38(io_sc2mac_wt_b_bits_mask_38),
.io_sc2mac_wt_b_bits_mask_39(io_sc2mac_wt_b_bits_mask_39),
.io_sc2mac_wt_b_bits_mask_40(io_sc2mac_wt_b_bits_mask_40),
.io_sc2mac_wt_b_bits_mask_41(io_sc2mac_wt_b_bits_mask_41),
.io_sc2mac_wt_b_bits_mask_42(io_sc2mac_wt_b_bits_mask_42),
.io_sc2mac_wt_b_bits_mask_43(io_sc2mac_wt_b_bits_mask_43),
.io_sc2mac_wt_b_bits_mask_44(io_sc2mac_wt_b_bits_mask_44),
.io_sc2mac_wt_b_bits_mask_45(io_sc2mac_wt_b_bits_mask_45),
.io_sc2mac_wt_b_bits_mask_46(io_sc2mac_wt_b_bits_mask_46),
.io_sc2mac_wt_b_bits_mask_47(io_sc2mac_wt_b_bits_mask_47),
.io_sc2mac_wt_b_bits_mask_48(io_sc2mac_wt_b_bits_mask_48),
.io_sc2mac_wt_b_bits_mask_49(io_sc2mac_wt_b_bits_mask_49),
.io_sc2mac_wt_b_bits_mask_50(io_sc2mac_wt_b_bits_mask_50),
.io_sc2mac_wt_b_bits_mask_51(io_sc2mac_wt_b_bits_mask_51),
.io_sc2mac_wt_b_bits_mask_52(io_sc2mac_wt_b_bits_mask_52),
.io_sc2mac_wt_b_bits_mask_53(io_sc2mac_wt_b_bits_mask_53),
.io_sc2mac_wt_b_bits_mask_54(io_sc2mac_wt_b_bits_mask_54),
.io_sc2mac_wt_b_bits_mask_55(io_sc2mac_wt_b_bits_mask_55),
.io_sc2mac_wt_b_bits_mask_56(io_sc2mac_wt_b_bits_mask_56),
.io_sc2mac_wt_b_bits_mask_57(io_sc2mac_wt_b_bits_mask_57),
.io_sc2mac_wt_b_bits_mask_58(io_sc2mac_wt_b_bits_mask_58),
.io_sc2mac_wt_b_bits_mask_59(io_sc2mac_wt_b_bits_mask_59),
.io_sc2mac_wt_b_bits_mask_60(io_sc2mac_wt_b_bits_mask_60),
.io_sc2mac_wt_b_bits_mask_61(io_sc2mac_wt_b_bits_mask_61),
.io_sc2mac_wt_b_bits_mask_62(io_sc2mac_wt_b_bits_mask_62),
.io_sc2mac_wt_b_bits_mask_63(io_sc2mac_wt_b_bits_mask_63),
.io_sc2mac_wt_b_bits_data_0(io_sc2mac_wt_b_bits_data_0),
.io_sc2mac_wt_b_bits_data_1(io_sc2mac_wt_b_bits_data_1),
.io_sc2mac_wt_b_bits_data_2(io_sc2mac_wt_b_bits_data_2),
.io_sc2mac_wt_b_bits_data_3(io_sc2mac_wt_b_bits_data_3),
.io_sc2mac_wt_b_bits_data_4(io_sc2mac_wt_b_bits_data_4),
.io_sc2mac_wt_b_bits_data_5(io_sc2mac_wt_b_bits_data_5),
.io_sc2mac_wt_b_bits_data_6(io_sc2mac_wt_b_bits_data_6),
.io_sc2mac_wt_b_bits_data_7(io_sc2mac_wt_b_bits_data_7),
.io_sc2mac_wt_b_bits_data_8(io_sc2mac_wt_b_bits_data_8),
.io_sc2mac_wt_b_bits_data_9(io_sc2mac_wt_b_bits_data_9),
.io_sc2mac_wt_b_bits_data_10(io_sc2mac_wt_b_bits_data_10),
.io_sc2mac_wt_b_bits_data_11(io_sc2mac_wt_b_bits_data_11),
.io_sc2mac_wt_b_bits_data_12(io_sc2mac_wt_b_bits_data_12),
.io_sc2mac_wt_b_bits_data_13(io_sc2mac_wt_b_bits_data_13),
.io_sc2mac_wt_b_bits_data_14(io_sc2mac_wt_b_bits_data_14),
.io_sc2mac_wt_b_bits_data_15(io_sc2mac_wt_b_bits_data_15),
.io_sc2mac_wt_b_bits_data_16(io_sc2mac_wt_b_bits_data_16),
.io_sc2mac_wt_b_bits_data_17(io_sc2mac_wt_b_bits_data_17),
.io_sc2mac_wt_b_bits_data_18(io_sc2mac_wt_b_bits_data_18),
.io_sc2mac_wt_b_bits_data_19(io_sc2mac_wt_b_bits_data_19),
.io_sc2mac_wt_b_bits_data_20(io_sc2mac_wt_b_bits_data_20),
.io_sc2mac_wt_b_bits_data_21(io_sc2mac_wt_b_bits_data_21),
.io_sc2mac_wt_b_bits_data_22(io_sc2mac_wt_b_bits_data_22),
.io_sc2mac_wt_b_bits_data_23(io_sc2mac_wt_b_bits_data_23),
.io_sc2mac_wt_b_bits_data_24(io_sc2mac_wt_b_bits_data_24),
.io_sc2mac_wt_b_bits_data_25(io_sc2mac_wt_b_bits_data_25),
.io_sc2mac_wt_b_bits_data_26(io_sc2mac_wt_b_bits_data_26),
.io_sc2mac_wt_b_bits_data_27(io_sc2mac_wt_b_bits_data_27),
.io_sc2mac_wt_b_bits_data_28(io_sc2mac_wt_b_bits_data_28),
.io_sc2mac_wt_b_bits_data_29(io_sc2mac_wt_b_bits_data_29),
.io_sc2mac_wt_b_bits_data_30(io_sc2mac_wt_b_bits_data_30),
.io_sc2mac_wt_b_bits_data_31(io_sc2mac_wt_b_bits_data_31),
.io_sc2mac_wt_b_bits_data_32(io_sc2mac_wt_b_bits_data_32),
.io_sc2mac_wt_b_bits_data_33(io_sc2mac_wt_b_bits_data_33),
.io_sc2mac_wt_b_bits_data_34(io_sc2mac_wt_b_bits_data_34),
.io_sc2mac_wt_b_bits_data_35(io_sc2mac_wt_b_bits_data_35),
.io_sc2mac_wt_b_bits_data_36(io_sc2mac_wt_b_bits_data_36),
.io_sc2mac_wt_b_bits_data_37(io_sc2mac_wt_b_bits_data_37),
.io_sc2mac_wt_b_bits_data_38(io_sc2mac_wt_b_bits_data_38),
.io_sc2mac_wt_b_bits_data_39(io_sc2mac_wt_b_bits_data_39),
.io_sc2mac_wt_b_bits_data_40(io_sc2mac_wt_b_bits_data_40),
.io_sc2mac_wt_b_bits_data_41(io_sc2mac_wt_b_bits_data_41),
.io_sc2mac_wt_b_bits_data_42(io_sc2mac_wt_b_bits_data_42),
.io_sc2mac_wt_b_bits_data_43(io_sc2mac_wt_b_bits_data_43),
.io_sc2mac_wt_b_bits_data_44(io_sc2mac_wt_b_bits_data_44),
.io_sc2mac_wt_b_bits_data_45(io_sc2mac_wt_b_bits_data_45),
.io_sc2mac_wt_b_bits_data_46(io_sc2mac_wt_b_bits_data_46),
.io_sc2mac_wt_b_bits_data_47(io_sc2mac_wt_b_bits_data_47),
.io_sc2mac_wt_b_bits_data_48(io_sc2mac_wt_b_bits_data_48),
.io_sc2mac_wt_b_bits_data_49(io_sc2mac_wt_b_bits_data_49),
.io_sc2mac_wt_b_bits_data_50(io_sc2mac_wt_b_bits_data_50),
.io_sc2mac_wt_b_bits_data_51(io_sc2mac_wt_b_bits_data_51),
.io_sc2mac_wt_b_bits_data_52(io_sc2mac_wt_b_bits_data_52),
.io_sc2mac_wt_b_bits_data_53(io_sc2mac_wt_b_bits_data_53),
.io_sc2mac_wt_b_bits_data_54(io_sc2mac_wt_b_bits_data_54),
.io_sc2mac_wt_b_bits_data_55(io_sc2mac_wt_b_bits_data_55),
.io_sc2mac_wt_b_bits_data_56(io_sc2mac_wt_b_bits_data_56),
.io_sc2mac_wt_b_bits_data_57(io_sc2mac_wt_b_bits_data_57),
.io_sc2mac_wt_b_bits_data_58(io_sc2mac_wt_b_bits_data_58),
.io_sc2mac_wt_b_bits_data_59(io_sc2mac_wt_b_bits_data_59),
.io_sc2mac_wt_b_bits_data_60(io_sc2mac_wt_b_bits_data_60),
.io_sc2mac_wt_b_bits_data_61(io_sc2mac_wt_b_bits_data_61),
.io_sc2mac_wt_b_bits_data_62(io_sc2mac_wt_b_bits_data_62),
.io_sc2mac_wt_b_bits_data_63(io_sc2mac_wt_b_bits_data_63)
);

endmodule


