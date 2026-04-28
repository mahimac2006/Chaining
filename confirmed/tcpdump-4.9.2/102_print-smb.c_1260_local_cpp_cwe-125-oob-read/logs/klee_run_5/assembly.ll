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
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %2, metadata !38, metadata !DIExpression()), !dbg !39
  %4 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 88) #5, !dbg !40
  %5 = bitcast i8* %4 to %struct.netdissect_options*, !dbg !41
  store %struct.netdissect_options* %5, %struct.netdissect_options** %2, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata i8** %3, metadata !42, metadata !DIExpression()), !dbg !43
  %6 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 128) #5, !dbg !44
  store i8* %6, i8** %3, align 8, !dbg !43
  %7 = load i8*, i8** %3, align 8, !dbg !45
  %8 = getelementptr inbounds i8, i8* %7, i64 0, !dbg !45
  store i8 0, i8* %8, align 1, !dbg !46
  %9 = load i8*, i8** %3, align 8, !dbg !47
  %10 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !47
  store i8 0, i8* %10, align 1, !dbg !48
  %11 = load i8*, i8** %3, align 8, !dbg !49
  %12 = getelementptr inbounds i8, i8* %11, i64 2, !dbg !49
  store i8 0, i8* %12, align 1, !dbg !50
  %13 = load i8*, i8** %3, align 8, !dbg !51
  %14 = getelementptr inbounds i8, i8* %13, i64 3, !dbg !51
  store i8 0, i8* %14, align 1, !dbg !52
  %15 = load i8*, i8** %3, align 8, !dbg !53
  %16 = getelementptr inbounds i8, i8* %15, i64 4, !dbg !53
  store i8 -1, i8* %16, align 1, !dbg !54
  %17 = load i8*, i8** %3, align 8, !dbg !55
  %18 = getelementptr inbounds i8, i8* %17, i64 5, !dbg !55
  store i8 83, i8* %18, align 1, !dbg !56
  %19 = load i8*, i8** %3, align 8, !dbg !57
  %20 = getelementptr inbounds i8, i8* %19, i64 6, !dbg !57
  store i8 77, i8* %20, align 1, !dbg !58
  %21 = load i8*, i8** %3, align 8, !dbg !59
  %22 = getelementptr inbounds i8, i8* %21, i64 7, !dbg !59
  store i8 66, i8* %22, align 1, !dbg !60
  %23 = load i8*, i8** %3, align 8, !dbg !61
  %24 = getelementptr inbounds i8, i8* %23, i64 8, !dbg !61
  store i8 0, i8* %24, align 1, !dbg !62
  %25 = load i8*, i8** %3, align 8, !dbg !63
  %26 = getelementptr inbounds i8, i8* %25, i64 9, !dbg !63
  store i8 0, i8* %26, align 1, !dbg !64
  %27 = load i8*, i8** %3, align 8, !dbg !65
  %28 = getelementptr inbounds i8, i8* %27, i64 10, !dbg !65
  store i8 0, i8* %28, align 1, !dbg !66
  %29 = load i8*, i8** %3, align 8, !dbg !67
  %30 = getelementptr inbounds i8, i8* %29, i64 11, !dbg !67
  store i8 0, i8* %30, align 1, !dbg !68
  %31 = load i8*, i8** %3, align 8, !dbg !69
  %32 = getelementptr inbounds i8, i8* %31, i64 128, !dbg !70
  %33 = load %struct.netdissect_options*, %struct.netdissect_options** %2, align 8, !dbg !71
  %34 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %33, i32 0, i32 1, !dbg !72
  store i8* %32, i8** %34, align 8, !dbg !73
  %35 = load %struct.netdissect_options*, %struct.netdissect_options** %2, align 8, !dbg !74
  %36 = load i8*, i8** %3, align 8, !dbg !75
  %37 = call i32 (%struct.netdissect_options*, i8*, i32, ...) bitcast (void (%struct.netdissect_options*, i8*, i32)* @smb_tcp_print to i32 (%struct.netdissect_options*, i8*, i32, ...)*)(%struct.netdissect_options* noundef %35, i8* noundef %36, i32 noundef 64), !dbg !76
  ret i32 0, !dbg !77
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smb_tcp_print(%struct.netdissect_options* noundef %0, i8* noundef %1, i32 noundef %2) unnamed_addr #0 !dbg !78 {
  %4 = alloca %struct.netdissect_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.netdissect_options* %0, %struct.netdissect_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %4, metadata !91, metadata !DIExpression()), !dbg !92
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !93, metadata !DIExpression()), !dbg !94
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !95, metadata !DIExpression()), !dbg !96
  call void @klee_warning_once(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !97
  call void @llvm.dbg.declare(metadata i8** %7, metadata !98, metadata !DIExpression()), !dbg !99
  %10 = load i8*, i8** %5, align 8, !dbg !100
  store i8* %10, i8** %7, align 8, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %8, metadata !101, metadata !DIExpression()), !dbg !102
  %11 = load %struct.netdissect_options*, %struct.netdissect_options** %4, align 8, !dbg !103
  %12 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %11, i32 0, i32 1, !dbg !104
  %13 = load i8*, i8** %12, align 8, !dbg !104
  %14 = load i8*, i8** %5, align 8, !dbg !105
  %15 = ptrtoint i8* %13 to i64, !dbg !106
  %16 = ptrtoint i8* %14 to i64, !dbg !106
  %17 = sub i64 %15, %16, !dbg !106
  %18 = trunc i64 %17 to i32, !dbg !107
  store i32 %18, i32* %8, align 4, !dbg !102
  %19 = load %struct.netdissect_options*, %struct.netdissect_options** %4, align 8, !dbg !108
  %20 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %19, i32 0, i32 1, !dbg !110
  %21 = load i8*, i8** %20, align 8, !dbg !110
  %22 = load i8*, i8** %5, align 8, !dbg !111
  %23 = icmp ult i8* %21, %22, !dbg !112
  br i1 %23, label %24, label %25, !dbg !113

