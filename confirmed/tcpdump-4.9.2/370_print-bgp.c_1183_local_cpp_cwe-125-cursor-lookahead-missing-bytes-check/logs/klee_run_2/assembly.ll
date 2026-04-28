; ModuleID = '/app/se_runs/sailor_engine/tcpdump-4.9.2/370_print-bgp.c_1183_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/slice.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.netdissect_options = type { i32, i8* }
%struct.anon = type { i16, i8 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }

@.str = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"SPINE_PROBE:bgp_print:ENTRY\00", align 1
@__const.bgp_print.marker = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@.str.1 = private unnamed_addr constant [33 x i8] c"SPINE_PROBE:bgp_attr_print:ENTRY\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"SPINE_PROBE:decode_labeled_prefix6:ENTRY\00", align 1
@.str.3.4 = private unnamed_addr constant [19 x i8] c"%s/%d, label:%u %s\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"(BOGUS: Bottom of Stack NOT set!)\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"(bottom)\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"0 && \22SAILOR_SINK_REACHED\22\00", align 1
@.str.7 = private unnamed_addr constant [137 x i8] c"/app/se_runs/sailor_engine/tcpdump-4.9.2/370_print-bgp.c_1183_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/print-bgp.c\00", align 1
@__PRETTY_FUNCTION__.decode_labeled_prefix6 = private unnamed_addr constant [87 x i8] c"int decode_labeled_prefix6(netdissect_options *, const u_char *, u_int, char *, u_int)\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"::\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !40 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.netdissect_options*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %2, metadata !44, metadata !DIExpression()), !dbg !45
  %5 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 16) #10, !dbg !46
  %6 = bitcast i8* %5 to %struct.netdissect_options*, !dbg !47
  store %struct.netdissect_options* %6, %struct.netdissect_options** %2, align 8, !dbg !45
  call void @llvm.dbg.declare(metadata i8** %3, metadata !48, metadata !DIExpression()), !dbg !49
  %7 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 512) #10, !dbg !50
  store i8* %7, i8** %3, align 8, !dbg !49
  %8 = load i8*, i8** %3, align 8, !dbg !51
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 512, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !52
  %9 = load %struct.netdissect_options*, %struct.netdissect_options** %2, align 8, !dbg !53
  %10 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %9, i32 0, i32 0, !dbg !54
  store i32 1, i32* %10, align 8, !dbg !55
  %11 = load i8*, i8** %3, align 8, !dbg !56
  %12 = getelementptr inbounds i8, i8* %11, i64 512, !dbg !57
  %13 = load %struct.netdissect_options*, %struct.netdissect_options** %2, align 8, !dbg !58
  %14 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %13, i32 0, i32 1, !dbg !59
  store i8* %12, i8** %14, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %4, metadata !61, metadata !DIExpression()), !dbg !63
  store i32 0, i32* %4, align 4, !dbg !63
  br label %15, !dbg !64

15:                                               ; preds = %23, %0
  %16 = load i32, i32* %4, align 4, !dbg !65
  %17 = icmp slt i32 %16, 16, !dbg !67
  br i1 %17, label %18, label %26, !dbg !68

18:                                               ; preds = %15
  %19 = load i8*, i8** %3, align 8, !dbg !69
  %20 = load i32, i32* %4, align 4, !dbg !70
  %21 = sext i32 %20 to i64, !dbg !69
  %22 = getelementptr inbounds i8, i8* %19, i64 %21, !dbg !69
  store i8 -1, i8* %22, align 1, !dbg !71
  br label %23, !dbg !69

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4, !dbg !72
  %25 = add nsw i32 %24, 1, !dbg !72
  store i32 %25, i32* %4, align 4, !dbg !72
  br label %15, !dbg !73, !llvm.loop !74

26:                                               ; preds = %15
  %27 = load i8*, i8** %3, align 8, !dbg !77
  %28 = getelementptr inbounds i8, i8* %27, i64 16, !dbg !77
  store i8 0, i8* %28, align 1, !dbg !78
  %29 = load i8*, i8** %3, align 8, !dbg !79
  %30 = getelementptr inbounds i8, i8* %29, i64 17, !dbg !79
  store i8 19, i8* %30, align 1, !dbg !80
  %31 = load i8*, i8** %3, align 8, !dbg !81
  %32 = getelementptr inbounds i8, i8* %31, i64 18, !dbg !81
  store i8 2, i8* %32, align 1, !dbg !82
  %33 = load %struct.netdissect_options*, %struct.netdissect_options** %2, align 8, !dbg !83
  %34 = load i8*, i8** %3, align 8, !dbg !84
  call fastcc void @bgp_print(%struct.netdissect_options* noundef %33, i8* noundef %34), !dbg !85
  ret i32 0, !dbg !86
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @bgp_print(%struct.netdissect_options* noundef %0, i8* noundef %1) unnamed_addr #0 !dbg !87 {
  %3 = alloca %struct.netdissect_options*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca %struct.anon, align 2
  %11 = alloca i16, align 2
  store %struct.netdissect_options* %0, %struct.netdissect_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %3, metadata !99, metadata !DIExpression()), !dbg !100
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !101, metadata !DIExpression()), !dbg !102
  store i32 19, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !103, metadata !DIExpression()), !dbg !104
  call void @klee_warning_once(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0)), !dbg !105
  call void @llvm.dbg.declare(metadata i8** %6, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i8** %7, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i8** %8, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata [16 x i8]* %9, metadata !112, metadata !DIExpression()), !dbg !116
  %12 = bitcast [16 x i8]* %9 to i8*, !dbg !116
  %13 = call i8* @memcpy(i8* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__const.bgp_print.marker, i32 0, i32 0), i64 16), !dbg !116
  call void @llvm.dbg.declare(metadata %struct.anon* %10, metadata !117, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata i16* %11, metadata !130, metadata !DIExpression()), !dbg !131
  %14 = load i8*, i8** %4, align 8, !dbg !132
  %15 = load i32, i32* %5, align 4, !dbg !133
  %16 = sext i32 %15 to i64, !dbg !134
  %17 = getelementptr inbounds i8, i8* %14, i64 %16, !dbg !134
  store i8* %17, i8** %7, align 8, !dbg !135
  %18 = load %struct.netdissect_options*, %struct.netdissect_options** %3, align 8, !dbg !136
  %19 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %18, i32 0, i32 1, !dbg !138
  %20 = load i8*, i8** %19, align 8, !dbg !138
  %21 = load i8*, i8** %4, align 8, !dbg !139
  %22 = load i32, i32* %5, align 4, !dbg !140
  %23 = sext i32 %22 to i64, !dbg !141
  %24 = getelementptr inbounds i8, i8* %21, i64 %23, !dbg !141
  %25 = icmp ult i8* %20, %24, !dbg !142
  br i1 %25, label %26, label %30, !dbg !143

26:                                               ; preds = %2
  %27 = load %struct.netdissect_options*, %struct.netdissect_options** %3, align 8, !dbg !144
  %28 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %27, i32 0, i32 1, !dbg !145
  %29 = load i8*, i8** %28, align 8, !dbg !145
  store i8* %29, i8** %7, align 8, !dbg !146
  br label %30, !dbg !147

30:                                               ; preds = %26, %2
  br label %31, !dbg !148

31:                                               ; preds = %30
  br label %32, !dbg !149

