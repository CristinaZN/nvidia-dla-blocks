// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CMAC_core.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CMAC.h
module NV_NVDLA_CMAC_core (
   nvdla_core_clk //|< i
  ,nvdla_core_rstn //|< i
  ,dla_clk_ovr_on_sync //|< i
  ,global_clk_ovr_on_sync //|< i
  ,reg2dp_conv_mode //|< i
  ,reg2dp_op_en //|< i
//: for(my $i=0; $i<64; $i++){
//: print qq(
//: ,sc2mac_dat_data${i} //|< i)
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,sc2mac_dat_data0 //|< i
,sc2mac_dat_data1 //|< i
,sc2mac_dat_data2 //|< i
,sc2mac_dat_data3 //|< i
,sc2mac_dat_data4 //|< i
,sc2mac_dat_data5 //|< i
,sc2mac_dat_data6 //|< i
,sc2mac_dat_data7 //|< i
,sc2mac_dat_data8 //|< i
,sc2mac_dat_data9 //|< i
,sc2mac_dat_data10 //|< i
,sc2mac_dat_data11 //|< i
,sc2mac_dat_data12 //|< i
,sc2mac_dat_data13 //|< i
,sc2mac_dat_data14 //|< i
,sc2mac_dat_data15 //|< i
,sc2mac_dat_data16 //|< i
,sc2mac_dat_data17 //|< i
,sc2mac_dat_data18 //|< i
,sc2mac_dat_data19 //|< i
,sc2mac_dat_data20 //|< i
,sc2mac_dat_data21 //|< i
,sc2mac_dat_data22 //|< i
,sc2mac_dat_data23 //|< i
,sc2mac_dat_data24 //|< i
,sc2mac_dat_data25 //|< i
,sc2mac_dat_data26 //|< i
,sc2mac_dat_data27 //|< i
,sc2mac_dat_data28 //|< i
,sc2mac_dat_data29 //|< i
,sc2mac_dat_data30 //|< i
,sc2mac_dat_data31 //|< i
,sc2mac_dat_data32 //|< i
,sc2mac_dat_data33 //|< i
,sc2mac_dat_data34 //|< i
,sc2mac_dat_data35 //|< i
,sc2mac_dat_data36 //|< i
,sc2mac_dat_data37 //|< i
,sc2mac_dat_data38 //|< i
,sc2mac_dat_data39 //|< i
,sc2mac_dat_data40 //|< i
,sc2mac_dat_data41 //|< i
,sc2mac_dat_data42 //|< i
,sc2mac_dat_data43 //|< i
,sc2mac_dat_data44 //|< i
,sc2mac_dat_data45 //|< i
,sc2mac_dat_data46 //|< i
,sc2mac_dat_data47 //|< i
,sc2mac_dat_data48 //|< i
,sc2mac_dat_data49 //|< i
,sc2mac_dat_data50 //|< i
,sc2mac_dat_data51 //|< i
,sc2mac_dat_data52 //|< i
,sc2mac_dat_data53 //|< i
,sc2mac_dat_data54 //|< i
,sc2mac_dat_data55 //|< i
,sc2mac_dat_data56 //|< i
,sc2mac_dat_data57 //|< i
,sc2mac_dat_data58 //|< i
,sc2mac_dat_data59 //|< i
,sc2mac_dat_data60 //|< i
,sc2mac_dat_data61 //|< i
,sc2mac_dat_data62 //|< i
,sc2mac_dat_data63 //|< i
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,sc2mac_dat_mask //|< i
  ,sc2mac_dat_pd //|< i
  ,sc2mac_dat_pvld //|< i
//: for(my $i=0; $i<64; $i++){
//: print qq(
//: ,sc2mac_wt_data${i} //|< i)
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,sc2mac_wt_data0 //|< i
,sc2mac_wt_data1 //|< i
,sc2mac_wt_data2 //|< i
,sc2mac_wt_data3 //|< i
,sc2mac_wt_data4 //|< i
,sc2mac_wt_data5 //|< i
,sc2mac_wt_data6 //|< i
,sc2mac_wt_data7 //|< i
,sc2mac_wt_data8 //|< i
,sc2mac_wt_data9 //|< i
,sc2mac_wt_data10 //|< i
,sc2mac_wt_data11 //|< i
,sc2mac_wt_data12 //|< i
,sc2mac_wt_data13 //|< i
,sc2mac_wt_data14 //|< i
,sc2mac_wt_data15 //|< i
,sc2mac_wt_data16 //|< i
,sc2mac_wt_data17 //|< i
,sc2mac_wt_data18 //|< i
,sc2mac_wt_data19 //|< i
,sc2mac_wt_data20 //|< i
,sc2mac_wt_data21 //|< i
,sc2mac_wt_data22 //|< i
,sc2mac_wt_data23 //|< i
,sc2mac_wt_data24 //|< i
,sc2mac_wt_data25 //|< i
,sc2mac_wt_data26 //|< i
,sc2mac_wt_data27 //|< i
,sc2mac_wt_data28 //|< i
,sc2mac_wt_data29 //|< i
,sc2mac_wt_data30 //|< i
,sc2mac_wt_data31 //|< i
,sc2mac_wt_data32 //|< i
,sc2mac_wt_data33 //|< i
,sc2mac_wt_data34 //|< i
,sc2mac_wt_data35 //|< i
,sc2mac_wt_data36 //|< i
,sc2mac_wt_data37 //|< i
,sc2mac_wt_data38 //|< i
,sc2mac_wt_data39 //|< i
,sc2mac_wt_data40 //|< i
,sc2mac_wt_data41 //|< i
,sc2mac_wt_data42 //|< i
,sc2mac_wt_data43 //|< i
,sc2mac_wt_data44 //|< i
,sc2mac_wt_data45 //|< i
,sc2mac_wt_data46 //|< i
,sc2mac_wt_data47 //|< i
,sc2mac_wt_data48 //|< i
,sc2mac_wt_data49 //|< i
,sc2mac_wt_data50 //|< i
,sc2mac_wt_data51 //|< i
,sc2mac_wt_data52 //|< i
,sc2mac_wt_data53 //|< i
,sc2mac_wt_data54 //|< i
,sc2mac_wt_data55 //|< i
,sc2mac_wt_data56 //|< i
,sc2mac_wt_data57 //|< i
,sc2mac_wt_data58 //|< i
,sc2mac_wt_data59 //|< i
,sc2mac_wt_data60 //|< i
,sc2mac_wt_data61 //|< i
,sc2mac_wt_data62 //|< i
,sc2mac_wt_data63 //|< i
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,sc2mac_wt_mask //|< i
  ,sc2mac_wt_pvld //|< i
  ,sc2mac_wt_sel //|< i
  ,slcg_op_en //|< i
  ,tmc2slcg_disable_clock_gating //|< i
  ,dp2reg_done //|> o
//: for(my $i=0; $i<32/2; $i++){
//: print qq(
//: ,mac2accu_data${i} //|< i )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,mac2accu_data0 //|< i 
,mac2accu_data1 //|< i 
,mac2accu_data2 //|< i 
,mac2accu_data3 //|< i 
,mac2accu_data4 //|< i 
,mac2accu_data5 //|< i 
,mac2accu_data6 //|< i 
,mac2accu_data7 //|< i 
,mac2accu_data8 //|< i 
,mac2accu_data9 //|< i 
,mac2accu_data10 //|< i 
,mac2accu_data11 //|< i 
,mac2accu_data12 //|< i 
,mac2accu_data13 //|< i 
,mac2accu_data14 //|< i 
,mac2accu_data15 //|< i 
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,mac2accu_mask //|> o
  ,mac2accu_mode //|> o
  ,mac2accu_pd //|> o
  ,mac2accu_pvld //|> o
  );