24:                                               ; preds = %3
  br label %66, !dbg !114

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4, !dbg !115
  %27 = icmp slt i32 %26, 8, !dbg !117
  br i1 %27, label %28, label %29, !dbg !118

28:                                               ; preds = %25
  br label %66, !dbg !119

29:                                               ; preds = %25
  %30 = load i8*, i8** %7, align 8, !dbg !120
  %31 = getelementptr inbounds i8, i8* %30, i64 4, !dbg !120
  %32 = load i8, i8* %31, align 1, !dbg !120
  %33 = zext i8 %32 to i32, !dbg !120
  %34 = icmp eq i32 %33, 255, !dbg !122
  br i1 %34, label %35, label %66, !dbg !123

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8, !dbg !124
  %37 = getelementptr inbounds i8, i8* %36, i64 5, !dbg !124
  %38 = load i8, i8* %37, align 1, !dbg !124
  %39 = zext i8 %38 to i32, !dbg !124
  %40 = icmp eq i32 %39, 83, !dbg !125
  br i1 %40, label %41, label %66, !dbg !126

41:                                               ; preds = %35
  %42 = load i8*, i8** %7, align 8, !dbg !127
  %43 = getelementptr inbounds i8, i8* %42, i64 6, !dbg !127
  %44 = load i8, i8* %43, align 1, !dbg !127
  %45 = zext i8 %44 to i32, !dbg !127
  %46 = icmp eq i32 %45, 77, !dbg !128
  br i1 %46, label %47, label %66, !dbg !129

47:                                               ; preds = %41
  %48 = load i8*, i8** %7, align 8, !dbg !130
  %49 = getelementptr inbounds i8, i8* %48, i64 7, !dbg !130
  %50 = load i8, i8* %49, align 1, !dbg !130
  %51 = zext i8 %50 to i32, !dbg !130
  %52 = icmp eq i32 %51, 66, !dbg !131
  br i1 %52, label %53, label %66, !dbg !132

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4, !dbg !133
  %55 = icmp sgt i32 %54, 12, !dbg !136
  br i1 %55, label %56, label %65, !dbg !137

