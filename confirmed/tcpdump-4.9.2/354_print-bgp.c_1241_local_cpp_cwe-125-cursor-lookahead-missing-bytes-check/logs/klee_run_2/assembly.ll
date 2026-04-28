; ModuleID = '/app/se_runs/sailor_engine/tcpdump-4.9.2/354_print-bgp.c_1241_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/slice.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.netdissect_options = type { i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"pkt\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"SPINE_PROBE:bgp_attr_print:ENTRY\00", align 1
@.str.1.2 = private unnamed_addr constant [35 x i8] c"SPINE_PROBE:bgp_update_print:ENTRY\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"SPINE_PROBE:bgp_print:ENTRY\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"SPINE_PROBE:decode_clnp_prefix:ENTRY\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s/%d\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"0 && \22SAILOR_SINK_REACHED\22\00", align 1
@.str.7 = private unnamed_addr constant [137 x i8] c"/app/se_runs/sailor_engine/tcpdump-4.9.2/354_print-bgp.c_1241_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/print-bgp.c\00", align 1
@__PRETTY_FUNCTION__.decode_clnp_prefix = private unnamed_addr constant [76 x i8] c"int decode_clnp_prefix(netdissect_options *, const u_char *, char *, u_int)\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"SPINE_PROBE:bgp_header_print:ENTRY\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !34 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.netdissect_options*, align 8
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %2, metadata !38, metadata !DIExpression()), !dbg !39
  %4 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 16) #9, !dbg !40
  %5 = bitcast i8* %4 to %struct.netdissect_options*, !dbg !41
  store %struct.netdissect_options* %5, %struct.netdissect_options** %2, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata i8** %3, metadata !42, metadata !DIExpression()), !dbg !43
  %6 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 64) #9, !dbg !44
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

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @bgp_attr_print(%struct.netdissect_options* noundef %0, i8* noundef %1, i32 noundef %2) unnamed_addr #0 !dbg !67 {
  %4 = alloca %struct.netdissect_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.netdissect_options* %0, %struct.netdissect_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %4, metadata !80, metadata !DIExpression()), !dbg !81
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !82, metadata !DIExpression()), !dbg !83
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !84, metadata !DIExpression()), !dbg !85
  %7 = load %struct.netdissect_options*, %struct.netdissect_options** %4, align 8, !dbg !86
  call fastcc void @decode_clnp_prefix(%struct.netdissect_options* noundef %7, i8* noundef null, i8* noundef null, i32 noundef 0), !dbg !87
  call void @klee_warning_once(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)), !dbg !88
  ret void, !dbg !89
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @decode_clnp_prefix(%struct.netdissect_options* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3) unnamed_addr #0 !dbg !90 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.netdissect_options*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [19 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.netdissect_options* %0, %struct.netdissect_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %6, metadata !97, metadata !DIExpression()), !dbg !98
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !99, metadata !DIExpression()), !dbg !100
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !101, metadata !DIExpression()), !dbg !102
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !103, metadata !DIExpression()), !dbg !104
  call void @klee_warning_once(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0)), !dbg !105
  call void @llvm.dbg.declare(metadata [19 x i8]* %10, metadata !106, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata i32* %11, metadata !115, metadata !DIExpression()), !dbg !116
  br label %12, !dbg !117

12:                                               ; preds = %4
  br label %13, !dbg !118

13:                                               ; preds = %12
  %14 = load i8*, i8** %7, align 8, !dbg !120
  %15 = getelementptr inbounds i8, i8* %14, i64 0, !dbg !120
  %16 = load i8, i8* %15, align 1, !dbg !120
  %17 = zext i8 %16 to i32, !dbg !120
  store i32 %17, i32* %11, align 4, !dbg !121
  %18 = load i32, i32* %11, align 4, !dbg !122
  %19 = icmp ult i32 152, %18, !dbg !124
  br i1 %19, label %20, label %21, !dbg !125

20:                                               ; preds = %13
  store i32 -1, i32* %5, align 4, !dbg !126
  br label %58, !dbg !126

21:                                               ; preds = %13
  %22 = bitcast [19 x i8]* %10 to i8*, !dbg !127
  %23 = call i8* @memset(i8* %22, i32 0, i64 19), !dbg !127
  br label %24, !dbg !128

