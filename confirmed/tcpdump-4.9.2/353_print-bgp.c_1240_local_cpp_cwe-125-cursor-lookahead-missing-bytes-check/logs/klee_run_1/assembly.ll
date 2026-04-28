; ModuleID = '/app/se_runs/sailor_engine/tcpdump-4.9.2/353_print-bgp.c_1240_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/slice.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.netdissect_options = type { i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"buf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !28 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.netdissect_options*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %2, metadata !32, metadata !DIExpression()), !dbg !33
  %5 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 16) #4, !dbg !34
  %6 = bitcast i8* %5 to %struct.netdissect_options*, !dbg !35
  store %struct.netdissect_options* %6, %struct.netdissect_options** %2, align 8, !dbg !33
  call void @llvm.dbg.declare(metadata i8** %3, metadata !36, metadata !DIExpression()), !dbg !37
  %7 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 64) #4, !dbg !38
  store i8* %7, i8** %3, align 8, !dbg !37
  %8 = load i8*, i8** %3, align 8, !dbg !39
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 64, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %4, metadata !41, metadata !DIExpression()), !dbg !43
  store i32 0, i32* %4, align 4, !dbg !43
  br label %9, !dbg !44

9:                                                ; preds = %17, %0
  %10 = load i32, i32* %4, align 4, !dbg !45
  %11 = icmp slt i32 %10, 16, !dbg !47
  br i1 %11, label %12, label %20, !dbg !48

12:                                               ; preds = %9
  %13 = load i8*, i8** %3, align 8, !dbg !49
  %14 = load i32, i32* %4, align 4, !dbg !50
  %15 = sext i32 %14 to i64, !dbg !49
  %16 = getelementptr inbounds i8, i8* %13, i64 %15, !dbg !49
  store i8 -1, i8* %16, align 1, !dbg !51
  br label %17, !dbg !49

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4, !dbg !52
  %19 = add nsw i32 %18, 1, !dbg !52
  store i32 %19, i32* %4, align 4, !dbg !52
  br label %9, !dbg !53, !llvm.loop !54

20:                                               ; preds = %9
  %21 = load i8*, i8** %3, align 8, !dbg !57
  %22 = getelementptr inbounds i8, i8* %21, i64 16, !dbg !57
  store i8 0, i8* %22, align 1, !dbg !58
  %23 = load i8*, i8** %3, align 8, !dbg !59
  %24 = getelementptr inbounds i8, i8* %23, i64 17, !dbg !59
  store i8 19, i8* %24, align 1, !dbg !60
  %25 = load i8*, i8** %3, align 8, !dbg !61
  %26 = getelementptr inbounds i8, i8* %25, i64 18, !dbg !61
  store i8 2, i8* %26, align 1, !dbg !62
  %27 = load i8*, i8** %3, align 8, !dbg !63
  %28 = getelementptr inbounds i8, i8* %27, i64 64, !dbg !64
  %29 = load %struct.netdissect_options*, %struct.netdissect_options** %2, align 8, !dbg !65
  %30 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %29, i32 0, i32 1, !dbg !66
  store i8* %28, i8** %30, align 8, !dbg !67
  %31 = load %struct.netdissect_options*, %struct.netdissect_options** %2, align 8, !dbg !68
  %32 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %31, i32 0, i32 0, !dbg !69
  store i32 1, i32* %32, align 8, !dbg !70
  %33 = load %struct.netdissect_options*, %struct.netdissect_options** %2, align 8, !dbg !71
  %34 = load i8*, i8** %3, align 8, !dbg !72
  call void @bgp_print(%struct.netdissect_options* noundef %33, i8* noundef %34, i32 noundef 19), !dbg !73
  ret i32 0, !dbg !74
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

