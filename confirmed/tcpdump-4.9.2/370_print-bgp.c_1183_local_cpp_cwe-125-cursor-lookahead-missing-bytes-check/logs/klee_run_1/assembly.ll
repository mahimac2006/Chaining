; ModuleID = '/app/se_runs/sailor_engine/tcpdump-4.9.2/370_print-bgp.c_1183_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/slice.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.netdissect_options = type { i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"buf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !26 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.netdissect_options*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %2, metadata !30, metadata !DIExpression()), !dbg !31
  %5 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 16) #4, !dbg !32
  %6 = bitcast i8* %5 to %struct.netdissect_options*, !dbg !33
  store %struct.netdissect_options* %6, %struct.netdissect_options** %2, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata i8** %3, metadata !34, metadata !DIExpression()), !dbg !35
  %7 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 512) #4, !dbg !36
  store i8* %7, i8** %3, align 8, !dbg !35
  %8 = load i8*, i8** %3, align 8, !dbg !37
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 512, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !38
  %9 = load %struct.netdissect_options*, %struct.netdissect_options** %2, align 8, !dbg !39
  %10 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %9, i32 0, i32 0, !dbg !40
  store i32 1, i32* %10, align 8, !dbg !41
  %11 = load i8*, i8** %3, align 8, !dbg !42
  %12 = getelementptr inbounds i8, i8* %11, i64 512, !dbg !43
  %13 = load %struct.netdissect_options*, %struct.netdissect_options** %2, align 8, !dbg !44
  %14 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %13, i32 0, i32 1, !dbg !45
  store i8* %12, i8** %14, align 8, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %4, metadata !47, metadata !DIExpression()), !dbg !49
  store i32 0, i32* %4, align 4, !dbg !49
  br label %15, !dbg !50

15:                                               ; preds = %23, %0
  %16 = load i32, i32* %4, align 4, !dbg !51
  %17 = icmp slt i32 %16, 16, !dbg !53
  br i1 %17, label %18, label %26, !dbg !54

18:                                               ; preds = %15
  %19 = load i8*, i8** %3, align 8, !dbg !55
  %20 = load i32, i32* %4, align 4, !dbg !56
  %21 = sext i32 %20 to i64, !dbg !55
  %22 = getelementptr inbounds i8, i8* %19, i64 %21, !dbg !55
  store i8 -1, i8* %22, align 1, !dbg !57
  br label %23, !dbg !55

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4, !dbg !58
  %25 = add nsw i32 %24, 1, !dbg !58
  store i32 %25, i32* %4, align 4, !dbg !58
  br label %15, !dbg !59, !llvm.loop !60

26:                                               ; preds = %15
  %27 = load i8*, i8** %3, align 8, !dbg !63
  %28 = getelementptr inbounds i8, i8* %27, i64 16, !dbg !63
  store i8 0, i8* %28, align 1, !dbg !64
  %29 = load i8*, i8** %3, align 8, !dbg !65
  %30 = getelementptr inbounds i8, i8* %29, i64 17, !dbg !65
  store i8 19, i8* %30, align 1, !dbg !66
  %31 = load i8*, i8** %3, align 8, !dbg !67
  %32 = getelementptr inbounds i8, i8* %31, i64 18, !dbg !67
  store i8 2, i8* %32, align 1, !dbg !68
  %33 = load %struct.netdissect_options*, %struct.netdissect_options** %2, align 8, !dbg !69
  %34 = load i8*, i8** %3, align 8, !dbg !70
  call void @bgp_print(%struct.netdissect_options* noundef %33, i8* noundef %34, i32 noundef 19), !dbg !71
  ret i32 0, !dbg !72
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare void @bgp_print(%struct.netdissect_options* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0, !16}
!llvm.ident = !{!18, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/370_print-bgp.c_1183_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/driver.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/370_print-bgp.c_1183_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "80d89c637a6adad80cb4cc72ec57fed9")
!2 = !{!3, !15}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "netdissect_options", file: !5, line: 17, baseType: !6)
!5 = !DIFile(filename: "driver.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/370_print-bgp.c_1183_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "80d89c637a6adad80cb4cc72ec57fed9")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netdissect_options", file: !5, line: 13, size: 128, elements: !7)
!7 = !{!8, !10}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "ndo_vflag", scope: !6, file: !5, line: 14, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ndo_snapend", scope: !6, file: !5, line: 15, baseType: !11, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !5, line: 10, baseType: !14)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/370_print-bgp.c_1183_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/smart_stubs.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/370_print-bgp.c_1183_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "bcda1acd1a733c696e028616d9d6f3b5")
!18 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 21, type: !27, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!27 = !DISubroutineType(types: !28)
!28 = !{!9}
!29 = !{}
!30 = !DILocalVariable(name: "ndo", scope: !26, file: !5, line: 22, type: !3)
!31 = !DILocation(line: 22, column: 25, scope: !26)
!32 = !DILocation(line: 22, column: 53, scope: !26)
!33 = !DILocation(line: 22, column: 31, scope: !26)
!34 = !DILocalVariable(name: "buf", scope: !26, file: !5, line: 23, type: !15)
!35 = !DILocation(line: 23, column: 20, scope: !26)
!36 = !DILocation(line: 23, column: 43, scope: !26)
!37 = !DILocation(line: 25, column: 24, scope: !26)
!38 = !DILocation(line: 25, column: 5, scope: !26)
!39 = !DILocation(line: 27, column: 5, scope: !26)
!40 = !DILocation(line: 27, column: 10, scope: !26)
!41 = !DILocation(line: 27, column: 20, scope: !26)
!42 = !DILocation(line: 28, column: 24, scope: !26)
!43 = !DILocation(line: 28, column: 28, scope: !26)
!44 = !DILocation(line: 28, column: 5, scope: !26)
!45 = !DILocation(line: 28, column: 10, scope: !26)
!46 = !DILocation(line: 28, column: 22, scope: !26)
!47 = !DILocalVariable(name: "i", scope: !48, file: !5, line: 30, type: !9)
!48 = distinct !DILexicalBlock(scope: !26, file: !5, line: 30, column: 5)
!49 = !DILocation(line: 30, column: 14, scope: !48)
!50 = !DILocation(line: 30, column: 10, scope: !48)
!51 = !DILocation(line: 30, column: 21, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !5, line: 30, column: 5)
!53 = !DILocation(line: 30, column: 23, scope: !52)
!54 = !DILocation(line: 30, column: 5, scope: !48)
!55 = !DILocation(line: 30, column: 34, scope: !52)
!56 = !DILocation(line: 30, column: 38, scope: !52)
!57 = !DILocation(line: 30, column: 41, scope: !52)
!58 = !DILocation(line: 30, column: 30, scope: !52)
!59 = !DILocation(line: 30, column: 5, scope: !52)
!60 = distinct !{!60, !54, !61, !62}
!61 = !DILocation(line: 30, column: 43, scope: !48)
!62 = !{!"llvm.loop.mustprogress"}
!63 = !DILocation(line: 31, column: 5, scope: !26)
!64 = !DILocation(line: 31, column: 13, scope: !26)
!65 = !DILocation(line: 32, column: 5, scope: !26)
!66 = !DILocation(line: 32, column: 13, scope: !26)
!67 = !DILocation(line: 33, column: 5, scope: !26)
!68 = !DILocation(line: 33, column: 13, scope: !26)
!69 = !DILocation(line: 35, column: 15, scope: !26)
!70 = !DILocation(line: 35, column: 20, scope: !26)
!71 = !DILocation(line: 35, column: 5, scope: !26)
!72 = !DILocation(line: 36, column: 5, scope: !26)
