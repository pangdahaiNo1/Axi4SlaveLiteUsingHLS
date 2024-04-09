#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void axi_slave_lite_reg(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_axi_slave_lite_reg_hw(volatile void * __xlx_apatb_param_s_axi_ar_araddr, volatile void * __xlx_apatb_param_s_axi_ar_arready, volatile void * __xlx_apatb_param_s_axi_ar_arvalid, volatile void * __xlx_apatb_param_s_axi_aw_awaddr, volatile void * __xlx_apatb_param_s_axi_aw_awready, volatile void * __xlx_apatb_param_s_axi_aw_awvalid, volatile void * __xlx_apatb_param_s_axi_b_bresp, volatile void * __xlx_apatb_param_s_axi_b_bready, volatile void * __xlx_apatb_param_s_axi_b_bvalid, volatile void * __xlx_apatb_param_s_axi_r_rdata, volatile void * __xlx_apatb_param_s_axi_r_rresp, volatile void * __xlx_apatb_param_s_axi_r_rready, volatile void * __xlx_apatb_param_s_axi_r_rvalid, volatile void * __xlx_apatb_param_s_axi_w_wdata, volatile void * __xlx_apatb_param_s_axi_w_wstrb, volatile void * __xlx_apatb_param_s_axi_w_wready, volatile void * __xlx_apatb_param_s_axi_w_wvalid) {
  // DUT call
  axi_slave_lite_reg(__xlx_apatb_param_s_axi_ar_araddr, __xlx_apatb_param_s_axi_ar_arready, __xlx_apatb_param_s_axi_ar_arvalid, __xlx_apatb_param_s_axi_aw_awaddr, __xlx_apatb_param_s_axi_aw_awready, __xlx_apatb_param_s_axi_aw_awvalid, __xlx_apatb_param_s_axi_b_bresp, __xlx_apatb_param_s_axi_b_bready, __xlx_apatb_param_s_axi_b_bvalid, __xlx_apatb_param_s_axi_r_rdata, __xlx_apatb_param_s_axi_r_rresp, __xlx_apatb_param_s_axi_r_rready, __xlx_apatb_param_s_axi_r_rvalid, __xlx_apatb_param_s_axi_w_wdata, __xlx_apatb_param_s_axi_w_wstrb, __xlx_apatb_param_s_axi_w_wready, __xlx_apatb_param_s_axi_w_wvalid);
}
