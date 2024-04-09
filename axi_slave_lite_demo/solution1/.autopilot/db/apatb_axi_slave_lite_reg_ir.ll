; ModuleID = '/home/pangdahai/Downloads/self_study_project/axi_lite_savle_demo/axi_slave_lite_demo/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.AxiArPkt = type { %struct.ap_uint, %struct.ap_uint.0, %struct.ap_uint.0 }
%struct.ap_uint = type { %struct.ap_int_base }
%struct.ap_int_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i64 }
%struct.ap_uint.0 = type { %struct.ap_int_base.1 }
%struct.ap_int_base.1 = type { %struct.ssdm_int.2 }
%struct.ssdm_int.2 = type { i1 }
%struct.AxiBPkt = type { %struct.ap_uint.3, %struct.ap_uint.0, %struct.ap_uint.0 }
%struct.ap_uint.3 = type { %struct.ap_int_base.4 }
%struct.ap_int_base.4 = type { %struct.ssdm_int.5 }
%struct.ssdm_int.5 = type { i2 }
%struct.AxiRPkt = type { %struct.ap_uint, %struct.ap_uint.3, %struct.ap_uint.0, %struct.ap_uint.0 }
%struct.AxiWPkt = type { %struct.ap_uint, %struct.ap_uint.6, %struct.ap_uint.0, %struct.ap_uint.0 }
%struct.ap_uint.6 = type { %struct.ap_int_base.7 }
%struct.ap_int_base.7 = type { %struct.ssdm_int.8 }
%struct.ssdm_int.8 = type { i8 }

; Function Attrs: noinline
define void @apatb_axi_slave_lite_reg_ir(%struct.AxiArPkt* %s_axi_ar, %struct.AxiArPkt* %s_axi_aw, %struct.AxiBPkt* %s_axi_b, %struct.AxiRPkt* %s_axi_r, %struct.AxiWPkt* %s_axi_w) local_unnamed_addr #0 {
entry:
  %s_axi_ar_copy.01 = alloca %struct.ap_uint, align 512
  %s_axi_ar_copy.12 = alloca %struct.ap_uint.0, align 512
  %s_axi_ar_copy.23 = alloca %struct.ap_uint.0, align 512
  %s_axi_aw_copy.04 = alloca %struct.ap_uint, align 512
  %s_axi_aw_copy.15 = alloca %struct.ap_uint.0, align 512
  %s_axi_aw_copy.26 = alloca %struct.ap_uint.0, align 512
  %s_axi_b_copy.07 = alloca %struct.ap_uint.3, align 512
  %s_axi_b_copy.18 = alloca %struct.ap_uint.0, align 512
  %s_axi_b_copy.29 = alloca %struct.ap_uint.0, align 512
  %s_axi_r_copy.010 = alloca %struct.ap_uint, align 512
  %s_axi_r_copy.111 = alloca %struct.ap_uint.3, align 512
  %s_axi_r_copy.212 = alloca %struct.ap_uint.0, align 512
  %s_axi_r_copy.313 = alloca %struct.ap_uint.0, align 512
  %s_axi_w_copy.014 = alloca %struct.ap_uint, align 512
  %s_axi_w_copy.115 = alloca %struct.ap_uint.6, align 512
  %s_axi_w_copy.216 = alloca %struct.ap_uint.0, align 512
  %s_axi_w_copy.317 = alloca %struct.ap_uint.0, align 512
  call fastcc void @copy_in(%struct.AxiArPkt* %s_axi_ar, %struct.ap_uint* nonnull align 512 %s_axi_ar_copy.01, %struct.ap_uint.0* nonnull align 512 %s_axi_ar_copy.12, %struct.ap_uint.0* nonnull align 512 %s_axi_ar_copy.23, %struct.AxiArPkt* %s_axi_aw, %struct.ap_uint* nonnull align 512 %s_axi_aw_copy.04, %struct.ap_uint.0* nonnull align 512 %s_axi_aw_copy.15, %struct.ap_uint.0* nonnull align 512 %s_axi_aw_copy.26, %struct.AxiBPkt* %s_axi_b, %struct.ap_uint.3* nonnull align 512 %s_axi_b_copy.07, %struct.ap_uint.0* nonnull align 512 %s_axi_b_copy.18, %struct.ap_uint.0* nonnull align 512 %s_axi_b_copy.29, %struct.AxiRPkt* %s_axi_r, %struct.ap_uint* nonnull align 512 %s_axi_r_copy.010, %struct.ap_uint.3* nonnull align 512 %s_axi_r_copy.111, %struct.ap_uint.0* nonnull align 512 %s_axi_r_copy.212, %struct.ap_uint.0* nonnull align 512 %s_axi_r_copy.313, %struct.AxiWPkt* %s_axi_w, %struct.ap_uint* nonnull align 512 %s_axi_w_copy.014, %struct.ap_uint.6* nonnull align 512 %s_axi_w_copy.115, %struct.ap_uint.0* nonnull align 512 %s_axi_w_copy.216, %struct.ap_uint.0* nonnull align 512 %s_axi_w_copy.317)
  call void @apatb_axi_slave_lite_reg_hw(%struct.ap_uint* %s_axi_ar_copy.01, %struct.ap_uint.0* %s_axi_ar_copy.12, %struct.ap_uint.0* %s_axi_ar_copy.23, %struct.ap_uint* %s_axi_aw_copy.04, %struct.ap_uint.0* %s_axi_aw_copy.15, %struct.ap_uint.0* %s_axi_aw_copy.26, %struct.ap_uint.3* %s_axi_b_copy.07, %struct.ap_uint.0* %s_axi_b_copy.18, %struct.ap_uint.0* %s_axi_b_copy.29, %struct.ap_uint* %s_axi_r_copy.010, %struct.ap_uint.3* %s_axi_r_copy.111, %struct.ap_uint.0* %s_axi_r_copy.212, %struct.ap_uint.0* %s_axi_r_copy.313, %struct.ap_uint* %s_axi_w_copy.014, %struct.ap_uint.6* %s_axi_w_copy.115, %struct.ap_uint.0* %s_axi_w_copy.216, %struct.ap_uint.0* %s_axi_w_copy.317)
  call fastcc void @copy_out(%struct.AxiArPkt* %s_axi_ar, %struct.ap_uint* nonnull align 512 %s_axi_ar_copy.01, %struct.ap_uint.0* nonnull align 512 %s_axi_ar_copy.12, %struct.ap_uint.0* nonnull align 512 %s_axi_ar_copy.23, %struct.AxiArPkt* %s_axi_aw, %struct.ap_uint* nonnull align 512 %s_axi_aw_copy.04, %struct.ap_uint.0* nonnull align 512 %s_axi_aw_copy.15, %struct.ap_uint.0* nonnull align 512 %s_axi_aw_copy.26, %struct.AxiBPkt* %s_axi_b, %struct.ap_uint.3* nonnull align 512 %s_axi_b_copy.07, %struct.ap_uint.0* nonnull align 512 %s_axi_b_copy.18, %struct.ap_uint.0* nonnull align 512 %s_axi_b_copy.29, %struct.AxiRPkt* %s_axi_r, %struct.ap_uint* nonnull align 512 %s_axi_r_copy.010, %struct.ap_uint.3* nonnull align 512 %s_axi_r_copy.111, %struct.ap_uint.0* nonnull align 512 %s_axi_r_copy.212, %struct.ap_uint.0* nonnull align 512 %s_axi_r_copy.313, %struct.AxiWPkt* %s_axi_w, %struct.ap_uint* nonnull align 512 %s_axi_w_copy.014, %struct.ap_uint.6* nonnull align 512 %s_axi_w_copy.115, %struct.ap_uint.0* nonnull align 512 %s_axi_w_copy.216, %struct.ap_uint.0* nonnull align 512 %s_axi_w_copy.317)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_in(%struct.AxiArPkt*, %struct.ap_uint* noalias nocapture align 512 "unpacked"="1.0" %.0, %struct.ap_uint.0* noalias nocapture align 512 "unpacked"="1.1" %.1, %struct.ap_uint.0* noalias nocapture align 512 "unpacked"="1.2" %.2, %struct.AxiArPkt*, %struct.ap_uint* noalias nocapture align 512 "unpacked"="5.0" %.01, %struct.ap_uint.0* noalias nocapture align 512 "unpacked"="5.1" %.12, %struct.ap_uint.0* noalias nocapture align 512 "unpacked"="5.2" %.23, %struct.AxiBPkt*, %struct.ap_uint.3* noalias nocapture align 512 "unpacked"="9.0" %.02, %struct.ap_uint.0* noalias nocapture align 512 "unpacked"="9.1" %.13, %struct.ap_uint.0* noalias nocapture align 512 "unpacked"="9.2" %.24, %struct.AxiRPkt*, %struct.ap_uint* noalias nocapture align 512 "unpacked"="13.0" %.03, %struct.ap_uint.3* noalias nocapture align 512 "unpacked"="13.1" %.14, %struct.ap_uint.0* noalias nocapture align 512 "unpacked"="13.2" %.25, %struct.ap_uint.0* noalias nocapture align 512 "unpacked"="13.3" %.3, %struct.AxiWPkt*, %struct.ap_uint* noalias nocapture align 512 "unpacked"="18.0" %.04, %struct.ap_uint.6* noalias nocapture align 512 "unpacked"="18.1" %.15, %struct.ap_uint.0* noalias nocapture align 512 "unpacked"="18.2" %.26, %struct.ap_uint.0* noalias nocapture align 512 "unpacked"="18.3" %.37) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.AxiArPkt.33(%struct.ap_uint* align 512 %.0, %struct.ap_uint.0* align 512 %.1, %struct.ap_uint.0* align 512 %.2, %struct.AxiArPkt* %0)
  call fastcc void @onebyonecpy_hls.p0struct.AxiArPkt.33(%struct.ap_uint* align 512 %.01, %struct.ap_uint.0* align 512 %.12, %struct.ap_uint.0* align 512 %.23, %struct.AxiArPkt* %1)
  call fastcc void @onebyonecpy_hls.p0struct.AxiBPkt(%struct.ap_uint.3* align 512 %.02, %struct.ap_uint.0* align 512 %.13, %struct.ap_uint.0* align 512 %.24, %struct.AxiBPkt* %2)
  call fastcc void @onebyonecpy_hls.p0struct.AxiRPkt.48(%struct.ap_uint* align 512 %.03, %struct.ap_uint.3* align 512 %.14, %struct.ap_uint.0* align 512 %.25, %struct.ap_uint.0* align 512 %.3, %struct.AxiRPkt* %3)
  call fastcc void @onebyonecpy_hls.p0struct.AxiWPkt(%struct.ap_uint* align 512 %.04, %struct.ap_uint.6* align 512 %.15, %struct.ap_uint.0* align 512 %.26, %struct.ap_uint.0* align 512 %.37, %struct.AxiWPkt* %4)
  ret void
}