//
// NV_NVDLA_CMAC_core_ports.v
//
input nvdla_core_clk;
input nvdla_core_rstn;
input sc2mac_dat_pvld; /* data valid */
input [64 -1:0] sc2mac_dat_mask;
//: for(my $i=0; $i<64; $i++){
//: print qq(
//: input [8 -1:0] sc2mac_dat_data${i}; )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

input [8 -1:0] sc2mac_dat_data0; 
input [8 -1:0] sc2mac_dat_data1; 
input [8 -1:0] sc2mac_dat_data2; 
input [8 -1:0] sc2mac_dat_data3; 
input [8 -1:0] sc2mac_dat_data4; 
input [8 -1:0] sc2mac_dat_data5; 
input [8 -1:0] sc2mac_dat_data6; 
input [8 -1:0] sc2mac_dat_data7; 
input [8 -1:0] sc2mac_dat_data8; 
input [8 -1:0] sc2mac_dat_data9; 
input [8 -1:0] sc2mac_dat_data10; 
input [8 -1:0] sc2mac_dat_data11; 
input [8 -1:0] sc2mac_dat_data12; 
input [8 -1:0] sc2mac_dat_data13; 
input [8 -1:0] sc2mac_dat_data14; 
input [8 -1:0] sc2mac_dat_data15; 
input [8 -1:0] sc2mac_dat_data16; 
input [8 -1:0] sc2mac_dat_data17; 
input [8 -1:0] sc2mac_dat_data18; 
input [8 -1:0] sc2mac_dat_data19; 
input [8 -1:0] sc2mac_dat_data20; 
input [8 -1:0] sc2mac_dat_data21; 
input [8 -1:0] sc2mac_dat_data22; 
input [8 -1:0] sc2mac_dat_data23; 
input [8 -1:0] sc2mac_dat_data24; 
input [8 -1:0] sc2mac_dat_data25; 
input [8 -1:0] sc2mac_dat_data26; 
input [8 -1:0] sc2mac_dat_data27; 
input [8 -1:0] sc2mac_dat_data28; 
input [8 -1:0] sc2mac_dat_data29; 
input [8 -1:0] sc2mac_dat_data30; 
input [8 -1:0] sc2mac_dat_data31; 
input [8 -1:0] sc2mac_dat_data32; 
input [8 -1:0] sc2mac_dat_data33; 
input [8 -1:0] sc2mac_dat_data34; 
input [8 -1:0] sc2mac_dat_data35; 
input [8 -1:0] sc2mac_dat_data36; 
input [8 -1:0] sc2mac_dat_data37; 
input [8 -1:0] sc2mac_dat_data38; 
input [8 -1:0] sc2mac_dat_data39; 
input [8 -1:0] sc2mac_dat_data40; 
input [8 -1:0] sc2mac_dat_data41; 
input [8 -1:0] sc2mac_dat_data42; 
input [8 -1:0] sc2mac_dat_data43; 
input [8 -1:0] sc2mac_dat_data44; 
input [8 -1:0] sc2mac_dat_data45; 
input [8 -1:0] sc2mac_dat_data46; 
input [8 -1:0] sc2mac_dat_data47; 
input [8 -1:0] sc2mac_dat_data48; 
input [8 -1:0] sc2mac_dat_data49; 
input [8 -1:0] sc2mac_dat_data50; 
input [8 -1:0] sc2mac_dat_data51; 
input [8 -1:0] sc2mac_dat_data52; 
input [8 -1:0] sc2mac_dat_data53; 
input [8 -1:0] sc2mac_dat_data54; 
input [8 -1:0] sc2mac_dat_data55; 
input [8 -1:0] sc2mac_dat_data56; 
input [8 -1:0] sc2mac_dat_data57; 
input [8 -1:0] sc2mac_dat_data58; 
input [8 -1:0] sc2mac_dat_data59; 
input [8 -1:0] sc2mac_dat_data60; 
input [8 -1:0] sc2mac_dat_data61; 
input [8 -1:0] sc2mac_dat_data62; 
input [8 -1:0] sc2mac_dat_data63; 
//| eperl: generated_end (DO NOT EDIT ABOVE)
input [8:0] sc2mac_dat_pd;
input sc2mac_wt_pvld; /* data valid */
input [64 -1:0] sc2mac_wt_mask;
//: for(my $i=0; $i<64; $i++){
//: print qq(
//: input [8 -1:0] sc2mac_wt_data${i}; )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

