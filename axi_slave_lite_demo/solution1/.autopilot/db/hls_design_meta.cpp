#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_ar_araddr", 64, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("s_axi_ar_arready", 1, hls_out, 1, "ap_none", "out_data", 1),
	Port_Property("s_axi_ar_arvalid", 1, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("s_axi_aw_awaddr", 64, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("s_axi_aw_awready", 1, hls_out, 4, "ap_none", "out_data", 1),
	Port_Property("s_axi_aw_awvalid", 1, hls_in, 5, "ap_none", "in_data", 1),
	Port_Property("s_axi_b_bresp", 2, hls_out, 6, "ap_none", "out_data", 1),
	Port_Property("s_axi_b_bready", 1, hls_in, 7, "ap_none", "in_data", 1),
	Port_Property("s_axi_b_bvalid", 1, hls_out, 8, "ap_none", "out_data", 1),
	Port_Property("s_axi_r_rdata", 64, hls_out, 9, "ap_none", "out_data", 1),
	Port_Property("s_axi_r_rresp", 2, hls_out, 10, "ap_none", "out_data", 1),
	Port_Property("s_axi_r_rready", 1, hls_in, 11, "ap_none", "in_data", 1),
	Port_Property("s_axi_r_rvalid", 1, hls_out, 12, "ap_none", "out_data", 1),
	Port_Property("s_axi_w_wdata", 64, hls_in, 13, "ap_none", "in_data", 1),
	Port_Property("s_axi_w_wstrb", 8, hls_in, 14, "ap_none", "in_data", 1),
	Port_Property("s_axi_w_wready", 1, hls_out, 15, "ap_none", "out_data", 1),
	Port_Property("s_axi_w_wvalid", 1, hls_in, 16, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "axi_slave_lite_reg";
