; ModuleID = '/app/se_runs/sailor_engine/tcpdump-4.9.2/353_print-bgp.c_1240_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/slice.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.netdissect_options = type { i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"SPINE_PROBE:bgp_attr_print:ENTRY\00", align 1
@.str.1.2 = private unnamed_addr constant [35 x i8] c"SPINE_PROBE:bgp_update_print:ENTRY\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"SPINE_PROBE:bgp_header_print:ENTRY\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"SPINE_PROBE:bgp_print:ENTRY\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"SPINE_PROBE:decode_clnp_prefix:ENTRY\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s/%d\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"0 && \22SAILOR_SINK_REACHED\22\00", align 1
@.str.7 = private unnamed_addr constant [137 x i8] c"/app/se_runs/sailor_engine/tcpdump-4.9.2/353_print-bgp.c_1240_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/print-bgp.c\00", align 1
@__PRETTY_FUNCTION__.decode_clnp_prefix = private unnamed_addr constant [76 x i8] c"int decode_clnp_prefix(netdissect_options *, const u_char *, char *, u_int)\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !34 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.netdissect_options*, align 8
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %2, metadata !39, metadata !DIExpression()), !dbg !40
  %4 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 16) #8, !dbg !41
  %5 = bitcast i8* %4 to %struct.netdissect_options*, !dbg !42
  store %struct.netdissect_options* %5, %struct.netdissect_options** %2, align 8, !dbg !40
  call void @llvm.dbg.declare(metadata i8** %3, metadata !43, metadata !DIExpression()), !dbg !44
  %6 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 64) #8, !dbg !45
  store i8* %6, i8** %3, align 8, !dbg !44
  %7 = load i8*, i8** %3, align 8, !dbg !46
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 64, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !47
  %8 = load i8*, i8** %3, align 8, !dbg !48
  %9 = getelementptr inbounds i8, i8* %8, i64 0, !dbg !48
  store i8 32, i8* %9, align 1, !dbg !49
  %10 = load i8*, i8** %3, align 8, !dbg !50
  %11 = getelementptr inbounds i8, i8* %10, i64 64, !dbg !51
  %12 = load %struct.netdissect_options*, %struct.netdissect_options** %2, align 8, !dbg !52
  %13 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %12, i32 0, i32 1, !dbg !53
  store i8* %11, i8** %13, align 8, !dbg !54
  %14 = load %struct.netdissect_options*, %struct.netdissect_options** %2, align 8, !dbg !55
  %15 = getelementptr inbounds %struct.netdissect_options, %struct.netdissect_options* %14, i32 0, i32 0, !dbg !56
  store i32 1, i32* %15, align 8, !dbg !57
  %16 = load %struct.netdissect_options*, %struct.netdissect_options** %2, align 8, !dbg !58
  %17 = load i8*, i8** %3, align 8, !dbg !59
  call fastcc void @bgp_print(%struct.netdissect_options* noundef %16, i8* noundef %17), !dbg !60
  ret i32 0, !dbg !61
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @bgp_attr_print(%struct.netdissect_options* noundef %0, i8* noundef %1, i32 noundef %2) unnamed_addr #0 !dbg !62 {
  %4 = alloca %struct.netdissect_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.netdissect_options* %0, %struct.netdissect_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %4, metadata !75, metadata !DIExpression()), !dbg !76
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !77, metadata !DIExpression()), !dbg !78
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !79, metadata !DIExpression()), !dbg !80
  %7 = load %struct.netdissect_options*, %struct.netdissect_options** %4, align 8, !dbg !81
  call fastcc void @decode_clnp_prefix(%struct.netdissect_options* noundef %7, i8* noundef null, i8* noundef null, i32 noundef 0), !dbg !82
  call void @klee_warning_once(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)), !dbg !83
  ret void, !dbg !84
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @decode_clnp_prefix(%struct.netdissect_options* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3) unnamed_addr #0 !dbg !85 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.netdissect_options*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [19 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.netdissect_options* %0, %struct.netdissect_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %6, metadata !92, metadata !DIExpression()), !dbg !93
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !94, metadata !DIExpression()), !dbg !95
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !96, metadata !DIExpression()), !dbg !97
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !98, metadata !DIExpression()), !dbg !99
  call void @klee_warning_once(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0)), !dbg !100
  call void @llvm.dbg.declare(metadata [19 x i8]* %10, metadata !101, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %11, metadata !110, metadata !DIExpression()), !dbg !111
  %12 = load i8*, i8** %7, align 8, !dbg !112
  %13 = getelementptr inbounds i8, i8* %12, i64 0, !dbg !112
  %14 = load i8, i8* %13, align 1, !dbg !112
  %15 = zext i8 %14 to i32, !dbg !112
  %16 = icmp eq i32 0, %15, !dbg !114
  br i1 %16, label %17, label %18, !dbg !115