24:                                               ; preds = %21
  br label %25, !dbg !129

25:                                               ; preds = %24
  %26 = bitcast [19 x i8]* %10 to i8*, !dbg !131
  %27 = load i8*, i8** %7, align 8, !dbg !132
  %28 = getelementptr inbounds i8, i8* %27, i64 4, !dbg !132
  %29 = load i32, i32* %11, align 4, !dbg !133
  %30 = add i32 %29, 7, !dbg !134
  %31 = udiv i32 %30, 8, !dbg !135
  %32 = zext i32 %31 to i64, !dbg !136
  %33 = call i8* @memcpy(i8* %26, i8* %28, i64 %32), !dbg !131
  %34 = load i32, i32* %11, align 4, !dbg !137
  %35 = urem i32 %34, 8, !dbg !139
  %36 = icmp ne i32 %35, 0, !dbg !139
  br i1 %36, label %37, label %52, !dbg !140

37:                                               ; preds = %25
  %38 = load i32, i32* %11, align 4, !dbg !141
  %39 = urem i32 %38, 8, !dbg !143
  %int_cast_to_i64 = zext i32 %39 to i64, !dbg !144
  call fastcc void @klee_overshift_check(), !dbg !144
  %40 = ashr i32 65280, %39, !dbg !144, !klee.check.shift !145
  %41 = and i32 %40, 255, !dbg !146
  %42 = load i32, i32* %11, align 4, !dbg !147
  %43 = add i32 %42, 7, !dbg !148
  %44 = udiv i32 %43, 8, !dbg !149
  %45 = sub i32 %44, 1, !dbg !150
  %46 = zext i32 %45 to i64, !dbg !151
  %47 = getelementptr inbounds [19 x i8], [19 x i8]* %10, i64 0, i64 %46, !dbg !151
  %48 = load i8, i8* %47, align 1, !dbg !152
  %49 = zext i8 %48 to i32, !dbg !152
  %50 = and i32 %49, %41, !dbg !152
  %51 = trunc i32 %50 to i8, !dbg !152
  store i8 %51, i8* %47, align 1, !dbg !152
  br label %52, !dbg !153

52:                                               ; preds = %37, %25
  %53 = load i8*, i8** %8, align 8, !dbg !154
  %54 = load i32, i32* %9, align 4, !dbg !155
  %55 = zext i32 %54 to i64, !dbg !155
  %56 = load i32, i32* %11, align 4, !dbg !156
  call fastcc void @snprintf(i8* noundef %53, i64 noundef %55) #9, !dbg !157
  %57 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([137 x i8], [137 x i8]* @.str.7, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.decode_clnp_prefix, i64 0, i64 0)), !dbg !158
  unreachable, !dbg !159

58:                                               ; preds = %20
  %59 = load i32, i32* %5, align 4, !dbg !160
  ret void, !dbg !160
}

declare void @klee_warning_once(i8* noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @bgp_update_print(%struct.netdissect_options* noundef %0, i8* noundef %1, i32 noundef %2) unnamed_addr #0 !dbg !161 {
  %4 = alloca %struct.netdissect_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.netdissect_options* %0, %struct.netdissect_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %4, metadata !162, metadata !DIExpression()), !dbg !163
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !164, metadata !DIExpression()), !dbg !165
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !166, metadata !DIExpression()), !dbg !167
  %7 = load %struct.netdissect_options*, %struct.netdissect_options** %4, align 8, !dbg !168
  %8 = load i8*, i8** %5, align 8, !dbg !169
  %9 = load i32, i32* %6, align 4, !dbg !170
  call fastcc void @bgp_attr_print(%struct.netdissect_options* noundef %7, i8* noundef %8, i32 noundef %9), !dbg !171
  call void @klee_warning_once(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1.2, i64 0, i64 0)), !dbg !172
  ret void, !dbg !173
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @bgp_print(%struct.netdissect_options* noundef %0, i8* noundef %1) unnamed_addr #0 !dbg !174 {
  %3 = alloca %struct.netdissect_options*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.netdissect_options* %0, %struct.netdissect_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %3, metadata !175, metadata !DIExpression()), !dbg !176
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !177, metadata !DIExpression()), !dbg !178
  store i32 19, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !179, metadata !DIExpression()), !dbg !180
  call void @klee_warning_once(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0)), !dbg !181
  %6 = load i8*, i8** %4, align 8, !dbg !182
  %7 = load i32, i32* %5, align 4, !dbg !183
  %8 = load %struct.netdissect_options*, %struct.netdissect_options** %3, align 8, !dbg !184
  %9 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %8, i32 0, i32 0, !dbg !186
  %10 = load i32, i32* %9, align 8, !dbg !186
  %11 = icmp slt i32 %10, 1, !dbg !187
  br i1 %11, label %12, label %13, !dbg !188

