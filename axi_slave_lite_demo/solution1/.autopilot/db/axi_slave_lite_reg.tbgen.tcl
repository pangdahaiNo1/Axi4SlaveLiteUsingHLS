set moduleName axi_slave_lite_reg
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {axi_slave_lite_reg}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axi_ar_araddr int 64 regular {pointer 0}  }
	{ s_axi_ar_arready int 1 regular {pointer 1}  }
	{ s_axi_ar_arvalid int 1 regular {pointer 0}  }
	{ s_axi_aw_awaddr int 64 regular {pointer 0}  }
	{ s_axi_aw_awready int 1 regular {pointer 1}  }
	{ s_axi_aw_awvalid int 1 regular {pointer 0}  }
	{ s_axi_b_bresp int 2 regular {pointer 1}  }
	{ s_axi_b_bready int 1 regular {pointer 0}  }
	{ s_axi_b_bvalid int 1 regular {pointer 1}  }
	{ s_axi_r_rdata int 64 regular {pointer 1}  }
	{ s_axi_r_rresp int 2 regular {pointer 1}  }
	{ s_axi_r_rready int 1 regular {pointer 0}  }
	{ s_axi_r_rvalid int 1 regular {pointer 1}  }
	{ s_axi_w_wdata int 64 regular {pointer 0}  }
	{ s_axi_w_wstrb int 8 regular {pointer 0}  }
	{ s_axi_w_wready int 1 regular {pointer 1}  }
	{ s_axi_w_wvalid int 1 regular {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axi_ar_araddr", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axi_ar_araddr","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axi_ar_arready", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axi_ar_arready","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axi_ar_arvalid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axi_ar_arvalid","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axi_aw_awaddr", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axi_aw_awaddr","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axi_aw_awready", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axi_aw_awready","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axi_aw_awvalid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axi_aw_awvalid","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axi_b_bresp", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axi_b_bresp","cData": "int2","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axi_b_bready", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axi_b_bready","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axi_b_bvalid", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axi_b_bvalid","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axi_r_rdata", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axi_r_rdata","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axi_r_rresp", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axi_r_rresp","cData": "int2","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axi_r_rready", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axi_r_rready","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axi_r_rvalid", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axi_r_rvalid","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axi_w_wdata", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axi_w_wdata","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axi_w_wstrb", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axi_w_wstrb","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axi_w_wready", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axi_w_wready","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_axi_w_wvalid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_axi_w_wvalid","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ s_axi_ar_araddr sc_in sc_lv 64 signal 0 } 
	{ s_axi_ar_arready sc_out sc_lv 1 signal 1 } 
	{ s_axi_ar_arvalid sc_in sc_lv 1 signal 2 } 
	{ s_axi_aw_awaddr sc_in sc_lv 64 signal 3 } 
	{ s_axi_aw_awready sc_out sc_lv 1 signal 4 } 
	{ s_axi_aw_awvalid sc_in sc_lv 1 signal 5 } 
	{ s_axi_b_bresp sc_out sc_lv 2 signal 6 } 
	{ s_axi_b_bready sc_in sc_lv 1 signal 7 } 
	{ s_axi_b_bvalid sc_out sc_lv 1 signal 8 } 
	{ s_axi_r_rdata sc_out sc_lv 64 signal 9 } 
	{ s_axi_r_rresp sc_out sc_lv 2 signal 10 } 
	{ s_axi_r_rready sc_in sc_lv 1 signal 11 } 
	{ s_axi_r_rvalid sc_out sc_lv 1 signal 12 } 
	{ s_axi_w_wdata sc_in sc_lv 64 signal 13 } 
	{ s_axi_w_wstrb sc_in sc_lv 8 signal 14 } 
	{ s_axi_w_wready sc_out sc_lv 1 signal 15 } 
	{ s_axi_w_wvalid sc_in sc_lv 1 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "s_axi_ar_araddr", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axi_ar_araddr", "role": "default" }} , 
 	{ "name": "s_axi_ar_arready", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axi_ar_arready", "role": "default" }} , 
 	{ "name": "s_axi_ar_arvalid", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axi_ar_arvalid", "role": "default" }} , 
 	{ "name": "s_axi_aw_awaddr", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axi_aw_awaddr", "role": "default" }} , 
 	{ "name": "s_axi_aw_awready", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axi_aw_awready", "role": "default" }} , 
 	{ "name": "s_axi_aw_awvalid", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axi_aw_awvalid", "role": "default" }} , 
 	{ "name": "s_axi_b_bresp", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_axi_b_bresp", "role": "default" }} , 
 	{ "name": "s_axi_b_bready", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axi_b_bready", "role": "default" }} , 
 	{ "name": "s_axi_b_bvalid", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axi_b_bvalid", "role": "default" }} , 
 	{ "name": "s_axi_r_rdata", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axi_r_rdata", "role": "default" }} , 
 	{ "name": "s_axi_r_rresp", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_axi_r_rresp", "role": "default" }} , 
 	{ "name": "s_axi_r_rready", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axi_r_rready", "role": "default" }} , 
 	{ "name": "s_axi_r_rvalid", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axi_r_rvalid", "role": "default" }} , 
 	{ "name": "s_axi_w_wdata", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axi_w_wdata", "role": "default" }} , 
 	{ "name": "s_axi_w_wstrb", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axi_w_wstrb", "role": "default" }} , 
 	{ "name": "s_axi_w_wready", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axi_w_wready", "role": "default" }} , 
 	{ "name": "s_axi_w_wvalid", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axi_w_wvalid", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "axi_slave_lite_reg",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s_axi_ar_araddr", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axi_ar_arready", "Type" : "None", "Direction" : "O"},
			{"Name" : "s_axi_ar_arvalid", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axi_aw_awaddr", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axi_aw_awready", "Type" : "None", "Direction" : "O"},
			{"Name" : "s_axi_aw_awvalid", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axi_b_bresp", "Type" : "None", "Direction" : "O"},
			{"Name" : "s_axi_b_bready", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axi_b_bvalid", "Type" : "None", "Direction" : "O"},
			{"Name" : "s_axi_r_rdata", "Type" : "None", "Direction" : "O"},
			{"Name" : "s_axi_r_rresp", "Type" : "None", "Direction" : "O"},
			{"Name" : "s_axi_r_rready", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axi_r_rvalid", "Type" : "None", "Direction" : "O"},
			{"Name" : "s_axi_w_wdata", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axi_w_wstrb", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axi_w_wready", "Type" : "None", "Direction" : "O"},
			{"Name" : "s_axi_w_wvalid", "Type" : "None", "Direction" : "I"},
			{"Name" : "state1_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "waddr_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inner_reg0_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inner_reg1_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inner_reg2_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inner_reg3_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "raddr_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rdata_V", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	axi_slave_lite_reg {
		s_axi_ar_araddr {Type I LastRead 0 FirstWrite -1}
		s_axi_ar_arready {Type O LastRead -1 FirstWrite 0}
		s_axi_ar_arvalid {Type I LastRead 0 FirstWrite -1}
		s_axi_aw_awaddr {Type I LastRead 0 FirstWrite -1}
		s_axi_aw_awready {Type O LastRead -1 FirstWrite 0}
		s_axi_aw_awvalid {Type I LastRead 0 FirstWrite -1}
		s_axi_b_bresp {Type O LastRead -1 FirstWrite 0}
		s_axi_b_bready {Type I LastRead 0 FirstWrite -1}
		s_axi_b_bvalid {Type O LastRead -1 FirstWrite 0}
		s_axi_r_rdata {Type O LastRead -1 FirstWrite 0}
		s_axi_r_rresp {Type O LastRead -1 FirstWrite 0}
		s_axi_r_rready {Type I LastRead 0 FirstWrite -1}
		s_axi_r_rvalid {Type O LastRead -1 FirstWrite 0}
		s_axi_w_wdata {Type I LastRead 0 FirstWrite -1}
		s_axi_w_wstrb {Type I LastRead 0 FirstWrite -1}
		s_axi_w_wready {Type O LastRead -1 FirstWrite 0}
		s_axi_w_wvalid {Type I LastRead 0 FirstWrite -1}
		state1_V {Type IO LastRead -1 FirstWrite -1}
		waddr_V {Type IO LastRead -1 FirstWrite -1}
		inner_reg0_V {Type IO LastRead -1 FirstWrite -1}
		inner_reg1_V {Type IO LastRead -1 FirstWrite -1}
		inner_reg2_V {Type IO LastRead -1 FirstWrite -1}
		inner_reg3_V {Type IO LastRead -1 FirstWrite -1}
		state_V {Type IO LastRead -1 FirstWrite -1}
		raddr_V {Type IO LastRead -1 FirstWrite -1}
		rdata_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_axi_ar_araddr { ap_none {  { s_axi_ar_araddr in_data 0 64 } } }
	s_axi_ar_arready { ap_none {  { s_axi_ar_arready out_data 1 1 } } }
	s_axi_ar_arvalid { ap_none {  { s_axi_ar_arvalid in_data 0 1 } } }
	s_axi_aw_awaddr { ap_none {  { s_axi_aw_awaddr in_data 0 64 } } }
	s_axi_aw_awready { ap_none {  { s_axi_aw_awready out_data 1 1 } } }
	s_axi_aw_awvalid { ap_none {  { s_axi_aw_awvalid in_data 0 1 } } }
	s_axi_b_bresp { ap_none {  { s_axi_b_bresp out_data 1 2 } } }
	s_axi_b_bready { ap_none {  { s_axi_b_bready in_data 0 1 } } }
	s_axi_b_bvalid { ap_none {  { s_axi_b_bvalid out_data 1 1 } } }
	s_axi_r_rdata { ap_none {  { s_axi_r_rdata out_data 1 64 } } }
	s_axi_r_rresp { ap_none {  { s_axi_r_rresp out_data 1 2 } } }
	s_axi_r_rready { ap_none {  { s_axi_r_rready in_data 0 1 } } }
	s_axi_r_rvalid { ap_none {  { s_axi_r_rvalid out_data 1 1 } } }
	s_axi_w_wdata { ap_none {  { s_axi_w_wdata in_data 0 64 } } }
	s_axi_w_wstrb { ap_none {  { s_axi_w_wstrb in_data 0 8 } } }
	s_axi_w_wready { ap_none {  { s_axi_w_wready out_data 1 1 } } }
	s_axi_w_wvalid { ap_none {  { s_axi_w_wvalid in_data 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
