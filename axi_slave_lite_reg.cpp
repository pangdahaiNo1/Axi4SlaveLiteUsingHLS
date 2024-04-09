#include "axi_slave_lite_reg.hpp"
static ap_uint<64> inner_reg0 = 0x123;
static ap_uint<64> inner_reg1 = 0x456;
static ap_uint<64> inner_reg2 = 0x789;
static ap_uint<64> inner_reg3 = 0xabc;
void axi_slave_lite_reg(
	AxiArPkt &s_axi_ar,
	AxiAwPkt &s_axi_aw,
	AxiBPkt &s_axi_b,
	AxiRPkt &s_axi_r,
	AxiWPkt &s_axi_w
){
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS DISAGGREGATE variable=s_axi_ar
#pragma HLS DISAGGREGATE variable=s_axi_aw
#pragma HLS DISAGGREGATE variable=s_axi_b
#pragma HLS DISAGGREGATE variable=s_axi_r
#pragma HLS DISAGGREGATE variable=s_axi_w
#pragma HLS INTERFACE ap_none  port=s_axi_b
#pragma HLS INTERFACE ap_none  port=s_axi_aw
#pragma HLS INTERFACE ap_none  port=s_axi_ar
#pragma HLS INTERFACE ap_none  port=s_axi_r
#pragma HLS INTERFACE ap_none  port=s_axi_w
	static ap_uint<3> state = 0;
	static ap_uint<3> state1 = 0;
	static ap_uint<64> waddr;
	static ap_uint<64> raddr;
	ap_uint<64> wdata = 0;
	ap_uint<1> wready = 0;
#pragma HLS LATENCY max=0
	switch(state1){
	case 0:
		s_axi_w.wready = 0;
		s_axi_b.bresp = 0;
		s_axi_b.bvalid = 0;
		if(s_axi_aw.awvalid){
			s_axi_aw.awready = 1;
			waddr = s_axi_aw.awaddr;
		} else{
			s_axi_aw.awready = 0;
		}
		if(s_axi_aw.awvalid) state1 = 1;
		break;
	case 1:
		if(s_axi_w.wvalid){
			s_axi_w.wready = 1;
			wready = 1;
			s_axi_aw.awready = 0;
			s_axi_b.bvalid = 0;
			s_axi_b.bresp = 0;
			wdata = s_axi_w.data & s_axi_w.wstrb;
			switch(waddr(4,3)){
				case 0:
					inner_reg_0 = wdata;
					break;
				case 1:
					inner_reg_1 = wdata;
					break;
				case 2:
					inner_reg_2 = wdata;
				default:
					inner_reg_3 = wdata;
			}
			state1 = 2;
		} else {
			s_axi_w.wready = 0;
			s_axi_aw.awready = 0;
			s_axi_b.bvalid = 0;
			s_axi_b.bresp = 0;
			state1 = 1;
		}
		break;
	case 2:
		s_axi_w.wready = 0;
		s_axi_aw.awready = 0;
		s_axi_b.bvalid = 1;
		s_axi_b.bresp = 0;
		if(s_axi_b.bready){
			state1 = 0;
		}else{
			state1= 2;
		}
		break;
	}
	static ap_uint<64> rdata;
	switch(state){
	case 0:
		if(s_axi_ar.arvalid){
			s_axi_ar.arready = 1;
			raddr = s_axi_ar.araddr;
			state = 1;
			switch(raddr(4,3)){
				case 0:
					rdata = inner_reg_0;
					break;
				case 1:
					rdata = inner_reg_1;
					break;
				case 2:
					rdata = inner_reg_2;
					break;
				default:
					rdata = inner_reg_3;
					break;
			}
		} else {
			s_axi_ar.arready = 0;

		}
		s_axi_r.rvalid = 0;
		s_axi_r.rresp = 0;
		break;
	case 1:
		s_axi_r.rresp = 0;
		s_axi_r.rvalid = 1;
		s_axi_ar.arready = 0;
		s_axi_r.rdata = (wready && s_axi_w.wvalid && waddr(4,3) == raddr(4,3))? s_axi_w.wdata : rdata;
		if(s_axi_r.rready)
			state = 0;

		break;
	}

}