input [8 -1:0] sc2mac_wt_data0; 
input [8 -1:0] sc2mac_wt_data1; 
input [8 -1:0] sc2mac_wt_data2; 
input [8 -1:0] sc2mac_wt_data3; 
input [8 -1:0] sc2mac_wt_data4; 
input [8 -1:0] sc2mac_wt_data5; 
input [8 -1:0] sc2mac_wt_data6; 
input [8 -1:0] sc2mac_wt_data7; 
input [8 -1:0] sc2mac_wt_data8; 
input [8 -1:0] sc2mac_wt_data9; 
input [8 -1:0] sc2mac_wt_data10; 
input [8 -1:0] sc2mac_wt_data11; 
input [8 -1:0] sc2mac_wt_data12; 
input [8 -1:0] sc2mac_wt_data13; 
input [8 -1:0] sc2mac_wt_data14; 
input [8 -1:0] sc2mac_wt_data15; 
input [8 -1:0] sc2mac_wt_data16; 
input [8 -1:0] sc2mac_wt_data17; 
input [8 -1:0] sc2mac_wt_data18; 
input [8 -1:0] sc2mac_wt_data19; 
input [8 -1:0] sc2mac_wt_data20; 
input [8 -1:0] sc2mac_wt_data21; 
input [8 -1:0] sc2mac_wt_data22; 
input [8 -1:0] sc2mac_wt_data23; 
input [8 -1:0] sc2mac_wt_data24; 
input [8 -1:0] sc2mac_wt_data25; 
input [8 -1:0] sc2mac_wt_data26; 
input [8 -1:0] sc2mac_wt_data27; 
input [8 -1:0] sc2mac_wt_data28; 
input [8 -1:0] sc2mac_wt_data29; 
input [8 -1:0] sc2mac_wt_data30; 
input [8 -1:0] sc2mac_wt_data31; 
input [8 -1:0] sc2mac_wt_data32; 
input [8 -1:0] sc2mac_wt_data33; 
input [8 -1:0] sc2mac_wt_data34; 
input [8 -1:0] sc2mac_wt_data35; 
input [8 -1:0] sc2mac_wt_data36; 
input [8 -1:0] sc2mac_wt_data37; 
input [8 -1:0] sc2mac_wt_data38; 
input [8 -1:0] sc2mac_wt_data39; 
input [8 -1:0] sc2mac_wt_data40; 
input [8 -1:0] sc2mac_wt_data41; 
input [8 -1:0] sc2mac_wt_data42; 
input [8 -1:0] sc2mac_wt_data43; 
input [8 -1:0] sc2mac_wt_data44; 
input [8 -1:0] sc2mac_wt_data45; 
input [8 -1:0] sc2mac_wt_data46; 
input [8 -1:0] sc2mac_wt_data47; 
input [8 -1:0] sc2mac_wt_data48; 
input [8 -1:0] sc2mac_wt_data49; 
input [8 -1:0] sc2mac_wt_data50; 
input [8 -1:0] sc2mac_wt_data51; 
input [8 -1:0] sc2mac_wt_data52; 
input [8 -1:0] sc2mac_wt_data53; 
input [8 -1:0] sc2mac_wt_data54; 
input [8 -1:0] sc2mac_wt_data55; 
input [8 -1:0] sc2mac_wt_data56; 
input [8 -1:0] sc2mac_wt_data57; 
input [8 -1:0] sc2mac_wt_data58; 
input [8 -1:0] sc2mac_wt_data59; 
input [8 -1:0] sc2mac_wt_data60; 
input [8 -1:0] sc2mac_wt_data61; 
input [8 -1:0] sc2mac_wt_data62; 
input [8 -1:0] sc2mac_wt_data63; 
//| eperl: generated_end (DO NOT EDIT ABOVE)
input [32/2 -1:0] sc2mac_wt_sel;
output mac2accu_pvld; /* data valid */
output [32/2 -1:0] mac2accu_mask;
output mac2accu_mode;
//: for(my $i=0; $i<32/2; $i++){
//: print qq(
//: output [22 -1:0] mac2accu_data${i}; //|< i )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

