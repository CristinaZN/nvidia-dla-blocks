// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_cfgrom.v
`include "simulate_x_tick.vh"
module NV_NVDLA_cfgrom (
   nvdla_core_clk
  ,nvdla_core_rstn
  ,csb2cfgrom_req_pd
  ,csb2cfgrom_req_pvld
  ,csb2cfgrom_req_prdy
  ,cfgrom2csb_resp_pd
  ,cfgrom2csb_resp_valid
  );
input nvdla_core_clk;
input nvdla_core_rstn;
input [62:0] csb2cfgrom_req_pd;
input csb2cfgrom_req_pvld;
output csb2cfgrom_req_prdy;
output [33:0] cfgrom2csb_resp_pd;
output cfgrom2csb_resp_valid;
/////////////////////////////////////////////
wrapper_cfgrom wrapper_cfgrom(
    .nvdla_core_clk(nvdla_core_clk),
    .nvdla_core_rstn(nvdla_core_rstn),
    .csb2cfgrom_req_pd(csb2cfgrom_req_pd),
    .csb2cfgrom_req_pvld(csb2cfgrom_req_pvld),
    .csb2cfgrom_req_prdy(csb2cfgrom_req_prdy),
    .cfgrom2csb_resp_pd(cfgrom2csb_resp_pd),
    .cfgrom2csb_resp_valid(cfgrom2csb_resp_valid)
);
endmodule
