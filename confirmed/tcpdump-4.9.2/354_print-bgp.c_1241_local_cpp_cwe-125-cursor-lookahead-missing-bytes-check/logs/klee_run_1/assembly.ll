; ModuleID = '/app/se_runs/sailor_engine/tcpdump-4.9.2/354_print-bgp.c_1241_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/slice.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.netdissect_options = type { i32, i8* }
%struct.bgp = type { i16, i8 }

@.str = private unnamed_addr constant [4 x i8] c"pkt\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"SPINE_PROBE:bgp_print:ENTRY\00", align 1
@__const.bgp_print.marker = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !34 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.netdissect_options*, align 8
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %2, metadata !38, metadata !DIExpression()), !dbg !39
  %4 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 16) #7, !dbg !40
  %5 = bitcast i8* %4 to %struct.netdissect_options*, !dbg !41
  store %struct.netdissect_options* %5, %struct.netdissect_options** %2, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata i8** %3, metadata !42, metadata !DIExpression()), !dbg !43
  %6 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 64) #7, !dbg !44
  store i8* %6, i8** %3, align 8, !dbg !43
  %7 = load i8*, i8** %3, align 8, !dbg !45
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 64, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !46
  %8 = load i8*, i8** %3, align 8, !dbg !47
  %9 = call i8* @memset(i8* %8, i32 255, i64 16), !dbg !48
  %10 = load i8*, i8** %3, align 8, !dbg !49
  %11 = getelementptr inbounds i8, i8* %10, i64 16, !dbg !49
  store i8 0, i8* %11, align 1, !dbg !50
  %12 = load i8*, i8** %3, align 8, !dbg !51
  %13 = getelementptr inbounds i8, i8* %12, i64 17, !dbg !51
  store i8 19, i8* %13, align 1, !dbg !52
  %14 = load i8*, i8** %3, align 8, !dbg !53
  %15 = getelementptr inbounds i8, i8* %14, i64 18, !dbg !53
  store i8 2, i8* %15, align 1, !dbg !54
  %16 = load i8*, i8** %3, align 8, !dbg !55
  %17 = getelementptr inbounds i8, i8* %16, i64 64, !dbg !56
  %18 = load %struct.netdissect_options*, %struct.netdissect_options** %2, align 8, !dbg !57
  %19 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %18, i32 0, i32 1, !dbg !58
  store i8* %17, i8** %19, align 8, !dbg !59
  %20 = load %struct.netdissect_options*, %struct.netdissect_options** %2, align 8, !dbg !60
  %21 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %20, i32 0, i32 0, !dbg !61
  store i32 1, i32* %21, align 8, !dbg !62
  %22 = load %struct.netdissect_options*, %struct.netdissect_options** %2, align 8, !dbg !63
  %23 = load i8*, i8** %3, align 8, !dbg !64
  call fastcc void @bgp_print(%struct.netdissect_options* noundef %22, i8* noundef %23), !dbg !65
  ret i32 0, !dbg !66
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare void @klee_warning_once(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @bgp_print(%struct.netdissect_options* noundef %0, i8* noundef %1) unnamed_addr #0 !dbg !67 {
  %3 = alloca %struct.netdissect_options*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca %struct.bgp, align 2
  %11 = alloca i16, align 2
  store %struct.netdissect_options* %0, %struct.netdissect_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %3, metadata !80, metadata !DIExpression()), !dbg !81
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !82, metadata !DIExpression()), !dbg !83
  store i32 19, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !84, metadata !DIExpression()), !dbg !85
  call void @klee_warning_once(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0)), !dbg !86
  call void @llvm.dbg.declare(metadata i8** %6, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata i8** %7, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata i8** %8, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata [16 x i8]* %9, metadata !93, metadata !DIExpression()), !dbg !97
  %12 = bitcast [16 x i8]* %9 to i8*, !dbg !97
  %13 = call i8* @memcpy(i8* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__const.bgp_print.marker, i32 0, i32 0), i64 16), !dbg !97
  call void @llvm.dbg.declare(metadata %struct.bgp* %10, metadata !98, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i16* %11, metadata !111, metadata !DIExpression()), !dbg !112
  %14 = load i8*, i8** %4, align 8, !dbg !113
  %15 = load i32, i32* %5, align 4, !dbg !114
  %16 = sext i32 %15 to i64, !dbg !115
  %17 = getelementptr inbounds i8, i8* %14, i64 %16, !dbg !115
  store i8* %17, i8** %7, align 8, !dbg !116
  %18 = load %struct.netdissect_options*, %struct.netdissect_options** %3, align 8, !dbg !117
  %19 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %18, i32 0, i32 1, !dbg !119
  %20 = load i8*, i8** %19, align 8, !dbg !119
  %21 = load i8*, i8** %4, align 8, !dbg !120
  %22 = load i32, i32* %5, align 4, !dbg !121
  %23 = sext i32 %22 to i64, !dbg !122
  %24 = getelementptr inbounds i8, i8* %21, i64 %23, !dbg !122
  %25 = icmp ult i8* %20, %24, !dbg !123
  br i1 %25, label %26, label %30, !dbg !124