declare i1 @fpga_fifo_exist_8(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* noalias nocapture align 512, %struct.ap_uint* noalias nocapture) unnamed_addr #2 {
entry:
  %2 = alloca %struct.ap_uint
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint* %2 to i8*
  %6 = bitcast %struct.ap_uint* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint, %struct.ap_uint* %2
  %8 = bitcast %struct.ap_uint* %2 to i8*
  %9 = bitcast %struct.ap_uint* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint* %1 to i8*
  %11 = bitcast %struct.ap_uint* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* noalias nocapture align 512, %struct.ap_int_base* noalias nocapture) unnamed_addr #2 {
entry:
  %2 = alloca %struct.ap_int_base
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base* %2 to i8*
  %6 = bitcast %struct.ap_int_base* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base, %struct.ap_int_base* %2
  %8 = bitcast %struct.ap_int_base* %2 to i8*
  %9 = bitcast %struct.ap_int_base* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base* %1 to i8*
  %11 = bitcast %struct.ap_int_base* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* noalias nocapture align 512, %struct.ssdm_int* noalias nocapture) unnamed_addr #2 {
entry:
  %2 = alloca %struct.ssdm_int
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int* %2 to i8*
  %6 = bitcast %struct.ssdm_int* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int, %struct.ssdm_int* %2
  %8 = bitcast %struct.ssdm_int* %2 to i8*
  %9 = bitcast %struct.ssdm_int* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int* %1 to i8*
  %11 = bitcast %struct.ssdm_int* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_1(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* noalias nocapture align 512, %struct.ap_uint.0* noalias nocapture) unnamed_addr #2 {
entry:
  %2 = alloca %struct.ap_uint.0
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.0* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.0* %2 to i8*
  %6 = bitcast %struct.ap_uint.0* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.0, %struct.ap_uint.0* %2
  %8 = bitcast %struct.ap_uint.0* %2 to i8*
  %9 = bitcast %struct.ap_uint.0* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.0* %1 to i8*
  %11 = bitcast %struct.ap_uint.0* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* noalias nocapture align 512, %struct.ap_int_base.1* noalias nocapture) unnamed_addr #2 {
entry:
  %2 = alloca %struct.ap_int_base.1
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.1* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.1* %2 to i8*
  %6 = bitcast %struct.ap_int_base.1* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.1, %struct.ap_int_base.1* %2
  %8 = bitcast %struct.ap_int_base.1* %2 to i8*
  %9 = bitcast %struct.ap_int_base.1* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.1* %1 to i8*
  %11 = bitcast %struct.ap_int_base.1* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* noalias nocapture align 512, %struct.ssdm_int.2* noalias nocapture) unnamed_addr #2 {
entry:
  %2 = alloca %struct.ssdm_int.2
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.2* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.2* %2 to i8*
  %6 = bitcast %struct.ssdm_int.2* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.2, %struct.ssdm_int.2* %2
  %8 = bitcast %struct.ssdm_int.2* %2 to i8*
  %9 = bitcast %struct.ssdm_int.2* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !11

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.2* %1 to i8*
  %11 = bitcast %struct.ssdm_int.2* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0struct.AxiBPkt(%struct.ap_uint.3* noalias nocapture align 512 "unpacked"="0.0" %.02, %struct.ap_uint.0* noalias nocapture align 512 "unpacked"="0.1" %.13, %struct.ap_uint.0* noalias nocapture align 512 "unpacked"="0.2" %.24, %struct.AxiBPkt* noalias) unnamed_addr #4 {
entry:
  %1 = icmp eq %struct.AxiBPkt* %0, null
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0 = getelementptr %struct.AxiBPkt, %struct.AxiBPkt* %0, i32 0, i32 0
  %2 = bitcast %struct.AxiBPkt* %0 to i8*
  %3 = call i1 @fpga_fifo_exist_1(i8* %2)
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %copy
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* align 512 %.02, %struct.ap_uint.3* %.0)
  br label %13

; <label>:5:                                      ; preds = %copy
  %.0.04 = getelementptr %struct.AxiBPkt, %struct.AxiBPkt* %0, i32 0, i32 0, i32 0
  %.01.05 = getelementptr %struct.ap_uint.3, %struct.ap_uint.3* %.02, i32 0, i32 0
  %6 = call i1 @fpga_fifo_exist_1(i8* %2)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %5
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* align 512 %.01.05, %struct.ap_int_base.4* %.0.04)
  br label %13

; <label>:8:                                      ; preds = %5
  %.0.0.06 = getelementptr %struct.AxiBPkt, %struct.AxiBPkt* %0, i32 0, i32 0, i32 0, i32 0
  %.01.0.07 = getelementptr %struct.ap_uint.3, %struct.ap_uint.3* %.02, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_1(i8* %2)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* align 512 %.01.0.07, %struct.ssdm_int.5* %.0.0.06)
  br label %13

; <label>:11:                                     ; preds = %8
  %12 = bitcast %struct.ap_uint.3* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %2, i64 1, i1 false)
  br label %13

; <label>:13:                                     ; preds = %11, %10, %7, %4
  %.1 = getelementptr %struct.AxiBPkt, %struct.AxiBPkt* %0, i32 0, i32 1
  %14 = bitcast %struct.ap_uint.0* %.1 to i8*
  %15 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* align 512 %.13, %struct.ap_uint.0* %.1)
  br label %28

; <label>:17:                                     ; preds = %13
  %.1.010 = getelementptr %struct.AxiBPkt, %struct.AxiBPkt* %0, i32 0, i32 1, i32 0
  %.12.011 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.13, i32 0, i32 0
  %18 = bitcast %struct.ap_int_base.1* %.1.010 to i8*
  %19 = call i1 @fpga_fifo_exist_1(i8* %18)
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* align 512 %.12.011, %struct.ap_int_base.1* %.1.010)
  br label %28

; <label>:21:                                     ; preds = %17
  %.1.0.012 = getelementptr %struct.AxiBPkt, %struct.AxiBPkt* %0, i32 0, i32 1, i32 0, i32 0
  %.12.0.013 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.13, i32 0, i32 0, i32 0
  %22 = bitcast %struct.ssdm_int.2* %.1.0.012 to i8*
  %23 = call i1 @fpga_fifo_exist_1(i8* %22)
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %21
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* align 512 %.12.0.013, %struct.ssdm_int.2* %.1.0.012)
  br label %28

