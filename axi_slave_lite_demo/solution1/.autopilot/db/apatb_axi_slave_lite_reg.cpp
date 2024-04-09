#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_s_axi_ar_araddr "../tv/cdatafile/c.axi_slave_lite_reg.autotvin_s_axi_ar_araddr.dat"
#define AUTOTB_TVOUT_s_axi_ar_araddr "../tv/cdatafile/c.axi_slave_lite_reg.autotvout_s_axi_ar_araddr.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axi_ar_arready "../tv/cdatafile/c.axi_slave_lite_reg.autotvin_s_axi_ar_arready.dat"
#define AUTOTB_TVOUT_s_axi_ar_arready "../tv/cdatafile/c.axi_slave_lite_reg.autotvout_s_axi_ar_arready.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axi_ar_arvalid "../tv/cdatafile/c.axi_slave_lite_reg.autotvin_s_axi_ar_arvalid.dat"
#define AUTOTB_TVOUT_s_axi_ar_arvalid "../tv/cdatafile/c.axi_slave_lite_reg.autotvout_s_axi_ar_arvalid.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axi_aw_awaddr "../tv/cdatafile/c.axi_slave_lite_reg.autotvin_s_axi_aw_awaddr.dat"
#define AUTOTB_TVOUT_s_axi_aw_awaddr "../tv/cdatafile/c.axi_slave_lite_reg.autotvout_s_axi_aw_awaddr.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axi_aw_awready "../tv/cdatafile/c.axi_slave_lite_reg.autotvin_s_axi_aw_awready.dat"
#define AUTOTB_TVOUT_s_axi_aw_awready "../tv/cdatafile/c.axi_slave_lite_reg.autotvout_s_axi_aw_awready.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axi_aw_awvalid "../tv/cdatafile/c.axi_slave_lite_reg.autotvin_s_axi_aw_awvalid.dat"
#define AUTOTB_TVOUT_s_axi_aw_awvalid "../tv/cdatafile/c.axi_slave_lite_reg.autotvout_s_axi_aw_awvalid.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axi_b_bresp "../tv/cdatafile/c.axi_slave_lite_reg.autotvin_s_axi_b_bresp.dat"
#define AUTOTB_TVOUT_s_axi_b_bresp "../tv/cdatafile/c.axi_slave_lite_reg.autotvout_s_axi_b_bresp.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axi_b_bready "../tv/cdatafile/c.axi_slave_lite_reg.autotvin_s_axi_b_bready.dat"
#define AUTOTB_TVOUT_s_axi_b_bready "../tv/cdatafile/c.axi_slave_lite_reg.autotvout_s_axi_b_bready.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axi_b_bvalid "../tv/cdatafile/c.axi_slave_lite_reg.autotvin_s_axi_b_bvalid.dat"
#define AUTOTB_TVOUT_s_axi_b_bvalid "../tv/cdatafile/c.axi_slave_lite_reg.autotvout_s_axi_b_bvalid.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axi_r_rdata "../tv/cdatafile/c.axi_slave_lite_reg.autotvin_s_axi_r_rdata.dat"
#define AUTOTB_TVOUT_s_axi_r_rdata "../tv/cdatafile/c.axi_slave_lite_reg.autotvout_s_axi_r_rdata.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axi_r_rresp "../tv/cdatafile/c.axi_slave_lite_reg.autotvin_s_axi_r_rresp.dat"
#define AUTOTB_TVOUT_s_axi_r_rresp "../tv/cdatafile/c.axi_slave_lite_reg.autotvout_s_axi_r_rresp.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axi_r_rready "../tv/cdatafile/c.axi_slave_lite_reg.autotvin_s_axi_r_rready.dat"
#define AUTOTB_TVOUT_s_axi_r_rready "../tv/cdatafile/c.axi_slave_lite_reg.autotvout_s_axi_r_rready.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axi_r_rvalid "../tv/cdatafile/c.axi_slave_lite_reg.autotvin_s_axi_r_rvalid.dat"
#define AUTOTB_TVOUT_s_axi_r_rvalid "../tv/cdatafile/c.axi_slave_lite_reg.autotvout_s_axi_r_rvalid.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axi_w_wdata "../tv/cdatafile/c.axi_slave_lite_reg.autotvin_s_axi_w_wdata.dat"
#define AUTOTB_TVOUT_s_axi_w_wdata "../tv/cdatafile/c.axi_slave_lite_reg.autotvout_s_axi_w_wdata.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axi_w_wstrb "../tv/cdatafile/c.axi_slave_lite_reg.autotvin_s_axi_w_wstrb.dat"
#define AUTOTB_TVOUT_s_axi_w_wstrb "../tv/cdatafile/c.axi_slave_lite_reg.autotvout_s_axi_w_wstrb.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axi_w_wready "../tv/cdatafile/c.axi_slave_lite_reg.autotvin_s_axi_w_wready.dat"
#define AUTOTB_TVOUT_s_axi_w_wready "../tv/cdatafile/c.axi_slave_lite_reg.autotvout_s_axi_w_wready.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axi_w_wvalid "../tv/cdatafile/c.axi_slave_lite_reg.autotvin_s_axi_w_wvalid.dat"
#define AUTOTB_TVOUT_s_axi_w_wvalid "../tv/cdatafile/c.axi_slave_lite_reg.autotvout_s_axi_w_wvalid.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_s_axi_ar_araddr "../tv/rtldatafile/rtl.axi_slave_lite_reg.autotvout_s_axi_ar_araddr.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axi_ar_arready "../tv/rtldatafile/rtl.axi_slave_lite_reg.autotvout_s_axi_ar_arready.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axi_ar_arvalid "../tv/rtldatafile/rtl.axi_slave_lite_reg.autotvout_s_axi_ar_arvalid.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axi_aw_awaddr "../tv/rtldatafile/rtl.axi_slave_lite_reg.autotvout_s_axi_aw_awaddr.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axi_aw_awready "../tv/rtldatafile/rtl.axi_slave_lite_reg.autotvout_s_axi_aw_awready.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axi_aw_awvalid "../tv/rtldatafile/rtl.axi_slave_lite_reg.autotvout_s_axi_aw_awvalid.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axi_b_bresp "../tv/rtldatafile/rtl.axi_slave_lite_reg.autotvout_s_axi_b_bresp.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axi_b_bready "../tv/rtldatafile/rtl.axi_slave_lite_reg.autotvout_s_axi_b_bready.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axi_b_bvalid "../tv/rtldatafile/rtl.axi_slave_lite_reg.autotvout_s_axi_b_bvalid.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axi_r_rdata "../tv/rtldatafile/rtl.axi_slave_lite_reg.autotvout_s_axi_r_rdata.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axi_r_rresp "../tv/rtldatafile/rtl.axi_slave_lite_reg.autotvout_s_axi_r_rresp.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axi_r_rready "../tv/rtldatafile/rtl.axi_slave_lite_reg.autotvout_s_axi_r_rready.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axi_r_rvalid "../tv/rtldatafile/rtl.axi_slave_lite_reg.autotvout_s_axi_r_rvalid.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axi_w_wdata "../tv/rtldatafile/rtl.axi_slave_lite_reg.autotvout_s_axi_w_wdata.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axi_w_wstrb "../tv/rtldatafile/rtl.axi_slave_lite_reg.autotvout_s_axi_w_wstrb.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axi_w_wready "../tv/rtldatafile/rtl.axi_slave_lite_reg.autotvout_s_axi_w_wready.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axi_w_wvalid "../tv/rtldatafile/rtl.axi_slave_lite_reg.autotvout_s_axi_w_wvalid.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  s_axi_ar_araddr_depth = 0;
  s_axi_ar_arready_depth = 0;
  s_axi_ar_arvalid_depth = 0;
  s_axi_aw_awaddr_depth = 0;
  s_axi_aw_awready_depth = 0;
  s_axi_aw_awvalid_depth = 0;
  s_axi_b_bresp_depth = 0;
  s_axi_b_bready_depth = 0;
  s_axi_b_bvalid_depth = 0;
  s_axi_r_rdata_depth = 0;
  s_axi_r_rresp_depth = 0;
  s_axi_r_rready_depth = 0;
  s_axi_r_rvalid_depth = 0;
  s_axi_w_wdata_depth = 0;
  s_axi_w_wstrb_depth = 0;
  s_axi_w_wready_depth = 0;
  s_axi_w_wvalid_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{s_axi_ar_araddr " << s_axi_ar_araddr_depth << "}\n";
  total_list << "{s_axi_ar_arready " << s_axi_ar_arready_depth << "}\n";
  total_list << "{s_axi_ar_arvalid " << s_axi_ar_arvalid_depth << "}\n";
  total_list << "{s_axi_aw_awaddr " << s_axi_aw_awaddr_depth << "}\n";
  total_list << "{s_axi_aw_awready " << s_axi_aw_awready_depth << "}\n";
  total_list << "{s_axi_aw_awvalid " << s_axi_aw_awvalid_depth << "}\n";
  total_list << "{s_axi_b_bresp " << s_axi_b_bresp_depth << "}\n";
  total_list << "{s_axi_b_bready " << s_axi_b_bready_depth << "}\n";
  total_list << "{s_axi_b_bvalid " << s_axi_b_bvalid_depth << "}\n";
  total_list << "{s_axi_r_rdata " << s_axi_r_rdata_depth << "}\n";
  total_list << "{s_axi_r_rresp " << s_axi_r_rresp_depth << "}\n";
  total_list << "{s_axi_r_rready " << s_axi_r_rready_depth << "}\n";
  total_list << "{s_axi_r_rvalid " << s_axi_r_rvalid_depth << "}\n";
  total_list << "{s_axi_w_wdata " << s_axi_w_wdata_depth << "}\n";
  total_list << "{s_axi_w_wstrb " << s_axi_w_wstrb_depth << "}\n";
  total_list << "{s_axi_w_wready " << s_axi_w_wready_depth << "}\n";
  total_list << "{s_axi_w_wvalid " << s_axi_w_wvalid_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int s_axi_ar_araddr_depth;
    int s_axi_ar_arready_depth;
    int s_axi_ar_arvalid_depth;
    int s_axi_aw_awaddr_depth;
    int s_axi_aw_awready_depth;
    int s_axi_aw_awvalid_depth;
    int s_axi_b_bresp_depth;
    int s_axi_b_bready_depth;
    int s_axi_b_bvalid_depth;
    int s_axi_r_rdata_depth;
    int s_axi_r_rresp_depth;
    int s_axi_r_rready_depth;
    int s_axi_r_rvalid_depth;
    int s_axi_w_wdata_depth;
    int s_axi_w_wstrb_depth;
    int s_axi_w_wready_depth;
    int s_axi_w_wvalid_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