56:                                               ; preds = %53
  call void @llvm.dbg.declare(metadata i8* %9, metadata !138, metadata !DIExpression()), !dbg !141
  %57 = load i8*, i8** %7, align 8, !dbg !142
  %58 = load i32, i32* %8, align 4, !dbg !143
  %59 = add nsw i32 %58, 1, !dbg !144
  %60 = sext i32 %59 to i64, !dbg !142
  %61 = getelementptr inbounds i8, i8* %57, i64 %60, !dbg !142
  %62 = load i8, i8* %61, align 1, !dbg !142
  store volatile i8 %62, i8* %9, align 1, !dbg !141
  %63 = load volatile i8, i8* %9, align 1, !dbg !145
  %64 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.2, i64 0, i64 0), i32 noundef 23, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.smb_tcp_print, i64 0, i64 0)), !dbg !146
  unreachable, !dbg !147

65:                                               ; preds = %53
  br label %66, !dbg !148

66:                                               ; preds = %24, %28, %65, %47, %41, %35, %29
  ret void, !dbg !149
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
!1 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness/driver.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness", checksumkind: CSK_MD5, checksum: "9108bbebb04cc510f85ad2af5a7ce0ab")
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
!35 = !DIFile(filename: "driver.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness", checksumkind: CSK_MD5, checksum: "9108bbebb04cc510f85ad2af5a7ce0ab")
!36 = !DISubroutineType(types: !21)
!37 = !{}
!38 = !DILocalVariable(name: "ndo", scope: !34, file: !35, line: 7, type: !3)
!39 = !DILocation(line: 7, column: 25, scope: !34)
!40 = !DILocation(line: 7, column: 53, scope: !34)
!41 = !DILocation(line: 7, column: 31, scope: !34)
!42 = !DILocalVariable(name: "buf", scope: !34, file: !35, line: 8, type: !18)
!43 = !DILocation(line: 8, column: 20, scope: !34)
!44 = !DILocation(line: 8, column: 43, scope: !34)
!45 = !DILocation(line: 10, column: 5, scope: !34)
!46 = !DILocation(line: 10, column: 12, scope: !34)
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
!63 = !DILocation(line: 19, column: 5, scope: !34)
!64 = !DILocation(line: 19, column: 12, scope: !34)
!65 = !DILocation(line: 20, column: 5, scope: !34)
!66 = !DILocation(line: 20, column: 13, scope: !34)
!67 = !DILocation(line: 21, column: 5, scope: !34)
!68 = !DILocation(line: 21, column: 13, scope: !34)
!69 = !DILocation(line: 23, column: 24, scope: !34)
!70 = !DILocation(line: 23, column: 28, scope: !34)
!71 = !DILocation(line: 23, column: 5, scope: !34)
!72 = !DILocation(line: 23, column: 10, scope: !34)
!73 = !DILocation(line: 23, column: 22, scope: !34)
!74 = !DILocation(line: 25, column: 19, scope: !34)
!75 = !DILocation(line: 25, column: 40, scope: !34)
!76 = !DILocation(line: 25, column: 5, scope: !34)
!77 = !DILocation(line: 26, column: 5, scope: !34)
!78 = distinct !DISubprogram(name: "smb_tcp_print", scope: !79, file: !79, line: 11, type: !80, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !37)
!79 = !DIFile(filename: "print-smb.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness", checksumkind: CSK_MD5, checksum: "2c0ab8989c5fcfb31d1014ec27038052")
!80 = !DISubroutineType(types: !81)
!81 = !{null, !82, !88, !10}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "netdissect_options", file: !79, line: 9, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netdissect_options", file: !79, line: 6, size: 704, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !84, file: !79, line: 7, baseType: !9, size: 640)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "ndo_snapend", scope: !84, file: !79, line: 8, baseType: !88, size: 64, offset: 640)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !79, line: 5, baseType: !17)
!91 = !DILocalVariable(name: "ndo", arg: 1, scope: !78, file: !79, line: 11, type: !82)
!92 = !DILocation(line: 11, column: 40, scope: !78)
!93 = !DILocalVariable(name: "data", arg: 2, scope: !78, file: !79, line: 11, type: !88)
!94 = !DILocation(line: 11, column: 59, scope: !78)
!95 = !DILocalVariable(name: "length", arg: 3, scope: !78, file: !79, line: 11, type: !10)
!96 = !DILocation(line: 11, column: 69, scope: !78)
!97 = !DILocation(line: 12, column: 5, scope: !78)
!98 = !DILocalVariable(name: "p", scope: !78, file: !79, line: 13, type: !88)
!99 = !DILocation(line: 13, column: 19, scope: !78)
!100 = !DILocation(line: 13, column: 23, scope: !78)
!101 = !DILocalVariable(name: "caplen", scope: !78, file: !79, line: 14, type: !10)
!102 = !DILocation(line: 14, column: 9, scope: !78)
!103 = !DILocation(line: 14, column: 24, scope: !78)
!104 = !DILocation(line: 14, column: 29, scope: !78)
!105 = !DILocation(line: 14, column: 43, scope: !78)
!106 = !DILocation(line: 14, column: 41, scope: !78)
!107 = !DILocation(line: 14, column: 18, scope: !78)
!108 = !DILocation(line: 15, column: 9, scope: !109)
!109 = distinct !DILexicalBlock(scope: !78, file: !79, line: 15, column: 9)
!110 = !DILocation(line: 15, column: 14, scope: !109)
!111 = !DILocation(line: 15, column: 28, scope: !109)
!112 = !DILocation(line: 15, column: 26, scope: !109)
!113 = !DILocation(line: 15, column: 9, scope: !78)
!114 = !DILocation(line: 16, column: 9, scope: !109)
!115 = !DILocation(line: 17, column: 9, scope: !116)
!116 = distinct !DILexicalBlock(scope: !78, file: !79, line: 17, column: 9)
!117 = !DILocation(line: 17, column: 16, scope: !116)
!118 = !DILocation(line: 17, column: 9, scope: !78)
!119 = !DILocation(line: 18, column: 9, scope: !116)
!120 = !DILocation(line: 19, column: 9, scope: !121)
!121 = distinct !DILexicalBlock(scope: !78, file: !79, line: 19, column: 9)
!122 = !DILocation(line: 19, column: 14, scope: !121)
!123 = !DILocation(line: 19, column: 22, scope: !121)
!124 = !DILocation(line: 19, column: 25, scope: !121)
!125 = !DILocation(line: 19, column: 30, scope: !121)
!126 = !DILocation(line: 19, column: 37, scope: !121)
!127 = !DILocation(line: 19, column: 40, scope: !121)
!128 = !DILocation(line: 19, column: 45, scope: !121)
!129 = !DILocation(line: 19, column: 52, scope: !121)
!130 = !DILocation(line: 19, column: 55, scope: !121)
!131 = !DILocation(line: 19, column: 60, scope: !121)
!132 = !DILocation(line: 19, column: 9, scope: !78)
!133 = !DILocation(line: 20, column: 13, scope: !134)
!134 = distinct !DILexicalBlock(scope: !135, file: !79, line: 20, column: 13)
!135 = distinct !DILexicalBlock(scope: !121, file: !79, line: 19, column: 68)
!136 = !DILocation(line: 20, column: 20, scope: !134)
!137 = !DILocation(line: 20, column: 13, scope: !135)
!138 = !DILocalVariable(name: "x", scope: !139, file: !79, line: 21, type: !140)
!139 = distinct !DILexicalBlock(scope: !134, file: !79, line: 20, column: 26)
!140 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !90)
!141 = !DILocation(line: 21, column: 29, scope: !139)
!142 = !DILocation(line: 21, column: 33, scope: !139)
!143 = !DILocation(line: 21, column: 35, scope: !139)
!144 = !DILocation(line: 21, column: 42, scope: !139)
!145 = !DILocation(line: 22, column: 19, scope: !139)
!146 = !DILocation(line: 23, column: 13, scope: !139)
!147 = !DILocation(line: 24, column: 9, scope: !139)
!148 = !DILocation(line: 25, column: 5, scope: !135)
!149 = !DILocation(line: 26, column: 1, scope: !78)