17:                                               ; preds = %4
  br label %18, !dbg !116

18:                                               ; preds = %17, %4
  %19 = load i8*, i8** %7, align 8, !dbg !118
  %20 = getelementptr inbounds i8, i8* %19, i64 0, !dbg !118
  %21 = load i8, i8* %20, align 1, !dbg !118
  %22 = zext i8 %21 to i32, !dbg !118
  store i32 %22, i32* %11, align 4, !dbg !119
  %23 = load i32, i32* %11, align 4, !dbg !120
  %24 = icmp ult i32 152, %23, !dbg !122
  br i1 %24, label %25, label %26, !dbg !123

25:                                               ; preds = %18
  store i32 -1, i32* %5, align 4, !dbg !124
  br label %73, !dbg !124

26:                                               ; preds = %18
  %27 = bitcast [19 x i8]* %10 to i8*, !dbg !125
  %28 = call i8* @memset(i8* %27, i32 0, i64 19), !dbg !125
  %29 = load i32, i32* %11, align 4, !dbg !126
  %30 = add i32 %29, 7, !dbg !128
  %31 = udiv i32 %30, 8, !dbg !129
  %32 = icmp ugt i32 %31, 0, !dbg !130
  br i1 %32, label %33, label %42, !dbg !131

33:                                               ; preds = %26
  %34 = bitcast [19 x i8]* %10 to i8*, !dbg !132
  %35 = load i8*, i8** %7, align 8, !dbg !134
  %36 = getelementptr inbounds i8, i8* %35, i64 4, !dbg !134
  %37 = load i32, i32* %11, align 4, !dbg !135
  %38 = add i32 %37, 7, !dbg !136
  %39 = udiv i32 %38, 8, !dbg !137
  %40 = zext i32 %39 to i64, !dbg !138
  %41 = call i8* @memcpy(i8* %34, i8* %36, i64 %40), !dbg !132
  br label %42, !dbg !139

42:                                               ; preds = %33, %26
  %43 = load i32, i32* %11, align 4, !dbg !140
  %44 = urem i32 %43, 8, !dbg !142
  %45 = icmp ne i32 %44, 0, !dbg !142
  br i1 %45, label %46, label %61, !dbg !143

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4, !dbg !144
  %48 = urem i32 %47, 8, !dbg !146
  %int_cast_to_i64 = zext i32 %48 to i64, !dbg !147
  call fastcc void @klee_overshift_check(), !dbg !147
  %49 = ashr i32 65280, %48, !dbg !147, !klee.check.shift !148
  %50 = and i32 %49, 255, !dbg !149
  %51 = load i32, i32* %11, align 4, !dbg !150
  %52 = add i32 %51, 7, !dbg !151
  %53 = udiv i32 %52, 8, !dbg !152
  %54 = sub i32 %53, 1, !dbg !153
  %55 = zext i32 %54 to i64, !dbg !154
  %56 = getelementptr inbounds [19 x i8], [19 x i8]* %10, i64 0, i64 %55, !dbg !154
  %57 = load i8, i8* %56, align 1, !dbg !155
  %58 = zext i8 %57 to i32, !dbg !155
  %59 = and i32 %58, %50, !dbg !155
  %60 = trunc i32 %59 to i8, !dbg !155
  store i8 %60, i8* %56, align 1, !dbg !155
  br label %61, !dbg !156

61:                                               ; preds = %46, %42
  %62 = load i8*, i8** %8, align 8, !dbg !157
  %63 = load i32, i32* %9, align 4, !dbg !158
  %64 = zext i32 %63 to i64, !dbg !158
  %65 = load %struct.netdissect_options*, %struct.netdissect_options** %6, align 8, !dbg !159
  %66 = getelementptr inbounds [19 x i8], [19 x i8]* %10, i64 0, i64 0, !dbg !160
  %67 = load i32, i32* %11, align 4, !dbg !161
  %68 = add i32 %67, 7, !dbg !162
  %69 = udiv i32 %68, 8, !dbg !163
  call fastcc void @isonsap_string(%struct.netdissect_options* noundef %65, i8* noundef %66, i32 noundef %69), !dbg !164
  %70 = load i32, i32* %11, align 4, !dbg !165
  %71 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %62, i64 noundef %64, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %70) #8, !dbg !166
  %72 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([137 x i8], [137 x i8]* @.str.7, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.decode_clnp_prefix, i64 0, i64 0)), !dbg !167
  unreachable, !dbg !168