extern "C" void axi_slave_lite_reg_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_axi_slave_lite_reg_hw(volatile void * __xlx_apatb_param_s_axi_ar_araddr, volatile void * __xlx_apatb_param_s_axi_ar_arready, volatile void * __xlx_apatb_param_s_axi_ar_arvalid, volatile void * __xlx_apatb_param_s_axi_aw_awaddr, volatile void * __xlx_apatb_param_s_axi_aw_awready, volatile void * __xlx_apatb_param_s_axi_aw_awvalid, volatile void * __xlx_apatb_param_s_axi_b_bresp, volatile void * __xlx_apatb_param_s_axi_b_bready, volatile void * __xlx_apatb_param_s_axi_b_bvalid, volatile void * __xlx_apatb_param_s_axi_r_rdata, volatile void * __xlx_apatb_param_s_axi_r_rresp, volatile void * __xlx_apatb_param_s_axi_r_rready, volatile void * __xlx_apatb_param_s_axi_r_rvalid, volatile void * __xlx_apatb_param_s_axi_w_wdata, volatile void * __xlx_apatb_param_s_axi_w_wstrb, volatile void * __xlx_apatb_param_s_axi_w_wready, volatile void * __xlx_apatb_param_s_axi_w_wvalid) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_s_axi_ar_arready);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<1> > s_axi_ar_arready_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "s_axi_ar_arready");
  
            // push token into output port buffer
            if (AESL_token != "") {
              s_axi_ar_arready_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((char*)__xlx_apatb_param_s_axi_ar_arready)[0] = s_axi_ar_arready_pc_buffer[0].to_uint64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_s_axi_aw_awready);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<1> > s_axi_aw_awready_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "s_axi_aw_awready");
  
            // push token into output port buffer
            if (AESL_token != "") {
              s_axi_aw_awready_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((char*)__xlx_apatb_param_s_axi_aw_awready)[0] = s_axi_aw_awready_pc_buffer[0].to_uint64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_s_axi_b_bresp);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<2> > s_axi_b_bresp_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "s_axi_b_bresp");
  
            // push token into output port buffer
            if (AESL_token != "") {
              s_axi_b_bresp_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((char*)__xlx_apatb_param_s_axi_b_bresp)[0] = s_axi_b_bresp_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_s_axi_b_bvalid);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<1> > s_axi_b_bvalid_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "s_axi_b_bvalid");
  
            // push token into output port buffer
            if (AESL_token != "") {
              s_axi_b_bvalid_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((char*)__xlx_apatb_param_s_axi_b_bvalid)[0] = s_axi_b_bvalid_pc_buffer[0].to_uint64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_s_axi_r_rdata);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > s_axi_r_rdata_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "s_axi_r_rdata");
  
            // push token into output port buffer
            if (AESL_token != "") {
              s_axi_r_rdata_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((long long*)__xlx_apatb_param_s_axi_r_rdata)[0] = s_axi_r_rdata_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_s_axi_r_rresp);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<2> > s_axi_r_rresp_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "s_axi_r_rresp");
  
            // push token into output port buffer
            if (AESL_token != "") {
              s_axi_r_rresp_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((char*)__xlx_apatb_param_s_axi_r_rresp)[0] = s_axi_r_rresp_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_s_axi_r_rvalid);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<1> > s_axi_r_rvalid_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "s_axi_r_rvalid");
  
            // push token into output port buffer
            if (AESL_token != "") {
              s_axi_r_rvalid_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((char*)__xlx_apatb_param_s_axi_r_rvalid)[0] = s_axi_r_rvalid_pc_buffer[0].to_uint64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_s_axi_w_wready);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<1> > s_axi_w_wready_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "s_axi_w_wready");
  
            // push token into output port buffer
            if (AESL_token != "") {
              s_axi_w_wready_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((char*)__xlx_apatb_param_s_axi_w_wready)[0] = s_axi_w_wready_pc_buffer[0].to_uint64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//s_axi_ar_araddr
aesl_fh.touch(AUTOTB_TVIN_s_axi_ar_araddr);
aesl_fh.touch(AUTOTB_TVOUT_s_axi_ar_araddr);
//s_axi_ar_arready
aesl_fh.touch(AUTOTB_TVIN_s_axi_ar_arready);
aesl_fh.touch(AUTOTB_TVOUT_s_axi_ar_arready);
//s_axi_ar_arvalid
aesl_fh.touch(AUTOTB_TVIN_s_axi_ar_arvalid);
aesl_fh.touch(AUTOTB_TVOUT_s_axi_ar_arvalid);
//s_axi_aw_awaddr
aesl_fh.touch(AUTOTB_TVIN_s_axi_aw_awaddr);
aesl_fh.touch(AUTOTB_TVOUT_s_axi_aw_awaddr);
//s_axi_aw_awready
aesl_fh.touch(AUTOTB_TVIN_s_axi_aw_awready);
aesl_fh.touch(AUTOTB_TVOUT_s_axi_aw_awready);
//s_axi_aw_awvalid
aesl_fh.touch(AUTOTB_TVIN_s_axi_aw_awvalid);
aesl_fh.touch(AUTOTB_TVOUT_s_axi_aw_awvalid);
//s_axi_b_bresp
aesl_fh.touch(AUTOTB_TVIN_s_axi_b_bresp);
aesl_fh.touch(AUTOTB_TVOUT_s_axi_b_bresp);
//s_axi_b_bready
aesl_fh.touch(AUTOTB_TVIN_s_axi_b_bready);
aesl_fh.touch(AUTOTB_TVOUT_s_axi_b_bready);
//s_axi_b_bvalid
aesl_fh.touch(AUTOTB_TVIN_s_axi_b_bvalid);
aesl_fh.touch(AUTOTB_TVOUT_s_axi_b_bvalid);
//s_axi_r_rdata
aesl_fh.touch(AUTOTB_TVIN_s_axi_r_rdata);
aesl_fh.touch(AUTOTB_TVOUT_s_axi_r_rdata);
//s_axi_r_rresp
aesl_fh.touch(AUTOTB_TVIN_s_axi_r_rresp);
aesl_fh.touch(AUTOTB_TVOUT_s_axi_r_rresp);
//s_axi_r_rready
aesl_fh.touch(AUTOTB_TVIN_s_axi_r_rready);
aesl_fh.touch(AUTOTB_TVOUT_s_axi_r_rready);
//s_axi_r_rvalid
aesl_fh.touch(AUTOTB_TVIN_s_axi_r_rvalid);
aesl_fh.touch(AUTOTB_TVOUT_s_axi_r_rvalid);
//s_axi_w_wdata
aesl_fh.touch(AUTOTB_TVIN_s_axi_w_wdata);
aesl_fh.touch(AUTOTB_TVOUT_s_axi_w_wdata);
//s_axi_w_wstrb
aesl_fh.touch(AUTOTB_TVIN_s_axi_w_wstrb);
aesl_fh.touch(AUTOTB_TVOUT_s_axi_w_wstrb);
//s_axi_w_wready
aesl_fh.touch(AUTOTB_TVIN_s_axi_w_wready);
aesl_fh.touch(AUTOTB_TVOUT_s_axi_w_wready);
//s_axi_w_wvalid
aesl_fh.touch(AUTOTB_TVIN_s_axi_w_wvalid);
aesl_fh.touch(AUTOTB_TVOUT_s_axi_w_wvalid);
CodeState = DUMP_INPUTS;
// print s_axi_ar_araddr Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axi_ar_araddr, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_s_axi_ar_araddr);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axi_ar_araddr, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_ar_araddr_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axi_ar_araddr, __xlx_sprintf_buffer.data());
}
// print s_axi_ar_arready Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axi_ar_arready, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_s_axi_ar_arready);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axi_ar_arready, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_ar_arready_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axi_ar_arready, __xlx_sprintf_buffer.data());
}
// print s_axi_ar_arvalid Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axi_ar_arvalid, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_s_axi_ar_arvalid);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axi_ar_arvalid, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_ar_arvalid_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axi_ar_arvalid, __xlx_sprintf_buffer.data());
}
// print s_axi_aw_awaddr Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axi_aw_awaddr, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_s_axi_aw_awaddr);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axi_aw_awaddr, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_aw_awaddr_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axi_aw_awaddr, __xlx_sprintf_buffer.data());
}
// print s_axi_aw_awready Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axi_aw_awready, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_s_axi_aw_awready);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axi_aw_awready, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_aw_awready_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axi_aw_awready, __xlx_sprintf_buffer.data());
}
// print s_axi_aw_awvalid Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axi_aw_awvalid, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_s_axi_aw_awvalid);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axi_aw_awvalid, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_aw_awvalid_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axi_aw_awvalid, __xlx_sprintf_buffer.data());
}
// print s_axi_b_bresp Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axi_b_bresp, __xlx_sprintf_buffer.data());
  {
    sc_bv<2> __xlx_tmp_lv = *((char*)__xlx_apatb_param_s_axi_b_bresp);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axi_b_bresp, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_b_bresp_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axi_b_bresp, __xlx_sprintf_buffer.data());
}
// print s_axi_b_bready Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axi_b_bready, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_s_axi_b_bready);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axi_b_bready, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_b_bready_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axi_b_bready, __xlx_sprintf_buffer.data());
}
// print s_axi_b_bvalid Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axi_b_bvalid, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_s_axi_b_bvalid);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axi_b_bvalid, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_b_bvalid_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axi_b_bvalid, __xlx_sprintf_buffer.data());
}
// print s_axi_r_rdata Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axi_r_rdata, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_s_axi_r_rdata);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axi_r_rdata, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_r_rdata_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axi_r_rdata, __xlx_sprintf_buffer.data());
}
// print s_axi_r_rresp Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axi_r_rresp, __xlx_sprintf_buffer.data());
  {
    sc_bv<2> __xlx_tmp_lv = *((char*)__xlx_apatb_param_s_axi_r_rresp);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axi_r_rresp, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_r_rresp_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axi_r_rresp, __xlx_sprintf_buffer.data());
}
// print s_axi_r_rready Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axi_r_rready, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_s_axi_r_rready);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axi_r_rready, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_r_rready_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axi_r_rready, __xlx_sprintf_buffer.data());
}
// print s_axi_r_rvalid Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axi_r_rvalid, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_s_axi_r_rvalid);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axi_r_rvalid, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_r_rvalid_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axi_r_rvalid, __xlx_sprintf_buffer.data());
}
// print s_axi_w_wdata Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axi_w_wdata, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_s_axi_w_wdata);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axi_w_wdata, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_w_wdata_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axi_w_wdata, __xlx_sprintf_buffer.data());
}
// print s_axi_w_wstrb Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axi_w_wstrb, __xlx_sprintf_buffer.data());
  {
    sc_bv<8> __xlx_tmp_lv = *((char*)__xlx_apatb_param_s_axi_w_wstrb);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axi_w_wstrb, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_w_wstrb_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axi_w_wstrb, __xlx_sprintf_buffer.data());
}
// print s_axi_w_wready Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axi_w_wready, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_s_axi_w_wready);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axi_w_wready, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_w_wready_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axi_w_wready, __xlx_sprintf_buffer.data());
}
// print s_axi_w_wvalid Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axi_w_wvalid, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_s_axi_w_wvalid);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axi_w_wvalid, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_w_wvalid_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axi_w_wvalid, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
axi_slave_lite_reg_hw_stub_wrapper(__xlx_apatb_param_s_axi_ar_araddr, __xlx_apatb_param_s_axi_ar_arready, __xlx_apatb_param_s_axi_ar_arvalid, __xlx_apatb_param_s_axi_aw_awaddr, __xlx_apatb_param_s_axi_aw_awready, __xlx_apatb_param_s_axi_aw_awvalid, __xlx_apatb_param_s_axi_b_bresp, __xlx_apatb_param_s_axi_b_bready, __xlx_apatb_param_s_axi_b_bvalid, __xlx_apatb_param_s_axi_r_rdata, __xlx_apatb_param_s_axi_r_rresp, __xlx_apatb_param_s_axi_r_rready, __xlx_apatb_param_s_axi_r_rvalid, __xlx_apatb_param_s_axi_w_wdata, __xlx_apatb_param_s_axi_w_wstrb, __xlx_apatb_param_s_axi_w_wready, __xlx_apatb_param_s_axi_w_wvalid);
CodeState = DUMP_OUTPUTS;
// print s_axi_ar_arready Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_s_axi_ar_arready, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_s_axi_ar_arready);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_s_axi_ar_arready, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_ar_arready_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_s_axi_ar_arready, __xlx_sprintf_buffer.data());
}
// print s_axi_aw_awready Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_s_axi_aw_awready, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_s_axi_aw_awready);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_s_axi_aw_awready, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_aw_awready_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_s_axi_aw_awready, __xlx_sprintf_buffer.data());
}
// print s_axi_b_bresp Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_s_axi_b_bresp, __xlx_sprintf_buffer.data());
  {
    sc_bv<2> __xlx_tmp_lv = *((char*)__xlx_apatb_param_s_axi_b_bresp);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_s_axi_b_bresp, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_b_bresp_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_s_axi_b_bresp, __xlx_sprintf_buffer.data());
}
// print s_axi_b_bvalid Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_s_axi_b_bvalid, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_s_axi_b_bvalid);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_s_axi_b_bvalid, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_b_bvalid_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_s_axi_b_bvalid, __xlx_sprintf_buffer.data());
}
// print s_axi_r_rdata Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_s_axi_r_rdata, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_s_axi_r_rdata);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_s_axi_r_rdata, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_r_rdata_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_s_axi_r_rdata, __xlx_sprintf_buffer.data());
}
// print s_axi_r_rresp Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_s_axi_r_rresp, __xlx_sprintf_buffer.data());
  {
    sc_bv<2> __xlx_tmp_lv = *((char*)__xlx_apatb_param_s_axi_r_rresp);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_s_axi_r_rresp, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_r_rresp_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_s_axi_r_rresp, __xlx_sprintf_buffer.data());
}
// print s_axi_r_rvalid Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_s_axi_r_rvalid, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_s_axi_r_rvalid);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_s_axi_r_rvalid, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_r_rvalid_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_s_axi_r_rvalid, __xlx_sprintf_buffer.data());
}
// print s_axi_w_wready Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_s_axi_w_wready, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_s_axi_w_wready);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_s_axi_w_wready, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.s_axi_w_wready_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_s_axi_w_wready, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
