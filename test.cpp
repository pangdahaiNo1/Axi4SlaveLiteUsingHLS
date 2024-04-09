#include "axi_slave_lite_reg.hpp"
#include "iostream"
using namespace std;

int main(){

	AxiArPkt m_ar;
	AxiAwPkt m_aw;
	AxiBPkt m_b;
	AxiWPkt m_w;
	AxiRPkt m_r;

	m_ar.araddr = 0x01;
	m_ar.arvalid = 1;
	//m_ar.arprot = 0;
	m_aw.awaddr = 0x01;
	m_aw.awvalid = 1;
	//m_aw.awprot = 0;
	m_r.rready = 1;
	m_w.wvalid = 1;
	m_w.wdata = 0x123;
	m_w.wstrb = 0xffffffff;
	m_b.bready = 1;

	axi_slave_lite_reg(
		m_ar,
		m_aw,
		m_b,
		m_r,
		m_w
	);

	cout << "Read Res1" << hex << m_r.rdata << endl;
	axi_slave_lite_reg(
		m_ar,
		m_aw,
		m_b,
		m_r,
		m_w
	);
	cout << "Read Res2" << hex << m_r.rdata << endl;
	return 0;
}