73:                                               ; preds = %25
  %74 = load i32, i32* %5, align 4, !dbg !169
  ret void, !dbg !169
}

declare void @klee_warning_once(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @isonsap_string(%struct.netdissect_options* noundef %0, i8* noundef %1, i32 noundef %2) unnamed_addr #0 !dbg !170 {
  %4 = alloca %struct.netdissect_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.netdissect_options* %0, %struct.netdissect_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %4, metadata !177, metadata !DIExpression()), !dbg !178
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !179, metadata !DIExpression()), !dbg !180
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !181, metadata !DIExpression()), !dbg !182
  %7 = load %struct.netdissect_options*, %struct.netdissect_options** %4, align 8, !dbg !183
  %8 = load i8*, i8** %5, align 8, !dbg !184
  %9 = load i32, i32* %6, align 4, !dbg !185
  ret void, !dbg !186
}

; Function Attrs: nounwind
declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @bgp_update_print(%struct.netdissect_options* noundef %0, i8* noundef %1, i32 noundef %2) unnamed_addr #0 !dbg !187 {
  %4 = alloca %struct.netdissect_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.netdissect_options* %0, %struct.netdissect_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %4, metadata !188, metadata !DIExpression()), !dbg !189
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !190, metadata !DIExpression()), !dbg !191
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !192, metadata !DIExpression()), !dbg !193
  %7 = load %struct.netdissect_options*, %struct.netdissect_options** %4, align 8, !dbg !194
  %8 = load i8*, i8** %5, align 8, !dbg !195
  %9 = load i32, i32* %6, align 4, !dbg !196
  call fastcc void @bgp_attr_print(%struct.netdissect_options* noundef %7, i8* noundef %8, i32 noundef %9), !dbg !197
  call void @klee_warning_once(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1.2, i64 0, i64 0)), !dbg !198
  ret void, !dbg !199
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @bgp_header_print(%struct.netdissect_options* noundef %0, i8* noundef %1, i32 noundef %2) unnamed_addr #0 !dbg !200 {
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
  call void @klee_warning_once(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0)), !dbg !211
  ret void, !dbg !212
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @bgp_print(%struct.netdissect_options* noundef %0, i8* noundef %1) unnamed_addr #0 !dbg !213 {
  %3 = alloca %struct.netdissect_options*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  store %struct.netdissect_options* %0, %struct.netdissect_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.netdissect_options** %3, metadata !214, metadata !DIExpression()), !dbg !215
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !216, metadata !DIExpression()), !dbg !217
  store i32 19, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !218, metadata !DIExpression()), !dbg !219
  %7 = load %struct.netdissect_options*, %struct.netdissect_options** %3, align 8, !dbg !220
  %8 = load i8*, i8** %4, align 8, !dbg !221
  %9 = load i32, i32* %5, align 4, !dbg !222
  call fastcc void @bgp_header_print(%struct.netdissect_options* noundef %7, i8* noundef %8, i32 noundef %9), !dbg !223
  call void @klee_warning_once(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0)), !dbg !224
  call void @llvm.dbg.declare(metadata [64 x i8]* %6, metadata !225, metadata !DIExpression()), !dbg !229
  %10 = load i32, i32* %5, align 4, !dbg !230
  %11 = load %struct.netdissect_options*, %struct.netdissect_options** %3, align 8, !dbg !231
  %12 = load i8*, i8** %4, align 8, !dbg !232
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0, !dbg !233
  call fastcc void @decode_clnp_prefix(%struct.netdissect_options* noundef %11, i8* noundef %12, i8* noundef %13, i32 noundef 64), !dbg !234
  ret void, !dbg !235
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i8* @memcpy(i8* noundef returned writeonly %0, i8* nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #5 !dbg !236 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !246, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i8* %1, metadata !248, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i64 %2, metadata !249, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i8* %0, metadata !250, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i8* %1, metadata !251, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i64 %2, metadata !249, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !247
  %.not3 = icmp eq i64 %2, 0, !dbg !252
  br i1 %.not3, label %._crit_edge, label %.lr.ph, !dbg !253

.lr.ph:                                           ; preds = %3, %.lr.ph
  %.06 = phi i8* [ %5, %.lr.ph ], [ %1, %3 ]
  %.015 = phi i8* [ %7, %.lr.ph ], [ %0, %3 ]
  %.024 = phi i64 [ %4, %.lr.ph ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i8* %.06, metadata !251, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i8* %.015, metadata !250, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i64 %.024, metadata !249, metadata !DIExpression()), !dbg !247
  %4 = add i64 %.024, -1, !dbg !254
  call void @llvm.dbg.value(metadata i64 %4, metadata !249, metadata !DIExpression()), !dbg !247
  %5 = getelementptr inbounds i8, i8* %.06, i64 1, !dbg !255
  call void @llvm.dbg.value(metadata i8* %5, metadata !251, metadata !DIExpression()), !dbg !247
  %6 = load i8, i8* %.06, align 1, !dbg !256
  %7 = getelementptr inbounds i8, i8* %.015, i64 1, !dbg !257
  call void @llvm.dbg.value(metadata i8* %7, metadata !250, metadata !DIExpression()), !dbg !247
  store i8 %6, i8* %.015, align 1, !dbg !258
  call void @llvm.dbg.value(metadata i64 %4, metadata !249, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !247
  %.not = icmp eq i64 %4, 0, !dbg !252
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !253, !llvm.loop !259

._crit_edge:                                      ; preds = %.lr.ph, %3
  ret i8* %0, !dbg !261
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local i8* @memset(i8* noundef returned writeonly %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #6 !dbg !262 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !266, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i32 %1, metadata !268, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i64 %2, metadata !269, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i8* %0, metadata !270, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i64 %2, metadata !269, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !267
  %.not2 = icmp eq i64 %2, 0, !dbg !271
  br i1 %.not2, label %._crit_edge, label %.lr.ph, !dbg !272

.lr.ph:                                           ; preds = %3
  %4 = trunc i32 %1 to i8
  br label %5, !dbg !272

5:                                                ; preds = %.lr.ph, %5
  %.04 = phi i8* [ %0, %.lr.ph ], [ %7, %5 ]
  %.013 = phi i64 [ %2, %.lr.ph ], [ %6, %5 ]
  call void @llvm.dbg.value(metadata i8* %.04, metadata !270, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i64 %.013, metadata !269, metadata !DIExpression()), !dbg !267
  %6 = add i64 %.013, -1, !dbg !273
  call void @llvm.dbg.value(metadata i64 %6, metadata !269, metadata !DIExpression()), !dbg !267
  %7 = getelementptr inbounds i8, i8* %.04, i64 1, !dbg !274
  call void @llvm.dbg.value(metadata i8* %7, metadata !270, metadata !DIExpression()), !dbg !267
  store i8 %4, i8* %.04, align 1, !dbg !275
  call void @llvm.dbg.value(metadata i64 %6, metadata !269, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !267
  %.not = icmp eq i64 %6, 0, !dbg !271
  br i1 %.not, label %._crit_edge, label %5, !dbg !272, !llvm.loop !276

._crit_edge:                                      ; preds = %5, %3
  ret i8* %0, !dbg !278
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc void @klee_overshift_check() unnamed_addr #7 !dbg !279 {
  call void @llvm.dbg.value(metadata i64 32, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 undef, metadata !286, metadata !DIExpression()), !dbg !285
  ret void, !dbg !287
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !16, !18, !20, !22, !24}
!llvm.ident = !{!26, !26, !26, !26, !26, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/353_print-bgp.c_1240_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/driver.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/353_print-bgp.c_1240_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "6004abfda9e37a5d5778669ec0b042db")
!2 = !{!3, !15}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "netdissect_options", file: !5, line: 15, baseType: !6)
!5 = !DIFile(filename: "harness_types.h", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/353_print-bgp.c_1240_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "7150b977c2e6bac1b9727558f11112cb")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netdissect_options", file: !5, line: 12, size: 128, elements: !7)
!7 = !{!8, !10}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "ndo_vflag", scope: !6, file: !5, line: 13, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ndo_snapend", scope: !6, file: !5, line: 14, baseType: !11, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !5, line: 9, baseType: !14)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/353_print-bgp.c_1240_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/print-bgp.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/353_print-bgp.c_1240_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "b1cbbfa106f747ebaf81ab8a4b1dd854")
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/app/se_runs/sailor_engine/tcpdump-4.9.2/353_print-bgp.c_1240_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness/smart_stubs.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/353_print-bgp.c_1240_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "bcda1acd1a733c696e028616d9d6f3b5")
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
!34 = distinct !DISubprogram(name: "main", scope: !35, file: !35, line: 9, type: !36, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!35 = !DIFile(filename: "driver.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/353_print-bgp.c_1240_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "6004abfda9e37a5d5778669ec0b042db")
!36 = !DISubroutineType(types: !37)
!37 = !{!9}
!38 = !{}
!39 = !DILocalVariable(name: "ndo", scope: !34, file: !35, line: 10, type: !3)
!40 = !DILocation(line: 10, column: 25, scope: !34)
!41 = !DILocation(line: 10, column: 53, scope: !34)
!42 = !DILocation(line: 10, column: 31, scope: !34)
!43 = !DILocalVariable(name: "buf", scope: !34, file: !35, line: 11, type: !15)
!44 = !DILocation(line: 11, column: 13, scope: !34)
!45 = !DILocation(line: 11, column: 29, scope: !34)
!46 = !DILocation(line: 12, column: 24, scope: !34)
!47 = !DILocation(line: 12, column: 5, scope: !34)
!48 = !DILocation(line: 13, column: 5, scope: !34)
!49 = !DILocation(line: 13, column: 12, scope: !34)
!50 = !DILocation(line: 14, column: 24, scope: !34)
!51 = !DILocation(line: 14, column: 28, scope: !34)
!52 = !DILocation(line: 14, column: 5, scope: !34)
!53 = !DILocation(line: 14, column: 10, scope: !34)
!54 = !DILocation(line: 14, column: 22, scope: !34)
!55 = !DILocation(line: 15, column: 5, scope: !34)
!56 = !DILocation(line: 15, column: 10, scope: !34)
!57 = !DILocation(line: 15, column: 20, scope: !34)
!58 = !DILocation(line: 16, column: 15, scope: !34)
!59 = !DILocation(line: 16, column: 20, scope: !34)
!60 = !DILocation(line: 16, column: 5, scope: !34)
!61 = !DILocation(line: 17, column: 5, scope: !34)
!62 = distinct !DISubprogram(name: "bgp_attr_print", scope: !63, file: !63, line: 53, type: !64, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !38)
!63 = !DIFile(filename: "print-bgp.c", directory: "/app/se_runs/sailor_engine/tcpdump-4.9.2/353_print-bgp.c_1240_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/harness", checksumkind: CSK_MD5, checksum: "b1cbbfa106f747ebaf81ab8a4b1dd854")
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !72, !9}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "netdissect_options", file: !63, line: 13, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netdissect_options", file: !63, line: 10, size: 128, elements: !69)
!69 = !{!70, !71}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "ndo_vflag", scope: !68, file: !63, line: 11, baseType: !9, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "ndo_snapend", scope: !68, file: !63, line: 12, baseType: !72, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !63, line: 7, baseType: !14)
!75 = !DILocalVariable(name: "ndo", arg: 1, scope: !62, file: !63, line: 53, type: !66)
!76 = !DILocation(line: 53, column: 41, scope: !62)
!77 = !DILocalVariable(name: "dat", arg: 2, scope: !62, file: !63, line: 53, type: !72)
!78 = !DILocation(line: 53, column: 60, scope: !62)
!79 = !DILocalVariable(name: "length", arg: 3, scope: !62, file: !63, line: 53, type: !9)
!80 = !DILocation(line: 53, column: 69, scope: !62)
!81 = !DILocation(line: 54, column: 24, scope: !62)
!82 = !DILocation(line: 54, column: 5, scope: !62)
!83 = !DILocation(line: 56, column: 5, scope: !62)
!84 = !DILocation(line: 57, column: 1, scope: !62)
!85 = distinct !DISubprogram(name: "decode_clnp_prefix", scope: !63, file: !63, line: 23, type: !86, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !16, retainedNodes: !38)
!86 = !DISubroutineType(types: !87)
!87 = !{!9, !66, !72, !88, !90}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !63, line: 8, baseType: !91)
!91 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!92 = !DILocalVariable(name: "ndo", arg: 1, scope: !85, file: !63, line: 23, type: !66)
!93 = !DILocation(line: 23, column: 51, scope: !85)
!94 = !DILocalVariable(name: "pptr", arg: 2, scope: !85, file: !63, line: 24, type: !72)
!95 = !DILocation(line: 24, column: 34, scope: !85)
!96 = !DILocalVariable(name: "buf", arg: 3, scope: !85, file: !63, line: 24, type: !88)
!97 = !DILocation(line: 24, column: 46, scope: !85)
!98 = !DILocalVariable(name: "buflen", arg: 4, scope: !85, file: !63, line: 24, type: !90)
!99 = !DILocation(line: 24, column: 57, scope: !85)
!100 = !DILocation(line: 26, column: 5, scope: !85)
!101 = !DILocalVariable(name: "addr", scope: !85, file: !63, line: 27, type: !102)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 152, elements: !107)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !104, line: 24, baseType: !105)
!104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !106, line: 38, baseType: !14)
!106 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!107 = !{!108}
!108 = !DISubrange(count: 19)
!109 = !DILocation(line: 27, column: 17, scope: !85)
!110 = !DILocalVariable(name: "plen", scope: !85, file: !63, line: 28, type: !90)
!111 = !DILocation(line: 28, column: 8, scope: !85)
!112 = !DILocation(line: 30, column: 11, scope: !113)
!113 = distinct !DILexicalBlock(scope: !85, file: !63, line: 30, column: 6)
!114 = !DILocation(line: 30, column: 8, scope: !113)
!115 = !DILocation(line: 30, column: 6, scope: !85)
!116 = !DILocation(line: 30, column: 22, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !63, line: 30, column: 20)
!118 = !DILocation(line: 31, column: 9, scope: !85)
!119 = !DILocation(line: 31, column: 7, scope: !85)
!120 = !DILocation(line: 33, column: 12, scope: !121)
!121 = distinct !DILexicalBlock(scope: !85, file: !63, line: 33, column: 6)
!122 = !DILocation(line: 33, column: 10, scope: !121)
!123 = !DILocation(line: 33, column: 6, scope: !85)
!124 = !DILocation(line: 34, column: 3, scope: !121)
!125 = !DILocation(line: 36, column: 2, scope: !85)
!126 = !DILocation(line: 37, column: 7, scope: !127)
!127 = distinct !DILexicalBlock(scope: !85, file: !63, line: 37, column: 6)
!128 = !DILocation(line: 37, column: 12, scope: !127)
!129 = !DILocation(line: 37, column: 17, scope: !127)
!130 = !DILocation(line: 37, column: 21, scope: !127)
!131 = !DILocation(line: 37, column: 6, scope: !85)
!132 = !DILocation(line: 38, column: 3, scope: !133)
!133 = distinct !DILexicalBlock(scope: !127, file: !63, line: 37, column: 26)
!134 = !DILocation(line: 38, column: 18, scope: !133)
!135 = !DILocation(line: 38, column: 28, scope: !133)
!136 = !DILocation(line: 38, column: 33, scope: !133)
!137 = !DILocation(line: 38, column: 38, scope: !133)
!138 = !DILocation(line: 38, column: 27, scope: !133)
!139 = !DILocation(line: 39, column: 2, scope: !133)
!140 = !DILocation(line: 40, column: 6, scope: !141)
!141 = distinct !DILexicalBlock(scope: !85, file: !63, line: 40, column: 6)
!142 = !DILocation(line: 40, column: 11, scope: !141)
!143 = !DILocation(line: 40, column: 6, scope: !85)
!144 = !DILocation(line: 41, column: 44, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !63, line: 40, column: 16)
!146 = !DILocation(line: 41, column: 49, scope: !145)
!147 = !DILocation(line: 41, column: 40, scope: !145)
!148 = !{!"True"}
!149 = !DILocation(line: 41, column: 55, scope: !145)
!150 = !DILocation(line: 41, column: 9, scope: !145)
!151 = !DILocation(line: 41, column: 14, scope: !145)
!152 = !DILocation(line: 41, column: 19, scope: !145)
!153 = !DILocation(line: 41, column: 23, scope: !145)
!154 = !DILocation(line: 41, column: 3, scope: !145)
!155 = !DILocation(line: 41, column: 28, scope: !145)
!156 = !DILocation(line: 42, column: 2, scope: !145)
!157 = !DILocation(line: 43, column: 11, scope: !85)
!158 = !DILocation(line: 43, column: 16, scope: !85)
!159 = !DILocation(line: 43, column: 48, scope: !85)
!160 = !DILocation(line: 43, column: 53, scope: !85)
!161 = !DILocation(line: 43, column: 59, scope: !85)
!162 = !DILocation(line: 43, column: 64, scope: !85)
!163 = !DILocation(line: 43, column: 69, scope: !85)
!164 = !DILocation(line: 43, column: 33, scope: !85)
!165 = !DILocation(line: 43, column: 75, scope: !85)
!166 = !DILocation(line: 43, column: 2, scope: !85)
!167 = !DILocation(line: 44, column: 2, scope: !85)
!168 = !DILocation(line: 45, column: 14, scope: !85)
!169 = !DILocation(line: 46, column: 1, scope: !85)
!170 = distinct !DISubprogram(name: "isonsap_string", scope: !63, file: !63, line: 19, type: !171, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !16, retainedNodes: !38)
!171 = !DISubroutineType(types: !172)
!172 = !{!173, !66, !175, !90}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!177 = !DILocalVariable(name: "ndo", arg: 1, scope: !170, file: !63, line: 19, type: !66)
!178 = !DILocation(line: 19, column: 55, scope: !170)
!179 = !DILocalVariable(name: "addr", arg: 2, scope: !170, file: !63, line: 19, type: !175)
!180 = !DILocation(line: 19, column: 75, scope: !170)
!181 = !DILocalVariable(name: "len", arg: 3, scope: !170, file: !63, line: 19, type: !90)
!182 = !DILocation(line: 19, column: 87, scope: !170)
!183 = !DILocation(line: 20, column: 11, scope: !170)
!184 = !DILocation(line: 20, column: 22, scope: !170)
!185 = !DILocation(line: 20, column: 34, scope: !170)
!186 = !DILocation(line: 20, column: 39, scope: !170)
!187 = distinct !DISubprogram(name: "bgp_update_print", scope: !63, file: !63, line: 59, type: !64, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !38)
!188 = !DILocalVariable(name: "ndo", arg: 1, scope: !187, file: !63, line: 59, type: !66)
!189 = !DILocation(line: 59, column: 43, scope: !187)
!190 = !DILocalVariable(name: "dat", arg: 2, scope: !187, file: !63, line: 59, type: !72)
!191 = !DILocation(line: 59, column: 62, scope: !187)
!192 = !DILocalVariable(name: "length", arg: 3, scope: !187, file: !63, line: 59, type: !9)
!193 = !DILocation(line: 59, column: 71, scope: !187)
!194 = !DILocation(line: 60, column: 20, scope: !187)
!195 = !DILocation(line: 60, column: 25, scope: !187)
!196 = !DILocation(line: 60, column: 30, scope: !187)
!197 = !DILocation(line: 60, column: 5, scope: !187)
!198 = !DILocation(line: 62, column: 5, scope: !187)
!199 = !DILocation(line: 63, column: 1, scope: !187)
!200 = distinct !DISubprogram(name: "bgp_header_print", scope: !63, file: !63, line: 65, type: !64, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !38)
!201 = !DILocalVariable(name: "ndo", arg: 1, scope: !200, file: !63, line: 65, type: !66)
!202 = !DILocation(line: 65, column: 43, scope: !200)
!203 = !DILocalVariable(name: "dat", arg: 2, scope: !200, file: !63, line: 65, type: !72)
!204 = !DILocation(line: 65, column: 62, scope: !200)
!205 = !DILocalVariable(name: "length", arg: 3, scope: !200, file: !63, line: 65, type: !9)
!206 = !DILocation(line: 65, column: 71, scope: !200)
!207 = !DILocation(line: 66, column: 22, scope: !200)
!208 = !DILocation(line: 66, column: 27, scope: !200)
!209 = !DILocation(line: 66, column: 32, scope: !200)
!210 = !DILocation(line: 66, column: 5, scope: !200)
!211 = !DILocation(line: 68, column: 5, scope: !200)
!212 = !DILocation(line: 69, column: 1, scope: !200)
!213 = distinct !DISubprogram(name: "bgp_print", scope: !63, file: !63, line: 72, type: !64, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !38)
!214 = !DILocalVariable(name: "ndo", arg: 1, scope: !213, file: !63, line: 72, type: !66)
!215 = !DILocation(line: 72, column: 36, scope: !213)
!216 = !DILocalVariable(name: "dat", arg: 2, scope: !213, file: !63, line: 72, type: !72)
!217 = !DILocation(line: 72, column: 55, scope: !213)
!218 = !DILocalVariable(name: "length", arg: 3, scope: !213, file: !63, line: 72, type: !9)
!219 = !DILocation(line: 72, column: 64, scope: !213)
!220 = !DILocation(line: 73, column: 22, scope: !213)
!221 = !DILocation(line: 73, column: 27, scope: !213)
!222 = !DILocation(line: 73, column: 32, scope: !213)
!223 = !DILocation(line: 73, column: 5, scope: !213)
!224 = !DILocation(line: 75, column: 5, scope: !213)
!225 = !DILocalVariable(name: "buf", scope: !213, file: !63, line: 76, type: !226)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 512, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 64)
!229 = !DILocation(line: 76, column: 10, scope: !213)
!230 = !DILocation(line: 77, column: 11, scope: !213)
!231 = !DILocation(line: 78, column: 24, scope: !213)
!232 = !DILocation(line: 78, column: 29, scope: !213)
!233 = !DILocation(line: 78, column: 34, scope: !213)
!234 = !DILocation(line: 78, column: 5, scope: !213)
!235 = !DILocation(line: 79, column: 1, scope: !213)
!236 = distinct !DISubprogram(name: "memcpy", scope: !237, file: !237, line: 12, type: !238, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !38)
!237 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/opt/tools/klee", checksumkind: CSK_MD5, checksum: "8fb9a7164e167db005d7d002570068bc")
!238 = !DISubroutineType(types: !239)
!239 = !{!240, !240, !241, !243}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !244, line: 46, baseType: !245)
!244 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!245 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!246 = !DILocalVariable(name: "destaddr", arg: 1, scope: !236, file: !237, line: 12, type: !240)
!247 = !DILocation(line: 0, scope: !236)
!248 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !236, file: !237, line: 12, type: !241)
!249 = !DILocalVariable(name: "len", arg: 3, scope: !236, file: !237, line: 12, type: !243)
!250 = !DILocalVariable(name: "dest", scope: !236, file: !237, line: 13, type: !88)
!251 = !DILocalVariable(name: "src", scope: !236, file: !237, line: 14, type: !173)
!252 = !DILocation(line: 16, column: 16, scope: !236)
!253 = !DILocation(line: 16, column: 3, scope: !236)
!254 = !DILocation(line: 16, column: 13, scope: !236)
!255 = !DILocation(line: 17, column: 19, scope: !236)
!256 = !DILocation(line: 17, column: 15, scope: !236)
!257 = !DILocation(line: 17, column: 10, scope: !236)
!258 = !DILocation(line: 17, column: 13, scope: !236)
!259 = distinct !{!259, !253, !255, !260}
!260 = !{!"llvm.loop.mustprogress"}
!261 = !DILocation(line: 18, column: 3, scope: !236)
!262 = distinct !DISubprogram(name: "memset", scope: !263, file: !263, line: 12, type: !264, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !38)
!263 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/opt/tools/klee", checksumkind: CSK_MD5, checksum: "72c61b3d8150747c019c191df9708e2b")
!264 = !DISubroutineType(types: !265)
!265 = !{!240, !240, !9, !243}
!266 = !DILocalVariable(name: "dst", arg: 1, scope: !262, file: !263, line: 12, type: !240)
!267 = !DILocation(line: 0, scope: !262)
!268 = !DILocalVariable(name: "s", arg: 2, scope: !262, file: !263, line: 12, type: !9)
!269 = !DILocalVariable(name: "count", arg: 3, scope: !262, file: !263, line: 12, type: !243)
!270 = !DILocalVariable(name: "a", scope: !262, file: !263, line: 13, type: !88)
!271 = !DILocation(line: 14, column: 18, scope: !262)
!272 = !DILocation(line: 14, column: 3, scope: !262)
!273 = !DILocation(line: 14, column: 15, scope: !262)
!274 = !DILocation(line: 15, column: 7, scope: !262)
!275 = !DILocation(line: 15, column: 10, scope: !262)
!276 = distinct !{!276, !272, !277, !260}
!277 = !DILocation(line: 15, column: 12, scope: !262)
!278 = !DILocation(line: 16, column: 3, scope: !262)
!279 = distinct !DISubprogram(name: "klee_overshift_check", scope: !280, file: !280, line: 20, type: !281, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !38)
!280 = !DIFile(filename: "runtime/Intrinsic/klee_overshift_check.c", directory: "/opt/tools/klee", checksumkind: CSK_MD5, checksum: "5666ed772284910b5d0f856859e4d123")
!281 = !DISubroutineType(types: !282)
!282 = !{null, !283, !283}
!283 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!284 = !DILocalVariable(name: "bitWidth", arg: 1, scope: !279, file: !280, line: 20, type: !283)
!285 = !DILocation(line: 0, scope: !279)
!286 = !DILocalVariable(name: "shift", arg: 2, scope: !279, file: !280, line: 20, type: !283)
!287 = !DILocation(line: 29, column: 1, scope: !279)
