#include "ap_int.h"
#include "ap_axi_sdata.h"
#include "hls_stream.h"



struct AxiArPkt{
	ap_uint<64> araddr;
	//ap_uint<3> arprot;
	ap_uint<1> arready;
	ap_uint<1> arvalid;
};

struct AxiAwPkt{
	ap_uint<64> awaddr;
	//ap_uint<3> awprot;
	ap_uint<1> awready;
	ap_uint<1> awvalid;
};

struct AxiBPkt{
	ap_uint<2> bresp;
	ap_uint<1> bready;
	ap_uint<1> bvalid;
};

struct AxiRPkt{
	ap_uint<64> rdata;
	ap_uint<2> rresp;
	ap_uint<1> rready;
	volatile ap_uint<1> rvalid;
};

struct AxiWPkt{
	ap_uint<64> wdata;
	ap_uint<8> wstrb;
	ap_uint<1> wready;
	ap_uint<1> wvalid;
};


void axi_slave_lite_reg(
		AxiArPkt &s_ar,
		AxiAwPkt &s_aw,
		AxiBPkt &s_b,
		AxiRPkt &s_r,
		AxiWPkt &s_w
);