output [22 -1:0] mac2accu_data0; //|< i 
output [22 -1:0] mac2accu_data1; //|< i 
output [22 -1:0] mac2accu_data2; //|< i 
output [22 -1:0] mac2accu_data3; //|< i 
output [22 -1:0] mac2accu_data4; //|< i 
output [22 -1:0] mac2accu_data5; //|< i 
output [22 -1:0] mac2accu_data6; //|< i 
output [22 -1:0] mac2accu_data7; //|< i 
output [22 -1:0] mac2accu_data8; //|< i 
output [22 -1:0] mac2accu_data9; //|< i 
output [22 -1:0] mac2accu_data10; //|< i 
output [22 -1:0] mac2accu_data11; //|< i 
output [22 -1:0] mac2accu_data12; //|< i 
output [22 -1:0] mac2accu_data13; //|< i 
output [22 -1:0] mac2accu_data14; //|< i 
output [22 -1:0] mac2accu_data15; //|< i 
//| eperl: generated_end (DO NOT EDIT ABOVE)
output [8:0] mac2accu_pd;
input [0:0] reg2dp_op_en;
input [0:0] reg2dp_conv_mode;
output dp2reg_done;
//Port for SLCG
input dla_clk_ovr_on_sync;
input global_clk_ovr_on_sync;
input tmc2slcg_disable_clock_gating;
input [3+32/2 -1:0] slcg_op_en;
NV_soDLA_CMAC_core sodla_CMAC_core(
    io_nvdla_clock_nvdla_core_clk(nvdla_core_clk),
    io_nvdla_clock_dla_clk_ovr_on_sync(dla_clk_ovr_on_sync),
    io_nvdla_clock_global_clk_ovr_on_sync(global_clk_ovr_on_sync),
    io_nvdla_clock_tmc2slcg_disable_clock_gating(tmc2slcg_disable_clock_gating),
    io_nvdla_core_rstn(nvdla_core_rstn),
    io_slcg_op_en(slcg_op_en),
    io_sc2mac_dat_valid(sc2mac_dat_pvld),
    io_sc2mac_dat_bits_mask_0(sc2mac_dat_mask[0]),
    io_sc2mac_dat_bits_mask_1(sc2mac_dat_mask[1]),
    io_sc2mac_dat_bits_mask_2(sc2mac_dat_mask[2]),
    io_sc2mac_dat_bits_mask_3(sc2mac_dat_mask[3]),
    io_sc2mac_dat_bits_mask_4(sc2mac_dat_mask[4]),
    io_sc2mac_dat_bits_mask_5(sc2mac_dat_mask[5]),
    io_sc2mac_dat_bits_mask_6(sc2mac_dat_mask[6]),
    io_sc2mac_dat_bits_mask_7(sc2mac_dat_mask[7]),
    io_sc2mac_dat_bits_mask_8(sc2mac_dat_mask[8]),
    io_sc2mac_dat_bits_mask_9(sc2mac_dat_mask[9]),
    io_sc2mac_dat_bits_mask_10(sc2mac_dat_mask[10]),
    io_sc2mac_dat_bits_mask_11(sc2mac_dat_mask[11]),
    io_sc2mac_dat_bits_mask_12(sc2mac_dat_mask[12]),
    io_sc2mac_dat_bits_mask_13(sc2mac_dat_mask[13]),
    io_sc2mac_dat_bits_mask_14(sc2mac_dat_mask[14]),
    io_sc2mac_dat_bits_mask_15(sc2mac_dat_mask[15]),
    io_sc2mac_dat_bits_mask_16(sc2mac_dat_mask[16]),
    io_sc2mac_dat_bits_mask_17(sc2mac_dat_mask[17]),
    io_sc2mac_dat_bits_mask_18(sc2mac_dat_mask[18]),
    io_sc2mac_dat_bits_mask_19(sc2mac_dat_mask[19]),
    io_sc2mac_dat_bits_mask_20(sc2mac_dat_mask[20]),
    io_sc2mac_dat_bits_mask_21(sc2mac_dat_mask[21]),
    io_sc2mac_dat_bits_mask_22(sc2mac_dat_mask[22]),
    io_sc2mac_dat_bits_mask_23(sc2mac_dat_mask[23]),
    io_sc2mac_dat_bits_mask_24(sc2mac_dat_mask[24]),
    io_sc2mac_dat_bits_mask_25(sc2mac_dat_mask[25]),
    io_sc2mac_dat_bits_mask_26(sc2mac_dat_mask[26]),
    io_sc2mac_dat_bits_mask_27(sc2mac_dat_mask[27]),
    io_sc2mac_dat_bits_mask_28(sc2mac_dat_mask[28]),
    io_sc2mac_dat_bits_mask_29(sc2mac_dat_mask[29]),
    io_sc2mac_dat_bits_mask_30(sc2mac_dat_mask[30]),
    io_sc2mac_dat_bits_mask_31(sc2mac_dat_mask[31]),
    io_sc2mac_dat_bits_mask_32(sc2mac_dat_mask[32]),
    io_sc2mac_dat_bits_mask_33(sc2mac_dat_mask[33]),
    io_sc2mac_dat_bits_mask_34(sc2mac_dat_mask[34]),
    io_sc2mac_dat_bits_mask_35(sc2mac_dat_mask[35]),
    io_sc2mac_dat_bits_mask_36(sc2mac_dat_mask[36]),
    io_sc2mac_dat_bits_mask_37(sc2mac_dat_mask[37]),
    io_sc2mac_dat_bits_mask_38(sc2mac_dat_mask[38]),
    io_sc2mac_dat_bits_mask_39(sc2mac_dat_mask[39]),
    io_sc2mac_dat_bits_mask_40(sc2mac_dat_mask[40]),
    io_sc2mac_dat_bits_mask_41(sc2mac_dat_mask[41]),
    io_sc2mac_dat_bits_mask_42(sc2mac_dat_mask[42]),
    io_sc2mac_dat_bits_mask_43(sc2mac_dat_mask[43]),
    io_sc2mac_dat_bits_mask_44(sc2mac_dat_mask[44]),
    io_sc2mac_dat_bits_mask_45(sc2mac_dat_mask[45]),
    io_sc2mac_dat_bits_mask_46(sc2mac_dat_mask[46]),
    io_sc2mac_dat_bits_mask_47(sc2mac_dat_mask[47]),
    io_sc2mac_dat_bits_mask_48(sc2mac_dat_mask[48]),
    io_sc2mac_dat_bits_mask_49(sc2mac_dat_mask[49]),
    io_sc2mac_dat_bits_mask_50(sc2mac_dat_mask[50]),
    io_sc2mac_dat_bits_mask_51(sc2mac_dat_mask[51]),
    io_sc2mac_dat_bits_mask_52(sc2mac_dat_mask[52]),
    io_sc2mac_dat_bits_mask_53(sc2mac_dat_mask[53]),
    io_sc2mac_dat_bits_mask_54(sc2mac_dat_mask[54]),
    io_sc2mac_dat_bits_mask_55(sc2mac_dat_mask[55]),
    io_sc2mac_dat_bits_mask_56(sc2mac_dat_mask[56]),
    io_sc2mac_dat_bits_mask_57(sc2mac_dat_mask[57]),
    io_sc2mac_dat_bits_mask_58(sc2mac_dat_mask[58]),
    io_sc2mac_dat_bits_mask_59(sc2mac_dat_mask[59]),
    io_sc2mac_dat_bits_mask_60(sc2mac_dat_mask[60]),
    io_sc2mac_dat_bits_mask_61(sc2mac_dat_mask[61]),
    io_sc2mac_dat_bits_mask_62(sc2mac_dat_mask[62]),
    io_sc2mac_dat_bits_mask_63(sc2mac_dat_mask[63]),
    io_sc2mac_dat_bits_data_0(sc2mac_dat_data0),
    io_sc2mac_dat_bits_data_1(sc2mac_dat_data1),
    io_sc2mac_dat_bits_data_2(sc2mac_dat_data2),
    io_sc2mac_dat_bits_data_3(sc2mac_dat_data3),
    io_sc2mac_dat_bits_data_4(sc2mac_dat_data4),
    io_sc2mac_dat_bits_data_5(sc2mac_dat_data5),
    io_sc2mac_dat_bits_data_6(sc2mac_dat_data6),
    io_sc2mac_dat_bits_data_7(sc2mac_dat_data7),
    io_sc2mac_dat_bits_data_8(sc2mac_dat_data8),
    io_sc2mac_dat_bits_data_9(sc2mac_dat_data9),
    io_sc2mac_dat_bits_data_10(sc2mac_dat_data10),
    io_sc2mac_dat_bits_data_11(sc2mac_dat_data11),
    io_sc2mac_dat_bits_data_12(sc2mac_dat_data12),
    io_sc2mac_dat_bits_data_13(sc2mac_dat_data13),
    io_sc2mac_dat_bits_data_14(sc2mac_dat_data14),
    io_sc2mac_dat_bits_data_15(sc2mac_dat_data15),
    io_sc2mac_dat_bits_data_16(sc2mac_dat_data16),
    io_sc2mac_dat_bits_data_17(sc2mac_dat_data17),
    io_sc2mac_dat_bits_data_18(sc2mac_dat_data18),
    io_sc2mac_dat_bits_data_19(sc2mac_dat_data19),
    io_sc2mac_dat_bits_data_20(sc2mac_dat_data20),
    io_sc2mac_dat_bits_data_21(sc2mac_dat_data21),
    io_sc2mac_dat_bits_data_22(sc2mac_dat_data22),
    io_sc2mac_dat_bits_data_23(sc2mac_dat_data23),
    io_sc2mac_dat_bits_data_24(sc2mac_dat_data24),
    io_sc2mac_dat_bits_data_25(sc2mac_dat_data25),
    io_sc2mac_dat_bits_data_26(sc2mac_dat_data26),
    io_sc2mac_dat_bits_data_27(sc2mac_dat_data27),
    io_sc2mac_dat_bits_data_28(sc2mac_dat_data28),
    io_sc2mac_dat_bits_data_29(sc2mac_dat_data29),
    io_sc2mac_dat_bits_data_30(sc2mac_dat_data30),
    io_sc2mac_dat_bits_data_31(sc2mac_dat_data31),
    io_sc2mac_dat_bits_data_32(sc2mac_dat_data32),
    io_sc2mac_dat_bits_data_33(sc2mac_dat_data33),
    io_sc2mac_dat_bits_data_34(sc2mac_dat_data34),
    io_sc2mac_dat_bits_data_35(sc2mac_dat_data35),
    io_sc2mac_dat_bits_data_36(sc2mac_dat_data36),
    io_sc2mac_dat_bits_data_37(sc2mac_dat_data37),
    io_sc2mac_dat_bits_data_38(sc2mac_dat_data38),
    io_sc2mac_dat_bits_data_39(sc2mac_dat_data39),
    io_sc2mac_dat_bits_data_40(sc2mac_dat_data40),
    io_sc2mac_dat_bits_data_41(sc2mac_dat_data41),
    io_sc2mac_dat_bits_data_42(sc2mac_dat_data42),
    io_sc2mac_dat_bits_data_43(sc2mac_dat_data43),
    io_sc2mac_dat_bits_data_44(sc2mac_dat_data44),
    io_sc2mac_dat_bits_data_45(sc2mac_dat_data45),
    io_sc2mac_dat_bits_data_46(sc2mac_dat_data46),
    io_sc2mac_dat_bits_data_47(sc2mac_dat_data47),
    io_sc2mac_dat_bits_data_48(sc2mac_dat_data48),
    io_sc2mac_dat_bits_data_49(sc2mac_dat_data49),
    io_sc2mac_dat_bits_data_50(sc2mac_dat_data50),
    io_sc2mac_dat_bits_data_51(sc2mac_dat_data51),
    io_sc2mac_dat_bits_data_52(sc2mac_dat_data52),
    io_sc2mac_dat_bits_data_53(sc2mac_dat_data53),
    io_sc2mac_dat_bits_data_54(sc2mac_dat_data54),
    io_sc2mac_dat_bits_data_55(sc2mac_dat_data55),
    io_sc2mac_dat_bits_data_56(sc2mac_dat_data56),
    io_sc2mac_dat_bits_data_57(sc2mac_dat_data57),
    io_sc2mac_dat_bits_data_58(sc2mac_dat_data58),
    io_sc2mac_dat_bits_data_59(sc2mac_dat_data59),
    io_sc2mac_dat_bits_data_60(sc2mac_dat_data60),
    io_sc2mac_dat_bits_data_61(sc2mac_dat_data61),
    io_sc2mac_dat_bits_data_62(sc2mac_dat_data62),
    io_sc2mac_dat_bits_data_63(sc2mac_dat_data63),
    io_sc2mac_dat_bits_pd(sc2mac_dat_pd),
    io_sc2mac_wt_valid(sc2mac_wt_pvld),
    io_sc2mac_wt_bits_sel_0(sc2mac_wt_sel[0]),
    io_sc2mac_wt_bits_sel_1(sc2mac_wt_sel[1]),
    io_sc2mac_wt_bits_sel_2(sc2mac_wt_sel[2]),
    io_sc2mac_wt_bits_sel_3(sc2mac_wt_sel[3]),
    io_sc2mac_wt_bits_sel_4(sc2mac_wt_sel[4]),
    io_sc2mac_wt_bits_sel_5(sc2mac_wt_sel[5]),
    io_sc2mac_wt_bits_sel_6(sc2mac_wt_sel[6]),
    io_sc2mac_wt_bits_sel_7(sc2mac_wt_sel[7]),
    io_sc2mac_wt_bits_sel_8(sc2mac_wt_sel[8]),
    io_sc2mac_wt_bits_sel_9(sc2mac_wt_sel[9]),
    io_sc2mac_wt_bits_sel_10(sc2mac_wt_sel[10]),
    io_sc2mac_wt_bits_sel_11(sc2mac_wt_sel[11]),
    io_sc2mac_wt_bits_sel_12(sc2mac_wt_sel[12]),
    io_sc2mac_wt_bits_sel_13(sc2mac_wt_sel[13]),
    io_sc2mac_wt_bits_sel_14(sc2mac_wt_sel[14]),
    io_sc2mac_wt_bits_sel_15(sc2mac_wt_sel[15]),
    io_sc2mac_wt_bits_mask_0(sc2mac_wt_mask[0]),
    io_sc2mac_wt_bits_mask_1(sc2mac_wt_mask[1]),
    io_sc2mac_wt_bits_mask_2(sc2mac_wt_mask[2]),
    io_sc2mac_wt_bits_mask_3(sc2mac_wt_mask[3]),
    io_sc2mac_wt_bits_mask_4(sc2mac_wt_mask[4]),
    io_sc2mac_wt_bits_mask_5(sc2mac_wt_mask[5]),
    io_sc2mac_wt_bits_mask_6(sc2mac_wt_mask[6]),
    io_sc2mac_wt_bits_mask_7(sc2mac_wt_mask[7]),
    io_sc2mac_wt_bits_mask_8(sc2mac_wt_mask[8]),
    io_sc2mac_wt_bits_mask_9(sc2mac_wt_mask[9]),
    io_sc2mac_wt_bits_mask_10(sc2mac_wt_mask[10]),
    io_sc2mac_wt_bits_mask_11(sc2mac_wt_mask[11]),
    io_sc2mac_wt_bits_mask_12(sc2mac_wt_mask[12]),
    io_sc2mac_wt_bits_mask_13(sc2mac_wt_mask[13]),
    io_sc2mac_wt_bits_mask_14(sc2mac_wt_mask[14]),
    io_sc2mac_wt_bits_mask_15(sc2mac_wt_mask[15]),
    io_sc2mac_wt_bits_mask_16(sc2mac_wt_mask[16]),
    io_sc2mac_wt_bits_mask_17(sc2mac_wt_mask[17]),
    io_sc2mac_wt_bits_mask_18(sc2mac_wt_mask[18]),
    io_sc2mac_wt_bits_mask_19(sc2mac_wt_mask[19]),
    io_sc2mac_wt_bits_mask_20(sc2mac_wt_mask[20]),
    io_sc2mac_wt_bits_mask_21(sc2mac_wt_mask[21]),
    io_sc2mac_wt_bits_mask_22(sc2mac_wt_mask[22]),
    io_sc2mac_wt_bits_mask_23(sc2mac_wt_mask[23]),
    io_sc2mac_wt_bits_mask_24(sc2mac_wt_mask[24]),
    io_sc2mac_wt_bits_mask_25(sc2mac_wt_mask[25]),
    io_sc2mac_wt_bits_mask_26(sc2mac_wt_mask[26]),
    io_sc2mac_wt_bits_mask_27(sc2mac_wt_mask[27]),
    io_sc2mac_wt_bits_mask_28(sc2mac_wt_mask[28]),
    io_sc2mac_wt_bits_mask_29(sc2mac_wt_mask[29]),
    io_sc2mac_wt_bits_mask_30(sc2mac_wt_mask[30]),
    io_sc2mac_wt_bits_mask_31(sc2mac_wt_mask[31]),
    io_sc2mac_wt_bits_mask_32(sc2mac_wt_mask[32]),
    io_sc2mac_wt_bits_mask_33(sc2mac_wt_mask[33]),
    io_sc2mac_wt_bits_mask_34(sc2mac_wt_mask[34]),
    io_sc2mac_wt_bits_mask_35(sc2mac_wt_mask[35]),
    io_sc2mac_wt_bits_mask_36(sc2mac_wt_mask[36]),
    io_sc2mac_wt_bits_mask_37(sc2mac_wt_mask[37]),
    io_sc2mac_wt_bits_mask_38(sc2mac_wt_mask[38]),
    io_sc2mac_wt_bits_mask_39(sc2mac_wt_mask[39]),
    io_sc2mac_wt_bits_mask_40(sc2mac_wt_mask[40]),
    io_sc2mac_wt_bits_mask_41(sc2mac_wt_mask[41]),
    io_sc2mac_wt_bits_mask_42(sc2mac_wt_mask[42]),
    io_sc2mac_wt_bits_mask_43(sc2mac_wt_mask[43]),
    io_sc2mac_wt_bits_mask_44(sc2mac_wt_mask[44]),
    io_sc2mac_wt_bits_mask_45(sc2mac_wt_mask[45]),
    io_sc2mac_wt_bits_mask_46(sc2mac_wt_mask[46]),
    io_sc2mac_wt_bits_mask_47(sc2mac_wt_mask[47]),
    io_sc2mac_wt_bits_mask_48(sc2mac_wt_mask[48]),
    io_sc2mac_wt_bits_mask_49(sc2mac_wt_mask[49]),
    io_sc2mac_wt_bits_mask_50(sc2mac_wt_mask[50]),
    io_sc2mac_wt_bits_mask_51(sc2mac_wt_mask[51]),
    io_sc2mac_wt_bits_mask_52(sc2mac_wt_mask[52]),
    io_sc2mac_wt_bits_mask_53(sc2mac_wt_mask[53]),
    io_sc2mac_wt_bits_mask_54(sc2mac_wt_mask[54]),
    io_sc2mac_wt_bits_mask_55(sc2mac_wt_mask[55]),
    io_sc2mac_wt_bits_mask_56(sc2mac_wt_mask[56]),
    io_sc2mac_wt_bits_mask_57(sc2mac_wt_mask[57]),
    io_sc2mac_wt_bits_mask_58(sc2mac_wt_mask[58]),
    io_sc2mac_wt_bits_mask_59(sc2mac_wt_mask[59]),
    io_sc2mac_wt_bits_mask_60(sc2mac_wt_mask[60]),
    io_sc2mac_wt_bits_mask_61(sc2mac_wt_mask[61]),
    io_sc2mac_wt_bits_mask_62(sc2mac_wt_mask[62]),
    io_sc2mac_wt_bits_mask_63(sc2mac_wt_mask[63]),
    io_sc2mac_wt_bits_data_0(sc2mac_wt_data0),
    io_sc2mac_wt_bits_data_1(sc2mac_wt_data1),
    io_sc2mac_wt_bits_data_2(sc2mac_wt_data2),
    io_sc2mac_wt_bits_data_3(sc2mac_wt_data3),
    io_sc2mac_wt_bits_data_4(sc2mac_wt_data4),
    io_sc2mac_wt_bits_data_5(sc2mac_wt_data5),
    io_sc2mac_wt_bits_data_6(sc2mac_wt_data6),
    io_sc2mac_wt_bits_data_7(sc2mac_wt_data7),
    io_sc2mac_wt_bits_data_8(sc2mac_wt_data8),
    io_sc2mac_wt_bits_data_9(sc2mac_wt_data9),
    io_sc2mac_wt_bits_data_10(sc2mac_wt_data10),
    io_sc2mac_wt_bits_data_11(sc2mac_wt_data11),
    io_sc2mac_wt_bits_data_12(sc2mac_wt_data12),
    io_sc2mac_wt_bits_data_13(sc2mac_wt_data13),
    io_sc2mac_wt_bits_data_14(sc2mac_wt_data14),
    io_sc2mac_wt_bits_data_15(sc2mac_wt_data15),
    io_sc2mac_wt_bits_data_16(sc2mac_wt_data16),
    io_sc2mac_wt_bits_data_17(sc2mac_wt_data17),
    io_sc2mac_wt_bits_data_18(sc2mac_wt_data18),
    io_sc2mac_wt_bits_data_19(sc2mac_wt_data19),
    io_sc2mac_wt_bits_data_20(sc2mac_wt_data20),
    io_sc2mac_wt_bits_data_21(sc2mac_wt_data21),
    io_sc2mac_wt_bits_data_22(sc2mac_wt_data22),
    io_sc2mac_wt_bits_data_23(sc2mac_wt_data23),
    io_sc2mac_wt_bits_data_24(sc2mac_wt_data24),
    io_sc2mac_wt_bits_data_25(sc2mac_wt_data25),
    io_sc2mac_wt_bits_data_26(sc2mac_wt_data26),
    io_sc2mac_wt_bits_data_27(sc2mac_wt_data27),
    io_sc2mac_wt_bits_data_28(sc2mac_wt_data28),
    io_sc2mac_wt_bits_data_29(sc2mac_wt_data29),
    io_sc2mac_wt_bits_data_30(sc2mac_wt_data30),
    io_sc2mac_wt_bits_data_31(sc2mac_wt_data31),
    io_sc2mac_wt_bits_data_32(sc2mac_wt_data32),
    io_sc2mac_wt_bits_data_33(sc2mac_wt_data33),
    io_sc2mac_wt_bits_data_34(sc2mac_wt_data34),
    io_sc2mac_wt_bits_data_35(sc2mac_wt_data35),
    io_sc2mac_wt_bits_data_36(sc2mac_wt_data36),
    io_sc2mac_wt_bits_data_37(sc2mac_wt_data37),
    io_sc2mac_wt_bits_data_38(sc2mac_wt_data38),
    io_sc2mac_wt_bits_data_39(sc2mac_wt_data39),
    io_sc2mac_wt_bits_data_40(sc2mac_wt_data40),
    io_sc2mac_wt_bits_data_41(sc2mac_wt_data41),
    io_sc2mac_wt_bits_data_42(sc2mac_wt_data42),
    io_sc2mac_wt_bits_data_43(sc2mac_wt_data43),
    io_sc2mac_wt_bits_data_44(sc2mac_wt_data44),
    io_sc2mac_wt_bits_data_45(sc2mac_wt_data45),
    io_sc2mac_wt_bits_data_46(sc2mac_wt_data46),
    io_sc2mac_wt_bits_data_47(sc2mac_wt_data47),
    io_sc2mac_wt_bits_data_48(sc2mac_wt_data48),
    io_sc2mac_wt_bits_data_49(sc2mac_wt_data49),
    io_sc2mac_wt_bits_data_50(sc2mac_wt_data50),
    io_sc2mac_wt_bits_data_51(sc2mac_wt_data51),
    io_sc2mac_wt_bits_data_52(sc2mac_wt_data52),
    io_sc2mac_wt_bits_data_53(sc2mac_wt_data53),
    io_sc2mac_wt_bits_data_54(sc2mac_wt_data54),
    io_sc2mac_wt_bits_data_55(sc2mac_wt_data55),
    io_sc2mac_wt_bits_data_56(sc2mac_wt_data56),
    io_sc2mac_wt_bits_data_57(sc2mac_wt_data57),
    io_sc2mac_wt_bits_data_58(sc2mac_wt_data58),
    io_sc2mac_wt_bits_data_59(sc2mac_wt_data59),
    io_sc2mac_wt_bits_data_60(sc2mac_wt_data60),
    io_sc2mac_wt_bits_data_61(sc2mac_wt_data61),
    io_sc2mac_wt_bits_data_62(sc2mac_wt_data62),
    io_sc2mac_wt_bits_data_63(sc2mac_wt_data63),
    io_mac2accu_valid(mac2accu_pvld),
    io_mac2accu_bits_mask_0(mac2accu_mask[0]),
    io_mac2accu_bits_mask_1(mac2accu_mask[1]),
    io_mac2accu_bits_mask_2(mac2accu_mask[2]),
    io_mac2accu_bits_mask_3(mac2accu_mask[3]),
    io_mac2accu_bits_mask_4(mac2accu_mask[4]),
    io_mac2accu_bits_mask_5(mac2accu_mask[5]),
    io_mac2accu_bits_mask_6(mac2accu_mask[6]),
    io_mac2accu_bits_mask_7(mac2accu_mask[7]),
    io_mac2accu_bits_mask_8(mac2accu_mask[8]),
    io_mac2accu_bits_mask_9(mac2accu_mask[9]),
    io_mac2accu_bits_mask_10(mac2accu_mask[10]),
    io_mac2accu_bits_mask_11(mac2accu_mask[11]),
    io_mac2accu_bits_mask_12(mac2accu_mask[12]),
    io_mac2accu_bits_mask_13(mac2accu_mask[13]),
    io_mac2accu_bits_mask_14(mac2accu_mask[14]),
    io_mac2accu_bits_mask_15(mac2accu_mask[15]),
    io_mac2accu_bits_data_0(mac2accu_data0),
    io_mac2accu_bits_data_1(mac2accu_data1),
    io_mac2accu_bits_data_2(mac2accu_data2),
    io_mac2accu_bits_data_3(mac2accu_data3),
    io_mac2accu_bits_data_4(mac2accu_data4),
    io_mac2accu_bits_data_5(mac2accu_data5),
    io_mac2accu_bits_data_6(mac2accu_data6),
    io_mac2accu_bits_data_7(mac2accu_data7),
    io_mac2accu_bits_data_8(mac2accu_data8),
    io_mac2accu_bits_data_9(mac2accu_data9),
    io_mac2accu_bits_data_10(mac2accu_data10),
    io_mac2accu_bits_data_11(mac2accu_data11),
    io_mac2accu_bits_data_12(mac2accu_data12),
    io_mac2accu_bits_data_13(mac2accu_data13),
    io_mac2accu_bits_data_14(mac2accu_data14),
    io_mac2accu_bits_data_15(mac2accu_data15),
    io_mac2accu_bits_pd(mac2accu_pd),
    io_dp2reg_done(dp2reg_done)
);

endmodule