12:                                               ; preds = %2
  br label %17, !dbg !189

13:                                               ; preds = %2
  %14 = load %struct.netdissect_options*, %struct.netdissect_options** %3, align 8, !dbg !190
  %15 = load i8*, i8** %4, align 8, !dbg !191
  %16 = load i32, i32* %5, align 4, !dbg !192
  call fastcc void @bgp_header_print(%struct.netdissect_options* noundef %14, i8* noundef %15, i32 noundef %16), !dbg !193
  br label %17, !dbg !194

17:                                               ; preds = %13, %12
  ret void, !dbg !195
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @bgp_header_print(%struct.netdissect_options* noundef %0, i8* noundef %1, i32 noundef %2) unnamed_addr #0 !dbg !196 {
  %4 = alloca %struct.netdissect_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  %8 = alloca [32 x i8], align 16
  store %struct.netdissect_options* %0, %struct.netdissect_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %4, metadata !199, metadata !DIExpression()), !dbg !200
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !201, metadata !DIExpression()), !dbg !202
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !203, metadata !DIExpression()), !dbg !204
  %9 = load %struct.netdissect_options*, %struct.netdissect_options** %4, align 8, !dbg !205
  %10 = load i8*, i8** %5, align 8, !dbg !206
  %11 = load i32, i32* %6, align 4, !dbg !207
  call fastcc void @bgp_update_print(%struct.netdissect_options* noundef %9, i8* noundef %10, i32 noundef %11), !dbg !208
  call void @klee_warning_once(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0)), !dbg !209
  call void @llvm.dbg.declare(metadata [128 x i8]* %7, metadata !210, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata [32 x i8]* %8, metadata !215, metadata !DIExpression()), !dbg !219
  %12 = load i8*, i8** %5, align 8, !dbg !220
  %13 = load i32, i32* %6, align 4, !dbg !221
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0, !dbg !222
  %15 = call i8* @memset(i8* %14, i32 0, i64 32), !dbg !222
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0, !dbg !223
  store i8 8, i8* %16, align 16, !dbg !224
  %17 = load %struct.netdissect_options*, %struct.netdissect_options** %4, align 8, !dbg !225
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0, !dbg !226
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0, !dbg !227
  call fastcc void @decode_clnp_prefix(%struct.netdissect_options* noundef %17, i8* noundef %18, i8* noundef %19, i32 noundef 128), !dbg !228
  ret void, !dbg !229
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i32 @memcmp(i8* noundef nonnull %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #5 !dbg !230 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !237, metadata !DIExpression()), !dbg !238
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !239, metadata !DIExpression()), !dbg !240
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !241, metadata !DIExpression()), !dbg !242
  %7 = load i8*, i8** %4, align 8, !dbg !243
  %8 = load i8*, i8** %5, align 8, !dbg !244
  %9 = load i64, i64* %6, align 8, !dbg !245
  ret i32 1, !dbg !246
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @snprintf(i8* noundef %0, i64 noundef %1) unnamed_addr #0 !dbg !247 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !252, metadata !DIExpression()), !dbg !253
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !254, metadata !DIExpression()), !dbg !255
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !256, metadata !DIExpression()), !dbg !257
  %6 = load i8*, i8** %3, align 8, !dbg !258
  %7 = load i64, i64* %4, align 8, !dbg !259
  %8 = load i8*, i8** %5, align 8, !dbg !260
  %9 = load i64, i64* %4, align 8, !dbg !261
  %10 = icmp ugt i64 %9, 0, !dbg !263
  br i1 %10, label %11, label %14, !dbg !264

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8, !dbg !265
  %13 = getelementptr inbounds i8, i8* %12, i64 0, !dbg !265
  store i8 0, i8* %13, align 1, !dbg !266
  br label %14, !dbg !265

