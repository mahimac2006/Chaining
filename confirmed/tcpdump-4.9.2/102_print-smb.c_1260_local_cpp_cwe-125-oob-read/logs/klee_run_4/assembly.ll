; ModuleID = '/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness/slice.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.netdissect_options = type { [20 x i32], i8* }

@.str = private unnamed_addr constant [13 x i8] c"payload_tail\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"SPINE_PROBE:smb_tcp_print:ENTRY\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"0 && \22SAILOR_SINK_REACHED\22\00", align 1
@.str.2 = private unnamed_addr constant [109 x i8] c"/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness/print-smb.c\00", align 1
@__PRETTY_FUNCTION__.smb_tcp_print = private unnamed_addr constant [62 x i8] c"void smb_tcp_print(netdissect_options *, const u_char *, int)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !34 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.netdissect_options*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %2, metadata !38, metadata !DIExpression()), !dbg !39
  %5 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 88) #5, !dbg !40
  %6 = bitcast i8* %5 to %struct.netdissect_options*, !dbg !41
  store %struct.netdissect_options* %6, %struct.netdissect_options** %2, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata i8** %3, metadata !42, metadata !DIExpression()), !dbg !43
  %7 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 128) #5, !dbg !44
  store i8* %7, i8** %3, align 8, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %4, metadata !45, metadata !DIExpression()), !dbg !46
  store i32 64, i32* %4, align 4, !dbg !46
  %8 = load i8*, i8** %3, align 8, !dbg !47
  %9 = getelementptr inbounds i8, i8* %8, i64 0, !dbg !47
  store i8 0, i8* %9, align 1, !dbg !48
  %10 = load i8*, i8** %3, align 8, !dbg !49
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !49
  store i8 0, i8* %11, align 1, !dbg !50
  %12 = load i8*, i8** %3, align 8, !dbg !51
  %13 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !51
  store i8 0, i8* %13, align 1, !dbg !52
  %14 = load i8*, i8** %3, align 8, !dbg !53
  %15 = getelementptr inbounds i8, i8* %14, i64 3, !dbg !53
  store i8 0, i8* %15, align 1, !dbg !54
  %16 = load i8*, i8** %3, align 8, !dbg !55
  %17 = getelementptr inbounds i8, i8* %16, i64 4, !dbg !55
  store i8 -1, i8* %17, align 1, !dbg !56
  %18 = load i8*, i8** %3, align 8, !dbg !57
  %19 = getelementptr inbounds i8, i8* %18, i64 5, !dbg !57
  store i8 83, i8* %19, align 1, !dbg !58
  %20 = load i8*, i8** %3, align 8, !dbg !59
  %21 = getelementptr inbounds i8, i8* %20, i64 6, !dbg !59
  store i8 77, i8* %21, align 1, !dbg !60
  %22 = load i8*, i8** %3, align 8, !dbg !61
  %23 = getelementptr inbounds i8, i8* %22, i64 7, !dbg !61
  store i8 66, i8* %23, align 1, !dbg !62
  %24 = load i8*, i8** %3, align 8, !dbg !63
  %25 = getelementptr inbounds i8, i8* %24, i64 8, !dbg !64
  call void @klee_make_symbolic(i8* noundef %25, i64 noundef 56, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)), !dbg !65
  %26 = load i8*, i8** %3, align 8, !dbg !66
  %27 = getelementptr inbounds i8, i8* %26, i64 64, !dbg !67
  %28 = load %struct.netdissect_options*, %struct.netdissect_options** %2, align 8, !dbg !68
  %29 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %28, i32 0, i32 1, !dbg !69
  store i8* %27, i8** %29, align 8, !dbg !70
  %30 = load %struct.netdissect_options*, %struct.netdissect_options** %2, align 8, !dbg !71
  %31 = load i8*, i8** %3, align 8, !dbg !72
  %32 = load i32, i32* %4, align 4, !dbg !73
  %33 = call i32 (%struct.netdissect_options*, i8*, i32, ...) bitcast (void (%struct.netdissect_options*, i8*, i32)* @smb_tcp_print to i32 (%struct.netdissect_options*, i8*, i32, ...)*)(%struct.netdissect_options* noundef %30, i8* noundef %31, i32 noundef %32), !dbg !74
  ret i32 0, !dbg !75
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smb_tcp_print(%struct.netdissect_options* noundef %0, i8* noundef %1, i32 noundef %2) unnamed_addr #0 !dbg !76 {
  %4 = alloca %struct.netdissect_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.netdissect_options* %0, %struct.netdissect_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %4, metadata !89, metadata !DIExpression()), !dbg !90
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !91, metadata !DIExpression()), !dbg !92
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !93, metadata !DIExpression()), !dbg !94
  call void @klee_warning_once(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !95
  call void @llvm.dbg.declare(metadata i8** %7, metadata !96, metadata !DIExpression()), !dbg !97
  %10 = load i8*, i8** %5, align 8, !dbg !98
  store i8* %10, i8** %7, align 8, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %8, metadata !99, metadata !DIExpression()), !dbg !100
  %11 = load %struct.netdissect_options*, %struct.netdissect_options** %4, align 8, !dbg !101
  %12 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %11, i32 0, i32 1, !dbg !102
  %13 = load i8*, i8** %12, align 8, !dbg !102
  %14 = load i8*, i8** %5, align 8, !dbg !103
  %15 = ptrtoint i8* %13 to i64, !dbg !104
  %16 = ptrtoint i8* %14 to i64, !dbg !104
  %17 = sub i64 %15, %16, !dbg !104
  %18 = trunc i64 %17 to i32, !dbg !105
  store i32 %18, i32* %8, align 4, !dbg !100
  %19 = load %struct.netdissect_options*, %struct.netdissect_options** %4, align 8, !dbg !106
  %20 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %19, i32 0, i32 1, !dbg !108
  %21 = load i8*, i8** %20, align 8, !dbg !108
  %22 = load i8*, i8** %5, align 8, !dbg !109
  %23 = icmp ult i8* %21, %22, !dbg !110
  br i1 %23, label %24, label %25, !dbg !111