32:                                               ; preds = %31
  %33 = load %struct.netdissect_options*, %struct.netdissect_options** %3, align 8, !dbg !151
  %34 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %33, i32 0, i32 0, !dbg !153
  %35 = load i32, i32* %34, align 8, !dbg !153
  %36 = icmp slt i32 %35, 1, !dbg !154
  br i1 %36, label %37, label %38, !dbg !155

37:                                               ; preds = %32
  br label %76, !dbg !156

38:                                               ; preds = %32
  %39 = load i8*, i8** %4, align 8, !dbg !157
  store i8* %39, i8** %6, align 8, !dbg !158
  %40 = load i8*, i8** %6, align 8, !dbg !159
  store i8* %40, i8** %8, align 8, !dbg !160
  %41 = load i8*, i8** %6, align 8, !dbg !161
  %42 = load i8*, i8** %7, align 8, !dbg !163
  %43 = icmp ult i8* %41, %42, !dbg !164
  br i1 %43, label %44, label %76, !dbg !165

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8, !dbg !166
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0, !dbg !169
  %47 = call i32 @memcmp(i8* noundef %45, i8* noundef %46, i64 noundef 16) #11, !dbg !170
  %48 = icmp ne i32 %47, 0, !dbg !171
  br i1 %48, label %49, label %50, !dbg !172

49:                                               ; preds = %44
  br label %76, !dbg !173

50:                                               ; preds = %44
  %51 = bitcast %struct.anon* %10 to i8*, !dbg !174
  %52 = load i8*, i8** %6, align 8, !dbg !175
  %53 = call i8* @memcpy(i8* %51, i8* %52, i64 19), !dbg !174
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0, !dbg !176
  %55 = load i16, i16* %54, align 2, !dbg !176
  %56 = call zeroext i16 @ntohs(i16 noundef zeroext %55) #12, !dbg !177
  store i16 %56, i16* %11, align 2, !dbg !178
  %57 = load i16, i16* %11, align 2, !dbg !179
  %58 = zext i16 %57 to i32, !dbg !179
  %59 = icmp sge i32 %58, 19, !dbg !181
  br i1 %59, label %60, label %75, !dbg !182

60:                                               ; preds = %50
  %61 = load i16, i16* %11, align 2, !dbg !183
  %62 = zext i16 %61 to i32, !dbg !183
  %63 = load i8*, i8** %7, align 8, !dbg !184
  %64 = load i8*, i8** %6, align 8, !dbg !185
  %65 = ptrtoint i8* %63 to i64, !dbg !186
  %66 = ptrtoint i8* %64 to i64, !dbg !186
  %67 = sub i64 %65, %66, !dbg !186
  %68 = trunc i64 %67 to i32, !dbg !187
  %69 = icmp ule i32 %62, %68, !dbg !188
  br i1 %69, label %70, label %75, !dbg !189

70:                                               ; preds = %60
  %71 = load %struct.netdissect_options*, %struct.netdissect_options** %3, align 8, !dbg !190
  %72 = load i8*, i8** %6, align 8, !dbg !192
  %73 = load i16, i16* %11, align 2, !dbg !193
  %74 = zext i16 %73 to i32, !dbg !193
  call fastcc void @bgp_header_print(%struct.netdissect_options* noundef %71, i8* noundef %72, i32 noundef %74), !dbg !194
  br label %75, !dbg !195

75:                                               ; preds = %70, %60, %50
  br label %76, !dbg !196

76:                                               ; preds = %37, %49, %75, %38
  ret void, !dbg !197
}