14:                                               ; preds = %11, %2
  ret void, !dbg !267
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i8* @memcpy(i8* noundef returned writeonly %0, i8* nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #6 !dbg !268 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i8* %1, metadata !277, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i64 %2, metadata !278, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i8* %0, metadata !279, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i8* %1, metadata !280, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i64 %2, metadata !278, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !276
  %.not3 = icmp eq i64 %2, 0, !dbg !281
  br i1 %.not3, label %._crit_edge, label %.lr.ph, !dbg !282

.lr.ph:                                           ; preds = %3, %.lr.ph
  %.06 = phi i8* [ %5, %.lr.ph ], [ %1, %3 ]
  %.015 = phi i8* [ %7, %.lr.ph ], [ %0, %3 ]
  %.024 = phi i64 [ %4, %.lr.ph ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i8* %.06, metadata !280, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i8* %.015, metadata !279, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i64 %.024, metadata !278, metadata !DIExpression()), !dbg !276
  %4 = add i64 %.024, -1, !dbg !283
  call void @llvm.dbg.value(metadata i64 %4, metadata !278, metadata !DIExpression()), !dbg !276
  %5 = getelementptr inbounds i8, i8* %.06, i64 1, !dbg !284
  call void @llvm.dbg.value(metadata i8* %5, metadata !280, metadata !DIExpression()), !dbg !276
  %6 = load i8, i8* %.06, align 1, !dbg !285
  %7 = getelementptr inbounds i8, i8* %.015, i64 1, !dbg !286
  call void @llvm.dbg.value(metadata i8* %7, metadata !279, metadata !DIExpression()), !dbg !276
  store i8 %6, i8* %.015, align 1, !dbg !287
  call void @llvm.dbg.value(metadata i64 %4, metadata !278, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !276
  %.not = icmp eq i64 %4, 0, !dbg !281
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !282, !llvm.loop !288

._crit_edge:                                      ; preds = %.lr.ph, %3
  ret i8* %0, !dbg !290
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local i8* @memset(i8* noundef returned writeonly %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #7 !dbg !291 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !295, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i32 %1, metadata !297, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 %2, metadata !298, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i8* %0, metadata !299, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 %2, metadata !298, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !296
  %.not2 = icmp eq i64 %2, 0, !dbg !300
  br i1 %.not2, label %._crit_edge, label %.lr.ph, !dbg !301

.lr.ph:                                           ; preds = %3
  %4 = trunc i32 %1 to i8
  br label %5, !dbg !301

5:                                                ; preds = %.lr.ph, %5
  %.04 = phi i8* [ %0, %.lr.ph ], [ %7, %5 ]
  %.013 = phi i64 [ %2, %.lr.ph ], [ %6, %5 ]
  call void @llvm.dbg.value(metadata i8* %.04, metadata !299, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64 %.013, metadata !298, metadata !DIExpression()), !dbg !296
  %6 = add i64 %.013, -1, !dbg !302
  call void @llvm.dbg.value(metadata i64 %6, metadata !298, metadata !DIExpression()), !dbg !296
  %7 = getelementptr inbounds i8, i8* %.04, i64 1, !dbg !303
  call void @llvm.dbg.value(metadata i8* %7, metadata !299, metadata !DIExpression()), !dbg !296
  store i8 %4, i8* %.04, align 1, !dbg !304
  call void @llvm.dbg.value(metadata i64 %6, metadata !298, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !296
  %.not = icmp eq i64 %6, 0, !dbg !300
  br i1 %.not, label %._crit_edge, label %5, !dbg !301, !llvm.loop !305

._crit_edge:                                      ; preds = %5, %3
  ret i8* %0, !dbg !307
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc void @klee_overshift_check() unnamed_addr #8 !dbg !308 {
  call void @llvm.dbg.value(metadata i64 32, metadata !313, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i64 undef, metadata !315, metadata !DIExpression()), !dbg !314
  ret void, !dbg !316
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optnone readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

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
!17 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/354_print-bgp.c_1241_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/print-bgp.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/354_print-bgp.c_1241_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "2a2f61d96691e59c317ad8f2bfc1d16d")
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
!67 = distinct !DISubprogram(name: "bgp_attr_print", scope: !68, file: !68, line: 61, type: !69, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !37)
!68 = !DIFile(filename: "print-bgp.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/354_print-bgp.c_1241_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "2a2f61d96691e59c317ad8f2bfc1d16d")
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
!80 = !DILocalVariable(name: "ndo", arg: 1, scope: !67, file: !68, line: 61, type: !71)
!81 = !DILocation(line: 61, column: 41, scope: !67)
!82 = !DILocalVariable(name: "p", arg: 2, scope: !67, file: !68, line: 61, type: !77)
!83 = !DILocation(line: 61, column: 60, scope: !67)
!84 = !DILocalVariable(name: "hlen", arg: 3, scope: !67, file: !68, line: 61, type: !9)
!85 = !DILocation(line: 61, column: 67, scope: !67)
!86 = !DILocation(line: 62, column: 24, scope: !67)
!87 = !DILocation(line: 62, column: 5, scope: !67)
!88 = !DILocation(line: 64, column: 5, scope: !67)
!89 = !DILocation(line: 65, column: 1, scope: !67)
!90 = distinct !DISubprogram(name: "decode_clnp_prefix", scope: !68, file: !68, line: 30, type: !91, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !16, retainedNodes: !37)
!91 = !DISubroutineType(types: !92)
!92 = !{!9, !71, !77, !93, !95}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !68, line: 9, baseType: !96)
!96 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!97 = !DILocalVariable(name: "ndo", arg: 1, scope: !90, file: !68, line: 30, type: !71)
!98 = !DILocation(line: 30, column: 51, scope: !90)
!99 = !DILocalVariable(name: "pptr", arg: 2, scope: !90, file: !68, line: 31, type: !77)
!100 = !DILocation(line: 31, column: 34, scope: !90)
!101 = !DILocalVariable(name: "buf", arg: 3, scope: !90, file: !68, line: 31, type: !93)
!102 = !DILocation(line: 31, column: 46, scope: !90)
!103 = !DILocalVariable(name: "buflen", arg: 4, scope: !90, file: !68, line: 31, type: !95)
!104 = !DILocation(line: 31, column: 57, scope: !90)
!105 = !DILocation(line: 33, column: 5, scope: !90)
!106 = !DILocalVariable(name: "addr", scope: !90, file: !68, line: 34, type: !107)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 152, elements: !112)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !109, line: 24, baseType: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !111, line: 38, baseType: !14)
!111 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!112 = !{!113}
!113 = !DISubrange(count: 19)
!114 = !DILocation(line: 34, column: 17, scope: !90)
!115 = !DILocalVariable(name: "plen", scope: !90, file: !68, line: 35, type: !95)
!116 = !DILocation(line: 35, column: 8, scope: !90)
!117 = !DILocation(line: 37, column: 2, scope: !90)
!118 = !DILocation(line: 37, column: 2, scope: !119)
!119 = distinct !DILexicalBlock(scope: !90, file: !68, line: 37, column: 2)
!120 = !DILocation(line: 38, column: 9, scope: !90)
!121 = !DILocation(line: 38, column: 7, scope: !90)
!122 = !DILocation(line: 40, column: 12, scope: !123)
!123 = distinct !DILexicalBlock(scope: !90, file: !68, line: 40, column: 6)
!124 = !DILocation(line: 40, column: 10, scope: !123)
!125 = !DILocation(line: 40, column: 6, scope: !90)
!126 = !DILocation(line: 41, column: 3, scope: !123)
!127 = !DILocation(line: 43, column: 2, scope: !90)
!128 = !DILocation(line: 44, column: 2, scope: !90)
!129 = !DILocation(line: 44, column: 2, scope: !130)
!130 = distinct !DILexicalBlock(scope: !90, file: !68, line: 44, column: 2)
!131 = !DILocation(line: 45, column: 2, scope: !90)
!132 = !DILocation(line: 45, column: 17, scope: !90)
!133 = !DILocation(line: 45, column: 27, scope: !90)
!134 = !DILocation(line: 45, column: 32, scope: !90)
!135 = !DILocation(line: 45, column: 37, scope: !90)
!136 = !DILocation(line: 45, column: 26, scope: !90)
!137 = !DILocation(line: 46, column: 6, scope: !138)
!138 = distinct !DILexicalBlock(scope: !90, file: !68, line: 46, column: 6)
!139 = !DILocation(line: 46, column: 11, scope: !138)
!140 = !DILocation(line: 46, column: 6, scope: !90)
!141 = !DILocation(line: 48, column: 17, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !68, line: 46, column: 16)
!143 = !DILocation(line: 48, column: 22, scope: !142)
!144 = !DILocation(line: 48, column: 13, scope: !142)
!145 = !{!"True"}
!146 = !DILocation(line: 48, column: 28, scope: !142)
!147 = !DILocation(line: 47, column: 9, scope: !142)
!148 = !DILocation(line: 47, column: 14, scope: !142)
!149 = !DILocation(line: 47, column: 19, scope: !142)
!150 = !DILocation(line: 47, column: 23, scope: !142)
!151 = !DILocation(line: 47, column: 3, scope: !142)
!152 = !DILocation(line: 47, column: 28, scope: !142)
!153 = !DILocation(line: 49, column: 2, scope: !142)
!154 = !DILocation(line: 50, column: 11, scope: !90)
!155 = !DILocation(line: 50, column: 16, scope: !90)
!156 = !DILocation(line: 52, column: 18, scope: !90)
!157 = !DILocation(line: 50, column: 2, scope: !90)
!158 = !DILocation(line: 54, column: 2, scope: !90)
!159 = !DILocation(line: 55, column: 14, scope: !90)
!160 = !DILocation(line: 56, column: 1, scope: !90)
!161 = distinct !DISubprogram(name: "bgp_update_print", scope: !68, file: !68, line: 67, type: !69, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !37)
!162 = !DILocalVariable(name: "ndo", arg: 1, scope: !161, file: !68, line: 67, type: !71)
!163 = !DILocation(line: 67, column: 43, scope: !161)
!164 = !DILocalVariable(name: "p", arg: 2, scope: !161, file: !68, line: 67, type: !77)
!165 = !DILocation(line: 67, column: 62, scope: !161)
!166 = !DILocalVariable(name: "hlen", arg: 3, scope: !161, file: !68, line: 67, type: !9)
!167 = !DILocation(line: 67, column: 69, scope: !161)
!168 = !DILocation(line: 68, column: 20, scope: !161)
!169 = !DILocation(line: 68, column: 25, scope: !161)
!170 = !DILocation(line: 68, column: 28, scope: !161)
!171 = !DILocation(line: 68, column: 5, scope: !161)
!172 = !DILocation(line: 70, column: 5, scope: !161)
!173 = !DILocation(line: 71, column: 1, scope: !161)
!174 = distinct !DISubprogram(name: "bgp_print", scope: !68, file: !68, line: 88, type: !69, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !37)
!175 = !DILocalVariable(name: "ndo", arg: 1, scope: !174, file: !68, line: 88, type: !71)
!176 = !DILocation(line: 88, column: 31, scope: !174)
!177 = !DILocalVariable(name: "dat", arg: 2, scope: !174, file: !68, line: 89, type: !77)
!178 = !DILocation(line: 89, column: 25, scope: !174)
!179 = !DILocalVariable(name: "length", arg: 3, scope: !174, file: !68, line: 89, type: !9)
!180 = !DILocation(line: 89, column: 34, scope: !174)
!181 = !DILocation(line: 91, column: 5, scope: !174)
!182 = !DILocation(line: 92, column: 8, scope: !174)
!183 = !DILocation(line: 93, column: 8, scope: !174)
!184 = !DILocation(line: 94, column: 6, scope: !185)
!185 = distinct !DILexicalBlock(scope: !174, file: !68, line: 94, column: 6)
!186 = !DILocation(line: 94, column: 11, scope: !185)
!187 = !DILocation(line: 94, column: 21, scope: !185)
!188 = !DILocation(line: 94, column: 6, scope: !174)
!189 = !DILocation(line: 95, column: 3, scope: !185)
!190 = !DILocation(line: 96, column: 19, scope: !174)
!191 = !DILocation(line: 96, column: 24, scope: !174)
!192 = !DILocation(line: 96, column: 29, scope: !174)
!193 = !DILocation(line: 96, column: 2, scope: !174)
!194 = !DILocation(line: 97, column: 2, scope: !174)
!195 = !DILocation(line: 98, column: 1, scope: !174)
!196 = distinct !DISubprogram(name: "bgp_header_print", scope: !68, file: !68, line: 74, type: !197, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !16, retainedNodes: !37)
!197 = !DISubroutineType(types: !198)
!198 = !{!9, !71, !77, !9}
!199 = !DILocalVariable(name: "ndo", arg: 1, scope: !196, file: !68, line: 74, type: !71)
!200 = !DILocation(line: 74, column: 49, scope: !196)
!201 = !DILocalVariable(name: "p", arg: 2, scope: !196, file: !68, line: 74, type: !77)
!202 = !DILocation(line: 74, column: 68, scope: !196)
!203 = !DILocalVariable(name: "hlen", arg: 3, scope: !196, file: !68, line: 74, type: !9)
!204 = !DILocation(line: 74, column: 75, scope: !196)
!205 = !DILocation(line: 75, column: 22, scope: !196)
!206 = !DILocation(line: 75, column: 27, scope: !196)
!207 = !DILocation(line: 75, column: 30, scope: !196)
!208 = !DILocation(line: 75, column: 5, scope: !196)
!209 = !DILocation(line: 77, column: 5, scope: !196)
!210 = !DILocalVariable(name: "outbuf", scope: !196, file: !68, line: 78, type: !211)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 1024, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 128)
!214 = !DILocation(line: 78, column: 7, scope: !196)
!215 = !DILocalVariable(name: "local", scope: !196, file: !68, line: 79, type: !216)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 32)
!219 = !DILocation(line: 79, column: 16, scope: !196)
!220 = !DILocation(line: 80, column: 8, scope: !196)
!221 = !DILocation(line: 80, column: 17, scope: !196)
!222 = !DILocation(line: 81, column: 2, scope: !196)
!223 = !DILocation(line: 82, column: 2, scope: !196)
!224 = !DILocation(line: 82, column: 11, scope: !196)
!225 = !DILocation(line: 83, column: 21, scope: !196)
!226 = !DILocation(line: 83, column: 26, scope: !196)
!227 = !DILocation(line: 83, column: 33, scope: !196)
!228 = !DILocation(line: 83, column: 2, scope: !196)
!229 = !DILocation(line: 84, column: 2, scope: !196)
!230 = distinct !DISubprogram(name: "memcmp", scope: !231, file: !231, line: 9, type: !232, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !37)
!231 = !DIFile(filename: "smart_stubs.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/354_print-bgp.c_1241_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "46bc3046996bc0b156b7396a037c83b6")
!232 = !DISubroutineType(types: !233)
!233 = !{!9, !234, !234, !236}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!236 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!237 = !DILocalVariable(name: "a", arg: 1, scope: !230, file: !231, line: 9, type: !234)
!238 = !DILocation(line: 9, column: 24, scope: !230)
!239 = !DILocalVariable(name: "b", arg: 2, scope: !230, file: !231, line: 9, type: !234)
!240 = !DILocation(line: 9, column: 39, scope: !230)
!241 = !DILocalVariable(name: "n", arg: 3, scope: !230, file: !231, line: 9, type: !236)
!242 = !DILocation(line: 9, column: 56, scope: !230)
!243 = !DILocation(line: 9, column: 67, scope: !230)
!244 = !DILocation(line: 9, column: 76, scope: !230)
!245 = !DILocation(line: 9, column: 85, scope: !230)
!246 = !DILocation(line: 9, column: 88, scope: !230)
!247 = distinct !DISubprogram(name: "snprintf", scope: !231, file: !231, line: 15, type: !248, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !37)
!248 = !DISubroutineType(types: !249)
!249 = !{!9, !93, !236, !250, null}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!252 = !DILocalVariable(name: "s", arg: 1, scope: !247, file: !231, line: 15, type: !93)
!253 = !DILocation(line: 15, column: 20, scope: !247)
!254 = !DILocalVariable(name: "n", arg: 2, scope: !247, file: !231, line: 15, type: !236)
!255 = !DILocation(line: 15, column: 37, scope: !247)
!256 = !DILocalVariable(name: "fmt", arg: 3, scope: !247, file: !231, line: 15, type: !250)
!257 = !DILocation(line: 15, column: 52, scope: !247)
!258 = !DILocation(line: 15, column: 70, scope: !247)
!259 = !DILocation(line: 15, column: 79, scope: !247)
!260 = !DILocation(line: 15, column: 88, scope: !247)
!261 = !DILocation(line: 15, column: 96, scope: !262)
!262 = distinct !DILexicalBlock(scope: !247, file: !231, line: 15, column: 96)
!263 = !DILocation(line: 15, column: 97, scope: !262)
!264 = !DILocation(line: 15, column: 96, scope: !247)
!265 = !DILocation(line: 15, column: 101, scope: !262)
!266 = !DILocation(line: 15, column: 105, scope: !262)
!267 = !DILocation(line: 15, column: 109, scope: !247)
!268 = distinct !DISubprogram(name: "memcpy", scope: !269, file: !269, line: 12, type: !270, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !37)
!269 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/opt/tools/klee", checksumkind: CSK_MD5, checksum: "8fb9a7164e167db005d7d002570068bc")
!270 = !DISubroutineType(types: !271)
!271 = !{!272, !272, !234, !273}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !274, line: 46, baseType: !236)
!274 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!275 = !DILocalVariable(name: "destaddr", arg: 1, scope: !268, file: !269, line: 12, type: !272)
!276 = !DILocation(line: 0, scope: !268)
!277 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !268, file: !269, line: 12, type: !234)
!278 = !DILocalVariable(name: "len", arg: 3, scope: !268, file: !269, line: 12, type: !273)
!279 = !DILocalVariable(name: "dest", scope: !268, file: !269, line: 13, type: !93)
!280 = !DILocalVariable(name: "src", scope: !268, file: !269, line: 14, type: !250)
!281 = !DILocation(line: 16, column: 16, scope: !268)
!282 = !DILocation(line: 16, column: 3, scope: !268)
!283 = !DILocation(line: 16, column: 13, scope: !268)
!284 = !DILocation(line: 17, column: 19, scope: !268)
!285 = !DILocation(line: 17, column: 15, scope: !268)
!286 = !DILocation(line: 17, column: 10, scope: !268)
!287 = !DILocation(line: 17, column: 13, scope: !268)
!288 = distinct !{!288, !282, !284, !289}
!289 = !{!"llvm.loop.mustprogress"}
!290 = !DILocation(line: 18, column: 3, scope: !268)
!291 = distinct !DISubprogram(name: "memset", scope: !292, file: !292, line: 12, type: !293, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !37)
!292 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/opt/tools/klee", checksumkind: CSK_MD5, checksum: "72c61b3d8150747c019c191df9708e2b")
!293 = !DISubroutineType(types: !294)
!294 = !{!272, !272, !9, !273}
!295 = !DILocalVariable(name: "dst", arg: 1, scope: !291, file: !292, line: 12, type: !272)
!296 = !DILocation(line: 0, scope: !291)
!297 = !DILocalVariable(name: "s", arg: 2, scope: !291, file: !292, line: 12, type: !9)
!298 = !DILocalVariable(name: "count", arg: 3, scope: !291, file: !292, line: 12, type: !273)
!299 = !DILocalVariable(name: "a", scope: !291, file: !292, line: 13, type: !93)
!300 = !DILocation(line: 14, column: 18, scope: !291)
!301 = !DILocation(line: 14, column: 3, scope: !291)
!302 = !DILocation(line: 14, column: 15, scope: !291)
!303 = !DILocation(line: 15, column: 7, scope: !291)
!304 = !DILocation(line: 15, column: 10, scope: !291)
!305 = distinct !{!305, !301, !306, !289}
!306 = !DILocation(line: 15, column: 12, scope: !291)
!307 = !DILocation(line: 16, column: 3, scope: !291)
!308 = distinct !DISubprogram(name: "klee_overshift_check", scope: !309, file: !309, line: 20, type: !310, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !37)
!309 = !DIFile(filename: "runtime/Intrinsic/klee_overshift_check.c", directory: "/opt/tools/klee", checksumkind: CSK_MD5, checksum: "5666ed772284910b5d0f856859e4d123")
!310 = !DISubroutineType(types: !311)
!311 = !{null, !312, !312}
!312 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!313 = !DILocalVariable(name: "bitWidth", arg: 1, scope: !308, file: !309, line: 20, type: !312)
!314 = !DILocation(line: 0, scope: !308)
!315 = !DILocalVariable(name: "shift", arg: 2, scope: !308, file: !309, line: 20, type: !312)
!316 = !DILocation(line: 29, column: 1, scope: !308)