; <label>:25:                                     ; preds = %21
  %26 = bitcast %struct.ap_uint.0* %.13 to i8*
  %.1.0.0.014.gep6 = getelementptr %struct.AxiBPkt, %struct.AxiBPkt* %0, i32 0, i32 1, i32 0, i32 0, i32 0
  %27 = bitcast i1* %.1.0.0.014.gep6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 %27, i64 1, i1 false)
  br label %28

; <label>:28:                                     ; preds = %25, %24, %20, %16
  %.2 = getelementptr %struct.AxiBPkt, %struct.AxiBPkt* %0, i32 0, i32 2
  %29 = bitcast %struct.ap_uint.0* %.2 to i8*
  %30 = call i1 @fpga_fifo_exist_1(i8* %29)
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %28
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* align 512 %.24, %struct.ap_uint.0* %.2)
  br label %ret

; <label>:32:                                     ; preds = %28
  %.2.016 = getelementptr %struct.AxiBPkt, %struct.AxiBPkt* %0, i32 0, i32 2, i32 0
  %.23.017 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.24, i32 0, i32 0
  %33 = bitcast %struct.ap_int_base.1* %.2.016 to i8*
  %34 = call i1 @fpga_fifo_exist_1(i8* %33)
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %32
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* align 512 %.23.017, %struct.ap_int_base.1* %.2.016)
  br label %ret

; <label>:36:                                     ; preds = %32
  %.2.0.018 = getelementptr %struct.AxiBPkt, %struct.AxiBPkt* %0, i32 0, i32 2, i32 0, i32 0
  %.23.0.019 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.24, i32 0, i32 0, i32 0
  %37 = bitcast %struct.ssdm_int.2* %.2.0.018 to i8*
  %38 = call i1 @fpga_fifo_exist_1(i8* %37)
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %36
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* align 512 %.23.0.019, %struct.ssdm_int.2* %.2.0.018)
  br label %ret

; <label>:40:                                     ; preds = %36
  %41 = bitcast %struct.ap_uint.0* %.24 to i8*
  %.2.0.0.020.gep8 = getelementptr %struct.AxiBPkt, %struct.AxiBPkt* %0, i32 0, i32 2, i32 0, i32 0, i32 0
  %42 = bitcast i1* %.2.0.0.020.gep8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %41, i8* align 1 %42, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %40, %39, %35, %31, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* noalias nocapture align 512, %struct.ap_uint.3* noalias nocapture) unnamed_addr #2 {
entry:
  %2 = alloca %struct.ap_uint.3
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.3* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.3* %2 to i8*
  %6 = bitcast %struct.ap_uint.3* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.3, %struct.ap_uint.3* %2
  %8 = bitcast %struct.ap_uint.3* %2 to i8*
  %9 = bitcast %struct.ap_uint.3* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !12

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.3* %1 to i8*
  %11 = bitcast %struct.ap_uint.3* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* noalias nocapture align 512, %struct.ap_int_base.4* noalias nocapture) unnamed_addr #2 {
entry:
  %2 = alloca %struct.ap_int_base.4
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.4* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.4* %2 to i8*
  %6 = bitcast %struct.ap_int_base.4* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.4, %struct.ap_int_base.4* %2
  %8 = bitcast %struct.ap_int_base.4* %2 to i8*
  %9 = bitcast %struct.ap_int_base.4* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !13

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.4* %1 to i8*
  %11 = bitcast %struct.ap_int_base.4* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* noalias nocapture align 512, %struct.ssdm_int.5* noalias nocapture) unnamed_addr #2 {
entry:
  %2 = alloca %struct.ssdm_int.5
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.5* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.5* %2 to i8*
  %6 = bitcast %struct.ssdm_int.5* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.5, %struct.ssdm_int.5* %2
  %8 = bitcast %struct.ssdm_int.5* %2 to i8*
  %9 = bitcast %struct.ssdm_int.5* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !14

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.5* %1 to i8*
  %11 = bitcast %struct.ssdm_int.5* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0struct.AxiRPkt(%struct.AxiRPkt* noalias, %struct.ap_uint* noalias align 512 "unpacked"="1.0" %.02, %struct.ap_uint.3* noalias align 512 "unpacked"="1.1" %.13, %struct.ap_uint.0* noalias align 512 "unpacked"="1.2" %.24, %struct.ap_uint.0* noalias align 512 "unpacked"="1.3" %.35) unnamed_addr #4 {
entry:
  %1 = icmp eq %struct.AxiRPkt* %0, null
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 0
  %2 = bitcast %struct.ap_uint* %.02 to i8*
  %3 = call i1 @fpga_fifo_exist_8(i8* %2)
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %copy
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %.01, %struct.ap_uint* align 512 %.02)
  br label %13

; <label>:5:                                      ; preds = %copy
  %.0.05 = getelementptr %struct.ap_uint, %struct.ap_uint* %.02, i32 0, i32 0
  %.01.06 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 0, i32 0
  %6 = call i1 @fpga_fifo_exist_8(i8* %2)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %5
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %.01.06, %struct.ap_int_base* align 512 %.0.05)
  br label %13

; <label>:8:                                      ; preds = %5
  %.0.0.07 = getelementptr %struct.ap_uint, %struct.ap_uint* %.02, i32 0, i32 0, i32 0
  %.01.0.08 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_8(i8* %2)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %.01.0.08, %struct.ssdm_int* align 512 %.0.0.07)
  br label %13

; <label>:11:                                     ; preds = %8
  %12 = bitcast %struct.AxiRPkt* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %2, i64 8, i1 false)
  br label %13

; <label>:13:                                     ; preds = %11, %10, %7, %4
  %.12 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 1
  %14 = bitcast %struct.ap_uint.3* %.13 to i8*
  %15 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.12, %struct.ap_uint.3* align 512 %.13)
  br label %25

; <label>:17:                                     ; preds = %13
  %.1.011 = getelementptr %struct.ap_uint.3, %struct.ap_uint.3* %.13, i32 0, i32 0
  %.12.012 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 1, i32 0
  %18 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %17
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.12.012, %struct.ap_int_base.4* align 512 %.1.011)
  br label %25

; <label>:20:                                     ; preds = %17
  %.1.0.013 = getelementptr %struct.ap_uint.3, %struct.ap_uint.3* %.13, i32 0, i32 0, i32 0
  %.12.0.014 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 1, i32 0, i32 0
  %21 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %20
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.12.0.014, %struct.ssdm_int.5* align 512 %.1.0.013)
  br label %25

; <label>:23:                                     ; preds = %20
  %.12.0.0.016.gep6 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 1, i32 0, i32 0, i32 0
  %24 = bitcast i2* %.12.0.0.016.gep6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 %14, i64 1, i1 false)
  br label %25

; <label>:25:                                     ; preds = %23, %22, %19, %16
  %.23 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 2
  %26 = bitcast %struct.ap_uint.0* %.24 to i8*
  %27 = call i1 @fpga_fifo_exist_1(i8* %26)
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %25
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* %.23, %struct.ap_uint.0* align 512 %.24)
  br label %37

; <label>:29:                                     ; preds = %25
  %.2.017 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.24, i32 0, i32 0
  %.23.018 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 2, i32 0
  %30 = call i1 @fpga_fifo_exist_1(i8* %26)
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %29
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* %.23.018, %struct.ap_int_base.1* align 512 %.2.017)
  br label %37

; <label>:32:                                     ; preds = %29
  %.2.0.019 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.24, i32 0, i32 0, i32 0
  %.23.0.020 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 2, i32 0, i32 0
  %33 = call i1 @fpga_fifo_exist_1(i8* %26)
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %32
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* %.23.0.020, %struct.ssdm_int.2* align 512 %.2.0.019)
  br label %37

; <label>:35:                                     ; preds = %32
  %.23.0.0.022.gep8 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 2, i32 0, i32 0, i32 0
  %36 = bitcast i1* %.23.0.0.022.gep8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %26, i64 1, i1 false)
  br label %37

; <label>:37:                                     ; preds = %35, %34, %31, %28
  %.34 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 3
  %38 = bitcast %struct.ap_uint.0* %.35 to i8*
  %39 = call i1 @fpga_fifo_exist_1(i8* %38)
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %37
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* %.34, %struct.ap_uint.0* align 512 %.35)
  br label %ret

