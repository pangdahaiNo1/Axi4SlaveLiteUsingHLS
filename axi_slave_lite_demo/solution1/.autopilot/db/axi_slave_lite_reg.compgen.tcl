# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name s_axi_ar_araddr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_axi_ar_araddr \
    op interface \
    ports { s_axi_ar_araddr { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name s_axi_ar_arready \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_s_axi_ar_arready \
    op interface \
    ports { s_axi_ar_arready { O 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name s_axi_ar_arvalid \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_axi_ar_arvalid \
    op interface \
    ports { s_axi_ar_arvalid { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name s_axi_aw_awaddr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_axi_aw_awaddr \
    op interface \
    ports { s_axi_aw_awaddr { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name s_axi_aw_awready \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_s_axi_aw_awready \
    op interface \
    ports { s_axi_aw_awready { O 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name s_axi_aw_awvalid \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_axi_aw_awvalid \
    op interface \
    ports { s_axi_aw_awvalid { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name s_axi_b_bresp \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_s_axi_b_bresp \
    op interface \
    ports { s_axi_b_bresp { O 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name s_axi_b_bready \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_axi_b_bready \
    op interface \
    ports { s_axi_b_bready { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name s_axi_b_bvalid \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_s_axi_b_bvalid \
    op interface \
    ports { s_axi_b_bvalid { O 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name s_axi_r_rdata \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_s_axi_r_rdata \
    op interface \
    ports { s_axi_r_rdata { O 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name s_axi_r_rresp \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_s_axi_r_rresp \
    op interface \
    ports { s_axi_r_rresp { O 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name s_axi_r_rready \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_axi_r_rready \
    op interface \
    ports { s_axi_r_rready { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name s_axi_r_rvalid \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_s_axi_r_rvalid \
    op interface \
    ports { s_axi_r_rvalid { O 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name s_axi_w_wdata \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_axi_w_wdata \
    op interface \
    ports { s_axi_w_wdata { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name s_axi_w_wstrb \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_axi_w_wstrb \
    op interface \
    ports { s_axi_w_wstrb { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name s_axi_w_wready \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_s_axi_w_wready \
    op interface \
    ports { s_axi_w_wready { O 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name s_axi_w_wvalid \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_axi_w_wvalid \
    op interface \
    ports { s_axi_w_wvalid { I 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