declare void @klee_warning_once(i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare zeroext i16 @ntohs(i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @bgp_header_print(%struct.netdissect_options* noundef %0, i8* noundef %1, i32 noundef %2) unnamed_addr #0 !dbg !198 {
  %4 = alloca %struct.netdissect_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.netdissect_options* %0, %struct.netdissect_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %4, metadata !201, metadata !DIExpression()), !dbg !202
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !203, metadata !DIExpression()), !dbg !204
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !205, metadata !DIExpression()), !dbg !206
  %7 = load %struct.netdissect_options*, %struct.netdissect_options** %4, align 8, !dbg !207
  %8 = load i8*, i8** %5, align 8, !dbg !208
  %9 = load i32, i32* %6, align 4, !dbg !209
  call fastcc void @bgp_update_print(%struct.netdissect_options* noundef %7, i8* noundef %8, i32 noundef %9), !dbg !210
  ret void, !dbg !211
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @bgp_update_print(%struct.netdissect_options* noundef %0, i8* noundef %1, i32 noundef %2) unnamed_addr #0 !dbg !212 {
  %4 = alloca %struct.netdissect_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.netdissect_options* %0, %struct.netdissect_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %4, metadata !213, metadata !DIExpression()), !dbg !214
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !215, metadata !DIExpression()), !dbg !216
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !217, metadata !DIExpression()), !dbg !218
  %7 = load %struct.netdissect_options*, %struct.netdissect_options** %4, align 8, !dbg !219
  %8 = load i8*, i8** %5, align 8, !dbg !220
  %9 = load i32, i32* %6, align 4, !dbg !221
  call fastcc void @bgp_attr_print(%struct.netdissect_options* noundef %7, i8* noundef %8, i32 noundef %9), !dbg !222
  ret void, !dbg !223
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @bgp_attr_print(%struct.netdissect_options* noundef %0, i8* noundef %1, i32 noundef %2) unnamed_addr #0 !dbg !224 {
  %4 = alloca %struct.netdissect_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  store %struct.netdissect_options* %0, %struct.netdissect_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %4, metadata !225, metadata !DIExpression()), !dbg !226
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !227, metadata !DIExpression()), !dbg !228
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !229, metadata !DIExpression()), !dbg !230
  call void @klee_warning_once(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)), !dbg !231
  call void @llvm.dbg.declare(metadata [256 x i8]* %7, metadata !232, metadata !DIExpression()), !dbg !237
  %8 = load %struct.netdissect_options*, %struct.netdissect_options** %4, align 8, !dbg !238
  %9 = load i8*, i8** %5, align 8, !dbg !239
  %10 = load i32, i32* %6, align 4, !dbg !240
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !241
  call fastcc void @decode_labeled_prefix6(%struct.netdissect_options* noundef %8, i8* noundef %9, i32 noundef %10, i8* noundef %11), !dbg !242
  ret void, !dbg !243
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @decode_labeled_prefix6(%struct.netdissect_options* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3) unnamed_addr #0 !dbg !244 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.netdissect_options*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.in6_addr, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.netdissect_options* %0, %struct.netdissect_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %6, metadata !248, metadata !DIExpression()), !dbg !249
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !250, metadata !DIExpression()), !dbg !251
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !252, metadata !DIExpression()), !dbg !253
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !254, metadata !DIExpression()), !dbg !255
  store i32 256, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !256, metadata !DIExpression()), !dbg !257
  call void @klee_warning_once(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0)), !dbg !258
  call void @llvm.dbg.declare(metadata %struct.in6_addr* %11, metadata !259, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata i32* %12, metadata !279, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.declare(metadata i32* %13, metadata !281, metadata !DIExpression()), !dbg !282
  br label %14, !dbg !283

14:                                               ; preds = %4
  br label %15, !dbg !284

15:                                               ; preds = %14
  br label %16, !dbg !286

16:                                               ; preds = %15
  br label %17, !dbg !287

17:                                               ; preds = %16
  %18 = load i8*, i8** %7, align 8, !dbg !289
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !289
  %20 = load i8, i8* %19, align 1, !dbg !289
  %21 = zext i8 %20 to i32, !dbg !289
  store i32 %21, i32* %12, align 4, !dbg !290
  %22 = load i32, i32* %12, align 4, !dbg !291
  %23 = icmp ugt i32 24, %22, !dbg !293
  br i1 %23, label %24, label %25, !dbg !294

24:                                               ; preds = %17
  store i32 -1, i32* %5, align 4, !dbg !295
  br label %102, !dbg !295

25:                                               ; preds = %17
  %26 = load i32, i32* %12, align 4, !dbg !296
  %27 = sub i32 %26, 24, !dbg !296
  store i32 %27, i32* %12, align 4, !dbg !296
  %28 = load i32, i32* %12, align 4, !dbg !297
  %29 = icmp ult i32 128, %28, !dbg !299
  br i1 %29, label %30, label %31, !dbg !300

30:                                               ; preds = %25
  store i32 -1, i32* %5, align 4, !dbg !301
  br label %102, !dbg !301

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4, !dbg !302
  %33 = sub i32 %32, 4, !dbg !302
  store i32 %33, i32* %8, align 4, !dbg !302
  %34 = bitcast %struct.in6_addr* %11 to i8*, !dbg !303
  %35 = call i8* @memset(i8* %34, i32 0, i64 16), !dbg !303
  %36 = load i32, i32* %12, align 4, !dbg !304
  %37 = add i32 %36, 7, !dbg !305
  %38 = udiv i32 %37, 8, !dbg !306
  store i32 %38, i32* %13, align 4, !dbg !307
  br label %39, !dbg !308

39:                                               ; preds = %31
  br label %40, !dbg !309

40:                                               ; preds = %39
  %41 = bitcast %struct.in6_addr* %11 to i8*, !dbg !311
  %42 = load i8*, i8** %7, align 8, !dbg !312
  %43 = getelementptr inbounds i8, i8* %42, i64 4, !dbg !312
  %44 = load i32, i32* %13, align 4, !dbg !313
  %45 = zext i32 %44 to i64, !dbg !313
  %46 = call i8* @memcpy(i8* %41, i8* %43, i64 %45), !dbg !311
  %47 = load i32, i32* %12, align 4, !dbg !314
  %48 = urem i32 %47, 8, !dbg !316
  %49 = icmp ne i32 %48, 0, !dbg !316
  br i1 %49, label %50, label %65, !dbg !317

50:                                               ; preds = %40
  %51 = load i32, i32* %12, align 4, !dbg !318
  %52 = urem i32 %51, 8, !dbg !320
  %int_cast_to_i64 = zext i32 %52 to i64, !dbg !321
  call fastcc void @klee_overshift_check(), !dbg !321
  %53 = ashr i32 65280, %52, !dbg !321, !klee.check.shift !322
  %54 = and i32 %53, 255, !dbg !323
  %55 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %11, i32 0, i32 0, !dbg !324
  %56 = bitcast %union.anon* %55 to [16 x i8]*, !dbg !324
  %57 = load i32, i32* %13, align 4, !dbg !325
  %58 = sub i32 %57, 1, !dbg !326
  %59 = zext i32 %58 to i64, !dbg !327
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %56, i64 0, i64 %59, !dbg !327
  %61 = load i8, i8* %60, align 1, !dbg !328
  %62 = zext i8 %61 to i32, !dbg !328
  %63 = and i32 %62, %54, !dbg !328
  %64 = trunc i32 %63 to i8, !dbg !328
  store i8 %64, i8* %60, align 1, !dbg !328
  br label %65, !dbg !329

65:                                               ; preds = %50, %40
  %66 = load i8*, i8** %9, align 8, !dbg !330
  %67 = load i32, i32* %10, align 4, !dbg !331
  %68 = zext i32 %67 to i64, !dbg !331
  %69 = load %struct.netdissect_options*, %struct.netdissect_options** %6, align 8, !dbg !332
  %70 = bitcast %struct.in6_addr* %11 to i8*, !dbg !333
  call fastcc void @ip6addr_string(%struct.netdissect_options* noundef %69, i8* noundef %70), !dbg !334
  %71 = load i32, i32* %12, align 4, !dbg !335
  %72 = load i8*, i8** %7, align 8, !dbg !336
  %73 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !336
  %74 = getelementptr inbounds i8, i8* %73, i64 0, !dbg !336
  %75 = load i8, i8* %74, align 1, !dbg !336
  %76 = zext i8 %75 to i32, !dbg !336
  %77 = shl i32 %76, 16, !dbg !336
  %78 = load i8*, i8** %7, align 8, !dbg !336
  %79 = getelementptr inbounds i8, i8* %78, i64 1, !dbg !336
  %80 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !336
  %81 = load i8, i8* %80, align 1, !dbg !336
  %82 = zext i8 %81 to i32, !dbg !336
  %83 = shl i32 %82, 8, !dbg !336
  %84 = or i32 %77, %83, !dbg !336
  %85 = load i8*, i8** %7, align 8, !dbg !336
  %86 = getelementptr inbounds i8, i8* %85, i64 1, !dbg !336
  %87 = getelementptr inbounds i8, i8* %86, i64 2, !dbg !336
  %88 = load i8, i8* %87, align 1, !dbg !336
  %89 = zext i8 %88 to i32, !dbg !336
  %90 = or i32 %84, %89, !dbg !336
  %91 = lshr i32 %90, 4, !dbg !337
  %92 = load i8*, i8** %7, align 8, !dbg !338
  %93 = getelementptr inbounds i8, i8* %92, i64 3, !dbg !338
  %94 = load i8, i8* %93, align 1, !dbg !338
  %95 = zext i8 %94 to i32, !dbg !338
  %96 = and i32 %95, 1, !dbg !339
  %97 = icmp eq i32 %96, 0, !dbg !340
  %98 = zext i1 %97 to i64, !dbg !341
  %99 = select i1 %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), !dbg !341
  %100 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %66, i64 noundef %68, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 noundef %71, i32 noundef %91, i8* noundef %99) #10, !dbg !342
  %101 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([137 x i8], [137 x i8]* @.str.7, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.decode_labeled_prefix6, i64 0, i64 0)), !dbg !343
  unreachable, !dbg !344

102:                                              ; preds = %30, %24
  %103 = load i32, i32* %5, align 4, !dbg !345
  ret void, !dbg !345
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @ip6addr_string(%struct.netdissect_options* noundef %0, i8* noundef %1) unnamed_addr #0 !dbg !346 {
  %3 = alloca %struct.netdissect_options*, align 8
  %4 = alloca i8*, align 8
  store %struct.netdissect_options* %0, %struct.netdissect_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %3, metadata !353, metadata !DIExpression()), !dbg !354
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !355, metadata !DIExpression()), !dbg !356
  ret void, !dbg !357
}

; Function Attrs: nounwind
declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @memcmp(i8* nocapture noundef nonnull readonly %0, i8* nocapture noundef nonnull readonly %1, i64 noundef %2) local_unnamed_addr #6 !dbg !358 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !365, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata i8* %1, metadata !367, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata i64 %2, metadata !368, metadata !DIExpression()), !dbg !366
  %.not = icmp eq i64 %2, 0, !dbg !369
  br i1 %.not, label %.loopexit, label %.preheader, !dbg !371