; <label>:41:                                     ; preds = %37
  %.3.023 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.35, i32 0, i32 0
  %.34.024 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 3, i32 0
  %42 = call i1 @fpga_fifo_exist_1(i8* %38)
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %41
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* %.34.024, %struct.ap_int_base.1* align 512 %.3.023)
  br label %ret

; <label>:44:                                     ; preds = %41
  %.3.0.025 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.35, i32 0, i32 0, i32 0
  %.34.0.026 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 3, i32 0, i32 0
  %45 = call i1 @fpga_fifo_exist_1(i8* %38)
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %44
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* %.34.0.026, %struct.ssdm_int.2* align 512 %.3.0.025)
  br label %ret

; <label>:47:                                     ; preds = %44
  %.34.0.0.028.gep10 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 3, i32 0, i32 0, i32 0
  %48 = bitcast i1* %.34.0.0.028.gep10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %48, i8* align 1 %38, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %47, %46, %43, %40, %entry
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0struct.AxiWPkt(%struct.ap_uint* noalias nocapture align 512 "unpacked"="0.0" %.02, %struct.ap_uint.6* noalias nocapture align 512 "unpacked"="0.1" %.13, %struct.ap_uint.0* noalias nocapture align 512 "unpacked"="0.2" %.24, %struct.ap_uint.0* noalias nocapture align 512 "unpacked"="0.3" %.35, %struct.AxiWPkt* noalias) unnamed_addr #4 {
entry:
  %1 = icmp eq %struct.AxiWPkt* %0, null
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 0
  %2 = bitcast %struct.AxiWPkt* %0 to i8*
  %3 = call i1 @fpga_fifo_exist_8(i8* %2)
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %copy
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* align 512 %.02, %struct.ap_uint* %.0)
  br label %13

; <label>:5:                                      ; preds = %copy
  %.0.05 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 0, i32 0
  %.01.06 = getelementptr %struct.ap_uint, %struct.ap_uint* %.02, i32 0, i32 0
  %6 = call i1 @fpga_fifo_exist_8(i8* %2)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %5
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* align 512 %.01.06, %struct.ap_int_base* %.0.05)
  br label %13

; <label>:8:                                      ; preds = %5
  %.0.0.07 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 0, i32 0, i32 0
  %.01.0.08 = getelementptr %struct.ap_uint, %struct.ap_uint* %.02, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_8(i8* %2)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* align 512 %.01.0.08, %struct.ssdm_int* %.0.0.07)
  br label %13

; <label>:11:                                     ; preds = %8
  %12 = bitcast %struct.ap_uint* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %2, i64 8, i1 false)
  br label %13

; <label>:13:                                     ; preds = %11, %10, %7, %4
  %.1 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 1
  %14 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 1, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  call fastcc void @streamcpy_hls.p0struct.ap_uint.6(%struct.ap_uint.6* align 512 %.13, %struct.ap_uint.6* %.1)
  br label %24

; <label>:17:                                     ; preds = %13
  %.1.011 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 1, i32 0
  %.12.012 = getelementptr %struct.ap_uint.6, %struct.ap_uint.6* %.13, i32 0, i32 0
  %18 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %17
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.7(%struct.ap_int_base.7* align 512 %.12.012, %struct.ap_int_base.7* %.1.011)
  br label %24

; <label>:20:                                     ; preds = %17
  %.1.0.013 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 1, i32 0, i32 0
  %.12.0.014 = getelementptr %struct.ap_uint.6, %struct.ap_uint.6* %.13, i32 0, i32 0, i32 0
  %21 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %20
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.8(%struct.ssdm_int.8* align 512 %.12.0.014, %struct.ssdm_int.8* %.1.0.013)
  br label %24

; <label>:23:                                     ; preds = %20
  %.12.0.0.016 = getelementptr %struct.ap_uint.6, %struct.ap_uint.6* %.13, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.12.0.0.016, i8* align 1 %14, i64 1, i1 false)
  br label %24

; <label>:24:                                     ; preds = %23, %22, %19, %16
  %.2 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 2
  %25 = bitcast %struct.ap_uint.0* %.2 to i8*
  %26 = call i1 @fpga_fifo_exist_1(i8* %25)
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %24
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* align 512 %.24, %struct.ap_uint.0* %.2)
  br label %39

; <label>:28:                                     ; preds = %24
  %.2.017 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 2, i32 0
  %.23.018 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.24, i32 0, i32 0
  %29 = bitcast %struct.ap_int_base.1* %.2.017 to i8*
  %30 = call i1 @fpga_fifo_exist_1(i8* %29)
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %28
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* align 512 %.23.018, %struct.ap_int_base.1* %.2.017)
  br label %39

; <label>:32:                                     ; preds = %28
  %.2.0.019 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 2, i32 0, i32 0
  %.23.0.020 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.24, i32 0, i32 0, i32 0
  %33 = bitcast %struct.ssdm_int.2* %.2.0.019 to i8*
  %34 = call i1 @fpga_fifo_exist_1(i8* %33)
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %32
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* align 512 %.23.0.020, %struct.ssdm_int.2* %.2.0.019)
  br label %39

; <label>:36:                                     ; preds = %32
  %37 = bitcast %struct.ap_uint.0* %.24 to i8*
  %.2.0.0.021.gep7 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 2, i32 0, i32 0, i32 0
  %38 = bitcast i1* %.2.0.0.021.gep7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %37, i8* align 1 %38, i64 1, i1 false)
  br label %39

; <label>:39:                                     ; preds = %36, %35, %31, %27
  %.3 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 3
  %40 = bitcast %struct.ap_uint.0* %.3 to i8*
  %41 = call i1 @fpga_fifo_exist_1(i8* %40)
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %39
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* align 512 %.35, %struct.ap_uint.0* %.3)
  br label %ret

; <label>:43:                                     ; preds = %39
  %.3.023 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 3, i32 0
  %.34.024 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.35, i32 0, i32 0
  %44 = bitcast %struct.ap_int_base.1* %.3.023 to i8*
  %45 = call i1 @fpga_fifo_exist_1(i8* %44)
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %43
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* align 512 %.34.024, %struct.ap_int_base.1* %.3.023)
  br label %ret

; <label>:47:                                     ; preds = %43
  %.3.0.025 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 3, i32 0, i32 0
  %.34.0.026 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.35, i32 0, i32 0, i32 0
  %48 = bitcast %struct.ssdm_int.2* %.3.0.025 to i8*
  %49 = call i1 @fpga_fifo_exist_1(i8* %48)
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %47
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* align 512 %.34.0.026, %struct.ssdm_int.2* %.3.0.025)
  br label %ret

; <label>:51:                                     ; preds = %47
  %52 = bitcast %struct.ap_uint.0* %.35 to i8*
  %.3.0.0.027.gep9 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 3, i32 0, i32 0, i32 0
  %53 = bitcast i1* %.3.0.0.027.gep9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %52, i8* align 1 %53, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %51, %50, %46, %42, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.6(%struct.ap_uint.6* noalias nocapture align 512, %struct.ap_uint.6* noalias nocapture) unnamed_addr #2 {
