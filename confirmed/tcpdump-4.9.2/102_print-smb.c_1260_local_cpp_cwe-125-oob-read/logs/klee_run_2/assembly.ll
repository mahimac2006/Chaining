; ModuleID = '/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness/slice.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.netdissect_options = type { [20 x i32], i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !31 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.netdissect_options*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %2, metadata !35, metadata !DIExpression()), !dbg !36
  %5 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 88) #4, !dbg !37
  %6 = bitcast i8* %5 to %struct.netdissect_options*, !dbg !38
  store %struct.netdissect_options* %6, %struct.netdissect_options** %2, align 8, !dbg !36
  call void @llvm.dbg.declare(metadata i8** %3, metadata !39, metadata !DIExpression()), !dbg !40
  %7 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 32) #4, !dbg !41
  store i8* %7, i8** %3, align 8, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %4, metadata !42, metadata !DIExpression()), !dbg !43
  store i32 12, i32* %4, align 4, !dbg !43
  %8 = load i8*, i8** %3, align 8, !dbg !44
  %9 = getelementptr inbounds i8, i8* %8, i64 0, !dbg !44
  store i8 0, i8* %9, align 1, !dbg !45
  %10 = load i8*, i8** %3, align 8, !dbg !46
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !46
  store i8 0, i8* %11, align 1, !dbg !47
  %12 = load i8*, i8** %3, align 8, !dbg !48
  %13 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !48
  store i8 0, i8* %13, align 1, !dbg !49
  %14 = load i8*, i8** %3, align 8, !dbg !50
  %15 = getelementptr inbounds i8, i8* %14, i64 3, !dbg !50
  store i8 0, i8* %15, align 1, !dbg !51
  %16 = load i8*, i8** %3, align 8, !dbg !52
  %17 = getelementptr inbounds i8, i8* %16, i64 4, !dbg !52
  store i8 -1, i8* %17, align 1, !dbg !53
  %18 = load i8*, i8** %3, align 8, !dbg !54
  %19 = getelementptr inbounds i8, i8* %18, i64 5, !dbg !54
  store i8 83, i8* %19, align 1, !dbg !55
  %20 = load i8*, i8** %3, align 8, !dbg !56
  %21 = getelementptr inbounds i8, i8* %20, i64 6, !dbg !56
  store i8 77, i8* %21, align 1, !dbg !57
  %22 = load i8*, i8** %3, align 8, !dbg !58
  %23 = getelementptr inbounds i8, i8* %22, i64 7, !dbg !58
  store i8 66, i8* %23, align 1, !dbg !59
  %24 = load i8*, i8** %3, align 8, !dbg !60
  %25 = getelementptr inbounds i8, i8* %24, i64 12, !dbg !61
  %26 = load %struct.netdissect_options*, %struct.netdissect_options** %2, align 8, !dbg !62
  %27 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %26, i32 0, i32 1, !dbg !63
  store i8* %25, i8** %27, align 8, !dbg !64
  %28 = load %struct.netdissect_options*, %struct.netdissect_options** %2, align 8, !dbg !65
  %29 = load i8*, i8** %3, align 8, !dbg !66
  %30 = load i32, i32* %4, align 4, !dbg !67
  call void @smb_tcp_print(%struct.netdissect_options* noundef %28, i8* noundef %29, i32 noundef %30), !dbg !68
  ret i32 0, !dbg !69
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @smb_tcp_print(%struct.netdissect_options* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0, !19, !21}
!llvm.ident = !{!23, !23, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness/driver.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness", checksumkind: CSK_MD5, checksum: "e13902b75a30b51c7cd84c7816f212ba")
!2 = !{!3, !18, !14}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "netdissect_options", file: !5, line: 9, baseType: !6)
!5 = !DIFile(filename: "driver.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness", checksumkind: CSK_MD5, checksum: "e13902b75a30b51c7cd84c7816f212ba")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netdissect_options", file: !5, line: 6, size: 704, elements: !7)
!7 = !{!8, !13}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !6, file: !5, line: 7, baseType: !9, size: 640)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 640, elements: !11)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DISubrange(count: 20)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "ndo_snapend", scope: !6, file: !5, line: 8, baseType: !14, size: 64, offset: 640)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !5, line: 5, baseType: !17)
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness/smart_stubs.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness", checksumkind: CSK_MD5, checksum: "bcda1acd1a733c696e028616d9d6f3b5")
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !22, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!22 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness/stubs.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/102_print-smb.c_1260_local_cpp_cwe-125-oob-read/harness", checksumkind: CSK_MD5, checksum: "b59dd0951987f3c9cb88f1220d2c97be")
!23 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!24 = !{i32 7, !"Dwarf Version", i32 5}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 7, !"PIC Level", i32 2}
!28 = !{i32 7, !"PIE Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 13, type: !32, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!32 = !DISubroutineType(types: !33)
!33 = !{!10}
!34 = !{}
!35 = !DILocalVariable(name: "ndo", scope: !31, file: !5, line: 14, type: !3)
!36 = !DILocation(line: 14, column: 25, scope: !31)
!37 = !DILocation(line: 14, column: 53, scope: !31)
!38 = !DILocation(line: 14, column: 31, scope: !31)
!39 = !DILocalVariable(name: "buf", scope: !31, file: !5, line: 15, type: !18)
!40 = !DILocation(line: 15, column: 20, scope: !31)
!41 = !DILocation(line: 15, column: 43, scope: !31)
!42 = !DILocalVariable(name: "len", scope: !31, file: !5, line: 16, type: !10)
!43 = !DILocation(line: 16, column: 9, scope: !31)
!44 = !DILocation(line: 18, column: 5, scope: !31)
!45 = !DILocation(line: 18, column: 12, scope: !31)
!46 = !DILocation(line: 19, column: 5, scope: !31)
!47 = !DILocation(line: 19, column: 12, scope: !31)
!48 = !DILocation(line: 20, column: 5, scope: !31)
!49 = !DILocation(line: 20, column: 12, scope: !31)
!50 = !DILocation(line: 21, column: 5, scope: !31)
!51 = !DILocation(line: 21, column: 12, scope: !31)
!52 = !DILocation(line: 22, column: 5, scope: !31)
!53 = !DILocation(line: 22, column: 12, scope: !31)
!54 = !DILocation(line: 23, column: 5, scope: !31)
!55 = !DILocation(line: 23, column: 12, scope: !31)
!56 = !DILocation(line: 24, column: 5, scope: !31)
!57 = !DILocation(line: 24, column: 12, scope: !31)
!58 = !DILocation(line: 25, column: 5, scope: !31)
!59 = !DILocation(line: 25, column: 12, scope: !31)
!60 = !DILocation(line: 27, column: 24, scope: !31)
!61 = !DILocation(line: 27, column: 28, scope: !31)
!62 = !DILocation(line: 27, column: 5, scope: !31)
!63 = !DILocation(line: 27, column: 10, scope: !31)
!64 = !DILocation(line: 27, column: 22, scope: !31)
!65 = !DILocation(line: 29, column: 19, scope: !31)
!66 = !DILocation(line: 29, column: 40, scope: !31)
!67 = !DILocation(line: 29, column: 45, scope: !31)
!68 = !DILocation(line: 29, column: 5, scope: !31)
!69 = !DILocation(line: 30, column: 5, scope: !31)