24:                                               ; preds = %3
  br label %66, !dbg !112

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4, !dbg !113
  %27 = icmp slt i32 %26, 8, !dbg !115
  br i1 %27, label %28, label %29, !dbg !116

28:                                               ; preds = %25
  br label %66, !dbg !117

29:                                               ; preds = %25
  %30 = load i8*, i8** %7, align 8, !dbg !118
  %31 = getelementptr inbounds i8, i8* %30, i64 4, !dbg !118
  %32 = load i8, i8* %31, align 1, !dbg !118
  %33 = zext i8 %32 to i32, !dbg !118
  %34 = icmp eq i32 %33, 255, !dbg !120
  br i1 %34, label %35, label %66, !dbg !121

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8, !dbg !122
  %37 = getelementptr inbounds i8, i8* %36, i64 5, !dbg !122
  %38 = load i8, i8* %37, align 1, !dbg !122
  %39 = zext i8 %38 to i32, !dbg !122
  %40 = icmp eq i32 %39, 83, !dbg !123
  br i1 %40, label %41, label %66, !dbg !124

41:                                               ; preds = %35
  %42 = load i8*, i8** %7, align 8, !dbg !125
  %43 = getelementptr inbounds i8, i8* %42, i64 6, !dbg !125
  %44 = load i8, i8* %43, align 1, !dbg !125
  %45 = zext i8 %44 to i32, !dbg !125
  %46 = icmp eq i32 %45, 77, !dbg !126
  br i1 %46, label %47, label %66, !dbg !127

47:                                               ; preds = %41
  %48 = load i8*, i8** %7, align 8, !dbg !128
  %49 = getelementptr inbounds i8, i8* %48, i64 7, !dbg !128
  %50 = load i8, i8* %49, align 1, !dbg !128
  %51 = zext i8 %50 to i32, !dbg !128
  %52 = icmp eq i32 %51, 66, !dbg !129
  br i1 %52, label %53, label %66, !dbg !130

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4, !dbg !131
  %55 = icmp sgt i32 %54, 12, !dbg !134
  br i1 %55, label %56, label %65, !dbg !135

56:                                               ; preds = %53
  call void @llvm.dbg.declare(metadata i8* %9, metadata !136, metadata !DIExpression()), !dbg !139
  %57 = load i8*, i8** %7, align 8, !dbg !140
  %58 = load i32, i32* %8, align 4, !dbg !141
  %59 = add nsw i32 %58, 1, !dbg !142
  %60 = sext i32 %59 to i64, !dbg !140
  %61 = getelementptr inbounds i8, i8* %57, i64 %60, !dbg !140
  %62 = load i8, i8* %61, align 1, !dbg !140
  store volatile i8 %62, i8* %9, align 1, !dbg !139
  %63 = load volatile i8, i8* %9, align 1, !dbg !143
  %64 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.2, i64 0, i64 0), i32 noundef 23, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.smb_tcp_print, i64 0, i64 0)), !dbg !144
  unreachable, !dbg !145

65:                                               ; preds = %53
  br label %66, !dbg !146

66:                                               ; preds = %24, %28, %65, %47, %41, %35, %29
  ret void, !dbg !147
}