entry:
  %2 = alloca %struct.ap_uint.6
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.6* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.6* %2 to i8*
  %6 = bitcast %struct.ap_uint.6* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.6, %struct.ap_uint.6* %2
  %8 = bitcast %struct.ap_uint.6* %2 to i8*
  %9 = bitcast %struct.ap_uint.6* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !15

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %struct.ap_uint.6, %struct.ap_uint.6* %1, i32 0, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ap_uint.6, %struct.ap_uint.6* %0, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.7(%struct.ap_int_base.7* noalias nocapture align 512, %struct.ap_int_base.7* noalias nocapture) unnamed_addr #2 {
entry:
  %2 = alloca %struct.ap_int_base.7
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.7* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.7* %2 to i8*
  %6 = bitcast %struct.ap_int_base.7* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.7, %struct.ap_int_base.7* %2
  %8 = bitcast %struct.ap_int_base.7* %2 to i8*
  %9 = bitcast %struct.ap_int_base.7* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !16

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %struct.ap_int_base.7, %struct.ap_int_base.7* %1, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ap_int_base.7, %struct.ap_int_base.7* %0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.8(%struct.ssdm_int.8* noalias nocapture align 512, %struct.ssdm_int.8* noalias nocapture) unnamed_addr #2 {
entry:
  %2 = alloca %struct.ssdm_int.8
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.8* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.8* %2 to i8*
  %6 = bitcast %struct.ssdm_int.8* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.8, %struct.ssdm_int.8* %2
  %8 = bitcast %struct.ssdm_int.8* %2 to i8*
  %9 = bitcast %struct.ssdm_int.8* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !17

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %struct.ssdm_int.8, %struct.ssdm_int.8* %1, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ssdm_int.8, %struct.ssdm_int.8* %0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_out(%struct.AxiArPkt*, %struct.ap_uint* noalias align 512 "unpacked"="1.0" %.0, %struct.ap_uint.0* noalias align 512 "unpacked"="1.1" %.1, %struct.ap_uint.0* noalias align 512 "unpacked"="1.2" %.2, %struct.AxiArPkt*, %struct.ap_uint* noalias align 512 "unpacked"="5.0" %.01, %struct.ap_uint.0* noalias align 512 "unpacked"="5.1" %.12, %struct.ap_uint.0* noalias align 512 "unpacked"="5.2" %.23, %struct.AxiBPkt*, %struct.ap_uint.3* noalias align 512 "unpacked"="9.0" %.02, %struct.ap_uint.0* noalias align 512 "unpacked"="9.1" %.13, %struct.ap_uint.0* noalias align 512 "unpacked"="9.2" %.24, %struct.AxiRPkt*, %struct.ap_uint* noalias align 512 "unpacked"="13.0" %.03, %struct.ap_uint.3* noalias align 512 "unpacked"="13.1" %.14, %struct.ap_uint.0* noalias align 512 "unpacked"="13.2" %.25, %struct.ap_uint.0* noalias align 512 "unpacked"="13.3" %.3, %struct.AxiWPkt*, %struct.ap_uint* noalias align 512 "unpacked"="18.0" %.04, %struct.ap_uint.6* noalias align 512 "unpacked"="18.1" %.15, %struct.ap_uint.0* noalias align 512 "unpacked"="18.2" %.26, %struct.ap_uint.0* noalias align 512 "unpacked"="18.3" %.37) unnamed_addr #5 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.AxiArPkt(%struct.AxiArPkt* %0, %struct.ap_uint* align 512 %.0, %struct.ap_uint.0* align 512 %.1, %struct.ap_uint.0* align 512 %.2)
  call fastcc void @onebyonecpy_hls.p0struct.AxiArPkt(%struct.AxiArPkt* %1, %struct.ap_uint* align 512 %.01, %struct.ap_uint.0* align 512 %.12, %struct.ap_uint.0* align 512 %.23)
  call fastcc void @onebyonecpy_hls.p0struct.AxiBPkt.41(%struct.AxiBPkt* %2, %struct.ap_uint.3* align 512 %.02, %struct.ap_uint.0* align 512 %.13, %struct.ap_uint.0* align 512 %.24)
  call fastcc void @onebyonecpy_hls.p0struct.AxiRPkt(%struct.AxiRPkt* %3, %struct.ap_uint* align 512 %.03, %struct.ap_uint.3* align 512 %.14, %struct.ap_uint.0* align 512 %.25, %struct.ap_uint.0* align 512 %.3)
  call fastcc void @onebyonecpy_hls.p0struct.AxiWPkt.55(%struct.AxiWPkt* %4, %struct.ap_uint* align 512 %.04, %struct.ap_uint.6* align 512 %.15, %struct.ap_uint.0* align 512 %.26, %struct.ap_uint.0* align 512 %.37)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0struct.AxiArPkt(%struct.AxiArPkt* noalias, %struct.ap_uint* noalias align 512 "unpacked"="1.0" %.02, %struct.ap_uint.0* noalias align 512 "unpacked"="1.1" %.13, %struct.ap_uint.0* noalias align 512 "unpacked"="1.2" %.24) unnamed_addr #4 {
entry:
  %1 = icmp eq %struct.AxiArPkt* %0, null
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01 = getelementptr %struct.AxiArPkt, %struct.AxiArPkt* %0, i32 0, i32 0
  %2 = bitcast %struct.ap_uint* %.02 to i8*
  %3 = call i1 @fpga_fifo_exist_8(i8* %2)
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %copy
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %.01, %struct.ap_uint* align 512 %.02)
  br label %13

; <label>:5:                                      ; preds = %copy
  %.0.04 = getelementptr %struct.ap_uint, %struct.ap_uint* %.02, i32 0, i32 0
  %.01.05 = getelementptr %struct.AxiArPkt, %struct.AxiArPkt* %0, i32 0, i32 0, i32 0
  %6 = call i1 @fpga_fifo_exist_8(i8* %2)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %5
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %.01.05, %struct.ap_int_base* align 512 %.0.04)
  br label %13

; <label>:8:                                      ; preds = %5
  %.0.0.06 = getelementptr %struct.ap_uint, %struct.ap_uint* %.02, i32 0, i32 0, i32 0
  %.01.0.07 = getelementptr %struct.AxiArPkt, %struct.AxiArPkt* %0, i32 0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_8(i8* %2)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %.01.0.07, %struct.ssdm_int* align 512 %.0.0.06)
  br label %13

; <label>:11:                                     ; preds = %8
  %12 = bitcast %struct.AxiArPkt* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %2, i64 8, i1 false)
  br label %13

; <label>:13:                                     ; preds = %11, %10, %7, %4
  %.12 = getelementptr %struct.AxiArPkt, %struct.AxiArPkt* %0, i32 0, i32 1
  %14 = bitcast %struct.ap_uint.0* %.13 to i8*
  %15 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* %.12, %struct.ap_uint.0* align 512 %.13)
  br label %25

; <label>:17:                                     ; preds = %13
  %.1.010 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.13, i32 0, i32 0
  %.12.011 = getelementptr %struct.AxiArPkt, %struct.AxiArPkt* %0, i32 0, i32 1, i32 0
  %18 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %17
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* %.12.011, %struct.ap_int_base.1* align 512 %.1.010)
  br label %25

; <label>:20:                                     ; preds = %17
  %.1.0.012 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.13, i32 0, i32 0, i32 0
  %.12.0.013 = getelementptr %struct.AxiArPkt, %struct.AxiArPkt* %0, i32 0, i32 1, i32 0, i32 0
  %21 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %20
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* %.12.0.013, %struct.ssdm_int.2* align 512 %.1.0.012)
  br label %25

; <label>:23:                                     ; preds = %20
  %.12.0.0.015.gep5 = getelementptr %struct.AxiArPkt, %struct.AxiArPkt* %0, i32 0, i32 1, i32 0, i32 0, i32 0
  %24 = bitcast i1* %.12.0.0.015.gep5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 %14, i64 1, i1 false)
  br label %25

; <label>:25:                                     ; preds = %23, %22, %19, %16
  %.23 = getelementptr %struct.AxiArPkt, %struct.AxiArPkt* %0, i32 0, i32 2
  %26 = bitcast %struct.ap_uint.0* %.24 to i8*
  %27 = call i1 @fpga_fifo_exist_1(i8* %26)
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %25
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* %.23, %struct.ap_uint.0* align 512 %.24)
  br label %ret

; <label>:29:                                     ; preds = %25
  %.2.016 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.24, i32 0, i32 0
  %.23.017 = getelementptr %struct.AxiArPkt, %struct.AxiArPkt* %0, i32 0, i32 2, i32 0
  %30 = call i1 @fpga_fifo_exist_1(i8* %26)
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %29
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* %.23.017, %struct.ap_int_base.1* align 512 %.2.016)
  br label %ret

; <label>:32:                                     ; preds = %29
  %.2.0.018 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.24, i32 0, i32 0, i32 0
  %.23.0.019 = getelementptr %struct.AxiArPkt, %struct.AxiArPkt* %0, i32 0, i32 2, i32 0, i32 0
  %33 = call i1 @fpga_fifo_exist_1(i8* %26)
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %32
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* %.23.0.019, %struct.ssdm_int.2* align 512 %.2.0.018)
  br label %ret

; <label>:35:                                     ; preds = %32
  %.23.0.0.021.gep7 = getelementptr %struct.AxiArPkt, %struct.AxiArPkt* %0, i32 0, i32 2, i32 0, i32 0, i32 0
  %36 = bitcast i1* %.23.0.0.021.gep7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %26, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %35, %34, %31, %28, %entry
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0struct.AxiArPkt.33(%struct.ap_uint* noalias nocapture align 512 "unpacked"="0.0" %.02, %struct.ap_uint.0* noalias nocapture align 512 "unpacked"="0.1" %.13, %struct.ap_uint.0* noalias nocapture align 512 "unpacked"="0.2" %.24, %struct.AxiArPkt* noalias) unnamed_addr #4 {
entry:
  %1 = icmp eq %struct.AxiArPkt* %0, null
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0 = getelementptr %struct.AxiArPkt, %struct.AxiArPkt* %0, i32 0, i32 0
  %2 = bitcast %struct.AxiArPkt* %0 to i8*
  %3 = call i1 @fpga_fifo_exist_8(i8* %2)
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %copy
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* align 512 %.02, %struct.ap_uint* %.0)
  br label %13

