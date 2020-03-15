module wrapper_cacc(
    cacc2sdp_ready //|< i
    ,csb2cacc_req_pd //|< i
    ,csb2cacc_req_pvld //|< i
    ,dla_clk_ovr_on_sync //|< i
    ,global_clk_ovr_on_sync //|< i
//: for(my $i=0; $i<32/2 ; $i++){
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


//======================nvdla part============================
    input nvdla_core_clk; /* csb2cacc_req; cacc2csb_resp; mac_a2accu; mac_b2accu; cacc2sdp; accu2sc_credit; cacc2glb_done_intr */
    input nvdla_core_rstn; /* csb2cacc_req; cacc2csb_resp; mac_a2accu; mac_b2accu; cacc2sdp; accu2sc_credit; cacc2glb_done_intr */
    input [31:0] pwrbus_ram_pd;
    input csb2cacc_req_pvld; /* data valid */
    output csb2cacc_req_prdy; /* data return handshake */
    input [62:0] csb2cacc_req_pd;
    output cacc2csb_resp_valid; /* data valid */
    output [33:0] cacc2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33;33  */
    input mac_a2accu_pvld; /* data valid */
    input [32/2-1:0] mac_a2accu_mask;
    input mac_a2accu_mode;
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
    input dla_clk_ovr_on_sync;
    input global_clk_ovr_on_sync;
    input tmc2slcg_disable_clock_gating;
    //======================nvdla part end========================

    //======================sodla part============================

    wire          io_nvdla_clock_nvdla_core_clk; // @[:@5483.4]
    wire          io_nvdla_clock_dla_clk_ovr_on_sync; // @[:@5483.4]
    wire          io_nvdla_clock_global_clk_ovr_on_sync; // @[:@5483.4]
    wire          io_nvdla_clock_tmc2slcg_disable_clock_gating; // @[:@5483.4]
    wire          io_nvdla_core_rstn; // @[:@5483.4]
    wire          io_csb2cacc_req_ready; // @[:@5483.4]
    wire          io_csb2cacc_req_valid; // @[:@5483.4]
    wire  [62:0]  io_csb2cacc_req_bits; // @[:@5483.4]
    wire          io_csb2cacc_resp_valid; // @[:@5483.4]
    wire  [33:0]  io_csb2cacc_resp_bits; // @[:@5483.4]
    wire          io_mac_a2accu_valid; // @[:@5483.4]
    wire          io_mac_a2accu_bits_mask_0; // @[:@5483.4]
    wire          io_mac_a2accu_bits_mask_1; // @[:@5483.4]
    wire          io_mac_a2accu_bits_mask_2; // @[:@5483.4]
    wire          io_mac_a2accu_bits_mask_3; // @[:@5483.4]
    wire          io_mac_a2accu_bits_mask_4; // @[:@5483.4]
    wire          io_mac_a2accu_bits_mask_5; // @[:@5483.4]
    wire          io_mac_a2accu_bits_mask_6; // @[:@5483.4]
    wire          io_mac_a2accu_bits_mask_7; // @[:@5483.4]
    wire          io_mac_a2accu_bits_mask_8; // @[:@5483.4]
    wire          io_mac_a2accu_bits_mask_9; // @[:@5483.4]
    wire          io_mac_a2accu_bits_mask_10; // @[:@5483.4]
    wire          io_mac_a2accu_bits_mask_11; // @[:@5483.4]
    wire          io_mac_a2accu_bits_mask_12; // @[:@5483.4]
    wire          io_mac_a2accu_bits_mask_13; // @[:@5483.4]
    wire          io_mac_a2accu_bits_mask_14; // @[:@5483.4]
    wire          io_mac_a2accu_bits_mask_15; // @[:@5483.4]
    wire  [21:0]  io_mac_a2accu_bits_data_0; // @[:@5483.4]
    wire  [21:0]  io_mac_a2accu_bits_data_1; // @[:@5483.4]
    wire  [21:0]  io_mac_a2accu_bits_data_2; // @[:@5483.4]
    wire  [21:0]  io_mac_a2accu_bits_data_3; // @[:@5483.4]
    wire  [21:0]  io_mac_a2accu_bits_data_4; // @[:@5483.4]
    wire  [21:0]  io_mac_a2accu_bits_data_5; // @[:@5483.4]
    wire  [21:0]  io_mac_a2accu_bits_data_6; // @[:@5483.4]
    wire  [21:0]  io_mac_a2accu_bits_data_7; // @[:@5483.4]
    wire  [21:0]  io_mac_a2accu_bits_data_8; // @[:@5483.4]
    wire  [21:0]  io_mac_a2accu_bits_data_9; // @[:@5483.4]
    wire  [21:0]  io_mac_a2accu_bits_data_10; // @[:@5483.4]
    wire  [21:0]  io_mac_a2accu_bits_data_11; // @[:@5483.4]
    wire  [21:0]  io_mac_a2accu_bits_data_12; // @[:@5483.4]
    wire  [21:0]  io_mac_a2accu_bits_data_13; // @[:@5483.4]
    wire  [21:0]  io_mac_a2accu_bits_data_14; // @[:@5483.4]
    wire  [21:0]  io_mac_a2accu_bits_data_15; // @[:@5483.4]
    wire  [8:0]   io_mac_a2accu_bits_pd; // @[:@5483.4]
    wire          io_mac_b2accu_valid; // @[:@5483.4]
    wire          io_mac_b2accu_bits_mask_0; // @[:@5483.4]
    wire          io_mac_b2accu_bits_mask_1; // @[:@5483.4]
    wire          io_mac_b2accu_bits_mask_2; // @[:@5483.4]
    wire          io_mac_b2accu_bits_mask_3; // @[:@5483.4]
    wire          io_mac_b2accu_bits_mask_4; // @[:@5483.4]
    wire          io_mac_b2accu_bits_mask_5; // @[:@5483.4]
    wire          io_mac_b2accu_bits_mask_6; // @[:@5483.4]
    wire          io_mac_b2accu_bits_mask_7; // @[:@5483.4]
    wire          io_mac_b2accu_bits_mask_8; // @[:@5483.4]
    wire          io_mac_b2accu_bits_mask_9; // @[:@5483.4]
    wire          io_mac_b2accu_bits_mask_10; // @[:@5483.4]
    wire          io_mac_b2accu_bits_mask_11; // @[:@5483.4]
    wire          io_mac_b2accu_bits_mask_12; // @[:@5483.4]
    wire          io_mac_b2accu_bits_mask_13; // @[:@5483.4]
    wire          io_mac_b2accu_bits_mask_14; // @[:@5483.4]
    wire          io_mac_b2accu_bits_mask_15; // @[:@5483.4]
    wire  [21:0]  io_mac_b2accu_bits_data_0; // @[:@5483.4]
    wire  [21:0]  io_mac_b2accu_bits_data_1; // @[:@5483.4]
    wire  [21:0]  io_mac_b2accu_bits_data_2; // @[:@5483.4]
    wire  [21:0]  io_mac_b2accu_bits_data_3; // @[:@5483.4]
    wire  [21:0]  io_mac_b2accu_bits_data_4; // @[:@5483.4]
    wire  [21:0]  io_mac_b2accu_bits_data_5; // @[:@5483.4]
    wire  [21:0]  io_mac_b2accu_bits_data_6; // @[:@5483.4]
    wire  [21:0]  io_mac_b2accu_bits_data_7; // @[:@5483.4]
    wire  [21:0]  io_mac_b2accu_bits_data_8; // @[:@5483.4]
    wire  [21:0]  io_mac_b2accu_bits_data_9; // @[:@5483.4]
    wire  [21:0]  io_mac_b2accu_bits_data_10; // @[:@5483.4]
    wire  [21:0]  io_mac_b2accu_bits_data_11; // @[:@5483.4]
    wire  [21:0]  io_mac_b2accu_bits_data_12; // @[:@5483.4]
    wire  [21:0]  io_mac_b2accu_bits_data_13; // @[:@5483.4]
    wire  [21:0]  io_mac_b2accu_bits_data_14; // @[:@5483.4]
    wire  [21:0]  io_mac_b2accu_bits_data_15; // @[:@5483.4]
    wire  [8:0]   io_mac_b2accu_bits_pd; // @[:@5483.4]
    wire          io_cacc2sdp_pd_ready; // @[:@5483.4]
    wire          io_cacc2sdp_pd_valid; // @[:@5483.4]
    wire  [513:0] io_cacc2sdp_pd_bits; // @[:@5483.4]
    wire          io_accu2sc_credit_size_valid; // @[:@5483.4]
    wire  [2:0]   io_accu2sc_credit_size_bits; // @[:@5483.4]
    wire  [1:0]   io_cacc2glb_done_intr_pd; // @[:@5483.4]
    wire  [31:0]  io_pwrbus_ram_pd;// @[:@5483.4]
    //=====================sodla part end=========================
    //
    //===========connect nvdla_cmac to sodla_cmac=================
    assign io_nvdla_clock_nvdla_core_clk=nvdla_core_clk;
    assign io_nvdla_clock_dla_clk_ovr_on_sync=dla_clk_ovr_on_sync;
    assign io_nvdla_clock_global_clk_ovr_on_sync=global_clk_ovr_on_sync;
    assign io_nvdla_clock_tmc2slcg_disable_clock_gating=tmc2slcg_disable_clock_gating;
    assign io_nvdla_core_rstn=nvdla_core_rstn;
    assign io_csb2cacc_req_ready=csb2cacc_req_prdy;
    assign io_csb2cacc_req_valid=csb2cacc_req_pvld;
    assign io_csb2cacc_req_bits=csb2cacc_req_pd;
    assign io_csb2cacc_resp_valid=cacc2csb_resp_valid;
    assign io_csb2cacc_resp_bits=cacc2csb_resp_pd;
    assign io_mac_a2accu_valid=mac_a2accu_pvld;
    assign io_mac_a2accu_bits_mask_0=mac_a2accu_mask[0];
    assign io_mac_a2accu_bits_mask_1=mac_a2accu_mask[1];
    assign io_mac_a2accu_bits_mask_2=mac_a2accu_mask[2];
    assign io_mac_a2accu_bits_mask_3=mac_a2accu_mask[3];
    assign io_mac_a2accu_bits_mask_4=mac_a2accu_mask[4];
    assign io_mac_a2accu_bits_mask_5=mac_a2accu_mask[5];
    assign io_mac_a2accu_bits_mask_6=mac_a2accu_mask[6];
    assign io_mac_a2accu_bits_mask_7=mac_a2accu_mask[7];
    assign io_mac_a2accu_bits_mask_8=mac_a2accu_mask[8];
    assign io_mac_a2accu_bits_mask_9=mac_a2accu_mask[9];
    assign io_mac_a2accu_bits_mask_10=mac_a2accu_mask[10];
    assign io_mac_a2accu_bits_mask_11=mac_a2accu_mask[11];
    assign io_mac_a2accu_bits_mask_12=mac_a2accu_mask[12];
    assign io_mac_a2accu_bits_mask_13=mac_a2accu_mask[13];
    assign io_mac_a2accu_bits_mask_14=mac_a2accu_mask[14];
    assign io_mac_a2accu_bits_mask_15=mac_a2accu_mask[15];
    assign io_mac_a2accu_bits_data_0=mac_a2accu_data0;
    assign io_mac_a2accu_bits_data_1=mac_a2accu_data1;
    assign io_mac_a2accu_bits_data_2=mac_a2accu_data2;
    assign io_mac_a2accu_bits_data_3=mac_a2accu_data3;
    assign io_mac_a2accu_bits_data_4=mac_a2accu_data4;
    assign io_mac_a2accu_bits_data_5=mac_a2accu_data5;
    assign io_mac_a2accu_bits_data_6=mac_a2accu_data6;
    assign io_mac_a2accu_bits_data_7=mac_a2accu_data7;
    assign io_mac_a2accu_bits_data_8=mac_a2accu_data8;
    assign io_mac_a2accu_bits_data_9=mac_a2accu_data9;
    assign io_mac_a2accu_bits_data_10=mac_a2accu_data10;
    assign io_mac_a2accu_bits_data_11=mac_a2accu_data11;
    assign io_mac_a2accu_bits_data_12=mac_a2accu_data12;
    assign io_mac_a2accu_bits_data_13=mac_a2accu_data13;
    assign io_mac_a2accu_bits_data_14=mac_a2accu_data14;
    assign io_mac_a2accu_bits_data_15=mac_a2accu_data15;
    assign io_mac_a2accu_bits_pd=mac_a2accu_pd;
    assign io_mac_b2accu_valid=mac_b2accu_pvld;
    assign io_mac_b2accu_bits_mask_0=mac_b2accu_mask[0];
    assign io_mac_b2accu_bits_mask_1=mac_b2accu_mask[1];
    assign io_mac_b2accu_bits_mask_2=mac_b2accu_mask[2];
    assign io_mac_b2accu_bits_mask_3=mac_b2accu_mask[3];
    assign io_mac_b2accu_bits_mask_4=mac_b2accu_mask[4];
    assign io_mac_b2accu_bits_mask_5=mac_b2accu_mask[5];
    assign io_mac_b2accu_bits_mask_6=mac_b2accu_mask[6];
    assign io_mac_b2accu_bits_mask_7=mac_b2accu_mask[7];
    assign io_mac_b2accu_bits_mask_8=mac_b2accu_mask[8];
    assign io_mac_b2accu_bits_mask_9=mac_b2accu_mask[9];
    assign io_mac_b2accu_bits_mask_10=mac_b2accu_mask[10];
    assign io_mac_b2accu_bits_mask_11=mac_b2accu_mask[11];
    assign io_mac_b2accu_bits_mask_12=mac_b2accu_mask[12];
    assign io_mac_b2accu_bits_mask_13=mac_b2accu_mask[13];
    assign io_mac_b2accu_bits_mask_14=mac_b2accu_mask[14];
    assign io_mac_b2accu_bits_mask_15=mac_b2accu_mask[15];
    assign io_mac_b2accu_bits_data_0=mac_b2accu_data0;
    assign io_mac_b2accu_bits_data_1=mac_b2accu_data1;
    assign io_mac_b2accu_bits_data_2=mac_b2accu_data2;
    assign io_mac_b2accu_bits_data_3=mac_b2accu_data3;
    assign io_mac_b2accu_bits_data_4=mac_b2accu_data4;
    assign io_mac_b2accu_bits_data_5=mac_b2accu_data5;
    assign io_mac_b2accu_bits_data_6=mac_b2accu_data6;
    assign io_mac_b2accu_bits_data_7=mac_b2accu_data7;
    assign io_mac_b2accu_bits_data_8=mac_b2accu_data8;
    assign io_mac_b2accu_bits_data_9=mac_b2accu_data9;
    assign io_mac_b2accu_bits_data_10=mac_b2accu_data10;
    assign io_mac_b2accu_bits_data_11=mac_b2accu_data11;
    assign io_mac_b2accu_bits_data_12=mac_b2accu_data12;
    assign io_mac_b2accu_bits_data_13=mac_b2accu_data13;
    assign io_mac_b2accu_bits_data_14=mac_b2accu_data14;
    assign io_mac_b2accu_bits_data_15=mac_b2accu_data15;
    assign io_mac_b2accu_bits_pd=mac_b2accu_pd;
    assign io_cacc2sdp_pd_ready=cacc2sdp_ready;
    assign io_cacc2sdp_pd_valid=io_cacc2sdp_pd_valid;
    assign io_cacc2sdp_pd_bits=cacc2sdp_pd;
    assign io_accu2sc_credit_size_valid=accu2sc_credit_vld;
    assign io_accu2sc_credit_size_bits=accu2sc_credit_size;
    assign io_cacc2glb_done_intr_pd=cacc2glb_done_intr_pd;
    assign io_pwrbus_ram_pd=io_pwrbus_ram_pd;


    NV_soDLA_cacc   NV_soDLA_cacc(
         .io_nvdla_clock_nvdla_core_clk(io_nvdla_clock_nvdla_core_clk),
         .io_nvdla_clock_dla_clk_ovr_on_sync(io_nvdla_clock_dla_clk_ovr_on_sync),
         .io_nvdla_clock_global_clk_ovr_on_sync(io_nvdla_clock_global_clk_ovr_on_sync),
         .io_nvdla_clock_tmc2slcg_disable_clock_gating(io_nvdla_clock_tmc2slcg_disable_clock_gating),
         .io_nvdla_core_rstn(io_nvdla_core_rstn),
         .io_csb2cacc_req_ready(io_csb2cacc_req_ready),
         .io_csb2cacc_req_valid(io_csb2cacc_req_valid),
         .io_csb2cacc_req_bits(io_csb2cacc_req_bits),
         .io_csb2cacc_resp_valid(io_csb2cacc_resp_valid),
         .io_csb2cacc_resp_bits(io_csb2cacc_resp_bits),
         .io_mac_a2accu_valid(io_mac_a2accu_valid),
         .io_mac_a2accu_bits_mask_0(io_mac_a2accu_bits_mask_0),
         .io_mac_a2accu_bits_mask_1(io_mac_a2accu_bits_mask_1),
         .io_mac_a2accu_bits_mask_2(io_mac_a2accu_bits_mask_2),
         .io_mac_a2accu_bits_mask_3(io_mac_a2accu_bits_mask_3),
         .io_mac_a2accu_bits_mask_4(io_mac_a2accu_bits_mask_4),
         .io_mac_a2accu_bits_mask_5(io_mac_a2accu_bits_mask_5),
         .io_mac_a2accu_bits_mask_6(io_mac_a2accu_bits_mask_6),
         .io_mac_a2accu_bits_mask_7(io_mac_a2accu_bits_mask_7),
         .io_mac_a2accu_bits_mask_8(io_mac_a2accu_bits_mask_8),
         .io_mac_a2accu_bits_mask_9(io_mac_a2accu_bits_mask_9),
         .io_mac_a2accu_bits_mask_10(io_mac_a2accu_bits_mask_10),
         .io_mac_a2accu_bits_mask_11(io_mac_a2accu_bits_mask_11),
         .io_mac_a2accu_bits_mask_12(io_mac_a2accu_bits_mask_12),
         .io_mac_a2accu_bits_mask_13(io_mac_a2accu_bits_mask_13),
         .io_mac_a2accu_bits_mask_14(io_mac_a2accu_bits_mask_14),
         .io_mac_a2accu_bits_mask_15(io_mac_a2accu_bits_mask_15),
         .io_mac_a2accu_bits_data_0(io_mac_a2accu_bits_data_0),
         .io_mac_a2accu_bits_data_1(io_mac_a2accu_bits_data_1),
         .io_mac_a2accu_bits_data_2(io_mac_a2accu_bits_data_2),
         .io_mac_a2accu_bits_data_3(io_mac_a2accu_bits_data_3),
         .io_mac_a2accu_bits_data_4(io_mac_a2accu_bits_data_4),
         .io_mac_a2accu_bits_data_5(io_mac_a2accu_bits_data_5),
         .io_mac_a2accu_bits_data_6(io_mac_a2accu_bits_data_6),
         .io_mac_a2accu_bits_data_7(io_mac_a2accu_bits_data_7),
         .io_mac_a2accu_bits_data_8(io_mac_a2accu_bits_data_8),
         .io_mac_a2accu_bits_data_9(io_mac_a2accu_bits_data_9),
         .io_mac_a2accu_bits_data_10(io_mac_a2accu_bits_data_10),
         .io_mac_a2accu_bits_data_11(io_mac_a2accu_bits_data_11),
         .io_mac_a2accu_bits_data_12(io_mac_a2accu_bits_data_12),
         .io_mac_a2accu_bits_data_13(io_mac_a2accu_bits_data_13),
         .io_mac_a2accu_bits_data_14(io_mac_a2accu_bits_data_14),
         .io_mac_a2accu_bits_data_15(io_mac_a2accu_bits_data_15),
         .io_mac_a2accu_bits_pd(io_mac_a2accu_bits_pd),
         .io_mac_b2accu_valid(io_mac_b2accu_valid),
         .io_mac_b2accu_bits_mask_0(io_mac_b2accu_bits_mask_0),
         .io_mac_b2accu_bits_mask_1(io_mac_b2accu_bits_mask_1),
         .io_mac_b2accu_bits_mask_2(io_mac_b2accu_bits_mask_2),
         .io_mac_b2accu_bits_mask_3(io_mac_b2accu_bits_mask_3),
         .io_mac_b2accu_bits_mask_4(io_mac_b2accu_bits_mask_4),
         .io_mac_b2accu_bits_mask_5(io_mac_b2accu_bits_mask_5),
         .io_mac_b2accu_bits_mask_6(io_mac_b2accu_bits_mask_6),
         .io_mac_b2accu_bits_mask_7(io_mac_b2accu_bits_mask_7),
         .io_mac_b2accu_bits_mask_8(io_mac_b2accu_bits_mask_8),
         .io_mac_b2accu_bits_mask_9(io_mac_b2accu_bits_mask_9),
         .io_mac_b2accu_bits_mask_10(io_mac_b2accu_bits_mask_10),
         .io_mac_b2accu_bits_mask_11(io_mac_b2accu_bits_mask_11),
         .io_mac_b2accu_bits_mask_12(io_mac_b2accu_bits_mask_12),
         .io_mac_b2accu_bits_mask_13(io_mac_b2accu_bits_mask_13),
         .io_mac_b2accu_bits_mask_14(io_mac_b2accu_bits_mask_14),
         .io_mac_b2accu_bits_mask_15(io_mac_b2accu_bits_mask_15),
         .io_mac_b2accu_bits_data_0(io_mac_b2accu_bits_data_0),
         .io_mac_b2accu_bits_data_1(io_mac_b2accu_bits_data_1),
         .io_mac_b2accu_bits_data_2(io_mac_b2accu_bits_data_2),
         .io_mac_b2accu_bits_data_3(io_mac_b2accu_bits_data_3),
         .io_mac_b2accu_bits_data_4(io_mac_b2accu_bits_data_4),
         .io_mac_b2accu_bits_data_5(io_mac_b2accu_bits_data_5),
         .io_mac_b2accu_bits_data_6(io_mac_b2accu_bits_data_6),
         .io_mac_b2accu_bits_data_7(io_mac_b2accu_bits_data_7),
         .io_mac_b2accu_bits_data_8(io_mac_b2accu_bits_data_8),
         .io_mac_b2accu_bits_data_9(io_mac_b2accu_bits_data_9),
         .io_mac_b2accu_bits_data_10(io_mac_b2accu_bits_data_10),
         .io_mac_b2accu_bits_data_11(io_mac_b2accu_bits_data_11),
         .io_mac_b2accu_bits_data_12(io_mac_b2accu_bits_data_12),
         .io_mac_b2accu_bits_data_13(io_mac_b2accu_bits_data_13),
         .io_mac_b2accu_bits_data_14(io_mac_b2accu_bits_data_14),
         .io_mac_b2accu_bits_data_15(io_mac_b2accu_bits_data_15),
         .io_mac_b2accu_bits_pd(io_mac_b2accu_bits_pd),
         .io_cacc2sdp_pd_ready(io_cacc2sdp_pd_ready),
         .io_cacc2sdp_pd_valid(io_cacc2sdp_pd_valid),
         .io_cacc2sdp_pd_bits(io_cacc2sdp_pd_bits),
         .io_accu2sc_credit_size_valid(io_accu2sc_credit_size_valid),
         .io_accu2sc_credit_size_bits(io_accu2sc_credit_size_bits),
         .io_cacc2glb_done_intr_pd(io_cacc2glb_done_intr_pd),
         .io_pwrbus_ram_pd(io_pwrbus_ram_pd)
    );

endmodule