26:                                               ; preds = %2
  %27 = load %struct.netdissect_options*, %struct.netdissect_options** %3, align 8, !dbg !125
  %28 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %27, i32 0, i32 1, !dbg !126
  %29 = load i8*, i8** %28, align 8, !dbg !126
  store i8* %29, i8** %7, align 8, !dbg !127
  br label %30, !dbg !128

30:                                               ; preds = %26, %2
  br label %31, !dbg !129

31:                                               ; preds = %30
  br label %32, !dbg !130

32:                                               ; preds = %31
  %33 = load %struct.netdissect_options*, %struct.netdissect_options** %3, align 8, !dbg !132
  %34 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %33, i32 0, i32 0, !dbg !134
  %35 = load i32, i32* %34, align 8, !dbg !134
  %36 = icmp slt i32 %35, 1, !dbg !135
  br i1 %36, label %37, label %38, !dbg !136

37:                                               ; preds = %32
  br label %61, !dbg !137

38:                                               ; preds = %32
  %39 = load i8*, i8** %4, align 8, !dbg !138
  store i8* %39, i8** %6, align 8, !dbg !139
  %40 = load i8*, i8** %6, align 8, !dbg !140
  store i8* %40, i8** %8, align 8, !dbg !141
  br label %41, !dbg !142

41:                                               ; preds = %.backedge, %38
  %42 = load i8*, i8** %6, align 8, !dbg !143
  %43 = load i8*, i8** %7, align 8, !dbg !144
  %44 = icmp ult i8* %42, %43, !dbg !145
  br i1 %44, label %45, label %.loopexit, !dbg !142

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8, !dbg !146
  %47 = getelementptr inbounds i8, i8* %46, i64 0, !dbg !146
  %48 = load i8, i8* %47, align 1, !dbg !146
  %49 = zext i8 %48 to i32, !dbg !146
  %50 = icmp ne i32 %49, 255, !dbg !149
  br i1 %50, label %51, label %54, !dbg !150

51:                                               ; preds = %45
  %52 = load i8*, i8** %6, align 8, !dbg !151
  %53 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !151
  store i8* %53, i8** %6, align 8, !dbg !151
  br label %.backedge, !dbg !153

.backedge:                                        ; preds = %51, %57
  br label %41, !dbg !143, !llvm.loop !154

54:                                               ; preds = %45
  %55 = load i8*, i8** %6, align 8, !dbg !157
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0, !dbg !159
  br label %57

57:                                               ; preds = %54
  %58 = load i8*, i8** %6, align 8, !dbg !160
  %59 = getelementptr inbounds i8, i8* %58, i32 1, !dbg !160
  store i8* %59, i8** %6, align 8, !dbg !160
  br label %.backedge, !dbg !162

.loopexit:                                        ; preds = %41
  br label %60, !dbg !163

60:                                               ; preds = %.loopexit
  br label %61, !dbg !163