; <label>:5:                                      ; preds = %copy
  %.0.04 = getelementptr %struct.AxiArPkt, %struct.AxiArPkt* %0, i32 0, i32 0, i32 0
  %.01.05 = getelementptr %struct.ap_uint, %struct.ap_uint* %.02, i32 0, i32 0
  %6 = call i1 @fpga_fifo_exist_8(i8* %2)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %5
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* align 512 %.01.05, %struct.ap_int_base* %.0.04)
  br label %13

; <label>:8:                                      ; preds = %5
  %.0.0.06 = getelementptr %struct.AxiArPkt, %struct.AxiArPkt* %0, i32 0, i32 0, i32 0, i32 0
  %.01.0.07 = getelementptr %struct.ap_uint, %struct.ap_uint* %.02, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_8(i8* %2)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* align 512 %.01.0.07, %struct.ssdm_int* %.0.0.06)
  br label %13

; <label>:11:                                     ; preds = %8
  %12 = bitcast %struct.ap_uint* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %2, i64 8, i1 false)
  br label %13

; <label>:13:                                     ; preds = %11, %10, %7, %4
  %.1 = getelementptr %struct.AxiArPkt, %struct.AxiArPkt* %0, i32 0, i32 1
  %14 = bitcast %struct.ap_uint.0* %.1 to i8*
  %15 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* align 512 %.13, %struct.ap_uint.0* %.1)
  br label %28

; <label>:17:                                     ; preds = %13
  %.1.010 = getelementptr %struct.AxiArPkt, %struct.AxiArPkt* %0, i32 0, i32 1, i32 0
  %.12.011 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.13, i32 0, i32 0
  %18 = bitcast %struct.ap_int_base.1* %.1.010 to i8*
  %19 = call i1 @fpga_fifo_exist_1(i8* %18)
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* align 512 %.12.011, %struct.ap_int_base.1* %.1.010)
  br label %28

; <label>:21:                                     ; preds = %17
  %.1.0.012 = getelementptr %struct.AxiArPkt, %struct.AxiArPkt* %0, i32 0, i32 1, i32 0, i32 0
  %.12.0.013 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.13, i32 0, i32 0, i32 0
  %22 = bitcast %struct.ssdm_int.2* %.1.0.012 to i8*
  %23 = call i1 @fpga_fifo_exist_1(i8* %22)
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %21
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* align 512 %.12.0.013, %struct.ssdm_int.2* %.1.0.012)
  br label %28

; <label>:25:                                     ; preds = %21
  %26 = bitcast %struct.ap_uint.0* %.13 to i8*
  %.1.0.0.014.gep6 = getelementptr %struct.AxiArPkt, %struct.AxiArPkt* %0, i32 0, i32 1, i32 0, i32 0, i32 0
  %27 = bitcast i1* %.1.0.0.014.gep6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 %27, i64 1, i1 false)
  br label %28

; <label>:28:                                     ; preds = %25, %24, %20, %16
  %.2 = getelementptr %struct.AxiArPkt, %struct.AxiArPkt* %0, i32 0, i32 2
  %29 = bitcast %struct.ap_uint.0* %.2 to i8*
  %30 = call i1 @fpga_fifo_exist_1(i8* %29)
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %28
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* align 512 %.24, %struct.ap_uint.0* %.2)
  br label %ret

; <label>:32:                                     ; preds = %28
  %.2.016 = getelementptr %struct.AxiArPkt, %struct.AxiArPkt* %0, i32 0, i32 2, i32 0
  %.23.017 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.24, i32 0, i32 0
  %33 = bitcast %struct.ap_int_base.1* %.2.016 to i8*
  %34 = call i1 @fpga_fifo_exist_1(i8* %33)
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %32
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* align 512 %.23.017, %struct.ap_int_base.1* %.2.016)
  br label %ret

; <label>:36:                                     ; preds = %32
  %.2.0.018 = getelementptr %struct.AxiArPkt, %struct.AxiArPkt* %0, i32 0, i32 2, i32 0, i32 0
  %.23.0.019 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.24, i32 0, i32 0, i32 0
  %37 = bitcast %struct.ssdm_int.2* %.2.0.018 to i8*
  %38 = call i1 @fpga_fifo_exist_1(i8* %37)
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %36
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* align 512 %.23.0.019, %struct.ssdm_int.2* %.2.0.018)
  br label %ret

; <label>:40:                                     ; preds = %36
  %41 = bitcast %struct.ap_uint.0* %.24 to i8*
  %.2.0.0.020.gep8 = getelementptr %struct.AxiArPkt, %struct.AxiArPkt* %0, i32 0, i32 2, i32 0, i32 0, i32 0
  %42 = bitcast i1* %.2.0.0.020.gep8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %41, i8* align 1 %42, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %40, %39, %35, %31, %entry
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0struct.AxiBPkt.41(%struct.AxiBPkt* noalias, %struct.ap_uint.3* noalias align 512 "unpacked"="1.0" %.02, %struct.ap_uint.0* noalias align 512 "unpacked"="1.1" %.13, %struct.ap_uint.0* noalias align 512 "unpacked"="1.2" %.24) unnamed_addr #4 {
entry:
  %1 = icmp eq %struct.AxiBPkt* %0, null
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01 = getelementptr %struct.AxiBPkt, %struct.AxiBPkt* %0, i32 0, i32 0
  %2 = bitcast %struct.ap_uint.3* %.02 to i8*
  %3 = call i1 @fpga_fifo_exist_1(i8* %2)
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %copy
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01, %struct.ap_uint.3* align 512 %.02)
  br label %13

; <label>:5:                                      ; preds = %copy
  %.0.04 = getelementptr %struct.ap_uint.3, %struct.ap_uint.3* %.02, i32 0, i32 0
  %.01.05 = getelementptr %struct.AxiBPkt, %struct.AxiBPkt* %0, i32 0, i32 0, i32 0
  %6 = call i1 @fpga_fifo_exist_1(i8* %2)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %5
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.05, %struct.ap_int_base.4* align 512 %.0.04)
  br label %13

; <label>:8:                                      ; preds = %5
  %.0.0.06 = getelementptr %struct.ap_uint.3, %struct.ap_uint.3* %.02, i32 0, i32 0, i32 0
  %.01.0.07 = getelementptr %struct.AxiBPkt, %struct.AxiBPkt* %0, i32 0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_1(i8* %2)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.0.07, %struct.ssdm_int.5* align 512 %.0.0.06)
  br label %13

; <label>:11:                                     ; preds = %8
  %12 = bitcast %struct.AxiBPkt* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %2, i64 1, i1 false)
  br label %13

; <label>:13:                                     ; preds = %11, %10, %7, %4
  %.12 = getelementptr %struct.AxiBPkt, %struct.AxiBPkt* %0, i32 0, i32 1
  %14 = bitcast %struct.ap_uint.0* %.13 to i8*
  %15 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* %.12, %struct.ap_uint.0* align 512 %.13)
  br label %25

; <label>:17:                                     ; preds = %13
  %.1.010 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.13, i32 0, i32 0
  %.12.011 = getelementptr %struct.AxiBPkt, %struct.AxiBPkt* %0, i32 0, i32 1, i32 0
  %18 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %17
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* %.12.011, %struct.ap_int_base.1* align 512 %.1.010)
  br label %25

; <label>:20:                                     ; preds = %17
  %.1.0.012 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.13, i32 0, i32 0, i32 0
  %.12.0.013 = getelementptr %struct.AxiBPkt, %struct.AxiBPkt* %0, i32 0, i32 1, i32 0, i32 0
  %21 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %20
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* %.12.0.013, %struct.ssdm_int.2* align 512 %.1.0.012)
  br label %25

; <label>:23:                                     ; preds = %20
  %.12.0.0.015.gep5 = getelementptr %struct.AxiBPkt, %struct.AxiBPkt* %0, i32 0, i32 1, i32 0, i32 0, i32 0
  %24 = bitcast i1* %.12.0.0.015.gep5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 %14, i64 1, i1 false)
  br label %25

