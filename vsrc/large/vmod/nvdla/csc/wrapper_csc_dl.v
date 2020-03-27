`define CDMA2CBUF_DEBUG_PRINT //open debug print
module wrapper_csc_dl (
   nvdla_core_clk //|< i
  ,nvdla_core_rstn //|< i
  ,sg2dl_pvld //|< i
  ,sg2dl_pd //|< i
  ,sc_state //|< i
  ,sg2dl_reuse_rls //|< i
  ,sc2cdma_dat_pending_req //|< i
  ,cdma2sc_dat_updt //|< i
  ,cdma2sc_dat_entries //|< i
  ,cdma2sc_dat_slices //|< i
  ,sc2cdma_dat_updt //|> o
  ,sc2cdma_dat_entries //|> o
  ,sc2cdma_dat_slices //|> o
  ,sc2buf_dat_rd_en //|> o
  ,sc2buf_dat_rd_addr //|> o
  ,sc2buf_dat_rd_valid //|< i
  ,sc2buf_dat_rd_data //|< i
  ,sc2buf_dat_rd_shift //|> o
  ,sc2buf_dat_rd_next1_en //|> o
  ,sc2buf_dat_rd_next1_addr //|> o
  ,sc2mac_dat_a_pvld //|> o
  ,sc2mac_dat_a_mask //|> o
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: ,sc2mac_dat_a_data${i} //|> o )
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
  ,sc2mac_dat_a_pd //|> o
  ,sc2mac_dat_b_pvld //|> o
  ,sc2mac_dat_b_mask //|> o
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: ,sc2mac_dat_b_data${i} //|> o )
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
  ,sc2mac_dat_b_pd //|> o
  ,nvdla_core_ng_clk //|< i
  ,nvdla_wg_clk //|< i
  ,reg2dp_op_en //|< i
  ,reg2dp_conv_mode //|< i
  ,reg2dp_batches //|< i
  ,reg2dp_proc_precision //|< i
  ,reg2dp_datain_format //|< i
  ,reg2dp_skip_data_rls //|< i
  ,reg2dp_datain_channel_ext //|< i
  ,reg2dp_datain_height_ext //|< i
  ,reg2dp_datain_width_ext //|< i
  ,reg2dp_y_extension //|< i
  ,reg2dp_weight_channel_ext //|< i
  ,reg2dp_entries //|< i
  ,reg2dp_dataout_width //|< i
  ,reg2dp_rls_slices //|< i
  ,reg2dp_conv_x_stride_ext //|< i
  ,reg2dp_conv_y_stride_ext //|< i
  ,reg2dp_x_dilation_ext //|< i
  ,reg2dp_y_dilation_ext //|< i
  ,reg2dp_pad_left //|< i
  ,reg2dp_pad_top //|< i
  ,reg2dp_pad_value //|< i
  ,reg2dp_data_bank //|< i
  ,reg2dp_pra_truncate //|< i
  ,slcg_wg_en //|> o
  );
input nvdla_core_clk;
input nvdla_core_rstn;
input sg2dl_pvld; /* data valid */
input [30:0] sg2dl_pd;
input [1:0] sc_state;
input sg2dl_reuse_rls;
input sc2cdma_dat_pending_req;
input cdma2sc_dat_updt; /* data valid */
input [15 -1:0] cdma2sc_dat_entries;
input [13:0] cdma2sc_dat_slices;
output sc2cdma_dat_updt; /* data valid */
output [15 -1:0] sc2cdma_dat_entries;
output [13:0] sc2cdma_dat_slices;
output sc2buf_dat_rd_en; /* data valid */
output [13 -1:0] sc2buf_dat_rd_addr;
input sc2buf_dat_rd_valid; /* data valid */
input [512 -1:0] sc2buf_dat_rd_data;
output [10 -1:0] sc2buf_dat_rd_shift;
output sc2buf_dat_rd_next1_en;
output [13 -1:0] sc2buf_dat_rd_next1_addr;
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
input nvdla_core_ng_clk;
input nvdla_wg_clk;
input [0:0] reg2dp_op_en;
input [0:0] reg2dp_conv_mode;
input [4:0] reg2dp_batches;
input [1:0] reg2dp_proc_precision;
input [0:0] reg2dp_datain_format;
input [0:0] reg2dp_skip_data_rls;
input [12:0] reg2dp_datain_channel_ext;
input [12:0] reg2dp_datain_height_ext;
input [12:0] reg2dp_datain_width_ext;
input [1:0] reg2dp_y_extension;
input [12:0] reg2dp_weight_channel_ext;
input [13:0] reg2dp_entries;
input [12:0] reg2dp_dataout_width;
input [11:0] reg2dp_rls_slices;
input [2:0] reg2dp_conv_x_stride_ext;
input [2:0] reg2dp_conv_y_stride_ext;
input [4:0] reg2dp_x_dilation_ext;
input [4:0] reg2dp_y_dilation_ext;
input [4:0] reg2dp_pad_left;
input [4:0] reg2dp_pad_top;
input [15:0] reg2dp_pad_value;
input [4:0] reg2dp_data_bank;
input [1:0] reg2dp_pra_truncate;
output slcg_wg_en;

wire          clock; // @[:@4.4]
wire          reset; // @[:@5.4]
wire          io_nvdla_core_clk; // @[:@6.4]
wire          io_nvdla_core_ng_clk; // @[:@6.4]
wire  [1:0]   io_sc_state; // @[:@6.4]
wire          io_sg2dl_pd_valid; // @[:@6.4]
wire  [30:0]  io_sg2dl_pd_bits; // @[:@6.4]
wire          io_sg2dl_reuse_rls; // @[:@6.4]
wire          io_cdma2sc_dat_updt_valid; // @[:@6.4]
wire  [14:0]  io_cdma2sc_dat_updt_bits_entries; // @[:@6.4]
wire  [13:0]  io_cdma2sc_dat_updt_bits_slices; // @[:@6.4]
wire          io_sc2cdma_dat_pending_req; // @[:@6.4]
wire         io_sc2cdma_dat_updt_valid; // @[:@6.4]
wire [14:0]  io_sc2cdma_dat_updt_bits_entries; // @[:@6.4]
wire [13:0]  io_sc2cdma_dat_updt_bits_slices; // @[:@6.4]
wire         io_sc2buf_dat_rd_addr_valid; // @[:@6.4]
wire [12:0]  io_sc2buf_dat_rd_addr_bits; // @[:@6.4]
wire          io_sc2buf_dat_rd_data_valid; // @[:@6.4]
wire  [511:0] io_sc2buf_dat_rd_data_bits; // @[:@6.4]
wire         io_sc2mac_dat_a_valid; // @[:@6.4]
wire         io_sc2mac_dat_a_bits_mask_0; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_1; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_2; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_3; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_4; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_5; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_6; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_7; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_8; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_9; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_10; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_11; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_12; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_13; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_14; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_15; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_16; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_17; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_18; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_19; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_20; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_21; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_22; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_23; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_24; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_25; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_26; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_27; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_28; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_29; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_30; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_31; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_32; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_33; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_34; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_35; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_36; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_37; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_38; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_39; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_40; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_41; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_42; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_43; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_44; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_45; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_46; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_47; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_48; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_49; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_50; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_51; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_52; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_53; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_54; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_55; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_56; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_57; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_58; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_59; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_60; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_61; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_62; // @[:@6.4]
  wire         io_sc2mac_dat_a_bits_mask_63; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_0; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_1; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_2; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_3; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_4; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_5; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_6; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_7; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_8; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_9; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_10; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_11; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_12; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_13; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_14; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_15; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_16; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_17; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_18; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_19; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_20; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_21; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_22; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_23; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_24; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_25; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_26; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_27; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_28; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_29; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_30; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_31; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_32; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_33; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_34; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_35; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_36; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_37; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_38; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_39; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_40; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_41; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_42; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_43; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_44; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_45; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_46; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_47; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_48; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_49; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_50; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_51; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_52; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_53; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_54; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_55; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_56; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_57; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_58; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_59; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_60; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_61; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_62; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_a_bits_data_63; // @[:@6.4]
  wire [8:0]   io_sc2mac_dat_a_bits_pd; // @[:@6.4]
  wire         io_sc2mac_dat_b_valid; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_0; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_1; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_2; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_3; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_4; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_5; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_6; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_7; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_8; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_9; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_10; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_11; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_12; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_13; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_14; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_15; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_16; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_17; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_18; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_19; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_20; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_21; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_22; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_23; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_24; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_25; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_26; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_27; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_28; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_29; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_30; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_31; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_32; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_33; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_34; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_35; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_36; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_37; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_38; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_39; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_40; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_41; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_42; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_43; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_44; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_45; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_46; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_47; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_48; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_49; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_50; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_51; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_52; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_53; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_54; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_55; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_56; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_57; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_58; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_59; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_60; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_61; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_62; // @[:@6.4]
  wire         io_sc2mac_dat_b_bits_mask_63; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_0; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_1; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_2; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_3; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_4; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_5; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_6; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_7; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_8; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_9; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_10; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_11; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_12; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_13; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_14; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_15; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_16; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_17; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_18; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_19; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_20; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_21; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_22; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_23; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_24; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_25; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_26; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_27; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_28; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_29; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_30; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_31; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_32; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_33; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_34; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_35; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_36; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_37; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_38; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_39; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_40; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_41; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_42; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_43; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_44; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_45; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_46; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_47; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_48; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_49; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_50; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_51; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_52; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_53; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_54; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_55; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_56; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_57; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_58; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_59; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_60; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_61; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_62; // @[:@6.4]
  wire [7:0]   io_sc2mac_dat_b_bits_data_63; // @[:@6.4]
  wire [8:0]   io_sc2mac_dat_b_bits_pd; // @[:@6.4]
  wire          io_reg2dp_op_en; // @[:@6.4]
  wire          io_reg2dp_conv_mode; // @[:@6.4]
  wire  [4:0]   io_reg2dp_batches; // @[:@6.4]
  wire  [1:0]   io_reg2dp_proc_precision; // @[:@6.4]
  wire          io_reg2dp_datain_format; // @[:@6.4]
  wire          io_reg2dp_skip_data_rls; // @[:@6.4]
  wire  [12:0]  io_reg2dp_datain_channel_ext; // @[:@6.4]
  wire  [12:0]  io_reg2dp_datain_height_ext; // @[:@6.4]
  wire  [12:0]  io_reg2dp_datain_width_ext; // @[:@6.4]
  wire  [1:0]   io_reg2dp_y_extension; // @[:@6.4]
  wire  [12:0]  io_reg2dp_weight_channel_ext; // @[:@6.4]
  wire  [13:0]  io_reg2dp_entries; // @[:@6.4]
  wire  [12:0]  io_reg2dp_dataout_width; // @[:@6.4]
  wire  [11:0]  io_reg2dp_rls_slices; // @[:@6.4]
  wire  [2:0]   io_reg2dp_conv_x_stride_ext; // @[:@6.4]
  wire  [2:0]   io_reg2dp_conv_y_stride_ext; // @[:@6.4]
  wire  [4:0]   io_reg2dp_x_dilation_ext; // @[:@6.4]
  wire  [4:0]   io_reg2dp_y_dilation_ext; // @[:@6.4]
  wire  [4:0]   io_reg2dp_pad_left; // @[:@6.4]
  wire  [4:0]   io_reg2dp_pad_top; // @[:@6.4]
  wire  [15:0]  io_reg2dp_pad_value; // @[:@6.4]
  wire  [4:0]   io_reg2dp_data_bank; // @[:@6.4]
  wire  [1:0]   io_reg2dp_pra_truncate; // @[:@6.4]
  wire         io_slcg_wg_en; // @[:@6.4]

  assign          clock=nvdla_wg_clk;//
  assign          reset=nvdla_core_rstn;
  assign          io_nvdla_core_clk=nvdla_core_clk;
  assign          io_nvdla_core_ng_clk=nvdla_core_ng_clk;
  assign          io_sc_state=sc_state;
  assign          io_sg2dl_pd_valid=sg2dl_pvld; 
  assign          io_sg2dl_pd_bits=sg2dl_pd;
  assign          io_sg2dl_reuse_rls=sg2dl_reuse_rls;
  assign          io_cdma2sc_dat_updt_valid=cdma2sc_dat_updt; 
  assign          io_cdma2sc_dat_updt_bits_entries=cdma2sc_dat_entries;
  assign          io_cdma2sc_dat_updt_bits_slices=cdma2sc_dat_slices;
  assign          io_sc2cdma_dat_pending_req=sc2cdma_dat_pending_req;
  assign          io_sc2cdma_dat_updt_valid=sc2cdma_dat_updt;
  assign          io_sc2cdma_dat_updt_bits_entries=sc2cdma_dat_entries;
  assign          io_sc2cdma_dat_updt_bits_slices=sc2cdma_dat_slices;
  assign          io_sc2buf_dat_rd_addr_valid=sc2buf_dat_rd_en;
  assign          io_sc2buf_dat_rd_addr_bits=sc2buf_dat_rd_addr;
  assign          io_sc2buf_dat_rd_data_valid=sc2buf_dat_rd_valid;
  assign          io_sc2buf_dat_rd_data_bits=sc2buf_dat_rd_data;
  assign          io_sc2mac_dat_a_valid=sc2mac_dat_a_pvld; 
 assign  io_sc2mac_dat_bits_mask_0=sc2mac_dat_a_mask[0];
assign  io_sc2mac_dat_bits_mask_1=sc2mac_dat_a_mask[1];
assign  io_sc2mac_dat_bits_mask_2=sc2mac_dat_a_mask[2];
assign  io_sc2mac_dat_bits_mask_3=sc2mac_dat_a_mask[3];
assign  io_sc2mac_dat_bits_mask_4=sc2mac_dat_a_mask[4];
assign  io_sc2mac_dat_bits_mask_5=sc2mac_dat_a_mask[5];
assign  io_sc2mac_dat_bits_mask_6=sc2mac_dat_a_mask[6];
assign  io_sc2mac_dat_bits_mask_7=sc2mac_dat_a_mask[7];
assign  io_sc2mac_dat_bits_mask_8=sc2mac_dat_a_mask[8];
assign  io_sc2mac_dat_bits_mask_9=sc2mac_dat_a_mask[9];
assign  io_sc2mac_dat_bits_mask_10=sc2mac_dat_a_mask[10];
assign  io_sc2mac_dat_bits_mask_11=sc2mac_dat_a_mask[11];
assign  io_sc2mac_dat_bits_mask_12=sc2mac_dat_a_mask[12];
assign  io_sc2mac_dat_bits_mask_13=sc2mac_dat_a_mask[13];
assign  io_sc2mac_dat_bits_mask_14=sc2mac_dat_a_mask[14];
assign  io_sc2mac_dat_bits_mask_15=sc2mac_dat_a_mask[15];
assign  io_sc2mac_dat_bits_mask_16=sc2mac_dat_a_mask[16];
assign  io_sc2mac_dat_bits_mask_17=sc2mac_dat_a_mask[17];
assign  io_sc2mac_dat_bits_mask_18=sc2mac_dat_a_mask[18];
assign  io_sc2mac_dat_bits_mask_19=sc2mac_dat_a_mask[19];
assign  io_sc2mac_dat_bits_mask_20=sc2mac_dat_a_mask[20];
assign  io_sc2mac_dat_bits_mask_21=sc2mac_dat_a_mask[21];
assign  io_sc2mac_dat_bits_mask_22=sc2mac_dat_a_mask[22];
assign  io_sc2mac_dat_bits_mask_23=sc2mac_dat_a_mask[23];
assign  io_sc2mac_dat_bits_mask_24=sc2mac_dat_a_mask[24];
assign  io_sc2mac_dat_bits_mask_25=sc2mac_dat_a_mask[25];
assign  io_sc2mac_dat_bits_mask_26=sc2mac_dat_a_mask[26];
assign  io_sc2mac_dat_bits_mask_27=sc2mac_dat_a_mask[27];
assign  io_sc2mac_dat_bits_mask_28=sc2mac_dat_a_mask[28];
assign  io_sc2mac_dat_bits_mask_29=sc2mac_dat_a_mask[29];
assign  io_sc2mac_dat_bits_mask_30=sc2mac_dat_a_mask[30];
assign  io_sc2mac_dat_bits_mask_31=sc2mac_dat_a_mask[31];
assign  io_sc2mac_dat_bits_mask_32=sc2mac_dat_a_mask[32];
assign  io_sc2mac_dat_bits_mask_33=sc2mac_dat_a_mask[33];
assign  io_sc2mac_dat_bits_mask_34=sc2mac_dat_a_mask[34];
assign  io_sc2mac_dat_bits_mask_35=sc2mac_dat_a_mask[35];
assign  io_sc2mac_dat_bits_mask_36=sc2mac_dat_a_mask[36];
assign  io_sc2mac_dat_bits_mask_37=sc2mac_dat_a_mask[37];
assign  io_sc2mac_dat_bits_mask_38=sc2mac_dat_a_mask[38];
assign  io_sc2mac_dat_bits_mask_39=sc2mac_dat_a_mask[39];
assign  io_sc2mac_dat_bits_mask_40=sc2mac_dat_a_mask[40];
assign  io_sc2mac_dat_bits_mask_41=sc2mac_dat_a_mask[41];
assign  io_sc2mac_dat_bits_mask_42=sc2mac_dat_a_mask[42];
assign  io_sc2mac_dat_bits_mask_43=sc2mac_dat_a_mask[43];
assign  io_sc2mac_dat_bits_mask_44=sc2mac_dat_a_mask[44];
assign  io_sc2mac_dat_bits_mask_45=sc2mac_dat_a_mask[45];
assign  io_sc2mac_dat_bits_mask_46=sc2mac_dat_a_mask[46];
assign  io_sc2mac_dat_bits_mask_47=sc2mac_dat_a_mask[47];
assign  io_sc2mac_dat_bits_mask_48=sc2mac_dat_a_mask[48];
assign  io_sc2mac_dat_bits_mask_49=sc2mac_dat_a_mask[49];
assign  io_sc2mac_dat_bits_mask_50=sc2mac_dat_a_mask[50];
assign  io_sc2mac_dat_bits_mask_51=sc2mac_dat_a_mask[51];
assign  io_sc2mac_dat_bits_mask_52=sc2mac_dat_a_mask[52];
assign  io_sc2mac_dat_bits_mask_53=sc2mac_dat_a_mask[53];
assign  io_sc2mac_dat_bits_mask_54=sc2mac_dat_a_mask[54];
assign  io_sc2mac_dat_bits_mask_55=sc2mac_dat_a_mask[55];
assign  io_sc2mac_dat_bits_mask_56=sc2mac_dat_a_mask[56];
assign  io_sc2mac_dat_bits_mask_57=sc2mac_dat_a_mask[57];
assign  io_sc2mac_dat_bits_mask_58=sc2mac_dat_a_mask[58];
assign  io_sc2mac_dat_bits_mask_59=sc2mac_dat_a_mask[59];
assign  io_sc2mac_dat_bits_mask_60=sc2mac_dat_a_mask[60];
assign  io_sc2mac_dat_bits_mask_61=sc2mac_dat_a_mask[61];
assign  io_sc2mac_dat_bits_mask_62=sc2mac_dat_a_mask[62];
assign  io_sc2mac_dat_bits_mask_63=sc2mac_dat_a_mask[63];
assign  io_sc2mac_dat_a_bits_data_0=sc2mac_dat_a_data0;
assign  io_sc2mac_dat_a_bits_data_1=sc2mac_dat_a_data1;
assign  io_sc2mac_dat_a_bits_data_2=sc2mac_dat_a_data2;
assign  io_sc2mac_dat_a_bits_data_3=sc2mac_dat_a_data3;
assign  io_sc2mac_dat_a_bits_data_4=sc2mac_dat_a_data4;
assign  io_sc2mac_dat_a_bits_data_5=sc2mac_dat_a_data5;
assign  io_sc2mac_dat_a_bits_data_6=sc2mac_dat_a_data6;
assign  io_sc2mac_dat_a_bits_data_7=sc2mac_dat_a_data7;
assign  io_sc2mac_dat_a_bits_data_8=sc2mac_dat_a_data8;
assign  io_sc2mac_dat_a_bits_data_9=sc2mac_dat_a_data9;
assign  io_sc2mac_dat_a_bits_data_10=sc2mac_dat_a_data10;
assign  io_sc2mac_dat_a_bits_data_11=sc2mac_dat_a_data11;
assign  io_sc2mac_dat_a_bits_data_12=sc2mac_dat_a_data12;
assign  io_sc2mac_dat_a_bits_data_13=sc2mac_dat_a_data13;
assign  io_sc2mac_dat_a_bits_data_14=sc2mac_dat_a_data14;
assign  io_sc2mac_dat_a_bits_data_15=sc2mac_dat_a_data15;
assign  io_sc2mac_dat_a_bits_data_16=sc2mac_dat_a_data16;
assign  io_sc2mac_dat_a_bits_data_17=sc2mac_dat_a_data17;
assign  io_sc2mac_dat_a_bits_data_18=sc2mac_dat_a_data18;
assign  io_sc2mac_dat_a_bits_data_19=sc2mac_dat_a_data19;
assign  io_sc2mac_dat_a_bits_data_20=sc2mac_dat_a_data20;
assign  io_sc2mac_dat_a_bits_data_21=sc2mac_dat_a_data21;
assign  io_sc2mac_dat_a_bits_data_22=sc2mac_dat_a_data22;
assign  io_sc2mac_dat_a_bits_data_23=sc2mac_dat_a_data23;
assign  io_sc2mac_dat_a_bits_data_24=sc2mac_dat_a_data24;
assign  io_sc2mac_dat_a_bits_data_25=sc2mac_dat_a_data25;
assign  io_sc2mac_dat_a_bits_data_26=sc2mac_dat_a_data26;
assign  io_sc2mac_dat_a_bits_data_27=sc2mac_dat_a_data27;
assign  io_sc2mac_dat_a_bits_data_28=sc2mac_dat_a_data28;
assign  io_sc2mac_dat_a_bits_data_29=sc2mac_dat_a_data29;
assign  io_sc2mac_dat_a_bits_data_30=sc2mac_dat_a_data30;
assign  io_sc2mac_dat_a_bits_data_31=sc2mac_dat_a_data31;
assign  io_sc2mac_dat_a_bits_data_32=sc2mac_dat_a_data32;
assign  io_sc2mac_dat_a_bits_data_33=sc2mac_dat_a_data33;
assign  io_sc2mac_dat_a_bits_data_34=sc2mac_dat_a_data34;
assign  io_sc2mac_dat_a_bits_data_35=sc2mac_dat_a_data35;
assign  io_sc2mac_dat_a_bits_data_36=sc2mac_dat_a_data36;
assign  io_sc2mac_dat_a_bits_data_37=sc2mac_dat_a_data37;
assign  io_sc2mac_dat_a_bits_data_38=sc2mac_dat_a_data38;
assign  io_sc2mac_dat_a_bits_data_39=sc2mac_dat_a_data39;
assign  io_sc2mac_dat_a_bits_data_40=sc2mac_dat_a_data40;
assign  io_sc2mac_dat_a_bits_data_41=sc2mac_dat_a_data41;
assign  io_sc2mac_dat_a_bits_data_42=sc2mac_dat_a_data42;
assign  io_sc2mac_dat_a_bits_data_43=sc2mac_dat_a_data43;
assign  io_sc2mac_dat_a_bits_data_44=sc2mac_dat_a_data44;
assign  io_sc2mac_dat_a_bits_data_45=sc2mac_dat_a_data45;
assign  io_sc2mac_dat_a_bits_data_46=sc2mac_dat_a_data46;
assign  io_sc2mac_dat_a_bits_data_47=sc2mac_dat_a_data47;
assign  io_sc2mac_dat_a_bits_data_48=sc2mac_dat_a_data48;
assign  io_sc2mac_dat_a_bits_data_49=sc2mac_dat_a_data49;
assign  io_sc2mac_dat_a_bits_data_50=sc2mac_dat_a_data50;
assign  io_sc2mac_dat_a_bits_data_51=sc2mac_dat_a_data51;
assign  io_sc2mac_dat_a_bits_data_52=sc2mac_dat_a_data52;
assign  io_sc2mac_dat_a_bits_data_53=sc2mac_dat_a_data53;
assign  io_sc2mac_dat_a_bits_data_54=sc2mac_dat_a_data54;
assign  io_sc2mac_dat_a_bits_data_55=sc2mac_dat_a_data55;
assign  io_sc2mac_dat_a_bits_data_56=sc2mac_dat_a_data56;
assign  io_sc2mac_dat_a_bits_data_57=sc2mac_dat_a_data57;
assign  io_sc2mac_dat_a_bits_data_58=sc2mac_dat_a_data58;
assign  io_sc2mac_dat_a_bits_data_59=sc2mac_dat_a_data59;
assign  io_sc2mac_dat_a_bits_data_60=sc2mac_dat_a_data60;
assign  io_sc2mac_dat_a_bits_data_61=sc2mac_dat_a_data61;
assign  io_sc2mac_dat_a_bits_data_62=sc2mac_dat_a_data62;
assign  io_sc2mac_dat_a_bits_data_63=sc2mac_dat_a_data63;
assign io_sc2mac_dat_a_bits_pd=sc2mac_dat_a_pd;
assign    io_sc2mac_dat_b_valid=sc2mac_dat_b_pvld; 
assign  io_sc2mac_dat_b_bits_mask_0=sc2mac_dat_b_mask[0];
assign  io_sc2mac_dat_b_bits_mask_1=sc2mac_dat_b_mask[1];
assign  io_sc2mac_dat_b_bits_mask_2=sc2mac_dat_b_mask[2];
assign  io_sc2mac_dat_b_bits_mask_3=sc2mac_dat_b_mask[3];
assign  io_sc2mac_dat_b_bits_mask_4=sc2mac_dat_b_mask[4];
assign  io_sc2mac_dat_b_bits_mask_5=sc2mac_dat_b_mask[5];
assign  io_sc2mac_dat_b_bits_mask_6=sc2mac_dat_b_mask[6];
assign  io_sc2mac_dat_b_bits_mask_7=sc2mac_dat_b_mask[7];
assign  io_sc2mac_dat_b_bits_mask_8=sc2mac_dat_b_mask[8];
assign  io_sc2mac_dat_b_bits_mask_9=sc2mac_dat_b_mask[9];
assign  io_sc2mac_dat_b_bits_mask_10=sc2mac_dat_b_mask[10];
assign  io_sc2mac_dat_b_bits_mask_11=sc2mac_dat_b_mask[11];
assign  io_sc2mac_dat_b_bits_mask_12=sc2mac_dat_b_mask[12];
assign  io_sc2mac_dat_b_bits_mask_13=sc2mac_dat_b_mask[13];
assign  io_sc2mac_dat_b_bits_mask_14=sc2mac_dat_b_mask[14];
assign  io_sc2mac_dat_b_bits_mask_15=sc2mac_dat_b_mask[15];
assign  io_sc2mac_dat_b_bits_mask_16=sc2mac_dat_b_mask[16];
assign  io_sc2mac_dat_b_bits_mask_17=sc2mac_dat_b_mask[17];
assign  io_sc2mac_dat_b_bits_mask_18=sc2mac_dat_b_mask[18];
assign  io_sc2mac_dat_b_bits_mask_19=sc2mac_dat_b_mask[19];
assign  io_sc2mac_dat_b_bits_mask_20=sc2mac_dat_b_mask[20];
assign  io_sc2mac_dat_b_bits_mask_21=sc2mac_dat_b_mask[21];
assign  io_sc2mac_dat_b_bits_mask_22=sc2mac_dat_b_mask[22];
assign  io_sc2mac_dat_b_bits_mask_23=sc2mac_dat_b_mask[23];
assign  io_sc2mac_dat_b_bits_mask_24=sc2mac_dat_b_mask[24];
assign  io_sc2mac_dat_b_bits_mask_25=sc2mac_dat_b_mask[25];
assign  io_sc2mac_dat_b_bits_mask_26=sc2mac_dat_b_mask[26];
assign  io_sc2mac_dat_b_bits_mask_27=sc2mac_dat_b_mask[27];
assign  io_sc2mac_dat_b_bits_mask_28=sc2mac_dat_b_mask[28];
assign  io_sc2mac_dat_b_bits_mask_29=sc2mac_dat_b_mask[29];
assign  io_sc2mac_dat_b_bits_mask_30=sc2mac_dat_b_mask[30];
assign  io_sc2mac_dat_b_bits_mask_31=sc2mac_dat_b_mask[31];
assign  io_sc2mac_dat_b_bits_mask_32=sc2mac_dat_b_mask[32];
assign  io_sc2mac_dat_b_bits_mask_33=sc2mac_dat_b_mask[33];
assign  io_sc2mac_dat_b_bits_mask_34=sc2mac_dat_b_mask[34];
assign  io_sc2mac_dat_b_bits_mask_35=sc2mac_dat_b_mask[35];
assign  io_sc2mac_dat_b_bits_mask_36=sc2mac_dat_b_mask[36];
assign  io_sc2mac_dat_b_bits_mask_37=sc2mac_dat_b_mask[37];
assign  io_sc2mac_dat_b_bits_mask_38=sc2mac_dat_b_mask[38];
assign  io_sc2mac_dat_b_bits_mask_39=sc2mac_dat_b_mask[39];
assign  io_sc2mac_dat_b_bits_mask_40=sc2mac_dat_b_mask[40];
assign  io_sc2mac_dat_b_bits_mask_41=sc2mac_dat_b_mask[41];
assign  io_sc2mac_dat_b_bits_mask_42=sc2mac_dat_b_mask[42];
assign  io_sc2mac_dat_b_bits_mask_43=sc2mac_dat_b_mask[43];
assign  io_sc2mac_dat_b_bits_mask_44=sc2mac_dat_b_mask[44];
assign  io_sc2mac_dat_b_bits_mask_45=sc2mac_dat_b_mask[45];
assign  io_sc2mac_dat_b_bits_mask_46=sc2mac_dat_b_mask[46];
assign  io_sc2mac_dat_b_bits_mask_47=sc2mac_dat_b_mask[47];
assign  io_sc2mac_dat_b_bits_mask_48=sc2mac_dat_b_mask[48];
assign  io_sc2mac_dat_b_bits_mask_49=sc2mac_dat_b_mask[49];
assign  io_sc2mac_dat_b_bits_mask_50=sc2mac_dat_b_mask[50];
assign  io_sc2mac_dat_b_bits_mask_51=sc2mac_dat_b_mask[51];
assign  io_sc2mac_dat_b_bits_mask_52=sc2mac_dat_b_mask[52];
assign  io_sc2mac_dat_b_bits_mask_53=sc2mac_dat_b_mask[53];
assign  io_sc2mac_dat_b_bits_mask_54=sc2mac_dat_b_mask[54];
assign  io_sc2mac_dat_b_bits_mask_55=sc2mac_dat_b_mask[55];
assign  io_sc2mac_dat_b_bits_mask_56=sc2mac_dat_b_mask[56];
assign  io_sc2mac_dat_b_bits_mask_57=sc2mac_dat_b_mask[57];
assign  io_sc2mac_dat_b_bits_mask_58=sc2mac_dat_b_mask[58];
assign  io_sc2mac_dat_b_bits_mask_59=sc2mac_dat_b_mask[59];
assign  io_sc2mac_dat_b_bits_mask_60=sc2mac_dat_b_mask[60];
assign  io_sc2mac_dat_b_bits_mask_61=sc2mac_dat_b_mask[61];
assign  io_sc2mac_dat_b_bits_mask_62=sc2mac_dat_b_mask[62];
assign  io_sc2mac_dat_b_bits_mask_63=sc2mac_dat_b_mask[63];
assign  io_sc2mac_dat_b_bits_data_0=sc2mac_dat_b_data0;
assign  io_sc2mac_dat_b_bits_data_1=sc2mac_dat_b_data1;
assign  io_sc2mac_dat_b_bits_data_2=sc2mac_dat_b_data2;
assign  io_sc2mac_dat_b_bits_data_3=sc2mac_dat_b_data3;
assign  io_sc2mac_dat_b_bits_data_4=sc2mac_dat_b_data4;
assign  io_sc2mac_dat_b_bits_data_5=sc2mac_dat_b_data5;
assign  io_sc2mac_dat_b_bits_data_6=sc2mac_dat_b_data6;
assign  io_sc2mac_dat_b_bits_data_7=sc2mac_dat_b_data7;
assign  io_sc2mac_dat_b_bits_data_8=sc2mac_dat_b_data8;
assign  io_sc2mac_dat_b_bits_data_9=sc2mac_dat_b_data9;
assign  io_sc2mac_dat_b_bits_data_10=sc2mac_dat_b_data10;
assign  io_sc2mac_dat_b_bits_data_11=sc2mac_dat_b_data11;
assign  io_sc2mac_dat_b_bits_data_12=sc2mac_dat_b_data12;
assign  io_sc2mac_dat_b_bits_data_13=sc2mac_dat_b_data13;
assign  io_sc2mac_dat_b_bits_data_14=sc2mac_dat_b_data14;
assign  io_sc2mac_dat_b_bits_data_15=sc2mac_dat_b_data15;
assign  io_sc2mac_dat_b_bits_data_16=sc2mac_dat_b_data16;
assign  io_sc2mac_dat_b_bits_data_17=sc2mac_dat_b_data17;
assign  io_sc2mac_dat_b_bits_data_18=sc2mac_dat_b_data18;
assign  io_sc2mac_dat_b_bits_data_19=sc2mac_dat_b_data19;
assign  io_sc2mac_dat_b_bits_data_20=sc2mac_dat_b_data20;
assign  io_sc2mac_dat_b_bits_data_21=sc2mac_dat_b_data21;
assign  io_sc2mac_dat_b_bits_data_22=sc2mac_dat_b_data22;
assign  io_sc2mac_dat_b_bits_data_23=sc2mac_dat_b_data23;
assign  io_sc2mac_dat_b_bits_data_24=sc2mac_dat_b_data24;
assign  io_sc2mac_dat_b_bits_data_25=sc2mac_dat_b_data25;
assign  io_sc2mac_dat_b_bits_data_26=sc2mac_dat_b_data26;
assign  io_sc2mac_dat_b_bits_data_27=sc2mac_dat_b_data27;
assign  io_sc2mac_dat_b_bits_data_28=sc2mac_dat_b_data28;
assign  io_sc2mac_dat_b_bits_data_29=sc2mac_dat_b_data29;
assign  io_sc2mac_dat_b_bits_data_30=sc2mac_dat_b_data30;
assign  io_sc2mac_dat_b_bits_data_31=sc2mac_dat_b_data31;
assign  io_sc2mac_dat_b_bits_data_32=sc2mac_dat_b_data32;
assign  io_sc2mac_dat_b_bits_data_33=sc2mac_dat_b_data33;
assign  io_sc2mac_dat_b_bits_data_34=sc2mac_dat_b_data34;
assign  io_sc2mac_dat_b_bits_data_35=sc2mac_dat_b_data35;
assign  io_sc2mac_dat_b_bits_data_36=sc2mac_dat_b_data36;
assign  io_sc2mac_dat_b_bits_data_37=sc2mac_dat_b_data37;
assign  io_sc2mac_dat_b_bits_data_38=sc2mac_dat_b_data38;
assign  io_sc2mac_dat_b_bits_data_39=sc2mac_dat_b_data39;
assign  io_sc2mac_dat_b_bits_data_40=sc2mac_dat_b_data40;
assign  io_sc2mac_dat_b_bits_data_41=sc2mac_dat_b_data41;
assign  io_sc2mac_dat_b_bits_data_42=sc2mac_dat_b_data42;
assign  io_sc2mac_dat_b_bits_data_43=sc2mac_dat_b_data43;
assign  io_sc2mac_dat_b_bits_data_44=sc2mac_dat_b_data44;
assign  io_sc2mac_dat_b_bits_data_45=sc2mac_dat_b_data45;
assign  io_sc2mac_dat_b_bits_data_46=sc2mac_dat_b_data46;
assign  io_sc2mac_dat_b_bits_data_47=sc2mac_dat_b_data47;
assign  io_sc2mac_dat_b_bits_data_48=sc2mac_dat_b_data48;
assign  io_sc2mac_dat_b_bits_data_49=sc2mac_dat_b_data49;
assign  io_sc2mac_dat_b_bits_data_50=sc2mac_dat_b_data50;
assign  io_sc2mac_dat_b_bits_data_51=sc2mac_dat_b_data51;
assign  io_sc2mac_dat_b_bits_data_52=sc2mac_dat_b_data52;
assign  io_sc2mac_dat_b_bits_data_53=sc2mac_dat_b_data53;
assign  io_sc2mac_dat_b_bits_data_54=sc2mac_dat_b_data54;
assign  io_sc2mac_dat_b_bits_data_55=sc2mac_dat_b_data55;
assign  io_sc2mac_dat_b_bits_data_56=sc2mac_dat_b_data56;
assign  io_sc2mac_dat_b_bits_data_57=sc2mac_dat_b_data57;
assign  io_sc2mac_dat_b_bits_data_58=sc2mac_dat_b_data58;
assign  io_sc2mac_dat_b_bits_data_59=sc2mac_dat_b_data59;
assign  io_sc2mac_dat_b_bits_data_60=sc2mac_dat_b_data60;
assign  io_sc2mac_dat_b_bits_data_61=sc2mac_dat_b_data61;
assign  io_sc2mac_dat_b_bits_data_62=sc2mac_dat_b_data62;
assign  io_sc2mac_dat_b_bits_data_63=sc2mac_dat_b_data63;
  assign io_sc2mac_dat_b_bits_pd=sc2mac_dat_b_pd;
  assign  io_reg2dp_op_en=reg2dp_op_en;
  assign   io_reg2dp_conv_mode=reg2dp_conv_mode;
  assign   io_reg2dp_batches=reg2dp_batches;
  assign   io_reg2dp_proc_precision=reg2dp_proc_precision;
  assign   io_reg2dp_datain_format=reg2dp_datain_format;
  assign   io_reg2dp_skip_data_rls=reg2dp_skip_data_rls;
  assign   io_reg2dp_datain_channel_ext=reg2dp_datain_channel_ext;
  assign   io_reg2dp_datain_height_ex=reg2dp_datain_height_ext;
  assign   io_reg2dp_datain_width_ext=reg2dp_datain_width_ext;
  assign   io_reg2dp_y_extension=reg2dp_y_extension;
  assign   io_reg2dp_weight_channel_ext=reg2dp_weight_channel_ext;
  assign   io_reg2dp_entries=reg2dp_entries;
  assign   io_reg2dp_dataout_width=reg2dp_dataout_width;
  assign   io_reg2dp_rls_slices=reg2dp_rls_slices;
  assign   io_reg2dp_conv_x_stride_ext=reg2dp_conv_x_stride_ext;
  assign   io_reg2dp_conv_y_stride_ext=reg2dp_conv_y_stride_ext;
  assign   io_reg2dp_x_dilation_ext=reg2dp_x_dilation_ext;
  assign   io_reg2dp_y_dilation_ext=reg2dp_y_dilation_ext;
  assign   io_reg2dp_pad_left=reg2dp_pad_left;
  assign   io_reg2dp_pad_top=reg2dp_pad_top;
  assign   io_reg2dp_pad_value=reg2dp_pad_value;
  assign   io_reg2dp_data_bank=reg2dp_data_bank;
  assign   io_reg2dp_pra_truncate=reg2dp_pra_truncate;
  assign   io_slcg_wg_en=slcg_wg_en;

NV_soDLA_CSC_dl NV_soDLA_CSC_dl(
.clock               (clock),
.reset               (reset),
.io_nvdla_core_clk               (io_nvdla_core_clk),
.io_nvdla_core_ng_clk               (io_nvdla_core_ng_clk),
.io_sc_state               (io_sc_state),
.io_sg2dl_pd_valid               (io_sg2dl_pd_valid),
.io_sg2dl_pd_bits               (io_sg2dl_pd_bits),
.io_sg2dl_reuse_rls               (io_sg2dl_reuse_rls),
.io_cdma2sc_dat_updt_valid               (io_cdma2sc_dat_updt_valid),
.io_cdma2sc_dat_updt_bits_entries               (io_cdma2sc_dat_updt_bits_entries),
.io_cdma2sc_dat_updt_bits_slices               (io_cdma2sc_dat_updt_bits_slices),
.io_sc2cdma_dat_pending_req               (io_sc2cdma_dat_pending_req),
.io_sc2cdma_dat_updt_valid               (io_sc2cdma_dat_updt_valid),
.io_sc2cdma_dat_updt_bits_entries               (io_sc2cdma_dat_updt_bits_entries),
.io_sc2cdma_dat_updt_bits_slices               (io_sc2cdma_dat_updt_bits_slices),
.io_sc2buf_dat_rd_addr_valid               (io_sc2buf_dat_rd_addr_valid),
.io_sc2buf_dat_rd_addr_bits               (io_sc2buf_dat_rd_addr_bits),
.io_sc2buf_dat_rd_data_valid               (io_sc2buf_dat_rd_data_valid),
.io_sc2buf_dat_rd_data_bits               (io_sc2buf_dat_rd_data_bits),
.io_sc2mac_dat_a_valid               (io_sc2mac_dat_a_valid),
.io_sc2mac_dat_a_bits_mask_0               (io_sc2mac_dat_a_bits_mask_0),
.io_sc2mac_dat_a_bits_mask_1               (io_sc2mac_dat_a_bits_mask_1),
.io_sc2mac_dat_a_bits_mask_2               (io_sc2mac_dat_a_bits_mask_2),
.io_sc2mac_dat_a_bits_mask_3               (io_sc2mac_dat_a_bits_mask_3),
.io_sc2mac_dat_a_bits_mask_4               (io_sc2mac_dat_a_bits_mask_4),
.io_sc2mac_dat_a_bits_mask_5               (io_sc2mac_dat_a_bits_mask_5),
.io_sc2mac_dat_a_bits_mask_6               (io_sc2mac_dat_a_bits_mask_6),
.io_sc2mac_dat_a_bits_mask_7               (io_sc2mac_dat_a_bits_mask_7),
.io_sc2mac_dat_a_bits_mask_8               (io_sc2mac_dat_a_bits_mask_8),
.io_sc2mac_dat_a_bits_mask_9               (io_sc2mac_dat_a_bits_mask_9),
.io_sc2mac_dat_a_bits_mask_10               (io_sc2mac_dat_a_bits_mask_10),
.io_sc2mac_dat_a_bits_mask_11               (io_sc2mac_dat_a_bits_mask_11),
.io_sc2mac_dat_a_bits_mask_12               (io_sc2mac_dat_a_bits_mask_12),
.io_sc2mac_dat_a_bits_mask_13               (io_sc2mac_dat_a_bits_mask_13),
.io_sc2mac_dat_a_bits_mask_14               (io_sc2mac_dat_a_bits_mask_14),
.io_sc2mac_dat_a_bits_mask_15               (io_sc2mac_dat_a_bits_mask_15),
.io_sc2mac_dat_a_bits_mask_16               (io_sc2mac_dat_a_bits_mask_16),
.io_sc2mac_dat_a_bits_mask_17               (io_sc2mac_dat_a_bits_mask_17),
.io_sc2mac_dat_a_bits_mask_18               (io_sc2mac_dat_a_bits_mask_18),
.io_sc2mac_dat_a_bits_mask_19               (io_sc2mac_dat_a_bits_mask_19),
.io_sc2mac_dat_a_bits_mask_20               (io_sc2mac_dat_a_bits_mask_20),
.io_sc2mac_dat_a_bits_mask_21               (io_sc2mac_dat_a_bits_mask_21),
.io_sc2mac_dat_a_bits_mask_22               (io_sc2mac_dat_a_bits_mask_22),
.io_sc2mac_dat_a_bits_mask_23               (io_sc2mac_dat_a_bits_mask_23),
.io_sc2mac_dat_a_bits_mask_24               (io_sc2mac_dat_a_bits_mask_24),
.io_sc2mac_dat_a_bits_mask_25               (io_sc2mac_dat_a_bits_mask_25),
.io_sc2mac_dat_a_bits_mask_26               (io_sc2mac_dat_a_bits_mask_26),
.io_sc2mac_dat_a_bits_mask_27               (io_sc2mac_dat_a_bits_mask_27),
.io_sc2mac_dat_a_bits_mask_28               (io_sc2mac_dat_a_bits_mask_28),
.io_sc2mac_dat_a_bits_mask_29               (io_sc2mac_dat_a_bits_mask_29),
.io_sc2mac_dat_a_bits_mask_30               (io_sc2mac_dat_a_bits_mask_30),
.io_sc2mac_dat_a_bits_mask_31               (io_sc2mac_dat_a_bits_mask_31),
.io_sc2mac_dat_a_bits_mask_32               (io_sc2mac_dat_a_bits_mask_32),
.io_sc2mac_dat_a_bits_mask_33               (io_sc2mac_dat_a_bits_mask_33),
.io_sc2mac_dat_a_bits_mask_34               (io_sc2mac_dat_a_bits_mask_34),
.io_sc2mac_dat_a_bits_mask_35               (io_sc2mac_dat_a_bits_mask_35),
.io_sc2mac_dat_a_bits_mask_36               (io_sc2mac_dat_a_bits_mask_36),
.io_sc2mac_dat_a_bits_mask_37               (io_sc2mac_dat_a_bits_mask_37),
.io_sc2mac_dat_a_bits_mask_38               (io_sc2mac_dat_a_bits_mask_38),
.io_sc2mac_dat_a_bits_mask_39               (io_sc2mac_dat_a_bits_mask_39),
.io_sc2mac_dat_a_bits_mask_40               (io_sc2mac_dat_a_bits_mask_40),
.io_sc2mac_dat_a_bits_mask_41               (io_sc2mac_dat_a_bits_mask_41),
.io_sc2mac_dat_a_bits_mask_42               (io_sc2mac_dat_a_bits_mask_42),
.io_sc2mac_dat_a_bits_mask_43               (io_sc2mac_dat_a_bits_mask_43),
.io_sc2mac_dat_a_bits_mask_44               (io_sc2mac_dat_a_bits_mask_44),
.io_sc2mac_dat_a_bits_mask_45               (io_sc2mac_dat_a_bits_mask_45),
.io_sc2mac_dat_a_bits_mask_46               (io_sc2mac_dat_a_bits_mask_46),
.io_sc2mac_dat_a_bits_mask_47               (io_sc2mac_dat_a_bits_mask_47),
.io_sc2mac_dat_a_bits_mask_48               (io_sc2mac_dat_a_bits_mask_48),
.io_sc2mac_dat_a_bits_mask_49               (io_sc2mac_dat_a_bits_mask_49),
.io_sc2mac_dat_a_bits_mask_50               (io_sc2mac_dat_a_bits_mask_50),
.io_sc2mac_dat_a_bits_mask_51               (io_sc2mac_dat_a_bits_mask_51),
.io_sc2mac_dat_a_bits_mask_52               (io_sc2mac_dat_a_bits_mask_52),
.io_sc2mac_dat_a_bits_mask_53               (io_sc2mac_dat_a_bits_mask_53),
.io_sc2mac_dat_a_bits_mask_54               (io_sc2mac_dat_a_bits_mask_54),
.io_sc2mac_dat_a_bits_mask_55               (io_sc2mac_dat_a_bits_mask_55),
.io_sc2mac_dat_a_bits_mask_56               (io_sc2mac_dat_a_bits_mask_56),
.io_sc2mac_dat_a_bits_mask_57               (io_sc2mac_dat_a_bits_mask_57),
.io_sc2mac_dat_a_bits_mask_58               (io_sc2mac_dat_a_bits_mask_58),
.io_sc2mac_dat_a_bits_mask_59               (io_sc2mac_dat_a_bits_mask_59),
.io_sc2mac_dat_a_bits_mask_60               (io_sc2mac_dat_a_bits_mask_60),
.io_sc2mac_dat_a_bits_mask_61               (io_sc2mac_dat_a_bits_mask_61),
.io_sc2mac_dat_a_bits_mask_62               (io_sc2mac_dat_a_bits_mask_62),
.io_sc2mac_dat_a_bits_mask_63               (io_sc2mac_dat_a_bits_mask_63),
.io_sc2mac_dat_a_bits_data_0               (io_sc2mac_dat_a_bits_data_0),
.io_sc2mac_dat_a_bits_data_1               (io_sc2mac_dat_a_bits_data_1),
.io_sc2mac_dat_a_bits_data_2               (io_sc2mac_dat_a_bits_data_2),
.io_sc2mac_dat_a_bits_data_3               (io_sc2mac_dat_a_bits_data_3),
.io_sc2mac_dat_a_bits_data_4               (io_sc2mac_dat_a_bits_data_4),
.io_sc2mac_dat_a_bits_data_5               (io_sc2mac_dat_a_bits_data_5),
.io_sc2mac_dat_a_bits_data_6               (io_sc2mac_dat_a_bits_data_6),
.io_sc2mac_dat_a_bits_data_7               (io_sc2mac_dat_a_bits_data_7),
.io_sc2mac_dat_a_bits_data_8               (io_sc2mac_dat_a_bits_data_8),
.io_sc2mac_dat_a_bits_data_9               (io_sc2mac_dat_a_bits_data_9),
.io_sc2mac_dat_a_bits_data_10               (io_sc2mac_dat_a_bits_data_10),
.io_sc2mac_dat_a_bits_data_11               (io_sc2mac_dat_a_bits_data_11),
.io_sc2mac_dat_a_bits_data_12               (io_sc2mac_dat_a_bits_data_12),
.io_sc2mac_dat_a_bits_data_13               (io_sc2mac_dat_a_bits_data_13),
.io_sc2mac_dat_a_bits_data_14               (io_sc2mac_dat_a_bits_data_14),
.io_sc2mac_dat_a_bits_data_15               (io_sc2mac_dat_a_bits_data_15),
.io_sc2mac_dat_a_bits_data_16               (io_sc2mac_dat_a_bits_data_16),
.io_sc2mac_dat_a_bits_data_17               (io_sc2mac_dat_a_bits_data_17),
.io_sc2mac_dat_a_bits_data_18               (io_sc2mac_dat_a_bits_data_18),
.io_sc2mac_dat_a_bits_data_19               (io_sc2mac_dat_a_bits_data_19),
.io_sc2mac_dat_a_bits_data_20               (io_sc2mac_dat_a_bits_data_20),
.io_sc2mac_dat_a_bits_data_21               (io_sc2mac_dat_a_bits_data_21),
.io_sc2mac_dat_a_bits_data_22               (io_sc2mac_dat_a_bits_data_22),
.io_sc2mac_dat_a_bits_data_23               (io_sc2mac_dat_a_bits_data_23),
.io_sc2mac_dat_a_bits_data_24               (io_sc2mac_dat_a_bits_data_24),
.io_sc2mac_dat_a_bits_data_25               (io_sc2mac_dat_a_bits_data_25),
.io_sc2mac_dat_a_bits_data_26               (io_sc2mac_dat_a_bits_data_26),
.io_sc2mac_dat_a_bits_data_27               (io_sc2mac_dat_a_bits_data_27),
.io_sc2mac_dat_a_bits_data_28               (io_sc2mac_dat_a_bits_data_28),
.io_sc2mac_dat_a_bits_data_29               (io_sc2mac_dat_a_bits_data_29),
.io_sc2mac_dat_a_bits_data_30               (io_sc2mac_dat_a_bits_data_30),
.io_sc2mac_dat_a_bits_data_31               (io_sc2mac_dat_a_bits_data_31),
.io_sc2mac_dat_a_bits_data_32               (io_sc2mac_dat_a_bits_data_32),
.io_sc2mac_dat_a_bits_data_33               (io_sc2mac_dat_a_bits_data_33),
.io_sc2mac_dat_a_bits_data_34               (io_sc2mac_dat_a_bits_data_34),
.io_sc2mac_dat_a_bits_data_35               (io_sc2mac_dat_a_bits_data_35),
.io_sc2mac_dat_a_bits_data_36               (io_sc2mac_dat_a_bits_data_36),
.io_sc2mac_dat_a_bits_data_37               (io_sc2mac_dat_a_bits_data_37),
.io_sc2mac_dat_a_bits_data_38               (io_sc2mac_dat_a_bits_data_38),
.io_sc2mac_dat_a_bits_data_39               (io_sc2mac_dat_a_bits_data_39),
.io_sc2mac_dat_a_bits_data_40               (io_sc2mac_dat_a_bits_data_40),
.io_sc2mac_dat_a_bits_data_41               (io_sc2mac_dat_a_bits_data_41),
.io_sc2mac_dat_a_bits_data_42               (io_sc2mac_dat_a_bits_data_42),
.io_sc2mac_dat_a_bits_data_43               (io_sc2mac_dat_a_bits_data_43),
.io_sc2mac_dat_a_bits_data_44               (io_sc2mac_dat_a_bits_data_44),
.io_sc2mac_dat_a_bits_data_45               (io_sc2mac_dat_a_bits_data_45),
.io_sc2mac_dat_a_bits_data_46               (io_sc2mac_dat_a_bits_data_46),
.io_sc2mac_dat_a_bits_data_47               (io_sc2mac_dat_a_bits_data_47),
.io_sc2mac_dat_a_bits_data_48               (io_sc2mac_dat_a_bits_data_48),
.io_sc2mac_dat_a_bits_data_49               (io_sc2mac_dat_a_bits_data_49),
.io_sc2mac_dat_a_bits_data_50               (io_sc2mac_dat_a_bits_data_50),
.io_sc2mac_dat_a_bits_data_51               (io_sc2mac_dat_a_bits_data_51),
.io_sc2mac_dat_a_bits_data_52               (io_sc2mac_dat_a_bits_data_52),
.io_sc2mac_dat_a_bits_data_53               (io_sc2mac_dat_a_bits_data_53),
.io_sc2mac_dat_a_bits_data_54               (io_sc2mac_dat_a_bits_data_54),
.io_sc2mac_dat_a_bits_data_55               (io_sc2mac_dat_a_bits_data_55),
.io_sc2mac_dat_a_bits_data_56               (io_sc2mac_dat_a_bits_data_56),
.io_sc2mac_dat_a_bits_data_57               (io_sc2mac_dat_a_bits_data_57),
.io_sc2mac_dat_a_bits_data_58               (io_sc2mac_dat_a_bits_data_58),
.io_sc2mac_dat_a_bits_data_59               (io_sc2mac_dat_a_bits_data_59),
.io_sc2mac_dat_a_bits_data_60               (io_sc2mac_dat_a_bits_data_60),
.io_sc2mac_dat_a_bits_data_61               (io_sc2mac_dat_a_bits_data_61),
.io_sc2mac_dat_a_bits_data_62               (io_sc2mac_dat_a_bits_data_62),
.io_sc2mac_dat_a_bits_data_63               (io_sc2mac_dat_a_bits_data_63),
.io_sc2mac_dat_a_bits_pd               (io_sc2mac_dat_a_bits_pd),
.io_sc2mac_dat_b_valid               (io_sc2mac_dat_b_valid),
.io_sc2mac_dat_b_bits_mask_0               (io_sc2mac_dat_b_bits_mask_0),
.io_sc2mac_dat_b_bits_mask_1               (io_sc2mac_dat_b_bits_mask_1),
.io_sc2mac_dat_b_bits_mask_2               (io_sc2mac_dat_b_bits_mask_2),
.io_sc2mac_dat_b_bits_mask_3               (io_sc2mac_dat_b_bits_mask_3),
.io_sc2mac_dat_b_bits_mask_4               (io_sc2mac_dat_b_bits_mask_4),
.io_sc2mac_dat_b_bits_mask_5               (io_sc2mac_dat_b_bits_mask_5),
.io_sc2mac_dat_b_bits_mask_6               (io_sc2mac_dat_b_bits_mask_6),
.io_sc2mac_dat_b_bits_mask_7               (io_sc2mac_dat_b_bits_mask_7),
.io_sc2mac_dat_b_bits_mask_8               (io_sc2mac_dat_b_bits_mask_8),
.io_sc2mac_dat_b_bits_mask_9               (io_sc2mac_dat_b_bits_mask_9),
.io_sc2mac_dat_b_bits_mask_10               (io_sc2mac_dat_b_bits_mask_10),
.io_sc2mac_dat_b_bits_mask_11               (io_sc2mac_dat_b_bits_mask_11),
.io_sc2mac_dat_b_bits_mask_12               (io_sc2mac_dat_b_bits_mask_12),
.io_sc2mac_dat_b_bits_mask_13               (io_sc2mac_dat_b_bits_mask_13),
.io_sc2mac_dat_b_bits_mask_14               (io_sc2mac_dat_b_bits_mask_14),
.io_sc2mac_dat_b_bits_mask_15               (io_sc2mac_dat_b_bits_mask_15),
.io_sc2mac_dat_b_bits_mask_16               (io_sc2mac_dat_b_bits_mask_16),
.io_sc2mac_dat_b_bits_mask_17               (io_sc2mac_dat_b_bits_mask_17),
.io_sc2mac_dat_b_bits_mask_18               (io_sc2mac_dat_b_bits_mask_18),
.io_sc2mac_dat_b_bits_mask_19               (io_sc2mac_dat_b_bits_mask_19),
.io_sc2mac_dat_b_bits_mask_20               (io_sc2mac_dat_b_bits_mask_20),
.io_sc2mac_dat_b_bits_mask_21               (io_sc2mac_dat_b_bits_mask_21),
.io_sc2mac_dat_b_bits_mask_22               (io_sc2mac_dat_b_bits_mask_22),
.io_sc2mac_dat_b_bits_mask_23               (io_sc2mac_dat_b_bits_mask_23),
.io_sc2mac_dat_b_bits_mask_24               (io_sc2mac_dat_b_bits_mask_24),
.io_sc2mac_dat_b_bits_mask_25               (io_sc2mac_dat_b_bits_mask_25),
.io_sc2mac_dat_b_bits_mask_26               (io_sc2mac_dat_b_bits_mask_26),
.io_sc2mac_dat_b_bits_mask_27               (io_sc2mac_dat_b_bits_mask_27),
.io_sc2mac_dat_b_bits_mask_28               (io_sc2mac_dat_b_bits_mask_28),
.io_sc2mac_dat_b_bits_mask_29               (io_sc2mac_dat_b_bits_mask_29),
.io_sc2mac_dat_b_bits_mask_30               (io_sc2mac_dat_b_bits_mask_30),
.io_sc2mac_dat_b_bits_mask_31               (io_sc2mac_dat_b_bits_mask_31),
.io_sc2mac_dat_b_bits_mask_32               (io_sc2mac_dat_b_bits_mask_32),
.io_sc2mac_dat_b_bits_mask_33               (io_sc2mac_dat_b_bits_mask_33),
.io_sc2mac_dat_b_bits_mask_34               (io_sc2mac_dat_b_bits_mask_34),
.io_sc2mac_dat_b_bits_mask_35               (io_sc2mac_dat_b_bits_mask_35),
.io_sc2mac_dat_b_bits_mask_36               (io_sc2mac_dat_b_bits_mask_36),
.io_sc2mac_dat_b_bits_mask_37               (io_sc2mac_dat_b_bits_mask_37),
.io_sc2mac_dat_b_bits_mask_38               (io_sc2mac_dat_b_bits_mask_38),
.io_sc2mac_dat_b_bits_mask_39               (io_sc2mac_dat_b_bits_mask_39),
.io_sc2mac_dat_b_bits_mask_40               (io_sc2mac_dat_b_bits_mask_40),
.io_sc2mac_dat_b_bits_mask_41               (io_sc2mac_dat_b_bits_mask_41),
.io_sc2mac_dat_b_bits_mask_42               (io_sc2mac_dat_b_bits_mask_42),
.io_sc2mac_dat_b_bits_mask_43               (io_sc2mac_dat_b_bits_mask_43),
.io_sc2mac_dat_b_bits_mask_44               (io_sc2mac_dat_b_bits_mask_44),
.io_sc2mac_dat_b_bits_mask_45               (io_sc2mac_dat_b_bits_mask_45),
.io_sc2mac_dat_b_bits_mask_46               (io_sc2mac_dat_b_bits_mask_46),
.io_sc2mac_dat_b_bits_mask_47               (io_sc2mac_dat_b_bits_mask_47),
.io_sc2mac_dat_b_bits_mask_48               (io_sc2mac_dat_b_bits_mask_48),
.io_sc2mac_dat_b_bits_mask_49               (io_sc2mac_dat_b_bits_mask_49),
.io_sc2mac_dat_b_bits_mask_50               (io_sc2mac_dat_b_bits_mask_50),
.io_sc2mac_dat_b_bits_mask_51               (io_sc2mac_dat_b_bits_mask_51),
.io_sc2mac_dat_b_bits_mask_52               (io_sc2mac_dat_b_bits_mask_52),
.io_sc2mac_dat_b_bits_mask_53               (io_sc2mac_dat_b_bits_mask_53),
.io_sc2mac_dat_b_bits_mask_54               (io_sc2mac_dat_b_bits_mask_54),
.io_sc2mac_dat_b_bits_mask_55               (io_sc2mac_dat_b_bits_mask_55),
.io_sc2mac_dat_b_bits_mask_56               (io_sc2mac_dat_b_bits_mask_56),
.io_sc2mac_dat_b_bits_mask_57               (io_sc2mac_dat_b_bits_mask_57),
.io_sc2mac_dat_b_bits_mask_58               (io_sc2mac_dat_b_bits_mask_58),
.io_sc2mac_dat_b_bits_mask_59               (io_sc2mac_dat_b_bits_mask_59),
.io_sc2mac_dat_b_bits_mask_60               (io_sc2mac_dat_b_bits_mask_60),
.io_sc2mac_dat_b_bits_mask_61               (io_sc2mac_dat_b_bits_mask_61),
.io_sc2mac_dat_b_bits_mask_62               (io_sc2mac_dat_b_bits_mask_62),
.io_sc2mac_dat_b_bits_mask_63               (io_sc2mac_dat_b_bits_mask_63),
.io_sc2mac_dat_b_bits_data_0               (io_sc2mac_dat_b_bits_data_0),
.io_sc2mac_dat_b_bits_data_1               (io_sc2mac_dat_b_bits_data_1),
.io_sc2mac_dat_b_bits_data_2               (io_sc2mac_dat_b_bits_data_2),
.io_sc2mac_dat_b_bits_data_3               (io_sc2mac_dat_b_bits_data_3),
.io_sc2mac_dat_b_bits_data_4               (io_sc2mac_dat_b_bits_data_4),
.io_sc2mac_dat_b_bits_data_5               (io_sc2mac_dat_b_bits_data_5),
.io_sc2mac_dat_b_bits_data_6               (io_sc2mac_dat_b_bits_data_6),
.io_sc2mac_dat_b_bits_data_7               (io_sc2mac_dat_b_bits_data_7),
.io_sc2mac_dat_b_bits_data_8               (io_sc2mac_dat_b_bits_data_8),
.io_sc2mac_dat_b_bits_data_9               (io_sc2mac_dat_b_bits_data_9),
.io_sc2mac_dat_b_bits_data_10               (io_sc2mac_dat_b_bits_data_10),
.io_sc2mac_dat_b_bits_data_11               (io_sc2mac_dat_b_bits_data_11),
.io_sc2mac_dat_b_bits_data_12               (io_sc2mac_dat_b_bits_data_12),
.io_sc2mac_dat_b_bits_data_13               (io_sc2mac_dat_b_bits_data_13),
.io_sc2mac_dat_b_bits_data_14               (io_sc2mac_dat_b_bits_data_14),
.io_sc2mac_dat_b_bits_data_15               (io_sc2mac_dat_b_bits_data_15),
.io_sc2mac_dat_b_bits_data_16               (io_sc2mac_dat_b_bits_data_16),
.io_sc2mac_dat_b_bits_data_17               (io_sc2mac_dat_b_bits_data_17),
.io_sc2mac_dat_b_bits_data_18               (io_sc2mac_dat_b_bits_data_18),
.io_sc2mac_dat_b_bits_data_19               (io_sc2mac_dat_b_bits_data_19),
.io_sc2mac_dat_b_bits_data_20               (io_sc2mac_dat_b_bits_data_20),
.io_sc2mac_dat_b_bits_data_21               (io_sc2mac_dat_b_bits_data_21),
.io_sc2mac_dat_b_bits_data_22               (io_sc2mac_dat_b_bits_data_22),
.io_sc2mac_dat_b_bits_data_23               (io_sc2mac_dat_b_bits_data_23),
.io_sc2mac_dat_b_bits_data_24               (io_sc2mac_dat_b_bits_data_24),
.io_sc2mac_dat_b_bits_data_25               (io_sc2mac_dat_b_bits_data_25),
.io_sc2mac_dat_b_bits_data_26               (io_sc2mac_dat_b_bits_data_26),
.io_sc2mac_dat_b_bits_data_27               (io_sc2mac_dat_b_bits_data_27),
.io_sc2mac_dat_b_bits_data_28               (io_sc2mac_dat_b_bits_data_28),
.io_sc2mac_dat_b_bits_data_29               (io_sc2mac_dat_b_bits_data_29),
.io_sc2mac_dat_b_bits_data_30               (io_sc2mac_dat_b_bits_data_30),
.io_sc2mac_dat_b_bits_data_31               (io_sc2mac_dat_b_bits_data_31),
.io_sc2mac_dat_b_bits_data_32               (io_sc2mac_dat_b_bits_data_32),
.io_sc2mac_dat_b_bits_data_33               (io_sc2mac_dat_b_bits_data_33),
.io_sc2mac_dat_b_bits_data_34               (io_sc2mac_dat_b_bits_data_34),
.io_sc2mac_dat_b_bits_data_35               (io_sc2mac_dat_b_bits_data_35),
.io_sc2mac_dat_b_bits_data_36               (io_sc2mac_dat_b_bits_data_36),
.io_sc2mac_dat_b_bits_data_37               (io_sc2mac_dat_b_bits_data_37),
.io_sc2mac_dat_b_bits_data_38               (io_sc2mac_dat_b_bits_data_38),
.io_sc2mac_dat_b_bits_data_39               (io_sc2mac_dat_b_bits_data_39),
.io_sc2mac_dat_b_bits_data_40               (io_sc2mac_dat_b_bits_data_40),
.io_sc2mac_dat_b_bits_data_41               (io_sc2mac_dat_b_bits_data_41),
.io_sc2mac_dat_b_bits_data_42               (io_sc2mac_dat_b_bits_data_42),
.io_sc2mac_dat_b_bits_data_43               (io_sc2mac_dat_b_bits_data_43),
.io_sc2mac_dat_b_bits_data_44               (io_sc2mac_dat_b_bits_data_44),
.io_sc2mac_dat_b_bits_data_45               (io_sc2mac_dat_b_bits_data_45),
.io_sc2mac_dat_b_bits_data_46               (io_sc2mac_dat_b_bits_data_46),
.io_sc2mac_dat_b_bits_data_47               (io_sc2mac_dat_b_bits_data_47),
.io_sc2mac_dat_b_bits_data_48               (io_sc2mac_dat_b_bits_data_48),
.io_sc2mac_dat_b_bits_data_49               (io_sc2mac_dat_b_bits_data_49),
.io_sc2mac_dat_b_bits_data_50               (io_sc2mac_dat_b_bits_data_50),
.io_sc2mac_dat_b_bits_data_51               (io_sc2mac_dat_b_bits_data_51),
.io_sc2mac_dat_b_bits_data_52               (io_sc2mac_dat_b_bits_data_52),
.io_sc2mac_dat_b_bits_data_53               (io_sc2mac_dat_b_bits_data_53),
.io_sc2mac_dat_b_bits_data_54               (io_sc2mac_dat_b_bits_data_54),
.io_sc2mac_dat_b_bits_data_55               (io_sc2mac_dat_b_bits_data_55),
.io_sc2mac_dat_b_bits_data_56               (io_sc2mac_dat_b_bits_data_56),
.io_sc2mac_dat_b_bits_data_57               (io_sc2mac_dat_b_bits_data_57),
.io_sc2mac_dat_b_bits_data_58               (io_sc2mac_dat_b_bits_data_58),
.io_sc2mac_dat_b_bits_data_59               (io_sc2mac_dat_b_bits_data_59),
.io_sc2mac_dat_b_bits_data_60               (io_sc2mac_dat_b_bits_data_60),
.io_sc2mac_dat_b_bits_data_61               (io_sc2mac_dat_b_bits_data_61),
.io_sc2mac_dat_b_bits_data_62               (io_sc2mac_dat_b_bits_data_62),
.io_sc2mac_dat_b_bits_data_63               (io_sc2mac_dat_b_bits_data_63),
.io_sc2mac_dat_b_bits_pd               (io_sc2mac_dat_b_bits_pd),
.io_reg2dp_op_en               (io_reg2dp_op_en),
.io_reg2dp_conv_mode               (io_reg2dp_conv_mode),
.io_reg2dp_batches               (io_reg2dp_batches),
.io_reg2dp_proc_precision               (io_reg2dp_proc_precision),
.io_reg2dp_datain_format               (io_reg2dp_datain_format),
.io_reg2dp_skip_data_rls               (io_reg2dp_skip_data_rls),
.io_reg2dp_datain_channel_ext               (io_reg2dp_datain_channel_ext),
.io_reg2dp_datain_height_ext               (io_reg2dp_datain_height_ext),
.io_reg2dp_datain_width_ext               (io_reg2dp_datain_width_ext),
.io_reg2dp_y_extension               (io_reg2dp_y_extension),
.io_reg2dp_weight_channel_ext               (io_reg2dp_weight_channel_ext),
.io_reg2dp_entries               (io_reg2dp_entries),
.io_reg2dp_dataout_width               (io_reg2dp_dataout_width),
.io_reg2dp_rls_slices               (io_reg2dp_rls_slices),
.io_reg2dp_conv_x_stride_ext               (io_reg2dp_conv_x_stride_ext),
.io_reg2dp_conv_y_stride_ext               (io_reg2dp_conv_y_stride_ext),
.io_reg2dp_x_dilation_ext               (io_reg2dp_x_dilation_ext),
.io_reg2dp_y_dilation_ext               (io_reg2dp_y_dilation_ext),
.io_reg2dp_pad_left               (io_reg2dp_pad_left),
.io_reg2dp_pad_top               (io_reg2dp_pad_top),
.io_reg2dp_pad_value               (io_reg2dp_pad_value),
.io_reg2dp_data_bank               (io_reg2dp_data_bank),
.io_reg2dp_pra_truncate               (io_reg2dp_pra_truncate),
.io_slcg_wg_en               (io_slcg_wg_en)
);
endmodule