61:                                               ; preds = %60, %37
  ret void, !dbg !164
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i32 @memcmp(i8* noundef nonnull %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #4 !dbg !165 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !172, metadata !DIExpression()), !dbg !173
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !174, metadata !DIExpression()), !dbg !175
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !176, metadata !DIExpression()), !dbg !177
  %7 = load i8*, i8** %4, align 8, !dbg !178
  %8 = load i8*, i8** %5, align 8, !dbg !179
  %9 = load i64, i64* %6, align 8, !dbg !180
  ret i32 1, !dbg !181
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i8* @memcpy(i8* noundef returned writeonly %0, i8* nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #5 !dbg !182 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i8* %1, metadata !191, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i64 %2, metadata !192, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i8* %0, metadata !193, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i8* %1, metadata !196, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i64 %2, metadata !192, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !190
  %.not3 = icmp eq i64 %2, 0, !dbg !199
  br i1 %.not3, label %._crit_edge, label %.lr.ph, !dbg !200

.lr.ph:                                           ; preds = %3, %.lr.ph
  %.06 = phi i8* [ %5, %.lr.ph ], [ %1, %3 ]
  %.015 = phi i8* [ %7, %.lr.ph ], [ %0, %3 ]
  %.024 = phi i64 [ %4, %.lr.ph ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i8* %.06, metadata !196, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i8* %.015, metadata !193, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i64 %.024, metadata !192, metadata !DIExpression()), !dbg !190
  %4 = add i64 %.024, -1, !dbg !201
  call void @llvm.dbg.value(metadata i64 %4, metadata !192, metadata !DIExpression()), !dbg !190
  %5 = getelementptr inbounds i8, i8* %.06, i64 1, !dbg !202
  call void @llvm.dbg.value(metadata i8* %5, metadata !196, metadata !DIExpression()), !dbg !190
  %6 = load i8, i8* %.06, align 1, !dbg !203
  %7 = getelementptr inbounds i8, i8* %.015, i64 1, !dbg !204
  call void @llvm.dbg.value(metadata i8* %7, metadata !193, metadata !DIExpression()), !dbg !190
  store i8 %6, i8* %.015, align 1, !dbg !205
  call void @llvm.dbg.value(metadata i64 %4, metadata !192, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !190
  %.not = icmp eq i64 %4, 0, !dbg !199
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !200, !llvm.loop !206

._crit_edge:                                      ; preds = %.lr.ph, %3
  ret i8* %0, !dbg !207
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local i8* @memset(i8* noundef returned writeonly %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #6 !dbg !208 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata i32 %1, metadata !214, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata i64 %2, metadata !215, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata i8* %0, metadata !216, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata i64 %2, metadata !215, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !213
  %.not2 = icmp eq i64 %2, 0, !dbg !217
  br i1 %.not2, label %._crit_edge, label %.lr.ph, !dbg !218

.lr.ph:                                           ; preds = %3
  %4 = trunc i32 %1 to i8
  br label %5, !dbg !218

5:                                                ; preds = %.lr.ph, %5
  %.04 = phi i8* [ %0, %.lr.ph ], [ %7, %5 ]
  %.013 = phi i64 [ %2, %.lr.ph ], [ %6, %5 ]
  call void @llvm.dbg.value(metadata i8* %.04, metadata !216, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata i64 %.013, metadata !215, metadata !DIExpression()), !dbg !213
  %6 = add i64 %.013, -1, !dbg !219
  call void @llvm.dbg.value(metadata i64 %6, metadata !215, metadata !DIExpression()), !dbg !213
  %7 = getelementptr inbounds i8, i8* %.04, i64 1, !dbg !220
  call void @llvm.dbg.value(metadata i8* %7, metadata !216, metadata !DIExpression()), !dbg !213
  store i8 %4, i8* %.04, align 1, !dbg !221
  call void @llvm.dbg.value(metadata i64 %6, metadata !215, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !213
  %.not = icmp eq i64 %6, 0, !dbg !217
  br i1 %.not, label %._crit_edge, label %5, !dbg !218, !llvm.loop !222

._crit_edge:                                      ; preds = %5, %3
  ret i8* %0, !dbg !224
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optnone readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !16, !18, !20, !22, !24}
!llvm.ident = !{!26, !26, !26, !26, !26, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/354_print-bgp.c_1241_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/driver.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/354_print-bgp.c_1241_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "682a57164889aae3fafbd52db508474b")
!2 = !{!3, !15}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "netdissect_options", file: !5, line: 13, baseType: !6)
!5 = !DIFile(filename: "driver.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/354_print-bgp.c_1241_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "682a57164889aae3fafbd52db508474b")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netdissect_options", file: !5, line: 10, size: 128, elements: !7)
!7 = !{!8, !10}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "ndo_vflag", scope: !6, file: !5, line: 11, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ndo_snapend", scope: !6, file: !5, line: 12, baseType: !11, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !5, line: 8, baseType: !14)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/354_print-bgp.c_1241_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/print-bgp.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/354_print-bgp.c_1241_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "e33fa3175d40b3308af714c0b32f60ff")
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/354_print-bgp.c_1241_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/smart_stubs.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/354_print-bgp.c_1241_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "46bc3046996bc0b156b7396a037c83b6")
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "/opt/tools/klee/runtime/Freestanding/memcpy.c", directory: "/opt/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "8fb9a7164e167db005d7d002570068bc")
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "/opt/tools/klee/runtime/Freestanding/memset.c", directory: "/opt/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "72c61b3d8150747c019c191df9708e2b")
!24 = distinct !DICompileUnit(language: DW_LANG_C89, file: !25, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "/opt/tools/klee/runtime/Intrinsic/klee_overshift_check.c", directory: "/opt/tools/klee/build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "5666ed772284910b5d0f856859e4d123")
!26 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!27 = !{i32 7, !"Dwarf Version", i32 5}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 17, type: !35, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!35 = !DISubroutineType(types: !36)
!36 = !{!9}
!37 = !{}
!38 = !DILocalVariable(name: "ndo", scope: !34, file: !5, line: 18, type: !3)
!39 = !DILocation(line: 18, column: 25, scope: !34)
!40 = !DILocation(line: 18, column: 53, scope: !34)
!41 = !DILocation(line: 18, column: 31, scope: !34)
!42 = !DILocalVariable(name: "pkt", scope: !34, file: !5, line: 19, type: !15)
!43 = !DILocation(line: 19, column: 20, scope: !34)
!44 = !DILocation(line: 19, column: 43, scope: !34)
!45 = !DILocation(line: 20, column: 24, scope: !34)
!46 = !DILocation(line: 20, column: 5, scope: !34)
!47 = !DILocation(line: 21, column: 12, scope: !34)
!48 = !DILocation(line: 21, column: 5, scope: !34)
!49 = !DILocation(line: 22, column: 5, scope: !34)
!50 = !DILocation(line: 22, column: 13, scope: !34)
!51 = !DILocation(line: 23, column: 5, scope: !34)
!52 = !DILocation(line: 23, column: 13, scope: !34)
!53 = !DILocation(line: 24, column: 5, scope: !34)
!54 = !DILocation(line: 24, column: 13, scope: !34)
!55 = !DILocation(line: 25, column: 24, scope: !34)
!56 = !DILocation(line: 25, column: 28, scope: !34)
!57 = !DILocation(line: 25, column: 5, scope: !34)
!58 = !DILocation(line: 25, column: 10, scope: !34)
!59 = !DILocation(line: 25, column: 22, scope: !34)
!60 = !DILocation(line: 26, column: 5, scope: !34)
!61 = !DILocation(line: 26, column: 10, scope: !34)
!62 = !DILocation(line: 26, column: 20, scope: !34)
!63 = !DILocation(line: 27, column: 15, scope: !34)
!64 = !DILocation(line: 27, column: 20, scope: !34)
!65 = !DILocation(line: 27, column: 5, scope: !34)
!66 = !DILocation(line: 28, column: 5, scope: !34)
!67 = distinct !DISubprogram(name: "bgp_print", scope: !68, file: !68, line: 88, type: !69, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !37)
!68 = !DIFile(filename: "print-bgp.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/354_print-bgp.c_1241_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "e33fa3175d40b3308af714c0b32f60ff")
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !77, !9}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "netdissect_options", file: !68, line: 13, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netdissect_options", file: !68, line: 10, size: 128, elements: !74)
!74 = !{!75, !76}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ndo_vflag", scope: !73, file: !68, line: 11, baseType: !9, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "ndo_snapend", scope: !73, file: !68, line: 12, baseType: !77, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !68, line: 8, baseType: !14)
!80 = !DILocalVariable(name: "ndo", arg: 1, scope: !67, file: !68, line: 88, type: !71)
!81 = !DILocation(line: 88, column: 31, scope: !67)
!82 = !DILocalVariable(name: "dat", arg: 2, scope: !67, file: !68, line: 89, type: !77)
!83 = !DILocation(line: 89, column: 25, scope: !67)
!84 = !DILocalVariable(name: "length", arg: 3, scope: !67, file: !68, line: 89, type: !9)
!85 = !DILocation(line: 89, column: 34, scope: !67)
!86 = !DILocation(line: 91, column: 5, scope: !67)
!87 = !DILocalVariable(name: "p", scope: !67, file: !68, line: 92, type: !77)
!88 = !DILocation(line: 92, column: 16, scope: !67)
!89 = !DILocalVariable(name: "ep", scope: !67, file: !68, line: 93, type: !77)
!90 = !DILocation(line: 93, column: 16, scope: !67)
!91 = !DILocalVariable(name: "start", scope: !67, file: !68, line: 94, type: !77)
!92 = !DILocation(line: 94, column: 16, scope: !67)
!93 = !DILocalVariable(name: "marker", scope: !67, file: !68, line: 95, type: !94)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 128, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 16)
!97 = !DILocation(line: 95, column: 15, scope: !67)
!98 = !DILocalVariable(name: "bgp", scope: !67, file: !68, line: 99, type: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bgp", file: !68, line: 15, size: 32, elements: !100)
!100 = !{!101, !107}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "bgp_len", scope: !99, file: !68, line: 16, baseType: !102, size: 16)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !103, line: 25, baseType: !104)
!103 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !105, line: 40, baseType: !106)
!105 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!106 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "bgp_type", scope: !99, file: !68, line: 17, baseType: !108, size: 8, offset: 16)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !103, line: 24, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !105, line: 38, baseType: !14)
!110 = !DILocation(line: 99, column: 13, scope: !67)
!111 = !DILocalVariable(name: "hlen", scope: !67, file: !68, line: 100, type: !102)
!112 = !DILocation(line: 100, column: 11, scope: !67)
!113 = !DILocation(line: 102, column: 7, scope: !67)
!114 = !DILocation(line: 102, column: 13, scope: !67)
!115 = !DILocation(line: 102, column: 11, scope: !67)
!116 = !DILocation(line: 102, column: 5, scope: !67)
!117 = !DILocation(line: 103, column: 6, scope: !118)
!118 = distinct !DILexicalBlock(scope: !67, file: !68, line: 103, column: 6)
!119 = !DILocation(line: 103, column: 11, scope: !118)
!120 = !DILocation(line: 103, column: 25, scope: !118)
!121 = !DILocation(line: 103, column: 31, scope: !118)
!122 = !DILocation(line: 103, column: 29, scope: !118)
!123 = !DILocation(line: 103, column: 23, scope: !118)
!124 = !DILocation(line: 103, column: 6, scope: !67)
!125 = !DILocation(line: 104, column: 8, scope: !118)
!126 = !DILocation(line: 104, column: 13, scope: !118)
!127 = !DILocation(line: 104, column: 6, scope: !118)
!128 = !DILocation(line: 104, column: 3, scope: !118)
!129 = !DILocation(line: 106, column: 2, scope: !67)
!130 = !DILocation(line: 106, column: 2, scope: !131)
!131 = distinct !DILexicalBlock(scope: !67, file: !68, line: 106, column: 2)
!132 = !DILocation(line: 108, column: 13, scope: !133)
!133 = distinct !DILexicalBlock(scope: !67, file: !68, line: 108, column: 13)
!134 = !DILocation(line: 108, column: 18, scope: !133)
!135 = !DILocation(line: 108, column: 28, scope: !133)
!136 = !DILocation(line: 108, column: 13, scope: !67)
!137 = !DILocation(line: 109, column: 17, scope: !133)
!138 = !DILocation(line: 111, column: 6, scope: !67)
!139 = !DILocation(line: 111, column: 4, scope: !67)
!140 = !DILocation(line: 112, column: 10, scope: !67)
!141 = !DILocation(line: 112, column: 8, scope: !67)
!142 = !DILocation(line: 113, column: 2, scope: !67)
!143 = !DILocation(line: 113, column: 9, scope: !67)
!144 = !DILocation(line: 113, column: 13, scope: !67)
!145 = !DILocation(line: 113, column: 11, scope: !67)
!146 = !DILocation(line: 114, column: 7, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !68, line: 114, column: 7)
!148 = distinct !DILexicalBlock(scope: !67, file: !68, line: 113, column: 17)
!149 = !DILocation(line: 114, column: 12, scope: !147)
!150 = !DILocation(line: 114, column: 7, scope: !148)
!151 = !DILocation(line: 115, column: 5, scope: !152)
!152 = distinct !DILexicalBlock(scope: !147, file: !68, line: 114, column: 21)
!153 = !DILocation(line: 116, column: 4, scope: !152)
!154 = distinct !{!154, !142, !155, !156}
!155 = !DILocation(line: 135, column: 2, scope: !67)
!156 = !{!"llvm.loop.mustprogress"}
!157 = !DILocation(line: 118, column: 14, scope: !158)
!158 = distinct !DILexicalBlock(scope: !148, file: !68, line: 118, column: 7)
!159 = !DILocation(line: 118, column: 17, scope: !158)
!160 = !DILocation(line: 119, column: 5, scope: !161)
!161 = distinct !DILexicalBlock(scope: !158, file: !68, line: 118, column: 47)
!162 = !DILocation(line: 120, column: 4, scope: !161)
!163 = !DILocation(line: 136, column: 2, scope: !67)
!164 = !DILocation(line: 137, column: 1, scope: !67)
!165 = distinct !DISubprogram(name: "memcmp", scope: !166, file: !166, line: 9, type: !167, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !37)
!166 = !DIFile(filename: "smart_stubs.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/354_print-bgp.c_1241_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "46bc3046996bc0b156b7396a037c83b6")
!167 = !DISubroutineType(types: !168)
!168 = !{!9, !169, !169, !171}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!171 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!172 = !DILocalVariable(name: "a", arg: 1, scope: !165, file: !166, line: 9, type: !169)
!173 = !DILocation(line: 9, column: 24, scope: !165)
!174 = !DILocalVariable(name: "b", arg: 2, scope: !165, file: !166, line: 9, type: !169)
!175 = !DILocation(line: 9, column: 39, scope: !165)
!176 = !DILocalVariable(name: "n", arg: 3, scope: !165, file: !166, line: 9, type: !171)
!177 = !DILocation(line: 9, column: 56, scope: !165)
!178 = !DILocation(line: 9, column: 67, scope: !165)
!179 = !DILocation(line: 9, column: 76, scope: !165)
!180 = !DILocation(line: 9, column: 85, scope: !165)
!181 = !DILocation(line: 9, column: 88, scope: !165)
!182 = distinct !DISubprogram(name: "memcpy", scope: !183, file: !183, line: 12, type: !184, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !37)
!183 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/opt/tools/klee", checksumkind: CSK_MD5, checksum: "8fb9a7164e167db005d7d002570068bc")
!184 = !DISubroutineType(types: !185)
!185 = !{!186, !186, !169, !187}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !188, line: 46, baseType: !171)
!188 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!189 = !DILocalVariable(name: "destaddr", arg: 1, scope: !182, file: !183, line: 12, type: !186)
!190 = !DILocation(line: 0, scope: !182)
!191 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !182, file: !183, line: 12, type: !169)
!192 = !DILocalVariable(name: "len", arg: 3, scope: !182, file: !183, line: 12, type: !187)
!193 = !DILocalVariable(name: "dest", scope: !182, file: !183, line: 13, type: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!196 = !DILocalVariable(name: "src", scope: !182, file: !183, line: 14, type: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!199 = !DILocation(line: 16, column: 16, scope: !182)
!200 = !DILocation(line: 16, column: 3, scope: !182)
!201 = !DILocation(line: 16, column: 13, scope: !182)
!202 = !DILocation(line: 17, column: 19, scope: !182)
!203 = !DILocation(line: 17, column: 15, scope: !182)
!204 = !DILocation(line: 17, column: 10, scope: !182)
!205 = !DILocation(line: 17, column: 13, scope: !182)
!206 = distinct !{!206, !200, !202, !156}
!207 = !DILocation(line: 18, column: 3, scope: !182)
!208 = distinct !DISubprogram(name: "memset", scope: !209, file: !209, line: 12, type: !210, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !37)
!209 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/opt/tools/klee", checksumkind: CSK_MD5, checksum: "72c61b3d8150747c019c191df9708e2b")
!210 = !DISubroutineType(types: !211)
!211 = !{!186, !186, !9, !187}
!212 = !DILocalVariable(name: "dst", arg: 1, scope: !208, file: !209, line: 12, type: !186)
!213 = !DILocation(line: 0, scope: !208)
!214 = !DILocalVariable(name: "s", arg: 2, scope: !208, file: !209, line: 12, type: !9)
!215 = !DILocalVariable(name: "count", arg: 3, scope: !208, file: !209, line: 12, type: !187)
!216 = !DILocalVariable(name: "a", scope: !208, file: !209, line: 13, type: !194)
!217 = !DILocation(line: 14, column: 18, scope: !208)
!218 = !DILocation(line: 14, column: 3, scope: !208)
!219 = !DILocation(line: 14, column: 15, scope: !208)
!220 = !DILocation(line: 15, column: 7, scope: !208)
!221 = !DILocation(line: 15, column: 10, scope: !208)
!222 = distinct !{!222, !218, !223, !156}
!223 = !DILocation(line: 15, column: 12, scope: !208)
!224 = !DILocation(line: 16, column: 3, scope: !208)
