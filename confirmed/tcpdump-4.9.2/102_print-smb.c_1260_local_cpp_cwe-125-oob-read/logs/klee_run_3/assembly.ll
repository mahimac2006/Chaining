; ModuleID = '/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness/slice.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.netdissect_options = type { [20 x i32], i8* }

@.str = private unnamed_addr constant [32 x i8] c"SPINE_PROBE:smb_tcp_print:ENTRY\00", align 1
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
  %7 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 32) #5, !dbg !44
  store i8* %7, i8** %3, align 8, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %4, metadata !45, metadata !DIExpression()), !dbg !46
  store i32 12, i32* %4, align 4, !dbg !46
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
  %25 = getelementptr inbounds i8, i8* %24, i64 12, !dbg !64
  %26 = load %struct.netdissect_options*, %struct.netdissect_options** %2, align 8, !dbg !65
  %27 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %26, i32 0, i32 1, !dbg !66
  store i8* %25, i8** %27, align 8, !dbg !67
  %28 = load %struct.netdissect_options*, %struct.netdissect_options** %2, align 8, !dbg !68
  %29 = load i8*, i8** %3, align 8, !dbg !69
  %30 = load i32, i32* %4, align 4, !dbg !70
  %31 = call i32 (%struct.netdissect_options*, i8*, i32, ...) bitcast (void (%struct.netdissect_options*, i8*, i32)* @smb_tcp_print to i32 (%struct.netdissect_options*, i8*, i32, ...)*)(%struct.netdissect_options* noundef %28, i8* noundef %29, i32 noundef %30), !dbg !71
  ret i32 0, !dbg !72
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smb_tcp_print(%struct.netdissect_options* noundef %0, i8* noundef %1, i32 noundef %2) unnamed_addr #0 !dbg !73 {
  %4 = alloca %struct.netdissect_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.netdissect_options* %0, %struct.netdissect_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %4, metadata !86, metadata !DIExpression()), !dbg !87
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !88, metadata !DIExpression()), !dbg !89
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !90, metadata !DIExpression()), !dbg !91
  call void @klee_warning_once(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !92
  call void @llvm.dbg.declare(metadata i8** %7, metadata !93, metadata !DIExpression()), !dbg !94
  %10 = load i8*, i8** %5, align 8, !dbg !95
  store i8* %10, i8** %7, align 8, !dbg !94
  call void @llvm.dbg.declare(metadata i32* %8, metadata !96, metadata !DIExpression()), !dbg !97
  %11 = load %struct.netdissect_options*, %struct.netdissect_options** %4, align 8, !dbg !98
  %12 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %11, i32 0, i32 1, !dbg !99
  %13 = load i8*, i8** %12, align 8, !dbg !99
  %14 = load i8*, i8** %5, align 8, !dbg !100
  %15 = ptrtoint i8* %13 to i64, !dbg !101
  %16 = ptrtoint i8* %14 to i64, !dbg !101
  %17 = sub i64 %15, %16, !dbg !101
  %18 = trunc i64 %17 to i32, !dbg !102
  store i32 %18, i32* %8, align 4, !dbg !97
  %19 = load %struct.netdissect_options*, %struct.netdissect_options** %4, align 8, !dbg !103
  %20 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %19, i32 0, i32 1, !dbg !105
  %21 = load i8*, i8** %20, align 8, !dbg !105
  %22 = load i8*, i8** %5, align 8, !dbg !106
  %23 = icmp ult i8* %21, %22, !dbg !107
  br i1 %23, label %24, label %25, !dbg !108

24:                                               ; preds = %3
  br label %66, !dbg !109

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4, !dbg !110
  %27 = icmp slt i32 %26, 8, !dbg !112
  br i1 %27, label %28, label %29, !dbg !113

28:                                               ; preds = %25
  br label %66, !dbg !114

29:                                               ; preds = %25
  %30 = load i8*, i8** %7, align 8, !dbg !115
  %31 = getelementptr inbounds i8, i8* %30, i64 4, !dbg !115
  %32 = load i8, i8* %31, align 1, !dbg !115
  %33 = zext i8 %32 to i32, !dbg !115
  %34 = icmp eq i32 %33, 255, !dbg !117
  br i1 %34, label %35, label %66, !dbg !118

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8, !dbg !119
  %37 = getelementptr inbounds i8, i8* %36, i64 5, !dbg !119
  %38 = load i8, i8* %37, align 1, !dbg !119
  %39 = zext i8 %38 to i32, !dbg !119
  %40 = icmp eq i32 %39, 83, !dbg !120
  br i1 %40, label %41, label %66, !dbg !121

41:                                               ; preds = %35
  %42 = load i8*, i8** %7, align 8, !dbg !122
  %43 = getelementptr inbounds i8, i8* %42, i64 6, !dbg !122
  %44 = load i8, i8* %43, align 1, !dbg !122
  %45 = zext i8 %44 to i32, !dbg !122
  %46 = icmp eq i32 %45, 77, !dbg !123
  br i1 %46, label %47, label %66, !dbg !124

47:                                               ; preds = %41
  %48 = load i8*, i8** %7, align 8, !dbg !125
  %49 = getelementptr inbounds i8, i8* %48, i64 7, !dbg !125
  %50 = load i8, i8* %49, align 1, !dbg !125
  %51 = zext i8 %50 to i32, !dbg !125
  %52 = icmp eq i32 %51, 66, !dbg !126
  br i1 %52, label %53, label %66, !dbg !127

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4, !dbg !128
  %55 = icmp sgt i32 %54, 12, !dbg !131
  br i1 %55, label %56, label %65, !dbg !132

56:                                               ; preds = %53
  call void @llvm.dbg.declare(metadata i8* %9, metadata !133, metadata !DIExpression()), !dbg !136
  %57 = load i8*, i8** %7, align 8, !dbg !137
  %58 = load i32, i32* %8, align 4, !dbg !138
  %59 = add nsw i32 %58, 1, !dbg !139
  %60 = sext i32 %59 to i64, !dbg !137
  %61 = getelementptr inbounds i8, i8* %57, i64 %60, !dbg !137
  %62 = load i8, i8* %61, align 1, !dbg !137
  store volatile i8 %62, i8* %9, align 1, !dbg !136
  %63 = load volatile i8, i8* %9, align 1, !dbg !140
  %64 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.2, i64 0, i64 0), i32 noundef 23, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.smb_tcp_print, i64 0, i64 0)), !dbg !141
  unreachable, !dbg !142