; <label>:25:                                     ; preds = %23, %22, %19, %16
  %.23 = getelementptr %struct.AxiBPkt, %struct.AxiBPkt* %0, i32 0, i32 2
  %26 = bitcast %struct.ap_uint.0* %.24 to i8*
  %27 = call i1 @fpga_fifo_exist_1(i8* %26)
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %25
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* %.23, %struct.ap_uint.0* align 512 %.24)
  br label %ret

; <label>:29:                                     ; preds = %25
  %.2.016 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.24, i32 0, i32 0
  %.23.017 = getelementptr %struct.AxiBPkt, %struct.AxiBPkt* %0, i32 0, i32 2, i32 0
  %30 = call i1 @fpga_fifo_exist_1(i8* %26)
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %29
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* %.23.017, %struct.ap_int_base.1* align 512 %.2.016)
  br label %ret

; <label>:32:                                     ; preds = %29
  %.2.0.018 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.24, i32 0, i32 0, i32 0
  %.23.0.019 = getelementptr %struct.AxiBPkt, %struct.AxiBPkt* %0, i32 0, i32 2, i32 0, i32 0
  %33 = call i1 @fpga_fifo_exist_1(i8* %26)
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %32
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* %.23.0.019, %struct.ssdm_int.2* align 512 %.2.0.018)
  br label %ret

; <label>:35:                                     ; preds = %32
  %.23.0.0.021.gep7 = getelementptr %struct.AxiBPkt, %struct.AxiBPkt* %0, i32 0, i32 2, i32 0, i32 0, i32 0
  %36 = bitcast i1* %.23.0.0.021.gep7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %26, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %35, %34, %31, %28, %entry
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0struct.AxiRPkt.48(%struct.ap_uint* noalias nocapture align 512 "unpacked"="0.0" %.02, %struct.ap_uint.3* noalias nocapture align 512 "unpacked"="0.1" %.13, %struct.ap_uint.0* noalias nocapture align 512 "unpacked"="0.2" %.24, %struct.ap_uint.0* noalias nocapture align 512 "unpacked"="0.3" %.35, %struct.AxiRPkt* noalias) unnamed_addr #4 {
entry:
  %1 = icmp eq %struct.AxiRPkt* %0, null
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 0
  %2 = bitcast %struct.AxiRPkt* %0 to i8*
  %3 = call i1 @fpga_fifo_exist_8(i8* %2)
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %copy
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* align 512 %.02, %struct.ap_uint* %.0)
  br label %13

; <label>:5:                                      ; preds = %copy
  %.0.05 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 0, i32 0
  %.01.06 = getelementptr %struct.ap_uint, %struct.ap_uint* %.02, i32 0, i32 0
  %6 = call i1 @fpga_fifo_exist_8(i8* %2)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %5
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* align 512 %.01.06, %struct.ap_int_base* %.0.05)
  br label %13

; <label>:8:                                      ; preds = %5
  %.0.0.07 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 0, i32 0, i32 0
  %.01.0.08 = getelementptr %struct.ap_uint, %struct.ap_uint* %.02, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_8(i8* %2)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* align 512 %.01.0.08, %struct.ssdm_int* %.0.0.07)
  br label %13

; <label>:11:                                     ; preds = %8
  %12 = bitcast %struct.ap_uint* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %2, i64 8, i1 false)
  br label %13

; <label>:13:                                     ; preds = %11, %10, %7, %4
  %.1 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 1
  %14 = bitcast %struct.ap_uint.3* %.1 to i8*
  %15 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* align 512 %.13, %struct.ap_uint.3* %.1)
  br label %28

; <label>:17:                                     ; preds = %13
  %.1.011 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 1, i32 0
  %.12.012 = getelementptr %struct.ap_uint.3, %struct.ap_uint.3* %.13, i32 0, i32 0
  %18 = bitcast %struct.ap_int_base.4* %.1.011 to i8*
  %19 = call i1 @fpga_fifo_exist_1(i8* %18)
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* align 512 %.12.012, %struct.ap_int_base.4* %.1.011)
  br label %28

; <label>:21:                                     ; preds = %17
  %.1.0.013 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 1, i32 0, i32 0
  %.12.0.014 = getelementptr %struct.ap_uint.3, %struct.ap_uint.3* %.13, i32 0, i32 0, i32 0
  %22 = bitcast %struct.ssdm_int.5* %.1.0.013 to i8*
  %23 = call i1 @fpga_fifo_exist_1(i8* %22)
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %21
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* align 512 %.12.0.014, %struct.ssdm_int.5* %.1.0.013)
  br label %28

; <label>:25:                                     ; preds = %21
  %26 = bitcast %struct.ap_uint.3* %.13 to i8*
  %.1.0.0.015.gep7 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 1, i32 0, i32 0, i32 0
  %27 = bitcast i2* %.1.0.0.015.gep7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 %27, i64 1, i1 false)
  br label %28

; <label>:28:                                     ; preds = %25, %24, %20, %16
  %.2 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 2
  %29 = bitcast %struct.ap_uint.0* %.2 to i8*
  %30 = call i1 @fpga_fifo_exist_1(i8* %29)
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %28
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* align 512 %.24, %struct.ap_uint.0* %.2)
  br label %43

; <label>:32:                                     ; preds = %28
  %.2.017 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 2, i32 0
  %.23.018 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.24, i32 0, i32 0
  %33 = bitcast %struct.ap_int_base.1* %.2.017 to i8*
  %34 = call i1 @fpga_fifo_exist_1(i8* %33)
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %32
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* align 512 %.23.018, %struct.ap_int_base.1* %.2.017)
  br label %43

; <label>:36:                                     ; preds = %32
  %.2.0.019 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 2, i32 0, i32 0
  %.23.0.020 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.24, i32 0, i32 0, i32 0
  %37 = bitcast %struct.ssdm_int.2* %.2.0.019 to i8*
  %38 = call i1 @fpga_fifo_exist_1(i8* %37)
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %36
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* align 512 %.23.0.020, %struct.ssdm_int.2* %.2.0.019)
  br label %43

; <label>:40:                                     ; preds = %36
  %41 = bitcast %struct.ap_uint.0* %.24 to i8*
  %.2.0.0.021.gep9 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 2, i32 0, i32 0, i32 0
  %42 = bitcast i1* %.2.0.0.021.gep9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %41, i8* align 1 %42, i64 1, i1 false)
  br label %43

; <label>:43:                                     ; preds = %40, %39, %35, %31
  %.3 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 3
  %44 = bitcast %struct.ap_uint.0* %.3 to i8*
  %45 = call i1 @fpga_fifo_exist_1(i8* %44)
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %43
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* align 512 %.35, %struct.ap_uint.0* %.3)
  br label %ret

; <label>:47:                                     ; preds = %43
  %.3.023 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 3, i32 0
  %.34.024 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.35, i32 0, i32 0
  %48 = bitcast %struct.ap_int_base.1* %.3.023 to i8*
  %49 = call i1 @fpga_fifo_exist_1(i8* %48)
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %47
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* align 512 %.34.024, %struct.ap_int_base.1* %.3.023)
  br label %ret

; <label>:51:                                     ; preds = %47
  %.3.0.025 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 3, i32 0, i32 0
  %.34.0.026 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.35, i32 0, i32 0, i32 0
  %52 = bitcast %struct.ssdm_int.2* %.3.0.025 to i8*
  %53 = call i1 @fpga_fifo_exist_1(i8* %52)
  br i1 %53, label %54, label %55

; <label>:54:                                     ; preds = %51
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* align 512 %.34.0.026, %struct.ssdm_int.2* %.3.0.025)
  br label %ret

; <label>:55:                                     ; preds = %51
  %56 = bitcast %struct.ap_uint.0* %.35 to i8*
  %.3.0.0.027.gep11 = getelementptr %struct.AxiRPkt, %struct.AxiRPkt* %0, i32 0, i32 3, i32 0, i32 0, i32 0
  %57 = bitcast i1* %.3.0.0.027.gep11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %56, i8* align 1 %57, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %55, %54, %50, %46, %entry
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0struct.AxiWPkt.55(%struct.AxiWPkt* noalias, %struct.ap_uint* noalias align 512 "unpacked"="1.0" %.02, %struct.ap_uint.6* noalias align 512 "unpacked"="1.1" %.13, %struct.ap_uint.0* noalias align 512 "unpacked"="1.2" %.24, %struct.ap_uint.0* noalias align 512 "unpacked"="1.3" %.35) unnamed_addr #4 {
entry:
  %1 = icmp eq %struct.AxiWPkt* %0, null
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 0
  %2 = bitcast %struct.ap_uint* %.02 to i8*
  %3 = call i1 @fpga_fifo_exist_8(i8* %2)
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %copy
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %.01, %struct.ap_uint* align 512 %.02)
  br label %13