.preheader:                                       ; preds = %3, %10
  %.03 = phi i64 [ %13, %10 ], [ %2, %3 ]
  %.02 = phi i8* [ %12, %10 ], [ %0, %3 ], !dbg !372
  %.01 = phi i8* [ %11, %10 ], [ %1, %3 ], !dbg !372
  call void @llvm.dbg.value(metadata i8* %.01, metadata !374, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i8* %.02, metadata !377, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %.03, metadata !368, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata i8* %.02, metadata !377, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !372
  %4 = load i8, i8* %.02, align 1, !dbg !378
  call void @llvm.dbg.value(metadata i8* %.01, metadata !374, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !372
  %5 = load i8, i8* %.01, align 1, !dbg !381
  %.not4 = icmp eq i8 %4, %5, !dbg !382
  br i1 %.not4, label %10, label %6, !dbg !383

6:                                                ; preds = %.preheader
  call void @llvm.dbg.value(metadata i8* %.02, metadata !377, metadata !DIExpression()), !dbg !372
  %7 = zext i8 %4 to i32, !dbg !384
  call void @llvm.dbg.value(metadata i8* %.01, metadata !374, metadata !DIExpression()), !dbg !372
  %8 = zext i8 %5 to i32, !dbg !386
  %9 = sub nsw i32 %7, %8, !dbg !387
  br label %.loopexit, !dbg !388

10:                                               ; preds = %.preheader
  %11 = getelementptr inbounds i8, i8* %.01, i64 1, !dbg !389
  call void @llvm.dbg.value(metadata i8* %11, metadata !374, metadata !DIExpression()), !dbg !372
  %12 = getelementptr inbounds i8, i8* %.02, i64 1, !dbg !390
  call void @llvm.dbg.value(metadata i8* %12, metadata !377, metadata !DIExpression()), !dbg !372
  %13 = add i64 %.03, -1, !dbg !391
  call void @llvm.dbg.value(metadata i64 %13, metadata !368, metadata !DIExpression()), !dbg !366
  %.not5 = icmp eq i64 %13, 0, !dbg !392
  br i1 %.not5, label %.loopexit, label %.preheader, !dbg !393, !llvm.loop !394

.loopexit:                                        ; preds = %10, %3, %6
  %.0 = phi i32 [ %9, %6 ], [ 0, %3 ], [ 0, %10 ], !dbg !366
  ret i32 %.0, !dbg !397
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i8* @memcpy(i8* noundef returned writeonly %0, i8* nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #7 !dbg !398 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !403, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata i8* %1, metadata !405, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata i64 %2, metadata !406, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata i8* %0, metadata !407, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata i8* %1, metadata !408, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata i64 %2, metadata !406, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !404
  %.not3 = icmp eq i64 %2, 0, !dbg !409
  br i1 %.not3, label %._crit_edge, label %.lr.ph, !dbg !410

.lr.ph:                                           ; preds = %3, %.lr.ph
  %.06 = phi i8* [ %5, %.lr.ph ], [ %1, %3 ]
  %.015 = phi i8* [ %7, %.lr.ph ], [ %0, %3 ]
  %.024 = phi i64 [ %4, %.lr.ph ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i8* %.06, metadata !408, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata i8* %.015, metadata !407, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata i64 %.024, metadata !406, metadata !DIExpression()), !dbg !404
  %4 = add i64 %.024, -1, !dbg !411
  call void @llvm.dbg.value(metadata i64 %4, metadata !406, metadata !DIExpression()), !dbg !404
  %5 = getelementptr inbounds i8, i8* %.06, i64 1, !dbg !412
  call void @llvm.dbg.value(metadata i8* %5, metadata !408, metadata !DIExpression()), !dbg !404
  %6 = load i8, i8* %.06, align 1, !dbg !413
  %7 = getelementptr inbounds i8, i8* %.015, i64 1, !dbg !414
  call void @llvm.dbg.value(metadata i8* %7, metadata !407, metadata !DIExpression()), !dbg !404
  store i8 %6, i8* %.015, align 1, !dbg !415
  call void @llvm.dbg.value(metadata i64 %4, metadata !406, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !404
  %.not = icmp eq i64 %4, 0, !dbg !409
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !410, !llvm.loop !416

._crit_edge:                                      ; preds = %.lr.ph, %3
  ret i8* %0, !dbg !417
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local i8* @memset(i8* noundef returned writeonly %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #8 !dbg !418 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !422, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i32 %1, metadata !424, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 %2, metadata !425, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i8* %0, metadata !426, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 %2, metadata !425, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !423
  %.not2 = icmp eq i64 %2, 0, !dbg !427
  br i1 %.not2, label %._crit_edge, label %.lr.ph, !dbg !428

.lr.ph:                                           ; preds = %3
  %4 = trunc i32 %1 to i8
  br label %5, !dbg !428

5:                                                ; preds = %.lr.ph, %5
  %.04 = phi i8* [ %0, %.lr.ph ], [ %7, %5 ]
  %.013 = phi i64 [ %2, %.lr.ph ], [ %6, %5 ]
  call void @llvm.dbg.value(metadata i8* %.04, metadata !426, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 %.013, metadata !425, metadata !DIExpression()), !dbg !423
  %6 = add i64 %.013, -1, !dbg !429
  call void @llvm.dbg.value(metadata i64 %6, metadata !425, metadata !DIExpression()), !dbg !423
  %7 = getelementptr inbounds i8, i8* %.04, i64 1, !dbg !430
  call void @llvm.dbg.value(metadata i8* %7, metadata !426, metadata !DIExpression()), !dbg !423
  store i8 %4, i8* %.04, align 1, !dbg !431
  call void @llvm.dbg.value(metadata i64 %6, metadata !425, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !423
  %.not = icmp eq i64 %6, 0, !dbg !427
  br i1 %.not, label %._crit_edge, label %5, !dbg !428, !llvm.loop !432

._crit_edge:                                      ; preds = %5, %3
  ret i8* %0, !dbg !434
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc void @klee_overshift_check() unnamed_addr #9 !dbg !435 {
  call void @llvm.dbg.value(metadata i64 32, metadata !440, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata i64 undef, metadata !442, metadata !DIExpression()), !dbg !441
  ret void, !dbg !443
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0, !16, !22, !24, !26, !28, !30}
!llvm.ident = !{!32, !32, !32, !32, !32, !32, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/370_print-bgp.c_1183_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/driver.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/370_print-bgp.c_1183_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "67782bfea7722e7da6db8e7a383ef09e")
!2 = !{!3, !15}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "netdissect_options", file: !5, line: 15, baseType: !6)
!5 = !DIFile(filename: "driver.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/370_print-bgp.c_1183_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "67782bfea7722e7da6db8e7a383ef09e")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netdissect_options", file: !5, line: 12, size: 128, elements: !7)
!7 = !{!8, !10}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "ndo_vflag", scope: !6, file: !5, line: 13, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ndo_snapend", scope: !6, file: !5, line: 14, baseType: !11, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !5, line: 10, baseType: !14)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !18, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/370_print-bgp.c_1183_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/print-bgp.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/370_print-bgp.c_1183_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "ff49dd5a9427102cd26a77bcd0e5fe24")
!18 = !{!19, !21}
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !20, line: 9, baseType: !21)
!20 = !DIFile(filename: "print-bgp.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/370_print-bgp.c_1183_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "ff49dd5a9427102cd26a77bcd0e5fe24")
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/370_print-bgp.c_1183_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/smart_stubs.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/370_print-bgp.c_1183_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "bcda1acd1a733c696e028616d9d6f3b5")
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "/opt/tools/klee/runtime/Freestanding/memcmp.c", directory: "/opt/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "5350b831de232a5be5b37d49ccbaf0ef")
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "/opt/tools/klee/runtime/Freestanding/memcpy.c", directory: "/opt/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "8fb9a7164e167db005d7d002570068bc")
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "/opt/tools/klee/runtime/Freestanding/memset.c", directory: "/opt/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "72c61b3d8150747c019c191df9708e2b")
!30 = distinct !DICompileUnit(language: DW_LANG_C89, file: !31, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "/opt/tools/klee/runtime/Intrinsic/klee_overshift_check.c", directory: "/opt/tools/klee/build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "5666ed772284910b5d0f856859e4d123")
!32 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!33 = !{i32 7, !"Dwarf Version", i32 5}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 4}
!36 = !{i32 7, !"PIC Level", i32 2}
!37 = !{i32 7, !"PIE Level", i32 2}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 19, type: !41, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !43)
!41 = !DISubroutineType(types: !42)
!42 = !{!9}
!43 = !{}
!44 = !DILocalVariable(name: "ndo", scope: !40, file: !5, line: 20, type: !3)
!45 = !DILocation(line: 20, column: 25, scope: !40)
!46 = !DILocation(line: 20, column: 53, scope: !40)
!47 = !DILocation(line: 20, column: 31, scope: !40)
!48 = !DILocalVariable(name: "buf", scope: !40, file: !5, line: 21, type: !15)
!49 = !DILocation(line: 21, column: 20, scope: !40)
!50 = !DILocation(line: 21, column: 43, scope: !40)
!51 = !DILocation(line: 23, column: 24, scope: !40)
!52 = !DILocation(line: 23, column: 5, scope: !40)
!53 = !DILocation(line: 25, column: 5, scope: !40)
!54 = !DILocation(line: 25, column: 10, scope: !40)
!55 = !DILocation(line: 25, column: 20, scope: !40)
!56 = !DILocation(line: 26, column: 24, scope: !40)
!57 = !DILocation(line: 26, column: 28, scope: !40)
!58 = !DILocation(line: 26, column: 5, scope: !40)
!59 = !DILocation(line: 26, column: 10, scope: !40)
!60 = !DILocation(line: 26, column: 22, scope: !40)
!61 = !DILocalVariable(name: "i", scope: !62, file: !5, line: 28, type: !9)
!62 = distinct !DILexicalBlock(scope: !40, file: !5, line: 28, column: 5)
!63 = !DILocation(line: 28, column: 14, scope: !62)
!64 = !DILocation(line: 28, column: 10, scope: !62)
!65 = !DILocation(line: 28, column: 21, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !5, line: 28, column: 5)
!67 = !DILocation(line: 28, column: 23, scope: !66)
!68 = !DILocation(line: 28, column: 5, scope: !62)
!69 = !DILocation(line: 28, column: 34, scope: !66)
!70 = !DILocation(line: 28, column: 38, scope: !66)
!71 = !DILocation(line: 28, column: 41, scope: !66)
!72 = !DILocation(line: 28, column: 30, scope: !66)
!73 = !DILocation(line: 28, column: 5, scope: !66)
!74 = distinct !{!74, !68, !75, !76}
!75 = !DILocation(line: 28, column: 43, scope: !62)
!76 = !{!"llvm.loop.mustprogress"}
!77 = !DILocation(line: 29, column: 5, scope: !40)
!78 = !DILocation(line: 29, column: 13, scope: !40)
!79 = !DILocation(line: 30, column: 5, scope: !40)
!80 = !DILocation(line: 30, column: 13, scope: !40)
!81 = !DILocation(line: 31, column: 5, scope: !40)
!82 = !DILocation(line: 31, column: 13, scope: !40)
!83 = !DILocation(line: 33, column: 15, scope: !40)
!84 = !DILocation(line: 33, column: 20, scope: !40)
!85 = !DILocation(line: 33, column: 5, scope: !40)
!86 = !DILocation(line: 34, column: 5, scope: !40)
!87 = distinct !DISubprogram(name: "bgp_print", scope: !20, file: !20, line: 87, type: !88, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !43)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !90, !96, !9}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "netdissect_options", file: !20, line: 37, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netdissect_options", file: !20, line: 33, size: 128, elements: !93)
!93 = !{!94, !95}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "ndo_vflag", scope: !92, file: !20, line: 34, baseType: !9, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "ndo_snapend", scope: !92, file: !20, line: 35, baseType: !96, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !20, line: 8, baseType: !14)
!99 = !DILocalVariable(name: "ndo", arg: 1, scope: !87, file: !20, line: 87, type: !90)
!100 = !DILocation(line: 87, column: 36, scope: !87)
!101 = !DILocalVariable(name: "dat", arg: 2, scope: !87, file: !20, line: 87, type: !96)
!102 = !DILocation(line: 87, column: 55, scope: !87)
!103 = !DILocalVariable(name: "length", arg: 3, scope: !87, file: !20, line: 87, type: !9)
!104 = !DILocation(line: 87, column: 64, scope: !87)
!105 = !DILocation(line: 89, column: 5, scope: !87)
!106 = !DILocalVariable(name: "p", scope: !87, file: !20, line: 90, type: !96)
!107 = !DILocation(line: 90, column: 16, scope: !87)
!108 = !DILocalVariable(name: "ep", scope: !87, file: !20, line: 91, type: !96)
!109 = !DILocation(line: 91, column: 16, scope: !87)
!110 = !DILocalVariable(name: "start", scope: !87, file: !20, line: 92, type: !96)
!111 = !DILocation(line: 92, column: 16, scope: !87)
!112 = !DILocalVariable(name: "marker", scope: !87, file: !20, line: 93, type: !113)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 128, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 16)
!116 = !DILocation(line: 93, column: 15, scope: !87)
!117 = !DILocalVariable(name: "bgp", scope: !87, file: !20, line: 97, type: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !87, file: !20, line: 97, size: 32, elements: !119)
!119 = !{!120, !126}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "bgp_len", scope: !118, file: !20, line: 97, baseType: !121, size: 16)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !122, line: 25, baseType: !123)
!122 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !124, line: 40, baseType: !125)
!124 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!125 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "bgp_type", scope: !118, file: !20, line: 97, baseType: !127, size: 8, offset: 16)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !122, line: 24, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !124, line: 38, baseType: !14)
!129 = !DILocation(line: 97, column: 49, scope: !87)
!130 = !DILocalVariable(name: "hlen", scope: !87, file: !20, line: 98, type: !121)
!131 = !DILocation(line: 98, column: 11, scope: !87)
!132 = !DILocation(line: 100, column: 7, scope: !87)
!133 = !DILocation(line: 100, column: 13, scope: !87)
!134 = !DILocation(line: 100, column: 11, scope: !87)
!135 = !DILocation(line: 100, column: 5, scope: !87)
!136 = !DILocation(line: 101, column: 6, scope: !137)
!137 = distinct !DILexicalBlock(scope: !87, file: !20, line: 101, column: 6)
!138 = !DILocation(line: 101, column: 11, scope: !137)
!139 = !DILocation(line: 101, column: 25, scope: !137)
!140 = !DILocation(line: 101, column: 31, scope: !137)
!141 = !DILocation(line: 101, column: 29, scope: !137)
!142 = !DILocation(line: 101, column: 23, scope: !137)
!143 = !DILocation(line: 101, column: 6, scope: !87)
!144 = !DILocation(line: 102, column: 8, scope: !137)
!145 = !DILocation(line: 102, column: 13, scope: !137)
!146 = !DILocation(line: 102, column: 6, scope: !137)
!147 = !DILocation(line: 102, column: 3, scope: !137)
!148 = !DILocation(line: 104, column: 2, scope: !87)
!149 = !DILocation(line: 104, column: 2, scope: !150)
!150 = distinct !DILexicalBlock(scope: !87, file: !20, line: 104, column: 2)
!151 = !DILocation(line: 106, column: 13, scope: !152)
!152 = distinct !DILexicalBlock(scope: !87, file: !20, line: 106, column: 13)
!153 = !DILocation(line: 106, column: 18, scope: !152)
!154 = !DILocation(line: 106, column: 28, scope: !152)
!155 = !DILocation(line: 106, column: 13, scope: !87)
!156 = !DILocation(line: 107, column: 17, scope: !152)
!157 = !DILocation(line: 109, column: 6, scope: !87)
!158 = !DILocation(line: 109, column: 4, scope: !87)
!159 = !DILocation(line: 110, column: 10, scope: !87)
!160 = !DILocation(line: 110, column: 8, scope: !87)
!161 = !DILocation(line: 111, column: 6, scope: !162)
!162 = distinct !DILexicalBlock(scope: !87, file: !20, line: 111, column: 6)
!163 = !DILocation(line: 111, column: 10, scope: !162)
!164 = !DILocation(line: 111, column: 8, scope: !162)
!165 = !DILocation(line: 111, column: 6, scope: !87)
!166 = !DILocation(line: 112, column: 14, scope: !167)
!167 = distinct !DILexicalBlock(scope: !168, file: !20, line: 112, column: 7)
!168 = distinct !DILexicalBlock(scope: !162, file: !20, line: 111, column: 14)
!169 = !DILocation(line: 112, column: 17, scope: !167)
!170 = !DILocation(line: 112, column: 7, scope: !167)
!171 = !DILocation(line: 112, column: 41, scope: !167)
!172 = !DILocation(line: 112, column: 7, scope: !168)
!173 = !DILocation(line: 113, column: 4, scope: !167)
!174 = !DILocation(line: 114, column: 3, scope: !168)
!175 = !DILocation(line: 114, column: 16, scope: !168)
!176 = !DILocation(line: 115, column: 20, scope: !168)
!177 = !DILocation(line: 115, column: 10, scope: !168)
!178 = !DILocation(line: 115, column: 8, scope: !168)
!179 = !DILocation(line: 116, column: 7, scope: !180)
!180 = distinct !DILexicalBlock(scope: !168, file: !20, line: 116, column: 7)
!181 = !DILocation(line: 116, column: 12, scope: !180)
!182 = !DILocation(line: 116, column: 24, scope: !180)
!183 = !DILocation(line: 116, column: 27, scope: !180)
!184 = !DILocation(line: 116, column: 43, scope: !180)
!185 = !DILocation(line: 116, column: 48, scope: !180)
!186 = !DILocation(line: 116, column: 46, scope: !180)
!187 = !DILocation(line: 116, column: 35, scope: !180)
!188 = !DILocation(line: 116, column: 32, scope: !180)
!189 = !DILocation(line: 116, column: 7, scope: !168)
!190 = !DILocation(line: 117, column: 27, scope: !191)
!191 = distinct !DILexicalBlock(scope: !180, file: !20, line: 116, column: 52)
!192 = !DILocation(line: 117, column: 32, scope: !191)
!193 = !DILocation(line: 117, column: 35, scope: !191)
!194 = !DILocation(line: 117, column: 10, scope: !191)
!195 = !DILocation(line: 118, column: 3, scope: !191)
!196 = !DILocation(line: 119, column: 2, scope: !168)
!197 = !DILocation(line: 120, column: 1, scope: !87)
!198 = distinct !DISubprogram(name: "bgp_header_print", scope: !20, file: !20, line: 85, type: !199, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !16, retainedNodes: !43)
!199 = !DISubroutineType(types: !200)
!200 = !{!9, !90, !96, !19}
!201 = !DILocalVariable(name: "ndo", arg: 1, scope: !198, file: !20, line: 85, type: !90)
!202 = !DILocation(line: 85, column: 49, scope: !198)
!203 = !DILocalVariable(name: "p", arg: 2, scope: !198, file: !20, line: 85, type: !96)
!204 = !DILocation(line: 85, column: 68, scope: !198)
!205 = !DILocalVariable(name: "len", arg: 3, scope: !198, file: !20, line: 85, type: !19)
!206 = !DILocation(line: 85, column: 77, scope: !198)
!207 = !DILocation(line: 85, column: 108, scope: !198)
!208 = !DILocation(line: 85, column: 113, scope: !198)
!209 = !DILocation(line: 85, column: 116, scope: !198)
!210 = !DILocation(line: 85, column: 91, scope: !198)
!211 = !DILocation(line: 85, column: 84, scope: !198)
!212 = distinct !DISubprogram(name: "bgp_update_print", scope: !20, file: !20, line: 84, type: !199, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !16, retainedNodes: !43)
!213 = !DILocalVariable(name: "ndo", arg: 1, scope: !212, file: !20, line: 84, type: !90)
!214 = !DILocation(line: 84, column: 49, scope: !212)
!215 = !DILocalVariable(name: "p", arg: 2, scope: !212, file: !20, line: 84, type: !96)
!216 = !DILocation(line: 84, column: 68, scope: !212)
!217 = !DILocalVariable(name: "len", arg: 3, scope: !212, file: !20, line: 84, type: !19)
!218 = !DILocation(line: 84, column: 77, scope: !212)
!219 = !DILocation(line: 84, column: 106, scope: !212)
!220 = !DILocation(line: 84, column: 111, scope: !212)
!221 = !DILocation(line: 84, column: 114, scope: !212)
!222 = !DILocation(line: 84, column: 91, scope: !212)
!223 = !DILocation(line: 84, column: 84, scope: !212)
!224 = distinct !DISubprogram(name: "bgp_attr_print", scope: !20, file: !20, line: 79, type: !199, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !16, retainedNodes: !43)
!225 = !DILocalVariable(name: "ndo", arg: 1, scope: !224, file: !20, line: 79, type: !90)
!226 = !DILocation(line: 79, column: 47, scope: !224)
!227 = !DILocalVariable(name: "p", arg: 2, scope: !224, file: !20, line: 79, type: !96)
!228 = !DILocation(line: 79, column: 66, scope: !224)
!229 = !DILocalVariable(name: "len", arg: 3, scope: !224, file: !20, line: 79, type: !19)
!230 = !DILocation(line: 79, column: 75, scope: !224)
!231 = !DILocation(line: 80, column: 5, scope: !224)
!232 = !DILocalVariable(name: "buf", scope: !224, file: !20, line: 81, type: !233)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 2048, elements: !235)
!234 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!235 = !{!236}
!236 = !DISubrange(count: 256)
!237 = !DILocation(line: 81, column: 10, scope: !224)
!238 = !DILocation(line: 82, column: 35, scope: !224)
!239 = !DILocation(line: 82, column: 40, scope: !224)
!240 = !DILocation(line: 82, column: 43, scope: !224)
!241 = !DILocation(line: 82, column: 48, scope: !224)
!242 = !DILocation(line: 82, column: 12, scope: !224)
!243 = !DILocation(line: 82, column: 5, scope: !224)
!244 = distinct !DISubprogram(name: "decode_labeled_prefix6", scope: !20, file: !20, line: 41, type: !245, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !16, retainedNodes: !43)
!245 = !DISubroutineType(types: !246)
!246 = !{!9, !90, !96, !19, !247, !19}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!248 = !DILocalVariable(name: "ndo", arg: 1, scope: !244, file: !20, line: 41, type: !90)
!249 = !DILocation(line: 41, column: 55, scope: !244)
!250 = !DILocalVariable(name: "pptr", arg: 2, scope: !244, file: !20, line: 42, type: !96)
!251 = !DILocation(line: 42, column: 38, scope: !244)
!252 = !DILocalVariable(name: "itemlen", arg: 3, scope: !244, file: !20, line: 42, type: !19)
!253 = !DILocation(line: 42, column: 50, scope: !244)
!254 = !DILocalVariable(name: "buf", arg: 4, scope: !244, file: !20, line: 42, type: !247)
!255 = !DILocation(line: 42, column: 65, scope: !244)
!256 = !DILocalVariable(name: "buflen", arg: 5, scope: !244, file: !20, line: 42, type: !19)
!257 = !DILocation(line: 42, column: 76, scope: !244)
!258 = !DILocation(line: 44, column: 5, scope: !244)
!259 = !DILocalVariable(name: "addr", scope: !244, file: !20, line: 45, type: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !261, line: 219, size: 128, elements: !262)
!261 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!262 = !{!263}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !260, file: !261, line: 226, baseType: !264, size: 128)
!264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !260, file: !261, line: 221, size: 128, elements: !265)
!265 = !{!266, !268, !272}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !264, file: !261, line: 223, baseType: !267, size: 128)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 128, elements: !114)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !264, file: !261, line: 224, baseType: !269, size: 128)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 128, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 8)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !264, file: !261, line: 225, baseType: !273, size: 128)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 128, elements: !276)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !122, line: 26, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !124, line: 42, baseType: !21)
!276 = !{!277}
!277 = !DISubrange(count: 4)
!278 = !DILocation(line: 45, column: 18, scope: !244)
!279 = !DILocalVariable(name: "plen", scope: !244, file: !20, line: 46, type: !19)
!280 = !DILocation(line: 46, column: 8, scope: !244)
!281 = !DILocalVariable(name: "plenbytes", scope: !244, file: !20, line: 46, type: !19)
!282 = !DILocation(line: 46, column: 14, scope: !244)
!283 = !DILocation(line: 48, column: 2, scope: !244)
!284 = !DILocation(line: 48, column: 2, scope: !285)
!285 = distinct !DILexicalBlock(scope: !244, file: !20, line: 48, column: 2)
!286 = !DILocation(line: 49, column: 2, scope: !244)
!287 = !DILocation(line: 49, column: 2, scope: !288)
!288 = distinct !DILexicalBlock(scope: !244, file: !20, line: 49, column: 2)
!289 = !DILocation(line: 50, column: 9, scope: !244)
!290 = !DILocation(line: 50, column: 7, scope: !244)
!291 = !DILocation(line: 52, column: 11, scope: !292)
!292 = distinct !DILexicalBlock(scope: !244, file: !20, line: 52, column: 6)
!293 = !DILocation(line: 52, column: 9, scope: !292)
!294 = !DILocation(line: 52, column: 6, scope: !244)
!295 = !DILocation(line: 53, column: 3, scope: !292)
!296 = !DILocation(line: 55, column: 13, scope: !244)
!297 = !DILocation(line: 57, column: 12, scope: !298)
!298 = distinct !DILexicalBlock(scope: !244, file: !20, line: 57, column: 6)
!299 = !DILocation(line: 57, column: 10, scope: !298)
!300 = !DILocation(line: 57, column: 6, scope: !244)
!301 = !DILocation(line: 58, column: 3, scope: !298)
!302 = !DILocation(line: 59, column: 10, scope: !244)
!303 = !DILocation(line: 61, column: 2, scope: !244)
!304 = !DILocation(line: 62, column: 15, scope: !244)
!305 = !DILocation(line: 62, column: 20, scope: !244)
!306 = !DILocation(line: 62, column: 25, scope: !244)
!307 = !DILocation(line: 62, column: 12, scope: !244)
!308 = !DILocation(line: 63, column: 2, scope: !244)
!309 = !DILocation(line: 63, column: 2, scope: !310)
!310 = distinct !DILexicalBlock(scope: !244, file: !20, line: 63, column: 2)
!311 = !DILocation(line: 64, column: 2, scope: !244)
!312 = !DILocation(line: 64, column: 17, scope: !244)
!313 = !DILocation(line: 64, column: 26, scope: !244)
!314 = !DILocation(line: 65, column: 6, scope: !315)
!315 = distinct !DILexicalBlock(scope: !244, file: !20, line: 65, column: 6)
!316 = !DILocation(line: 65, column: 11, scope: !315)
!317 = !DILocation(line: 65, column: 6, scope: !244)
!318 = !DILocation(line: 67, column: 17, scope: !319)
!319 = distinct !DILexicalBlock(scope: !315, file: !20, line: 65, column: 16)
!320 = !DILocation(line: 67, column: 22, scope: !319)
!321 = !DILocation(line: 67, column: 13, scope: !319)
!322 = !{!"True"}
!323 = !DILocation(line: 67, column: 28, scope: !319)
!324 = !DILocation(line: 66, column: 8, scope: !319)
!325 = !DILocation(line: 66, column: 16, scope: !319)
!326 = !DILocation(line: 66, column: 26, scope: !319)
!327 = !DILocation(line: 66, column: 3, scope: !319)
!328 = !DILocation(line: 66, column: 31, scope: !319)
!329 = !DILocation(line: 68, column: 2, scope: !319)
!330 = !DILocation(line: 69, column: 18, scope: !244)
!331 = !DILocation(line: 69, column: 23, scope: !244)
!332 = !DILocation(line: 70, column: 33, scope: !244)
!333 = !DILocation(line: 70, column: 38, scope: !244)
!334 = !DILocation(line: 70, column: 18, scope: !244)
!335 = !DILocation(line: 71, column: 18, scope: !244)
!336 = !DILocation(line: 72, column: 18, scope: !244)
!337 = !DILocation(line: 72, column: 40, scope: !244)
!338 = !DILocation(line: 73, column: 20, scope: !244)
!339 = !DILocation(line: 73, column: 27, scope: !244)
!340 = !DILocation(line: 73, column: 30, scope: !244)
!341 = !DILocation(line: 73, column: 18, scope: !244)
!342 = !DILocation(line: 69, column: 9, scope: !244)
!343 = !DILocation(line: 75, column: 5, scope: !244)
!344 = !DILocation(line: 76, column: 13, scope: !244)
!345 = !DILocation(line: 77, column: 1, scope: !244)
!346 = distinct !DISubprogram(name: "ip6addr_string", scope: !20, file: !20, line: 39, type: !347, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !16, retainedNodes: !43)
!347 = !DISubroutineType(types: !348)
!348 = !{!349, !90, !351}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!353 = !DILocalVariable(name: "ndo", arg: 1, scope: !346, file: !20, line: 39, type: !90)
!354 = !DILocation(line: 39, column: 55, scope: !346)
!355 = !DILocalVariable(name: "ip6", arg: 2, scope: !346, file: !20, line: 39, type: !351)
!356 = !DILocation(line: 39, column: 72, scope: !346)
!357 = !DILocation(line: 39, column: 79, scope: !346)
!358 = distinct !DISubprogram(name: "memcmp", scope: !359, file: !359, line: 42, type: !360, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !43)
!359 = !DIFile(filename: "runtime/Freestanding/memcmp.c", directory: "/opt/tools/klee", checksumkind: CSK_MD5, checksum: "5350b831de232a5be5b37d49ccbaf0ef")
!360 = !DISubroutineType(types: !361)
!361 = !{!9, !351, !351, !362}
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !363, line: 46, baseType: !364)
!363 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!364 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!365 = !DILocalVariable(name: "s1", arg: 1, scope: !358, file: !359, line: 42, type: !351)
!366 = !DILocation(line: 0, scope: !358)
!367 = !DILocalVariable(name: "s2", arg: 2, scope: !358, file: !359, line: 42, type: !351)
!368 = !DILocalVariable(name: "n", arg: 3, scope: !358, file: !359, line: 42, type: !362)
!369 = !DILocation(line: 43, column: 9, scope: !370)
!370 = distinct !DILexicalBlock(scope: !358, file: !359, line: 43, column: 7)
!371 = !DILocation(line: 43, column: 7, scope: !358)
!372 = !DILocation(line: 0, scope: !373)
!373 = distinct !DILexicalBlock(scope: !370, file: !359, line: 43, column: 15)
!374 = !DILocalVariable(name: "p2", scope: !373, file: !359, line: 44, type: !375)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!377 = !DILocalVariable(name: "p1", scope: !373, file: !359, line: 44, type: !375)
!378 = !DILocation(line: 47, column: 11, scope: !379)
!379 = distinct !DILexicalBlock(scope: !380, file: !359, line: 47, column: 11)
!380 = distinct !DILexicalBlock(scope: !373, file: !359, line: 46, column: 8)
!381 = !DILocation(line: 47, column: 20, scope: !379)
!382 = !DILocation(line: 47, column: 17, scope: !379)
!383 = !DILocation(line: 47, column: 11, scope: !380)
!384 = !DILocation(line: 48, column: 17, scope: !385)
!385 = distinct !DILexicalBlock(scope: !379, file: !359, line: 47, column: 27)
!386 = !DILocation(line: 48, column: 25, scope: !385)
!387 = !DILocation(line: 48, column: 23, scope: !385)
!388 = !DILocation(line: 48, column: 9, scope: !385)
!389 = !DILocation(line: 47, column: 23, scope: !379)
!390 = !DILocation(line: 47, column: 14, scope: !379)
!391 = !DILocation(line: 50, column: 14, scope: !373)
!392 = !DILocation(line: 50, column: 18, scope: !373)
!393 = !DILocation(line: 50, column: 5, scope: !380)
!394 = distinct !{!394, !395, !396, !76}
!395 = !DILocation(line: 46, column: 5, scope: !373)
!396 = !DILocation(line: 50, column: 22, scope: !373)
!397 = !DILocation(line: 53, column: 1, scope: !358)
!398 = distinct !DISubprogram(name: "memcpy", scope: !399, file: !399, line: 12, type: !400, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !43)
!399 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/opt/tools/klee", checksumkind: CSK_MD5, checksum: "8fb9a7164e167db005d7d002570068bc")
!400 = !DISubroutineType(types: !401)
!401 = !{!402, !402, !351, !362}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!403 = !DILocalVariable(name: "destaddr", arg: 1, scope: !398, file: !399, line: 12, type: !402)
!404 = !DILocation(line: 0, scope: !398)
!405 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !398, file: !399, line: 12, type: !351)
!406 = !DILocalVariable(name: "len", arg: 3, scope: !398, file: !399, line: 12, type: !362)
!407 = !DILocalVariable(name: "dest", scope: !398, file: !399, line: 13, type: !247)
!408 = !DILocalVariable(name: "src", scope: !398, file: !399, line: 14, type: !349)
!409 = !DILocation(line: 16, column: 16, scope: !398)
!410 = !DILocation(line: 16, column: 3, scope: !398)
!411 = !DILocation(line: 16, column: 13, scope: !398)
!412 = !DILocation(line: 17, column: 19, scope: !398)
!413 = !DILocation(line: 17, column: 15, scope: !398)
!414 = !DILocation(line: 17, column: 10, scope: !398)
!415 = !DILocation(line: 17, column: 13, scope: !398)
!416 = distinct !{!416, !410, !412, !76}
!417 = !DILocation(line: 18, column: 3, scope: !398)
!418 = distinct !DISubprogram(name: "memset", scope: !419, file: !419, line: 12, type: !420, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !43)
!419 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/opt/tools/klee", checksumkind: CSK_MD5, checksum: "72c61b3d8150747c019c191df9708e2b")
!420 = !DISubroutineType(types: !421)
!421 = !{!402, !402, !9, !362}
!422 = !DILocalVariable(name: "dst", arg: 1, scope: !418, file: !419, line: 12, type: !402)
!423 = !DILocation(line: 0, scope: !418)
!424 = !DILocalVariable(name: "s", arg: 2, scope: !418, file: !419, line: 12, type: !9)
!425 = !DILocalVariable(name: "count", arg: 3, scope: !418, file: !419, line: 12, type: !362)
!426 = !DILocalVariable(name: "a", scope: !418, file: !419, line: 13, type: !247)
!427 = !DILocation(line: 14, column: 18, scope: !418)
!428 = !DILocation(line: 14, column: 3, scope: !418)
!429 = !DILocation(line: 14, column: 15, scope: !418)
!430 = !DILocation(line: 15, column: 7, scope: !418)
!431 = !DILocation(line: 15, column: 10, scope: !418)
!432 = distinct !{!432, !428, !433, !76}
!433 = !DILocation(line: 15, column: 12, scope: !418)
!434 = !DILocation(line: 16, column: 3, scope: !418)
!435 = distinct !DISubprogram(name: "klee_overshift_check", scope: !436, file: !436, line: 20, type: !437, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !43)
!436 = !DIFile(filename: "runtime/Intrinsic/klee_overshift_check.c", directory: "/opt/tools/klee", checksumkind: CSK_MD5, checksum: "5666ed772284910b5d0f856859e4d123")
!437 = !DISubroutineType(types: !438)
!438 = !{null, !439, !439}
!439 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!440 = !DILocalVariable(name: "bitWidth", arg: 1, scope: !435, file: !436, line: 20, type: !439)
!441 = !DILocation(line: 0, scope: !435)
!442 = !DILocalVariable(name: "shift", arg: 2, scope: !435, file: !436, line: 20, type: !439)
!443 = !DILocation(line: 29, column: 1, scope: !435)