65:                                               ; preds = %53
  br label %66, !dbg !143

66:                                               ; preds = %24, %28, %65, %47, %41, %35, %29
  ret void, !dbg !144
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
!1 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness/driver.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness", checksumkind: CSK_MD5, checksum: "584c58ecb610c9a45e95e63a0d64ac4c")
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
!35 = !DIFile(filename: "driver.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness", checksumkind: CSK_MD5, checksum: "584c58ecb610c9a45e95e63a0d64ac4c")
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
!63 = !DILocation(line: 20, column: 24, scope: !34)
!64 = !DILocation(line: 20, column: 28, scope: !34)
!65 = !DILocation(line: 20, column: 5, scope: !34)
!66 = !DILocation(line: 20, column: 10, scope: !34)
!67 = !DILocation(line: 20, column: 22, scope: !34)
!68 = !DILocation(line: 22, column: 19, scope: !34)
!69 = !DILocation(line: 22, column: 40, scope: !34)
!70 = !DILocation(line: 22, column: 45, scope: !34)
!71 = !DILocation(line: 22, column: 5, scope: !34)
!72 = !DILocation(line: 23, column: 5, scope: !34)
!73 = distinct !DISubprogram(name: "smb_tcp_print", scope: !74, file: !74, line: 11, type: !75, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !37)
!74 = !DIFile(filename: "print-smb.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness", checksumkind: CSK_MD5, checksum: "2c0ab8989c5fcfb31d1014ec27038052")
!75 = !DISubroutineType(types: !76)
!76 = !{null, !77, !83, !10}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "netdissect_options", file: !74, line: 9, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netdissect_options", file: !74, line: 6, size: 704, elements: !80)
!80 = !{!81, !82}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !79, file: !74, line: 7, baseType: !9, size: 640)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "ndo_snapend", scope: !79, file: !74, line: 8, baseType: !83, size: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !74, line: 5, baseType: !17)
!86 = !DILocalVariable(name: "ndo", arg: 1, scope: !73, file: !74, line: 11, type: !77)
!87 = !DILocation(line: 11, column: 40, scope: !73)
!88 = !DILocalVariable(name: "data", arg: 2, scope: !73, file: !74, line: 11, type: !83)
!89 = !DILocation(line: 11, column: 59, scope: !73)
!90 = !DILocalVariable(name: "length", arg: 3, scope: !73, file: !74, line: 11, type: !10)
!91 = !DILocation(line: 11, column: 69, scope: !73)
!92 = !DILocation(line: 12, column: 5, scope: !73)
!93 = !DILocalVariable(name: "p", scope: !73, file: !74, line: 13, type: !83)
!94 = !DILocation(line: 13, column: 19, scope: !73)
!95 = !DILocation(line: 13, column: 23, scope: !73)
!96 = !DILocalVariable(name: "caplen", scope: !73, file: !74, line: 14, type: !10)
!97 = !DILocation(line: 14, column: 9, scope: !73)
!98 = !DILocation(line: 14, column: 24, scope: !73)
!99 = !DILocation(line: 14, column: 29, scope: !73)
!100 = !DILocation(line: 14, column: 43, scope: !73)
!101 = !DILocation(line: 14, column: 41, scope: !73)
!102 = !DILocation(line: 14, column: 18, scope: !73)
!103 = !DILocation(line: 15, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !73, file: !74, line: 15, column: 9)
!105 = !DILocation(line: 15, column: 14, scope: !104)
!106 = !DILocation(line: 15, column: 28, scope: !104)
!107 = !DILocation(line: 15, column: 26, scope: !104)
!108 = !DILocation(line: 15, column: 9, scope: !73)
!109 = !DILocation(line: 16, column: 9, scope: !104)
!110 = !DILocation(line: 17, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !73, file: !74, line: 17, column: 9)
!112 = !DILocation(line: 17, column: 16, scope: !111)
!113 = !DILocation(line: 17, column: 9, scope: !73)
!114 = !DILocation(line: 18, column: 9, scope: !111)
!115 = !DILocation(line: 19, column: 9, scope: !116)
!116 = distinct !DILexicalBlock(scope: !73, file: !74, line: 19, column: 9)
!117 = !DILocation(line: 19, column: 14, scope: !116)
!118 = !DILocation(line: 19, column: 22, scope: !116)
!119 = !DILocation(line: 19, column: 25, scope: !116)
!120 = !DILocation(line: 19, column: 30, scope: !116)
!121 = !DILocation(line: 19, column: 37, scope: !116)
!122 = !DILocation(line: 19, column: 40, scope: !116)
!123 = !DILocation(line: 19, column: 45, scope: !116)
!124 = !DILocation(line: 19, column: 52, scope: !116)
!125 = !DILocation(line: 19, column: 55, scope: !116)
!126 = !DILocation(line: 19, column: 60, scope: !116)
!127 = !DILocation(line: 19, column: 9, scope: !73)
!128 = !DILocation(line: 20, column: 13, scope: !129)
!129 = distinct !DILexicalBlock(scope: !130, file: !74, line: 20, column: 13)
!130 = distinct !DILexicalBlock(scope: !116, file: !74, line: 19, column: 68)
!131 = !DILocation(line: 20, column: 20, scope: !129)
!132 = !DILocation(line: 20, column: 13, scope: !130)
!133 = !DILocalVariable(name: "x", scope: !134, file: !74, line: 21, type: !135)
!134 = distinct !DILexicalBlock(scope: !129, file: !74, line: 20, column: 26)
!135 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !85)
!136 = !DILocation(line: 21, column: 29, scope: !134)
!137 = !DILocation(line: 21, column: 33, scope: !134)
!138 = !DILocation(line: 21, column: 35, scope: !134)
!139 = !DILocation(line: 21, column: 42, scope: !134)
!140 = !DILocation(line: 22, column: 19, scope: !134)
!141 = !DILocation(line: 23, column: 13, scope: !134)
!142 = !DILocation(line: 24, column: 9, scope: !134)
!143 = !DILocation(line: 25, column: 5, scope: !130)
!144 = !DILocation(line: 26, column: 1, scope: !73)