declare void @klee_warning_once(i8* noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) local_unnamed_addr #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0, !19, !22, !24}
!llvm.ident = !{!26, !26, !26, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness/driver.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness", checksumkind: CSK_MD5, checksum: "3a3f882c8b7280810347cf748180a82c")
!2 = !{!3, !18, !14}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "netdissect_options", file: !5, line: 11, baseType: !6)
!5 = !DIFile(filename: "harness_types.h", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness", checksumkind: CSK_MD5, checksum: "4dfca89434aab701bcfd1a4c82dad5d6")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netdissect_options", file: !5, line: 8, size: 704, elements: !7)
!7 = !{!8, !13}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !6, file: !5, line: 9, baseType: !9, size: 640)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 640, elements: !11)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DISubrange(count: 20)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "ndo_snapend", scope: !6, file: !5, line: 10, baseType: !14, size: 64, offset: 640)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !5, line: 7, baseType: !17)
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !21, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness/print-smb.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness", checksumkind: CSK_MD5, checksum: "2c0ab8989c5fcfb31d1014ec27038052")
!21 = !{!10}
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness/smart_stubs.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness", checksumkind: CSK_MD5, checksum: "bcda1acd1a733c696e028616d9d6f3b5")
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness/stubs.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness", checksumkind: CSK_MD5, checksum: "37bb7b1aead978a93f7315c852ffd933")
!26 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!27 = !{i32 7, !"Dwarf Version", i32 5}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = distinct !DISubprogram(name: "main", scope: !35, file: !35, line: 6, type: !36, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!35 = !DIFile(filename: "driver.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness", checksumkind: CSK_MD5, checksum: "3a3f882c8b7280810347cf748180a82c")
!36 = !DISubroutineType(types: !21)
!37 = !{}
!38 = !DILocalVariable(name: "ndo", scope: !34, file: !35, line: 7, type: !3)
!39 = !DILocation(line: 7, column: 25, scope: !34)
!40 = !DILocation(line: 7, column: 53, scope: !34)
!41 = !DILocation(line: 7, column: 31, scope: !34)
!42 = !DILocalVariable(name: "buf", scope: !34, file: !35, line: 8, type: !18)
!43 = !DILocation(line: 8, column: 20, scope: !34)
!44 = !DILocation(line: 8, column: 43, scope: !34)
!45 = !DILocalVariable(name: "len", scope: !34, file: !35, line: 9, type: !10)
!46 = !DILocation(line: 9, column: 9, scope: !34)
!47 = !DILocation(line: 11, column: 5, scope: !34)
!48 = !DILocation(line: 11, column: 12, scope: !34)
!49 = !DILocation(line: 12, column: 5, scope: !34)
!50 = !DILocation(line: 12, column: 12, scope: !34)
!51 = !DILocation(line: 13, column: 5, scope: !34)
!52 = !DILocation(line: 13, column: 12, scope: !34)
!53 = !DILocation(line: 14, column: 5, scope: !34)
!54 = !DILocation(line: 14, column: 12, scope: !34)
!55 = !DILocation(line: 15, column: 5, scope: !34)
!56 = !DILocation(line: 15, column: 12, scope: !34)
!57 = !DILocation(line: 16, column: 5, scope: !34)
!58 = !DILocation(line: 16, column: 12, scope: !34)
!59 = !DILocation(line: 17, column: 5, scope: !34)
!60 = !DILocation(line: 17, column: 12, scope: !34)
!61 = !DILocation(line: 18, column: 5, scope: !34)
!62 = !DILocation(line: 18, column: 12, scope: !34)
!63 = !DILocation(line: 19, column: 24, scope: !34)
!64 = !DILocation(line: 19, column: 28, scope: !34)
!65 = !DILocation(line: 19, column: 5, scope: !34)
!66 = !DILocation(line: 21, column: 24, scope: !34)
!67 = !DILocation(line: 21, column: 28, scope: !34)
!68 = !DILocation(line: 21, column: 5, scope: !34)
!69 = !DILocation(line: 21, column: 10, scope: !34)
!70 = !DILocation(line: 21, column: 22, scope: !34)
!71 = !DILocation(line: 23, column: 19, scope: !34)
!72 = !DILocation(line: 23, column: 40, scope: !34)
!73 = !DILocation(line: 23, column: 45, scope: !34)
!74 = !DILocation(line: 23, column: 5, scope: !34)
!75 = !DILocation(line: 24, column: 5, scope: !34)
!76 = distinct !DISubprogram(name: "smb_tcp_print", scope: !77, file: !77, line: 11, type: !78, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !37)
!77 = !DIFile(filename: "print-smb.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness", checksumkind: CSK_MD5, checksum: "2c0ab8989c5fcfb31d1014ec27038052")
!78 = !DISubroutineType(types: !79)
!79 = !{null, !80, !86, !10}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "netdissect_options", file: !77, line: 9, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netdissect_options", file: !77, line: 6, size: 704, elements: !83)
!83 = !{!84, !85}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !82, file: !77, line: 7, baseType: !9, size: 640)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "ndo_snapend", scope: !82, file: !77, line: 8, baseType: !86, size: 64, offset: 640)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !77, line: 5, baseType: !17)
!89 = !DILocalVariable(name: "ndo", arg: 1, scope: !76, file: !77, line: 11, type: !80)
!90 = !DILocation(line: 11, column: 40, scope: !76)
!91 = !DILocalVariable(name: "data", arg: 2, scope: !76, file: !77, line: 11, type: !86)
!92 = !DILocation(line: 11, column: 59, scope: !76)
!93 = !DILocalVariable(name: "length", arg: 3, scope: !76, file: !77, line: 11, type: !10)
!94 = !DILocation(line: 11, column: 69, scope: !76)
!95 = !DILocation(line: 12, column: 5, scope: !76)
!96 = !DILocalVariable(name: "p", scope: !76, file: !77, line: 13, type: !86)
!97 = !DILocation(line: 13, column: 19, scope: !76)
!98 = !DILocation(line: 13, column: 23, scope: !76)
!99 = !DILocalVariable(name: "caplen", scope: !76, file: !77, line: 14, type: !10)
!100 = !DILocation(line: 14, column: 9, scope: !76)
!101 = !DILocation(line: 14, column: 24, scope: !76)
!102 = !DILocation(line: 14, column: 29, scope: !76)
!103 = !DILocation(line: 14, column: 43, scope: !76)
!104 = !DILocation(line: 14, column: 41, scope: !76)
!105 = !DILocation(line: 14, column: 18, scope: !76)
!106 = !DILocation(line: 15, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !76, file: !77, line: 15, column: 9)
!108 = !DILocation(line: 15, column: 14, scope: !107)
!109 = !DILocation(line: 15, column: 28, scope: !107)
!110 = !DILocation(line: 15, column: 26, scope: !107)
!111 = !DILocation(line: 15, column: 9, scope: !76)
!112 = !DILocation(line: 16, column: 9, scope: !107)
!113 = !DILocation(line: 17, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !76, file: !77, line: 17, column: 9)
!115 = !DILocation(line: 17, column: 16, scope: !114)
!116 = !DILocation(line: 17, column: 9, scope: !76)
!117 = !DILocation(line: 18, column: 9, scope: !114)
!118 = !DILocation(line: 19, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !76, file: !77, line: 19, column: 9)
!120 = !DILocation(line: 19, column: 14, scope: !119)
!121 = !DILocation(line: 19, column: 22, scope: !119)
!122 = !DILocation(line: 19, column: 25, scope: !119)
!123 = !DILocation(line: 19, column: 30, scope: !119)
!124 = !DILocation(line: 19, column: 37, scope: !119)
!125 = !DILocation(line: 19, column: 40, scope: !119)
!126 = !DILocation(line: 19, column: 45, scope: !119)
!127 = !DILocation(line: 19, column: 52, scope: !119)
!128 = !DILocation(line: 19, column: 55, scope: !119)
!129 = !DILocation(line: 19, column: 60, scope: !119)
!130 = !DILocation(line: 19, column: 9, scope: !76)
!131 = !DILocation(line: 20, column: 13, scope: !132)
!132 = distinct !DILexicalBlock(scope: !133, file: !77, line: 20, column: 13)
!133 = distinct !DILexicalBlock(scope: !119, file: !77, line: 19, column: 68)
!134 = !DILocation(line: 20, column: 20, scope: !132)
!135 = !DILocation(line: 20, column: 13, scope: !133)
!136 = !DILocalVariable(name: "x", scope: !137, file: !77, line: 21, type: !138)
!137 = distinct !DILexicalBlock(scope: !132, file: !77, line: 20, column: 26)
!138 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !88)
!139 = !DILocation(line: 21, column: 29, scope: !137)
!140 = !DILocation(line: 21, column: 33, scope: !137)
!141 = !DILocation(line: 21, column: 35, scope: !137)
!142 = !DILocation(line: 21, column: 42, scope: !137)
!143 = !DILocation(line: 22, column: 19, scope: !137)
!144 = !DILocation(line: 23, column: 13, scope: !137)
!145 = !DILocation(line: 24, column: 9, scope: !137)
!146 = !DILocation(line: 25, column: 5, scope: !133)
!147 = !DILocation(line: 26, column: 1, scope: !76)
