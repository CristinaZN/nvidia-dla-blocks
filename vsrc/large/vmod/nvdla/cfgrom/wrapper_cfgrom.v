module wrapper_cfgrom(
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
NV_soDLA_cfgrom soDLA_cfgrom(
    .io_nvdla_core_clk(nvdla_core_clk),
    .io_nvdla_core_rstn(nvdla_core_rstn),
    .io_csb2cfgrom_req_ready(csb2cfgrom_req_prdy),
    .io_csb2cfgrom_req_valid(csb2cfgrom_req_pvld),
    .io_csb2cfgrom_req_bits(csb2cfgrom_req_pd),
    .io_csb2cfgrom_resp_valid(cfgrom2csb_resp_valid),
    .io_csb2cfgrom_resp_bits(cfgrom2csb_resp_pd)
);
endmodule