; <label>:5:                                      ; preds = %copy
  %.0.05 = getelementptr %struct.ap_uint, %struct.ap_uint* %.02, i32 0, i32 0
  %.01.06 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 0, i32 0
  %6 = call i1 @fpga_fifo_exist_8(i8* %2)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %5
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %.01.06, %struct.ap_int_base* align 512 %.0.05)
  br label %13

; <label>:8:                                      ; preds = %5
  %.0.0.07 = getelementptr %struct.ap_uint, %struct.ap_uint* %.02, i32 0, i32 0, i32 0
  %.01.0.08 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_8(i8* %2)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %.01.0.08, %struct.ssdm_int* align 512 %.0.0.07)
  br label %13

; <label>:11:                                     ; preds = %8
  %12 = bitcast %struct.AxiWPkt* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %2, i64 8, i1 false)
  br label %13

; <label>:13:                                     ; preds = %11, %10, %7, %4
  %.12 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 1
  %14 = getelementptr %struct.ap_uint.6, %struct.ap_uint.6* %.13, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  call fastcc void @streamcpy_hls.p0struct.ap_uint.6(%struct.ap_uint.6* %.12, %struct.ap_uint.6* align 512 %.13)
  br label %24

; <label>:17:                                     ; preds = %13
  %.1.011 = getelementptr %struct.ap_uint.6, %struct.ap_uint.6* %.13, i32 0, i32 0
  %.12.012 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 1, i32 0
  %18 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %17
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.7(%struct.ap_int_base.7* %.12.012, %struct.ap_int_base.7* align 512 %.1.011)
  br label %24

; <label>:20:                                     ; preds = %17
  %.1.0.013 = getelementptr %struct.ap_uint.6, %struct.ap_uint.6* %.13, i32 0, i32 0, i32 0
  %.12.0.014 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 1, i32 0, i32 0
  %21 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %20
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.8(%struct.ssdm_int.8* %.12.0.014, %struct.ssdm_int.8* align 512 %.1.0.013)
  br label %24

; <label>:23:                                     ; preds = %20
  %.12.0.0.016 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 1, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.12.0.0.016, i8* align 1 %14, i64 1, i1 false)
  br label %24

; <label>:24:                                     ; preds = %23, %22, %19, %16
  %.23 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 2
  %25 = bitcast %struct.ap_uint.0* %.24 to i8*
  %26 = call i1 @fpga_fifo_exist_1(i8* %25)
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %24
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* %.23, %struct.ap_uint.0* align 512 %.24)
  br label %36

; <label>:28:                                     ; preds = %24
  %.2.017 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.24, i32 0, i32 0
  %.23.018 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 2, i32 0
  %29 = call i1 @fpga_fifo_exist_1(i8* %25)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %28
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* %.23.018, %struct.ap_int_base.1* align 512 %.2.017)
  br label %36

; <label>:31:                                     ; preds = %28
  %.2.0.019 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.24, i32 0, i32 0, i32 0
  %.23.0.020 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 2, i32 0, i32 0
  %32 = call i1 @fpga_fifo_exist_1(i8* %25)
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %31
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* %.23.0.020, %struct.ssdm_int.2* align 512 %.2.0.019)
  br label %36

; <label>:34:                                     ; preds = %31
  %.23.0.0.022.gep6 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 2, i32 0, i32 0, i32 0
  %35 = bitcast i1* %.23.0.0.022.gep6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %35, i8* align 1 %25, i64 1, i1 false)
  br label %36

; <label>:36:                                     ; preds = %34, %33, %30, %27
  %.34 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 3
  %37 = bitcast %struct.ap_uint.0* %.35 to i8*
  %38 = call i1 @fpga_fifo_exist_1(i8* %37)
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %36
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* %.34, %struct.ap_uint.0* align 512 %.35)
  br label %ret

; <label>:40:                                     ; preds = %36
  %.3.023 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.35, i32 0, i32 0
  %.34.024 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 3, i32 0
  %41 = call i1 @fpga_fifo_exist_1(i8* %37)
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %40
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* %.34.024, %struct.ap_int_base.1* align 512 %.3.023)
  br label %ret

; <label>:43:                                     ; preds = %40
  %.3.0.025 = getelementptr %struct.ap_uint.0, %struct.ap_uint.0* %.35, i32 0, i32 0, i32 0
  %.34.0.026 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 3, i32 0, i32 0
  %44 = call i1 @fpga_fifo_exist_1(i8* %37)
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %43
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* %.34.0.026, %struct.ssdm_int.2* align 512 %.3.0.025)
  br label %ret

; <label>:46:                                     ; preds = %43
  %.34.0.0.028.gep8 = getelementptr %struct.AxiWPkt, %struct.AxiWPkt* %0, i32 0, i32 3, i32 0, i32 0, i32 0
  %47 = bitcast i1* %.34.0.0.028.gep8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %37, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %46, %45, %42, %39, %entry
  ret void
}

declare void @apatb_axi_slave_lite_reg_hw(%struct.ap_uint*, %struct.ap_uint.0*, %struct.ap_uint.0*, %struct.ap_uint*, %struct.ap_uint.0*, %struct.ap_uint.0*, %struct.ap_uint.3*, %struct.ap_uint.0*, %struct.ap_uint.0*, %struct.ap_uint*, %struct.ap_uint.3*, %struct.ap_uint.0*, %struct.ap_uint.0*, %struct.ap_uint*, %struct.ap_uint.6*, %struct.ap_uint.0*, %struct.ap_uint.0*)

define void @axi_slave_lite_reg_hw_stub_wrapper(%struct.ap_uint*, %struct.ap_uint.0*, %struct.ap_uint.0*, %struct.ap_uint*, %struct.ap_uint.0*, %struct.ap_uint.0*, %struct.ap_uint.3*, %struct.ap_uint.0*, %struct.ap_uint.0*, %struct.ap_uint*, %struct.ap_uint.3*, %struct.ap_uint.0*, %struct.ap_uint.0*, %struct.ap_uint*, %struct.ap_uint.6*, %struct.ap_uint.0*, %struct.ap_uint.0*) #6 {
entry:
  %17 = alloca %struct.AxiArPkt
  %18 = alloca %struct.AxiArPkt
  %19 = alloca %struct.AxiBPkt
  %20 = alloca %struct.AxiRPkt
  %21 = alloca %struct.AxiWPkt
  call void @copy_out(%struct.AxiArPkt* %17, %struct.ap_uint* %0, %struct.ap_uint.0* %1, %struct.ap_uint.0* %2, %struct.AxiArPkt* %18, %struct.ap_uint* %3, %struct.ap_uint.0* %4, %struct.ap_uint.0* %5, %struct.AxiBPkt* %19, %struct.ap_uint.3* %6, %struct.ap_uint.0* %7, %struct.ap_uint.0* %8, %struct.AxiRPkt* %20, %struct.ap_uint* %9, %struct.ap_uint.3* %10, %struct.ap_uint.0* %11, %struct.ap_uint.0* %12, %struct.AxiWPkt* %21, %struct.ap_uint* %13, %struct.ap_uint.6* %14, %struct.ap_uint.0* %15, %struct.ap_uint.0* %16)
  call void @axi_slave_lite_reg_hw_stub(%struct.AxiArPkt* %17, %struct.AxiArPkt* %18, %struct.AxiBPkt* %19, %struct.AxiRPkt* %20, %struct.AxiWPkt* %21)
  call void @copy_in(%struct.AxiArPkt* %17, %struct.ap_uint* %0, %struct.ap_uint.0* %1, %struct.ap_uint.0* %2, %struct.AxiArPkt* %18, %struct.ap_uint* %3, %struct.ap_uint.0* %4, %struct.ap_uint.0* %5, %struct.AxiBPkt* %19, %struct.ap_uint.3* %6, %struct.ap_uint.0* %7, %struct.ap_uint.0* %8, %struct.AxiRPkt* %20, %struct.ap_uint* %9, %struct.ap_uint.3* %10, %struct.ap_uint.0* %11, %struct.ap_uint.0* %12, %struct.AxiWPkt* %21, %struct.ap_uint* %13, %struct.ap_uint.6* %14, %struct.ap_uint.0* %15, %struct.ap_uint.0* %16)
  ret void
}

declare void @axi_slave_lite_reg_hw_stub(%struct.AxiArPkt*, %struct.AxiArPkt*, %struct.AxiBPkt*, %struct.AxiRPkt*, %struct.AxiWPkt*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