!llvm.dbg.cu = !{!0, !16, !18}
!llvm.ident = !{!20, !20, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/353_print-bgp.c_1240_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/driver.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/353_print-bgp.c_1240_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "e82a105af545ad57c917c66058a56310")
!2 = !{!3, !15}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "netdissect_options", file: !5, line: 13, baseType: !6)
!5 = !DIFile(filename: "driver.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/353_print-bgp.c_1240_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "e82a105af545ad57c917c66058a56310")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netdissect_options", file: !5, line: 10, size: 128, elements: !7)
!7 = !{!8, !10}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "ndo_vflag", scope: !6, file: !5, line: 11, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ndo_snapend", scope: !6, file: !5, line: 12, baseType: !11, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !5, line: 7, baseType: !14)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/353_print-bgp.c_1240_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/print-bgp.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/353_print-bgp.c_1240_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "0d1b8a05b9b992540eefb2cc4d14ef15")
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/353_print-bgp.c_1240_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/smart_stubs.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/353_print-bgp.c_1240_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "bcda1acd1a733c696e028616d9d6f3b5")
!20 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 21, type: !29, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!29 = !DISubroutineType(types: !30)
!30 = !{!9}
!31 = !{}
!32 = !DILocalVariable(name: "ndo", scope: !28, file: !5, line: 22, type: !3)
!33 = !DILocation(line: 22, column: 25, scope: !28)
!34 = !DILocation(line: 22, column: 53, scope: !28)
!35 = !DILocation(line: 22, column: 31, scope: !28)
!36 = !DILocalVariable(name: "buf", scope: !28, file: !5, line: 23, type: !15)
!37 = !DILocation(line: 23, column: 13, scope: !28)
!38 = !DILocation(line: 23, column: 29, scope: !28)
!39 = !DILocation(line: 24, column: 24, scope: !28)
!40 = !DILocation(line: 24, column: 5, scope: !28)
!41 = !DILocalVariable(name: "i", scope: !42, file: !5, line: 25, type: !9)
!42 = distinct !DILexicalBlock(scope: !28, file: !5, line: 25, column: 5)
!43 = !DILocation(line: 25, column: 14, scope: !42)
!44 = !DILocation(line: 25, column: 10, scope: !42)
!45 = !DILocation(line: 25, column: 21, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !5, line: 25, column: 5)
!47 = !DILocation(line: 25, column: 23, scope: !46)
!48 = !DILocation(line: 25, column: 5, scope: !42)
!49 = !DILocation(line: 25, column: 34, scope: !46)
!50 = !DILocation(line: 25, column: 38, scope: !46)
!51 = !DILocation(line: 25, column: 41, scope: !46)
!52 = !DILocation(line: 25, column: 30, scope: !46)
!53 = !DILocation(line: 25, column: 5, scope: !46)
!54 = distinct !{!54, !48, !55, !56}
!55 = !DILocation(line: 25, column: 43, scope: !42)
!56 = !{!"llvm.loop.mustprogress"}
!57 = !DILocation(line: 26, column: 5, scope: !28)
!58 = !DILocation(line: 26, column: 13, scope: !28)
!59 = !DILocation(line: 27, column: 5, scope: !28)
!60 = !DILocation(line: 27, column: 13, scope: !28)
!61 = !DILocation(line: 28, column: 5, scope: !28)
!62 = !DILocation(line: 28, column: 13, scope: !28)
!63 = !DILocation(line: 29, column: 24, scope: !28)
!64 = !DILocation(line: 29, column: 28, scope: !28)
!65 = !DILocation(line: 29, column: 5, scope: !28)
!66 = !DILocation(line: 29, column: 10, scope: !28)
!67 = !DILocation(line: 29, column: 22, scope: !28)
!68 = !DILocation(line: 30, column: 5, scope: !28)
!69 = !DILocation(line: 30, column: 10, scope: !28)
!70 = !DILocation(line: 30, column: 20, scope: !28)
!71 = !DILocation(line: 31, column: 15, scope: !28)
!72 = !DILocation(line: 31, column: 20, scope: !28)
!73 = !DILocation(line: 31, column: 5, scope: !28)
!74 = !DILocation(line: 32, column: 5, scope: !28)
