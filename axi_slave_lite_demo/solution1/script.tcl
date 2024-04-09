############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project axi_slave_lite_demo
set_top axi_slave_lite_reg
add_files axi_slave_lite_reg.cpp
add_files axi_slave_lite_reg.hpp
add_files -tb test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu19eg-ffvc1760-2-e}
create_clock -period 10 -name default
config_export -format ip_catalog -output /home/pangdahai/Downloads/self_study_project/axi_lite_savle_demo/axi_slave_lite_reg.zip -rtl verilog
source "./axi_slave_lite_demo/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output /home/pangdahai/Downloads/self_study_project/axi_lite_savle_demo/axi_slave_lite_reg.zip
