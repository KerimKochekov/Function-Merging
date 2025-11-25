; ModuleID = 'build/_main_._all_._files_._linked_.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%class.wayobj = type <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, float, %struct.createwaymnginfot, %struct.createwayinfot, [4 x i8], i16*, %struct.waymapcellt*, i32*, i32*, i32, i32, i8, [3 x i8], i32, i16, i16, [4 x i8] }>
%struct.createwaymnginfot = type { float, float, float, float, i32, i32, float, float }
%struct.createwayinfot = type <{ %class.rvectort, %class.rvectort, i8, [3 x i8] }>
%class.rvectort = type { float, float, float }
%struct.waymapcellt = type { i16, i16 }
%class.way2obj = type { i8*, %struct.waymapcellt*, i16, [256 x i8], [256 x %class.flexarray.4], i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %union.anon, %union.anon, i32, i32 }
%class.flexarray.4 = type { %struct.pointt*, i32, i32 }
%struct.pointt = type { i32, i32 }
%union.anon = type { i32 }
%class.regmngobj = type { i16*, i16, i32, i32, i8, i32, %class.regobj**, i8*, [256 x i8], i32, i32, float, i32, i32, %union.anon, %union.anon, i32, i32, %class.largesolidarray }
%class.regobj = type { i32, i8, i8, %class.regmngobj*, i32, %struct.pointt, i32, i32, i32, %class.flexarray }
%class.flexarray = type { %class.regobj**, i32, i32 }
%class.largesolidarray = type { %class.regobj**, %class.flexstack, %class.flexstack, %class.flexstack, i32, i32 }
%class.flexstack = type { i32*, i32, i32 }
%class.regwayobj = type { i32 (...)**, %class.flexarray, %class.flexarray, i32, i32, %class.regmngobj*, i8, %class.regobj*, %class.regobj* }
%struct.anon = type { i8, i8, i8, i8 }
%class.regboundobj = type <{ %class.flexarray.4, %class.flexarray.4, i8, [3 x i8], i32, %class.regobj*, i32, i32, i32, i32, %class.regobj**, i8*, i32, i32, i32, i32, %class.regmngobj*, i8, [7 x i8] }>
%struct.statinfot = type { double, double, double, double, double, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.workinfot = type { [4096 x i8], i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.levelplacet = type { i16, i16, float, float, float }
%struct.wayinfot = type { i8, %class.rvectort*, i32, i8 }

$_ZN15largesolidarrayIP6regobjE6createEi = comdat any

$_ZN15largesolidarrayIP6regobjE8doublingEv = comdat any

$_ZN9flexarrayIiE8doublingEb = comdat any

$_ZN15largesolidarrayIP6regobjE6removeEi = comdat any

$_ZN9flexarrayIP6regobjE8doublingEb = comdat any

$_ZN9flexarrayI6pointtE8doublingEb = comdat any

@.str = private unnamed_addr constant [23 x i8] c"Error in createregions\00", align 1
@way = dso_local global %class.wayobj zeroinitializer, align 8
@way2 = dso_local global %class.way2obj zeroinitializer, align 8
@regmng = dso_local global %class.regmngobj zeroinitializer, align 8
@regway = dso_local global %class.regwayobj { i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV9regwayobj, i32 0, inrange i32 0, i32 2) to i32 (...)**), %class.flexarray zeroinitializer, %class.flexarray zeroinitializer, i32 0, i32 0, %class.regmngobj* null, i8 0, %class.regobj* null, %class.regobj* null }, align 8
@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer
@.str.9 = private unnamed_addr constant [33 x i8] c"Create regional map time : %.0f\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Create ways time : %.0f\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Ways quantity : %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Total way length : %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Create reg ways time : %.0f\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Reg ways quantity : %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Total reg way length : %ld\0A\00", align 1
@.str.9.10 = private unnamed_addr constant [31 x i8] c"Create river ways time : %.0f\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"River ways quantity : %ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Total river way length : %ld\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Create land ways time : %.0f\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Land ways quantity : %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Total land way length : %ld\0A\00", align 1
@str = private unnamed_addr constant [27 x i8] c"Small Path Finding Library\00", align 1
@str.26 = private unnamed_addr constant [24 x i8] c"Read configuration file\00", align 1
@str.31 = private unnamed_addr constant [36 x i8] c"Cannot read configuration file name\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@str.27 = private unnamed_addr constant [31 x i8] c"Cannot read configuration file\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@str.29 = private unnamed_addr constant [12 x i8] c"Create ways\00", align 1
@str.30 = private unnamed_addr constant [11 x i8] c"Random map\00", align 1
@_ZL5y1rnd = internal unnamed_addr global i32 1023, align 4
@_ZL5y2rnd = internal unnamed_addr global i32 11, align 4
@_ZL5y3rnd = internal unnamed_addr global i32 3007, align 4
@_ZN6regobj9bound1arpE = dso_local global %class.flexarray.4 zeroinitializer, align 8
@_ZN6regobj9bound2arpE = dso_local global %class.flexarray.4 zeroinitializer, align 8
@_ZN6regobj6boundlE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN6regobj5floddE = dso_local local_unnamed_addr global i8 0, align 4
@_ZTV9regwayobj = dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI9regwayobj to i8*), i8* bitcast (i1 (%class.regwayobj*, %class.regobj*, %class.regobj*)* @_ZN9regwayobj12isaddtoboundEP6regobjS1_ to i8*), i8* bitcast (void (%class.regwayobj*, %class.regmngobj*)* @_ZN9regwayobj6createEP9regmngobj to i8*), i8* bitcast (void (%class.regwayobj*)* @_ZN9regwayobj7destroyEv to i8*)] }, align 8
@_ZTI9regwayobj = dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @_ZTS9regwayobj, i32 0, i32 0) }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTS9regwayobj = dso_local constant [11 x i8] c"9regwayobj\00", align 1

; Function Attrs: optsize
define dso_local void @_ZN9regmngobj6createEv(%class.regmngobj* %this) local_unnamed_addr #0 align 2 {
entry:
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18
  tail call void @_ZN15largesolidarrayIP6regobjE6createEi(%class.largesolidarray* nonnull %rarp, i32 16) #19
  %regionmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 6
  %mmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 0
  store i16* null, i16** %mmapp, align 8, !tbaa !2
  %regfillnum = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 5
  store i32 0, i32* %regfillnum, align 8, !tbaa !14
  %0 = bitcast %class.regobj*** %regionmapp to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
define linkonce_odr dso_local void @_ZN15largesolidarrayIP6regobjE6createEi(%class.largesolidarray* %this, i32 %maxelemquin) local_unnamed_addr #0 comdat align 2 {
entry:
  %maxelemqu = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 5
  store i32 %maxelemquin, i32* %maxelemqu, align 4, !tbaa !15
  %elemqu = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 4
  store i32 0, i32* %elemqu, align 8, !tbaa !16
  %conv = sext i32 %maxelemquin to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias i8* @malloc(i64 %mul) #20
  %0 = bitcast %class.largesolidarray* %this to i8**
  store i8* %call, i8** %0, align 8, !tbaa !17
  %dccellar = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 2
  %maxelemqu.i = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 2, i32 2
  store i32 %maxelemquin, i32* %maxelemqu.i, align 4, !tbaa !18
  %elemqu.i = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 2, i32 1
  store i32 0, i32* %elemqu.i, align 8, !tbaa !19
  %mul.i = shl i32 %maxelemquin, 2
  %conv.i.i = sext i32 %mul.i to i64
  %call.i.i = tail call noalias i8* @malloc(i64 %conv.i.i) #20
  %1 = bitcast %class.flexstack* %dccellar to i8**
  store i8* %call.i.i, i8** %1, align 8, !tbaa !20
  %rccellar = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 3
  %maxelemqu.i11 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 3, i32 2
  store i32 %maxelemquin, i32* %maxelemqu.i11, align 4, !tbaa !18
  %elemqu.i12 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 3, i32 1
  store i32 0, i32* %elemqu.i12, align 8, !tbaa !19
  %call.i.i15 = tail call noalias i8* @malloc(i64 %conv.i.i) #20
  %2 = bitcast %class.flexstack* %rccellar to i8**
  store i8* %call.i.i15, i8** %2, align 8, !tbaa !20
  %freecellholder = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 1
  %maxelemqu.i16 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 1, i32 2
  store i32 %maxelemquin, i32* %maxelemqu.i16, align 4, !tbaa !21
  %elemqu.i17 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 1, i32 1
  store i32 0, i32* %elemqu.i17, align 8, !tbaa !22
  %mul.i18 = shl nsw i64 %conv, 2
  %call.i = tail call noalias i8* @malloc(i64 %mul.i18) #20
  %3 = bitcast %class.flexstack* %freecellholder to i8**
  store i8* %call.i, i8** %3, align 8, !tbaa !23
  %cmp23 = icmp sgt i32 %maxelemquin, 0
  br i1 %cmp23, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %4 = bitcast i8* %call.i to i32*
  br label %for.body

for.body:                                         ; preds = %_ZN9flexstackIiE3putEi.exit.for.body_crit_edge, %for.body.lr.ph
  %5 = phi i8* [ %call.i, %for.body.lr.ph ], [ %9, %_ZN9flexstackIiE3putEi.exit.for.body_crit_edge ]
  %.pre.i = phi i32* [ %4, %for.body.lr.ph ], [ %.pre.i26, %_ZN9flexstackIiE3putEi.exit.for.body_crit_edge ]
  %6 = phi i32 [ %maxelemquin, %for.body.lr.ph ], [ %.pre, %_ZN9flexstackIiE3putEi.exit.for.body_crit_edge ]
  %7 = phi i32 [ 0, %for.body.lr.ph ], [ %inc.i, %_ZN9flexstackIiE3putEi.exit.for.body_crit_edge ]
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %_ZN9flexstackIiE3putEi.exit.for.body_crit_edge ]
  %cmp.i = icmp eq i32 %7, %6
  br i1 %cmp.i, label %if.then.i, label %_ZN9flexstackIiE3putEi.exit

if.then.i:                                        ; preds = %for.body
  %shl.i.i = shl i32 %6, 1
  %conv.i.i21 = sext i32 %shl.i.i to i64
  %mul.i.i = shl nsw i64 %conv.i.i21, 2
  %call.i.i22 = tail call noalias i8* @malloc(i64 %mul.i.i) #20
  %conv3.i.i = sext i32 %6 to i64
  %mul4.i.i = shl nsw i64 %conv3.i.i, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %call.i.i22, i8* align 4 %5, i64 %mul4.i.i, i1 false) #21
  tail call void @free(i8* %5) #20
  store i8* %call.i.i22, i8** %3, align 8, !tbaa !23
  store i32 %shl.i.i, i32* %maxelemqu.i16, align 4, !tbaa !21
  %8 = bitcast i8* %call.i.i22 to i32*
  %.pre4.i = load i32, i32* %elemqu.i17, align 8, !tbaa !22
  br label %_ZN9flexstackIiE3putEi.exit

_ZN9flexstackIiE3putEi.exit:                      ; preds = %for.body, %if.then.i
  %9 = phi i8* [ %call.i.i22, %if.then.i ], [ %5, %for.body ]
  %.pre.i26 = phi i32* [ %8, %if.then.i ], [ %.pre.i, %for.body ]
  %10 = phi i32 [ %.pre4.i, %if.then.i ], [ %7, %for.body ]
  %idxprom.i = sext i32 %10 to i64
  %arrayidx.i = getelementptr inbounds i32, i32* %.pre.i26, i64 %idxprom.i
  store i32 %i.024, i32* %arrayidx.i, align 4, !tbaa !24
  %11 = load i32, i32* %elemqu.i17, align 8, !tbaa !22
  %inc.i = add nsw i32 %11, 1
  store i32 %inc.i, i32* %elemqu.i17, align 8, !tbaa !22
  %inc = add nuw nsw i32 %i.024, 1
  %12 = load i32, i32* %maxelemqu, align 4, !tbaa !15
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %_ZN9flexstackIiE3putEi.exit.for.body_crit_edge, label %for.end

_ZN9flexstackIiE3putEi.exit.for.body_crit_edge:   ; preds = %_ZN9flexstackIiE3putEi.exit
  %.pre = load i32, i32* %maxelemqu.i16, align 4, !tbaa !21
  br label %for.body

for.end:                                          ; preds = %_ZN9flexstackIiE3putEi.exit, %entry
  ret void
}

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nofree nounwind optsize
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind optsize
declare dso_local void @free(i8* nocapture) local_unnamed_addr #4

; Function Attrs: optsize
define dso_local void @_ZN9regmngobj7destroyEv(%class.regmngobj* nocapture %this) local_unnamed_addr #0 align 2 {
entry:
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18
  %elemqu = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 4
  %0 = load i32, i32* %elemqu, align 8, !tbaa !25
  %cmp16 = icmp sgt i32 %0, 0
  br i1 %cmp16, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ep.i = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %1 = load %class.regobj**, %class.regobj*** %ep.i, align 8, !tbaa !17
  %arrayidx.i = getelementptr inbounds %class.regobj*, %class.regobj** %1, i64 %indvars.iv
  %2 = load %class.regobj*, %class.regobj** %arrayidx.i, align 8, !tbaa !26
  tail call void @_ZN6regobj7destroyEv(%class.regobj* %2) #19
  %3 = load %class.regobj**, %class.regobj*** %ep.i, align 8, !tbaa !17
  %arrayidx.i15 = getelementptr inbounds %class.regobj*, %class.regobj** %3, i64 %indvars.iv
  %4 = load %class.regobj*, %class.regobj** %arrayidx.i15, align 8, !tbaa !26
  %isnull = icmp eq %class.regobj* %4, null
  br i1 %isnull, label %for.inc, label %delete.notnull

delete.notnull:                                   ; preds = %for.body
  %5 = bitcast %class.regobj* %4 to i8*
  tail call void @_ZdlPv(i8* %5) #22
  br label %for.inc

for.inc:                                          ; preds = %for.body, %delete.notnull
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = load i32, i32* %elemqu, align 8, !tbaa !25
  %7 = sext i32 %6 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %7
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  %rccellar.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 3
  %8 = bitcast %class.flexstack* %rccellar.i to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !20
  tail call void @free(i8* %9) #20
  %dccellar.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 2
  %10 = bitcast %class.flexstack* %dccellar.i to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !20
  tail call void @free(i8* %11) #20
  %freecellholder.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 1
  %12 = bitcast %class.flexstack* %freecellholder.i to i8**
  %13 = load i8*, i8** %12, align 8, !tbaa !23
  tail call void @free(i8* %13) #20
  %14 = bitcast %class.largesolidarray* %rarp to i8**
  %15 = load i8*, i8** %14, align 8, !tbaa !17
  tail call void @free(i8* %15) #20
  %regionmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 6
  %16 = bitcast %class.regobj*** %regionmapp to i8**
  %17 = load i8*, i8** %16, align 8, !tbaa !27
  tail call void @free(i8* %17) #20
  store %class.regobj** null, %class.regobj*** %regionmapp, align 8, !tbaa !27
  %landscapemapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 7
  %18 = load i8*, i8** %landscapemapp, align 8, !tbaa !28
  tail call void @free(i8* %18) #20
  store i8* null, i8** %landscapemapp, align 8, !tbaa !28
  %mmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 0
  %19 = bitcast %class.regmngobj* %this to i8**
  %20 = load i8*, i8** %19, align 8, !tbaa !2
  tail call void @free(i8* %20) #20
  store i16* null, i16** %mmapp, align 8, !tbaa !2
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare dso_local void @_ZdlPv(i8*) local_unnamed_addr #5

; Function Attrs: optsize
define dso_local i1 @_ZN9regmngobj7loadmapEPKc(%class.regmngobj* nocapture %this, i8* nocapture readonly %fn) local_unnamed_addr #0 align 2 {
entry:
  %call = tail call i32 (i8*, i32, ...) @open(i8* %fn, i32 0) #19
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %xRunion = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 14
  %xRstruc = bitcast %union.anon* %xRunion to %struct.anon*
  %xR1 = bitcast %union.anon* %xRunion to i8*
  %call2 = tail call i64 @read(i32 %call, i8* nonnull %xR1, i64 1) #19
  %xR2 = getelementptr inbounds %struct.anon, %struct.anon* %xRstruc, i64 0, i32 1
  %call5 = tail call i64 @read(i32 %call, i8* nonnull %xR2, i64 1) #19
  %xR3 = getelementptr inbounds %struct.anon, %struct.anon* %xRstruc, i64 0, i32 2
  %call8 = tail call i64 @read(i32 %call, i8* nonnull %xR3, i64 1) #19
  %xR4 = getelementptr inbounds %struct.anon, %struct.anon* %xRstruc, i64 0, i32 3
  %call11 = tail call i64 @read(i32 %call, i8* nonnull %xR4, i64 1) #19
  %yRunion = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 15
  %yRstruc = bitcast %union.anon* %yRunion to %struct.anon*
  %yR1 = bitcast %union.anon* %yRunion to i8*
  %call12 = tail call i64 @read(i32 %call, i8* nonnull %yR1, i64 1) #19
  %yR2 = getelementptr inbounds %struct.anon, %struct.anon* %yRstruc, i64 0, i32 1
  %call15 = tail call i64 @read(i32 %call, i8* nonnull %yR2, i64 1) #19
  %yR3 = getelementptr inbounds %struct.anon, %struct.anon* %yRstruc, i64 0, i32 2
  %call18 = tail call i64 @read(i32 %call, i8* nonnull %yR3, i64 1) #19
  %yR4 = getelementptr inbounds %struct.anon, %struct.anon* %yRstruc, i64 0, i32 3
  %call21 = tail call i64 @read(i32 %call, i8* nonnull %yR4, i64 1) #19
  %xRmapsizex = getelementptr %union.anon, %union.anon* %xRunion, i64 0, i32 0
  %0 = load i32, i32* %xRmapsizex, align 4, !tbaa !29
  %mapsizex = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 16
  store i32 %0, i32* %mapsizex, align 4, !tbaa !30
  %yRmapsizey = getelementptr %union.anon, %union.anon* %yRunion, i64 0, i32 0
  %1 = load i32, i32* %yRmapsizey, align 8, !tbaa !29
  %mapsizey = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 17
  store i32 %1, i32* %mapsizey, align 8, !tbaa !31
  %sub = add nsw i32 %0, -1
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 12
  store i32 %sub, i32* %mapmaxx, align 4, !tbaa !32
  %sub26 = add nsw i32 %1, -1
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 13
  store i32 %sub26, i32* %mapmaxy, align 8, !tbaa !33
  %mul = mul nsw i32 %1, %0
  %conv = sext i32 %mul to i64
  %mul29 = shl nsw i64 %conv, 3
  %call30 = tail call noalias i8* @malloc(i64 %mul29) #20
  %regionmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 6
  %2 = bitcast %class.regobj*** %regionmapp to i8**
  store i8* %call30, i8** %2, align 8, !tbaa !27
  %call36 = tail call noalias i8* @malloc(i64 %conv) #20
  %landscapemapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 7
  store i8* %call36, i8** %landscapemapp, align 8, !tbaa !28
  %mul41 = shl nsw i64 %conv, 1
  %call42 = tail call noalias i8* @malloc(i64 %mul41) #20
  %3 = bitcast %class.regmngobj* %this to i8**
  store i8* %call42, i8** %3, align 8, !tbaa !2
  tail call void @llvm.memset.p0i8.i64(i8* align 2 %call42, i8 0, i64 %mul41, i1 false)
  %fillnum = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 1
  store i16 0, i16* %fillnum, align 8, !tbaa !34
  %call55 = tail call i64 @read(i32 %call, i8* %call36, i64 %conv) #19
  %scevgep = getelementptr %class.regmngobj, %class.regmngobj* %this, i64 0, i32 8, i64 0
  %4 = getelementptr %class.regmngobj, %class.regmngobj* %this, i64 0, i32 8, i64 1
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 dereferenceable(256) %4, i8 0, i64 255, i1 false)
  store i8 1, i8* %scevgep, align 8, !tbaa !35
  %call59 = tail call i32 @close(i32 %call) #19
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i1 [ true, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: nofree optsize
declare dso_local i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #6

; Function Attrs: nofree optsize
declare dso_local i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: optsize
declare dso_local i32 @close(i32) local_unnamed_addr #7

; Function Attrs: nounwind optsize
define dso_local i1 @_ZN9regmngobj7initmapEii(%class.regmngobj* nocapture %this, i32 %mapsizexin, i32 %mapsizeyin) local_unnamed_addr #8 align 2 {
entry:
  %mapsizex = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 16
  store i32 %mapsizexin, i32* %mapsizex, align 4, !tbaa !30
  %mapsizey = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 17
  store i32 %mapsizeyin, i32* %mapsizey, align 8, !tbaa !31
  %sub = add nsw i32 %mapsizexin, -1
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 12
  store i32 %sub, i32* %mapmaxx, align 4, !tbaa !32
  %sub4 = add nsw i32 %mapsizeyin, -1
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 13
  store i32 %sub4, i32* %mapmaxy, align 8, !tbaa !33
  %mul = mul nsw i32 %mapsizeyin, %mapsizexin
  %conv = sext i32 %mul to i64
  %mul7 = shl nsw i64 %conv, 3
  %call = tail call noalias i8* @malloc(i64 %mul7) #20
  %regionmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 6
  %0 = bitcast %class.regobj*** %regionmapp to i8**
  store i8* %call, i8** %0, align 8, !tbaa !27
  %call13 = tail call noalias i8* @malloc(i64 %conv) #20
  %landscapemapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 7
  store i8* %call13, i8** %landscapemapp, align 8, !tbaa !28
  %mul18 = shl nsw i64 %conv, 1
  %call19 = tail call noalias i8* @malloc(i64 %mul18) #20
  %1 = bitcast %class.regmngobj* %this to i8**
  store i8* %call19, i8** %1, align 8, !tbaa !2
  tail call void @llvm.memset.p0i8.i64(i8* align 2 %call19, i8 0, i64 %mul18, i1 false)
  %fillnum = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 1
  store i16 0, i16* %fillnum, align 8, !tbaa !34
  %scevgep = getelementptr %class.regmngobj, %class.regmngobj* %this, i64 0, i32 8, i64 0
  %2 = getelementptr %class.regmngobj, %class.regmngobj* %this, i64 0, i32 8, i64 1
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 dereferenceable(256) %2, i8 0, i64 255, i1 false)
  store i8 1, i8* %scevgep, align 8, !tbaa !35
  ret i1 true
}

; Function Attrs: nofree norecurse nounwind optsize
define dso_local void @_ZN9regmngobj17foundemptyregionsEv(%class.regmngobj* nocapture readonly %this) local_unnamed_addr #9 align 2 {
entry:
  %elemqu = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 4
  %0 = load i32, i32* %elemqu, align 8, !tbaa !25
  %cmp13 = icmp sgt i32 %0, 0
  br i1 %cmp13, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ep.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 0
  %1 = load %class.regobj**, %class.regobj*** %ep.i, align 8, !tbaa !17
  %2 = zext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx.i = getelementptr inbounds %class.regobj*, %class.regobj** %1, i64 %indvars.iv
  %3 = load %class.regobj*, %class.regobj** %arrayidx.i, align 8, !tbaa !26
  %square = getelementptr inbounds %class.regobj, %class.regobj* %3, i64 0, i32 4
  %4 = load i32, i32* %square, align 8, !tbaa !36
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %flexist = getelementptr inbounds %class.regobj, %class.regobj* %3, i64 0, i32 1
  store i8 0, i8* %flexist, align 4, !tbaa !40
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp = icmp ult i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: optsize
define dso_local %class.regobj* @_ZN9regmngobj9newregionEii(%class.regmngobj* %this, i32 %x0, i32 %y0) local_unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
invoke.cont:
  %call = tail call dereferenceable(56) i8* @_Znwm(i64 56) #23
  %regmngp.i = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %regmngp.i to %class.regmngobj**
  store %class.regmngobj* %this, %class.regmngobj** %0, align 8, !tbaa !41
  %1 = ptrtoint i8* %call to i64
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18
  %elemqu.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 4
  %2 = load i32, i32* %elemqu.i, align 8, !tbaa !16
  %maxelemqu.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 5
  %3 = load i32, i32* %maxelemqu.i, align 4, !tbaa !15
  %cmp.i = icmp eq i32 %2, %3
  br i1 %cmp.i, label %if.then.i, label %_ZN15largesolidarrayIP6regobjE3addERKS1_.exit

if.then.i:                                        ; preds = %invoke.cont
  tail call void @_ZN15largesolidarrayIP6regobjE8doublingEv(%class.largesolidarray* nonnull %rarp) #19
  %.pre.i = load i32, i32* %elemqu.i, align 8, !tbaa !16
  br label %_ZN15largesolidarrayIP6regobjE3addERKS1_.exit

_ZN15largesolidarrayIP6regobjE3addERKS1_.exit:    ; preds = %invoke.cont, %if.then.i
  %4 = phi i32 [ %.pre.i, %if.then.i ], [ %2, %invoke.cont ]
  %ep.i = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i64 0, i32 0
  %5 = load %class.regobj**, %class.regobj*** %ep.i, align 8, !tbaa !17
  %idxprom.i = sext i32 %4 to i64
  %arrayidx.i = getelementptr inbounds %class.regobj*, %class.regobj** %5, i64 %idxprom.i
  %6 = bitcast %class.regobj** %arrayidx.i to i64*
  store i64 %1, i64* %6, align 8, !tbaa !26
  %elemqu.i.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 1, i32 1
  %7 = load i32, i32* %elemqu.i.i, align 8, !tbaa !22
  %dec.i.i = add nsw i32 %7, -1
  store i32 %dec.i.i, i32* %elemqu.i.i, align 8, !tbaa !22
  %ep.i.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 1, i32 0
  %8 = load i32*, i32** %ep.i.i, align 8, !tbaa !23
  %idxprom.i.i = sext i32 %dec.i.i to i64
  %arrayidx.i.i = getelementptr inbounds i32, i32* %8, i64 %idxprom.i.i
  %9 = load i32, i32* %arrayidx.i.i, align 4, !tbaa !24
  %ep4.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 2, i32 0
  %10 = load i32*, i32** %ep4.i, align 8, !tbaa !42
  %idxprom5.i = sext i32 %9 to i64
  %arrayidx6.i = getelementptr inbounds i32, i32* %10, i64 %idxprom5.i
  store i32 %4, i32* %arrayidx6.i, align 4, !tbaa !24
  %ep7.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 3, i32 0
  %11 = load i32*, i32** %ep7.i, align 8, !tbaa !43
  %12 = load i32, i32* %elemqu.i, align 8, !tbaa !16
  %idxprom9.i = sext i32 %12 to i64
  %arrayidx10.i = getelementptr inbounds i32, i32* %11, i64 %idxprom9.i
  store i32 %9, i32* %arrayidx10.i, align 4, !tbaa !24
  %13 = load i32, i32* %elemqu.i, align 8, !tbaa !16
  %inc.i = add nsw i32 %13, 1
  store i32 %inc.i, i32* %elemqu.i, align 8, !tbaa !16
  %14 = bitcast i8* %call to %class.regobj*
  %internalnum = bitcast i8* %call to i32*
  store i32 %9, i32* %internalnum, align 8, !tbaa !44
  tail call void @_ZN6regobj6createEii(%class.regobj* nonnull %14, i32 %x0, i32 %y0) #19
  ret %class.regobj* %14
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nofree optsize
declare dso_local noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #10

; Function Attrs: optsize
define linkonce_odr dso_local void @_ZN15largesolidarrayIP6regobjE8doublingEv(%class.largesolidarray* %this) local_unnamed_addr #0 comdat align 2 {
entry:
  %maxelemqu = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 5
  %0 = load i32, i32* %maxelemqu, align 4, !tbaa !15
  %shl = shl i32 %0, 1
  %conv = sext i32 %shl to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias i8* @malloc(i64 %mul) #20
  %1 = bitcast %class.largesolidarray* %this to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !17
  %conv3 = sext i32 %0 to i64
  %mul4 = shl nsw i64 %conv3, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %call, i8* align 8 %2, i64 %mul4, i1 false)
  tail call void @free(i8* %2) #20
  store i8* %call, i8** %1, align 8, !tbaa !17
  %dccellar = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 2
  tail call void @_ZN9flexarrayIiE8doublingEb(%class.flexstack* nonnull %dccellar, i1 true) #19
  %rccellar = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 3
  tail call void @_ZN9flexarrayIiE8doublingEb(%class.flexstack* nonnull %rccellar, i1 true) #19
  %3 = load i32, i32* %maxelemqu, align 4, !tbaa !15
  %cmp17 = icmp slt i32 %3, %shl
  br i1 %cmp17, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %freecellholder = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 1
  %elemqu.i = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 1, i32 1
  %maxelemqu.i = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 1, i32 2
  %ep.phi.trans.insert.i = getelementptr inbounds %class.flexstack, %class.flexstack* %freecellholder, i64 0, i32 0
  %4 = bitcast %class.flexstack* %freecellholder to i8**
  %.pre = load i32, i32* %elemqu.i, align 8, !tbaa !22
  br label %for.body

for.body:                                         ; preds = %_ZN9flexstackIiE3putEi.exit, %for.body.lr.ph
  %5 = phi i32 [ %.pre, %for.body.lr.ph ], [ %inc.i, %_ZN9flexstackIiE3putEi.exit ]
  %i.018 = phi i32 [ %3, %for.body.lr.ph ], [ %inc, %_ZN9flexstackIiE3putEi.exit ]
  %6 = load i32, i32* %maxelemqu.i, align 4, !tbaa !21
  %cmp.i = icmp eq i32 %5, %6
  br i1 %cmp.i, label %if.then.i, label %entry.if.end_crit_edge.i

entry.if.end_crit_edge.i:                         ; preds = %for.body
  %.pre.i = load i32*, i32** %ep.phi.trans.insert.i, align 8, !tbaa !23
  br label %_ZN9flexstackIiE3putEi.exit

if.then.i:                                        ; preds = %for.body
  %shl.i.i = shl i32 %5, 1
  %conv.i.i = sext i32 %shl.i.i to i64
  %mul.i.i = shl nsw i64 %conv.i.i, 2
  %call.i.i = tail call noalias i8* @malloc(i64 %mul.i.i) #20
  %7 = load i8*, i8** %4, align 8, !tbaa !23
  %conv3.i.i = sext i32 %5 to i64
  %mul4.i.i = shl nsw i64 %conv3.i.i, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %call.i.i, i8* align 4 %7, i64 %mul4.i.i, i1 false) #21
  tail call void @free(i8* %7) #20
  store i8* %call.i.i, i8** %4, align 8, !tbaa !23
  store i32 %shl.i.i, i32* %maxelemqu.i, align 4, !tbaa !21
  %8 = bitcast i8* %call.i.i to i32*
  %.pre4.i = load i32, i32* %elemqu.i, align 8, !tbaa !22
  br label %_ZN9flexstackIiE3putEi.exit

_ZN9flexstackIiE3putEi.exit:                      ; preds = %entry.if.end_crit_edge.i, %if.then.i
  %9 = phi i32 [ %5, %entry.if.end_crit_edge.i ], [ %.pre4.i, %if.then.i ]
  %10 = phi i32* [ %.pre.i, %entry.if.end_crit_edge.i ], [ %8, %if.then.i ]
  %idxprom.i = sext i32 %9 to i64
  %arrayidx.i = getelementptr inbounds i32, i32* %10, i64 %idxprom.i
  store i32 %i.018, i32* %arrayidx.i, align 4, !tbaa !24
  %11 = load i32, i32* %elemqu.i, align 8, !tbaa !22
  %inc.i = add nsw i32 %11, 1
  store i32 %inc.i, i32* %elemqu.i, align 8, !tbaa !22
  %inc = add i32 %i.018, 1
  %exitcond = icmp eq i32 %inc, %shl
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %_ZN9flexstackIiE3putEi.exit, %entry
  store i32 %shl, i32* %maxelemqu, align 4, !tbaa !15
  ret void
}

; Function Attrs: nounwind optsize
define linkonce_odr dso_local void @_ZN9flexarrayIiE8doublingEb(%class.flexstack* %this, i1 %flcopy) local_unnamed_addr #8 comdat align 2 {
entry:
  %maxelemqu = getelementptr inbounds %class.flexstack, %class.flexstack* %this, i64 0, i32 2
  %0 = load i32, i32* %maxelemqu, align 4, !tbaa !18
  %shl = shl i32 %0, 1
  %mul = shl i32 %0, 3
  %conv.i = sext i32 %mul to i64
  %call.i = tail call noalias i8* @malloc(i64 %conv.i) #20
  %1 = bitcast %class.flexstack* %this to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !20
  br i1 %flcopy, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv4 = sext i32 %0 to i64
  %mul5 = shl nsw i64 %conv4, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %call.i, i8* align 4 %2, i64 %mul5, i1 false)
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  tail call void @free(i8* %2) #20
  store i8* %call.i, i8** %1, align 8, !tbaa !20
  store i32 %shl, i32* %maxelemqu, align 4, !tbaa !18
  ret void
}

; Function Attrs: optsize
define dso_local void @_ZN9regmngobj13deleteregionsEv(%class.regmngobj* %this) local_unnamed_addr #0 align 2 {
entry:
  %call.i.i = tail call noalias dereferenceable_or_null(128) i8* @malloc(i64 128) #20
  %0 = bitcast i8* %call.i.i to %class.regobj**
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18
  %elemqu = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 4
  %1 = load i32, i32* %elemqu, align 8, !tbaa !25
  %cmp58 = icmp sgt i32 %1, 0
  br i1 %cmp58, label %for.body.lr.ph, label %for.end16

for.body.lr.ph:                                   ; preds = %entry
  %ep.i = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i64 0, i32 0
  br label %for.body

for.cond6.preheader:                              ; preds = %for.inc
  %cmp856 = icmp sgt i32 %deletedregions.sroa.10.1, 0
  br i1 %cmp856, label %for.body9.preheader, label %for.end16

for.body9.preheader:                              ; preds = %for.cond6.preheader
  %wide.trip.count = zext i32 %deletedregions.sroa.10.1 to i64
  br label %for.body9

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %.pre6768 = phi i32 [ %1, %for.body.lr.ph ], [ %.pre6769, %for.inc ]
  %2 = phi i32 [ %1, %for.body.lr.ph ], [ %11, %for.inc ]
  %indvars.iv65 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next66, %for.inc ]
  %deletedregions.sroa.0.061 = phi %class.regobj** [ %0, %for.body.lr.ph ], [ %deletedregions.sroa.0.2, %for.inc ]
  %deletedregions.sroa.10.060 = phi i32 [ 0, %for.body.lr.ph ], [ %deletedregions.sroa.10.1, %for.inc ]
  %deletedregions.sroa.15.059 = phi i32 [ 16, %for.body.lr.ph ], [ %deletedregions.sroa.15.2, %for.inc ]
  %3 = load %class.regobj**, %class.regobj*** %ep.i, align 8, !tbaa !17
  %arrayidx.i = getelementptr inbounds %class.regobj*, %class.regobj** %3, i64 %indvars.iv65
  %4 = load %class.regobj*, %class.regobj** %arrayidx.i, align 8, !tbaa !26
  %flexist = getelementptr inbounds %class.regobj, %class.regobj* %4, i64 0, i32 1
  %5 = load i8, i8* %flexist, align 4, !tbaa !40, !range !45
  %cmp3 = icmp eq i8 %5, 0
  %6 = ptrtoint %class.regobj* %4 to i64
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %cmp.i = icmp eq i32 %deletedregions.sroa.10.060, %deletedregions.sroa.15.059
  br i1 %cmp.i, label %if.then.i, label %if.then._ZN9flexarrayIP6regobjE3addERKS1_.exit_crit_edge

if.then._ZN9flexarrayIP6regobjE3addERKS1_.exit_crit_edge: ; preds = %if.then
  %.pre72 = sext i32 %deletedregions.sroa.10.060 to i64
  br label %_ZN9flexarrayIP6regobjE3addERKS1_.exit

if.then.i:                                        ; preds = %if.then
  %shl.i = shl i32 %deletedregions.sroa.10.060, 1
  %mul.i = shl i32 %deletedregions.sroa.10.060, 4
  %conv.i.i = sext i32 %mul.i to i64
  %call.i.i41 = tail call noalias i8* @malloc(i64 %conv.i.i) #20
  %7 = bitcast %class.regobj** %deletedregions.sroa.0.061 to i8*
  %conv4.i = sext i32 %deletedregions.sroa.10.060 to i64
  %mul5.i = shl nsw i64 %conv4.i, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %call.i.i41, i8* align 8 %7, i64 %mul5.i, i1 false) #21
  tail call void @free(i8* %7) #20
  %8 = bitcast i8* %call.i.i41 to %class.regobj**
  %.phi.trans.insert = bitcast %class.regobj** %arrayidx.i to i64*
  %.pre = load i64, i64* %.phi.trans.insert, align 8, !tbaa !26
  %.pre67.pre = load i32, i32* %elemqu, align 8, !tbaa !25
  br label %_ZN9flexarrayIP6regobjE3addERKS1_.exit

_ZN9flexarrayIP6regobjE3addERKS1_.exit:           ; preds = %if.then._ZN9flexarrayIP6regobjE3addERKS1_.exit_crit_edge, %if.then.i
  %idxprom.i38.pre-phi = phi i64 [ %.pre72, %if.then._ZN9flexarrayIP6regobjE3addERKS1_.exit_crit_edge ], [ %conv4.i, %if.then.i ]
  %.pre67 = phi i32 [ %.pre6768, %if.then._ZN9flexarrayIP6regobjE3addERKS1_.exit_crit_edge ], [ %.pre67.pre, %if.then.i ]
  %9 = phi i64 [ %6, %if.then._ZN9flexarrayIP6regobjE3addERKS1_.exit_crit_edge ], [ %.pre, %if.then.i ]
  %deletedregions.sroa.15.1 = phi i32 [ %deletedregions.sroa.15.059, %if.then._ZN9flexarrayIP6regobjE3addERKS1_.exit_crit_edge ], [ %shl.i, %if.then.i ]
  %deletedregions.sroa.0.1 = phi %class.regobj** [ %deletedregions.sroa.0.061, %if.then._ZN9flexarrayIP6regobjE3addERKS1_.exit_crit_edge ], [ %8, %if.then.i ]
  %arrayidx.i39 = getelementptr inbounds %class.regobj*, %class.regobj** %deletedregions.sroa.0.1, i64 %idxprom.i38.pre-phi
  %10 = bitcast %class.regobj** %arrayidx.i39 to i64*
  store i64 %9, i64* %10, align 8, !tbaa !26
  %inc.i = add nsw i32 %deletedregions.sroa.10.060, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %_ZN9flexarrayIP6regobjE3addERKS1_.exit
  %.pre6769 = phi i32 [ %.pre67, %_ZN9flexarrayIP6regobjE3addERKS1_.exit ], [ %.pre6768, %for.body ]
  %11 = phi i32 [ %.pre67, %_ZN9flexarrayIP6regobjE3addERKS1_.exit ], [ %2, %for.body ]
  %deletedregions.sroa.15.2 = phi i32 [ %deletedregions.sroa.15.1, %_ZN9flexarrayIP6regobjE3addERKS1_.exit ], [ %deletedregions.sroa.15.059, %for.body ]
  %deletedregions.sroa.10.1 = phi i32 [ %inc.i, %_ZN9flexarrayIP6regobjE3addERKS1_.exit ], [ %deletedregions.sroa.10.060, %for.body ]
  %deletedregions.sroa.0.2 = phi %class.regobj** [ %deletedregions.sroa.0.1, %_ZN9flexarrayIP6regobjE3addERKS1_.exit ], [ %deletedregions.sroa.0.061, %for.body ]
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %12 = sext i32 %11 to i64
  %cmp = icmp slt i64 %indvars.iv.next66, %12
  br i1 %cmp, label %for.body, label %for.cond6.preheader

for.body9:                                        ; preds = %for.inc14, %for.body9.preheader
  %indvars.iv = phi i64 [ 0, %for.body9.preheader ], [ %indvars.iv.next, %for.inc14 ]
  %arrayidx.i45 = getelementptr inbounds %class.regobj*, %class.regobj** %deletedregions.sroa.0.2, i64 %indvars.iv
  %13 = load %class.regobj*, %class.regobj** %arrayidx.i45, align 8, !tbaa !26
  %internalnum = getelementptr inbounds %class.regobj, %class.regobj* %13, i64 0, i32 0
  %14 = load i32, i32* %internalnum, align 8, !tbaa !44
  tail call void @_ZN15largesolidarrayIP6regobjE6removeEi(%class.largesolidarray* nonnull %rarp, i32 %14) #19
  %15 = load %class.regobj*, %class.regobj** %arrayidx.i45, align 8, !tbaa !26
  tail call void @_ZN6regobj7destroyEv(%class.regobj* %15) #19
  %16 = load %class.regobj*, %class.regobj** %arrayidx.i45, align 8, !tbaa !26
  %isnull = icmp eq %class.regobj* %16, null
  br i1 %isnull, label %for.inc14, label %delete.notnull

delete.notnull:                                   ; preds = %for.body9
  %17 = bitcast %class.regobj* %16 to i8*
  tail call void @_ZdlPv(i8* %17) #22
  br label %for.inc14

for.inc14:                                        ; preds = %for.body9, %delete.notnull
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.end16, label %for.body9

for.end16:                                        ; preds = %for.inc14, %entry, %for.cond6.preheader
  %deletedregions.sroa.0.0.lcssa76 = phi %class.regobj** [ %deletedregions.sroa.0.2, %for.cond6.preheader ], [ %0, %entry ], [ %deletedregions.sroa.0.2, %for.inc14 ]
  %18 = bitcast %class.regobj** %deletedregions.sroa.0.0.lcssa76 to i8*
  tail call void @free(i8* %18) #20
  ret void
}

; Function Attrs: optsize
define linkonce_odr dso_local void @_ZN15largesolidarrayIP6regobjE6removeEi(%class.largesolidarray* %this, i32 %ecellnum) local_unnamed_addr #0 comdat align 2 {
entry:
  %ep = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 2, i32 0
  %0 = load i32*, i32** %ep, align 8, !tbaa !42
  %idxprom = sext i32 %ecellnum to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !24
  %elemqu = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 4
  %2 = load i32, i32* %elemqu, align 8, !tbaa !16
  %sub = add nsw i32 %2, -1
  %cmp = icmp eq i32 %1, %sub
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %ep2 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 0
  %3 = load %class.regobj**, %class.regobj*** %ep2, align 8, !tbaa !17
  %idxprom5 = sext i32 %sub to i64
  %arrayidx6 = getelementptr inbounds %class.regobj*, %class.regobj** %3, i64 %idxprom5
  %4 = bitcast %class.regobj** %arrayidx6 to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !26
  %idxprom8 = sext i32 %1 to i64
  %arrayidx9 = getelementptr inbounds %class.regobj*, %class.regobj** %3, i64 %idxprom8
  %6 = bitcast %class.regobj** %arrayidx9 to i64*
  store i64 %5, i64* %6, align 8, !tbaa !26
  %7 = load i32*, i32** %ep, align 8, !tbaa !42
  %ep12 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 3, i32 0
  %8 = load i32*, i32** %ep12, align 8, !tbaa !43
  %arrayidx16 = getelementptr inbounds i32, i32* %8, i64 %idxprom5
  %9 = load i32, i32* %arrayidx16, align 4, !tbaa !24
  %idxprom17 = sext i32 %9 to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %7, i64 %idxprom17
  store i32 %1, i32* %arrayidx18, align 4, !tbaa !24
  %10 = load i32, i32* %elemqu, align 8, !tbaa !16
  %sub22 = add nsw i32 %10, -1
  %idxprom23 = sext i32 %sub22 to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %8, i64 %idxprom23
  %11 = load i32, i32* %arrayidx24, align 4, !tbaa !24
  %arrayidx28 = getelementptr inbounds i32, i32* %8, i64 %idxprom8
  store i32 %11, i32* %arrayidx28, align 4, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %freecellholder = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 1
  %elemqu.i = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 1, i32 1
  %12 = load i32, i32* %elemqu.i, align 8, !tbaa !22
  %maxelemqu.i = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this, i64 0, i32 1, i32 2
  %13 = load i32, i32* %maxelemqu.i, align 4, !tbaa !21
  %cmp.i = icmp eq i32 %12, %13
  br i1 %cmp.i, label %if.then.i, label %entry.if.end_crit_edge.i

entry.if.end_crit_edge.i:                         ; preds = %if.end
  %ep.phi.trans.insert.i = getelementptr inbounds %class.flexstack, %class.flexstack* %freecellholder, i64 0, i32 0
  %.pre.i = load i32*, i32** %ep.phi.trans.insert.i, align 8, !tbaa !23
  br label %_ZN9flexstackIiE3putEi.exit

if.then.i:                                        ; preds = %if.end
  %shl.i.i = shl i32 %12, 1
  %conv.i.i = sext i32 %shl.i.i to i64
  %mul.i.i = shl nsw i64 %conv.i.i, 2
  %call.i.i = tail call noalias i8* @malloc(i64 %mul.i.i) #20
  %14 = bitcast %class.flexstack* %freecellholder to i8**
  %15 = load i8*, i8** %14, align 8, !tbaa !23
  %conv3.i.i = sext i32 %12 to i64
  %mul4.i.i = shl nsw i64 %conv3.i.i, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %call.i.i, i8* align 4 %15, i64 %mul4.i.i, i1 false) #21
  tail call void @free(i8* %15) #20
  store i8* %call.i.i, i8** %14, align 8, !tbaa !23
  store i32 %shl.i.i, i32* %maxelemqu.i, align 4, !tbaa !21
  %16 = bitcast i8* %call.i.i to i32*
  %.pre4.i = load i32, i32* %elemqu.i, align 8, !tbaa !22
  br label %_ZN9flexstackIiE3putEi.exit

_ZN9flexstackIiE3putEi.exit:                      ; preds = %entry.if.end_crit_edge.i, %if.then.i
  %17 = phi i32 [ %12, %entry.if.end_crit_edge.i ], [ %.pre4.i, %if.then.i ]
  %18 = phi i32* [ %.pre.i, %entry.if.end_crit_edge.i ], [ %16, %if.then.i ]
  %idxprom.i = sext i32 %17 to i64
  %arrayidx.i = getelementptr inbounds i32, i32* %18, i64 %idxprom.i
  store i32 %ecellnum, i32* %arrayidx.i, align 4, !tbaa !24
  %19 = load i32, i32* %elemqu.i, align 8, !tbaa !22
  %inc.i = add nsw i32 %19, 1
  store i32 %inc.i, i32* %elemqu.i, align 8, !tbaa !22
  %20 = load i32, i32* %elemqu, align 8, !tbaa !16
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %elemqu, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
define dso_local void @_ZN9regmngobj13defineregionsEv(%class.regmngobj* %this) local_unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #21
  %1 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #21
  %call.i.i = tail call noalias dereferenceable_or_null(1792) i8* @malloc(i64 1792) #20
  %2 = bitcast i8* %call.i.i to %class.regboundobj*
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 12
  %3 = load i32, i32* %mapmaxx, align 4, !tbaa !32
  %conv = sitofp i32 %3 to float
  %div = fdiv float %conv, 6.200000e+02
  %mul = fmul float %div, 3.400000e+01
  %radiuscoef = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 11
  %4 = load float, float* %radiuscoef, align 8, !tbaa !46
  %div2 = fdiv float %mul, %4
  %add.i = fadd float %div2, 5.000000e-01
  %conv.i = fptosi float %add.i to i32
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 13
  %5 = load i32, i32* %mapmaxy, align 8, !tbaa !33
  %conv3 = sitofp i32 %5 to float
  %div4 = fdiv float %conv3, 3.090000e+02
  %mul5 = fmul float %div4, 2.000000e+01
  %div7 = fdiv float %mul5, %4
  %add.i134 = fadd float %div7, 5.000000e-01
  %conv.i135 = fptosi float %add.i134 to i32
  %add = add nsw i32 %3, 1
  %conv10 = sitofp i32 %add to float
  %conv11 = sitofp i32 %conv.i to float
  %div12 = fdiv float %conv10, %conv11
  %add.i141 = fadd float %div12, 5.000000e-01
  %conv.i142 = fptosi float %add.i141 to i32
  %add15 = add nsw i32 %5, 1
  %conv16 = sitofp i32 %add15 to float
  %conv17 = sitofp i32 %conv.i135 to float
  %div18 = fdiv float %conv16, %conv17
  %mul20 = fmul float %div18, 0x3FFBB67AE0000000
  %div21 = fmul float %mul20, 5.000000e-01
  %add.i150 = fadd float %div21, 5.000000e-01
  %conv.i151 = fptosi float %add.i150 to i32
  %div25 = sdiv i32 %conv.i142, 2
  %div28 = sdiv i32 %conv.i151, 2
  %regionmapp.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 6
  %mapsizex.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 16
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18
  %elemqu.i156 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 4
  %maxelemqu.i157 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 5
  %ep.i161 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i64 0, i32 0
  %elemqu.i.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 1, i32 1
  %ep.i.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 1, i32 0
  %ep4.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 2, i32 0
  %ep7.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 3, i32 0
  %sub = add nsw i32 %conv.i, -1
  %mul62 = fmul float %conv17, 2.000000e+00
  %div64 = fdiv float %mul62, 0x3FFBB67AE0000000
  %add.i139 = fadd float %div64, 5.000000e-01
  %conv.i140 = fptosi float %add.i139 to i32
  %add66 = add nsw i32 %conv.i140, 3
  br label %do.body

do.body:                                          ; preds = %next, %entry
  %rboundarp.sroa.10.0 = phi i32 [ 0, %entry ], [ %rboundarp.sroa.10.1, %next ]
  %rboundarp.sroa.0.0 = phi %class.regboundobj* [ %2, %entry ], [ %rboundarp.sroa.0.2, %next ]
  %rboundarp.sroa.16.0 = phi i32 [ 16, %entry ], [ %rboundarp.sroa.16.2, %next ]
  %i2.0 = phi i32 [ 0, %entry ], [ %i2.1, %next ]
  %i1.0 = phi i32 [ 0, %entry ], [ %i1.1, %next ]
  %and = and i32 %i2.0, 1
  %tobool = icmp ne i32 %and, 0
  %mul23 = mul nsw i32 %i1.0, %conv.i142
  %xx.0.v = select i1 %tobool, i32 %conv.i142, i32 %div25
  %xx.0 = add nsw i32 %mul23, %xx.0.v
  %mul29 = mul nsw i32 %i2.0, %conv.i151
  %add30 = add nsw i32 %mul29, %div28
  %call31 = call i1 @_ZN9regmngobj13findfreeplaceEiiRiS0_(%class.regmngobj* %this, i32 %xx.0, i32 %add30, i32* nonnull dereferenceable(4) %x, i32* nonnull dereferenceable(4) %y) #19
  br i1 %call31, label %if.else34, label %next

if.else34:                                        ; preds = %do.body
  %6 = load i32, i32* %x, align 4, !tbaa !24
  %7 = load i32, i32* %y, align 4, !tbaa !24
  %8 = load %class.regobj**, %class.regobj*** %regionmapp.i, align 8, !tbaa !27
  %9 = load i32, i32* %mapsizex.i, align 4, !tbaa !30
  %mul.i152 = mul nsw i32 %9, %7
  %add.i153 = add nsw i32 %mul.i152, %6
  %idxprom.i154 = sext i32 %add.i153 to i64
  %arrayidx.i155 = getelementptr inbounds %class.regobj*, %class.regobj** %8, i64 %idxprom.i154
  %10 = load %class.regobj*, %class.regobj** %arrayidx.i155, align 8, !tbaa !26
  %tobool36 = icmp eq %class.regobj* %10, null
  br i1 %tobool36, label %invoke.cont, label %next

invoke.cont:                                      ; preds = %if.else34
  %call40 = call dereferenceable(56) i8* @_Znwm(i64 56) #23
  %regmngp.i = getelementptr inbounds i8, i8* %call40, i64 8
  %11 = bitcast i8* %regmngp.i to %class.regmngobj**
  store %class.regmngobj* %this, %class.regmngobj** %11, align 8, !tbaa !41
  %12 = ptrtoint i8* %call40 to i64
  %13 = load i32, i32* %elemqu.i156, align 8, !tbaa !16
  %14 = load i32, i32* %maxelemqu.i157, align 4, !tbaa !15
  %cmp.i158 = icmp eq i32 %13, %14
  br i1 %cmp.i158, label %if.then.i160, label %_ZN15largesolidarrayIP6regobjE3addERKS1_.exit

if.then.i160:                                     ; preds = %invoke.cont
  call void @_ZN15largesolidarrayIP6regobjE8doublingEv(%class.largesolidarray* nonnull %rarp) #19
  %.pre.i159 = load i32, i32* %elemqu.i156, align 8, !tbaa !16
  br label %_ZN15largesolidarrayIP6regobjE3addERKS1_.exit

_ZN15largesolidarrayIP6regobjE3addERKS1_.exit:    ; preds = %invoke.cont, %if.then.i160
  %15 = phi i32 [ %.pre.i159, %if.then.i160 ], [ %13, %invoke.cont ]
  %16 = load %class.regobj**, %class.regobj*** %ep.i161, align 8, !tbaa !17
  %idxprom.i162 = sext i32 %15 to i64
  %arrayidx.i163 = getelementptr inbounds %class.regobj*, %class.regobj** %16, i64 %idxprom.i162
  %17 = bitcast %class.regobj** %arrayidx.i163 to i64*
  store i64 %12, i64* %17, align 8, !tbaa !26
  %18 = load i32, i32* %elemqu.i.i, align 8, !tbaa !22
  %dec.i.i = add nsw i32 %18, -1
  store i32 %dec.i.i, i32* %elemqu.i.i, align 8, !tbaa !22
  %19 = load i32*, i32** %ep.i.i, align 8, !tbaa !23
  %idxprom.i.i = sext i32 %dec.i.i to i64
  %arrayidx.i.i = getelementptr inbounds i32, i32* %19, i64 %idxprom.i.i
  %20 = load i32, i32* %arrayidx.i.i, align 4, !tbaa !24
  %21 = load i32*, i32** %ep4.i, align 8, !tbaa !42
  %idxprom5.i = sext i32 %20 to i64
  %arrayidx6.i = getelementptr inbounds i32, i32* %21, i64 %idxprom5.i
  store i32 %15, i32* %arrayidx6.i, align 4, !tbaa !24
  %22 = load i32*, i32** %ep7.i, align 8, !tbaa !43
  %23 = load i32, i32* %elemqu.i156, align 8, !tbaa !16
  %idxprom9.i = sext i32 %23 to i64
  %arrayidx10.i = getelementptr inbounds i32, i32* %22, i64 %idxprom9.i
  store i32 %20, i32* %arrayidx10.i, align 4, !tbaa !24
  %24 = load i32, i32* %elemqu.i156, align 8, !tbaa !16
  %inc.i164 = add nsw i32 %24, 1
  store i32 %inc.i164, i32* %elemqu.i156, align 8, !tbaa !16
  %25 = bitcast i8* %call40 to %class.regobj*
  %internalnum = bitcast i8* %call40 to i32*
  store i32 %20, i32* %internalnum, align 8, !tbaa !44
  call void @_ZN6regobj6createEv(%class.regobj* nonnull %25) #19
  %26 = getelementptr inbounds i8, i8* %call40, i64 4
  store i8 1, i8* %26, align 4, !tbaa !40
  %27 = load i32, i32* %x, align 4, !tbaa !24
  %x42 = getelementptr inbounds i8, i8* %call40, i64 20
  %28 = bitcast i8* %x42 to i32*
  store i32 %27, i32* %28, align 4, !tbaa !47
  %29 = load i32, i32* %y, align 4, !tbaa !24
  %y44 = getelementptr inbounds i8, i8* %call40, i64 24
  %30 = bitcast i8* %y44 to i32*
  store i32 %29, i32* %30, align 4, !tbaa !48
  %cmp.i = icmp eq i32 %rboundarp.sroa.10.0, %rboundarp.sroa.16.0
  br i1 %cmp.i, label %if.then.i, label %_ZN9flexarrayI11regboundobjE3addEv.exit

if.then.i:                                        ; preds = %_ZN15largesolidarrayIP6regobjE3addERKS1_.exit
  %shl.i = shl i32 %rboundarp.sroa.10.0, 1
  %mul.i = mul i32 %rboundarp.sroa.10.0, 224
  %conv.i.i = sext i32 %mul.i to i64
  %call.i.i147 = call noalias i8* @malloc(i64 %conv.i.i) #20
  %31 = bitcast %class.regboundobj* %rboundarp.sroa.0.0 to i8*
  %conv4.i = sext i32 %rboundarp.sroa.10.0 to i64
  %mul5.i = mul nsw i64 %conv4.i, 112
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %call.i.i147, i8* align 8 %31, i64 %mul5.i, i1 false) #21
  call void @free(i8* %31) #20
  %32 = bitcast i8* %call.i.i147 to %class.regboundobj*
  %.pre = load i32, i32* %x, align 4, !tbaa !24
  %.pre189 = load i32, i32* %y, align 4, !tbaa !24
  br label %_ZN9flexarrayI11regboundobjE3addEv.exit

_ZN9flexarrayI11regboundobjE3addEv.exit:          ; preds = %_ZN15largesolidarrayIP6regobjE3addERKS1_.exit, %if.then.i
  %33 = phi i32 [ %.pre189, %if.then.i ], [ %29, %_ZN15largesolidarrayIP6regobjE3addERKS1_.exit ]
  %34 = phi i32 [ %.pre, %if.then.i ], [ %27, %_ZN15largesolidarrayIP6regobjE3addERKS1_.exit ]
  %rboundarp.sroa.0.1 = phi %class.regboundobj* [ %32, %if.then.i ], [ %rboundarp.sroa.0.0, %_ZN15largesolidarrayIP6regobjE3addERKS1_.exit ]
  %rboundarp.sroa.16.1 = phi i32 [ %shl.i, %if.then.i ], [ %rboundarp.sroa.16.0, %_ZN15largesolidarrayIP6regobjE3addERKS1_.exit ]
  %inc.i = add nsw i32 %rboundarp.sroa.10.0, 1
  %idx.ext.i = sext i32 %inc.i to i64
  %add.ptr.i = getelementptr inbounds %class.regboundobj, %class.regboundobj* %rboundarp.sroa.0.1, i64 -1
  %add.ptr4.i = getelementptr inbounds %class.regboundobj, %class.regboundobj* %add.ptr.i, i64 %idx.ext.i
  %flexist46 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %add.ptr4.i, i64 0, i32 17
  store i8 1, i8* %flexist46, align 8, !tbaa !49
  call void @_ZN11regboundobj9firststepEiiP6regobjP9regmngobj(%class.regboundobj* nonnull %add.ptr4.i, i32 %34, i32 %33, %class.regobj* nonnull %25, %class.regmngobj* nonnull %this) #19
  br label %next

next:                                             ; preds = %if.else34, %do.body, %_ZN9flexarrayI11regboundobjE3addEv.exit
  %rboundarp.sroa.10.1 = phi i32 [ %inc.i, %_ZN9flexarrayI11regboundobjE3addEv.exit ], [ %rboundarp.sroa.10.0, %if.else34 ], [ %rboundarp.sroa.10.0, %do.body ]
  %rboundarp.sroa.0.2 = phi %class.regboundobj* [ %rboundarp.sroa.0.1, %_ZN9flexarrayI11regboundobjE3addEv.exit ], [ %rboundarp.sroa.0.0, %if.else34 ], [ %rboundarp.sroa.0.0, %do.body ]
  %rboundarp.sroa.16.2 = phi i32 [ %rboundarp.sroa.16.1, %_ZN9flexarrayI11regboundobjE3addEv.exit ], [ %rboundarp.sroa.16.0, %if.else34 ], [ %rboundarp.sroa.16.0, %do.body ]
  %add47 = add nsw i32 %i1.0, 1
  %cmp51 = icmp eq i32 %add47, %sub
  %spec.select130 = select i1 %cmp51, i32 0, i32 %add47
  %cmp56 = icmp eq i32 %add47, %conv.i
  %spec.select132 = select i1 %cmp56, i32 0, i32 %add47
  %add53.pn.in = select i1 %tobool, i1 %cmp51, i1 %cmp56
  %i1.1 = select i1 %tobool, i32 %spec.select130, i32 %spec.select132
  %add53.pn = zext i1 %add53.pn.in to i32
  %i2.1 = add nuw nsw i32 %i2.0, %add53.pn
  %cmp67 = icmp slt i32 %i2.1, %add66
  br i1 %cmp67, label %do.body, label %do.body68.preheader

do.body68.preheader:                              ; preds = %next
  %cmp69186 = icmp sgt i32 %rboundarp.sroa.10.1, 0
  br i1 %cmp69186, label %for.body, label %for.end88

for.body:                                         ; preds = %do.body68.preheader, %for.body
  %i.0188 = phi i32 [ %inc.mux, %for.body ], [ 0, %do.body68.preheader ]
  %fldone.0.off0187 = phi i1 [ %spec.select133.mux, %for.body ], [ true, %do.body68.preheader ]
  %idxprom.i137 = zext i32 %i.0188 to i64
  %arrayidx.i138 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %rboundarp.sroa.0.2, i64 %idxprom.i137
  %call71 = call i1 @_ZN11regboundobj4stepEv(%class.regboundobj* nonnull %arrayidx.i138) #19
  %not.call71 = xor i1 %call71, true
  %spec.select133 = and i1 %fldone.0.off0187, %not.call71
  %inc = add nuw nsw i32 %i.0188, 1
  %cmp69 = icmp slt i32 %inc, %rboundarp.sroa.10.1
  %spec.select133.not = xor i1 %spec.select133, true
  %brmerge = or i1 %cmp69, %spec.select133.not
  %inc.mux = select i1 %cmp69, i32 %inc, i32 0
  %not.cmp69 = xor i1 %cmp69, true
  %spec.select133.mux = or i1 %spec.select133, %not.cmp69
  br i1 %brmerge, label %for.body, label %for.cond81.preheader

for.cond81.preheader:                             ; preds = %for.body
  br i1 %cmp69186, label %for.body84.preheader, label %for.end88

for.body84.preheader:                             ; preds = %for.cond81.preheader
  %wide.trip.count = zext i32 %rboundarp.sroa.10.1 to i64
  br label %for.body84

for.body84:                                       ; preds = %for.body84, %for.body84.preheader
  %indvars.iv = phi i64 [ 0, %for.body84.preheader ], [ %indvars.iv.next, %for.body84 ]
  %arrayidx.i = getelementptr inbounds %class.regboundobj, %class.regboundobj* %rboundarp.sroa.0.2, i64 %indvars.iv
  call void @_ZN11regboundobj7destroyEv(%class.regboundobj* nonnull %arrayidx.i) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.end88, label %for.body84

for.end88:                                        ; preds = %for.body84, %do.body68.preheader, %for.cond81.preheader
  %35 = bitcast %class.regboundobj* %rboundarp.sroa.0.2 to i8*
  call void @free(i8* %35) #20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #21
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #21
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: optsize
define dso_local void @_ZN9regmngobj13addallregionsEv(%class.regmngobj* %this) local_unnamed_addr #0 align 2 {
entry:
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 13
  %0 = load i32, i32* %mapmaxy, align 8, !tbaa !33
  %cmp31 = icmp slt i32 %0, 0
  br i1 %cmp31, label %for.end12, label %for.cond2.preheader.lr.ph

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 12
  %regionmapp.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 6
  %mapsizex.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 16
  %landscapemapp.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 7
  %.pre = load i32, i32* %mapmaxx, align 4, !tbaa !32
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.inc10, %for.cond2.preheader.lr.ph
  %1 = phi i32 [ %.pre, %for.cond2.preheader.lr.ph ], [ %11, %for.inc10 ]
  %2 = phi i32 [ %.pre, %for.cond2.preheader.lr.ph ], [ %12, %for.inc10 ]
  %y.032 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc11, %for.inc10 ]
  %cmp328 = icmp slt i32 %2, 0
  br i1 %cmp328, label %for.inc10, label %for.body4

for.body4:                                        ; preds = %for.cond2.preheader, %for.inc
  %3 = phi i32 [ %10, %for.inc ], [ %1, %for.cond2.preheader ]
  %x.029 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond2.preheader ]
  %4 = load %class.regobj**, %class.regobj*** %regionmapp.i, align 8, !tbaa !27
  %5 = load i32, i32* %mapsizex.i, align 4, !tbaa !30
  %mul.i = mul nsw i32 %5, %y.032
  %add.i = add nsw i32 %mul.i, %x.029
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds %class.regobj*, %class.regobj** %4, i64 %idxprom.i
  %6 = load %class.regobj*, %class.regobj** %arrayidx.i, align 8, !tbaa !26
  %cmp5 = icmp eq %class.regobj* %6, null
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body4
  %7 = load i8*, i8** %landscapemapp.i, align 8, !tbaa !28
  %arrayidx.i27 = getelementptr inbounds i8, i8* %7, i64 %idxprom.i
  %8 = load i8, i8* %arrayidx.i27, align 1, !tbaa !29
  %idxprom = zext i8 %8 to i64
  %arrayidx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !35, !range !45
  %tobool = icmp eq i8 %9, 0
  br i1 %tobool, label %for.inc, label %if.then7

if.then7:                                         ; preds = %if.then
  %call8 = tail call %class.regobj* @_ZN9regmngobj9newregionEii(%class.regmngobj* nonnull %this, i32 %x.029, i32 %y.032) #19
  %.pre34 = load i32, i32* %mapmaxx, align 4, !tbaa !32
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body4, %if.then7
  %10 = phi i32 [ %3, %if.then ], [ %3, %for.body4 ], [ %.pre34, %if.then7 ]
  %inc = add nuw nsw i32 %x.029, 1
  %cmp3 = icmp slt i32 %x.029, %10
  br i1 %cmp3, label %for.body4, label %for.inc10

for.inc10:                                        ; preds = %for.inc, %for.cond2.preheader
  %11 = phi i32 [ %1, %for.cond2.preheader ], [ %10, %for.inc ]
  %12 = phi i32 [ %2, %for.cond2.preheader ], [ %10, %for.inc ]
  %inc11 = add nuw nsw i32 %y.032, 1
  %13 = load i32, i32* %mapmaxy, align 8, !tbaa !33
  %cmp = icmp slt i32 %y.032, %13
  br i1 %cmp, label %for.cond2.preheader, label %for.end12

for.end12:                                        ; preds = %for.inc10, %entry
  ret void
}

; Function Attrs: optsize
define dso_local void @_ZN9regmngobj10addregionsEv(%class.regmngobj* %this) local_unnamed_addr #0 align 2 {
for.cond2.preheader:
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 13
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 12
  %regionmapp.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 6
  %mapsizex.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 16
  %landscapemapp.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 7
  %.pre = load i32, i32* %mapmaxy, align 8, !tbaa !33
  %cmp343 = icmp slt i32 %.pre, 0
  br i1 %cmp343, label %for.end22, label %for.cond5.preheader.preheader

for.cond5.preheader.preheader:                    ; preds = %for.cond2.preheader
  %.pre47 = load i32, i32* %mapmaxx, align 4, !tbaa !32
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond5.preheader.preheader, %for.inc17
  %0 = phi i32 [ %8, %for.inc17 ], [ %.pre47, %for.cond5.preheader.preheader ]
  %y.044 = phi i32 [ %inc18, %for.inc17 ], [ 0, %for.cond5.preheader.preheader ]
  %cmp640 = icmp slt i32 %0, 0
  br i1 %cmp640, label %for.inc17, label %for.body7

for.body7:                                        ; preds = %for.cond5.preheader, %for.inc
  %x.041 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond5.preheader ]
  %1 = load %class.regobj**, %class.regobj*** %regionmapp.i, align 8, !tbaa !27
  %2 = load i32, i32* %mapsizex.i, align 4, !tbaa !30
  %mul.i = mul nsw i32 %2, %y.044
  %add.i = add nsw i32 %mul.i, %x.041
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds %class.regobj*, %class.regobj** %1, i64 %idxprom.i
  %3 = load %class.regobj*, %class.regobj** %arrayidx.i, align 8, !tbaa !26
  %cmp8 = icmp eq %class.regobj* %3, null
  br i1 %cmp8, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body7
  %4 = load i8*, i8** %landscapemapp.i, align 8, !tbaa !28
  %arrayidx.i39 = getelementptr inbounds i8, i8* %4, i64 %idxprom.i
  %5 = load i8, i8* %arrayidx.i39, align 1, !tbaa !29
  %idxprom = zext i8 %5 to i64
  %arrayidx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 8, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !35, !range !45
  %tobool = icmp eq i8 %6, 0
  br i1 %tobool, label %for.inc, label %if.then10

if.then10:                                        ; preds = %if.then
  %call11 = tail call i32 @_Z7random1i(i32 32) #19
  %cmp12 = icmp eq i32 %call11, 1
  br i1 %cmp12, label %if.then13, label %for.inc

if.then13:                                        ; preds = %if.then10
  %call14 = tail call %class.regobj* @_ZN9regmngobj9newregionEii(%class.regmngobj* nonnull %this, i32 %x.041, i32 %y.044) #19
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body7, %if.then10, %if.then13
  %inc = add nuw nsw i32 %x.041, 1
  %7 = load i32, i32* %mapmaxx, align 4, !tbaa !32
  %cmp6 = icmp slt i32 %x.041, %7
  br i1 %cmp6, label %for.body7, label %for.inc17

for.inc17:                                        ; preds = %for.inc, %for.cond5.preheader
  %8 = phi i32 [ %0, %for.cond5.preheader ], [ %7, %for.inc ]
  %inc18 = add nuw nsw i32 %y.044, 1
  %9 = load i32, i32* %mapmaxy, align 8, !tbaa !33
  %cmp3 = icmp slt i32 %y.044, %9
  br i1 %cmp3, label %for.cond5.preheader, label %for.end22

for.end22:                                        ; preds = %for.inc17, %for.cond2.preheader
  tail call void @_ZN9regmngobj13addallregionsEv(%class.regmngobj* nonnull %this) #19
  ret void
}

; Function Attrs: optsize
define dso_local void @_ZN9regmngobj15redefineregionsEv(%class.regmngobj* %this) local_unnamed_addr #0 align 2 {
entry:
  %call.i.i = tail call noalias dereferenceable_or_null(1792) i8* @malloc(i64 1792) #20
  %0 = bitcast i8* %call.i.i to %class.regboundobj*
  %elemqu = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 4
  %1 = load i32, i32* %elemqu, align 8, !tbaa !25
  %cmp85 = icmp sgt i32 %1, 0
  br i1 %cmp85, label %for.body.lr.ph, label %for.end33

for.body.lr.ph:                                   ; preds = %entry
  %ep.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 0
  br label %for.body

do.body.preheader:                                ; preds = %for.inc
  %cmp1382 = icmp sgt i32 %rboundarp.sroa.9.1, 0
  br i1 %cmp1382, label %for.body14, label %for.end33

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %2 = phi i32 [ %1, %for.body.lr.ph ], [ %11, %for.inc ]
  %indvars.iv92 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next93, %for.inc ]
  %rboundarp.sroa.0.088 = phi %class.regboundobj* [ %0, %for.body.lr.ph ], [ %rboundarp.sroa.0.2, %for.inc ]
  %rboundarp.sroa.9.087 = phi i32 [ 0, %for.body.lr.ph ], [ %rboundarp.sroa.9.1, %for.inc ]
  %rboundarp.sroa.15.086 = phi i32 [ 16, %for.body.lr.ph ], [ %rboundarp.sroa.15.2, %for.inc ]
  %3 = load %class.regobj**, %class.regobj*** %ep.i, align 8, !tbaa !17
  %arrayidx.i = getelementptr inbounds %class.regobj*, %class.regobj** %3, i64 %indvars.iv92
  %4 = load %class.regobj*, %class.regobj** %arrayidx.i, align 8, !tbaa !26
  %flredefine = getelementptr inbounds %class.regobj, %class.regobj* %4, i64 0, i32 2
  %5 = load i8, i8* %flredefine, align 1, !tbaa !52, !range !45
  %tobool = icmp eq i8 %5, 0
  br i1 %tobool, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %cmp.i = icmp eq i32 %rboundarp.sroa.9.087, %rboundarp.sroa.15.086
  br i1 %cmp.i, label %if.then.i, label %_ZN9flexarrayI11regboundobjE3addEv.exit

if.then.i:                                        ; preds = %if.then
  %shl.i = shl i32 %rboundarp.sroa.9.087, 1
  %mul.i = mul i32 %rboundarp.sroa.9.087, 224
  %conv.i.i = sext i32 %mul.i to i64
  %call.i.i53 = tail call noalias i8* @malloc(i64 %conv.i.i) #20
  %6 = bitcast %class.regboundobj* %rboundarp.sroa.0.088 to i8*
  %conv4.i = sext i32 %rboundarp.sroa.9.087 to i64
  %mul5.i = mul nsw i64 %conv4.i, 112
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %call.i.i53, i8* align 8 %6, i64 %mul5.i, i1 false) #21
  tail call void @free(i8* %6) #20
  %7 = bitcast i8* %call.i.i53 to %class.regboundobj*
  %.pre = load %class.regobj**, %class.regobj*** %ep.i, align 8, !tbaa !17
  %arrayidx.i57.phi.trans.insert = getelementptr inbounds %class.regobj*, %class.regobj** %.pre, i64 %indvars.iv92
  %.pre94 = load %class.regobj*, %class.regobj** %arrayidx.i57.phi.trans.insert, align 8, !tbaa !26
  br label %_ZN9flexarrayI11regboundobjE3addEv.exit

_ZN9flexarrayI11regboundobjE3addEv.exit:          ; preds = %if.then, %if.then.i
  %8 = phi %class.regobj* [ %.pre94, %if.then.i ], [ %4, %if.then ]
  %rboundarp.sroa.15.1 = phi i32 [ %shl.i, %if.then.i ], [ %rboundarp.sroa.15.086, %if.then ]
  %rboundarp.sroa.0.1 = phi %class.regboundobj* [ %7, %if.then.i ], [ %rboundarp.sroa.0.088, %if.then ]
  %inc.i = add nsw i32 %rboundarp.sroa.9.087, 1
  %idx.ext.i = sext i32 %inc.i to i64
  %add.ptr.i = getelementptr inbounds %class.regboundobj, %class.regboundobj* %rboundarp.sroa.0.1, i64 -1
  %add.ptr4.i = getelementptr inbounds %class.regboundobj, %class.regboundobj* %add.ptr.i, i64 %idx.ext.i
  %flexist = getelementptr inbounds %class.regboundobj, %class.regboundobj* %add.ptr4.i, i64 0, i32 17
  store i8 1, i8* %flexist, align 8, !tbaa !49
  %x = getelementptr inbounds %class.regobj, %class.regobj* %8, i64 0, i32 5, i32 0
  %9 = load i32, i32* %x, align 4, !tbaa !47
  %y = getelementptr inbounds %class.regobj, %class.regobj* %8, i64 0, i32 5, i32 1
  %10 = load i32, i32* %y, align 4, !tbaa !48
  tail call void @_ZN11regboundobj9firststepEiiP6regobjP9regmngobj(%class.regboundobj* nonnull %add.ptr4.i, i32 %9, i32 %10, %class.regobj* %8, %class.regmngobj* nonnull %this) #19
  %.pre95 = load i32, i32* %elemqu, align 8, !tbaa !25
  br label %for.inc

for.inc:                                          ; preds = %for.body, %_ZN9flexarrayI11regboundobjE3addEv.exit
  %11 = phi i32 [ %2, %for.body ], [ %.pre95, %_ZN9flexarrayI11regboundobjE3addEv.exit ]
  %rboundarp.sroa.15.2 = phi i32 [ %rboundarp.sroa.15.086, %for.body ], [ %rboundarp.sroa.15.1, %_ZN9flexarrayI11regboundobjE3addEv.exit ]
  %rboundarp.sroa.9.1 = phi i32 [ %rboundarp.sroa.9.087, %for.body ], [ %inc.i, %_ZN9flexarrayI11regboundobjE3addEv.exit ]
  %rboundarp.sroa.0.2 = phi %class.regboundobj* [ %rboundarp.sroa.0.088, %for.body ], [ %rboundarp.sroa.0.1, %_ZN9flexarrayI11regboundobjE3addEv.exit ]
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %12 = sext i32 %11 to i64
  %cmp = icmp slt i64 %indvars.iv.next93, %12
  br i1 %cmp, label %for.body, label %do.body.preheader

for.body14:                                       ; preds = %do.body.preheader, %for.body14
  %i.184 = phi i32 [ %inc21.mux, %for.body14 ], [ 0, %do.body.preheader ]
  %fldone.0.off083 = phi i1 [ %spec.select.mux, %for.body14 ], [ true, %do.body.preheader ]
  %idxprom.i65 = zext i32 %i.184 to i64
  %arrayidx.i66 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %rboundarp.sroa.0.2, i64 %idxprom.i65
  %call16 = tail call i1 @_ZN11regboundobj4stepEv(%class.regboundobj* nonnull %arrayidx.i66) #19
  %not.call16 = xor i1 %call16, true
  %spec.select = and i1 %fldone.0.off083, %not.call16
  %inc21 = add nuw nsw i32 %i.184, 1
  %cmp13 = icmp slt i32 %inc21, %rboundarp.sroa.9.1
  %spec.select.not = xor i1 %spec.select, true
  %brmerge = or i1 %cmp13, %spec.select.not
  %inc21.mux = select i1 %cmp13, i32 %inc21, i32 0
  %not.cmp13 = xor i1 %cmp13, true
  %spec.select.mux = or i1 %spec.select, %not.cmp13
  br i1 %brmerge, label %for.body14, label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %for.body14
  br i1 %cmp1382, label %for.body29.preheader, label %for.end33

for.body29.preheader:                             ; preds = %for.cond26.preheader
  %wide.trip.count = zext i32 %rboundarp.sroa.9.1 to i64
  br label %for.body29

for.body29:                                       ; preds = %for.body29, %for.body29.preheader
  %indvars.iv = phi i64 [ 0, %for.body29.preheader ], [ %indvars.iv.next, %for.body29 ]
  %arrayidx.i63 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %rboundarp.sroa.0.2, i64 %indvars.iv
  tail call void @_ZN11regboundobj7destroyEv(%class.regboundobj* nonnull %arrayidx.i63) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.end33, label %for.body29

for.end33:                                        ; preds = %for.body29, %entry, %do.body.preheader, %for.cond26.preheader
  %rboundarp.sroa.0.0.lcssa100105 = phi %class.regboundobj* [ %rboundarp.sroa.0.2, %for.cond26.preheader ], [ %rboundarp.sroa.0.2, %do.body.preheader ], [ %0, %entry ], [ %rboundarp.sroa.0.2, %for.body29 ]
  %13 = bitcast %class.regboundobj* %rboundarp.sroa.0.0.lcssa100105 to i8*
  tail call void @free(i8* %13) #20
  ret void
}

; Function Attrs: optsize
define dso_local void @_ZN9regmngobj14enlargeregionsEv(%class.regmngobj* %this) local_unnamed_addr #0 align 2 {
entry:
  %radiuscoef = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 11
  %0 = load float, float* %radiuscoef, align 8, !tbaa !46
  %conv = fpext float %0 to double
  %mul = fmul double %conv, 1.070000e+02
  %mul4 = fmul double %mul, %conv
  %conv5 = fptosi double %mul4 to i32
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18
  %elemqu = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 4
  %1 = load i32, i32* %elemqu, align 8, !tbaa !25
  %cmp46 = icmp sgt i32 %1, 0
  br i1 %cmp46, label %for.body.lr.ph, label %for.end22

for.body.lr.ph:                                   ; preds = %entry
  %ep.i = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i64 0, i32 0
  %2 = load %class.regobj**, %class.regobj*** %ep.i, align 8, !tbaa !17
  %3 = zext i32 %1 to i64
  br label %for.body

for.cond7.preheader:                              ; preds = %for.body
  br i1 %cmp46, label %for.body11.lr.ph, label %for.end22

for.body11.lr.ph:                                 ; preds = %for.cond7.preheader
  %ep.i35 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i64 0, i32 0
  %4 = load %class.regobj**, %class.regobj*** %ep.i35, align 8, !tbaa !17
  %wide.trip.count = zext i32 %1 to i64
  br label %for.body11

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv49 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next50, %for.body ]
  %arrayidx.i = getelementptr inbounds %class.regobj*, %class.regobj** %2, i64 %indvars.iv49
  %5 = load %class.regobj*, %class.regobj** %arrayidx.i, align 8, !tbaa !26
  %flredefine = getelementptr inbounds %class.regobj, %class.regobj* %5, i64 0, i32 2
  store i8 1, i8* %flredefine, align 1, !tbaa !52
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %cmp = icmp ult i64 %indvars.iv.next50, %3
  br i1 %cmp, label %for.body, label %for.cond7.preheader

for.body11:                                       ; preds = %for.inc20, %for.body11.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body11.lr.ph ], [ %indvars.iv.next, %for.inc20 ]
  %arrayidx.i37 = getelementptr inbounds %class.regobj*, %class.regobj** %4, i64 %indvars.iv
  %6 = load %class.regobj*, %class.regobj** %arrayidx.i37, align 8, !tbaa !26
  %square = getelementptr inbounds %class.regobj, %class.regobj* %6, i64 0, i32 4
  %7 = load i32, i32* %square, align 8, !tbaa !36
  %cmp14 = icmp slt i32 %7, %conv5
  br i1 %cmp14, label %if.then, label %for.inc20

if.then:                                          ; preds = %for.body11
  %flredefine17 = getelementptr inbounds %class.regobj, %class.regobj* %6, i64 0, i32 2
  store i8 0, i8* %flredefine17, align 1, !tbaa !52
  %flexist = getelementptr inbounds %class.regobj, %class.regobj* %6, i64 0, i32 1
  store i8 0, i8* %flexist, align 4, !tbaa !40
  br label %for.inc20

for.inc20:                                        ; preds = %for.body11, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.end22, label %for.body11

for.end22:                                        ; preds = %for.inc20, %entry, %for.cond7.preheader
  tail call void @_ZN9regmngobj13deleteregionsEv(%class.regmngobj* nonnull %this) #19
  %regionmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 6
  %8 = bitcast %class.regobj*** %regionmapp to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !27
  %mapsizex = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 16
  %10 = load i32, i32* %mapsizex, align 4, !tbaa !30
  %mapsizey = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 17
  %11 = load i32, i32* %mapsizey, align 8, !tbaa !31
  %mul23 = mul nsw i32 %11, %10
  %conv24 = sext i32 %mul23 to i64
  %mul25 = shl nsw i64 %conv24, 3
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 %mul25, i1 false)
  tail call void @_ZN9regmngobj15redefineregionsEv(%class.regmngobj* nonnull %this) #19
  ret void
}

; Function Attrs: optsize
define dso_local void @_ZN9regmngobj18enlargeneighborsesEi(%class.regmngobj* %this, i32 %critical) local_unnamed_addr #0 align 2 {
entry:
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18
  %elemqu = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 4
  %0 = load i32, i32* %elemqu, align 8, !tbaa !25
  %cmp149 = icmp sgt i32 %0, 0
  br i1 %cmp149, label %for.body.lr.ph, label %for.cond53.preheader

for.body.lr.ph:                                   ; preds = %entry
  %ep.i = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i64 0, i32 0
  %1 = load %class.regobj**, %class.regobj*** %ep.i, align 8, !tbaa !17
  %2 = zext i32 %0 to i64
  br label %for.body

for.cond3.preheader:                              ; preds = %for.body
  br i1 %cmp149, label %for.body7.lr.ph, label %for.cond53.preheader

for.body7.lr.ph:                                  ; preds = %for.cond3.preheader
  %ep.i106 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i64 0, i32 0
  %3 = load %class.regobj**, %class.regobj*** %ep.i106, align 8, !tbaa !17
  %wide.trip.count159 = zext i32 %0 to i64
  br label %for.body7

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv161 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next162, %for.body ]
  %arrayidx.i = getelementptr inbounds %class.regobj*, %class.regobj** %1, i64 %indvars.iv161
  %4 = load %class.regobj*, %class.regobj** %arrayidx.i, align 8, !tbaa !26
  %flredefine = getelementptr inbounds %class.regobj, %class.regobj* %4, i64 0, i32 2
  store i8 0, i8* %flredefine, align 1, !tbaa !52
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1
  %cmp = icmp ult i64 %indvars.iv.next162, %2
  br i1 %cmp, label %for.body, label %for.cond3.preheader

for.cond30.preheader:                             ; preds = %for.inc27
  br i1 %cmp149, label %for.body34.lr.ph, label %for.cond53.preheader

for.body34.lr.ph:                                 ; preds = %for.cond30.preheader
  %ep.i126 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i64 0, i32 0
  %5 = load %class.regobj**, %class.regobj*** %ep.i126, align 8, !tbaa !17
  %wide.trip.count = zext i32 %0 to i64
  br label %for.body34

for.body7:                                        ; preds = %for.inc27, %for.body7.lr.ph
  %indvars.iv157 = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next158, %for.inc27 ]
  %arrayidx.i108 = getelementptr inbounds %class.regobj*, %class.regobj** %3, i64 %indvars.iv157
  %6 = load %class.regobj*, %class.regobj** %arrayidx.i108, align 8, !tbaa !26
  %square = getelementptr inbounds %class.regobj, %class.regobj* %6, i64 0, i32 4
  %7 = load i32, i32* %square, align 8, !tbaa !36
  %cmp10 = icmp slt i32 %7, %critical
  br i1 %cmp10, label %if.then, label %for.inc27

if.then:                                          ; preds = %for.body7
  %flexist = getelementptr inbounds %class.regobj, %class.regobj* %6, i64 0, i32 1
  store i8 0, i8* %flexist, align 4, !tbaa !40
  %elemqu16 = getelementptr inbounds %class.regobj, %class.regobj* %6, i64 0, i32 9, i32 1
  %8 = load i32, i32* %elemqu16, align 8, !tbaa !53
  %cmp17145 = icmp sgt i32 %8, 0
  br i1 %cmp17145, label %for.body18.lr.ph, label %for.inc27

for.body18.lr.ph:                                 ; preds = %if.then
  %ep.i129 = getelementptr inbounds %class.regobj, %class.regobj* %6, i64 0, i32 9, i32 0
  %9 = load %class.regobj**, %class.regobj*** %ep.i129, align 8, !tbaa !54
  %10 = zext i32 %8 to i64
  br label %for.body18

for.body18:                                       ; preds = %for.body18.lr.ph, %for.body18
  %indvars.iv155 = phi i64 [ 0, %for.body18.lr.ph ], [ %indvars.iv.next156, %for.body18 ]
  %arrayidx.i131 = getelementptr inbounds %class.regobj*, %class.regobj** %9, i64 %indvars.iv155
  %11 = load %class.regobj*, %class.regobj** %arrayidx.i131, align 8, !tbaa !26
  %flredefine23 = getelementptr inbounds %class.regobj, %class.regobj* %11, i64 0, i32 2
  store i8 1, i8* %flredefine23, align 1, !tbaa !52
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1
  %cmp17 = icmp ult i64 %indvars.iv.next156, %10
  br i1 %cmp17, label %for.body18, label %for.inc27

for.inc27:                                        ; preds = %for.body18, %if.then, %for.body7
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1
  %exitcond160 = icmp eq i64 %indvars.iv.next158, %wide.trip.count159
  br i1 %exitcond160, label %for.cond30.preheader, label %for.body7

for.cond53.preheader:                             ; preds = %for.inc50, %entry, %for.cond3.preheader, %for.cond30.preheader
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 13
  %12 = load i32, i32* %mapmaxy, align 8, !tbaa !33
  %cmp54140 = icmp slt i32 %12, 0
  br i1 %cmp54140, label %for.end77, label %for.cond56.preheader.lr.ph

for.cond56.preheader.lr.ph:                       ; preds = %for.cond53.preheader
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 12
  %13 = load i32, i32* %mapmaxx, align 4, !tbaa !32
  %cmp57138 = icmp slt i32 %13, 0
  %regionmapp.i114 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 6
  %mapsizex.i115 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 16
  %14 = zext i32 %13 to i64
  br label %for.cond56.preheader

for.body34:                                       ; preds = %for.inc50, %for.body34.lr.ph
  %indvars.iv153 = phi i64 [ 0, %for.body34.lr.ph ], [ %indvars.iv.next154, %for.inc50 ]
  %arrayidx.i128 = getelementptr inbounds %class.regobj*, %class.regobj** %5, i64 %indvars.iv153
  %15 = load %class.regobj*, %class.regobj** %arrayidx.i128, align 8, !tbaa !26
  %flredefine37 = getelementptr inbounds %class.regobj, %class.regobj* %15, i64 0, i32 2
  %16 = load i8, i8* %flredefine37, align 1, !tbaa !52, !range !45
  %tobool = icmp eq i8 %16, 0
  br i1 %tobool, label %for.inc50, label %if.then38

if.then38:                                        ; preds = %for.body34
  %flexist41 = getelementptr inbounds %class.regobj, %class.regobj* %15, i64 0, i32 1
  %17 = load i8, i8* %flexist41, align 4, !tbaa !40, !range !45
  %cmp43 = icmp eq i8 %17, 0
  br i1 %cmp43, label %if.then44, label %for.inc50

if.then44:                                        ; preds = %if.then38
  store i8 0, i8* %flredefine37, align 1, !tbaa !52
  br label %for.inc50

for.inc50:                                        ; preds = %for.body34, %if.then44, %if.then38
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1
  %exitcond = icmp eq i64 %indvars.iv.next154, %wide.trip.count
  br i1 %exitcond, label %for.cond53.preheader, label %for.body34

for.cond56.preheader:                             ; preds = %for.inc75, %for.cond56.preheader.lr.ph
  %y.0141 = phi i32 [ 0, %for.cond56.preheader.lr.ph ], [ %inc76, %for.inc75 ]
  br i1 %cmp57138, label %for.inc75, label %for.body58.lr.ph

for.body58.lr.ph:                                 ; preds = %for.cond56.preheader
  %18 = load i32, i32* %mapsizex.i115, align 4, !tbaa !30
  %mul.i116 = mul nsw i32 %18, %y.0141
  %19 = sext i32 %mul.i116 to i64
  br label %for.body58

for.body58:                                       ; preds = %for.inc72, %for.body58.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc72 ], [ 0, %for.body58.lr.ph ]
  %20 = load %class.regobj**, %class.regobj*** %regionmapp.i114, align 8, !tbaa !27
  %21 = add nsw i64 %indvars.iv, %19
  %arrayidx.i119 = getelementptr inbounds %class.regobj*, %class.regobj** %20, i64 %21
  %22 = load %class.regobj*, %class.regobj** %arrayidx.i119, align 8, !tbaa !26
  %tobool60 = icmp eq %class.regobj* %22, null
  br i1 %tobool60, label %for.inc72, label %if.then61

if.then61:                                        ; preds = %for.body58
  %flredefine62 = getelementptr inbounds %class.regobj, %class.regobj* %22, i64 0, i32 2
  %23 = load i8, i8* %flredefine62, align 1, !tbaa !52, !range !45
  %tobool63 = icmp eq i8 %23, 0
  br i1 %tobool63, label %lor.lhs.false, label %if.then68

lor.lhs.false:                                    ; preds = %if.then61
  %flexist64 = getelementptr inbounds %class.regobj, %class.regobj* %22, i64 0, i32 1
  %24 = load i8, i8* %flexist64, align 4, !tbaa !40, !range !45
  %cmp67 = icmp eq i8 %24, 0
  br i1 %cmp67, label %if.then68, label %for.inc72

if.then68:                                        ; preds = %if.then61, %lor.lhs.false
  store %class.regobj* null, %class.regobj** %arrayidx.i119, align 8, !tbaa !26
  br label %for.inc72

for.inc72:                                        ; preds = %for.body58, %if.then68, %lor.lhs.false
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp57 = icmp ult i64 %indvars.iv, %14
  br i1 %cmp57, label %for.body58, label %for.inc75

for.inc75:                                        ; preds = %for.inc72, %for.cond56.preheader
  %inc76 = add nuw nsw i32 %y.0141, 1
  %cmp54 = icmp slt i32 %y.0141, %12
  br i1 %cmp54, label %for.cond56.preheader, label %for.end77

for.end77:                                        ; preds = %for.inc75, %for.cond53.preheader
  tail call void @_ZN9regmngobj13deleteregionsEv(%class.regmngobj* nonnull %this) #19
  tail call void @_ZN9regmngobj15redefineregionsEv(%class.regmngobj* nonnull %this) #19
  ret void
}

; Function Attrs: optsize
define dso_local void @_ZN9regmngobj13createregionsEi(%class.regmngobj* %this, i32 %regionl) local_unnamed_addr #0 align 2 {
entry:
  %regionmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 6
  %0 = bitcast %class.regobj*** %regionmapp to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !27
  %mapsizex = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 16
  %2 = load i32, i32* %mapsizex, align 4, !tbaa !30
  %mapsizey = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 17
  %3 = load i32, i32* %mapsizey, align 8, !tbaa !31
  %mul = mul nsw i32 %3, %2
  %conv = sext i32 %mul to i64
  %mul2 = shl nsw i64 %conv, 3
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 %mul2, i1 false)
  %4 = icmp sgt i32 %regionl, 6
  %spec.select = select i1 %4, i32 %regionl, i32 6
  %5 = load i32, i32* %mapsizex, align 4, !tbaa !30
  %div = sdiv i32 %5, 5
  %cmp4 = icmp sgt i32 %spec.select, %div
  %regionl.addr.1 = select i1 %cmp4, i32 %div, i32 %spec.select
  %conv9 = sitofp i32 %regionl.addr.1 to float
  %div10 = fdiv float %conv9, 2.000000e+01
  %radiuscoef = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 11
  store float %div10, float* %radiuscoef, align 8, !tbaa !46
  %mul12 = fmul float %div10, 1.000000e+01
  %conv13 = fptosi float %mul12 to i32
  %regionradius = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 9
  store i32 %conv13, i32* %regionradius, align 8, !tbaa !55
  %mul16 = mul nsw i32 %conv13, %conv13
  %regionradius2 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 10
  store i32 %mul16, i32* %regionradius2, align 4, !tbaa !56
  tail call void @_ZN9regmngobj13defineregionsEv(%class.regmngobj* %this) #19
  tail call void @_ZN9regmngobj14enlargeregionsEv(%class.regmngobj* %this) #19
  %6 = load float, float* %radiuscoef, align 8, !tbaa !46
  %mul18 = fmul float %6, 1.900000e+01
  %conv19 = fptosi float %mul18 to i32
  store i32 %conv19, i32* %regionradius, align 8, !tbaa !55
  %mul23 = mul nsw i32 %conv19, %conv19
  store i32 %mul23, i32* %regionradius2, align 4, !tbaa !56
  tail call void @_ZN9regmngobj10addregionsEv(%class.regmngobj* %this) #19
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 12
  %7 = load i32, i32* %mapmaxx, align 4, !tbaa !32
  %mul25 = mul nsw i32 %7, 5
  store i32 %mul25, i32* %regionradius, align 8, !tbaa !55
  %mul29 = mul nsw i32 %mul25, %mul25
  store i32 %mul29, i32* %regionradius2, align 4, !tbaa !56
  tail call void @_ZN9regmngobj19defineneighborhood1Ev(%class.regmngobj* %this) #19
  %8 = load float, float* %radiuscoef, align 8, !tbaa !46
  %mul32 = fmul float %8, 7.500000e+01
  %mul34 = fmul float %8, %mul32
  %conv35 = fptosi float %mul34 to i32
  tail call void @_ZN9regmngobj18enlargeneighborsesEi(%class.regmngobj* %this, i32 %conv35) #19
  tail call void @_ZN9regmngobj19defineneighborhood1Ev(%class.regmngobj* %this) #19
  %9 = load float, float* %radiuscoef, align 8, !tbaa !46
  %conv37 = fpext float %9 to double
  %mul38 = fmul double %conv37, 7.500000e+01
  %mul41 = fmul double %mul38, %conv37
  %conv42 = fptosi double %mul41 to i32
  tail call void @_ZN9regmngobj18enlargeneighborsesEi(%class.regmngobj* %this, i32 %conv42) #19
  tail call void @_ZN9regmngobj13addallregionsEv(%class.regmngobj* %this) #19
  tail call void @_ZN9regmngobj13deleteregionsEv(%class.regmngobj* %this) #19
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 13
  %10 = load i32, i32* %mapmaxy, align 8, !tbaa !33
  %cmp43115 = icmp sgt i32 %10, 0
  br i1 %cmp43115, label %for.cond44.preheader.lr.ph, label %for.end57

for.cond44.preheader.lr.ph:                       ; preds = %entry
  %landscapemapp.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 7
  %.pre = load i32, i32* %mapmaxx, align 4, !tbaa !32
  br label %for.cond44.preheader

for.cond44.preheader:                             ; preds = %for.cond44.preheader.lr.ph, %for.inc55
  %11 = phi i32 [ %.pre, %for.cond44.preheader.lr.ph ], [ %21, %for.inc55 ]
  %12 = phi i32 [ %.pre, %for.cond44.preheader.lr.ph ], [ %22, %for.inc55 ]
  %y.0116 = phi i32 [ 0, %for.cond44.preheader.lr.ph ], [ %inc56, %for.inc55 ]
  %cmp46113 = icmp sgt i32 %12, 0
  br i1 %cmp46113, label %for.body47, label %for.inc55

for.body47:                                       ; preds = %for.cond44.preheader, %for.inc
  %13 = phi i32 [ %20, %for.inc ], [ %11, %for.cond44.preheader ]
  %x.0114 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond44.preheader ]
  %14 = load %class.regobj**, %class.regobj*** %regionmapp, align 8, !tbaa !27
  %15 = load i32, i32* %mapsizex, align 4, !tbaa !30
  %mul.i = mul nsw i32 %15, %y.0116
  %add.i = add nsw i32 %mul.i, %x.0114
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds %class.regobj*, %class.regobj** %14, i64 %idxprom.i
  %16 = load %class.regobj*, %class.regobj** %arrayidx.i, align 8, !tbaa !26
  %cmp48 = icmp eq %class.regobj* %16, null
  br i1 %cmp48, label %if.then49, label %for.inc

if.then49:                                        ; preds = %for.body47
  %17 = load i8*, i8** %landscapemapp.i, align 8, !tbaa !28
  %arrayidx.i104 = getelementptr inbounds i8, i8* %17, i64 %idxprom.i
  %18 = load i8, i8* %arrayidx.i104, align 1, !tbaa !29
  %idxprom = zext i8 %18 to i64
  %arrayidx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 8, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1, !tbaa !35, !range !45
  %tobool = icmp eq i8 %19, 0
  br i1 %tobool, label %for.inc, label %if.then51

if.then51:                                        ; preds = %if.then49
  %call52 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0)) #19
  %.pre120 = load i32, i32* %mapmaxx, align 4, !tbaa !32
  br label %for.inc

for.inc:                                          ; preds = %if.then49, %for.body47, %if.then51
  %20 = phi i32 [ %13, %if.then49 ], [ %13, %for.body47 ], [ %.pre120, %if.then51 ]
  %inc = add nuw nsw i32 %x.0114, 1
  %cmp46 = icmp slt i32 %inc, %20
  br i1 %cmp46, label %for.body47, label %for.inc55

for.inc55:                                        ; preds = %for.inc, %for.cond44.preheader
  %21 = phi i32 [ %11, %for.cond44.preheader ], [ %20, %for.inc ]
  %22 = phi i32 [ %12, %for.cond44.preheader ], [ %20, %for.inc ]
  %inc56 = add nuw nsw i32 %y.0116, 1
  %23 = load i32, i32* %mapmaxy, align 8, !tbaa !33
  %cmp43 = icmp slt i32 %inc56, %23
  br i1 %cmp43, label %for.cond44.preheader, label %for.end57

for.end57:                                        ; preds = %for.inc55, %entry
  tail call void @_ZN9regmngobj19defineneighborhood1Ev(%class.regmngobj* nonnull %this) #19
  tail call void @_ZN9regmngobj20definemiddleregpointEv(%class.regmngobj* nonnull %this) #19
  tail call void @_ZN9regmngobj20normalizemiddlepointEv(%class.regmngobj* nonnull %this) #19
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18
  %elemqu = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 4
  %24 = load i32, i32* %elemqu, align 8, !tbaa !25
  %cmp59110 = icmp sgt i32 %24, 0
  br i1 %cmp59110, label %for.body60.lr.ph, label %for.end65

for.body60.lr.ph:                                 ; preds = %for.end57
  %ep.i105 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i64 0, i32 0
  %25 = load %class.regobj**, %class.regobj*** %ep.i105, align 8, !tbaa !17
  %26 = zext i32 %24 to i64
  br label %for.body60

for.body60:                                       ; preds = %for.body60.lr.ph, %for.body60
  %indvars.iv118 = phi i64 [ 0, %for.body60.lr.ph ], [ %indvars.iv.next119, %for.body60 ]
  %arrayidx.i107 = getelementptr inbounds %class.regobj*, %class.regobj** %25, i64 %indvars.iv118
  %27 = load %class.regobj*, %class.regobj** %arrayidx.i107, align 8, !tbaa !26
  %flredefine = getelementptr inbounds %class.regobj, %class.regobj* %27, i64 0, i32 2
  store i8 1, i8* %flredefine, align 1, !tbaa !52
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  %cmp59 = icmp ult i64 %indvars.iv.next119, %26
  br i1 %cmp59, label %for.body60, label %for.end65

for.end65:                                        ; preds = %for.body60, %for.end57
  %28 = load i8*, i8** %0, align 8, !tbaa !27
  %29 = load i32, i32* %mapsizex, align 4, !tbaa !30
  %30 = load i32, i32* %mapsizey, align 8, !tbaa !31
  %mul69 = mul nsw i32 %30, %29
  %conv70 = sext i32 %mul69 to i64
  %mul71 = shl nsw i64 %conv70, 3
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 %mul71, i1 false)
  tail call void @_ZN9regmngobj15redefineregionsEv(%class.regmngobj* nonnull %this) #19
  %31 = load i32, i32* %elemqu, align 8, !tbaa !25
  %cmp13.i = icmp sgt i32 %31, 0
  br i1 %cmp13.i, label %for.body.lr.ph.i, label %_ZN9regmngobj17foundemptyregionsEv.exit

for.body.lr.ph.i:                                 ; preds = %for.end65
  %ep.i.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 0
  %32 = load %class.regobj**, %class.regobj*** %ep.i.i, align 8, !tbaa !17
  %33 = zext i32 %31 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %arrayidx.i.i = getelementptr inbounds %class.regobj*, %class.regobj** %32, i64 %indvars.iv.i
  %34 = load %class.regobj*, %class.regobj** %arrayidx.i.i, align 8, !tbaa !26
  %square.i = getelementptr inbounds %class.regobj, %class.regobj* %34, i64 0, i32 4
  %35 = load i32, i32* %square.i, align 8, !tbaa !36
  %cmp3.i = icmp eq i32 %35, 0
  br i1 %cmp3.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %flexist.i = getelementptr inbounds %class.regobj, %class.regobj* %34, i64 0, i32 1
  store i8 0, i8* %flexist.i, align 4, !tbaa !40
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond = icmp eq i64 %indvars.iv.next.i, %33
  br i1 %exitcond, label %_ZN9regmngobj17foundemptyregionsEv.exit, label %for.body.i

_ZN9regmngobj17foundemptyregionsEv.exit:          ; preds = %for.inc.i, %for.end65
  tail call void @_ZN9regmngobj13deleteregionsEv(%class.regmngobj* %this) #19
  tail call void @_ZN9regmngobj13addallregionsEv(%class.regmngobj* %this) #19
  tail call void @_ZN9regmngobj19defineneighborhood1Ev(%class.regmngobj* %this) #19
  tail call void @_ZN9regmngobj20definemiddleregpointEv(%class.regmngobj* %this) #19
  tail call void @_ZN9regmngobj20normalizemiddlepointEv(%class.regmngobj* %this) #19
  %36 = load i32, i32* %elemqu, align 8, !tbaa !25
  %cmp75108 = icmp sgt i32 %36, 0
  br i1 %cmp75108, label %for.body76.lr.ph, label %for.end81

for.body76.lr.ph:                                 ; preds = %_ZN9regmngobj17foundemptyregionsEv.exit
  %regfillnum = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 5
  %37 = load i32, i32* %regfillnum, align 8, !tbaa !14
  %ep.i = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i64 0, i32 0
  %38 = load %class.regobj**, %class.regobj*** %ep.i, align 8, !tbaa !17
  %39 = zext i32 %36 to i64
  br label %for.body76

for.body76:                                       ; preds = %for.body76.lr.ph, %for.body76
  %indvars.iv = phi i64 [ 0, %for.body76.lr.ph ], [ %indvars.iv.next, %for.body76 ]
  %arrayidx.i99 = getelementptr inbounds %class.regobj*, %class.regobj** %38, i64 %indvars.iv
  %40 = load %class.regobj*, %class.regobj** %arrayidx.i99, align 8, !tbaa !26
  %fillnum = getelementptr inbounds %class.regobj, %class.regobj* %40, i64 0, i32 7
  store i32 %37, i32* %fillnum, align 8, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp75 = icmp ult i64 %indvars.iv.next, %39
  br i1 %cmp75, label %for.body76, label %for.end81

for.end81:                                        ; preds = %for.body76, %_ZN9regmngobj17foundemptyregionsEv.exit
  ret void
}

; Function Attrs: nounwind optsize
define dso_local void @_ZN9regmngobj19defineneighborhood1Ev(%class.regmngobj* nocapture readonly %this) local_unnamed_addr #8 align 2 {
entry:
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18
  %elemqu = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 4
  %0 = load i32, i32* %elemqu, align 8, !tbaa !25
  %cmp139 = icmp sgt i32 %0, 0
  br i1 %cmp139, label %for.body.lr.ph, label %for.cond13.preheader

for.body.lr.ph:                                   ; preds = %entry
  %ep.i = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i64 0, i32 0
  %1 = load %class.regobj**, %class.regobj*** %ep.i, align 8, !tbaa !17
  %2 = zext i32 %0 to i64
  br label %for.body

for.cond3.preheader:                              ; preds = %for.body
  br i1 %cmp139, label %for.body7.lr.ph, label %for.cond13.preheader

for.body7.lr.ph:                                  ; preds = %for.cond3.preheader
  %ep.i96 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i64 0, i32 0
  %3 = load %class.regobj**, %class.regobj*** %ep.i96, align 8, !tbaa !17
  %wide.trip.count = zext i32 %0 to i64
  br label %for.body7

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv151 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next152, %for.body ]
  %arrayidx.i = getelementptr inbounds %class.regobj*, %class.regobj** %1, i64 %indvars.iv151
  %4 = load %class.regobj*, %class.regobj** %arrayidx.i, align 8, !tbaa !26
  %index = getelementptr inbounds %class.regobj, %class.regobj* %4, i64 0, i32 6
  %5 = trunc i64 %indvars.iv151 to i32
  store i32 %5, i32* %index, align 4, !tbaa !58
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1
  %cmp = icmp ult i64 %indvars.iv.next152, %2
  br i1 %cmp, label %for.body, label %for.cond3.preheader

for.cond13.preheader:                             ; preds = %for.body7, %entry, %for.cond3.preheader
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 13
  %6 = load i32, i32* %mapmaxy, align 8, !tbaa !33
  %cmp14134 = icmp sgt i32 %6, 1
  br i1 %cmp14134, label %for.cond16.preheader.lr.ph, label %for.end66

for.cond16.preheader.lr.ph:                       ; preds = %for.cond13.preheader
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 12
  %regionmapp.i115 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 6
  %mapsizex.i116 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 16
  %.pre = load i32, i32* %mapmaxx, align 4, !tbaa !32
  br label %for.cond16.preheader

for.body7:                                        ; preds = %for.body7, %for.body7.lr.ph
  %indvars.iv148 = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next149, %for.body7 ]
  %arrayidx.i98 = getelementptr inbounds %class.regobj*, %class.regobj** %3, i64 %indvars.iv148
  %7 = load %class.regobj*, %class.regobj** %arrayidx.i98, align 8, !tbaa !26
  %elemqu.i109 = getelementptr inbounds %class.regobj, %class.regobj* %7, i64 0, i32 9, i32 1
  store i32 0, i32* %elemqu.i109, align 8, !tbaa !59
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1
  %exitcond150 = icmp eq i64 %indvars.iv.next149, %wide.trip.count
  br i1 %exitcond150, label %for.cond13.preheader, label %for.body7

for.cond16.preheader:                             ; preds = %for.cond16.preheader.lr.ph, %for.inc64
  %8 = phi i32 [ %.pre, %for.cond16.preheader.lr.ph ], [ %31, %for.inc64 ]
  %indvars.iv145 = phi i32 [ 3, %for.cond16.preheader.lr.ph ], [ %indvars.iv.next146, %for.inc64 ]
  %y.0135 = phi i32 [ 1, %for.cond16.preheader.lr.ph ], [ %inc65, %for.inc64 ]
  %cmp18131 = icmp sgt i32 %8, 1
  br i1 %cmp18131, label %for.body19.lr.ph, label %for.inc64

for.body19.lr.ph:                                 ; preds = %for.cond16.preheader
  %sub21 = add nsw i32 %y.0135, -1
  br label %for.body19

for.body19:                                       ; preds = %for.body19.lr.ph, %for.inc61
  %indvars.iv143 = phi i32 [ 3, %for.body19.lr.ph ], [ %indvars.iv.next144, %for.inc61 ]
  %x.0132 = phi i32 [ 1, %for.body19.lr.ph ], [ %inc62, %for.inc61 ]
  %9 = load %class.regobj**, %class.regobj*** %regionmapp.i115, align 8, !tbaa !27
  %10 = load i32, i32* %mapsizex.i116, align 4, !tbaa !30
  %mul.i117 = mul nsw i32 %10, %y.0135
  %add.i118 = add nsw i32 %mul.i117, %x.0132
  %idxprom.i119 = sext i32 %add.i118 to i64
  %arrayidx.i120 = getelementptr inbounds %class.regobj*, %class.regobj** %9, i64 %idxprom.i119
  %11 = load %class.regobj*, %class.regobj** %arrayidx.i120, align 8, !tbaa !26
  %12 = ptrtoint %class.regobj* %11 to i64
  %tobool = icmp eq %class.regobj* %11, null
  br i1 %tobool, label %for.inc61, label %if.end

if.end:                                           ; preds = %for.body19
  %sub25 = add nsw i32 %x.0132, -1
  %elemqu37 = getelementptr inbounds %class.regobj, %class.regobj* %11, i64 0, i32 9, i32 1
  %nb1ar36 = getelementptr inbounds %class.regobj, %class.regobj* %11, i64 0, i32 9
  %ep.i110 = getelementptr inbounds %class.flexarray, %class.flexarray* %nb1ar36, i64 0, i32 0
  %maxelemqu.i100 = getelementptr inbounds %class.regobj, %class.regobj* %11, i64 0, i32 9, i32 2
  br label %for.body24

for.body24:                                       ; preds = %if.end, %for.inc58
  %y1.0130 = phi i32 [ %sub21, %if.end ], [ %inc59, %for.inc58 ]
  br label %for.body29

for.body29:                                       ; preds = %for.body24, %for.inc55
  %x1.0129 = phi i32 [ %sub25, %for.body24 ], [ %inc56, %for.inc55 ]
  %13 = load %class.regobj**, %class.regobj*** %regionmapp.i115, align 8, !tbaa !27
  %14 = load i32, i32* %mapsizex.i116, align 4, !tbaa !30
  %mul.i = mul nsw i32 %14, %y1.0130
  %add.i = add nsw i32 %mul.i, %x1.0129
  %idxprom.i113 = sext i32 %add.i to i64
  %arrayidx.i114 = getelementptr inbounds %class.regobj*, %class.regobj** %13, i64 %idxprom.i113
  %15 = load %class.regobj*, %class.regobj** %arrayidx.i114, align 8, !tbaa !26
  %16 = ptrtoint %class.regobj* %15 to i64
  %tobool31 = icmp eq %class.regobj* %15, null
  %cmp33 = icmp eq %class.regobj* %11, %15
  %or.cond = or i1 %tobool31, %cmp33
  br i1 %or.cond, label %for.inc55, label %for.cond35.preheader

for.cond35.preheader:                             ; preds = %for.body29
  %17 = load i32, i32* %elemqu37, align 8, !tbaa !53
  %cmp38127 = icmp sgt i32 %17, 0
  br i1 %cmp38127, label %for.body39.lr.ph, label %if.end50.critedge

for.body39.lr.ph:                                 ; preds = %for.cond35.preheader
  %18 = load %class.regobj**, %class.regobj*** %ep.i110, align 8, !tbaa !54
  %19 = sext i32 %17 to i64
  br label %for.body39

for.cond35:                                       ; preds = %for.body39
  %cmp38 = icmp slt i64 %indvars.iv.next, %19
  br i1 %cmp38, label %for.body39, label %if.end50.critedge

for.body39:                                       ; preds = %for.body39.lr.ph, %for.cond35
  %indvars.iv = phi i64 [ 0, %for.body39.lr.ph ], [ %indvars.iv.next, %for.cond35 ]
  %arrayidx.i112 = getelementptr inbounds %class.regobj*, %class.regobj** %18, i64 %indvars.iv
  %20 = load %class.regobj*, %class.regobj** %arrayidx.i112, align 8, !tbaa !26
  %cmp42 = icmp eq %class.regobj* %20, %15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp42, label %for.inc55, label %for.cond35

if.end50.critedge:                                ; preds = %for.cond35, %for.cond35.preheader
  %21 = load i32, i32* %maxelemqu.i100, align 4, !tbaa !60
  %cmp.i101 = icmp eq i32 %17, %21
  br i1 %cmp.i101, label %if.then.i103, label %_ZN9flexarrayIP6regobjE3addERKS1_.exit108

if.then.i103:                                     ; preds = %if.end50.critedge
  tail call void @_ZN9flexarrayIP6regobjE8doublingEb(%class.flexarray* nonnull %nb1ar36, i1 true) #19
  %.pre.i102 = load i32, i32* %elemqu37, align 8, !tbaa !59
  br label %_ZN9flexarrayIP6regobjE3addERKS1_.exit108

_ZN9flexarrayIP6regobjE3addERKS1_.exit108:        ; preds = %if.end50.critedge, %if.then.i103
  %22 = phi i32 [ %.pre.i102, %if.then.i103 ], [ %17, %if.end50.critedge ]
  %23 = load %class.regobj**, %class.regobj*** %ep.i110, align 8, !tbaa !54
  %idxprom.i105 = sext i32 %22 to i64
  %arrayidx.i106 = getelementptr inbounds %class.regobj*, %class.regobj** %23, i64 %idxprom.i105
  %24 = bitcast %class.regobj** %arrayidx.i106 to i64*
  store i64 %16, i64* %24, align 8, !tbaa !26
  %inc.i107 = add nsw i32 %22, 1
  store i32 %inc.i107, i32* %elemqu37, align 8, !tbaa !59
  %nb1ar52 = getelementptr inbounds %class.regobj, %class.regobj* %15, i64 0, i32 9
  %elemqu.i = getelementptr inbounds %class.regobj, %class.regobj* %15, i64 0, i32 9, i32 1
  %25 = load i32, i32* %elemqu.i, align 8, !tbaa !59
  %maxelemqu.i = getelementptr inbounds %class.regobj, %class.regobj* %15, i64 0, i32 9, i32 2
  %26 = load i32, i32* %maxelemqu.i, align 4, !tbaa !60
  %cmp.i = icmp eq i32 %25, %26
  br i1 %cmp.i, label %if.then.i, label %_ZN9flexarrayIP6regobjE3addERKS1_.exit

if.then.i:                                        ; preds = %_ZN9flexarrayIP6regobjE3addERKS1_.exit108
  tail call void @_ZN9flexarrayIP6regobjE8doublingEb(%class.flexarray* nonnull %nb1ar52, i1 true) #19
  %.pre.i = load i32, i32* %elemqu.i, align 8, !tbaa !59
  br label %_ZN9flexarrayIP6regobjE3addERKS1_.exit

_ZN9flexarrayIP6regobjE3addERKS1_.exit:           ; preds = %_ZN9flexarrayIP6regobjE3addERKS1_.exit108, %if.then.i
  %27 = phi i32 [ %.pre.i, %if.then.i ], [ %25, %_ZN9flexarrayIP6regobjE3addERKS1_.exit108 ]
  %ep.i93 = getelementptr inbounds %class.flexarray, %class.flexarray* %nb1ar52, i64 0, i32 0
  %28 = load %class.regobj**, %class.regobj*** %ep.i93, align 8, !tbaa !54
  %idxprom.i94 = sext i32 %27 to i64
  %arrayidx.i95 = getelementptr inbounds %class.regobj*, %class.regobj** %28, i64 %idxprom.i94
  %29 = bitcast %class.regobj** %arrayidx.i95 to i64*
  store i64 %12, i64* %29, align 8, !tbaa !26
  %inc.i = add nsw i32 %27, 1
  store i32 %inc.i, i32* %elemqu.i, align 8, !tbaa !59
  br label %for.inc55

for.inc55:                                        ; preds = %for.body39, %for.body29, %_ZN9flexarrayIP6regobjE3addERKS1_.exit
  %inc56 = add nuw i32 %x1.0129, 1
  %exitcond = icmp eq i32 %inc56, %indvars.iv143
  br i1 %exitcond, label %for.inc58, label %for.body29

for.inc58:                                        ; preds = %for.inc55
  %inc59 = add nuw i32 %y1.0130, 1
  %exitcond147 = icmp eq i32 %inc59, %indvars.iv145
  br i1 %exitcond147, label %for.inc61, label %for.body24

for.inc61:                                        ; preds = %for.inc58, %for.body19
  %inc62 = add nuw nsw i32 %x.0132, 1
  %30 = load i32, i32* %mapmaxx, align 4, !tbaa !32
  %cmp18 = icmp slt i32 %inc62, %30
  %indvars.iv.next144 = add nuw i32 %indvars.iv143, 1
  br i1 %cmp18, label %for.body19, label %for.inc64

for.inc64:                                        ; preds = %for.inc61, %for.cond16.preheader
  %31 = phi i32 [ %8, %for.cond16.preheader ], [ %30, %for.inc61 ]
  %inc65 = add nuw nsw i32 %y.0135, 1
  %32 = load i32, i32* %mapmaxy, align 8, !tbaa !33
  %cmp14 = icmp slt i32 %inc65, %32
  %indvars.iv.next146 = add nuw i32 %indvars.iv145, 1
  br i1 %cmp14, label %for.cond16.preheader, label %for.end66

for.end66:                                        ; preds = %for.inc64, %for.cond13.preheader
  ret void
}

; Function Attrs: nofree nounwind optsize
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind optsize
define dso_local void @_ZN9regmngobj20definemiddleregpointEv(%class.regmngobj* nocapture readonly %this) local_unnamed_addr #9 align 2 {
entry:
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18
  %elemqu = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 4
  %0 = load i32, i32* %elemqu, align 8, !tbaa !25
  %cmp102 = icmp sgt i32 %0, 0
  br i1 %cmp102, label %for.body.lr.ph, label %for.cond8.preheader

for.body.lr.ph:                                   ; preds = %entry
  %ep.i = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i64 0, i32 0
  %1 = load %class.regobj**, %class.regobj*** %ep.i, align 8, !tbaa !17
  %2 = zext i32 %0 to i64
  br label %for.body

for.cond8.preheader:                              ; preds = %for.body, %entry
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 13
  %3 = load i32, i32* %mapmaxy, align 8, !tbaa !33
  %cmp999 = icmp slt i32 %3, 0
  br i1 %cmp999, label %for.cond26.preheader, label %for.cond11.preheader.lr.ph

for.cond11.preheader.lr.ph:                       ; preds = %for.cond8.preheader
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 12
  %4 = load i32, i32* %mapmaxx, align 4, !tbaa !32
  %cmp1296 = icmp slt i32 %4, 0
  %regionmapp.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 6
  %mapsizex.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 16
  %5 = zext i32 %4 to i64
  br label %for.cond11.preheader

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv108 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next109, %for.body ]
  %arrayidx.i = getelementptr inbounds %class.regobj*, %class.regobj** %1, i64 %indvars.iv108
  %6 = load %class.regobj*, %class.regobj** %arrayidx.i, align 8, !tbaa !26
  %x3 = getelementptr inbounds %class.regobj, %class.regobj* %6, i64 0, i32 5, i32 0
  store i32 0, i32* %x3, align 4, !tbaa !47
  %y7 = getelementptr inbounds %class.regobj, %class.regobj* %6, i64 0, i32 5, i32 1
  store i32 0, i32* %y7, align 4, !tbaa !48
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  %cmp = icmp ult i64 %indvars.iv.next109, %2
  br i1 %cmp, label %for.body, label %for.cond8.preheader

for.cond11.preheader:                             ; preds = %for.inc23, %for.cond11.preheader.lr.ph
  %y.0100 = phi i32 [ 0, %for.cond11.preheader.lr.ph ], [ %inc24, %for.inc23 ]
  br i1 %cmp1296, label %for.inc23, label %for.body13.lr.ph

for.body13.lr.ph:                                 ; preds = %for.cond11.preheader
  %7 = load %class.regobj**, %class.regobj*** %regionmapp.i, align 8, !tbaa !27
  %8 = load i32, i32* %mapsizex.i, align 4, !tbaa !30
  %mul.i = mul nsw i32 %8, %y.0100
  %9 = sext i32 %mul.i to i64
  br label %for.body13

for.cond26.preheader:                             ; preds = %for.inc23, %for.cond8.preheader
  br i1 %cmp102, label %for.body30.lr.ph, label %for.end56

for.body30.lr.ph:                                 ; preds = %for.cond26.preheader
  %ep.i85 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i64 0, i32 0
  %10 = load %class.regobj**, %class.regobj*** %ep.i85, align 8, !tbaa !17
  %wide.trip.count = zext i32 %0 to i64
  br label %for.body30

for.body13:                                       ; preds = %for.inc20, %for.body13.lr.ph
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %for.inc20 ], [ 0, %for.body13.lr.ph ]
  %11 = add nsw i64 %indvars.iv105, %9
  %arrayidx.i90 = getelementptr inbounds %class.regobj*, %class.regobj** %7, i64 %11
  %12 = load %class.regobj*, %class.regobj** %arrayidx.i90, align 8, !tbaa !26
  %tobool = icmp eq %class.regobj* %12, null
  br i1 %tobool, label %for.inc20, label %if.then

if.then:                                          ; preds = %for.body13
  %x16 = getelementptr inbounds %class.regobj, %class.regobj* %12, i64 0, i32 5, i32 0
  %13 = load i32, i32* %x16, align 4, !tbaa !47
  %14 = trunc i64 %indvars.iv105 to i32
  %add = add nsw i32 %13, %14
  store i32 %add, i32* %x16, align 4, !tbaa !47
  %y18 = getelementptr inbounds %class.regobj, %class.regobj* %12, i64 0, i32 5, i32 1
  %15 = load i32, i32* %y18, align 4, !tbaa !48
  %add19 = add nsw i32 %15, %y.0100
  store i32 %add19, i32* %y18, align 4, !tbaa !48
  br label %for.inc20

for.inc20:                                        ; preds = %for.body13, %if.then
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %cmp12 = icmp ult i64 %indvars.iv105, %5
  br i1 %cmp12, label %for.body13, label %for.inc23

for.inc23:                                        ; preds = %for.inc20, %for.cond11.preheader
  %inc24 = add nuw nsw i32 %y.0100, 1
  %cmp9 = icmp slt i32 %y.0100, %3
  br i1 %cmp9, label %for.cond11.preheader, label %for.cond26.preheader

for.body30:                                       ; preds = %for.inc54, %for.body30.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body30.lr.ph ], [ %indvars.iv.next, %for.inc54 ]
  %arrayidx.i87 = getelementptr inbounds %class.regobj*, %class.regobj** %10, i64 %indvars.iv
  %16 = load %class.regobj*, %class.regobj** %arrayidx.i87, align 8, !tbaa !26
  %square = getelementptr inbounds %class.regobj, %class.regobj* %16, i64 0, i32 4
  %17 = load i32, i32* %square, align 8, !tbaa !36
  %cmp33 = icmp sgt i32 %17, 0
  br i1 %cmp33, label %if.then34, label %for.inc54

if.then34:                                        ; preds = %for.body30
  %x36 = getelementptr inbounds %class.regobj, %class.regobj* %16, i64 0, i32 5, i32 0
  %18 = load i32, i32* %x36, align 4, !tbaa !47
  %conv = sitofp i32 %18 to double
  %conv38 = sitofp i32 %17 to double
  %div = fdiv double %conv, %conv38
  %conv39 = fptrunc double %div to float
  %add.i83 = fadd float %conv39, 5.000000e-01
  %conv.i84 = fptosi float %add.i83 to i32
  store i32 %conv.i84, i32* %x36, align 4, !tbaa !47
  %y44 = getelementptr inbounds %class.regobj, %class.regobj* %16, i64 0, i32 5, i32 1
  %19 = load i32, i32* %y44, align 4, !tbaa !48
  %conv45 = sitofp i32 %19 to double
  %div48 = fdiv double %conv45, %conv38
  %conv49 = fptrunc double %div48 to float
  %add.i = fadd float %conv49, 5.000000e-01
  %conv.i = fptosi float %add.i to i32
  store i32 %conv.i, i32* %y44, align 4, !tbaa !48
  br label %for.inc54

for.inc54:                                        ; preds = %for.body30, %if.then34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.end56, label %for.body30

for.end56:                                        ; preds = %for.inc54, %for.cond26.preheader
  ret void
}

; Function Attrs: optsize
define dso_local void @_ZN9regmngobj20normalizemiddlepointEv(%class.regmngobj* %this) local_unnamed_addr #0 align 2 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #21
  %1 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #21
  %elemqu = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 4
  %2 = load i32, i32* %elemqu, align 8, !tbaa !25
  %cmp18 = icmp sgt i32 %2, 0
  br i1 %cmp18, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ep.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %3 = load %class.regobj**, %class.regobj*** %ep.i, align 8, !tbaa !17
  %arrayidx.i = getelementptr inbounds %class.regobj*, %class.regobj** %3, i64 %indvars.iv
  %4 = load %class.regobj*, %class.regobj** %arrayidx.i, align 8, !tbaa !26
  %x3 = getelementptr inbounds %class.regobj, %class.regobj* %4, i64 0, i32 5, i32 0
  %5 = load i32, i32* %x3, align 4, !tbaa !47
  %y5 = getelementptr inbounds %class.regobj, %class.regobj* %4, i64 0, i32 5, i32 1
  %6 = load i32, i32* %y5, align 4, !tbaa !48
  %call6 = call i1 @_ZN9regmngobj13findfreeplaceEiiRiS0_(%class.regmngobj* nonnull %this, i32 %5, i32 %6, i32* nonnull dereferenceable(4) %x, i32* nonnull dereferenceable(4) %y) #19
  br i1 %call6, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %x, align 4, !tbaa !24
  store i32 %7, i32* %x3, align 4, !tbaa !47
  %8 = load i32, i32* %y, align 4, !tbaa !24
  store i32 %8, i32* %y5, align 4, !tbaa !48
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = load i32, i32* %elemqu, align 8, !tbaa !25
  %10 = sext i32 %9 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %10
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #21
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #21
  ret void
}

; Function Attrs: nounwind optsize
define linkonce_odr dso_local void @_ZN9flexarrayIP6regobjE8doublingEb(%class.flexarray* %this, i1 %flcopy) local_unnamed_addr #8 comdat align 2 {
entry:
  %maxelemqu = getelementptr inbounds %class.flexarray, %class.flexarray* %this, i64 0, i32 2
  %0 = load i32, i32* %maxelemqu, align 4, !tbaa !60
  %shl = shl i32 %0, 1
  %mul = shl i32 %0, 4
  %conv.i = sext i32 %mul to i64
  %call.i = tail call noalias i8* @malloc(i64 %conv.i) #20
  %1 = bitcast %class.flexarray* %this to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !54
  br i1 %flcopy, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv4 = sext i32 %0 to i64
  %mul5 = shl nsw i64 %conv4, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %call.i, i8* align 8 %2, i64 %mul5, i1 false)
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  tail call void @free(i8* %2) #20
  store i8* %call.i, i8** %1, align 8, !tbaa !54
  store i32 %shl, i32* %maxelemqu, align 4, !tbaa !60
  ret void
}

; Function Attrs: nofree norecurse nounwind optsize
define dso_local i32 @_ZN9regmngobj13getregfillnumEv(%class.regmngobj* nocapture %this) local_unnamed_addr #9 align 2 {
entry:
  %regfillnum = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 5
  %0 = load i32, i32* %regfillnum, align 8, !tbaa !14
  %inc = add nsw i32 %0, 1
  %cmp = icmp eq i32 %inc, 1073741824
  %spec.select = select i1 %cmp, i32 1, i32 %inc
  store i32 %spec.select, i32* %regfillnum, align 8, !tbaa !14
  %elemqu = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 4
  %1 = load i32, i32* %elemqu, align 8, !tbaa !25
  %cmp411 = icmp sgt i32 %1, 0
  br i1 %cmp411, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ep.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 18, i32 0
  %2 = load %class.regobj**, %class.regobj*** %ep.i, align 8, !tbaa !17
  %3 = zext i32 %1 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx.i = getelementptr inbounds %class.regobj*, %class.regobj** %2, i64 %indvars.iv
  %4 = load %class.regobj*, %class.regobj** %arrayidx.i, align 8, !tbaa !26
  %fillnum = getelementptr inbounds %class.regobj, %class.regobj* %4, i64 0, i32 7
  store i32 0, i32* %fillnum, align 8, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp4 = icmp ult i64 %indvars.iv.next, %3
  br i1 %cmp4, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret i32 %spec.select
}

; Function Attrs: nofree nounwind optsize
define dso_local void @_ZN6wayobj9addsphereERK8rvectortf(%class.wayobj* nocapture readonly %this, %class.rvectort* nocapture readonly dereferenceable(12) %centerp, float %radius) local_unnamed_addr #11 align 2 {
entry:
  %y3 = getelementptr inbounds %class.rvectort, %class.rvectort* %centerp, i64 0, i32 1
  %0 = load float, float* %y3, align 4, !tbaa !61
  %height2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 7
  %1 = load float, float* %height2, align 4, !tbaa !63
  %cmp = fcmp ult float %0, %1
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sub = fsub float %0, %1
  %2 = fneg float %sub
  %neg = fmul float %sub, %2
  %3 = tail call float @llvm.fmuladd.f32(float %radius, float %radius, float %neg)
  %cmp7 = fcmp ugt float %3, 0.000000e+00
  br i1 %cmp7, label %if.end25.sink.split, label %cleanup

if.else:                                          ; preds = %entry
  %height1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 6
  %4 = load float, float* %height1, align 8, !tbaa !67
  %cmp12 = fcmp ugt float %0, %4
  br i1 %cmp12, label %if.end25, label %if.then13

if.then13:                                        ; preds = %if.else
  %sub17 = fsub float %4, %0
  %5 = fneg float %sub17
  %neg19 = fmul float %sub17, %5
  %6 = tail call float @llvm.fmuladd.f32(float %radius, float %radius, float %neg19)
  %cmp20 = fcmp ugt float %6, 0.000000e+00
  br i1 %cmp20, label %if.end25.sink.split, label %cleanup

if.end25.sink.split:                              ; preds = %if.then13, %if.then
  %.sink = phi float [ %3, %if.then ], [ %6, %if.then13 ]
  %call.i = tail call float @sqrtf(float %.sink) #20
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %if.else
  %radius.addr.0 = phi float [ %radius, %if.else ], [ %call.i, %if.end25.sink.split ]
  %x26 = getelementptr inbounds %class.rvectort, %class.rvectort* %centerp, i64 0, i32 0
  %7 = load float, float* %x26, align 4, !tbaa !68
  %sub27 = fsub float %7, %radius.addr.0
  %cellr = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 13
  %8 = load float, float* %cellr, align 4, !tbaa !69
  %sub28 = fsub float %sub27, %8
  %xcoef1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 9
  %9 = load float, float* %xcoef1, align 4, !tbaa !70
  %xcoef2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 10
  %10 = load float, float* %xcoef2, align 8, !tbaa !71
  %11 = tail call float @llvm.fmuladd.f32(float %sub28, float %9, float %10)
  %conv = fptosi float %11 to i32
  %z = getelementptr inbounds %class.rvectort, %class.rvectort* %centerp, i64 0, i32 2
  %12 = load float, float* %z, align 4, !tbaa !72
  %sub29 = fsub float %12, %radius.addr.0
  %sub31 = fsub float %sub29, %8
  %ycoef1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 11
  %13 = load float, float* %ycoef1, align 4, !tbaa !73
  %ycoef2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 12
  %14 = load float, float* %ycoef2, align 8, !tbaa !74
  %15 = tail call float @llvm.fmuladd.f32(float %sub31, float %13, float %14)
  %conv32 = fptosi float %15 to i32
  %add = fadd float %radius.addr.0, %7
  %add35 = fadd float %add, %8
  %16 = tail call float @llvm.fmuladd.f32(float %add35, float %9, float %10)
  %conv38 = fptosi float %16 to i32
  %add40 = fadd float %radius.addr.0, %12
  %add42 = fadd float %8, %add40
  %17 = tail call float @llvm.fmuladd.f32(float %add42, float %13, float %14)
  %conv45 = fptosi float %17 to i32
  %mapmaxx1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 5
  %18 = load i32, i32* %mapmaxx1, align 4, !tbaa !75
  %cmp46 = icmp slt i32 %18, %conv
  br i1 %cmp46, label %cleanup, label %if.end48

if.end48:                                         ; preds = %if.end25
  %mapmaxy1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 6
  %19 = load i32, i32* %mapmaxy1, align 8, !tbaa !76
  %cmp49 = icmp slt i32 %19, %conv32
  %cmp52 = icmp slt i32 %conv38, 1
  %or.cond = or i1 %cmp52, %cmp49
  %cmp55 = icmp slt i32 %conv45, 1
  %or.cond179 = or i1 %cmp55, %or.cond
  br i1 %or.cond179, label %cleanup, label %if.end57

if.end57:                                         ; preds = %if.end48
  %20 = icmp sgt i32 %conv, 1
  %spec.select = select i1 %20, i32 %conv, i32 1
  %21 = icmp sgt i32 %conv32, 1
  %y1.0 = select i1 %21, i32 %conv32, i32 1
  %cmp65 = icmp slt i32 %18, %conv38
  %spec.select178 = select i1 %cmp65, i32 %18, i32 %conv38
  %cmp70 = icmp slt i32 %19, %conv45
  %y2.0 = select i1 %cmp70, i32 %19, i32 %conv45
  %add75 = fadd float %radius.addr.0, %8
  %mul.i182 = fmul float %add75, %add75
  %cmp77188 = icmp sgt i32 %y1.0, %y2.0
  br i1 %cmp77188, label %cleanup, label %for.cond78.preheader.lr.ph

for.cond78.preheader.lr.ph:                       ; preds = %if.end57
  %cmp79185 = icmp sgt i32 %spec.select, %spec.select178
  %minx = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 0
  %maxx = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 1
  %maplx = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 7
  %miny = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 2
  %maxy = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 3
  %maply = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 8
  %maparp = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 17
  %shift = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 2
  br label %for.cond78.preheader

for.cond78.preheader:                             ; preds = %for.inc114, %for.cond78.preheader.lr.ph
  %y.0189 = phi i32 [ %y1.0, %for.cond78.preheader.lr.ph ], [ %inc115, %for.inc114 ]
  br i1 %cmp79185, label %for.inc114, label %for.body80.lr.ph

for.body80.lr.ph:                                 ; preds = %for.cond78.preheader
  %22 = load float, float* %minx, align 8, !tbaa !77
  %add83 = fadd float %8, %22
  %23 = load float, float* %maxx, align 4, !tbaa !78
  %sub88 = fsub float %23, %22
  %24 = load i32, i32* %maplx, align 4, !tbaa !79
  %conv89 = sitofp i32 %24 to float
  %25 = load float, float* %miny, align 8, !tbaa !80
  %add93 = fadd float %8, %25
  %conv94 = sitofp i32 %y.0189 to float
  %26 = load float, float* %maxy, align 4, !tbaa !81
  %sub98 = fsub float %26, %25
  %mul99 = fmul float %sub98, %conv94
  %27 = load i32, i32* %maply, align 8, !tbaa !82
  %conv100 = sitofp i32 %27 to float
  %div101 = fdiv float %mul99, %conv100
  %add102 = fadd float %add93, %div101
  %sub107 = fsub float %12, %add102
  %mul.i180 = fmul float %sub107, %sub107
  br label %for.body80

for.body80:                                       ; preds = %for.inc, %for.body80.lr.ph
  %x.0186 = phi i32 [ %spec.select, %for.body80.lr.ph ], [ %inc113, %for.inc ]
  %conv84 = sitofp i32 %x.0186 to float
  %mul = fmul float %sub88, %conv84
  %div = fdiv float %mul, %conv89
  %add90 = fadd float %add83, %div
  %sub104 = fsub float %7, %add90
  %mul.i181 = fmul float %sub104, %sub104
  %add109 = fadd float %mul.i181, %mul.i180
  %cmp110 = fcmp olt float %add109, %mul.i182
  br i1 %cmp110, label %if.then111, label %for.inc

if.then111:                                       ; preds = %for.body80
  %28 = load i16*, i16** %maparp, align 8, !tbaa !83
  %29 = load i32, i32* %shift, align 8, !tbaa !84
  %shl = shl i32 %y.0189, %29
  %or = or i32 %shl, %x.0186
  %idxprom = sext i32 %or to i64
  %arrayidx = getelementptr inbounds i16, i16* %28, i64 %idxprom
  %30 = load i16, i16* %arrayidx, align 2, !tbaa !85
  %inc = add i16 %30, 1
  store i16 %inc, i16* %arrayidx, align 2, !tbaa !85
  br label %for.inc

for.inc:                                          ; preds = %for.body80, %if.then111
  %inc113 = add nuw nsw i32 %x.0186, 1
  %cmp79 = icmp slt i32 %x.0186, %spec.select178
  br i1 %cmp79, label %for.body80, label %for.inc114

for.inc114:                                       ; preds = %for.inc, %for.cond78.preheader
  %inc115 = add nuw nsw i32 %y.0189, 1
  %cmp77 = icmp slt i32 %y.0189, %y2.0
  br i1 %cmp77, label %for.cond78.preheader, label %cleanup

cleanup:                                          ; preds = %for.inc114, %if.end57, %if.end48, %if.end25, %if.then13, %if.then
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: nofree nounwind optsize
declare dso_local float @sqrtf(float) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
define dso_local void @_ZN6wayobj12removesphereERK8rvectortf(%class.wayobj* nocapture readonly %this, %class.rvectort* nocapture readonly dereferenceable(12) %centerp, float %radius) local_unnamed_addr #11 align 2 {
entry:
  %y3 = getelementptr inbounds %class.rvectort, %class.rvectort* %centerp, i64 0, i32 1
  %0 = load float, float* %y3, align 4, !tbaa !61
  %height2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 7
  %1 = load float, float* %height2, align 4, !tbaa !63
  %cmp = fcmp ult float %0, %1
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sub = fsub float %0, %1
  %2 = fneg float %sub
  %neg = fmul float %sub, %2
  %3 = tail call float @llvm.fmuladd.f32(float %radius, float %radius, float %neg)
  %cmp7 = fcmp ugt float %3, 0.000000e+00
  br i1 %cmp7, label %if.end25.sink.split, label %cleanup

if.else:                                          ; preds = %entry
  %height1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 6
  %4 = load float, float* %height1, align 8, !tbaa !67
  %cmp12 = fcmp ugt float %0, %4
  br i1 %cmp12, label %if.end25, label %if.then13

if.then13:                                        ; preds = %if.else
  %sub17 = fsub float %4, %0
  %5 = fneg float %sub17
  %neg19 = fmul float %sub17, %5
  %6 = tail call float @llvm.fmuladd.f32(float %radius, float %radius, float %neg19)
  %cmp20 = fcmp ugt float %6, 0.000000e+00
  br i1 %cmp20, label %if.end25.sink.split, label %cleanup

if.end25.sink.split:                              ; preds = %if.then13, %if.then
  %.sink = phi float [ %3, %if.then ], [ %6, %if.then13 ]
  %call.i = tail call float @sqrtf(float %.sink) #20
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %if.else
  %radius.addr.0 = phi float [ %radius, %if.else ], [ %call.i, %if.end25.sink.split ]
  %x26 = getelementptr inbounds %class.rvectort, %class.rvectort* %centerp, i64 0, i32 0
  %7 = load float, float* %x26, align 4, !tbaa !68
  %sub27 = fsub float %7, %radius.addr.0
  %cellr = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 13
  %8 = load float, float* %cellr, align 4, !tbaa !69
  %sub28 = fsub float %sub27, %8
  %xcoef1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 9
  %9 = load float, float* %xcoef1, align 4, !tbaa !70
  %xcoef2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 10
  %10 = load float, float* %xcoef2, align 8, !tbaa !71
  %11 = tail call float @llvm.fmuladd.f32(float %sub28, float %9, float %10)
  %conv = fptosi float %11 to i32
  %z = getelementptr inbounds %class.rvectort, %class.rvectort* %centerp, i64 0, i32 2
  %12 = load float, float* %z, align 4, !tbaa !72
  %sub29 = fsub float %12, %radius.addr.0
  %sub31 = fsub float %sub29, %8
  %ycoef1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 11
  %13 = load float, float* %ycoef1, align 4, !tbaa !73
  %ycoef2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 12
  %14 = load float, float* %ycoef2, align 8, !tbaa !74
  %15 = tail call float @llvm.fmuladd.f32(float %sub31, float %13, float %14)
  %conv32 = fptosi float %15 to i32
  %add = fadd float %radius.addr.0, %7
  %add35 = fadd float %add, %8
  %16 = tail call float @llvm.fmuladd.f32(float %add35, float %9, float %10)
  %conv38 = fptosi float %16 to i32
  %add40 = fadd float %radius.addr.0, %12
  %add42 = fadd float %8, %add40
  %17 = tail call float @llvm.fmuladd.f32(float %add42, float %13, float %14)
  %conv45 = fptosi float %17 to i32
  %mapmaxx1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 5
  %18 = load i32, i32* %mapmaxx1, align 4, !tbaa !75
  %cmp46 = icmp slt i32 %18, %conv
  br i1 %cmp46, label %cleanup, label %if.end48

if.end48:                                         ; preds = %if.end25
  %mapmaxy1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 6
  %19 = load i32, i32* %mapmaxy1, align 8, !tbaa !76
  %cmp49 = icmp slt i32 %19, %conv32
  %cmp52 = icmp slt i32 %conv38, 1
  %or.cond = or i1 %cmp52, %cmp49
  %cmp55 = icmp slt i32 %conv45, 1
  %or.cond178 = or i1 %cmp55, %or.cond
  br i1 %or.cond178, label %cleanup, label %if.end57

if.end57:                                         ; preds = %if.end48
  %20 = icmp sgt i32 %conv, 1
  %spec.select = select i1 %20, i32 %conv, i32 1
  %21 = icmp sgt i32 %conv32, 1
  %y1.0 = select i1 %21, i32 %conv32, i32 1
  %cmp65 = icmp slt i32 %18, %conv38
  %spec.select177 = select i1 %cmp65, i32 %18, i32 %conv38
  %cmp70 = icmp slt i32 %19, %conv45
  %y2.0 = select i1 %cmp70, i32 %19, i32 %conv45
  %add75 = fadd float %radius.addr.0, %8
  %mul.i181 = fmul float %add75, %add75
  %cmp77187 = icmp sgt i32 %y1.0, %y2.0
  br i1 %cmp77187, label %cleanup, label %for.cond78.preheader.lr.ph

for.cond78.preheader.lr.ph:                       ; preds = %if.end57
  %cmp79184 = icmp sgt i32 %spec.select, %spec.select177
  %minx = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 0
  %maxx = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 1
  %maplx = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 7
  %miny = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 2
  %maxy = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 3
  %maply = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 8
  %maparp = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 17
  %shift = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 2
  br label %for.cond78.preheader

for.cond78.preheader:                             ; preds = %for.inc113, %for.cond78.preheader.lr.ph
  %y.0188 = phi i32 [ %y1.0, %for.cond78.preheader.lr.ph ], [ %inc114, %for.inc113 ]
  br i1 %cmp79184, label %for.inc113, label %for.body80.lr.ph

for.body80.lr.ph:                                 ; preds = %for.cond78.preheader
  %22 = load float, float* %minx, align 8, !tbaa !77
  %add83 = fadd float %8, %22
  %23 = load float, float* %maxx, align 4, !tbaa !78
  %sub88 = fsub float %23, %22
  %24 = load i32, i32* %maplx, align 4, !tbaa !79
  %conv89 = sitofp i32 %24 to float
  %25 = load float, float* %miny, align 8, !tbaa !80
  %add93 = fadd float %8, %25
  %conv94 = sitofp i32 %y.0188 to float
  %26 = load float, float* %maxy, align 4, !tbaa !81
  %sub98 = fsub float %26, %25
  %mul99 = fmul float %sub98, %conv94
  %27 = load i32, i32* %maply, align 8, !tbaa !82
  %conv100 = sitofp i32 %27 to float
  %div101 = fdiv float %mul99, %conv100
  %add102 = fadd float %add93, %div101
  %sub107 = fsub float %12, %add102
  %mul.i179 = fmul float %sub107, %sub107
  br label %for.body80

for.body80:                                       ; preds = %for.inc, %for.body80.lr.ph
  %x.0185 = phi i32 [ %spec.select, %for.body80.lr.ph ], [ %inc, %for.inc ]
  %conv84 = sitofp i32 %x.0185 to float
  %mul = fmul float %sub88, %conv84
  %div = fdiv float %mul, %conv89
  %add90 = fadd float %add83, %div
  %sub104 = fsub float %7, %add90
  %mul.i180 = fmul float %sub104, %sub104
  %add109 = fadd float %mul.i180, %mul.i179
  %cmp110 = fcmp ogt float %add109, %mul.i181
  br i1 %cmp110, label %for.inc, label %if.end112

if.end112:                                        ; preds = %for.body80
  %28 = load i16*, i16** %maparp, align 8, !tbaa !83
  %29 = load i32, i32* %shift, align 8, !tbaa !84
  %shl = shl i32 %y.0188, %29
  %or = or i32 %shl, %x.0185
  %idxprom = sext i32 %or to i64
  %arrayidx = getelementptr inbounds i16, i16* %28, i64 %idxprom
  %30 = load i16, i16* %arrayidx, align 2, !tbaa !85
  %dec = add i16 %30, -1
  store i16 %dec, i16* %arrayidx, align 2, !tbaa !85
  br label %for.inc

for.inc:                                          ; preds = %for.body80, %if.end112
  %inc = add nuw nsw i32 %x.0185, 1
  %cmp79 = icmp slt i32 %x.0185, %spec.select177
  br i1 %cmp79, label %for.body80, label %for.inc113

for.inc113:                                       ; preds = %for.inc, %for.cond78.preheader
  %inc114 = add nuw nsw i32 %y.0188, 1
  %cmp77 = icmp slt i32 %y.0188, %y2.0
  br i1 %cmp77, label %for.cond78.preheader, label %cleanup

cleanup:                                          ; preds = %for.inc113, %if.end57, %if.end48, %if.end25, %if.then13, %if.then
  ret void
}

; Function Attrs: nofree norecurse nounwind optsize
define dso_local void @_ZN6wayobj8addpointEii(%class.wayobj* nocapture readonly %this, i32 %x, i32 %y) local_unnamed_addr #9 align 2 {
entry:
  %maparp = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 17
  %0 = load i16*, i16** %maparp, align 8, !tbaa !83
  %shift = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 2
  %1 = load i32, i32* %shift, align 8, !tbaa !84
  %shl = shl i32 %y, %1
  %or = or i32 %shl, %x
  %idxprom = sext i32 %or to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !85
  %cmp = icmp sgt i16 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %inc = add nuw i16 %2, 1
  store i16 %inc, i16* %arrayidx, align 2, !tbaa !85
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree norecurse nounwind optsize
define dso_local void @_ZN6wayobj11removepointEii(%class.wayobj* nocapture readonly %this, i32 %x, i32 %y) local_unnamed_addr #9 align 2 {
entry:
  %maparp = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 17
  %0 = load i16*, i16** %maparp, align 8, !tbaa !83
  %shift = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 2
  %1 = load i32, i32* %shift, align 8, !tbaa !84
  %shl = shl i32 %y, %1
  %or = or i32 %shl, %x
  %idxprom = sext i32 %or to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !85
  %cmp = icmp sgt i16 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %dec = add nsw i16 %2, -1
  store i16 %dec, i16* %arrayidx, align 2, !tbaa !85
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind optsize
define dso_local void @_ZN6wayobj5clearEv(%class.wayobj* nocapture readonly %this) local_unnamed_addr #8 align 2 {
entry:
  %mapxshift = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 0
  %0 = load i32, i32* %mapxshift, align 8, !tbaa !86
  %shl = shl nuw i32 1, %0
  %mapyshift = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 1
  %1 = load i32, i32* %mapyshift, align 4, !tbaa !87
  %shl2 = shl i32 %shl, %1
  %maparp = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 17
  %2 = bitcast i16** %maparp to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !83
  %conv = sext i32 %shl2 to i64
  %mul = shl nsw i64 %conv, 1
  tail call void @llvm.memset.p0i8.i64(i8* align 2 %3, i8 0, i64 %mul, i1 false)
  %waymap = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 18
  %4 = bitcast %struct.waymapcellt** %waymap to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !88
  %mul4 = shl nsw i64 %conv, 2
  tail call void @llvm.memset.p0i8.i64(i8* align 2 %5, i8 0, i64 %mul4, i1 false)
  %maply = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 8
  %6 = load i32, i32* %maply, align 8, !tbaa !82
  %cmp65 = icmp sgt i32 %6, 0
  br i1 %cmp65, label %for.body.lr.ph, label %for.cond19.preheader

for.body.lr.ph:                                   ; preds = %entry
  %7 = load i16*, i16** %maparp, align 8, !tbaa !83
  %shift = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 2
  %8 = load i32, i32* %shift, align 8, !tbaa !84
  br label %for.body

for.cond7.preheader:                              ; preds = %for.body
  br i1 %cmp65, label %for.body10.lr.ph, label %for.cond19.preheader

for.body10.lr.ph:                                 ; preds = %for.cond7.preheader
  %9 = load i16*, i16** %maparp, align 8, !tbaa !83
  %shift12 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 2
  %10 = load i32, i32* %shift12, align 8, !tbaa !84
  %mapmaxx = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 3
  %11 = load i32, i32* %mapmaxx, align 4, !tbaa !89
  br label %for.body10

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %y.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %shl6 = shl i32 %y.066, %8
  %idxprom = sext i32 %shl6 to i64
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  store i16 -1, i16* %arrayidx, align 2, !tbaa !85
  %inc = add nuw nsw i32 %y.066, 1
  %cmp = icmp slt i32 %inc, %6
  br i1 %cmp, label %for.body, label %for.cond7.preheader

for.cond19.preheader:                             ; preds = %for.body10, %entry, %for.cond7.preheader
  %maplx = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 7
  %12 = load i32, i32* %maplx, align 4, !tbaa !79
  %cmp2061 = icmp sgt i32 %12, 0
  br i1 %cmp2061, label %for.body34.lr.ph, label %for.end43

for.body10:                                       ; preds = %for.body10, %for.body10.lr.ph
  %y.164 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc17, %for.body10 ]
  %shl13 = shl i32 %y.164, %10
  %or = or i32 %shl13, %11
  %idxprom14 = sext i32 %or to i64
  %arrayidx15 = getelementptr inbounds i16, i16* %9, i64 %idxprom14
  store i16 -1, i16* %arrayidx15, align 2, !tbaa !85
  %inc17 = add nuw nsw i32 %y.164, 1
  %exitcond68 = icmp eq i32 %inc17, %6
  br i1 %exitcond68, label %for.cond19.preheader, label %for.body10

for.body34.lr.ph:                                 ; preds = %for.cond19.preheader
  %13 = bitcast i16** %maparp to i8**
  %14 = load i8*, i8** %13, align 8, !tbaa !83
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 1
  call void @llvm.memset.p0i8.i64(i8* align 2 %14, i8 -1, i64 %16, i1 false)
  %17 = load i16*, i16** %maparp, align 8, !tbaa !83
  %mapmaxy = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 4
  %18 = load i32, i32* %mapmaxy, align 8, !tbaa !90
  %shift36 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 2
  %19 = load i32, i32* %shift36, align 8, !tbaa !84
  %shl37 = shl i32 %18, %19
  br label %for.body34

for.body34:                                       ; preds = %for.body34, %for.body34.lr.ph
  %x.160 = phi i32 [ 0, %for.body34.lr.ph ], [ %inc42, %for.body34 ]
  %or38 = or i32 %shl37, %x.160
  %idxprom39 = sext i32 %or38 to i64
  %arrayidx40 = getelementptr inbounds i16, i16* %17, i64 %idxprom39
  store i16 -1, i16* %arrayidx40, align 2, !tbaa !85
  %inc42 = add nuw nsw i32 %x.160, 1
  %exitcond = icmp eq i32 %inc42, %12
  br i1 %exitcond, label %for.end43, label %for.body34

for.end43:                                        ; preds = %for.body34, %for.cond19.preheader
  ret void
}

; Function Attrs: optsize
define dso_local i1 @_ZN6wayobj7loadmapEPKc(%class.wayobj* %this, i8* nocapture readonly %fn) local_unnamed_addr #0 align 2 {
entry:
  %xRunion = alloca %union.anon, align 4
  %yRunion = alloca %union.anon, align 4
  %agg.tmp = alloca %struct.createwaymnginfot, align 4
  %0 = bitcast %union.anon* %xRunion to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #21
  %1 = bitcast %union.anon* %yRunion to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #21
  %call = tail call i32 (i8*, i32, ...) @open(i8* %fn, i32 0) #19
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %xRstruc = bitcast %union.anon* %xRunion to %struct.anon*
  %call2 = call i64 @read(i32 %call, i8* nonnull %0, i64 1) #19
  %xR2 = getelementptr inbounds %struct.anon, %struct.anon* %xRstruc, i64 0, i32 1
  %call4 = call i64 @read(i32 %call, i8* nonnull %xR2, i64 1) #19
  %xR3 = getelementptr inbounds %struct.anon, %struct.anon* %xRstruc, i64 0, i32 2
  %call6 = call i64 @read(i32 %call, i8* nonnull %xR3, i64 1) #19
  %xR4 = getelementptr inbounds %struct.anon, %struct.anon* %xRstruc, i64 0, i32 3
  %call8 = call i64 @read(i32 %call, i8* nonnull %xR4, i64 1) #19
  %yRstruc = bitcast %union.anon* %yRunion to %struct.anon*
  %call9 = call i64 @read(i32 %call, i8* nonnull %1, i64 1) #19
  %yR2 = getelementptr inbounds %struct.anon, %struct.anon* %yRstruc, i64 0, i32 1
  %call11 = call i64 @read(i32 %call, i8* nonnull %yR2, i64 1) #19
  %yR3 = getelementptr inbounds %struct.anon, %struct.anon* %yRstruc, i64 0, i32 2
  %call13 = call i64 @read(i32 %call, i8* nonnull %yR3, i64 1) #19
  %yR4 = getelementptr inbounds %struct.anon, %struct.anon* %yRstruc, i64 0, i32 3
  %call15 = call i64 @read(i32 %call, i8* nonnull %yR4, i64 1) #19
  %xRmapsizex = getelementptr inbounds %union.anon, %union.anon* %xRunion, i64 0, i32 0
  %2 = load i32, i32* %xRmapsizex, align 4, !tbaa !29
  %yRmapsizey = getelementptr inbounds %union.anon, %union.anon* %yRunion, i64 0, i32 0
  %3 = load i32, i32* %yRmapsizey, align 4, !tbaa !29
  %conv = sitofp i32 %2 to double
  %call16 = tail call double @log(double %conv) #20
  %div = fdiv double %call16, 0x3FE62E42FEFA39EF
  %add = fadd double %div, 5.000000e-01
  %conv18 = fptosi double %add to i32
  %conv19 = sitofp i32 %3 to double
  %call20 = tail call double @log(double %conv19) #20
  %div22 = fdiv double %call20, 0x3FE62E42FEFA39EF
  %add23 = fadd double %div22, 5.000000e-01
  %conv24 = fptosi double %add23 to i32
  %info.sroa.0.0..sroa_idx = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %agg.tmp, i64 0, i32 0
  store float -1.000000e+03, float* %info.sroa.0.0..sroa_idx, align 4, !tbaa.struct !91
  %info.sroa.4.0..sroa_idx66 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %agg.tmp, i64 0, i32 1
  store float 1.000000e+03, float* %info.sroa.4.0..sroa_idx66, align 4, !tbaa.struct !91
  %info.sroa.5.0..sroa_idx68 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %agg.tmp, i64 0, i32 2
  store float -1.000000e+03, float* %info.sroa.5.0..sroa_idx68, align 4, !tbaa.struct !91
  %info.sroa.6.0..sroa_idx70 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %agg.tmp, i64 0, i32 3
  store float 1.000000e+03, float* %info.sroa.6.0..sroa_idx70, align 4, !tbaa.struct !91
  %info.sroa.7.0..sroa_idx72 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %agg.tmp, i64 0, i32 4
  store i32 %conv18, i32* %info.sroa.7.0..sroa_idx72, align 4, !tbaa.struct !91
  %info.sroa.8.0..sroa_idx74 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %agg.tmp, i64 0, i32 5
  store i32 %conv24, i32* %info.sroa.8.0..sroa_idx74, align 4, !tbaa.struct !91
  %info.sroa.9.0..sroa_idx76 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %agg.tmp, i64 0, i32 6
  store float 0.000000e+00, float* %info.sroa.9.0..sroa_idx76, align 4, !tbaa.struct !91
  %info.sroa.10.0..sroa_idx78 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %agg.tmp, i64 0, i32 7
  store float 1.000000e+05, float* %info.sroa.10.0..sroa_idx78, align 4, !tbaa.struct !91
  call void @_ZN6wayobj6createE17createwaymnginfot(%class.wayobj* %this, %struct.createwaymnginfot* nonnull %agg.tmp) #19
  %mul = mul nsw i32 %3, %2
  %conv25 = sext i32 %mul to i64
  %call27 = tail call noalias i8* @malloc(i64 %conv25) #20
  %call31 = tail call i64 @read(i32 %call, i8* %call27, i64 %conv25) #19
  %mapmaxy = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 4
  %4 = load i32, i32* %mapmaxy, align 8, !tbaa !90
  %cmp3299 = icmp sgt i32 %4, 1
  br i1 %cmp3299, label %for.cond33.preheader.lr.ph, label %for.end44

for.cond33.preheader.lr.ph:                       ; preds = %if.end
  %mapmaxx = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 3
  %5 = load i32, i32* %mapmaxx, align 4, !tbaa !89
  %cmp3497 = icmp sgt i32 %5, 1
  %shift = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 2
  %maparp = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 17
  br label %for.cond33.preheader

for.cond33.preheader:                             ; preds = %for.cond33.preheader.lr.ph, %for.inc42
  %y.0100 = phi i32 [ 1, %for.cond33.preheader.lr.ph ], [ %inc43, %for.inc42 ]
  br i1 %cmp3497, label %for.body35.lr.ph, label %for.inc42

for.body35.lr.ph:                                 ; preds = %for.cond33.preheader
  %6 = load i32, i32* %shift, align 8, !tbaa !84
  %shl = shl i32 %y.0100, %6
  %7 = load i16*, i16** %maparp, align 8, !tbaa !83
  br label %for.body35

for.body35:                                       ; preds = %for.body35.lr.ph, %for.body35
  %x.098 = phi i32 [ 1, %for.body35.lr.ph ], [ %inc, %for.body35 ]
  %or = or i32 %shl, %x.098
  %idxprom = sext i32 %or to i64
  %arrayidx = getelementptr inbounds i8, i8* %call27, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !29
  %conv36 = zext i8 %8 to i16
  %arrayidx41 = getelementptr inbounds i16, i16* %7, i64 %idxprom
  store i16 %conv36, i16* %arrayidx41, align 2, !tbaa !85
  %inc = add nuw nsw i32 %x.098, 1
  %cmp34 = icmp slt i32 %inc, %5
  br i1 %cmp34, label %for.body35, label %for.inc42

for.inc42:                                        ; preds = %for.body35, %for.cond33.preheader
  %inc43 = add nuw nsw i32 %y.0100, 1
  %cmp32 = icmp slt i32 %inc43, %4
  br i1 %cmp32, label %for.cond33.preheader, label %for.end44

for.end44:                                        ; preds = %for.inc42, %if.end
  tail call void @free(i8* %call27) #20
  %call45 = tail call i32 @close(i32 %call) #19
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end44
  %retval.0 = phi i1 [ true, %for.end44 ], [ false, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #21
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #21
  ret i1 %retval.0
}

; Function Attrs: nofree nounwind optsize
declare dso_local double @log(double) local_unnamed_addr #2

; Function Attrs: optsize
define dso_local void @_ZN6wayobj6createE17createwaymnginfot(%class.wayobj* %this, %struct.createwaymnginfot* nocapture readonly %info) local_unnamed_addr #0 align 2 {
entry:
  %info2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14
  %0 = bitcast %struct.createwaymnginfot* %info2 to i8*
  %1 = bitcast %struct.createwaymnginfot* %info to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %0, i8* nonnull align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !91
  %xshift = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i64 0, i32 4
  %2 = load i32, i32* %xshift, align 4, !tbaa !93
  %mapxshift = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 0
  store i32 %2, i32* %mapxshift, align 8, !tbaa !86
  %yshift = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i64 0, i32 5
  %3 = load i32, i32* %yshift, align 4, !tbaa !94
  %mapyshift = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 1
  store i32 %3, i32* %mapyshift, align 4, !tbaa !87
  %shift = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 2
  store i32 %2, i32* %shift, align 8, !tbaa !84
  %notmask = shl nsw i32 -1, %2
  %sub = xor i32 %notmask, -1
  %mapmaxx = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 3
  store i32 %sub, i32* %mapmaxx, align 4, !tbaa !89
  %notmask81 = shl nsw i32 -1, %3
  %sub7 = xor i32 %notmask81, -1
  %mapmaxy = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 4
  store i32 %sub7, i32* %mapmaxy, align 8, !tbaa !90
  %sub9 = sub nsw i32 -2, %notmask
  %mapmaxx1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 5
  store i32 %sub9, i32* %mapmaxx1, align 4, !tbaa !75
  %sub11 = sub nsw i32 -2, %notmask81
  %mapmaxy1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 6
  store i32 %sub11, i32* %mapmaxy1, align 8, !tbaa !76
  %shl13 = shl nuw i32 1, %2
  %maplx = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 7
  store i32 %shl13, i32* %maplx, align 4, !tbaa !79
  %shl15 = shl nuw i32 1, %3
  %maply = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 8
  store i32 %shl15, i32* %maply, align 8, !tbaa !82
  %maxx = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i64 0, i32 1
  %4 = load float, float* %maxx, align 4, !tbaa !95
  %minx = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i64 0, i32 0
  %5 = load float, float* %minx, align 4, !tbaa !96
  %sub16 = fsub float %4, %5
  %mul = shl nsw i32 %shl13, 1
  %conv = sitofp i32 %mul to float
  %div = fdiv float %sub16, %conv
  %cellr = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 13
  store float %div, float* %cellr, align 4, !tbaa !69
  %maxy = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i64 0, i32 3
  %6 = load float, float* %maxy, align 4, !tbaa !97
  %miny = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i64 0, i32 2
  %7 = load float, float* %miny, align 4, !tbaa !98
  %sub18 = fsub float %6, %7
  %mul20 = shl nsw i32 %shl15, 1
  %conv21 = sitofp i32 %mul20 to float
  %div22 = fdiv float %sub18, %conv21
  %cmp = fcmp ogt float %div22, %div
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float %div22, float* %cellr, align 4, !tbaa !69
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %conv33 = sitofp i32 %shl13 to float
  %div37 = fdiv float %conv33, %sub16
  %xcoef1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 9
  store float %div37, float* %xcoef1, align 4, !tbaa !70
  %sub39 = sub nsw i32 0, %shl13
  %conv40 = sitofp i32 %sub39 to float
  %mul42 = fmul float %5, %conv40
  %div46 = fdiv float %mul42, %sub16
  %xcoef2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 10
  store float %div46, float* %xcoef2, align 8, !tbaa !71
  %conv48 = sitofp i32 %shl15 to float
  %div52 = fdiv float %conv48, %sub18
  %ycoef1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 11
  store float %div52, float* %ycoef1, align 4, !tbaa !73
  %sub54 = sub nsw i32 0, %shl15
  %conv55 = sitofp i32 %sub54 to float
  %mul57 = fmul float %7, %conv55
  %div61 = fdiv float %mul57, %sub18
  %ycoef2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 12
  store float %div61, float* %ycoef2, align 8, !tbaa !74
  %shl65 = shl i32 %shl13, %3
  %8 = sext i32 %shl65 to i64
  %9 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %8, i64 2)
  %10 = extractvalue { i64, i1 } %9, 1
  %11 = extractvalue { i64, i1 } %9, 0
  %12 = select i1 %10, i64 -1, i64 %11
  %call = tail call i8* @_Znam(i64 %12) #23
  %maparp = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 17
  %13 = bitcast i16** %maparp to i8**
  store i8* %call, i8** %13, align 8, !tbaa !83
  %14 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %8, i64 4)
  %15 = extractvalue { i64, i1 } %14, 1
  %16 = extractvalue { i64, i1 } %14, 0
  %17 = select i1 %15, i64 -1, i64 %16
  %call66 = tail call i8* @_Znam(i64 %17) #23
  %waymap = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 18
  %18 = bitcast %struct.waymapcellt** %waymap to i8**
  store i8* %call66, i8** %18, align 8, !tbaa !88
  tail call void @_ZN6wayobj5clearEv(%class.wayobj* nonnull %this) #19
  %19 = load i32, i32* %maplx, align 4, !tbaa !79
  %20 = load i32, i32* %maply, align 8, !tbaa !82
  %mul6882 = add i32 %20, %19
  %mul71 = mul i32 %mul6882, 12
  %maxboundlength = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 21
  store i32 %mul71, i32* %maxboundlength, align 8, !tbaa !99
  %21 = sext i32 %mul71 to i64
  %22 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %21, i64 4)
  %23 = extractvalue { i64, i1 } %22, 1
  %24 = extractvalue { i64, i1 } %22, 0
  %25 = select i1 %23, i64 -1, i64 %24
  %call73 = tail call i8* @_Znam(i64 %25) #23
  %bound1p = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 19
  %26 = bitcast i32** %bound1p to i8**
  store i8* %call73, i8** %26, align 8, !tbaa !100
  %call75 = tail call i8* @_Znam(i64 %25) #23
  %bound2p = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 20
  %27 = bitcast i32** %bound2p to i8**
  store i8* %call75, i8** %27, align 8, !tbaa !101
  %28 = load i32, i32* %shift, align 8, !tbaa !84
  %notmask83 = shl nsw i32 -1, %28
  %sub78 = xor i32 %notmask83, -1
  %indexxmask = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 22
  store i32 %sub78, i32* %indexxmask, align 4, !tbaa !102
  %fillnum = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 27
  store i16 0, i16* %fillnum, align 2, !tbaa !103
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: nobuiltin nofree optsize
declare dso_local noalias nonnull i8* @_Znam(i64) local_unnamed_addr #10

; Function Attrs: optsize
define dso_local i1 @_ZN6wayobj7initmapEii(%class.wayobj* %this, i32 %mapsizex, i32 %mapsizey) local_unnamed_addr #0 align 2 {
entry:
  %agg.tmp = alloca %struct.createwaymnginfot, align 4
  %conv = sitofp i32 %mapsizex to double
  %call = tail call double @log(double %conv) #20
  %div = fdiv double %call, 0x3FE62E42FEFA39EF
  %add = fadd double %div, 5.000000e-01
  %conv3 = fptosi double %add to i32
  %conv4 = sitofp i32 %mapsizey to double
  %call5 = tail call double @log(double %conv4) #20
  %div7 = fdiv double %call5, 0x3FE62E42FEFA39EF
  %add8 = fadd double %div7, 5.000000e-01
  %conv9 = fptosi double %add8 to i32
  %info.sroa.0.0..sroa_idx = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %agg.tmp, i64 0, i32 0
  store float -1.000000e+03, float* %info.sroa.0.0..sroa_idx, align 4, !tbaa.struct !91
  %info.sroa.4.0..sroa_idx11 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %agg.tmp, i64 0, i32 1
  store float 1.000000e+03, float* %info.sroa.4.0..sroa_idx11, align 4, !tbaa.struct !91
  %info.sroa.5.0..sroa_idx13 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %agg.tmp, i64 0, i32 2
  store float -1.000000e+03, float* %info.sroa.5.0..sroa_idx13, align 4, !tbaa.struct !91
  %info.sroa.6.0..sroa_idx15 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %agg.tmp, i64 0, i32 3
  store float 1.000000e+03, float* %info.sroa.6.0..sroa_idx15, align 4, !tbaa.struct !91
  %info.sroa.7.0..sroa_idx17 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %agg.tmp, i64 0, i32 4
  store i32 %conv3, i32* %info.sroa.7.0..sroa_idx17, align 4, !tbaa.struct !91
  %info.sroa.8.0..sroa_idx19 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %agg.tmp, i64 0, i32 5
  store i32 %conv9, i32* %info.sroa.8.0..sroa_idx19, align 4, !tbaa.struct !91
  %info.sroa.9.0..sroa_idx21 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %agg.tmp, i64 0, i32 6
  store float 0.000000e+00, float* %info.sroa.9.0..sroa_idx21, align 4, !tbaa.struct !91
  %info.sroa.10.0..sroa_idx23 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %agg.tmp, i64 0, i32 7
  store float 1.000000e+05, float* %info.sroa.10.0..sroa_idx23, align 4, !tbaa.struct !91
  call void @_ZN6wayobj6createE17createwaymnginfot(%class.wayobj* %this, %struct.createwaymnginfot* nonnull %agg.tmp) #19
  ret i1 true
}

; Function Attrs: norecurse nounwind optsize readnone
define dso_local void @_ZN6wayobj6createEv(%class.wayobj* nocapture %this) local_unnamed_addr #13 align 2 {
entry:
  ret void
}

; Function Attrs: nounwind optsize
define dso_local void @_ZN6wayobj7destroyEv(%class.wayobj* nocapture readonly %this) local_unnamed_addr #8 align 2 {
entry:
  %bound2p = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 20
  %0 = load i32*, i32** %bound2p, align 8, !tbaa !101
  %isnull = icmp eq i32* %0, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %1 = bitcast i32* %0 to i8*
  tail call void @_ZdaPv(i8* %1) #22
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  %bound1p = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 19
  %2 = load i32*, i32** %bound1p, align 8, !tbaa !100
  %isnull2 = icmp eq i32* %2, null
  br i1 %isnull2, label %delete.end4, label %delete.notnull3

delete.notnull3:                                  ; preds = %delete.end
  %3 = bitcast i32* %2 to i8*
  tail call void @_ZdaPv(i8* %3) #22
  br label %delete.end4

delete.end4:                                      ; preds = %delete.notnull3, %delete.end
  %waymap = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 18
  %4 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8, !tbaa !88
  %isnull5 = icmp eq %struct.waymapcellt* %4, null
  br i1 %isnull5, label %delete.end7, label %delete.notnull6

delete.notnull6:                                  ; preds = %delete.end4
  %5 = bitcast %struct.waymapcellt* %4 to i8*
  tail call void @_ZdaPv(i8* %5) #22
  br label %delete.end7

delete.end7:                                      ; preds = %delete.notnull6, %delete.end4
  %maparp = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 17
  %6 = load i16*, i16** %maparp, align 8, !tbaa !83
  %isnull8 = icmp eq i16* %6, null
  br i1 %isnull8, label %delete.end10, label %delete.notnull9

delete.notnull9:                                  ; preds = %delete.end7
  %7 = bitcast i16* %6 to i8*
  tail call void @_ZdaPv(i8* %7) #22
  br label %delete.end10

delete.end10:                                     ; preds = %delete.notnull9, %delete.end7
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare dso_local void @_ZdaPv(i8*) local_unnamed_addr #5

; Function Attrs: optsize
define dso_local void @_ZN9regmngobj10addtoboundER9flexarrayI6pointtEii(%class.regmngobj* nocapture %this, %class.flexarray.4* dereferenceable(16) %barp, i32 %x, i32 %y) local_unnamed_addr #0 align 2 {
entry:
  %landscapemapp.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 7
  %0 = load i8*, i8** %landscapemapp.i, align 8, !tbaa !28
  %mapsizex.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 16
  %1 = load i32, i32* %mapsizex.i, align 4, !tbaa !30
  %mul.i = mul nsw i32 %1, %y
  %add.i = add nsw i32 %mul.i, %x
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %0, i64 %idxprom.i
  %2 = load i8, i8* %arrayidx.i, align 1, !tbaa !29
  %idxprom = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 8, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !35, !range !45
  %tobool = icmp eq i8 %3, 0
  br i1 %tobool, label %if.then6, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flfind = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 4
  %4 = load i8, i8* %flfind, align 4, !tbaa !104, !range !45
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %freepointx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 2
  store i32 %x, i32* %freepointx, align 4, !tbaa !105
  %freepointy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 3
  store i32 %y, i32* %freepointy, align 8, !tbaa !106
  store i8 1, i8* %flfind, align 4, !tbaa !104
  br label %cleanup

if.then6:                                         ; preds = %entry
  %elemqu.i = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %barp, i64 0, i32 1
  %5 = load i32, i32* %elemqu.i, align 8, !tbaa !107
  %maxelemqu.i = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %barp, i64 0, i32 2
  %6 = load i32, i32* %maxelemqu.i, align 4, !tbaa !108
  %cmp.i = icmp eq i32 %5, %6
  br i1 %cmp.i, label %if.then.i, label %_ZN9flexarrayI6pointtE3addERKS0_.exit

if.then.i:                                        ; preds = %if.then6
  tail call void @_ZN9flexarrayI6pointtE8doublingEb(%class.flexarray.4* nonnull %barp, i1 true) #19
  %.pre.i = load i32, i32* %elemqu.i, align 8, !tbaa !107
  br label %_ZN9flexarrayI6pointtE3addERKS0_.exit

_ZN9flexarrayI6pointtE3addERKS0_.exit:            ; preds = %if.then6, %if.then.i
  %7 = phi i32 [ %.pre.i, %if.then.i ], [ %5, %if.then6 ]
  %ep.i = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %barp, i64 0, i32 0
  %8 = load %struct.pointt*, %struct.pointt** %ep.i, align 8, !tbaa !109
  %idxprom.i17 = sext i32 %7 to i64
  %arrayidx.i18 = getelementptr inbounds %struct.pointt, %struct.pointt* %8, i64 %idxprom.i17
  %9 = bitcast %struct.pointt* %arrayidx.i18 to i64*
  %ref.tmp.sroa.4.0.insert.ext = zext i32 %y to i64
  %ref.tmp.sroa.4.0.insert.shift = shl nuw i64 %ref.tmp.sroa.4.0.insert.ext, 32
  %ref.tmp.sroa.0.0.insert.ext = zext i32 %x to i64
  %ref.tmp.sroa.0.0.insert.insert = or i64 %ref.tmp.sroa.4.0.insert.shift, %ref.tmp.sroa.0.0.insert.ext
  store i64 %ref.tmp.sroa.0.0.insert.insert, i64* %9, align 4
  %10 = load i32, i32* %elemqu.i, align 8, !tbaa !107
  %inc.i = add nsw i32 %10, 1
  store i32 %inc.i, i32* %elemqu.i, align 8, !tbaa !107
  %.pre = load i32, i32* %mapsizex.i, align 4, !tbaa !30
  %.pre21 = mul nsw i32 %.pre, %y
  %.pre22 = add nsw i32 %.pre21, %x
  %.pre23 = sext i32 %.pre22 to i64
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %_ZN9flexarrayI6pointtE3addERKS0_.exit
  %idxprom8.pre-phi = phi i64 [ %idxprom.i, %land.lhs.true ], [ %.pre23, %_ZN9flexarrayI6pointtE3addERKS0_.exit ]
  %fillnum = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 1
  %11 = load i16, i16* %fillnum, align 8, !tbaa !34
  %mmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 0
  %12 = load i16*, i16** %mmapp, align 8, !tbaa !2
  %arrayidx9 = getelementptr inbounds i16, i16* %12, i64 %idxprom8.pre-phi
  store i16 %11, i16* %arrayidx9, align 2, !tbaa !85
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  ret void
}

; Function Attrs: optsize
define linkonce_odr dso_local void @_ZN9flexarrayI6pointtE8doublingEb(%class.flexarray.4* %this, i1 %flcopy) local_unnamed_addr #0 comdat align 2 {
entry:
  %maxelemqu = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %this, i64 0, i32 2
  %0 = load i32, i32* %maxelemqu, align 4, !tbaa !108
  %shl = shl i32 %0, 1
  %mul = shl i32 %0, 4
  %conv.i = sext i32 %mul to i64
  %call.i = tail call noalias i8* @malloc(i64 %conv.i) #20
  %1 = bitcast %class.flexarray.4* %this to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !109
  br i1 %flcopy, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv4 = sext i32 %0 to i64
  %mul5 = shl nsw i64 %conv4, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %call.i, i8* align 4 %2, i64 %mul5, i1 false)
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  tail call void @free(i8* %2) #20
  store i8* %call.i, i8** %1, align 8, !tbaa !109
  store i32 %shl, i32* %maxelemqu, align 4, !tbaa !108
  ret void
}

; Function Attrs: optsize
define dso_local void @_ZN9regmngobj10makebound2ER9flexarrayI6pointtES3_(%class.regmngobj* nocapture %this, %class.flexarray.4* nocapture readonly dereferenceable(16) %b1arp, %class.flexarray.4* dereferenceable(16) %b2arp) local_unnamed_addr #0 align 2 {
entry:
  %elemqu.i = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %b2arp, i64 0, i32 1
  store i32 0, i32* %elemqu.i, align 8, !tbaa !107
  %elemqu = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %b1arp, i64 0, i32 1
  %0 = load i32, i32* %elemqu, align 8, !tbaa !107
  %cmp85 = icmp sgt i32 %0, 0
  br i1 %cmp85, label %for.body.lr.ph, label %for.end40

for.body.lr.ph:                                   ; preds = %entry
  %ep.i = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %b1arp, i64 0, i32 0
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 12
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 13
  %mmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 0
  %mapsizex = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 16
  %fillnum = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc38
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc38 ]
  %1 = load %struct.pointt*, %struct.pointt** %ep.i, align 8, !tbaa !109
  %x3 = getelementptr inbounds %struct.pointt, %struct.pointt* %1, i64 %indvars.iv, i32 0
  %2 = load i32, i32* %x3, align 4, !tbaa !110
  %sub = add nsw i32 %2, -1
  %y5 = getelementptr inbounds %struct.pointt, %struct.pointt* %1, i64 %indvars.iv, i32 1
  %3 = load i32, i32* %y5, align 4, !tbaa !111
  %sub6 = add nsw i32 %3, -1
  %add = add nsw i32 %2, 1
  %add11 = add nsw i32 %3, 1
  %cmp12.inv = icmp sgt i32 %2, 0
  %spec.select = select i1 %cmp12.inv, i32 %sub, i32 0
  %cmp13.inv = icmp sgt i32 %3, 0
  %y1.0 = select i1 %cmp13.inv, i32 %sub6, i32 0
  %4 = load i32, i32* %mapmaxx, align 4, !tbaa !32
  %cmp16 = icmp slt i32 %2, %4
  %spec.select69 = select i1 %cmp16, i32 %add, i32 %4
  %5 = load i32, i32* %mapmaxy, align 8, !tbaa !33
  %cmp20 = icmp slt i32 %3, %5
  %y2.0 = select i1 %cmp20, i32 %add11, i32 %5
  %cmp2582 = icmp sgt i32 %y1.0, %y2.0
  br i1 %cmp2582, label %for.inc38, label %for.cond27.preheader.lr.ph

for.cond27.preheader.lr.ph:                       ; preds = %for.body
  %cmp2879 = icmp sgt i32 %spec.select, %spec.select69
  br label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %for.inc35, %for.cond27.preheader.lr.ph
  %y.083 = phi i32 [ %y1.0, %for.cond27.preheader.lr.ph ], [ %inc36, %for.inc35 ]
  br i1 %cmp2879, label %for.inc35, label %for.body29

for.body29:                                       ; preds = %for.cond27.preheader, %for.inc
  %x.080 = phi i32 [ %inc, %for.inc ], [ %spec.select, %for.cond27.preheader ]
  %6 = load i16*, i16** %mmapp, align 8, !tbaa !2
  %7 = load i32, i32* %mapsizex, align 4, !tbaa !30
  %mul = mul nsw i32 %7, %y.083
  %add30 = add nsw i32 %mul, %x.080
  %idxprom = sext i32 %add30 to i64
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %8 = load i16, i16* %arrayidx, align 2, !tbaa !85
  %9 = load i16, i16* %fillnum, align 8, !tbaa !34
  %cmp32 = icmp eq i16 %8, %9
  br i1 %cmp32, label %for.inc, label %if.then33

if.then33:                                        ; preds = %for.body29
  tail call void @_ZN9regmngobj10addtoboundER9flexarrayI6pointtEii(%class.regmngobj* nonnull %this, %class.flexarray.4* nonnull dereferenceable(16) %b2arp, i32 %x.080, i32 %y.083) #19
  br label %for.inc

for.inc:                                          ; preds = %for.body29, %if.then33
  %inc = add nsw i32 %x.080, 1
  %cmp28 = icmp slt i32 %x.080, %spec.select69
  br i1 %cmp28, label %for.body29, label %for.inc35

for.inc35:                                        ; preds = %for.inc, %for.cond27.preheader
  %inc36 = add nsw i32 %y.083, 1
  %cmp25 = icmp slt i32 %y.083, %y2.0
  br i1 %cmp25, label %for.cond27.preheader, label %for.inc38

for.inc38:                                        ; preds = %for.inc35, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %10 = load i32, i32* %elemqu, align 8, !tbaa !107
  %11 = sext i32 %10 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %11
  br i1 %cmp, label %for.body, label %for.end40

for.end40:                                        ; preds = %for.inc38, %entry
  ret void
}

; Function Attrs: optsize
define dso_local i1 @_ZN9regmngobj13findfreeplaceEiiRiS0_(%class.regmngobj* nocapture %this, i32 %x0, i32 %y0, i32* nocapture dereferenceable(4) %xpl, i32* nocapture dereferenceable(4) %ypl) local_unnamed_addr #0 align 2 {
entry:
  %bound1arp = alloca %class.flexarray.4, align 8
  %bound2arp = alloca %class.flexarray.4, align 8
  %0 = bitcast %class.flexarray.4* %bound1arp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #21
  %1 = bitcast %class.flexarray.4* %bound2arp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #21
  %flfind = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 4
  store i8 0, i8* %flfind, align 4, !tbaa !104
  %fillnum = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 1
  %2 = load i16, i16* %fillnum, align 8, !tbaa !34
  %inc = add i16 %2, 1
  store i16 %inc, i16* %fillnum, align 8, !tbaa !34
  %cmp = icmp eq i16 %inc, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = bitcast %class.regmngobj* %this to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !2
  %mapsizex = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 16
  %5 = load i32, i32* %mapsizex, align 4, !tbaa !30
  %mapsizey = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 17
  %6 = load i32, i32* %mapsizey, align 8, !tbaa !31
  %mul = mul nsw i32 %6, %5
  %conv3 = sext i32 %mul to i64
  %mul4 = shl nsw i64 %conv3, 1
  tail call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 %mul4, i1 false)
  store i16 1, i16* %fillnum, align 8, !tbaa !34
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = phi i16 [ 1, %if.then ], [ %inc, %entry ]
  store i32 -1, i32* %xpl, align 4, !tbaa !24
  store i32 -1, i32* %ypl, align 4, !tbaa !24
  %freepointx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 2
  store i32 -1, i32* %freepointx, align 4, !tbaa !105
  %freepointy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 3
  store i32 -1, i32* %freepointy, align 8, !tbaa !106
  %maxelemqu.i = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %bound1arp, i64 0, i32 2
  store i32 128, i32* %maxelemqu.i, align 4, !tbaa !108
  %elemqu.i = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %bound1arp, i64 0, i32 1
  store i32 0, i32* %elemqu.i, align 8, !tbaa !107
  %call.i.i = tail call noalias dereferenceable_or_null(1024) i8* @malloc(i64 1024) #20
  %8 = bitcast %class.flexarray.4* %bound1arp to i8**
  store i8* %call.i.i, i8** %8, align 8, !tbaa !109
  %maxelemqu.i109 = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %bound2arp, i64 0, i32 2
  store i32 128, i32* %maxelemqu.i109, align 4, !tbaa !108
  %elemqu.i110 = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %bound2arp, i64 0, i32 1
  store i32 0, i32* %elemqu.i110, align 8, !tbaa !107
  %call.i.i111 = tail call noalias dereferenceable_or_null(1024) i8* @malloc(i64 1024) #20
  %9 = bitcast %class.flexarray.4* %bound2arp to i8**
  store i8* %call.i.i111, i8** %9, align 8, !tbaa !109
  %10 = or i32 %y0, %x0
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %land.lhs.true8, label %if.end22

land.lhs.true8:                                   ; preds = %if.end
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 12
  %12 = load i32, i32* %mapmaxx, align 4, !tbaa !32
  %cmp9 = icmp slt i32 %12, %x0
  br i1 %cmp9, label %if.end22, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 13
  %13 = load i32, i32* %mapmaxy, align 8, !tbaa !33
  %cmp11 = icmp slt i32 %13, %y0
  br i1 %cmp11, label %if.end22, label %if.then12

if.then12:                                        ; preds = %land.lhs.true10
  %mmapp13 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 0
  %14 = load i16*, i16** %mmapp13, align 8, !tbaa !2
  %mapsizex14 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 16
  %15 = load i32, i32* %mapsizex14, align 4, !tbaa !30
  %mul15 = mul nsw i32 %15, %y0
  %add = add nsw i32 %mul15, %x0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16, i16* %14, i64 %idxprom
  %16 = load i16, i16* %arrayidx, align 2, !tbaa !85
  %cmp19 = icmp eq i16 %16, %7
  br i1 %cmp19, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.then12
  call void @_ZN9regmngobj10addtoboundER9flexarrayI6pointtEii(%class.regmngobj* nonnull %this, %class.flexarray.4* nonnull dereferenceable(16) %bound1arp, i32 %x0, i32 %y0) #19
  br label %if.end22

if.end22:                                         ; preds = %if.then12, %land.lhs.true10, %land.lhs.true8, %if.then20, %if.end
  %sub = add nsw i32 %x0, -1
  %sub23 = add nsw i32 %y0, -1
  %add24 = add nsw i32 %x0, 1
  %add25 = add nsw i32 %y0, 1
  %cmp26.inv = icmp sgt i32 %x0, 0
  %spec.select = select i1 %cmp26.inv, i32 %sub, i32 0
  %cmp29.inv = icmp sgt i32 %y0, 0
  %y1.0 = select i1 %cmp29.inv, i32 %sub23, i32 0
  %mapmaxx32 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 12
  %17 = load i32, i32* %mapmaxx32, align 4, !tbaa !32
  %cmp33 = icmp sgt i32 %17, %x0
  %spec.select108 = select i1 %cmp33, i32 %add24, i32 %17
  %mapmaxy37 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 13
  %18 = load i32, i32* %mapmaxy37, align 8, !tbaa !33
  %cmp38 = icmp sgt i32 %18, %y0
  %y2.0 = select i1 %cmp38, i32 %add25, i32 %18
  %cmp42117 = icmp sgt i32 %y1.0, %y2.0
  br i1 %cmp42117, label %for.end61, label %for.cond43.preheader.lr.ph

for.cond43.preheader.lr.ph:                       ; preds = %if.end22
  %cmp44114 = icmp sgt i32 %spec.select, %spec.select108
  %mmapp46 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 0
  %mapsizex47 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this, i64 0, i32 16
  br label %for.cond43.preheader

for.cond43.preheader:                             ; preds = %for.inc59, %for.cond43.preheader.lr.ph
  %y.0118 = phi i32 [ %y1.0, %for.cond43.preheader.lr.ph ], [ %inc60, %for.inc59 ]
  br i1 %cmp44114, label %for.inc59, label %for.body45

for.body45:                                       ; preds = %for.cond43.preheader, %for.inc
  %x.0115 = phi i32 [ %inc58, %for.inc ], [ %spec.select, %for.cond43.preheader ]
  %19 = load i16*, i16** %mmapp46, align 8, !tbaa !2
  %20 = load i32, i32* %mapsizex47, align 4, !tbaa !30
  %mul48 = mul nsw i32 %20, %y.0118
  %add49 = add nsw i32 %mul48, %x.0115
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds i16, i16* %19, i64 %idxprom50
  %21 = load i16, i16* %arrayidx51, align 2, !tbaa !85
  %22 = load i16, i16* %fillnum, align 8, !tbaa !34
  %cmp55 = icmp eq i16 %21, %22
  br i1 %cmp55, label %for.inc, label %if.then56

if.then56:                                        ; preds = %for.body45
  call void @_ZN9regmngobj10addtoboundER9flexarrayI6pointtEii(%class.regmngobj* nonnull %this, %class.flexarray.4* nonnull dereferenceable(16) %bound1arp, i32 %x.0115, i32 %y.0118) #19
  br label %for.inc

for.inc:                                          ; preds = %for.body45, %if.then56
  %inc58 = add nsw i32 %x.0115, 1
  %cmp44 = icmp slt i32 %x.0115, %spec.select108
  br i1 %cmp44, label %for.body45, label %for.inc59

for.inc59:                                        ; preds = %for.inc, %for.cond43.preheader
  %inc60 = add nsw i32 %y.0118, 1
  %cmp42 = icmp slt i32 %y.0118, %y2.0
  br i1 %cmp42, label %for.cond43.preheader, label %for.end61

for.end61:                                        ; preds = %for.inc59, %if.end22
  %23 = load i32, i32* %elemqu.i, align 8, !tbaa !107
  %cmp62112 = icmp eq i32 %23, 0
  br i1 %cmp62112, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %for.end61, %if.end72
  %flodd.0.off0113 = phi i1 [ %newflodd.0.off0, %if.end72 ], [ false, %for.end61 ]
  %24 = load i8, i8* %flfind, align 4, !tbaa !104, !range !45
  %cmp65 = icmp eq i8 %24, 0
  br i1 %cmp65, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  br i1 %flodd.0.off0113, label %if.else, label %if.then69

if.then69:                                        ; preds = %while.body
  call void @_ZN9regmngobj10makebound2ER9flexarrayI6pointtES3_(%class.regmngobj* nonnull %this, %class.flexarray.4* nonnull dereferenceable(16) %bound1arp, %class.flexarray.4* nonnull dereferenceable(16) %bound2arp) #19
  br label %if.end72

if.else:                                          ; preds = %while.body
  call void @_ZN9regmngobj10makebound2ER9flexarrayI6pointtES3_(%class.regmngobj* nonnull %this, %class.flexarray.4* nonnull dereferenceable(16) %bound2arp, %class.flexarray.4* nonnull dereferenceable(16) %bound1arp) #19
  br label %if.end72

if.end72:                                         ; preds = %if.else, %if.then69
  %elemqu.i.sink = phi i32* [ %elemqu.i, %if.else ], [ %elemqu.i110, %if.then69 ]
  %newflodd.0.off0 = phi i1 [ false, %if.else ], [ true, %if.then69 ]
  %25 = load i32, i32* %elemqu.i.sink, align 8, !tbaa !107
  %cmp62 = icmp eq i32 %25, 0
  br i1 %cmp62, label %while.end, label %land.rhs

while.end:                                        ; preds = %land.rhs, %if.end72, %for.end61
  %26 = load i8*, i8** %8, align 8, !tbaa !109
  call void @free(i8* %26) #20
  %27 = load i8*, i8** %9, align 8, !tbaa !109
  call void @free(i8* %27) #20
  %28 = load i32, i32* %freepointx, align 4, !tbaa !105
  store i32 %28, i32* %xpl, align 4, !tbaa !24
  %29 = load i32, i32* %freepointy, align 8, !tbaa !106
  store i32 %29, i32* %ypl, align 4, !tbaa !24
  %30 = load i8, i8* %flfind, align 4, !tbaa !104, !range !45
  %tobool77 = icmp ne i8 %30, 0
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #21
  ret i1 %tobool77
}

; Function Attrs: optsize
define dso_local void @_ZN11regboundobj10addtoboundER9flexarrayI6pointtEii(%class.regboundobj* nocapture readonly %this, %class.flexarray.4* dereferenceable(16) %barp, i32 %x, i32 %y) local_unnamed_addr #0 align 2 {
entry:
  %regmngp = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 16
  %0 = load %class.regmngobj*, %class.regmngobj** %regmngp, align 8, !tbaa !112
  %landscapemapp.i = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 11
  %1 = load i8*, i8** %landscapemapp.i, align 8, !tbaa !113
  %mapsizex.i = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 12
  %2 = load i32, i32* %mapsizex.i, align 8, !tbaa !114
  %mul.i = mul nsw i32 %2, %y
  %add.i = add nsw i32 %mul.i, %x
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %1, i64 %idxprom.i
  %3 = load i8, i8* %arrayidx.i, align 1, !tbaa !29
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %0, i64 0, i32 8, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !35, !range !45
  %tobool = icmp eq i8 %4, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %xc = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 6
  %5 = load i32, i32* %xc, align 8, !tbaa !115
  %sub = sub nsw i32 %x, %5
  %mul.i31 = mul nsw i32 %sub, %sub
  %yc = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 7
  %6 = load i32, i32* %yc, align 4, !tbaa !116
  %sub3 = sub nsw i32 %y, %6
  %mul.i33 = mul nsw i32 %sub3, %sub3
  %add = add nuw nsw i32 %mul.i33, %mul.i31
  %conv = sitofp i32 %add to float
  %add.i32 = fadd float %conv, 5.000000e-01
  %conv.i = fptosi float %add.i32 to i32
  %regionradius2 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 9
  %7 = load i32, i32* %regionradius2, align 4, !tbaa !117
  %cmp = icmp slt i32 %7, %conv.i
  br i1 %cmp, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.then
  %elemqu.i = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %barp, i64 0, i32 1
  %8 = load i32, i32* %elemqu.i, align 8, !tbaa !107
  %maxelemqu.i = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %barp, i64 0, i32 2
  %9 = load i32, i32* %maxelemqu.i, align 4, !tbaa !108
  %cmp.i = icmp eq i32 %8, %9
  br i1 %cmp.i, label %if.then.i, label %_ZN9flexarrayI6pointtE3addERKS0_.exit

if.then.i:                                        ; preds = %if.then6
  tail call void @_ZN9flexarrayI6pointtE8doublingEb(%class.flexarray.4* nonnull %barp, i1 true) #19
  %.pre.i = load i32, i32* %elemqu.i, align 8, !tbaa !107
  br label %_ZN9flexarrayI6pointtE3addERKS0_.exit

_ZN9flexarrayI6pointtE3addERKS0_.exit:            ; preds = %if.then6, %if.then.i
  %10 = phi i32 [ %.pre.i, %if.then.i ], [ %8, %if.then6 ]
  %ep.i = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %barp, i64 0, i32 0
  %11 = load %struct.pointt*, %struct.pointt** %ep.i, align 8, !tbaa !109
  %idxprom.i29 = sext i32 %10 to i64
  %arrayidx.i30 = getelementptr inbounds %struct.pointt, %struct.pointt* %11, i64 %idxprom.i29
  %12 = bitcast %struct.pointt* %arrayidx.i30 to i64*
  %ref.tmp.sroa.4.0.insert.ext = zext i32 %y to i64
  %ref.tmp.sroa.4.0.insert.shift = shl nuw i64 %ref.tmp.sroa.4.0.insert.ext, 32
  %ref.tmp.sroa.0.0.insert.ext = zext i32 %x to i64
  %ref.tmp.sroa.0.0.insert.insert = or i64 %ref.tmp.sroa.4.0.insert.shift, %ref.tmp.sroa.0.0.insert.ext
  store i64 %ref.tmp.sroa.0.0.insert.insert, i64* %12, align 4
  %13 = load i32, i32* %elemqu.i, align 8, !tbaa !107
  %inc.i = add nsw i32 %13, 1
  store i32 %inc.i, i32* %elemqu.i, align 8, !tbaa !107
  %regionp = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 5
  %14 = bitcast %class.regobj** %regionp to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !118
  %regionmapp.i23 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 10
  %16 = load %class.regobj**, %class.regobj*** %regionmapp.i23, align 8, !tbaa !119
  %17 = load i32, i32* %mapsizex.i, align 8, !tbaa !114
  %mul.i25 = mul nsw i32 %17, %y
  %add.i26 = add nsw i32 %mul.i25, %x
  %idxprom.i27 = sext i32 %add.i26 to i64
  %arrayidx.i28 = getelementptr inbounds %class.regobj*, %class.regobj** %16, i64 %idxprom.i27
  %18 = bitcast %class.regobj** %arrayidx.i28 to i64*
  store i64 %15, i64* %18, align 8, !tbaa !26
  %19 = load %class.regobj*, %class.regobj** %regionp, align 8, !tbaa !118
  %square = getelementptr inbounds %class.regobj, %class.regobj* %19, i64 0, i32 4
  %20 = load i32, i32* %square, align 8, !tbaa !36
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %square, align 8, !tbaa !36
  br label %if.end10

if.else:                                          ; preds = %entry
  %regionmapp.i = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 10
  %21 = load %class.regobj**, %class.regobj*** %regionmapp.i, align 8, !tbaa !119
  %arrayidx.i22 = getelementptr inbounds %class.regobj*, %class.regobj** %21, i64 %idxprom.i
  store %class.regobj* null, %class.regobj** %arrayidx.i22, align 8, !tbaa !26
  br label %if.end10

if.end10:                                         ; preds = %if.then, %_ZN9flexarrayI6pointtE3addERKS0_.exit, %if.else
  ret void
}

; Function Attrs: optsize
define dso_local void @_ZN11regboundobj10makebound2ER9flexarrayI6pointtES3_(%class.regboundobj* nocapture readonly %this, %class.flexarray.4* nocapture readonly dereferenceable(16) %b1arp, %class.flexarray.4* dereferenceable(16) %b2arp) local_unnamed_addr #0 align 2 {
entry:
  %elemqu.i = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %b2arp, i64 0, i32 1
  store i32 0, i32* %elemqu.i, align 8, !tbaa !107
  %elemqu = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %b1arp, i64 0, i32 1
  %0 = load i32, i32* %elemqu, align 8, !tbaa !107
  %cmp86 = icmp sgt i32 %0, 0
  br i1 %cmp86, label %for.body.lr.ph, label %for.end39

for.body.lr.ph:                                   ; preds = %entry
  %ep.i = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %b1arp, i64 0, i32 0
  %mapmaxx = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 14
  %mapmaxy = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 15
  %regionmapp.i = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 10
  %mapsizex.i = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc37
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc37 ]
  %1 = load %struct.pointt*, %struct.pointt** %ep.i, align 8, !tbaa !109
  %x3 = getelementptr inbounds %struct.pointt, %struct.pointt* %1, i64 %indvars.iv, i32 0
  %2 = load i32, i32* %x3, align 4, !tbaa !110
  %sub = add nsw i32 %2, -1
  %y5 = getelementptr inbounds %struct.pointt, %struct.pointt* %1, i64 %indvars.iv, i32 1
  %3 = load i32, i32* %y5, align 4, !tbaa !111
  %sub6 = add nsw i32 %3, -1
  %add = add nsw i32 %2, 1
  %add11 = add nsw i32 %3, 1
  %cmp12.inv = icmp sgt i32 %2, 0
  %spec.select = select i1 %cmp12.inv, i32 %sub, i32 0
  %cmp13.inv = icmp sgt i32 %3, 0
  %y1.0 = select i1 %cmp13.inv, i32 %sub6, i32 0
  %4 = load i32, i32* %mapmaxx, align 8, !tbaa !120
  %cmp16 = icmp slt i32 %2, %4
  %spec.select68 = select i1 %cmp16, i32 %add, i32 %4
  %5 = load i32, i32* %mapmaxy, align 4, !tbaa !121
  %cmp20 = icmp slt i32 %3, %5
  %y2.0 = select i1 %cmp20, i32 %add11, i32 %5
  %cmp2583 = icmp sgt i32 %y1.0, %y2.0
  br i1 %cmp2583, label %for.inc37, label %for.cond27.preheader.lr.ph

for.cond27.preheader.lr.ph:                       ; preds = %for.body
  %cmp2880 = icmp sgt i32 %spec.select, %spec.select68
  br label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %for.inc34, %for.cond27.preheader.lr.ph
  %y.084 = phi i32 [ %y1.0, %for.cond27.preheader.lr.ph ], [ %inc35, %for.inc34 ]
  br i1 %cmp2880, label %for.inc34, label %for.body29

for.body29:                                       ; preds = %for.cond27.preheader, %for.inc
  %x.081 = phi i32 [ %inc, %for.inc ], [ %spec.select, %for.cond27.preheader ]
  %6 = load %class.regobj**, %class.regobj*** %regionmapp.i, align 8, !tbaa !119
  %7 = load i32, i32* %mapsizex.i, align 8, !tbaa !114
  %mul.i = mul nsw i32 %7, %y.084
  %add.i = add nsw i32 %mul.i, %x.081
  %idxprom.i69 = sext i32 %add.i to i64
  %arrayidx.i70 = getelementptr inbounds %class.regobj*, %class.regobj** %6, i64 %idxprom.i69
  %8 = load %class.regobj*, %class.regobj** %arrayidx.i70, align 8, !tbaa !26
  %cmp31 = icmp eq %class.regobj* %8, null
  br i1 %cmp31, label %if.then32, label %for.inc

if.then32:                                        ; preds = %for.body29
  tail call void @_ZN11regboundobj10addtoboundER9flexarrayI6pointtEii(%class.regboundobj* nonnull %this, %class.flexarray.4* nonnull dereferenceable(16) %b2arp, i32 %x.081, i32 %y.084) #19
  br label %for.inc

for.inc:                                          ; preds = %for.body29, %if.then32
  %inc = add nsw i32 %x.081, 1
  %cmp28 = icmp slt i32 %x.081, %spec.select68
  br i1 %cmp28, label %for.body29, label %for.inc34

for.inc34:                                        ; preds = %for.inc, %for.cond27.preheader
  %inc35 = add nsw i32 %y.084, 1
  %cmp25 = icmp slt i32 %y.084, %y2.0
  br i1 %cmp25, label %for.cond27.preheader, label %for.inc37

for.inc37:                                        ; preds = %for.inc34, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = load i32, i32* %elemqu, align 8, !tbaa !107
  %10 = sext i32 %9 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %10
  br i1 %cmp, label %for.body, label %for.end39

for.end39:                                        ; preds = %for.inc37, %entry
  ret void
}

; Function Attrs: optsize
define dso_local i1 @_ZN11regboundobj4stepEv(%class.regboundobj* %this) local_unnamed_addr #0 align 2 {
entry:
  %boundl = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 4
  %0 = load i32, i32* %boundl, align 4, !tbaa !122
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %flexist = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 17
  %1 = load i8, i8* %flexist, align 8, !tbaa !49, !range !45
  %cmp2 = icmp eq i8 %1, 0
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %flodd = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 2
  %2 = load i8, i8* %flodd, align 8, !tbaa !123, !range !45
  %cmp5 = icmp eq i8 %2, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %boundar = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 0
  %bound2arp = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 1
  tail call void @_ZN11regboundobj10makebound2ER9flexarrayI6pointtES3_(%class.regboundobj* nonnull %this, %class.flexarray.4* dereferenceable(16) %boundar, %class.flexarray.4* nonnull dereferenceable(16) %bound2arp) #19
  %elemqu = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 1, i32 1
  br label %if.end16

if.else:                                          ; preds = %if.end
  %bound2arp10 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 1
  %boundar11 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 0
  tail call void @_ZN11regboundobj10makebound2ER9flexarrayI6pointtES3_(%class.regboundobj* nonnull %this, %class.flexarray.4* nonnull dereferenceable(16) %bound2arp10, %class.flexarray.4* dereferenceable(16) %boundar11) #19
  %elemqu13 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 0, i32 1
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then6
  %storemerge21.in = phi i32* [ %elemqu, %if.then6 ], [ %elemqu13, %if.else ]
  %storemerge = phi i8 [ 1, %if.then6 ], [ 0, %if.else ]
  %storemerge21 = load i32, i32* %storemerge21.in, align 8, !tbaa !24
  store i32 %storemerge21, i32* %boundl, align 4, !tbaa !122
  store i8 %storemerge, i8* %flodd, align 8, !tbaa !123
  %cmp18 = icmp ne i32 %storemerge21, 0
  br label %return

return:                                           ; preds = %if.end16, %entry, %lor.lhs.false
  %retval.0 = phi i1 [ false, %lor.lhs.false ], [ false, %entry ], [ %cmp18, %if.end16 ]
  ret i1 %retval.0
}

; Function Attrs: optsize
define dso_local void @_ZN11regboundobj9firststepEiiP6regobjP9regmngobj(%class.regboundobj* %this, i32 %x0, i32 %y0, %class.regobj* %regionpin, %class.regmngobj* %regmngpin) local_unnamed_addr #0 align 2 {
entry:
  %xc = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 6
  store i32 %x0, i32* %xc, align 8, !tbaa !115
  %yc = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 7
  store i32 %y0, i32* %yc, align 4, !tbaa !116
  %regionp = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 5
  store %class.regobj* %regionpin, %class.regobj** %regionp, align 8, !tbaa !118
  %regmngp = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 16
  store %class.regmngobj* %regmngpin, %class.regmngobj** %regmngp, align 8, !tbaa !112
  %regionmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %regmngpin, i64 0, i32 6
  %0 = bitcast %class.regobj*** %regionmapp to i64*
  %1 = load i64, i64* %0, align 8, !tbaa !27
  %regionmapp3 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 10
  %2 = bitcast %class.regobj*** %regionmapp3 to i64*
  store i64 %1, i64* %2, align 8, !tbaa !119
  %landscapemapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %regmngpin, i64 0, i32 7
  %3 = bitcast i8** %landscapemapp to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !28
  %landscapemapp5 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 11
  %5 = bitcast i8** %landscapemapp5 to i64*
  store i64 %4, i64* %5, align 8, !tbaa !113
  %mapsizex = getelementptr inbounds %class.regmngobj, %class.regmngobj* %regmngpin, i64 0, i32 16
  %6 = load i32, i32* %mapsizex, align 4, !tbaa !30
  %mapsizex7 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 12
  store i32 %6, i32* %mapsizex7, align 8, !tbaa !114
  %mapsizey = getelementptr inbounds %class.regmngobj, %class.regmngobj* %regmngpin, i64 0, i32 17
  %7 = load i32, i32* %mapsizey, align 8, !tbaa !31
  %mapsizey9 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 13
  store i32 %7, i32* %mapsizey9, align 4, !tbaa !124
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %regmngpin, i64 0, i32 12
  %8 = load i32, i32* %mapmaxx, align 4, !tbaa !32
  %mapmaxx11 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 14
  store i32 %8, i32* %mapmaxx11, align 8, !tbaa !120
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %regmngpin, i64 0, i32 13
  %9 = load i32, i32* %mapmaxy, align 8, !tbaa !33
  %mapmaxy13 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 15
  store i32 %9, i32* %mapmaxy13, align 4, !tbaa !121
  %regionradius = getelementptr inbounds %class.regmngobj, %class.regmngobj* %regmngpin, i64 0, i32 9
  %10 = load i32, i32* %regionradius, align 8, !tbaa !55
  %regionradius15 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 8
  store i32 %10, i32* %regionradius15, align 8, !tbaa !125
  %mul = mul nsw i32 %10, %10
  %regionradius2 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 9
  store i32 %mul, i32* %regionradius2, align 4, !tbaa !117
  %flexist = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 17
  %11 = load i8, i8* %flexist, align 8, !tbaa !49, !range !45
  %cmp = icmp eq i8 %11, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %square = getelementptr inbounds %class.regobj, %class.regobj* %regionpin, i64 0, i32 4
  store i32 0, i32* %square, align 8, !tbaa !36
  %boundar = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 0
  %maxelemqu.i = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 0, i32 2
  store i32 128, i32* %maxelemqu.i, align 4, !tbaa !108
  %elemqu.i = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 0, i32 1
  store i32 0, i32* %elemqu.i, align 8, !tbaa !107
  %call.i.i = tail call noalias dereferenceable_or_null(1024) i8* @malloc(i64 1024) #20
  %12 = bitcast %class.regboundobj* %this to i8**
  store i8* %call.i.i, i8** %12, align 8, !tbaa !109
  %bound2arp = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 1
  %maxelemqu.i77 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 1, i32 2
  store i32 128, i32* %maxelemqu.i77, align 4, !tbaa !108
  %elemqu.i78 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 1, i32 1
  store i32 0, i32* %elemqu.i78, align 8, !tbaa !107
  %call.i.i79 = tail call noalias dereferenceable_or_null(1024) i8* @malloc(i64 1024) #20
  %13 = bitcast %class.flexarray.4* %bound2arp to i8**
  store i8* %call.i.i79, i8** %13, align 8, !tbaa !109
  %sub = add nsw i32 %x0, -1
  %sub19 = add nsw i32 %y0, -1
  %add = add nsw i32 %x0, 1
  %add20 = add nsw i32 %y0, 1
  %cmp21.inv = icmp sgt i32 %x0, 0
  %spec.select = select i1 %cmp21.inv, i32 %sub, i32 0
  %cmp24.inv = icmp sgt i32 %y0, 0
  %y1.0 = select i1 %cmp24.inv, i32 %sub19, i32 0
  %cmp28 = icmp sgt i32 %8, %x0
  %spec.select76 = select i1 %cmp28, i32 %add, i32 %8
  %cmp33 = icmp sgt i32 %9, %y0
  %y2.0 = select i1 %cmp33, i32 %add20, i32 %9
  %cmp3783 = icmp sgt i32 %y1.0, %y2.0
  br i1 %cmp3783, label %for.end47, label %for.cond38.preheader.lr.ph

for.cond38.preheader.lr.ph:                       ; preds = %if.end
  %cmp3980 = icmp sgt i32 %spec.select, %spec.select76
  br label %for.cond38.preheader

for.cond38.preheader:                             ; preds = %for.inc45, %for.cond38.preheader.lr.ph
  %y.084 = phi i32 [ %y1.0, %for.cond38.preheader.lr.ph ], [ %inc46, %for.inc45 ]
  br i1 %cmp3980, label %for.inc45, label %for.body40

for.body40:                                       ; preds = %for.cond38.preheader, %for.inc
  %x.081 = phi i32 [ %inc, %for.inc ], [ %spec.select, %for.cond38.preheader ]
  %14 = load %class.regobj**, %class.regobj*** %regionmapp3, align 8, !tbaa !119
  %15 = load i32, i32* %mapsizex7, align 8, !tbaa !114
  %mul.i = mul nsw i32 %15, %y.084
  %add.i = add nsw i32 %mul.i, %x.081
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds %class.regobj*, %class.regobj** %14, i64 %idxprom.i
  %16 = load %class.regobj*, %class.regobj** %arrayidx.i, align 8, !tbaa !26
  %cmp41 = icmp eq %class.regobj* %16, null
  br i1 %cmp41, label %if.then42, label %for.inc

if.then42:                                        ; preds = %for.body40
  tail call void @_ZN11regboundobj10addtoboundER9flexarrayI6pointtEii(%class.regboundobj* nonnull %this, %class.flexarray.4* nonnull dereferenceable(16) %boundar, i32 %x.081, i32 %y.084) #19
  br label %for.inc

for.inc:                                          ; preds = %for.body40, %if.then42
  %inc = add nsw i32 %x.081, 1
  %cmp39 = icmp slt i32 %x.081, %spec.select76
  br i1 %cmp39, label %for.body40, label %for.inc45

for.inc45:                                        ; preds = %for.inc, %for.cond38.preheader
  %inc46 = add nsw i32 %y.084, 1
  %cmp37 = icmp slt i32 %y.084, %y2.0
  br i1 %cmp37, label %for.cond38.preheader, label %for.end47.loopexit

for.end47.loopexit:                               ; preds = %for.inc45
  %.pre = load i32, i32* %elemqu.i, align 8, !tbaa !126
  br label %for.end47

for.end47:                                        ; preds = %for.end47.loopexit, %if.end
  %17 = phi i32 [ %.pre, %for.end47.loopexit ], [ 0, %if.end ]
  %flodd = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 2
  store i8 0, i8* %flodd, align 8, !tbaa !123
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end47
  %.sink = phi i32 [ %17, %for.end47 ], [ 0, %entry ]
  %boundl49 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 4
  store i32 %.sink, i32* %boundl49, align 4, !tbaa !122
  ret void
}

; Function Attrs: nounwind optsize
define dso_local void @_ZN11regboundobj7destroyEv(%class.regboundobj* nocapture readonly %this) local_unnamed_addr #8 align 2 {
entry:
  %0 = bitcast %class.regboundobj* %this to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !109
  tail call void @free(i8* %1) #20
  %bound2arp = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this, i64 0, i32 1
  %2 = bitcast %class.flexarray.4* %bound2arp to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !109
  tail call void @free(i8* %3) #20
  ret void
}

; Function Attrs: norecurse nounwind optsize readonly
define dso_local i1 @_ZN6wayobj5ismapEii(%class.wayobj* nocapture readonly %this, i32 %x, i32 %y) local_unnamed_addr #14 align 2 {
entry:
  %cmp = icmp slt i32 %x, 1
  %cmp2 = icmp slt i32 %y, 1
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %return, label %if.end4

if.end4:                                          ; preds = %entry
  %mapmaxx1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 5
  %0 = load i32, i32* %mapmaxx1, align 4, !tbaa !75
  %cmp5 = icmp slt i32 %0, %x
  br i1 %cmp5, label %return, label %if.end7

if.end7:                                          ; preds = %if.end4
  %mapmaxy1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 6
  %1 = load i32, i32* %mapmaxy1, align 8, !tbaa !76
  %cmp8 = icmp sge i32 %1, %y
  br label %return

return:                                           ; preds = %if.end7, %if.end4, %entry
  %retval.0 = phi i1 [ false, %entry ], [ false, %if.end4 ], [ %cmp8, %if.end7 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind optsize readonly
define dso_local i1 @_ZN6wayobj10ismoveableEff(%class.wayobj* nocapture readonly %this, float %x, float %y) local_unnamed_addr #15 align 2 {
entry:
  %xcoef1.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 9
  %0 = load float, float* %xcoef1.i, align 4, !tbaa !70
  %xcoef2.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 10
  %1 = load float, float* %xcoef2.i, align 8, !tbaa !71
  %2 = tail call float @llvm.fmuladd.f32(float %x, float %0, float %1) #21
  %conv.i = fptosi float %2 to i32
  %ycoef1.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 11
  %3 = load float, float* %ycoef1.i, align 4, !tbaa !73
  %ycoef2.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 12
  %4 = load float, float* %ycoef2.i, align 8, !tbaa !74
  %5 = tail call float @llvm.fmuladd.f32(float %y, float %3, float %4) #21
  %conv.i12 = fptosi float %5 to i32
  %cmp.i = icmp slt i32 %conv.i, 1
  %cmp2.i = icmp slt i32 %conv.i12, 1
  %or.cond.i = or i1 %cmp.i, %cmp2.i
  br i1 %or.cond.i, label %cleanup, label %if.end4.i

if.end4.i:                                        ; preds = %entry
  %mapmaxx1.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 5
  %6 = load i32, i32* %mapmaxx1.i, align 4, !tbaa !75
  %cmp5.i = icmp slt i32 %6, %conv.i
  br i1 %cmp5.i, label %cleanup, label %_ZN6wayobj5ismapEii.exit

_ZN6wayobj5ismapEii.exit:                         ; preds = %if.end4.i
  %mapmaxy1.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 6
  %7 = load i32, i32* %mapmaxy1.i, align 8, !tbaa !76
  %cmp8.i = icmp slt i32 %7, %conv.i12
  br i1 %cmp8.i, label %cleanup, label %if.end

if.end:                                           ; preds = %_ZN6wayobj5ismapEii.exit
  %maparp.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 17
  %8 = load i16*, i16** %maparp.i, align 8, !tbaa !83
  %shift.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 2
  %9 = load i32, i32* %shift.i, align 8, !tbaa !84
  %shl.i = shl i32 %conv.i12, %9
  %or.i = or i32 %shl.i, %conv.i
  %idxprom.i = sext i32 %or.i to i64
  %arrayidx.i = getelementptr inbounds i16, i16* %8, i64 %idxprom.i
  %10 = load i16, i16* %arrayidx.i, align 2, !tbaa !85
  %tobool = icmp eq i16 %10, 0
  br label %cleanup

cleanup:                                          ; preds = %_ZN6wayobj5ismapEii.exit, %if.end4.i, %entry, %if.end
  %retval.0 = phi i1 [ false, %_ZN6wayobj5ismapEii.exit ], [ %tobool, %if.end ], [ false, %entry ], [ false, %if.end4.i ]
  ret i1 %retval.0
}

; Function Attrs: norecurse nounwind optsize readonly
define dso_local %class.rvectort @_ZN6wayobj8getpointEi(%class.wayobj* nocapture readonly %this, i32 %index) local_unnamed_addr #14 align 2 {
entry:
  %indexxmask = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 22
  %0 = load i32, i32* %indexxmask, align 4, !tbaa !102
  %and = and i32 %0, %index
  %shift = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 2
  %1 = load i32, i32* %shift, align 8, !tbaa !84
  %shr = ashr i32 %index, %1
  %minx = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 0
  %2 = load float, float* %minx, align 8, !tbaa !77
  %cellr = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 13
  %3 = load float, float* %cellr, align 4, !tbaa !69
  %add = fadd float %2, %3
  %conv = sitofp i32 %and to float
  %maxx = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 1
  %4 = load float, float* %maxx, align 4, !tbaa !78
  %sub = fsub float %4, %2
  %mul = fmul float %sub, %conv
  %maplx = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 7
  %5 = load i32, i32* %maplx, align 4, !tbaa !79
  %conv5 = sitofp i32 %5 to float
  %div = fdiv float %mul, %conv5
  %add6 = fadd float %add, %div
  %miny = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 2
  %6 = load float, float* %miny, align 8, !tbaa !80
  %add11 = fadd float %3, %6
  %conv12 = sitofp i32 %shr to float
  %maxy = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 3
  %7 = load float, float* %maxy, align 4, !tbaa !81
  %sub16 = fsub float %7, %6
  %mul17 = fmul float %sub16, %conv12
  %maply = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 8
  %8 = load i32, i32* %maply, align 8, !tbaa !82
  %conv18 = sitofp i32 %8 to float
  %div19 = fdiv float %mul17, %conv18
  %add20 = fadd float %add11, %div19
  %.fca.0.insert = insertvalue %class.rvectort undef, float %add6, 0
  %.fca.1.insert = insertvalue %class.rvectort %.fca.0.insert, float 0.000000e+00, 1
  %.fca.2.insert = insertvalue %class.rvectort %.fca.1.insert, float %add20, 2
  ret %class.rvectort %.fca.2.insert
}

; Function Attrs: nofree norecurse nounwind optsize
define dso_local i32 @_ZN6wayobj10makebound2EPiiS0_(%class.wayobj* %this, i32* nocapture readonly %bound1p, i32 %bound1l, i32* nocapture %bound2p) local_unnamed_addr #9 align 2 {
entry:
  %maply = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 8
  %0 = load i32, i32* %maply, align 8, !tbaa !82
  %waymap2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 18
  %1 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap2, align 8, !tbaa !88
  %cmp400 = icmp sgt i32 %bound1l, 0
  br i1 %cmp400, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %fillnum6 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 27
  %2 = load i16, i16* %fillnum6, align 2, !tbaa !103
  %maparp = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 17
  %step = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 26
  %endindex = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 25
  %maxboundlength = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 21
  %wide.trip.count = zext i32 %bound1l to i64
  br label %for.body

for.body:                                         ; preds = %if.end258, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end258 ]
  %bound2l.0401 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %if.end258 ]
  %arrayidx = getelementptr inbounds i32, i32* %bound1p, i64 %indvars.iv
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !24
  %sub = sub nsw i32 %3, %0
  %sub3 = add nsw i32 %sub, -1
  %idxprom4 = sext i32 %sub3 to i64
  %fillnum = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom4, i32 0
  %4 = load i16, i16* %fillnum, align 2, !tbaa !127
  %cmp8 = icmp eq i16 %4, %2
  br i1 %cmp8, label %if.end25, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load i16*, i16** %maparp, align 8, !tbaa !83
  %arrayidx10 = getelementptr inbounds i16, i16* %5, i64 %idxprom4
  %6 = load i16, i16* %arrayidx10, align 2, !tbaa !85
  %cmp12 = icmp eq i16 %6, 0
  br i1 %cmp12, label %if.then13, label %if.end25

if.then13:                                        ; preds = %if.then
  %idxprom14 = sext i32 %bound2l.0401 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %bound2p, i64 %idxprom14
  store i32 %sub3, i32* %arrayidx15, align 4, !tbaa !24
  %inc = add nsw i32 %bound2l.0401, 1
  store i16 %2, i16* %fillnum, align 2, !tbaa !127
  %7 = load i16, i16* %step, align 8, !tbaa !129
  %num = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom4, i32 1
  store i16 %7, i16* %num, align 2, !tbaa !130
  %8 = load i32, i32* %endindex, align 4, !tbaa !131
  %cmp22 = icmp eq i32 %sub3, %8
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then13
  %flend = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 23
  store i8 1, i8* %flend, align 8, !tbaa !132
  br label %cleanup

if.end25:                                         ; preds = %for.body, %if.then, %if.then13
  %bound2l.1 = phi i32 [ %inc, %if.then13 ], [ %bound2l.0401, %if.then ], [ %bound2l.0401, %for.body ]
  %idxprom27 = sext i32 %sub to i64
  %fillnum29 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom27, i32 0
  %9 = load i16, i16* %fillnum29, align 2, !tbaa !127
  %cmp33 = icmp eq i16 %9, %2
  br i1 %cmp33, label %if.end58, label %if.then34

if.then34:                                        ; preds = %if.end25
  %10 = load i16*, i16** %maparp, align 8, !tbaa !83
  %arrayidx37 = getelementptr inbounds i16, i16* %10, i64 %idxprom27
  %11 = load i16, i16* %arrayidx37, align 2, !tbaa !85
  %cmp39 = icmp eq i16 %11, 0
  br i1 %cmp39, label %if.then40, label %if.end58

if.then40:                                        ; preds = %if.then34
  %idxprom41 = sext i32 %bound2l.1 to i64
  %arrayidx42 = getelementptr inbounds i32, i32* %bound2p, i64 %idxprom41
  store i32 %sub, i32* %arrayidx42, align 4, !tbaa !24
  %inc43 = add nsw i32 %bound2l.1, 1
  store i16 %2, i16* %fillnum29, align 2, !tbaa !127
  %12 = load i16, i16* %step, align 8, !tbaa !129
  %num51 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom27, i32 1
  store i16 %12, i16* %num51, align 2, !tbaa !130
  %13 = load i32, i32* %endindex, align 4, !tbaa !131
  %cmp53 = icmp eq i32 %sub, %13
  br i1 %cmp53, label %if.then54, label %if.end58

if.then54:                                        ; preds = %if.then40
  %flend55 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 23
  store i8 1, i8* %flend55, align 8, !tbaa !132
  br label %cleanup

if.end58:                                         ; preds = %if.end25, %if.then34, %if.then40
  %bound2l.2 = phi i32 [ %inc43, %if.then40 ], [ %bound2l.1, %if.then34 ], [ %bound2l.1, %if.end25 ]
  %add = add nsw i32 %sub, 1
  %idxprom60 = sext i32 %add to i64
  %fillnum62 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom60, i32 0
  %14 = load i16, i16* %fillnum62, align 2, !tbaa !127
  %cmp66 = icmp eq i16 %14, %2
  br i1 %cmp66, label %if.end91, label %if.then67

if.then67:                                        ; preds = %if.end58
  %15 = load i16*, i16** %maparp, align 8, !tbaa !83
  %arrayidx70 = getelementptr inbounds i16, i16* %15, i64 %idxprom60
  %16 = load i16, i16* %arrayidx70, align 2, !tbaa !85
  %cmp72 = icmp eq i16 %16, 0
  br i1 %cmp72, label %if.then73, label %if.end91

if.then73:                                        ; preds = %if.then67
  %idxprom74 = sext i32 %bound2l.2 to i64
  %arrayidx75 = getelementptr inbounds i32, i32* %bound2p, i64 %idxprom74
  store i32 %add, i32* %arrayidx75, align 4, !tbaa !24
  %inc76 = add nsw i32 %bound2l.2, 1
  store i16 %2, i16* %fillnum62, align 2, !tbaa !127
  %17 = load i16, i16* %step, align 8, !tbaa !129
  %num84 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom60, i32 1
  store i16 %17, i16* %num84, align 2, !tbaa !130
  %18 = load i32, i32* %endindex, align 4, !tbaa !131
  %cmp86 = icmp eq i32 %add, %18
  br i1 %cmp86, label %if.then87, label %if.end91

if.then87:                                        ; preds = %if.then73
  %flend88 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 23
  store i8 1, i8* %flend88, align 8, !tbaa !132
  br label %cleanup

if.end91:                                         ; preds = %if.end58, %if.then67, %if.then73
  %bound2l.3 = phi i32 [ %inc76, %if.then73 ], [ %bound2l.2, %if.then67 ], [ %bound2l.2, %if.end58 ]
  %sub92 = add nsw i32 %3, -1
  %idxprom93 = sext i32 %sub92 to i64
  %fillnum95 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom93, i32 0
  %19 = load i16, i16* %fillnum95, align 2, !tbaa !127
  %cmp99 = icmp eq i16 %19, %2
  br i1 %cmp99, label %if.end124, label %if.then100

if.then100:                                       ; preds = %if.end91
  %20 = load i16*, i16** %maparp, align 8, !tbaa !83
  %arrayidx103 = getelementptr inbounds i16, i16* %20, i64 %idxprom93
  %21 = load i16, i16* %arrayidx103, align 2, !tbaa !85
  %cmp105 = icmp eq i16 %21, 0
  br i1 %cmp105, label %if.then106, label %if.end124

if.then106:                                       ; preds = %if.then100
  %idxprom107 = sext i32 %bound2l.3 to i64
  %arrayidx108 = getelementptr inbounds i32, i32* %bound2p, i64 %idxprom107
  store i32 %sub92, i32* %arrayidx108, align 4, !tbaa !24
  %inc109 = add nsw i32 %bound2l.3, 1
  store i16 %2, i16* %fillnum95, align 2, !tbaa !127
  %22 = load i16, i16* %step, align 8, !tbaa !129
  %num117 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom93, i32 1
  store i16 %22, i16* %num117, align 2, !tbaa !130
  %23 = load i32, i32* %endindex, align 4, !tbaa !131
  %cmp119 = icmp eq i32 %sub92, %23
  br i1 %cmp119, label %if.then120, label %if.end124

if.then120:                                       ; preds = %if.then106
  %flend121 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 23
  store i8 1, i8* %flend121, align 8, !tbaa !132
  br label %cleanup

if.end124:                                        ; preds = %if.end91, %if.then100, %if.then106
  %bound2l.4 = phi i32 [ %inc109, %if.then106 ], [ %bound2l.3, %if.then100 ], [ %bound2l.3, %if.end91 ]
  %add125 = add nsw i32 %3, 1
  %idxprom126 = sext i32 %add125 to i64
  %fillnum128 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom126, i32 0
  %24 = load i16, i16* %fillnum128, align 2, !tbaa !127
  %cmp132 = icmp eq i16 %24, %2
  br i1 %cmp132, label %if.end157, label %if.then133

if.then133:                                       ; preds = %if.end124
  %25 = load i16*, i16** %maparp, align 8, !tbaa !83
  %arrayidx136 = getelementptr inbounds i16, i16* %25, i64 %idxprom126
  %26 = load i16, i16* %arrayidx136, align 2, !tbaa !85
  %cmp138 = icmp eq i16 %26, 0
  br i1 %cmp138, label %if.then139, label %if.end157

if.then139:                                       ; preds = %if.then133
  %idxprom140 = sext i32 %bound2l.4 to i64
  %arrayidx141 = getelementptr inbounds i32, i32* %bound2p, i64 %idxprom140
  store i32 %add125, i32* %arrayidx141, align 4, !tbaa !24
  %inc142 = add nsw i32 %bound2l.4, 1
  store i16 %2, i16* %fillnum128, align 2, !tbaa !127
  %27 = load i16, i16* %step, align 8, !tbaa !129
  %num150 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom126, i32 1
  store i16 %27, i16* %num150, align 2, !tbaa !130
  %28 = load i32, i32* %endindex, align 4, !tbaa !131
  %cmp152 = icmp eq i32 %add125, %28
  br i1 %cmp152, label %if.then153, label %if.end157

if.then153:                                       ; preds = %if.then139
  %flend154 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 23
  store i8 1, i8* %flend154, align 8, !tbaa !132
  br label %cleanup

if.end157:                                        ; preds = %if.end124, %if.then133, %if.then139
  %bound2l.5 = phi i32 [ %inc142, %if.then139 ], [ %bound2l.4, %if.then133 ], [ %bound2l.4, %if.end124 ]
  %add158 = add nsw i32 %3, %0
  %sub159 = add nsw i32 %add158, -1
  %idxprom160 = sext i32 %sub159 to i64
  %fillnum162 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom160, i32 0
  %29 = load i16, i16* %fillnum162, align 2, !tbaa !127
  %cmp166 = icmp eq i16 %29, %2
  br i1 %cmp166, label %if.end191, label %if.then167

if.then167:                                       ; preds = %if.end157
  %30 = load i16*, i16** %maparp, align 8, !tbaa !83
  %arrayidx170 = getelementptr inbounds i16, i16* %30, i64 %idxprom160
  %31 = load i16, i16* %arrayidx170, align 2, !tbaa !85
  %cmp172 = icmp eq i16 %31, 0
  br i1 %cmp172, label %if.then173, label %if.end191

if.then173:                                       ; preds = %if.then167
  %idxprom174 = sext i32 %bound2l.5 to i64
  %arrayidx175 = getelementptr inbounds i32, i32* %bound2p, i64 %idxprom174
  store i32 %sub159, i32* %arrayidx175, align 4, !tbaa !24
  %inc176 = add nsw i32 %bound2l.5, 1
  store i16 %2, i16* %fillnum162, align 2, !tbaa !127
  %32 = load i16, i16* %step, align 8, !tbaa !129
  %num184 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom160, i32 1
  store i16 %32, i16* %num184, align 2, !tbaa !130
  %33 = load i32, i32* %endindex, align 4, !tbaa !131
  %cmp186 = icmp eq i32 %sub159, %33
  br i1 %cmp186, label %if.then187, label %if.end191

if.then187:                                       ; preds = %if.then173
  %flend188 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 23
  store i8 1, i8* %flend188, align 8, !tbaa !132
  br label %cleanup

if.end191:                                        ; preds = %if.end157, %if.then167, %if.then173
  %bound2l.6 = phi i32 [ %inc176, %if.then173 ], [ %bound2l.5, %if.then167 ], [ %bound2l.5, %if.end157 ]
  %idxprom193 = sext i32 %add158 to i64
  %fillnum195 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom193, i32 0
  %34 = load i16, i16* %fillnum195, align 2, !tbaa !127
  %cmp199 = icmp eq i16 %34, %2
  br i1 %cmp199, label %if.end224, label %if.then200

if.then200:                                       ; preds = %if.end191
  %35 = load i16*, i16** %maparp, align 8, !tbaa !83
  %arrayidx203 = getelementptr inbounds i16, i16* %35, i64 %idxprom193
  %36 = load i16, i16* %arrayidx203, align 2, !tbaa !85
  %cmp205 = icmp eq i16 %36, 0
  br i1 %cmp205, label %if.then206, label %if.end224

if.then206:                                       ; preds = %if.then200
  %idxprom207 = sext i32 %bound2l.6 to i64
  %arrayidx208 = getelementptr inbounds i32, i32* %bound2p, i64 %idxprom207
  store i32 %add158, i32* %arrayidx208, align 4, !tbaa !24
  %inc209 = add nsw i32 %bound2l.6, 1
  store i16 %2, i16* %fillnum195, align 2, !tbaa !127
  %37 = load i16, i16* %step, align 8, !tbaa !129
  %num217 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom193, i32 1
  store i16 %37, i16* %num217, align 2, !tbaa !130
  %38 = load i32, i32* %endindex, align 4, !tbaa !131
  %cmp219 = icmp eq i32 %add158, %38
  br i1 %cmp219, label %if.then220, label %if.end224

if.then220:                                       ; preds = %if.then206
  %flend221 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 23
  store i8 1, i8* %flend221, align 8, !tbaa !132
  br label %cleanup

if.end224:                                        ; preds = %if.end191, %if.then200, %if.then206
  %bound2l.7 = phi i32 [ %inc209, %if.then206 ], [ %bound2l.6, %if.then200 ], [ %bound2l.6, %if.end191 ]
  %add226 = add nsw i32 %add158, 1
  %idxprom227 = sext i32 %add226 to i64
  %fillnum229 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom227, i32 0
  %39 = load i16, i16* %fillnum229, align 2, !tbaa !127
  %cmp233 = icmp eq i16 %39, %2
  br i1 %cmp233, label %if.end258, label %if.then234

if.then234:                                       ; preds = %if.end224
  %40 = load i16*, i16** %maparp, align 8, !tbaa !83
  %arrayidx237 = getelementptr inbounds i16, i16* %40, i64 %idxprom227
  %41 = load i16, i16* %arrayidx237, align 2, !tbaa !85
  %cmp239 = icmp eq i16 %41, 0
  br i1 %cmp239, label %if.then240, label %if.end258

if.then240:                                       ; preds = %if.then234
  %idxprom241 = sext i32 %bound2l.7 to i64
  %arrayidx242 = getelementptr inbounds i32, i32* %bound2p, i64 %idxprom241
  store i32 %add226, i32* %arrayidx242, align 4, !tbaa !24
  %inc243 = add nsw i32 %bound2l.7, 1
  store i16 %2, i16* %fillnum229, align 2, !tbaa !127
  %42 = load i16, i16* %step, align 8, !tbaa !129
  %num251 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom227, i32 1
  store i16 %42, i16* %num251, align 2, !tbaa !130
  %43 = load i32, i32* %endindex, align 4, !tbaa !131
  %cmp253 = icmp eq i32 %add226, %43
  br i1 %cmp253, label %if.then254, label %if.end258

if.then254:                                       ; preds = %if.then240
  %flend255 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 23
  store i8 1, i8* %flend255, align 8, !tbaa !132
  br label %cleanup

if.end258:                                        ; preds = %if.end224, %if.then234, %if.then240
  %bound2l.8 = phi i32 [ %inc243, %if.then240 ], [ %bound2l.7, %if.then234 ], [ %bound2l.7, %if.end224 ]
  %44 = load i32, i32* %maxboundlength, align 8, !tbaa !99
  %cmp259 = icmp slt i32 %bound2l.8, %44
  %sub262 = add nsw i32 %44, -1
  %spec.select = select i1 %cmp259, i32 %bound2l.8, i32 %sub262
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %cleanup, label %for.body

cleanup:                                          ; preds = %if.end258, %entry, %if.then254, %if.then220, %if.then187, %if.then153, %if.then120, %if.then87, %if.then54, %if.then23
  %retval.0 = phi i32 [ %inc, %if.then23 ], [ %inc43, %if.then54 ], [ %inc76, %if.then87 ], [ %inc109, %if.then120 ], [ %inc142, %if.then153 ], [ %inc176, %if.then187 ], [ %inc209, %if.then220 ], [ %inc243, %if.then254 ], [ 0, %entry ], [ %spec.select, %if.end258 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
define dso_local i1 @_ZN6wayobj4fillEiiii(%class.wayobj* %this, i32 %startx, i32 %starty, i32 %endx, i32 %endy) local_unnamed_addr #8 align 2 {
entry:
  %fillnum = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 27
  %0 = load i16, i16* %fillnum, align 2, !tbaa !103
  %cmp = icmp eq i16 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %waymap = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 18
  %1 = bitcast %struct.waymapcellt** %waymap to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !88
  %mapxshift = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 0
  %3 = load i32, i32* %mapxshift, align 8, !tbaa !86
  %shl = shl nuw i32 1, %3
  %mapyshift = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 1
  %4 = load i32, i32* %mapyshift, align 4, !tbaa !87
  %shl2 = shl i32 %shl, %4
  %conv3 = sext i32 %shl2 to i64
  %mul = shl nsw i64 %conv3, 2
  tail call void @llvm.memset.p0i8.i64(i8* align 2 %2, i8 0, i64 %mul, i1 false)
  store i16 0, i16* %fillnum, align 2, !tbaa !103
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = phi i16 [ 0, %if.then ], [ %0, %entry ]
  %inc = add nuw i16 %5, 1
  store i16 %inc, i16* %fillnum, align 2, !tbaa !103
  %shift.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 2
  %6 = load i32, i32* %shift.i, align 8, !tbaa !84
  %shl.i = shl i32 %starty, %6
  %or.i = or i32 %shl.i, %startx
  %bound1p = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 19
  %7 = load i32*, i32** %bound1p, align 8, !tbaa !100
  store i32 %or.i, i32* %7, align 4, !tbaa !24
  %waymap7 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 18
  %8 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap7, align 8, !tbaa !88
  %9 = load i32, i32* %shift.i, align 8, !tbaa !84
  %shl8 = shl i32 %starty, %9
  %or = or i32 %shl8, %startx
  %idxprom = sext i32 %or to i64
  %fillnum10 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %8, i64 %idxprom, i32 0
  store i16 %inc, i16* %fillnum10, align 2, !tbaa !127
  %num = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %8, i64 %idxprom, i32 1
  store i16 0, i16* %num, align 2, !tbaa !130
  %flend = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 23
  store i8 0, i8* %flend, align 8, !tbaa !132
  %shl.i44 = shl i32 %endy, %9
  %or.i45 = or i32 %shl.i44, %endx
  %endindex = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 25
  store i32 %or.i45, i32* %endindex, align 4, !tbaa !131
  %step = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 26
  store i16 1, i16* %step, align 8, !tbaa !129
  %bound2p28 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 20
  br label %land.rhs

land.rhs:                                         ; preds = %while.body, %if.end
  %10 = phi i8 [ 0, %if.end ], [ %.pre48, %while.body ]
  %flodd.0.off047 = phi i32 [ 0, %if.end ], [ %11, %while.body ]
  %boundl.046 = phi i32 [ 1, %if.end ], [ %call30, %while.body ]
  %cmp21 = icmp eq i8 %10, 0
  br i1 %cmp21, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %cmp24 = icmp eq i32 %flodd.0.off047, 0
  %bound2p28.sink = select i1 %cmp24, i32** %bound1p, i32** %bound2p28
  %bound1p.sink = select i1 %cmp24, i32** %bound2p28, i32** %bound1p
  %11 = xor i32 %flodd.0.off047, 1
  %12 = load i32*, i32** %bound2p28.sink, align 8, !tbaa !26
  %13 = load i32*, i32** %bound1p.sink, align 8, !tbaa !26
  %call30 = tail call i32 @_ZN6wayobj10makebound2EPiiS0_(%class.wayobj* nonnull %this, i32* %12, i32 %boundl.046, i32* %13) #19
  %14 = load i16, i16* %step, align 8, !tbaa !129
  %inc33 = add i16 %14, 1
  store i16 %inc33, i16* %step, align 8, !tbaa !129
  %cmp18 = icmp eq i32 %call30, 0
  %.pre48 = load i8, i8* %flend, align 8, !tbaa !132, !range !45
  br i1 %cmp18, label %if.end31.while.end_crit_edge, label %land.rhs

if.end31.while.end_crit_edge:                     ; preds = %while.body
  %phitmp = icmp ne i8 %.pre48, 0
  br label %while.end

while.end:                                        ; preds = %land.rhs, %if.end31.while.end_crit_edge
  %15 = phi i1 [ %phitmp, %if.end31.while.end_crit_edge ], [ true, %land.rhs ]
  ret i1 %15
}

; Function Attrs: nofree norecurse nounwind optsize
define dso_local i32 @_ZN6wayobj18makeobstaclebound2EPiiS0_(%class.wayobj* %this, i32* nocapture readonly %bound1p, i32 %bound1l, i32* nocapture %bound2p) local_unnamed_addr #9 align 2 {
entry:
  %maply = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 8
  %0 = load i32, i32* %maply, align 8, !tbaa !82
  %waymap2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 18
  %1 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap2, align 8, !tbaa !88
  %cmp498 = icmp sgt i32 %bound1l, 0
  br i1 %cmp498, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %fillnum6 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 27
  %2 = load i16, i16* %fillnum6, align 2, !tbaa !103
  %maparp = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 17
  %step = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 26
  %maxboundlength = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 21
  %wide.trip.count = zext i32 %bound1l to i64
  br label %for.body

for.body:                                         ; preds = %if.end297, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end297 ]
  %bound2l.0499 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %if.end297 ]
  %arrayidx = getelementptr inbounds i32, i32* %bound1p, i64 %indvars.iv
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !24
  %sub = sub nsw i32 %3, %0
  %sub3 = add nsw i32 %sub, -1
  %idxprom4 = sext i32 %sub3 to i64
  %fillnum = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom4, i32 0
  %4 = load i16, i16* %fillnum, align 2, !tbaa !127
  %cmp8 = icmp eq i16 %4, %2
  br i1 %cmp8, label %if.end29, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load i16*, i16** %maparp, align 8, !tbaa !83
  %arrayidx10 = getelementptr inbounds i16, i16* %5, i64 %idxprom4
  %6 = load i16, i16* %arrayidx10, align 2, !tbaa !85
  %cmp12 = icmp sgt i16 %6, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then
  %idxprom14 = sext i32 %bound2l.0499 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %bound2p, i64 %idxprom14
  store i32 %sub3, i32* %arrayidx15, align 4, !tbaa !24
  %inc = add nsw i32 %bound2l.0499, 1
  store i16 %2, i16* %fillnum, align 2, !tbaa !127
  %7 = load i16, i16* %step, align 8, !tbaa !129
  %num = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom4, i32 1
  store i16 %7, i16* %num, align 2, !tbaa !130
  br label %if.end29

if.else:                                          ; preds = %if.then
  %cmp26 = icmp eq i16 %6, 0
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.else
  %flend = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 23
  store i8 1, i8* %flend, align 8, !tbaa !132
  %endindex = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 25
  store i32 %sub3, i32* %endindex, align 4, !tbaa !131
  br label %cleanup

if.end29:                                         ; preds = %for.body, %if.then13, %if.else
  %bound2l.1 = phi i32 [ %inc, %if.then13 ], [ %bound2l.0499, %if.else ], [ %bound2l.0499, %for.body ]
  %idxprom31 = sext i32 %sub to i64
  %fillnum33 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom31, i32 0
  %8 = load i16, i16* %fillnum33, align 2, !tbaa !127
  %cmp37 = icmp eq i16 %8, %2
  br i1 %cmp37, label %if.end67, label %if.then38

if.then38:                                        ; preds = %if.end29
  %9 = load i16*, i16** %maparp, align 8, !tbaa !83
  %arrayidx41 = getelementptr inbounds i16, i16* %9, i64 %idxprom31
  %10 = load i16, i16* %arrayidx41, align 2, !tbaa !85
  %cmp43 = icmp sgt i16 %10, 0
  br i1 %cmp43, label %if.then44, label %if.else56

if.then44:                                        ; preds = %if.then38
  %idxprom45 = sext i32 %bound2l.1 to i64
  %arrayidx46 = getelementptr inbounds i32, i32* %bound2p, i64 %idxprom45
  store i32 %sub, i32* %arrayidx46, align 4, !tbaa !24
  %inc47 = add nsw i32 %bound2l.1, 1
  store i16 %2, i16* %fillnum33, align 2, !tbaa !127
  %11 = load i16, i16* %step, align 8, !tbaa !129
  %num55 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom31, i32 1
  store i16 %11, i16* %num55, align 2, !tbaa !130
  br label %if.end67

if.else56:                                        ; preds = %if.then38
  %cmp61 = icmp eq i16 %10, 0
  br i1 %cmp61, label %if.then62, label %if.end67

if.then62:                                        ; preds = %if.else56
  %flend63 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 23
  store i8 1, i8* %flend63, align 8, !tbaa !132
  %endindex64 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 25
  store i32 %sub, i32* %endindex64, align 4, !tbaa !131
  br label %cleanup

if.end67:                                         ; preds = %if.end29, %if.then44, %if.else56
  %bound2l.2 = phi i32 [ %inc47, %if.then44 ], [ %bound2l.1, %if.else56 ], [ %bound2l.1, %if.end29 ]
  %add = add nsw i32 %sub, 1
  %idxprom69 = sext i32 %add to i64
  %fillnum71 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom69, i32 0
  %12 = load i16, i16* %fillnum71, align 2, !tbaa !127
  %cmp75 = icmp eq i16 %12, %2
  br i1 %cmp75, label %if.end105, label %if.then76

if.then76:                                        ; preds = %if.end67
  %13 = load i16*, i16** %maparp, align 8, !tbaa !83
  %arrayidx79 = getelementptr inbounds i16, i16* %13, i64 %idxprom69
  %14 = load i16, i16* %arrayidx79, align 2, !tbaa !85
  %cmp81 = icmp sgt i16 %14, 0
  br i1 %cmp81, label %if.then82, label %if.else94

if.then82:                                        ; preds = %if.then76
  %idxprom83 = sext i32 %bound2l.2 to i64
  %arrayidx84 = getelementptr inbounds i32, i32* %bound2p, i64 %idxprom83
  store i32 %add, i32* %arrayidx84, align 4, !tbaa !24
  %inc85 = add nsw i32 %bound2l.2, 1
  store i16 %2, i16* %fillnum71, align 2, !tbaa !127
  %15 = load i16, i16* %step, align 8, !tbaa !129
  %num93 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom69, i32 1
  store i16 %15, i16* %num93, align 2, !tbaa !130
  br label %if.end105

if.else94:                                        ; preds = %if.then76
  %cmp99 = icmp eq i16 %14, 0
  br i1 %cmp99, label %if.then100, label %if.end105

if.then100:                                       ; preds = %if.else94
  %flend101 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 23
  store i8 1, i8* %flend101, align 8, !tbaa !132
  %endindex102 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 25
  store i32 %add, i32* %endindex102, align 4, !tbaa !131
  br label %cleanup

if.end105:                                        ; preds = %if.end67, %if.then82, %if.else94
  %bound2l.3 = phi i32 [ %inc85, %if.then82 ], [ %bound2l.2, %if.else94 ], [ %bound2l.2, %if.end67 ]
  %sub106 = add nsw i32 %3, -1
  %idxprom107 = sext i32 %sub106 to i64
  %fillnum109 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom107, i32 0
  %16 = load i16, i16* %fillnum109, align 2, !tbaa !127
  %cmp113 = icmp eq i16 %16, %2
  br i1 %cmp113, label %if.end143, label %if.then114

if.then114:                                       ; preds = %if.end105
  %17 = load i16*, i16** %maparp, align 8, !tbaa !83
  %arrayidx117 = getelementptr inbounds i16, i16* %17, i64 %idxprom107
  %18 = load i16, i16* %arrayidx117, align 2, !tbaa !85
  %cmp119 = icmp sgt i16 %18, 0
  br i1 %cmp119, label %if.then120, label %if.else132

if.then120:                                       ; preds = %if.then114
  %idxprom121 = sext i32 %bound2l.3 to i64
  %arrayidx122 = getelementptr inbounds i32, i32* %bound2p, i64 %idxprom121
  store i32 %sub106, i32* %arrayidx122, align 4, !tbaa !24
  %inc123 = add nsw i32 %bound2l.3, 1
  store i16 %2, i16* %fillnum109, align 2, !tbaa !127
  %19 = load i16, i16* %step, align 8, !tbaa !129
  %num131 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom107, i32 1
  store i16 %19, i16* %num131, align 2, !tbaa !130
  br label %if.end143

if.else132:                                       ; preds = %if.then114
  %cmp137 = icmp eq i16 %18, 0
  br i1 %cmp137, label %if.then138, label %if.end143

if.then138:                                       ; preds = %if.else132
  %flend139 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 23
  store i8 1, i8* %flend139, align 8, !tbaa !132
  %endindex140 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 25
  store i32 %sub106, i32* %endindex140, align 4, !tbaa !131
  br label %cleanup

if.end143:                                        ; preds = %if.end105, %if.then120, %if.else132
  %bound2l.4 = phi i32 [ %inc123, %if.then120 ], [ %bound2l.3, %if.else132 ], [ %bound2l.3, %if.end105 ]
  %add144 = add nsw i32 %3, 1
  %idxprom145 = sext i32 %add144 to i64
  %fillnum147 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom145, i32 0
  %20 = load i16, i16* %fillnum147, align 2, !tbaa !127
  %cmp151 = icmp eq i16 %20, %2
  br i1 %cmp151, label %if.end181, label %if.then152

if.then152:                                       ; preds = %if.end143
  %21 = load i16*, i16** %maparp, align 8, !tbaa !83
  %arrayidx155 = getelementptr inbounds i16, i16* %21, i64 %idxprom145
  %22 = load i16, i16* %arrayidx155, align 2, !tbaa !85
  %cmp157 = icmp sgt i16 %22, 0
  br i1 %cmp157, label %if.then158, label %if.else170

if.then158:                                       ; preds = %if.then152
  %idxprom159 = sext i32 %bound2l.4 to i64
  %arrayidx160 = getelementptr inbounds i32, i32* %bound2p, i64 %idxprom159
  store i32 %add144, i32* %arrayidx160, align 4, !tbaa !24
  %inc161 = add nsw i32 %bound2l.4, 1
  store i16 %2, i16* %fillnum147, align 2, !tbaa !127
  %23 = load i16, i16* %step, align 8, !tbaa !129
  %num169 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom145, i32 1
  store i16 %23, i16* %num169, align 2, !tbaa !130
  br label %if.end181

if.else170:                                       ; preds = %if.then152
  %cmp175 = icmp eq i16 %22, 0
  br i1 %cmp175, label %if.then176, label %if.end181

if.then176:                                       ; preds = %if.else170
  %flend177 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 23
  store i8 1, i8* %flend177, align 8, !tbaa !132
  %endindex178 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 25
  store i32 %add144, i32* %endindex178, align 4, !tbaa !131
  br label %cleanup

if.end181:                                        ; preds = %if.end143, %if.then158, %if.else170
  %bound2l.5 = phi i32 [ %inc161, %if.then158 ], [ %bound2l.4, %if.else170 ], [ %bound2l.4, %if.end143 ]
  %add182 = add nsw i32 %3, %0
  %sub183 = add nsw i32 %add182, -1
  %idxprom184 = sext i32 %sub183 to i64
  %fillnum186 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom184, i32 0
  %24 = load i16, i16* %fillnum186, align 2, !tbaa !127
  %cmp190 = icmp eq i16 %24, %2
  br i1 %cmp190, label %if.end220, label %if.then191

if.then191:                                       ; preds = %if.end181
  %25 = load i16*, i16** %maparp, align 8, !tbaa !83
  %arrayidx194 = getelementptr inbounds i16, i16* %25, i64 %idxprom184
  %26 = load i16, i16* %arrayidx194, align 2, !tbaa !85
  %cmp196 = icmp sgt i16 %26, 0
  br i1 %cmp196, label %if.then197, label %if.else209

if.then197:                                       ; preds = %if.then191
  %idxprom198 = sext i32 %bound2l.5 to i64
  %arrayidx199 = getelementptr inbounds i32, i32* %bound2p, i64 %idxprom198
  store i32 %sub183, i32* %arrayidx199, align 4, !tbaa !24
  %inc200 = add nsw i32 %bound2l.5, 1
  store i16 %2, i16* %fillnum186, align 2, !tbaa !127
  %27 = load i16, i16* %step, align 8, !tbaa !129
  %num208 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom184, i32 1
  store i16 %27, i16* %num208, align 2, !tbaa !130
  br label %if.end220

if.else209:                                       ; preds = %if.then191
  %cmp214 = icmp eq i16 %26, 0
  br i1 %cmp214, label %if.then215, label %if.end220

if.then215:                                       ; preds = %if.else209
  %flend216 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 23
  store i8 1, i8* %flend216, align 8, !tbaa !132
  %endindex217 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 25
  store i32 %sub183, i32* %endindex217, align 4, !tbaa !131
  br label %cleanup

if.end220:                                        ; preds = %if.end181, %if.then197, %if.else209
  %bound2l.6 = phi i32 [ %inc200, %if.then197 ], [ %bound2l.5, %if.else209 ], [ %bound2l.5, %if.end181 ]
  %idxprom222 = sext i32 %add182 to i64
  %fillnum224 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom222, i32 0
  %28 = load i16, i16* %fillnum224, align 2, !tbaa !127
  %cmp228 = icmp eq i16 %28, %2
  br i1 %cmp228, label %if.end258, label %if.then229

if.then229:                                       ; preds = %if.end220
  %29 = load i16*, i16** %maparp, align 8, !tbaa !83
  %arrayidx232 = getelementptr inbounds i16, i16* %29, i64 %idxprom222
  %30 = load i16, i16* %arrayidx232, align 2, !tbaa !85
  %cmp234 = icmp sgt i16 %30, 0
  br i1 %cmp234, label %if.then235, label %if.else247

if.then235:                                       ; preds = %if.then229
  %idxprom236 = sext i32 %bound2l.6 to i64
  %arrayidx237 = getelementptr inbounds i32, i32* %bound2p, i64 %idxprom236
  store i32 %add182, i32* %arrayidx237, align 4, !tbaa !24
  %inc238 = add nsw i32 %bound2l.6, 1
  store i16 %2, i16* %fillnum224, align 2, !tbaa !127
  %31 = load i16, i16* %step, align 8, !tbaa !129
  %num246 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom222, i32 1
  store i16 %31, i16* %num246, align 2, !tbaa !130
  br label %if.end258

if.else247:                                       ; preds = %if.then229
  %cmp252 = icmp eq i16 %30, 0
  br i1 %cmp252, label %if.then253, label %if.end258

if.then253:                                       ; preds = %if.else247
  %flend254 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 23
  store i8 1, i8* %flend254, align 8, !tbaa !132
  %endindex255 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 25
  store i32 %add182, i32* %endindex255, align 4, !tbaa !131
  br label %cleanup

if.end258:                                        ; preds = %if.end220, %if.then235, %if.else247
  %bound2l.7 = phi i32 [ %inc238, %if.then235 ], [ %bound2l.6, %if.else247 ], [ %bound2l.6, %if.end220 ]
  %add260 = add nsw i32 %add182, 1
  %idxprom261 = sext i32 %add260 to i64
  %fillnum263 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom261, i32 0
  %32 = load i16, i16* %fillnum263, align 2, !tbaa !127
  %cmp267 = icmp eq i16 %32, %2
  br i1 %cmp267, label %if.end297, label %if.then268

if.then268:                                       ; preds = %if.end258
  %33 = load i16*, i16** %maparp, align 8, !tbaa !83
  %arrayidx271 = getelementptr inbounds i16, i16* %33, i64 %idxprom261
  %34 = load i16, i16* %arrayidx271, align 2, !tbaa !85
  %cmp273 = icmp sgt i16 %34, 0
  br i1 %cmp273, label %if.then274, label %if.else286

if.then274:                                       ; preds = %if.then268
  %idxprom275 = sext i32 %bound2l.7 to i64
  %arrayidx276 = getelementptr inbounds i32, i32* %bound2p, i64 %idxprom275
  store i32 %add260, i32* %arrayidx276, align 4, !tbaa !24
  %inc277 = add nsw i32 %bound2l.7, 1
  store i16 %2, i16* %fillnum263, align 2, !tbaa !127
  %35 = load i16, i16* %step, align 8, !tbaa !129
  %num285 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %1, i64 %idxprom261, i32 1
  store i16 %35, i16* %num285, align 2, !tbaa !130
  br label %if.end297

if.else286:                                       ; preds = %if.then268
  %cmp291 = icmp eq i16 %34, 0
  br i1 %cmp291, label %if.then292, label %if.end297

if.then292:                                       ; preds = %if.else286
  %flend293 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 23
  store i8 1, i8* %flend293, align 8, !tbaa !132
  %endindex294 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 25
  store i32 %add260, i32* %endindex294, align 4, !tbaa !131
  br label %cleanup

if.end297:                                        ; preds = %if.end258, %if.then274, %if.else286
  %bound2l.8 = phi i32 [ %inc277, %if.then274 ], [ %bound2l.7, %if.else286 ], [ %bound2l.7, %if.end258 ]
  %36 = load i32, i32* %maxboundlength, align 8, !tbaa !99
  %cmp298 = icmp slt i32 %bound2l.8, %36
  %sub301 = add nsw i32 %36, -1
  %spec.select = select i1 %cmp298, i32 %bound2l.8, i32 %sub301
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %cleanup, label %for.body

cleanup:                                          ; preds = %if.end297, %entry, %if.then292, %if.then253, %if.then215, %if.then176, %if.then138, %if.then100, %if.then62, %if.then27
  %retval.0 = phi i32 [ %bound2l.7, %if.then292 ], [ %bound2l.6, %if.then253 ], [ %bound2l.5, %if.then215 ], [ %bound2l.4, %if.then176 ], [ %bound2l.3, %if.then138 ], [ %bound2l.2, %if.then100 ], [ %bound2l.1, %if.then62 ], [ %bound2l.0499, %if.then27 ], [ 0, %entry ], [ %spec.select, %if.end297 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
define dso_local i1 @_ZN6wayobj13findfreepointEiiRiS0_(%class.wayobj* %this, i32 %startx, i32 %starty, i32* nocapture dereferenceable(4) %freepointx, i32* nocapture dereferenceable(4) %freepointy) local_unnamed_addr #8 align 2 {
entry:
  %cmp.i = icmp slt i32 %startx, 1
  %cmp2.i = icmp slt i32 %starty, 1
  %or.cond.i = or i1 %cmp.i, %cmp2.i
  br i1 %or.cond.i, label %if.then, label %if.end4.i

if.end4.i:                                        ; preds = %entry
  %mapmaxx1.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 5
  %0 = load i32, i32* %mapmaxx1.i, align 4, !tbaa !75
  %cmp5.i = icmp slt i32 %0, %startx
  br i1 %cmp5.i, label %if.then, label %_ZN6wayobj5ismapEii.exit

_ZN6wayobj5ismapEii.exit:                         ; preds = %if.end4.i
  %mapmaxy1.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 6
  %1 = load i32, i32* %mapmaxy1.i, align 8, !tbaa !76
  %cmp8.i = icmp slt i32 %1, %starty
  br i1 %cmp8.i, label %if.then, label %if.end

if.then:                                          ; preds = %_ZN6wayobj5ismapEii.exit, %if.end4.i, %entry
  store i32 %startx, i32* %freepointx, align 4, !tbaa !24
  br label %cleanup

if.end:                                           ; preds = %_ZN6wayobj5ismapEii.exit
  %maparp.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 17
  %2 = load i16*, i16** %maparp.i, align 8, !tbaa !83
  %shift.i65 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 2
  %3 = load i32, i32* %shift.i65, align 8, !tbaa !84
  %shl.i = shl i32 %starty, %3
  %or.i = or i32 %shl.i, %startx
  %idxprom.i = sext i32 %or.i to i64
  %arrayidx.i = getelementptr inbounds i16, i16* %2, i64 %idxprom.i
  %4 = load i16, i16* %arrayidx.i, align 2, !tbaa !85
  %cmp = icmp eq i16 %4, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 %startx, i32* %freepointx, align 4, !tbaa !24
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %fillnum = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 27
  %5 = load i16, i16* %fillnum, align 2, !tbaa !103
  %cmp6 = icmp eq i16 %5, -1
  br i1 %cmp6, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end4
  %waymap = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 18
  %6 = bitcast %struct.waymapcellt** %waymap to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !88
  %mapxshift = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 0
  %8 = load i32, i32* %mapxshift, align 8, !tbaa !86
  %shl = shl nuw i32 1, %8
  %mapyshift = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 1
  %9 = load i32, i32* %mapyshift, align 4, !tbaa !87
  %shl8 = shl i32 %shl, %9
  %conv9 = sext i32 %shl8 to i64
  %mul = shl nsw i64 %conv9, 2
  tail call void @llvm.memset.p0i8.i64(i8* align 2 %7, i8 0, i64 %mul, i1 false)
  store i16 0, i16* %fillnum, align 2, !tbaa !103
  %.pre = load i32, i32* %shift.i65, align 8, !tbaa !84
  %.pre74 = shl i32 %starty, %.pre
  %.pre75 = or i32 %.pre74, %startx
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end4
  %or.i68.pre-phi = phi i32 [ %.pre75, %if.then7 ], [ %or.i, %if.end4 ]
  %10 = phi i16 [ 0, %if.then7 ], [ %5, %if.end4 ]
  %inc = add nuw i16 %10, 1
  store i16 %inc, i16* %fillnum, align 2, !tbaa !103
  %bound1p = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 19
  %11 = load i32*, i32** %bound1p, align 8, !tbaa !100
  store i32 %or.i68.pre-phi, i32* %11, align 4, !tbaa !24
  %waymap15 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 18
  %12 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap15, align 8, !tbaa !88
  %13 = load i32, i32* %shift.i65, align 8, !tbaa !84
  %shl16 = shl i32 %starty, %13
  %or = or i32 %shl16, %startx
  %idxprom = sext i32 %or to i64
  %fillnum18 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %12, i64 %idxprom, i32 0
  store i16 %inc, i16* %fillnum18, align 2, !tbaa !127
  %num = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %12, i64 %idxprom, i32 1
  store i16 0, i16* %num, align 2, !tbaa !130
  %flend = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 23
  store i8 0, i8* %flend, align 8, !tbaa !132
  %step = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 26
  store i16 1, i16* %step, align 8, !tbaa !129
  %bound2p35 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 20
  br label %land.rhs

land.rhs:                                         ; preds = %while.body, %if.end11
  %14 = phi i8 [ 0, %if.end11 ], [ %.pre73, %while.body ]
  %flodd.0.off071 = phi i32 [ 0, %if.end11 ], [ %15, %while.body ]
  %boundl.070 = phi i32 [ 1, %if.end11 ], [ %call37, %while.body ]
  %cmp28 = icmp eq i8 %14, 0
  br i1 %cmp28, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %cmp31 = icmp eq i32 %flodd.0.off071, 0
  %bound2p35.sink = select i1 %cmp31, i32** %bound1p, i32** %bound2p35
  %bound1p.sink = select i1 %cmp31, i32** %bound2p35, i32** %bound1p
  %15 = xor i32 %flodd.0.off071, 1
  %16 = load i32*, i32** %bound2p35.sink, align 8, !tbaa !26
  %17 = load i32*, i32** %bound1p.sink, align 8, !tbaa !26
  %call37 = tail call i32 @_ZN6wayobj18makeobstaclebound2EPiiS0_(%class.wayobj* nonnull %this, i32* %16, i32 %boundl.070, i32* %17) #19
  %18 = load i16, i16* %step, align 8, !tbaa !129
  %inc40 = add i16 %18, 1
  store i16 %inc40, i16* %step, align 8, !tbaa !129
  %cmp25 = icmp eq i32 %call37, 0
  %.pre73 = load i8, i8* %flend, align 8, !tbaa !132, !range !45
  br i1 %cmp25, label %if.end38.while.end_crit_edge, label %land.rhs

if.end38.while.end_crit_edge:                     ; preds = %while.body
  %phitmp = icmp ne i8 %.pre73, 0
  br label %while.end

while.end:                                        ; preds = %land.rhs, %if.end38.while.end_crit_edge
  %19 = phi i1 [ %phitmp, %if.end38.while.end_crit_edge ], [ true, %land.rhs ]
  %endindex = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 25
  %20 = load i32, i32* %endindex, align 4, !tbaa !131
  %indexxmask.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 22
  %21 = load i32, i32* %indexxmask.i, align 4, !tbaa !102
  %and.i = and i32 %21, %20
  store i32 %and.i, i32* %freepointx, align 4, !tbaa !24
  %22 = load i32, i32* %endindex, align 4, !tbaa !131
  %23 = load i32, i32* %shift.i65, align 8, !tbaa !84
  %shr.i = ashr i32 %22, %23
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then3, %if.then
  %shr.i.sink = phi i32 [ %shr.i, %while.end ], [ %starty, %if.then3 ], [ %starty, %if.then ]
  %retval.0 = phi i1 [ %19, %while.end ], [ true, %if.then3 ], [ true, %if.then ]
  store i32 %shr.i.sink, i32* %freepointy, align 4, !tbaa !24
  ret i1 %retval.0
}

; Function Attrs: nounwind optsize
define dso_local i1 @_ZN6wayobj13findfreepointEffRfS0_(%class.wayobj* %this, float %startx, float %starty, float* nocapture dereferenceable(4) %freepointx, float* nocapture dereferenceable(4) %freepointy) local_unnamed_addr #8 align 2 {
entry:
  %freex = alloca i32, align 4
  %freey = alloca i32, align 4
  %0 = bitcast i32* %freex to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #21
  %1 = bitcast i32* %freey to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #21
  %xcoef1.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 9
  %2 = load float, float* %xcoef1.i, align 4, !tbaa !70
  %xcoef2.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 10
  %3 = load float, float* %xcoef2.i, align 8, !tbaa !71
  %4 = tail call float @llvm.fmuladd.f32(float %startx, float %2, float %3) #21
  %conv.i = fptosi float %4 to i32
  %ycoef1.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 11
  %5 = load float, float* %ycoef1.i, align 4, !tbaa !73
  %ycoef2.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 12
  %6 = load float, float* %ycoef2.i, align 8, !tbaa !74
  %7 = tail call float @llvm.fmuladd.f32(float %starty, float %5, float %6) #21
  %conv.i17 = fptosi float %7 to i32
  %call3 = call i1 @_ZN6wayobj13findfreepointEiiRiS0_(%class.wayobj* %this, i32 %conv.i, i32 %conv.i17, i32* nonnull dereferenceable(4) %freex, i32* nonnull dereferenceable(4) %freey) #19
  %8 = load i32, i32* %freex, align 4, !tbaa !24
  %minx.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 0
  %9 = load float, float* %minx.i, align 8, !tbaa !77
  %cellr.i9 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 13
  %10 = load float, float* %cellr.i9, align 4, !tbaa !69
  %add.i10 = fadd float %9, %10
  %conv.i11 = sitofp i32 %8 to float
  %maxx.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 1
  %11 = load float, float* %maxx.i, align 4, !tbaa !78
  %sub.i12 = fsub float %11, %9
  %mul.i13 = fmul float %sub.i12, %conv.i11
  %maplx.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 7
  %12 = load i32, i32* %maplx.i, align 4, !tbaa !79
  %conv5.i14 = sitofp i32 %12 to float
  %div.i15 = fdiv float %mul.i13, %conv5.i14
  %add6.i16 = fadd float %add.i10, %div.i15
  store float %add6.i16, float* %freepointx, align 4, !tbaa !92
  %13 = load i32, i32* %freey, align 4, !tbaa !24
  %miny.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 2
  %14 = load float, float* %miny.i, align 8, !tbaa !80
  %15 = load float, float* %cellr.i9, align 4, !tbaa !69
  %add.i = fadd float %14, %15
  %conv.i8 = sitofp i32 %13 to float
  %maxy.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 3
  %16 = load float, float* %maxy.i, align 4, !tbaa !81
  %sub.i = fsub float %16, %14
  %mul.i = fmul float %sub.i, %conv.i8
  %maply.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 8
  %17 = load i32, i32* %maply.i, align 8, !tbaa !82
  %conv5.i = sitofp i32 %17 to float
  %div.i = fdiv float %mul.i, %conv5.i
  %add6.i = fadd float %add.i, %div.i
  store float %add6.i, float* %freepointy, align 4, !tbaa !92
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #21
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #21
  ret i1 %call3
}

; Function Attrs: nofree nounwind optsize
define dso_local void @_ZN9statinfot5printEv(%struct.statinfot* nocapture readonly %this) local_unnamed_addr #11 align 2 {
entry:
  %createregtime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this, i64 0, i32 0
  %0 = load double, double* %createregtime, align 8, !tbaa !133
  %call = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), double %0) #19
  %putchar = tail call i32 @putchar(i32 10)
  %createwaytime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this, i64 0, i32 1
  %1 = load double, double* %createwaytime, align 8, !tbaa !137
  %call3 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), double %1) #19
  %wayqu = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this, i64 0, i32 8
  %2 = load i64, i64* %wayqu, align 8, !tbaa !138
  %call4 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %2) #19
  %waylength = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this, i64 0, i32 5
  %3 = load i64, i64* %waylength, align 8, !tbaa !139
  %call5 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %3) #19
  %putchar17 = tail call i32 @putchar(i32 10)
  %createregwaytime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this, i64 0, i32 4
  %4 = load double, double* %createregwaytime, align 8, !tbaa !140
  %call7 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), double %4) #19
  %regwayqu = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this, i64 0, i32 12
  %5 = load i64, i64* %regwayqu, align 8, !tbaa !141
  %call8 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i64 %5) #19
  %regwaylength = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this, i64 0, i32 11
  %6 = load i64, i64* %regwaylength, align 8, !tbaa !142
  %call9 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i64 %6) #19
  %putchar18 = tail call i32 @putchar(i32 10)
  %createriverwaytime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this, i64 0, i32 2
  %7 = load double, double* %createriverwaytime, align 8, !tbaa !143
  %call11 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9.10, i64 0, i64 0), double %7) #19
  %riverwayqu = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this, i64 0, i32 9
  %8 = load i64, i64* %riverwayqu, align 8, !tbaa !144
  %call12 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i64 %8) #19
  %riverwaylength = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this, i64 0, i32 6
  %9 = load i64, i64* %riverwaylength, align 8, !tbaa !145
  %call13 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i64 %9) #19
  %createlandwaytime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this, i64 0, i32 3
  %10 = load double, double* %createlandwaytime, align 8, !tbaa !146
  %call14 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), double %10) #19
  %landwayqu = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this, i64 0, i32 10
  %11 = load i64, i64* %landwayqu, align 8, !tbaa !147
  %call15 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i64 %11) #19
  %landwaylength = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this, i64 0, i32 7
  %12 = load i64, i64* %landwaylength, align 8, !tbaa !148
  %call16 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i64 %12) #19
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @putchar(i32) local_unnamed_addr #16

; Function Attrs: optsize
define dso_local void @_Z15createrandommapiif(i32 %mapsizex, i32 %mapsizey, float %density) local_unnamed_addr #0 {
entry:
  %call = tail call i1 @_ZN6wayobj7initmapEii(%class.wayobj* nonnull @way, i32 %mapsizex, i32 %mapsizey) #19
  %call1 = tail call i1 @_ZN9regmngobj7initmapEii(%class.regmngobj* nonnull @regmng, i32 %mapsizex, i32 %mapsizey) #19
  %0 = load i8*, i8** getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i64 0, i32 7), align 8, !tbaa !28
  %cmp30 = icmp sgt i32 %mapsizey, 0
  br i1 %cmp30, label %for.cond2.preheader.lr.ph, label %for.end13

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %cmp328 = icmp sgt i32 %mapsizex, 0
  %1 = sext i32 %mapsizex to i64
  %wide.trip.count37 = zext i32 %mapsizey to i64
  %wide.trip.count = zext i32 %mapsizex to i64
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.inc11, %for.cond2.preheader.lr.ph
  %indvars.iv34 = phi i64 [ 0, %for.cond2.preheader.lr.ph ], [ %indvars.iv.next35, %for.inc11 ]
  br i1 %cmp328, label %for.body4.lr.ph, label %for.inc11

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %2 = mul nsw i64 %indvars.iv34, %1
  %3 = trunc i64 %indvars.iv34 to i32
  br label %for.body4

for.body4:                                        ; preds = %for.inc, %for.body4.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body4.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %call5 = tail call float @_Z8myrandomff(float 0.000000e+00, float %density) #19
  %cmp6 = fcmp ugt float %call5, 1.000000e+00
  %4 = add nsw i64 %indvars.iv, %2
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %4
  br i1 %cmp6, label %if.else, label %if.then

if.then:                                          ; preds = %for.body4
  store i8 0, i8* %arrayidx, align 1, !tbaa !29
  br label %for.inc

if.else:                                          ; preds = %for.body4
  store i8 1, i8* %arrayidx, align 1, !tbaa !29
  %5 = trunc i64 %indvars.iv to i32
  tail call void @_ZN6wayobj8addpointEii(%class.wayobj* nonnull @way, i32 %5, i32 %3) #19
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.inc11, label %for.body4

for.inc11:                                        ; preds = %for.inc, %for.cond2.preheader
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond38 = icmp eq i64 %indvars.iv.next35, %wide.trip.count37
  br i1 %exitcond38, label %for.end13, label %for.cond2.preheader

for.end13:                                        ; preds = %for.inc11, %entry
  ret void
}

; Function Attrs: norecurse optsize
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #17 {
entry:
  %info = alloca %struct.workinfot, align 4
  %stat = alloca %struct.statinfot, align 8
  %startx = alloca i32, align 4
  %starty = alloca i32, align 4
  %endx = alloca i32, align 4
  %endy = alloca i32, align 4
  %wayar = alloca %struct.waymapcellt*, align 8
  %waylength = alloca i32, align 4
  %wayar59 = alloca %class.regobj**, align 8
  %waylength60 = alloca i32, align 4
  %wayar107 = alloca %struct.pointt*, align 8
  %waylength108 = alloca i32, align 4
  %movetimear = alloca [256 x i8], align 4
  %wayar165 = alloca %struct.pointt*, align 8
  %waylength166 = alloca i32, align 4
  %movetimear168 = alloca [256 x i8], align 4
  %startx230 = alloca i32, align 4
  %starty231 = alloca i32, align 4
  %endx232 = alloca i32, align 4
  %endy233 = alloca i32, align 4
  %wayar234 = alloca %struct.waymapcellt*, align 8
  %waylength235 = alloca i32, align 4
  %wayar272 = alloca %class.regobj**, align 8
  %waylength273 = alloca i32, align 4
  %0 = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4140, i8* nonnull %0) #21
  %1 = bitcast %struct.statinfot* %stat to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %1) #21
  %puts = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @str, i64 0, i64 0))
  %puts395 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @str.26, i64 0, i64 0))
  %cmp = icmp eq i32 %argc, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %puts407 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @str.31, i64 0, i64 0))
  br label %cleanup318

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %2 = load i8*, i8** %arrayidx, align 8, !tbaa !26
  %call3 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #19
  %tobool = icmp eq %struct._IO_FILE* %call3, null
  br i1 %tobool, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %puts396 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @str.27, i64 0, i64 0))
  br label %cleanup318

if.end6:                                          ; preds = %if.end
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %call3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* nonnull %0) #19
  %regionsize = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i64 0, i32 1
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %call3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32* nonnull %regionsize) #19
  %wayqu = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i64 0, i32 2
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %call3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32* nonnull %wayqu) #19
  %riverwayqu = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i64 0, i32 3
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %call3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32* nonnull %riverwayqu) #19
  %landwayqu = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i64 0, i32 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %call3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32* nonnull %landwayqu) #19
  %regwayqu = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i64 0, i32 5
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %call3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32* nonnull %regwayqu) #19
  %randommaplx = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i64 0, i32 6
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %call3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32* nonnull %randommaplx) #19
  %randommaply = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i64 0, i32 7
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %call3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32* nonnull %randommaply) #19
  %randommapdensity = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i64 0, i32 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %call3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), float* nonnull %randommapdensity) #19
  %randommapregionsize = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i64 0, i32 9
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %call3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32* nonnull %randommapregionsize) #19
  %randommapwayqu = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i64 0, i32 10
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %call3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32* nonnull %randommapwayqu) #19
  %randommapregwayqu = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i64 0, i32 11
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %call3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32* nonnull %randommapregwayqu) #19
  %call19 = call i32 @fclose(%struct._IO_FILE* nonnull %call3) #19
  %puts397 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @str.29, i64 0, i64 0))
  %puts398 = call i32 @puts(i8* nonnull %0)
  call void @_ZN6wayobj6createEv(%class.wayobj* nonnull @way) #19
  call void @_ZN9regmngobj6createEv(%class.regmngobj* nonnull @regmng) #19
  call void @_ZN9regwayobj6createEP9regmngobj(%class.regwayobj* nonnull @regway, %class.regmngobj* nonnull @regmng) #19
  %call26 = call i1 @_ZN6wayobj7loadmapEPKc(%class.wayobj* nonnull @way, i8* nonnull %0) #19
  %call29 = call i1 @_ZN9regmngobj7loadmapEPKc(%class.regmngobj* nonnull @regmng, i8* nonnull %0) #19
  %3 = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i64 0, i32 1
  %4 = bitcast double* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(104) %4, i8 0, i64 96, i1 false) #21
  %5 = load i32, i32* %regionsize, align 4, !tbaa !149
  call void @_ZN9regmngobj13createregionsEi(%class.regmngobj* nonnull @regmng, i32 %5) #19
  %createregtime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i64 0, i32 0
  store double 0.000000e+00, double* %createregtime, align 8, !tbaa !133
  %call31 = call i64 @time(i64* null) #20
  %6 = load i32, i32* %wayqu, align 4, !tbaa !151
  %cmp33467 = icmp sgt i32 %6, 0
  br i1 %cmp33467, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end6
  %7 = bitcast i32* %startx to i8*
  %8 = bitcast i32* %starty to i8*
  %9 = bitcast i32* %endx to i8*
  %10 = bitcast i32* %endy to i8*
  %11 = bitcast %struct.waymapcellt** %wayar to i8*
  %12 = bitcast i32* %waylength to i8*
  %waylength50 = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i64 0, i32 5
  %wayqu51 = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i64 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end52
  %inc472 = phi i64 [ 0, %for.body.lr.ph ], [ %inc471, %if.end52 ]
  %add470 = phi i64 [ 0, %for.body.lr.ph ], [ %add469, %if.end52 ]
  %i.0468 = phi i32 [ 0, %for.body.lr.ph ], [ %inc53, %if.end52 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #21
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #21
  store i32 0, i32* %waylength, align 4, !tbaa !24
  store %struct.waymapcellt* null, %struct.waymapcellt** %wayar, align 8, !tbaa !26
  %13 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i64 0, i32 12), align 4, !tbaa !32
  %call34 = call i32 @_Z8myrandomii(i32 1, i32 %13) #19
  store i32 %call34, i32* %startx, align 4, !tbaa !24
  %14 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i64 0, i32 13), align 8, !tbaa !33
  %call35 = call i32 @_Z8myrandomii(i32 1, i32 %14) #19
  store i32 %call35, i32* %starty, align 4, !tbaa !24
  %15 = load i32, i32* %startx, align 4, !tbaa !24
  %call36 = call i1 @_ZN6wayobj13findfreepointEiiRiS0_(%class.wayobj* nonnull @way, i32 %15, i32 %call35, i32* nonnull dereferenceable(4) %startx, i32* nonnull dereferenceable(4) %starty) #19
  br i1 %call36, label %if.then37, label %if.end52

if.then37:                                        ; preds = %for.body
  %16 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i64 0, i32 12), align 4, !tbaa !32
  %call38 = call i32 @_Z8myrandomii(i32 1, i32 %16) #19
  store i32 %call38, i32* %endx, align 4, !tbaa !24
  %17 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i64 0, i32 13), align 8, !tbaa !33
  %call39 = call i32 @_Z8myrandomii(i32 1, i32 %17) #19
  store i32 %call39, i32* %endy, align 4, !tbaa !24
  %18 = load i32, i32* %endx, align 4, !tbaa !24
  %call40 = call i1 @_ZN6wayobj13findfreepointEiiRiS0_(%class.wayobj* nonnull @way, i32 %18, i32 %call39, i32* nonnull dereferenceable(4) %endx, i32* nonnull dereferenceable(4) %endy) #19
  br i1 %call40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.then37
  %19 = load i32, i32* %startx, align 4, !tbaa !24
  %20 = load i32, i32* %starty, align 4, !tbaa !24
  %21 = load i32, i32* %endx, align 4, !tbaa !24
  %22 = load i32, i32* %endy, align 4, !tbaa !24
  %call42 = call i1 @_ZN6wayobj9createwayEiiiiRP8point16tRi(%class.wayobj* nonnull @way, i32 %19, i32 %20, i32 %21, i32 %22, %struct.waymapcellt** nonnull dereferenceable(8) %wayar, i32* nonnull dereferenceable(4) %waylength) #19
  %frombool = zext i1 %call42 to i8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.then37
  %flcreate.0 = phi i8 [ %frombool, %if.then41 ], [ 0, %if.then37 ]
  %23 = load %struct.waymapcellt*, %struct.waymapcellt** %wayar, align 8, !tbaa !26
  %tobool44 = icmp eq %struct.waymapcellt* %23, null
  %extract.t406 = icmp ne i8 %flcreate.0, 0
  br i1 %tobool44, label %if.end47, label %if.then45

if.then45:                                        ; preds = %if.end43
  %24 = bitcast %struct.waymapcellt* %23 to i8*
  call void @free(i8* %24) #20
  br i1 %extract.t406, label %if.then49, label %if.end52

if.end47:                                         ; preds = %if.end43
  br i1 %extract.t406, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.then45, %if.end47
  %25 = load i32, i32* %waylength, align 4, !tbaa !24
  %conv = sext i32 %25 to i64
  %add = add nsw i64 %add470, %conv
  %inc = add nsw i64 %inc472, 1
  br label %if.end52

if.end52:                                         ; preds = %if.then45, %for.body, %if.then49, %if.end47
  %inc471 = phi i64 [ %inc472, %if.then45 ], [ %inc472, %for.body ], [ %inc, %if.then49 ], [ %inc472, %if.end47 ]
  %add469 = phi i64 [ %add470, %if.then45 ], [ %add470, %for.body ], [ %add, %if.then49 ], [ %add470, %if.end47 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #21
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #21
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #21
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #21
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #21
  %inc53 = add nuw nsw i32 %i.0468, 1
  %26 = load i32, i32* %wayqu, align 4, !tbaa !151
  %cmp33 = icmp slt i32 %inc53, %26
  br i1 %cmp33, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %if.end52
  store i64 %add469, i64* %waylength50, align 8, !tbaa !139
  store i64 %inc471, i64* %wayqu51, align 8, !tbaa !138
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end6
  %createwaytime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i64 0, i32 1
  store double 0.000000e+00, double* %createwaytime, align 8, !tbaa !137
  %call54 = call i64 @time(i64* null) #20
  %27 = load i32, i32* %regwayqu, align 4, !tbaa !152
  %cmp57461 = icmp sgt i32 %27, 0
  br i1 %cmp57461, label %for.body58.lr.ph, label %for.end95

for.body58.lr.ph:                                 ; preds = %for.end
  %28 = bitcast %class.regobj*** %wayar59 to i8*
  %29 = bitcast i32* %waylength60 to i8*
  %regwaylength = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i64 0, i32 11
  %regwayqu84 = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i64 0, i32 12
  br label %for.body58

for.body58:                                       ; preds = %for.body58.lr.ph, %cleanup
  %inc85466 = phi i64 [ 0, %for.body58.lr.ph ], [ %inc85465, %cleanup ]
  %add83464 = phi i64 [ 0, %for.body58.lr.ph ], [ %add83463, %cleanup ]
  %i.1462 = phi i32 [ 0, %for.body58.lr.ph ], [ %inc94, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #21
  %30 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i64 0, i32 18, i32 4), align 8, !tbaa !25
  %sub = add nsw i32 %30, -1
  %call62 = call i32 @_Z7random1i(i32 %sub) #19
  %31 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i64 0, i32 18, i32 4), align 8, !tbaa !25
  %sub63 = add nsw i32 %31, -1
  %call64 = call i32 @_Z7random1i(i32 %sub63) #19
  %32 = load %class.regobj**, %class.regobj*** getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i64 0, i32 18, i32 0), align 8, !tbaa !17
  %idxprom.i = sext i32 %call62 to i64
  %arrayidx.i = getelementptr inbounds %class.regobj*, %class.regobj** %32, i64 %idxprom.i
  %33 = load %class.regobj*, %class.regobj** %arrayidx.i, align 8, !tbaa !26
  %elemqu = getelementptr inbounds %class.regobj, %class.regobj* %33, i64 0, i32 9, i32 1
  %34 = load i32, i32* %elemqu, align 8, !tbaa !53
  %cmp66 = icmp eq i32 %34, 0
  br i1 %cmp66, label %cleanup, label %if.end68

if.end68:                                         ; preds = %for.body58
  %idxprom.i412 = sext i32 %call64 to i64
  %arrayidx.i413 = getelementptr inbounds %class.regobj*, %class.regobj** %32, i64 %idxprom.i412
  %35 = load %class.regobj*, %class.regobj** %arrayidx.i413, align 8, !tbaa !26
  %elemqu71 = getelementptr inbounds %class.regobj, %class.regobj* %35, i64 0, i32 9, i32 1
  %36 = load i32, i32* %elemqu71, align 8, !tbaa !53
  %cmp72 = icmp eq i32 %36, 0
  br i1 %cmp72, label %cleanup, label %if.end74

if.end74:                                         ; preds = %if.end68
  store %class.regobj** null, %class.regobj*** %wayar59, align 8, !tbaa !26
  store i32 0, i32* %waylength60, align 4, !tbaa !24
  %call75 = call i1 @_ZN9regwayobj9createwayEP6regobjS1_RPS1_Ri(%class.regwayobj* nonnull @regway, %class.regobj* %33, %class.regobj* %35, %class.regobj*** nonnull dereferenceable(8) %wayar59, i32* nonnull dereferenceable(4) %waylength60) #19
  %37 = load %class.regobj**, %class.regobj*** %wayar59, align 8, !tbaa !26
  %tobool77 = icmp eq %class.regobj** %37, null
  br i1 %tobool77, label %if.end79, label %if.then78

if.then78:                                        ; preds = %if.end74
  %38 = bitcast %class.regobj** %37 to i8*
  call void @free(i8* %38) #20
  br label %if.end79

if.end79:                                         ; preds = %if.end74, %if.then78
  br i1 %call75, label %if.then81, label %cleanup

if.then81:                                        ; preds = %if.end79
  %39 = load i32, i32* %waylength60, align 4, !tbaa !24
  %conv82 = sext i32 %39 to i64
  %add83 = add nsw i64 %add83464, %conv82
  %inc85 = add nsw i64 %inc85466, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %if.then81, %if.end68, %for.body58
  %inc85465 = phi i64 [ %inc85466, %if.end79 ], [ %inc85, %if.then81 ], [ %inc85466, %if.end68 ], [ %inc85466, %for.body58 ]
  %add83463 = phi i64 [ %add83464, %if.end79 ], [ %add83, %if.then81 ], [ %add83464, %if.end68 ], [ %add83464, %for.body58 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #21
  %inc94 = add nuw nsw i32 %i.1462, 1
  %40 = load i32, i32* %regwayqu, align 4, !tbaa !152
  %cmp57 = icmp slt i32 %inc94, %40
  br i1 %cmp57, label %for.body58, label %for.cond55.for.end95_crit_edge

for.cond55.for.end95_crit_edge:                   ; preds = %cleanup
  store i64 %add83463, i64* %regwaylength, align 8, !tbaa !142
  store i64 %inc85465, i64* %regwayqu84, align 8, !tbaa !141
  br label %for.end95

for.end95:                                        ; preds = %for.cond55.for.end95_crit_edge, %for.end
  %createregwaytime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i64 0, i32 4
  store double 0.000000e+00, double* %createregwaytime, align 8, !tbaa !140
  call void @_ZN9regwayobj7destroyEv(%class.regwayobj* nonnull @regway) #19
  call void @_ZN9regmngobj7destroyEv(%class.regmngobj* nonnull @regmng) #19
  call void @_ZN6wayobj7destroyEv(%class.wayobj* nonnull @way) #19
  call void @_ZN7way2obj6createEv(%class.way2obj* nonnull @way2) #19
  %call98 = call i1 @_ZN7way2obj7loadmapEPKc(%class.way2obj* nonnull @way2, i8* nonnull %0) #19
  %41 = load i32, i32* %riverwayqu, align 4, !tbaa !153
  %cmp101455 = icmp sgt i32 %41, 0
  br i1 %cmp101455, label %for.body102.lr.ph, label %for.end155

for.body102.lr.ph:                                ; preds = %for.end95
  %42 = bitcast %struct.pointt** %wayar107 to i8*
  %43 = bitcast i32* %waylength108 to i8*
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear, i64 0, i64 0
  %arrayidx119 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear, i64 0, i64 1
  %arrayidx120 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear, i64 0, i64 2
  %45 = bitcast %struct.pointt** %wayar107 to i8**
  %riverwaylength = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i64 0, i32 6
  %riverwayqu150 = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i64 0, i32 9
  br label %for.body102

for.body102:                                      ; preds = %for.body102.lr.ph, %if.end152
  %inc151460 = phi i64 [ 0, %for.body102.lr.ph ], [ %inc151459, %if.end152 ]
  %add149458 = phi i64 [ 0, %for.body102.lr.ph ], [ %add149457, %if.end152 ]
  %i.2456 = phi i32 [ 0, %for.body102.lr.ph ], [ %inc154, %if.end152 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %42) #21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %43) #21
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %44) #21
  br label %for.body112

for.body112:                                      ; preds = %for.body112, %for.body102
  %indvars.iv473 = phi i64 [ 0, %for.body102 ], [ %indvars.iv.next474, %for.body112 ]
  %j.0454 = phi i32 [ 0, %for.body102 ], [ %inc116, %for.body112 ]
  %conv113 = trunc i32 %j.0454 to i8
  %arrayidx114 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear, i64 0, i64 %indvars.iv473
  store i8 %conv113, i8* %arrayidx114, align 1, !tbaa !29
  %indvars.iv.next474 = add nuw nsw i64 %indvars.iv473, 1
  %inc116 = add nuw nsw i32 %j.0454, 1
  %exitcond475 = icmp eq i64 %indvars.iv.next474, 256
  br i1 %exitcond475, label %for.end117, label %for.body112

for.end117:                                       ; preds = %for.body112
  store i8 -1, i8* %44, align 4, !tbaa !29
  store i8 1, i8* %arrayidx119, align 1, !tbaa !29
  store i8 -1, i8* %arrayidx120, align 2, !tbaa !29
  store i32 0, i32* %waylength108, align 4, !tbaa !24
  store %struct.pointt* null, %struct.pointt** %wayar107, align 8, !tbaa !26
  %46 = load i32, i32* getelementptr inbounds (%class.way2obj, %class.way2obj* @way2, i64 0, i32 17), align 8, !tbaa !154
  %sub121 = add nsw i32 %46, -1
  %call.i = call i32 @_Z8myrandomii(i32 1, i32 %sub121) #19
  %47 = load i32, i32* getelementptr inbounds (%class.way2obj, %class.way2obj* @way2, i64 0, i32 18), align 4, !tbaa !156
  %sub123 = add nsw i32 %47, -1
  %call.i414 = call i32 @_Z8myrandomii(i32 1, i32 %sub123) #19
  %48 = load i8*, i8** getelementptr inbounds (%class.way2obj, %class.way2obj* @way2, i64 0, i32 0), align 8, !tbaa !157
  %49 = load i32, i32* getelementptr inbounds (%class.way2obj, %class.way2obj* @way2, i64 0, i32 17), align 8, !tbaa !154
  %mul.i = mul nsw i32 %49, %call.i414
  %add.i = add nsw i32 %mul.i, %call.i
  %idxprom.i415 = sext i32 %add.i to i64
  %arrayidx.i416 = getelementptr inbounds i8, i8* %48, i64 %idxprom.i415
  %50 = load i8, i8* %arrayidx.i416, align 1, !tbaa !29
  %idxprom126 = zext i8 %50 to i64
  %arrayidx127 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear, i64 0, i64 %idxprom126
  %51 = load i8, i8* %arrayidx127, align 1, !tbaa !29
  %cmp129 = icmp eq i8 %51, 0
  br i1 %cmp129, label %if.end152, label %if.then130

if.then130:                                       ; preds = %for.end117
  %sub131 = add nsw i32 %49, -1
  %call.i422 = call i32 @_Z8myrandomii(i32 1, i32 %sub131) #19
  %52 = load i32, i32* getelementptr inbounds (%class.way2obj, %class.way2obj* @way2, i64 0, i32 18), align 4, !tbaa !156
  %sub133 = add nsw i32 %52, -1
  %call.i423 = call i32 @_Z8myrandomii(i32 1, i32 %sub133) #19
  %53 = load i8*, i8** getelementptr inbounds (%class.way2obj, %class.way2obj* @way2, i64 0, i32 0), align 8, !tbaa !157
  %54 = load i32, i32* getelementptr inbounds (%class.way2obj, %class.way2obj* @way2, i64 0, i32 17), align 8, !tbaa !154
  %mul.i424 = mul nsw i32 %54, %call.i414
  %add.i425 = add nsw i32 %mul.i424, %call.i
  %idxprom.i426 = sext i32 %add.i425 to i64
  %arrayidx.i427 = getelementptr inbounds i8, i8* %53, i64 %idxprom.i426
  %55 = load i8, i8* %arrayidx.i427, align 1, !tbaa !29
  %idxprom136 = zext i8 %55 to i64
  %arrayidx137 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear, i64 0, i64 %idxprom136
  %56 = load i8, i8* %arrayidx137, align 1, !tbaa !29
  %cmp139 = icmp eq i8 %56, 0
  br i1 %cmp139, label %if.end152.critedge, label %if.then140

if.then140:                                       ; preds = %if.then130
  %call142 = call i1 @_ZN7way2obj9createwayEiiiiPhRP6pointtRi(%class.way2obj* nonnull @way2, i32 %call.i, i32 %call.i414, i32 %call.i422, i32 %call.i423, i8* nonnull %44, %struct.pointt** nonnull dereferenceable(8) %wayar107, i32* nonnull dereferenceable(4) %waylength108) #19
  %57 = load i8*, i8** %45, align 8, !tbaa !26
  call void @free(i8* %57) #20
  br i1 %call142, label %if.then147, label %if.end152

if.then147:                                       ; preds = %if.then140
  %58 = load i32, i32* %waylength108, align 4, !tbaa !24
  %conv148 = sext i32 %58 to i64
  %add149 = add nsw i64 %add149458, %conv148
  %inc151 = add nsw i64 %inc151460, 1
  br label %if.end152

if.end152.critedge:                               ; preds = %if.then130
  %59 = load i8*, i8** %45, align 8, !tbaa !26
  call void @free(i8* %59) #20
  br label %if.end152

if.end152:                                        ; preds = %if.end152.critedge, %for.end117, %if.then147, %if.then140
  %inc151459 = phi i64 [ %inc151460, %if.end152.critedge ], [ %inc151460, %for.end117 ], [ %inc151, %if.then147 ], [ %inc151460, %if.then140 ]
  %add149457 = phi i64 [ %add149458, %if.end152.critedge ], [ %add149458, %for.end117 ], [ %add149, %if.then147 ], [ %add149458, %if.then140 ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %44) #21
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %43) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #21
  %inc154 = add nuw nsw i32 %i.2456, 1
  %60 = load i32, i32* %riverwayqu, align 4, !tbaa !153
  %cmp101 = icmp slt i32 %inc154, %60
  br i1 %cmp101, label %for.body102, label %for.cond99.for.end155_crit_edge

for.cond99.for.end155_crit_edge:                  ; preds = %if.end152
  store i64 %add149457, i64* %riverwaylength, align 8, !tbaa !145
  store i64 %inc151459, i64* %riverwayqu150, align 8, !tbaa !144
  br label %for.end155

for.end155:                                       ; preds = %for.cond99.for.end155_crit_edge, %for.end95
  %createriverwaytime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i64 0, i32 2
  store double 0.000000e+00, double* %createriverwaytime, align 8, !tbaa !143
  %call156 = call i64 @time(i64* null) #20
  %61 = load i32, i32* %landwayqu, align 4, !tbaa !158
  %cmp159448 = icmp sgt i32 %61, 0
  br i1 %cmp159448, label %for.body160.lr.ph, label %for.end216

for.body160.lr.ph:                                ; preds = %for.end155
  %62 = bitcast %struct.pointt** %wayar165 to i8*
  %63 = bitcast i32* %waylength166 to i8*
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear168, i64 0, i64 0
  %arrayidx180 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear168, i64 0, i64 1
  %arrayidx181 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear168, i64 0, i64 2
  %65 = bitcast %struct.pointt** %wayar165 to i8**
  %landwaylength = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i64 0, i32 7
  %landwayqu211 = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i64 0, i32 10
  br label %for.body160

for.body160:                                      ; preds = %for.body160.lr.ph, %if.end213
  %inc212453 = phi i64 [ 0, %for.body160.lr.ph ], [ %inc212452, %if.end213 ]
  %add210451 = phi i64 [ 0, %for.body160.lr.ph ], [ %add210450, %if.end213 ]
  %i.3449 = phi i32 [ 0, %for.body160.lr.ph ], [ %inc215, %if.end213 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %62) #21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %63) #21
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %64) #21
  br label %for.body172

for.body172:                                      ; preds = %for.body172, %for.body160
  %indvars.iv = phi i64 [ 0, %for.body160 ], [ %indvars.iv.next, %for.body172 ]
  %j169.0447 = phi i32 [ 0, %for.body160 ], [ %inc177, %for.body172 ]
  %conv173 = trunc i32 %j169.0447 to i8
  %arrayidx175 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear168, i64 0, i64 %indvars.iv
  store i8 %conv173, i8* %arrayidx175, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %inc177 = add nuw nsw i32 %j169.0447, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond, label %for.end178, label %for.body172

for.end178:                                       ; preds = %for.body172
  store i8 1, i8* %64, align 4, !tbaa !29
  store i8 -1, i8* %arrayidx180, align 1, !tbaa !29
  store i8 -1, i8* %arrayidx181, align 2, !tbaa !29
  store i32 0, i32* %waylength166, align 4, !tbaa !24
  store %struct.pointt* null, %struct.pointt** %wayar165, align 8, !tbaa !26
  %66 = load i32, i32* getelementptr inbounds (%class.way2obj, %class.way2obj* @way2, i64 0, i32 17), align 8, !tbaa !154
  %sub182 = add nsw i32 %66, -2
  %call.i429 = call i32 @_Z8myrandomii(i32 1, i32 %sub182) #19
  %67 = load i32, i32* getelementptr inbounds (%class.way2obj, %class.way2obj* @way2, i64 0, i32 18), align 4, !tbaa !156
  %sub184 = add nsw i32 %67, -2
  %call.i430 = call i32 @_Z8myrandomii(i32 1, i32 %sub184) #19
  %68 = load i8*, i8** getelementptr inbounds (%class.way2obj, %class.way2obj* @way2, i64 0, i32 0), align 8, !tbaa !157
  %69 = load i32, i32* getelementptr inbounds (%class.way2obj, %class.way2obj* @way2, i64 0, i32 17), align 8, !tbaa !154
  %mul.i431 = mul nsw i32 %69, %call.i430
  %add.i432 = add nsw i32 %mul.i431, %call.i429
  %idxprom.i433 = sext i32 %add.i432 to i64
  %arrayidx.i434 = getelementptr inbounds i8, i8* %68, i64 %idxprom.i433
  %70 = load i8, i8* %arrayidx.i434, align 1, !tbaa !29
  %idxprom187 = zext i8 %70 to i64
  %arrayidx188 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear168, i64 0, i64 %idxprom187
  %71 = load i8, i8* %arrayidx188, align 1, !tbaa !29
  %cmp190 = icmp eq i8 %71, 0
  br i1 %cmp190, label %if.end213, label %if.then191

if.then191:                                       ; preds = %for.end178
  %sub192 = add nsw i32 %69, -2
  %call.i428 = call i32 @_Z8myrandomii(i32 1, i32 %sub192) #19
  %72 = load i32, i32* getelementptr inbounds (%class.way2obj, %class.way2obj* @way2, i64 0, i32 18), align 4, !tbaa !156
  %sub194 = add nsw i32 %72, -2
  %call.i421 = call i32 @_Z8myrandomii(i32 1, i32 %sub194) #19
  %73 = load i8*, i8** getelementptr inbounds (%class.way2obj, %class.way2obj* @way2, i64 0, i32 0), align 8, !tbaa !157
  %74 = load i32, i32* getelementptr inbounds (%class.way2obj, %class.way2obj* @way2, i64 0, i32 17), align 8, !tbaa !154
  %mul.i417 = mul nsw i32 %74, %call.i430
  %add.i418 = add nsw i32 %mul.i417, %call.i429
  %idxprom.i419 = sext i32 %add.i418 to i64
  %arrayidx.i420 = getelementptr inbounds i8, i8* %73, i64 %idxprom.i419
  %75 = load i8, i8* %arrayidx.i420, align 1, !tbaa !29
  %idxprom197 = zext i8 %75 to i64
  %arrayidx198 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear168, i64 0, i64 %idxprom197
  %76 = load i8, i8* %arrayidx198, align 1, !tbaa !29
  %cmp200 = icmp eq i8 %76, 0
  br i1 %cmp200, label %if.end213.critedge, label %if.then201

if.then201:                                       ; preds = %if.then191
  %call203 = call i1 @_ZN7way2obj9createwayEiiiiPhRP6pointtRi(%class.way2obj* nonnull @way2, i32 %call.i429, i32 %call.i430, i32 %call.i428, i32 %call.i421, i8* nonnull %64, %struct.pointt** nonnull dereferenceable(8) %wayar165, i32* nonnull dereferenceable(4) %waylength166) #19
  %77 = load i8*, i8** %65, align 8, !tbaa !26
  call void @free(i8* %77) #20
  br i1 %call203, label %if.then208, label %if.end213

if.then208:                                       ; preds = %if.then201
  %78 = load i32, i32* %waylength166, align 4, !tbaa !24
  %conv209 = sext i32 %78 to i64
  %add210 = add nsw i64 %add210451, %conv209
  %inc212 = add nsw i64 %inc212453, 1
  br label %if.end213

if.end213.critedge:                               ; preds = %if.then191
  %79 = load i8*, i8** %65, align 8, !tbaa !26
  call void @free(i8* %79) #20
  br label %if.end213

if.end213:                                        ; preds = %if.end213.critedge, %for.end178, %if.then208, %if.then201
  %inc212452 = phi i64 [ %inc212453, %if.end213.critedge ], [ %inc212453, %for.end178 ], [ %inc212, %if.then208 ], [ %inc212453, %if.then201 ]
  %add210450 = phi i64 [ %add210451, %if.end213.critedge ], [ %add210451, %for.end178 ], [ %add210, %if.then208 ], [ %add210451, %if.then201 ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %64) #21
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %63) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %62) #21
  %inc215 = add nuw nsw i32 %i.3449, 1
  %80 = load i32, i32* %landwayqu, align 4, !tbaa !158
  %cmp159 = icmp slt i32 %inc215, %80
  br i1 %cmp159, label %for.body160, label %for.cond157.for.end216_crit_edge

for.cond157.for.end216_crit_edge:                 ; preds = %if.end213
  store i64 %add210450, i64* %landwaylength, align 8, !tbaa !148
  store i64 %inc212452, i64* %landwayqu211, align 8, !tbaa !147
  br label %for.end216

for.end216:                                       ; preds = %for.cond157.for.end216_crit_edge, %for.end155
  %createlandwaytime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i64 0, i32 3
  store double 0.000000e+00, double* %createlandwaytime, align 8, !tbaa !146
  call void @_ZN7way2obj7destroyEv(%class.way2obj* nonnull @way2) #19
  call void @_ZN9statinfot5printEv(%struct.statinfot* nonnull %stat) #19
  %putchar = call i32 @putchar(i32 10)
  %puts399 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @str.29, i64 0, i64 0))
  %puts400 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @str.30, i64 0, i64 0))
  call void @_ZN6wayobj6createEv(%class.wayobj* nonnull @way) #19
  call void @_ZN9regmngobj6createEv(%class.regmngobj* nonnull @regmng) #19
  call void @_ZN9regwayobj6createEP9regmngobj(%class.regwayobj* nonnull @regway, %class.regmngobj* nonnull @regmng) #19
  %81 = load i32, i32* %randommaplx, align 4, !tbaa !159
  %82 = load i32, i32* %randommaply, align 4, !tbaa !160
  %83 = load float, float* %randommapdensity, align 4, !tbaa !161
  call void @_Z15createrandommapiif(i32 %81, i32 %82, float %83) #19
  %84 = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i64 0, i32 1
  %85 = bitcast double* %84 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(104) %85, i8 0, i64 96, i1 false) #21
  %86 = load i32, i32* %randommapregionsize, align 4, !tbaa !162
  call void @_ZN9regmngobj13createregionsEi(%class.regmngobj* nonnull @regmng, i32 %86) #19
  store double 0.000000e+00, double* %createregtime, align 8, !tbaa !133
  %call225 = call i64 @time(i64* null) #20
  %87 = load i32, i32* %randommapwayqu, align 4, !tbaa !163
  %cmp228441 = icmp sgt i32 %87, 0
  br i1 %cmp228441, label %for.body229.lr.ph, label %for.end262

for.body229.lr.ph:                                ; preds = %for.end216
  %88 = bitcast i32* %startx230 to i8*
  %89 = bitcast i32* %starty231 to i8*
  %90 = bitcast i32* %endx232 to i8*
  %91 = bitcast i32* %endy233 to i8*
  %92 = bitcast %struct.waymapcellt** %wayar234 to i8*
  %93 = bitcast i32* %waylength235 to i8*
  %waylength255 = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i64 0, i32 5
  %wayqu257 = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i64 0, i32 8
  br label %for.body229

for.body229:                                      ; preds = %for.body229.lr.ph, %if.end259
  %inc258446 = phi i64 [ 0, %for.body229.lr.ph ], [ %inc258445, %if.end259 ]
  %add256444 = phi i64 [ 0, %for.body229.lr.ph ], [ %add256443, %if.end259 ]
  %i.4442 = phi i32 [ 0, %for.body229.lr.ph ], [ %inc261, %if.end259 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %88) #21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %89) #21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %90) #21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %91) #21
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %92) #21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %93) #21
  store i32 0, i32* %waylength235, align 4, !tbaa !24
  store %struct.waymapcellt* null, %struct.waymapcellt** %wayar234, align 8, !tbaa !26
  %94 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i64 0, i32 12), align 4, !tbaa !32
  %call237 = call i32 @_Z8myrandomii(i32 1, i32 %94) #19
  store i32 %call237, i32* %startx230, align 4, !tbaa !24
  %95 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i64 0, i32 13), align 8, !tbaa !33
  %call238 = call i32 @_Z8myrandomii(i32 1, i32 %95) #19
  store i32 %call238, i32* %starty231, align 4, !tbaa !24
  %96 = load i32, i32* %startx230, align 4, !tbaa !24
  %call239 = call i1 @_ZN6wayobj13findfreepointEiiRiS0_(%class.wayobj* nonnull @way, i32 %96, i32 %call238, i32* nonnull dereferenceable(4) %startx230, i32* nonnull dereferenceable(4) %starty231) #19
  br i1 %call239, label %if.then240, label %if.end259

if.then240:                                       ; preds = %for.body229
  %97 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i64 0, i32 12), align 4, !tbaa !32
  %call241 = call i32 @_Z8myrandomii(i32 1, i32 %97) #19
  store i32 %call241, i32* %endx232, align 4, !tbaa !24
  %98 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i64 0, i32 13), align 8, !tbaa !33
  %call242 = call i32 @_Z8myrandomii(i32 1, i32 %98) #19
  store i32 %call242, i32* %endy233, align 4, !tbaa !24
  %99 = load i32, i32* %endx232, align 4, !tbaa !24
  %call243 = call i1 @_ZN6wayobj13findfreepointEiiRiS0_(%class.wayobj* nonnull @way, i32 %99, i32 %call242, i32* nonnull dereferenceable(4) %endx232, i32* nonnull dereferenceable(4) %endy233) #19
  br i1 %call243, label %if.then244, label %if.end247

if.then244:                                       ; preds = %if.then240
  %100 = load i32, i32* %startx230, align 4, !tbaa !24
  %101 = load i32, i32* %starty231, align 4, !tbaa !24
  %102 = load i32, i32* %endx232, align 4, !tbaa !24
  %103 = load i32, i32* %endy233, align 4, !tbaa !24
  %call245 = call i1 @_ZN6wayobj9createwayEiiiiRP8point16tRi(%class.wayobj* nonnull @way, i32 %100, i32 %101, i32 %102, i32 %103, %struct.waymapcellt** nonnull dereferenceable(8) %wayar234, i32* nonnull dereferenceable(4) %waylength235) #19
  %frombool246 = zext i1 %call245 to i8
  br label %if.end247

if.end247:                                        ; preds = %if.then244, %if.then240
  %flcreate236.0 = phi i8 [ %frombool246, %if.then244 ], [ 0, %if.then240 ]
  %104 = load %struct.waymapcellt*, %struct.waymapcellt** %wayar234, align 8, !tbaa !26
  %tobool248 = icmp eq %struct.waymapcellt* %104, null
  %extract.t402 = icmp ne i8 %flcreate236.0, 0
  br i1 %tobool248, label %if.end251, label %if.then249

if.then249:                                       ; preds = %if.end247
  %105 = bitcast %struct.waymapcellt* %104 to i8*
  call void @free(i8* %105) #20
  br i1 %extract.t402, label %if.then253, label %if.end259

if.end251:                                        ; preds = %if.end247
  br i1 %extract.t402, label %if.then253, label %if.end259

if.then253:                                       ; preds = %if.then249, %if.end251
  %106 = load i32, i32* %waylength235, align 4, !tbaa !24
  %conv254 = sext i32 %106 to i64
  %add256 = add nsw i64 %add256444, %conv254
  %inc258 = add nsw i64 %inc258446, 1
  br label %if.end259

if.end259:                                        ; preds = %if.then249, %for.body229, %if.then253, %if.end251
  %inc258445 = phi i64 [ %inc258446, %if.then249 ], [ %inc258446, %for.body229 ], [ %inc258, %if.then253 ], [ %inc258446, %if.end251 ]
  %add256443 = phi i64 [ %add256444, %if.then249 ], [ %add256444, %for.body229 ], [ %add256, %if.then253 ], [ %add256444, %if.end251 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %93) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %92) #21
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %91) #21
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %90) #21
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %89) #21
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %88) #21
  %inc261 = add nuw nsw i32 %i.4442, 1
  %107 = load i32, i32* %randommapwayqu, align 4, !tbaa !163
  %cmp228 = icmp slt i32 %inc261, %107
  br i1 %cmp228, label %for.body229, label %for.cond226.for.end262_crit_edge

for.cond226.for.end262_crit_edge:                 ; preds = %if.end259
  store i64 %add256443, i64* %waylength255, align 8, !tbaa !139
  store i64 %inc258445, i64* %wayqu257, align 8, !tbaa !138
  br label %for.end262

for.end262:                                       ; preds = %for.cond226.for.end262_crit_edge, %for.end216
  store double 0.000000e+00, double* %createwaytime, align 8, !tbaa !137
  %108 = load i32, i32* %randommapregwayqu, align 4, !tbaa !164
  %cmp266435 = icmp sgt i32 %108, 0
  br i1 %cmp266435, label %for.body267.lr.ph, label %for.end315

for.body267.lr.ph:                                ; preds = %for.end262
  %109 = bitcast %class.regobj*** %wayar272 to i8*
  %110 = bitcast i32* %waylength273 to i8*
  %regwaylength299 = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i64 0, i32 11
  %regwayqu301 = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i64 0, i32 12
  br label %for.body267

for.body267:                                      ; preds = %for.body267.lr.ph, %cleanup304
  %inc302440 = phi i64 [ 0, %for.body267.lr.ph ], [ %inc302439, %cleanup304 ]
  %add300438 = phi i64 [ 0, %for.body267.lr.ph ], [ %add300437, %cleanup304 ]
  %i.5436 = phi i32 [ 0, %for.body267.lr.ph ], [ %inc314, %cleanup304 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %109) #21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %110) #21
  %111 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i64 0, i32 18, i32 4), align 8, !tbaa !25
  %sub275 = add nsw i32 %111, -1
  %call276 = call i32 @_Z7random1i(i32 %sub275) #19
  %112 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i64 0, i32 18, i32 4), align 8, !tbaa !25
  %sub277 = add nsw i32 %112, -1
  %call278 = call i32 @_Z7random1i(i32 %sub277) #19
  %113 = load %class.regobj**, %class.regobj*** getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i64 0, i32 18, i32 0), align 8, !tbaa !17
  %idxprom.i410 = sext i32 %call276 to i64
  %arrayidx.i411 = getelementptr inbounds %class.regobj*, %class.regobj** %113, i64 %idxprom.i410
  %114 = load %class.regobj*, %class.regobj** %arrayidx.i411, align 8, !tbaa !26
  %elemqu281 = getelementptr inbounds %class.regobj, %class.regobj* %114, i64 0, i32 9, i32 1
  %115 = load i32, i32* %elemqu281, align 8, !tbaa !53
  %cmp282 = icmp eq i32 %115, 0
  br i1 %cmp282, label %cleanup304, label %if.end284

if.end284:                                        ; preds = %for.body267
  %idxprom.i408 = sext i32 %call278 to i64
  %arrayidx.i409 = getelementptr inbounds %class.regobj*, %class.regobj** %113, i64 %idxprom.i408
  %116 = load %class.regobj*, %class.regobj** %arrayidx.i409, align 8, !tbaa !26
  %elemqu287 = getelementptr inbounds %class.regobj, %class.regobj* %116, i64 0, i32 9, i32 1
  %117 = load i32, i32* %elemqu287, align 8, !tbaa !53
  %cmp288 = icmp eq i32 %117, 0
  br i1 %cmp288, label %cleanup304, label %if.end290

if.end290:                                        ; preds = %if.end284
  store %class.regobj** null, %class.regobj*** %wayar272, align 8, !tbaa !26
  store i32 0, i32* %waylength273, align 4, !tbaa !24
  %call291 = call i1 @_ZN9regwayobj9createwayEP6regobjS1_RPS1_Ri(%class.regwayobj* nonnull @regway, %class.regobj* %114, %class.regobj* %116, %class.regobj*** nonnull dereferenceable(8) %wayar272, i32* nonnull dereferenceable(4) %waylength273) #19
  %118 = load %class.regobj**, %class.regobj*** %wayar272, align 8, !tbaa !26
  %tobool293 = icmp eq %class.regobj** %118, null
  br i1 %tobool293, label %if.end295, label %if.then294

if.then294:                                       ; preds = %if.end290
  %119 = bitcast %class.regobj** %118 to i8*
  call void @free(i8* %119) #20
  br label %if.end295

if.end295:                                        ; preds = %if.end290, %if.then294
  br i1 %call291, label %if.then297, label %cleanup304

if.then297:                                       ; preds = %if.end295
  %120 = load i32, i32* %waylength273, align 4, !tbaa !24
  %conv298 = sext i32 %120 to i64
  %add300 = add nsw i64 %add300438, %conv298
  %inc302 = add nsw i64 %inc302440, 1
  br label %cleanup304

cleanup304:                                       ; preds = %if.end295, %if.then297, %if.end284, %for.body267
  %inc302439 = phi i64 [ %inc302440, %if.end295 ], [ %inc302, %if.then297 ], [ %inc302440, %if.end284 ], [ %inc302440, %for.body267 ]
  %add300437 = phi i64 [ %add300438, %if.end295 ], [ %add300, %if.then297 ], [ %add300438, %if.end284 ], [ %add300438, %for.body267 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %110) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %109) #21
  %inc314 = add nuw nsw i32 %i.5436, 1
  %121 = load i32, i32* %randommapregwayqu, align 4, !tbaa !164
  %cmp266 = icmp slt i32 %inc314, %121
  br i1 %cmp266, label %for.body267, label %for.cond264.for.end315_crit_edge

for.cond264.for.end315_crit_edge:                 ; preds = %cleanup304
  store i64 %add300437, i64* %regwaylength299, align 8, !tbaa !142
  store i64 %inc302439, i64* %regwayqu301, align 8, !tbaa !141
  br label %for.end315

for.end315:                                       ; preds = %for.cond264.for.end315_crit_edge, %for.end262
  store double 0.000000e+00, double* %createregwaytime, align 8, !tbaa !140
  call void @_ZN9regwayobj7destroyEv(%class.regwayobj* nonnull @regway) #19
  call void @_ZN9regmngobj7destroyEv(%class.regmngobj* nonnull @regmng) #19
  call void @_ZN6wayobj7destroyEv(%class.wayobj* nonnull @way) #19
  call void @_ZN9statinfot5printEv(%struct.statinfot* nonnull %stat) #19
  %putchar401 = call i32 @putchar(i32 10)
  br label %cleanup318

cleanup318:                                       ; preds = %for.end315, %if.then4, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %for.end315 ], [ 1, %if.then4 ]
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %1) #21
  call void @llvm.lifetime.end.p0i8(i64 4140, i8* nonnull %0) #21
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #16

; Function Attrs: nofree nounwind optsize
declare dso_local noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare dso_local i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare dso_local i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare dso_local i64 @time(i64*) local_unnamed_addr #4

; Function Attrs: norecurse nounwind optsize readonly
define dso_local i1 @_ZN7way2obj12isaddtoboundEii(%class.way2obj* nocapture readonly %this, i32 %x, i32 %y) local_unnamed_addr #14 align 2 {
entry:
  %mapp.i = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 0
  %0 = load i8*, i8** %mapp.i, align 8, !tbaa !157
  %mapsizex.i = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 17
  %1 = load i32, i32* %mapsizex.i, align 8, !tbaa !154
  %mul.i = mul nsw i32 %1, %y
  %add.i = add nsw i32 %mul.i, %x
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %0, i64 %idxprom.i
  %2 = load i8, i8* %arrayidx.i, align 1, !tbaa !29
  %idxprom2.i = zext i8 %2 to i64
  %arrayidx3.i = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 3, i64 %idxprom2.i
  %3 = load i8, i8* %arrayidx3.i, align 1, !tbaa !29
  %cmp = icmp ne i8 %3, 0
  ret i1 %cmp
}

; Function Attrs: optsize
define dso_local void @_ZN7way2obj10addtoboundEii(%class.way2obj* %this, i32 %x, i32 %y) local_unnamed_addr #0 align 2 {
entry:
  %filltact = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 7
  %0 = load i32, i32* %filltact, align 8, !tbaa !165
  %mapp.i = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 0
  %1 = load i8*, i8** %mapp.i, align 8, !tbaa !157
  %mapsizex.i = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 17
  %2 = load i32, i32* %mapsizex.i, align 8, !tbaa !154
  %mul.i = mul nsw i32 %2, %y
  %add.i = add nsw i32 %mul.i, %x
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %1, i64 %idxprom.i
  %3 = load i8, i8* %arrayidx.i, align 1, !tbaa !29
  %idxprom2.i = zext i8 %3 to i64
  %arrayidx3.i = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 3, i64 %idxprom2.i
  %4 = load i8, i8* %arrayidx3.i, align 1, !tbaa !29
  %conv = zext i8 %4 to i32
  %add = add nsw i32 %0, %conv
  %rem = srem i32 %add, 256
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 4, i64 %idxprom
  %elemqu.i = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 4, i64 %idxprom, i32 1
  %5 = load i32, i32* %elemqu.i, align 8, !tbaa !107
  %maxelemqu.i = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 4, i64 %idxprom, i32 2
  %6 = load i32, i32* %maxelemqu.i, align 4, !tbaa !108
  %cmp.i = icmp eq i32 %5, %6
  br i1 %cmp.i, label %if.then.i, label %_ZN9flexarrayI6pointtE3addERKS0_.exit

if.then.i:                                        ; preds = %entry
  tail call void @_ZN9flexarrayI6pointtE8doublingEb(%class.flexarray.4* nonnull %arrayidx, i1 true) #19
  %.pre.i = load i32, i32* %elemqu.i, align 8, !tbaa !107
  br label %_ZN9flexarrayI6pointtE3addERKS0_.exit

_ZN9flexarrayI6pointtE3addERKS0_.exit:            ; preds = %entry, %if.then.i
  %7 = phi i32 [ %.pre.i, %if.then.i ], [ %5, %entry ]
  %ep.i = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %arrayidx, i64 0, i32 0
  %8 = load %struct.pointt*, %struct.pointt** %ep.i, align 8, !tbaa !109
  %idxprom.i5 = sext i32 %7 to i64
  %arrayidx.i6 = getelementptr inbounds %struct.pointt, %struct.pointt* %8, i64 %idxprom.i5
  %9 = bitcast %struct.pointt* %arrayidx.i6 to i64*
  %ref.tmp.sroa.4.0.insert.ext = zext i32 %y to i64
  %ref.tmp.sroa.4.0.insert.shift = shl nuw i64 %ref.tmp.sroa.4.0.insert.ext, 32
  %ref.tmp.sroa.0.0.insert.ext = zext i32 %x to i64
  %ref.tmp.sroa.0.0.insert.insert = or i64 %ref.tmp.sroa.4.0.insert.shift, %ref.tmp.sroa.0.0.insert.ext
  store i64 %ref.tmp.sroa.0.0.insert.insert, i64* %9, align 4
  %10 = load i32, i32* %elemqu.i, align 8, !tbaa !107
  %inc.i = add nsw i32 %10, 1
  store i32 %inc.i, i32* %elemqu.i, align 8, !tbaa !107
  ret void
}

; Function Attrs: optsize
define dso_local void @_ZN7way2obj12releasepointEii(%class.way2obj* %this, i32 %px, i32 %py) local_unnamed_addr #0 align 2 {
entry:
  %waymap = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 1
  %0 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8, !tbaa !166
  %mapsizex = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 17
  %1 = load i32, i32* %mapsizex, align 8, !tbaa !154
  %mul = mul nsw i32 %1, %py
  %add = add nsw i32 %mul, %px
  %idxprom = sext i32 %add to i64
  %fillnum = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %0, i64 %idxprom, i32 0
  %2 = load i16, i16* %fillnum, align 2, !tbaa !167
  %fillnum2 = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 2
  %3 = load i16, i16* %fillnum2, align 8, !tbaa !169
  %cmp = icmp eq i16 %2, %3
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i16 %3, i16* %fillnum, align 2, !tbaa !167
  %sub = add nsw i32 %px, -1
  %sub12 = add nsw i32 %py, -1
  %add13 = add nsw i32 %px, 1
  %add14 = add nsw i32 %py, 1
  %cmp15.inv = icmp sgt i32 %px, 0
  %spec.select = select i1 %cmp15.inv, i32 %sub, i32 0
  %cmp18.inv = icmp sgt i32 %py, 0
  %y1.0 = select i1 %cmp18.inv, i32 %sub12, i32 0
  %mapmaxx = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 13
  %4 = load i32, i32* %mapmaxx, align 8, !tbaa !170
  %cmp21 = icmp sgt i32 %4, %px
  %spec.select153 = select i1 %cmp21, i32 %add13, i32 %4
  %mapmaxy = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 14
  %5 = load i32, i32* %mapmaxy, align 4, !tbaa !171
  %cmp25 = icmp sgt i32 %5, %py
  %y2.0 = select i1 %cmp25, i32 %add14, i32 %5
  %cmp29162 = icmp sgt i32 %y1.0, %y2.0
  br i1 %cmp29162, label %for.end64, label %for.cond30.preheader.lr.ph

for.cond30.preheader.lr.ph:                       ; preds = %if.end
  %cmp31156 = icmp sgt i32 %spec.select, %spec.select153
  %mapp.i.i = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 0
  br label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.inc62, %for.cond30.preheader.lr.ph
  %flcenter.0.off0166 = phi i1 [ true, %for.cond30.preheader.lr.ph ], [ %flcenter.1.off0.lcssa, %for.inc62 ]
  %mindist.0165 = phi i32 [ 10000000, %for.cond30.preheader.lr.ph ], [ %mindist.1.lcssa, %for.inc62 ]
  %y.0163 = phi i32 [ %y1.0, %for.cond30.preheader.lr.ph ], [ %inc63, %for.inc62 ]
  br i1 %cmp31156, label %for.inc62, label %for.body32.lr.ph

for.body32.lr.ph:                                 ; preds = %for.cond30.preheader
  %cmp34 = icmp eq i32 %y.0163, %py
  br label %for.body32

for.body32:                                       ; preds = %for.inc, %for.body32.lr.ph
  %flcenter.1.off0160 = phi i1 [ %flcenter.0.off0166, %for.body32.lr.ph ], [ %flcenter.2.off0, %for.inc ]
  %x.0158 = phi i32 [ %spec.select, %for.body32.lr.ph ], [ %inc, %for.inc ]
  %mindist.1157 = phi i32 [ %mindist.0165, %for.body32.lr.ph ], [ %mindist.2, %for.inc ]
  %cmp33 = icmp eq i32 %x.0158, %px
  %or.cond = and i1 %cmp34, %cmp33
  br i1 %or.cond, label %for.inc, label %if.then35

if.then35:                                        ; preds = %for.body32
  %6 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8, !tbaa !166
  %7 = load i32, i32* %mapsizex, align 8, !tbaa !154
  %mul38 = mul nsw i32 %7, %y.0163
  %add39 = add nsw i32 %mul38, %x.0158
  %idxprom40 = sext i32 %add39 to i64
  %fillnum42 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %6, i64 %idxprom40, i32 0
  %8 = load i16, i16* %fillnum42, align 2, !tbaa !167
  %9 = load i16, i16* %fillnum2, align 8, !tbaa !169
  %cmp46 = icmp eq i16 %8, %9
  br i1 %cmp46, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.then35
  %num = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %6, i64 %idxprom40, i32 1
  %10 = load i16, i16* %num, align 2, !tbaa !172
  %conv54 = zext i16 %10 to i32
  %cmp55 = icmp sgt i32 %mindist.1157, %conv54
  %spec.select154 = select i1 %cmp55, i32 %conv54, i32 %mindist.1157
  %not.cmp55 = xor i1 %cmp55, true
  %spec.select155 = and i1 %flcenter.1.off0160, %not.cmp55
  br label %for.inc

if.else:                                          ; preds = %if.then35
  %11 = load i8*, i8** %mapp.i.i, align 8, !tbaa !157
  %arrayidx.i.i = getelementptr inbounds i8, i8* %11, i64 %idxprom40
  %12 = load i8, i8* %arrayidx.i.i, align 1, !tbaa !29
  %idxprom2.i.i = zext i8 %12 to i64
  %arrayidx3.i.i = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 3, i64 %idxprom2.i.i
  %13 = load i8, i8* %arrayidx3.i.i, align 1, !tbaa !29
  %cmp.i = icmp eq i8 %13, 0
  br i1 %cmp.i, label %for.inc, label %if.then58

if.then58:                                        ; preds = %if.else
  tail call void @_ZN7way2obj10addtoboundEii(%class.way2obj* nonnull %this, i32 %x.0158, i32 %y.0163) #19
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then47, %for.body32, %if.then58
  %mindist.2 = phi i32 [ %mindist.1157, %if.then58 ], [ %mindist.1157, %if.else ], [ %mindist.1157, %for.body32 ], [ %spec.select154, %if.then47 ]
  %flcenter.2.off0 = phi i1 [ %flcenter.1.off0160, %if.then58 ], [ %flcenter.1.off0160, %if.else ], [ %flcenter.1.off0160, %for.body32 ], [ %spec.select155, %if.then47 ]
  %inc = add nsw i32 %x.0158, 1
  %cmp31 = icmp slt i32 %x.0158, %spec.select153
  br i1 %cmp31, label %for.body32, label %for.inc62

for.inc62:                                        ; preds = %for.inc, %for.cond30.preheader
  %mindist.1.lcssa = phi i32 [ %mindist.0165, %for.cond30.preheader ], [ %mindist.2, %for.inc ]
  %flcenter.1.off0.lcssa = phi i1 [ %flcenter.0.off0166, %for.cond30.preheader ], [ %flcenter.2.off0, %for.inc ]
  %inc63 = add nsw i32 %y.0163, 1
  %cmp29 = icmp slt i32 %y.0163, %y2.0
  br i1 %cmp29, label %for.cond30.preheader, label %for.end64.loopexit

for.end64.loopexit:                               ; preds = %for.inc62
  %.pre = load i32, i32* %mapsizex, align 8, !tbaa !154
  %.pre169 = mul nsw i32 %.pre, %py
  %.pre170 = add nsw i32 %.pre169, %px
  %.pre171 = sext i32 %.pre170 to i64
  br label %for.end64

for.end64:                                        ; preds = %for.end64.loopexit, %if.end
  %idxprom.i.pre-phi = phi i64 [ %.pre171, %for.end64.loopexit ], [ %idxprom, %if.end ]
  %mindist.0.lcssa = phi i32 [ %mindist.1.lcssa, %for.end64.loopexit ], [ 10000000, %if.end ]
  %flcenter.0.off0.lcssa = phi i1 [ %flcenter.1.off0.lcssa, %for.end64.loopexit ], [ true, %if.end ]
  %mapp.i = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 0
  %14 = load i8*, i8** %mapp.i, align 8, !tbaa !157
  %arrayidx.i = getelementptr inbounds i8, i8* %14, i64 %idxprom.i.pre-phi
  %15 = load i8, i8* %arrayidx.i, align 1, !tbaa !29
  %idxprom2.i = zext i8 %15 to i64
  %arrayidx3.i = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 3, i64 %idxprom2.i
  %16 = load i8, i8* %arrayidx3.i, align 1, !tbaa !29
  %conv81 = zext i8 %16 to i16
  %conv69 = zext i8 %16 to i32
  %add70 = add nsw i32 %mindist.0.lcssa, %conv69
  %conv71 = trunc i32 %add70 to i16
  %conv81.sink = select i1 %flcenter.0.off0.lcssa, i16 %conv81, i16 %conv71
  %17 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8, !tbaa !166
  %num88 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %17, i64 %idxprom.i.pre-phi, i32 1
  store i16 %conv81.sink, i16* %num88, align 2, !tbaa !172
  %endx = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 8
  %18 = load i32, i32* %endx, align 4, !tbaa !173
  %cmp90 = icmp eq i32 %18, %px
  br i1 %cmp90, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %for.end64
  %endy = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 9
  %19 = load i32, i32* %endy, align 8, !tbaa !174
  %cmp91 = icmp eq i32 %19, %py
  br i1 %cmp91, label %if.then92, label %cleanup

if.then92:                                        ; preds = %land.lhs.true
  %flend = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 12
  store i8 1, i8* %flend, align 4, !tbaa !175
  br label %cleanup

cleanup:                                          ; preds = %for.end64, %land.lhs.true, %if.then92, %entry
  ret void
}

; Function Attrs: optsize
define dso_local void @_ZN7way2obj12releaseboundEv(%class.way2obj* %this) local_unnamed_addr #0 align 2 {
entry:
  %curbound = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 5
  %0 = load i32, i32* %curbound, align 8, !tbaa !176
  %idxprom = sext i32 %0 to i64
  %elemqu = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 4, i64 %idxprom, i32 1
  %1 = load i32, i32* %elemqu, align 8, !tbaa !107
  %cmp = icmp eq i32 %1, 0
  %nonboundqu = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %nonboundqu, align 4, !tbaa !177
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %nonboundqu, align 4, !tbaa !177
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %nonboundqu, align 4, !tbaa !177
  %cmp931 = icmp sgt i32 %1, 0
  br i1 %cmp931, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.else
  %3 = zext i32 %1 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %3, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %idxprom1234 = phi i64 [ %idxprom, %for.body.preheader ], [ %idxprom12, %for.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %ep.i = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 4, i64 %idxprom1234, i32 0
  %4 = load %struct.pointt*, %struct.pointt** %ep.i, align 8, !tbaa !109
  %x = getelementptr inbounds %struct.pointt, %struct.pointt* %4, i64 %indvars.iv.next, i32 0
  %5 = load i32, i32* %x, align 4, !tbaa !110
  %y = getelementptr inbounds %struct.pointt, %struct.pointt* %4, i64 %indvars.iv.next, i32 1
  %6 = load i32, i32* %y, align 4, !tbaa !111
  tail call void @_ZN7way2obj12releasepointEii(%class.way2obj* nonnull %this, i32 %5, i32 %6) #19
  %cmp9 = icmp sgt i64 %indvars.iv, 1
  %7 = load i32, i32* %curbound, align 8, !tbaa !176
  %idxprom12 = sext i32 %7 to i64
  br i1 %cmp9, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body
  %idxprom12.le = sext i32 %7 to i64
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.else
  %idxprom12.lcssa = phi i64 [ %idxprom, %if.else ], [ %idxprom12.le, %for.end.loopexit ]
  %elemqu.i = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 4, i64 %idxprom12.lcssa, i32 1
  store i32 0, i32* %elemqu.i, align 8, !tbaa !107
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: optsize
define dso_local i1 @_ZN7way2obj4fillEii(%class.way2obj* %this, i32 %startx, i32 %starty) local_unnamed_addr #0 align 2 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %elemqu.i = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 4, i64 %indvars.iv, i32 1
  store i32 0, i32* %elemqu.i, align 8, !tbaa !107
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %fillnum = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 2
  %0 = load i16, i16* %fillnum, align 8, !tbaa !169
  %inc2 = add i16 %0, 1
  store i16 %inc2, i16* %fillnum, align 8, !tbaa !169
  %cmp4 = icmp eq i16 %inc2, -1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %waymap = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 1
  %1 = bitcast %struct.waymapcellt** %waymap to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !166
  %mapsizex = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 17
  %3 = load i32, i32* %mapsizex, align 8, !tbaa !154
  %mapsizey = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 18
  %4 = load i32, i32* %mapsizey, align 4, !tbaa !156
  %mul = mul nsw i32 %4, %3
  %conv5 = sext i32 %mul to i64
  %mul6 = shl nsw i64 %conv5, 2
  tail call void @llvm.memset.p0i8.i64(i8* align 2 %2, i8 0, i64 %mul6, i1 false)
  store i16 1, i16* %fillnum, align 8, !tbaa !169
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %flend = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 12
  store i8 0, i8* %flend, align 4, !tbaa !175
  %nonboundqu = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 6
  store i32 0, i32* %nonboundqu, align 4, !tbaa !177
  %arrayidx9 = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 4, i64 0
  %elemqu.i31 = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 4, i64 0, i32 1
  %5 = load i32, i32* %elemqu.i31, align 8, !tbaa !107
  %maxelemqu.i = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 4, i64 0, i32 2
  %6 = load i32, i32* %maxelemqu.i, align 4, !tbaa !108
  %cmp.i = icmp eq i32 %5, %6
  br i1 %cmp.i, label %if.then.i, label %_ZN9flexarrayI6pointtE3addERKS0_.exit

if.then.i:                                        ; preds = %if.end
  tail call void @_ZN9flexarrayI6pointtE8doublingEb(%class.flexarray.4* nonnull %arrayidx9, i1 true) #19
  %.pre.i = load i32, i32* %elemqu.i31, align 8, !tbaa !107
  br label %_ZN9flexarrayI6pointtE3addERKS0_.exit

_ZN9flexarrayI6pointtE3addERKS0_.exit:            ; preds = %if.end, %if.then.i
  %7 = phi i32 [ %.pre.i, %if.then.i ], [ %5, %if.end ]
  %ep.i = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %arrayidx9, i64 0, i32 0
  %8 = load %struct.pointt*, %struct.pointt** %ep.i, align 8, !tbaa !109
  %idxprom.i = sext i32 %7 to i64
  %arrayidx.i = getelementptr inbounds %struct.pointt, %struct.pointt* %8, i64 %idxprom.i
  %9 = bitcast %struct.pointt* %arrayidx.i to i64*
  %ref.tmp.sroa.4.0.insert.ext = zext i32 %starty to i64
  %ref.tmp.sroa.4.0.insert.shift = shl nuw i64 %ref.tmp.sroa.4.0.insert.ext, 32
  %ref.tmp.sroa.0.0.insert.ext = zext i32 %startx to i64
  %ref.tmp.sroa.0.0.insert.insert = or i64 %ref.tmp.sroa.4.0.insert.shift, %ref.tmp.sroa.0.0.insert.ext
  store i64 %ref.tmp.sroa.0.0.insert.insert, i64* %9, align 4
  %10 = load i32, i32* %elemqu.i31, align 8, !tbaa !107
  %inc.i = add nsw i32 %10, 1
  store i32 %inc.i, i32* %elemqu.i31, align 8, !tbaa !107
  %waymap10 = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 1
  %11 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap10, align 8, !tbaa !166
  %mapsizex11 = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 17
  %12 = load i32, i32* %mapsizex11, align 8, !tbaa !154
  %mul12 = mul nsw i32 %12, %starty
  %add = add nsw i32 %mul12, %startx
  %idxprom13 = sext i32 %add to i64
  %num = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %11, i64 %idxprom13, i32 1
  store i16 0, i16* %num, align 2, !tbaa !172
  %curbound = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 5
  store i32 0, i32* %curbound, align 8, !tbaa !176
  %filltact = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 7
  store i32 0, i32* %filltact, align 8, !tbaa !165
  %13 = load i8, i8* %flend, align 4, !tbaa !175, !range !45
  %cmp1734 = icmp eq i8 %13, 0
  br i1 %cmp1734, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %_ZN9flexarrayI6pointtE3addERKS0_.exit, %while.body
  %storemerge35 = phi i32 [ %inc23, %while.body ], [ 0, %_ZN9flexarrayI6pointtE3addERKS0_.exit ]
  %14 = load i32, i32* %nonboundqu, align 4, !tbaa !177
  %cmp19 = icmp slt i32 %14, 265
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %rem = srem i32 %storemerge35, 256
  store i32 %rem, i32* %curbound, align 8, !tbaa !176
  tail call void @_ZN7way2obj12releaseboundEv(%class.way2obj* nonnull %this) #19
  %15 = load i32, i32* %filltact, align 8, !tbaa !165
  %inc23 = add nsw i32 %15, 1
  store i32 %inc23, i32* %filltact, align 8, !tbaa !165
  %16 = load i8, i8* %flend, align 4, !tbaa !175, !range !45
  %cmp17 = icmp eq i8 %16, 0
  br i1 %cmp17, label %land.rhs, label %while.end

while.end:                                        ; preds = %land.rhs, %while.body, %_ZN9flexarrayI6pointtE3addERKS0_.exit
  %.lcssa = phi i1 [ true, %_ZN9flexarrayI6pointtE3addERKS0_.exit ], [ true, %while.body ], [ false, %land.rhs ]
  ret i1 %.lcssa
}

; Function Attrs: nounwind optsize
define dso_local i1 @_ZN7way2obj11createwayarERP6pointtRi(%class.way2obj* nocapture readonly %this, %struct.pointt** nocapture dereferenceable(8) %wayarp, i32* nocapture dereferenceable(4) %waylength) local_unnamed_addr #8 align 2 {
entry:
  %mapsizex = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 17
  %0 = load i32, i32* %mapsizex, align 8, !tbaa !154
  %mul.i = shl i32 %0, 3
  %conv.i.i = sext i32 %mul.i to i64
  %call.i.i = tail call noalias i8* @malloc(i64 %conv.i.i) #20
  %endx = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 8
  %1 = load i32, i32* %endx, align 4, !tbaa !173
  %endy = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 9
  %2 = load i32, i32* %endy, align 8, !tbaa !174
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %if.then.i, label %_ZN9flexarrayI6pointtE3addERKS0_.exit

if.then.i:                                        ; preds = %entry
  %call.i.i196 = tail call noalias i8* @malloc(i64 0) #20
  tail call void @free(i8* %call.i.i) #20
  br label %_ZN9flexarrayI6pointtE3addERKS0_.exit

_ZN9flexarrayI6pointtE3addERKS0_.exit:            ; preds = %entry, %if.then.i
  %wayar.sroa.0.0.in = phi i8* [ %call.i.i196, %if.then.i ], [ %call.i.i, %entry ]
  %wayar.sroa.0.0 = bitcast i8* %wayar.sroa.0.0.in to %struct.pointt*
  %3 = bitcast i8* %wayar.sroa.0.0.in to i64*
  %ref.tmp.sroa.4.0.insert.ext = zext i32 %2 to i64
  %ref.tmp.sroa.4.0.insert.shift = shl nuw i64 %ref.tmp.sroa.4.0.insert.ext, 32
  %ref.tmp.sroa.0.0.insert.ext = zext i32 %1 to i64
  %ref.tmp.sroa.0.0.insert.insert = or i64 %ref.tmp.sroa.4.0.insert.shift, %ref.tmp.sroa.0.0.insert.ext
  store i64 %ref.tmp.sroa.0.0.insert.insert, i64* %3, align 4
  store i32 1, i32* %waylength, align 4, !tbaa !24
  %mapsizey = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 18
  %mapmaxx = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 13
  %mapmaxy = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 14
  %waymap = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 1
  %fillnum37 = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 2
  %startx = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 10
  %starty = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 11
  %4 = load i32, i32* %mapsizex, align 8, !tbaa !154
  %5 = load i32, i32* %mapsizey, align 4, !tbaa !156
  %mul308 = mul nsw i32 %5, %4
  %cmp3309 = icmp sgt i32 %mul308, 0
  br i1 %cmp3309, label %while.body, label %if.then101

while.body:                                       ; preds = %_ZN9flexarrayI6pointtE3addERKS0_.exit, %land.rhs.backedge
  %6 = phi i32 [ %33, %land.rhs.backedge ], [ %4, %_ZN9flexarrayI6pointtE3addERKS0_.exit ]
  %wayar.sroa.0.1284315 = phi %struct.pointt* [ %wayar.sroa.0.2, %land.rhs.backedge ], [ %wayar.sroa.0.0, %_ZN9flexarrayI6pointtE3addERKS0_.exit ]
  %wayar.sroa.27.1286314 = phi i32 [ %wayar.sroa.27.2, %land.rhs.backedge ], [ %0, %_ZN9flexarrayI6pointtE3addERKS0_.exit ]
  %mx.0287313 = phi i32 [ %mx.1.lcssa, %land.rhs.backedge ], [ 0, %_ZN9flexarrayI6pointtE3addERKS0_.exit ]
  %my.0288312 = phi i32 [ %my.1.lcssa, %land.rhs.backedge ], [ 0, %_ZN9flexarrayI6pointtE3addERKS0_.exit ]
  %index.0290311 = phi i32 [ %inc90, %land.rhs.backedge ], [ 0, %_ZN9flexarrayI6pointtE3addERKS0_.exit ]
  %indvars.iv299310 = phi i64 [ %indvars.iv.next300, %land.rhs.backedge ], [ 1, %_ZN9flexarrayI6pointtE3addERKS0_.exit ]
  %7 = load i32, i32* %waylength, align 4, !tbaa !24
  %sub = add nsw i32 %7, -1
  %idxprom.i199 = sext i32 %sub to i64
  %x4 = getelementptr inbounds %struct.pointt, %struct.pointt* %wayar.sroa.0.1284315, i64 %idxprom.i199, i32 0
  %8 = load i32, i32* %x4, align 4, !tbaa !110
  %sub5 = add nsw i32 %8, -1
  %y8 = getelementptr inbounds %struct.pointt, %struct.pointt* %wayar.sroa.0.1284315, i64 %idxprom.i199, i32 1
  %9 = load i32, i32* %y8, align 4, !tbaa !111
  %sub9 = add nsw i32 %9, -1
  %add = add nsw i32 %8, 1
  %add16 = add nsw i32 %9, 1
  %cmp17.inv = icmp sgt i32 %8, 0
  %spec.select = select i1 %cmp17.inv, i32 %sub5, i32 0
  %cmp18.inv = icmp sgt i32 %9, 0
  %y1.0 = select i1 %cmp18.inv, i32 %sub9, i32 0
  %10 = load i32, i32* %mapmaxx, align 8, !tbaa !170
  %cmp21 = icmp slt i32 %8, %10
  %spec.select187 = select i1 %cmp21, i32 %add, i32 %10
  %11 = load i32, i32* %mapmaxy, align 4, !tbaa !171
  %cmp25 = icmp slt i32 %9, %11
  %y2.0 = select i1 %cmp25, i32 %add16, i32 %11
  %cmp29276 = icmp sgt i32 %y1.0, %y2.0
  br i1 %cmp29276, label %for.end88, label %for.cond30.preheader.lr.ph

for.cond30.preheader.lr.ph:                       ; preds = %while.body
  %cmp31268 = icmp sgt i32 %spec.select, %spec.select187
  %12 = sext i32 %spec.select to i64
  %13 = sext i32 %spec.select187 to i64
  %14 = sext i32 %y1.0 to i64
  %15 = sext i32 %6 to i64
  %16 = sext i32 %y2.0 to i64
  br label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.inc86, %for.cond30.preheader.lr.ph
  %indvars.iv296 = phi i64 [ %indvars.iv.next297, %for.inc86 ], [ %14, %for.cond30.preheader.lr.ph ]
  %mind.0281 = phi i32 [ %mind.1.lcssa, %for.inc86 ], [ 100000000, %for.cond30.preheader.lr.ph ]
  %my.1278 = phi i32 [ %my.2.lcssa, %for.inc86 ], [ %my.0288312, %for.cond30.preheader.lr.ph ]
  %mx.1277 = phi i32 [ %mx.2.lcssa, %for.inc86 ], [ %mx.0287313, %for.cond30.preheader.lr.ph ]
  br i1 %cmp31268, label %for.inc86, label %for.body32.lr.ph

for.body32.lr.ph:                                 ; preds = %for.cond30.preheader
  %17 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8, !tbaa !166
  %18 = mul nsw i64 %indvars.iv296, %15
  %19 = load i16, i16* %fillnum37, align 8, !tbaa !169
  %20 = trunc i64 %indvars.iv296 to i32
  br label %for.body32

for.body32:                                       ; preds = %for.inc, %for.body32.lr.ph
  %indvars.iv293 = phi i64 [ %indvars.iv.next294, %for.inc ], [ %12, %for.body32.lr.ph ]
  %mind.1273 = phi i32 [ %mind.2, %for.inc ], [ %mind.0281, %for.body32.lr.ph ]
  %my.2270 = phi i32 [ %my.3, %for.inc ], [ %my.1278, %for.body32.lr.ph ]
  %mx.2269 = phi i32 [ %mx.3, %for.inc ], [ %mx.1277, %for.body32.lr.ph ]
  %21 = add nsw i64 %indvars.iv293, %18
  %fillnum = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %17, i64 %21, i32 0
  %22 = load i16, i16* %fillnum, align 2, !tbaa !167
  %cmp39 = icmp eq i16 %22, %19
  br i1 %cmp39, label %if.then40, label %for.inc

if.then40:                                        ; preds = %for.body32
  %num = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %17, i64 %21, i32 1
  %23 = load i16, i16* %num, align 2, !tbaa !172
  %conv47 = zext i16 %23 to i32
  %cmp48 = icmp sgt i32 %mind.1273, %conv47
  %24 = trunc i64 %indvars.iv293 to i32
  br i1 %cmp48, label %for.inc, label %if.else

if.else:                                          ; preds = %if.then40
  %cmp66 = icmp eq i32 %mind.1273, %conv47
  br i1 %cmp66, label %if.then67, label %for.inc

if.then67:                                        ; preds = %if.else
  %25 = load i32, i32* %startx, align 4, !tbaa !178
  %sub68 = sub nsw i32 %25, %mx.2269
  %mul.i231 = mul nsw i32 %sub68, %sub68
  %26 = load i32, i32* %starty, align 8, !tbaa !179
  %sub70 = sub nsw i32 %26, %my.2270
  %mul.i236 = mul nsw i32 %sub70, %sub70
  %add72 = add nuw nsw i32 %mul.i236, %mul.i231
  %sub74 = sub nsw i32 %25, %24
  %mul.i235 = mul nsw i32 %sub74, %sub74
  %sub77 = sub nsw i32 %26, %20
  %mul.i234 = mul nsw i32 %sub77, %sub77
  %add79 = add nuw nsw i32 %mul.i234, %mul.i235
  %cmp80 = icmp ult i32 %add79, %add72
  %spec.select188 = select i1 %cmp80, i32 %24, i32 %mx.2269
  %spec.select189 = select i1 %cmp80, i32 %20, i32 %my.2270
  br label %for.inc

for.inc:                                          ; preds = %if.then67, %if.then40, %for.body32, %if.else
  %mx.3 = phi i32 [ %mx.2269, %if.else ], [ %mx.2269, %for.body32 ], [ %24, %if.then40 ], [ %spec.select188, %if.then67 ]
  %my.3 = phi i32 [ %my.2270, %if.else ], [ %my.2270, %for.body32 ], [ %20, %if.then40 ], [ %spec.select189, %if.then67 ]
  %mind.2 = phi i32 [ %mind.1273, %if.else ], [ %mind.1273, %for.body32 ], [ %conv47, %if.then40 ], [ %mind.1273, %if.then67 ]
  %indvars.iv.next294 = add nsw i64 %indvars.iv293, 1
  %cmp31 = icmp slt i64 %indvars.iv293, %13
  br i1 %cmp31, label %for.body32, label %for.inc86

for.inc86:                                        ; preds = %for.inc, %for.cond30.preheader
  %mx.2.lcssa = phi i32 [ %mx.1277, %for.cond30.preheader ], [ %mx.3, %for.inc ]
  %my.2.lcssa = phi i32 [ %my.1278, %for.cond30.preheader ], [ %my.3, %for.inc ]
  %mind.1.lcssa = phi i32 [ %mind.0281, %for.cond30.preheader ], [ %mind.2, %for.inc ]
  %indvars.iv.next297 = add nsw i64 %indvars.iv296, 1
  %cmp29 = icmp slt i64 %indvars.iv296, %16
  br i1 %cmp29, label %for.cond30.preheader, label %for.end88

for.end88:                                        ; preds = %for.inc86, %while.body
  %mx.1.lcssa = phi i32 [ %mx.0287313, %while.body ], [ %mx.2.lcssa, %for.inc86 ]
  %my.1.lcssa = phi i32 [ %my.0288312, %while.body ], [ %my.2.lcssa, %for.inc86 ]
  %inc89 = add nsw i32 %7, 1
  store i32 %inc89, i32* %waylength, align 4, !tbaa !24
  %inc90 = add nuw nsw i32 %index.0290311, 1
  %27 = zext i32 %wayar.sroa.27.1286314 to i64
  %cmp.i212 = icmp eq i64 %indvars.iv299310, %27
  br i1 %cmp.i212, label %if.then.i214, label %_ZN9flexarrayI6pointtE3addERKS0_.exit219

if.then.i214:                                     ; preds = %for.end88
  %shl.i221 = shl i32 %wayar.sroa.27.1286314, 1
  %mul.i222 = shl i32 %wayar.sroa.27.1286314, 4
  %conv.i.i223 = sext i32 %mul.i222 to i64
  %call.i.i224 = tail call noalias i8* @malloc(i64 %conv.i.i223) #20
  %28 = bitcast %struct.pointt* %wayar.sroa.0.1284315 to i8*
  %conv4.i225 = sext i32 %wayar.sroa.27.1286314 to i64
  %mul5.i226 = shl nsw i64 %conv4.i225, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %call.i.i224, i8* align 4 %28, i64 %mul5.i226, i1 false)
  tail call void @free(i8* %28) #20
  %29 = bitcast i8* %call.i.i224 to %struct.pointt*
  br label %_ZN9flexarrayI6pointtE3addERKS0_.exit219

_ZN9flexarrayI6pointtE3addERKS0_.exit219:         ; preds = %for.end88, %if.then.i214
  %wayar.sroa.0.2 = phi %struct.pointt* [ %29, %if.then.i214 ], [ %wayar.sroa.0.1284315, %for.end88 ]
  %wayar.sroa.27.2 = phi i32 [ %shl.i221, %if.then.i214 ], [ %wayar.sroa.27.1286314, %for.end88 ]
  %arrayidx.i217 = getelementptr inbounds %struct.pointt, %struct.pointt* %wayar.sroa.0.2, i64 %indvars.iv299310
  %30 = bitcast %struct.pointt* %arrayidx.i217 to i64*
  %ref.tmp91.sroa.4.0.insert.ext = zext i32 %my.1.lcssa to i64
  %ref.tmp91.sroa.4.0.insert.shift = shl nuw i64 %ref.tmp91.sroa.4.0.insert.ext, 32
  %ref.tmp91.sroa.0.0.insert.ext = zext i32 %mx.1.lcssa to i64
  %ref.tmp91.sroa.0.0.insert.insert = or i64 %ref.tmp91.sroa.4.0.insert.shift, %ref.tmp91.sroa.0.0.insert.ext
  store i64 %ref.tmp91.sroa.0.0.insert.insert, i64* %30, align 4
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299310, 1
  %31 = load i32, i32* %startx, align 4, !tbaa !178
  %cmp93 = icmp eq i32 %mx.1.lcssa, %31
  br i1 %cmp93, label %land.lhs.true, label %land.rhs.backedge

land.lhs.true:                                    ; preds = %_ZN9flexarrayI6pointtE3addERKS0_.exit219
  %32 = load i32, i32* %starty, align 8, !tbaa !179
  %cmp95 = icmp eq i32 %my.1.lcssa, %32
  br i1 %cmp95, label %if.end102, label %land.rhs.backedge

land.rhs.backedge:                                ; preds = %_ZN9flexarrayI6pointtE3addERKS0_.exit219, %land.lhs.true
  %33 = load i32, i32* %mapsizex, align 8, !tbaa !154
  %34 = load i32, i32* %mapsizey, align 4, !tbaa !156
  %mul = mul nsw i32 %34, %33
  %cmp3 = icmp slt i32 %inc90, %mul
  br i1 %cmp3, label %while.body, label %if.then101

if.then101:                                       ; preds = %land.rhs.backedge, %_ZN9flexarrayI6pointtE3addERKS0_.exit
  %wayar.sroa.0.1284.lcssa = phi %struct.pointt* [ %wayar.sroa.0.0, %_ZN9flexarrayI6pointtE3addERKS0_.exit ], [ %wayar.sroa.0.2, %land.rhs.backedge ]
  %35 = bitcast %struct.pointt* %wayar.sroa.0.1284.lcssa to i8*
  tail call void @free(i8* %35) #20
  store %struct.pointt* null, %struct.pointt** %wayarp, align 8, !tbaa !26
  store i32 0, i32* %waylength, align 4, !tbaa !24
  br label %cleanup

if.end102:                                        ; preds = %land.lhs.true
  %conv103 = shl i64 %indvars.iv.next300, 3
  %mul104 = and i64 %conv103, 34359738360
  %call105 = tail call noalias i8* @malloc(i64 %mul104) #20
  %36 = bitcast %struct.pointt** %wayarp to i8**
  store i8* %call105, i8** %36, align 8, !tbaa !26
  %37 = and i64 %indvars.iv299310, 4294967295
  %arrayidx.i206305 = getelementptr inbounds %struct.pointt, %struct.pointt* %wayar.sroa.0.2, i64 %37
  %38 = bitcast %struct.pointt* %arrayidx.i206305 to i64*
  %39 = bitcast i8* %call105 to i64*
  %40 = load i64, i64* %38, align 4
  store i64 %40, i64* %39, align 4
  %cmp109306 = icmp eq i64 %37, 0
  br i1 %cmp109306, label %for.end118, label %for.body110.for.body110_crit_edge

for.body110.for.body110_crit_edge:                ; preds = %if.end102, %for.body110.for.body110_crit_edge
  %indvars.iv307 = phi i64 [ %indvars.iv.next, %for.body110.for.body110_crit_edge ], [ %37, %if.end102 ]
  %indvars.iv.next = add nsw i64 %indvars.iv307, -1
  %.pre = load %struct.pointt*, %struct.pointt** %wayarp, align 8, !tbaa !26
  %arrayidx.i206 = getelementptr inbounds %struct.pointt, %struct.pointt* %wayar.sroa.0.2, i64 %indvars.iv.next
  %sub114 = sub i64 %indvars.iv.next300, %indvars.iv307
  %sext = shl i64 %sub114, 32
  %idxprom115 = ashr exact i64 %sext, 32
  %arrayidx116 = getelementptr inbounds %struct.pointt, %struct.pointt* %.pre, i64 %idxprom115
  %41 = bitcast %struct.pointt* %arrayidx.i206 to i64*
  %42 = bitcast %struct.pointt* %arrayidx116 to i64*
  %43 = load i64, i64* %41, align 4
  store i64 %43, i64* %42, align 4
  %cmp109 = icmp sgt i64 %indvars.iv307, 1
  br i1 %cmp109, label %for.body110.for.body110_crit_edge, label %for.end118

for.end118:                                       ; preds = %for.body110.for.body110_crit_edge, %if.end102
  %44 = bitcast %struct.pointt* %wayar.sroa.0.2 to i8*
  tail call void @free(i8* %44) #20
  br label %cleanup

cleanup:                                          ; preds = %for.end118, %if.then101
  %retval.0 = phi i1 [ false, %if.then101 ], [ true, %for.end118 ]
  ret i1 %retval.0
}

; Function Attrs: optsize
define dso_local i1 @_ZN7way2obj9createwayEiiiiPhRP6pointtRi(%class.way2obj* %this, i32 %startx, i32 %starty, i32 %endx, i32 %endy, i8* nocapture readonly %movetimearp, %struct.pointt** nocapture dereferenceable(8) %wayar, i32* nocapture dereferenceable(4) %waylength) local_unnamed_addr #0 align 2 {
entry:
  %startx2 = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 10
  store i32 %startx, i32* %startx2, align 4, !tbaa !178
  %starty3 = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 11
  store i32 %starty, i32* %starty3, align 8, !tbaa !179
  %endx4 = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 8
  store i32 %endx, i32* %endx4, align 4, !tbaa !173
  %endy5 = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 9
  store i32 %endy, i32* %endy5, align 8, !tbaa !174
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i8, i8* %movetimearp, i64 %indvars.iv
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !29
  %arrayidx7 = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 3, i64 %indvars.iv
  store i8 %0, i8* %arrayidx7, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %cmp8 = icmp eq i32 %startx, %endx
  %cmp9 = icmp eq i32 %starty, %endy
  %or.cond = and i1 %cmp8, %cmp9
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %call = tail call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #20
  %1 = bitcast %struct.pointt** %wayar to i8**
  store i8* %call, i8** %1, align 8, !tbaa !26
  br label %cleanup.sink.split

if.end:                                           ; preds = %for.end
  %call10 = tail call i1 @_ZN7way2obj4fillEii(%class.way2obj* nonnull %this, i32 %startx, i32 %starty) #19
  br i1 %call10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end
  store %struct.pointt* null, %struct.pointt** %wayar, align 8, !tbaa !26
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end
  %call13 = tail call i1 @_ZN7way2obj11createwayarERP6pointtRi(%class.way2obj* nonnull %this, %struct.pointt** nonnull dereferenceable(8) %wayar, i32* nonnull dereferenceable(4) %waylength) #19
  br i1 %call13, label %cleanup, label %if.then14

if.then14:                                        ; preds = %if.end12
  store %struct.pointt* null, %struct.pointt** %wayar, align 8, !tbaa !26
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then, %if.then11, %if.then14
  %retval.0.ph = phi i1 [ false, %if.then11 ], [ false, %if.then14 ], [ true, %if.then ]
  store i32 0, i32* %waylength, align 4, !tbaa !24
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end12
  %retval.0 = phi i1 [ true, %if.end12 ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: optsize
define dso_local i1 @_ZN7way2obj7loadmapEPKc(%class.way2obj* nocapture %this, i8* nocapture readonly %fn) local_unnamed_addr #0 align 2 {
entry:
  %call = tail call i32 (i8*, i32, ...) @open(i8* %fn, i32 0) #19
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %xRunion = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 15
  %xRstruc = bitcast %union.anon* %xRunion to %struct.anon*
  %xR1 = bitcast %union.anon* %xRunion to i8*
  %call2 = tail call i64 @read(i32 %call, i8* nonnull %xR1, i64 1) #19
  %xR2 = getelementptr inbounds %struct.anon, %struct.anon* %xRstruc, i64 0, i32 1
  %call5 = tail call i64 @read(i32 %call, i8* nonnull %xR2, i64 1) #19
  %xR3 = getelementptr inbounds %struct.anon, %struct.anon* %xRstruc, i64 0, i32 2
  %call8 = tail call i64 @read(i32 %call, i8* nonnull %xR3, i64 1) #19
  %xR4 = getelementptr inbounds %struct.anon, %struct.anon* %xRstruc, i64 0, i32 3
  %call11 = tail call i64 @read(i32 %call, i8* nonnull %xR4, i64 1) #19
  %yRunion = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 16
  %yRstruc = bitcast %union.anon* %yRunion to %struct.anon*
  %yR1 = bitcast %union.anon* %yRunion to i8*
  %call12 = tail call i64 @read(i32 %call, i8* nonnull %yR1, i64 1) #19
  %yR2 = getelementptr inbounds %struct.anon, %struct.anon* %yRstruc, i64 0, i32 1
  %call15 = tail call i64 @read(i32 %call, i8* nonnull %yR2, i64 1) #19
  %yR3 = getelementptr inbounds %struct.anon, %struct.anon* %yRstruc, i64 0, i32 2
  %call18 = tail call i64 @read(i32 %call, i8* nonnull %yR3, i64 1) #19
  %yR4 = getelementptr inbounds %struct.anon, %struct.anon* %yRstruc, i64 0, i32 3
  %call21 = tail call i64 @read(i32 %call, i8* nonnull %yR4, i64 1) #19
  %xRmapsizex = getelementptr %union.anon, %union.anon* %xRunion, i64 0, i32 0
  %0 = load i32, i32* %xRmapsizex, align 8, !tbaa !29
  %mapsizex = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 17
  store i32 %0, i32* %mapsizex, align 8, !tbaa !154
  %yRmapsizey = getelementptr %union.anon, %union.anon* %yRunion, i64 0, i32 0
  %1 = load i32, i32* %yRmapsizey, align 4, !tbaa !29
  %mapsizey = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 18
  store i32 %1, i32* %mapsizey, align 4, !tbaa !156
  br label %for.body

for.body:                                         ; preds = %for.body, %if.end
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 4, i64 %indvars.iv
  %maxelemqu.i = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 4, i64 %indvars.iv, i32 2
  store i32 128, i32* %maxelemqu.i, align 4, !tbaa !108
  %elemqu.i = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 4, i64 %indvars.iv, i32 1
  store i32 0, i32* %elemqu.i, align 8, !tbaa !107
  %call.i.i = tail call noalias dereferenceable_or_null(1024) i8* @malloc(i64 1024) #20
  %2 = bitcast %class.flexarray.4* %arrayidx to i8**
  store i8* %call.i.i, i8** %2, align 8, !tbaa !109
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %sub = add nsw i32 %0, -1
  %mapmaxx = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 13
  store i32 %sub, i32* %mapmaxx, align 8, !tbaa !170
  %sub27 = add nsw i32 %1, -1
  %mapmaxy = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 14
  store i32 %sub27, i32* %mapmaxy, align 4, !tbaa !171
  %mul = mul nsw i32 %1, %0
  %conv = sext i32 %mul to i64
  %mul30 = shl nsw i64 %conv, 2
  %call31 = tail call noalias i8* @malloc(i64 %mul30) #20
  %waymap = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 1
  %3 = bitcast %struct.waymapcellt** %waymap to i8**
  store i8* %call31, i8** %3, align 8, !tbaa !166
  tail call void @llvm.memset.p0i8.i64(i8* align 2 %call31, i8 0, i64 %mul30, i1 false)
  %fillnum = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 2
  store i16 0, i16* %fillnum, align 8, !tbaa !169
  %call43 = tail call noalias i8* @malloc(i64 %conv) #20
  %mapp = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 0
  store i8* %call43, i8** %mapp, align 8, !tbaa !157
  %call50 = tail call i64 @read(i32 %call, i8* %call43, i64 %conv) #19
  %call51 = tail call i32 @close(i32 %call) #19
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i1 [ true, %for.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: nounwind optsize
define dso_local i1 @_ZN7way2obj7initmapEii(%class.way2obj* nocapture %this, i32 %mapsizexin, i32 %mapsizeyin) local_unnamed_addr #8 align 2 {
entry:
  %mapsizex = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 17
  store i32 %mapsizexin, i32* %mapsizex, align 8, !tbaa !154
  %mapsizey = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 18
  store i32 %mapsizeyin, i32* %mapsizey, align 4, !tbaa !156
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 4, i64 %indvars.iv
  %maxelemqu.i = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 4, i64 %indvars.iv, i32 2
  store i32 128, i32* %maxelemqu.i, align 4, !tbaa !108
  %elemqu.i = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 4, i64 %indvars.iv, i32 1
  store i32 0, i32* %elemqu.i, align 8, !tbaa !107
  %call.i.i = tail call noalias dereferenceable_or_null(1024) i8* @malloc(i64 1024) #20
  %0 = bitcast %class.flexarray.4* %arrayidx to i8**
  store i8* %call.i.i, i8** %0, align 8, !tbaa !109
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %sub = add nsw i32 %mapsizexin, -1
  %mapmaxx = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 13
  store i32 %sub, i32* %mapmaxx, align 8, !tbaa !170
  %sub4 = add nsw i32 %mapsizeyin, -1
  %mapmaxy = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 14
  store i32 %sub4, i32* %mapmaxy, align 4, !tbaa !171
  %mul = mul nsw i32 %mapsizeyin, %mapsizexin
  %conv = sext i32 %mul to i64
  %mul7 = shl nsw i64 %conv, 2
  %call = tail call noalias i8* @malloc(i64 %mul7) #20
  %waymap = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 1
  %1 = bitcast %struct.waymapcellt** %waymap to i8**
  store i8* %call, i8** %1, align 8, !tbaa !166
  tail call void @llvm.memset.p0i8.i64(i8* align 2 %call, i8 0, i64 %mul7, i1 false)
  %fillnum = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 2
  store i16 0, i16* %fillnum, align 8, !tbaa !169
  %call19 = tail call noalias i8* @malloc(i64 %conv) #20
  %mapp = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 0
  store i8* %call19, i8** %mapp, align 8, !tbaa !157
  ret i1 true
}

; Function Attrs: nofree norecurse nounwind optsize writeonly
define dso_local void @_ZN7way2obj6createEv(%class.way2obj* nocapture %this) local_unnamed_addr #18 align 2 {
entry:
  %0 = bitcast %class.way2obj* %this to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind optsize
define dso_local void @_ZN7way2obj7destroyEv(%class.way2obj* nocapture readonly %this) local_unnamed_addr #8 align 2 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 4, i64 %indvars.iv
  %0 = bitcast %class.flexarray.4* %arrayidx to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !109
  tail call void @free(i8* %1) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %mapp = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 0
  %2 = load i8*, i8** %mapp, align 8, !tbaa !157
  tail call void @free(i8* %2) #20
  %waymap = getelementptr inbounds %class.way2obj, %class.way2obj* %this, i64 0, i32 1
  %3 = bitcast %struct.waymapcellt** %waymap to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !166
  tail call void @free(i8* %4) #20
  ret void
}

; Function Attrs: nofree norecurse nounwind optsize
define dso_local float @_Z8myrandomv() local_unnamed_addr #9 {
entry:
  %0 = load i32, i32* @_ZL5y1rnd, align 4, !tbaa !24
  %mul = mul nsw i32 %0, 171
  %rem = srem i32 %mul, 30269
  store i32 %rem, i32* @_ZL5y1rnd, align 4, !tbaa !24
  %1 = load i32, i32* @_ZL5y2rnd, align 4, !tbaa !24
  %mul1 = mul nsw i32 %1, 172
  %rem2 = srem i32 %mul1, 30307
  store i32 %rem2, i32* @_ZL5y2rnd, align 4, !tbaa !24
  %2 = load i32, i32* @_ZL5y3rnd, align 4, !tbaa !24
  %mul3 = mul nsw i32 %2, 170
  %rem4 = srem i32 %mul3, 30323
  store i32 %rem4, i32* @_ZL5y3rnd, align 4, !tbaa !24
  %conv = sitofp i32 %rem to float
  %mul5 = fmul float %conv, 0x3F01522A20000000
  %conv6 = sitofp i32 %rem2 to float
  %mul7 = fmul float %conv6, 0x3F014C9AE0000000
  %conv8 = sitofp i32 %rem4 to float
  %mul9 = fmul float %conv8, 0x3F014A44A0000000
  %add = fadd float %mul5, %mul7
  %add10 = fadd float %add, %mul9
  %conv13 = fptosi float %add10 to i32
  %conv14 = sitofp i32 %conv13 to float
  %sub = fsub float %add10, %conv14
  ret float %sub
}

; Function Attrs: nofree nounwind optsize
define dso_local float @_Z8myrandomff(float %lo, float %hi) local_unnamed_addr #11 {
entry:
  %sub = fsub float %hi, %lo
  %call = tail call float @_Z8myrandomv() #19
  %0 = tail call float @llvm.fmuladd.f32(float %sub, float %call, float %lo)
  ret float %0
}

; Function Attrs: nofree norecurse nounwind optsize
define dso_local i32 @_Z8myrandomii(i32 %lo, i32 %hi) local_unnamed_addr #9 {
entry:
  %sub = sub i32 1, %lo
  %add = add i32 %sub, %hi
  %conv = sitofp i32 %add to float
  %call = tail call float @_Z8myrandomv() #19
  %mul = fmul float %call, %conv
  %conv1 = fptosi float %mul to i32
  %add2 = add nsw i32 %conv1, %lo
  ret i32 %add2
}

; Function Attrs: nofree norecurse nounwind optsize
define dso_local i32 @_Z7random1i(i32 %max) local_unnamed_addr #9 {
entry:
  %call = tail call float @_Z8myrandomv() #19
  %conv = sitofp i32 %max to float
  %mul = fmul float %call, %conv
  %conv1 = fptosi float %mul to i32
  ret i32 %conv1
}

; Function Attrs: nofree norecurse nounwind optsize writeonly
define dso_local void @_Z10initrandomv() local_unnamed_addr #18 {
entry:
  store i32 1023, i32* @_ZL5y1rnd, align 4, !tbaa !24
  store i32 11, i32* @_ZL5y2rnd, align 4, !tbaa !24
  store i32 3007, i32* @_ZL5y3rnd, align 4, !tbaa !24
  ret void
}

; Function Attrs: optsize
define dso_local void @_ZN6regobj10addtoboundER9flexarrayI6pointtEii(%class.regobj* %this, %class.flexarray.4* dereferenceable(16) %barp, i32 %x, i32 %y) local_unnamed_addr #0 align 2 {
entry:
  %regmngp = getelementptr inbounds %class.regobj, %class.regobj* %this, i64 0, i32 3
  %0 = load %class.regmngobj*, %class.regmngobj** %regmngp, align 8, !tbaa !41
  %landscapemapp.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %0, i64 0, i32 7
  %1 = load i8*, i8** %landscapemapp.i, align 8, !tbaa !28
  %mapsizex.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %0, i64 0, i32 16
  %2 = load i32, i32* %mapsizex.i, align 4, !tbaa !30
  %mul.i = mul nsw i32 %2, %y
  %add.i = add nsw i32 %mul.i, %x
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %1, i64 %idxprom.i
  %3 = load i8, i8* %arrayidx.i, align 1, !tbaa !29
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %0, i64 0, i32 8, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !35, !range !45
  %tobool = icmp eq i8 %4, 0
  br i1 %tobool, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  %x3 = getelementptr inbounds %class.regobj, %class.regobj* %this, i64 0, i32 5, i32 0
  %5 = load i32, i32* %x3, align 4, !tbaa !47
  %sub = sub nsw i32 %x, %5
  %mul.i28 = mul nsw i32 %sub, %sub
  %y6 = getelementptr inbounds %class.regobj, %class.regobj* %this, i64 0, i32 5, i32 1
  %6 = load i32, i32* %y6, align 4, !tbaa !48
  %sub7 = sub nsw i32 %y, %6
  %mul.i30 = mul nsw i32 %sub7, %sub7
  %add = add nuw nsw i32 %mul.i30, %mul.i28
  %conv = sitofp i32 %add to float
  %add.i29 = fadd float %conv, 5.000000e-01
  %conv.i = fptosi float %add.i29 to i32
  %regionradius2 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %0, i64 0, i32 10
  %7 = load i32, i32* %regionradius2, align 4, !tbaa !56
  %cmp = icmp slt i32 %7, %conv.i
  br i1 %cmp, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.then
  %elemqu.i = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %barp, i64 0, i32 1
  %8 = load i32, i32* %elemqu.i, align 8, !tbaa !107
  %maxelemqu.i = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %barp, i64 0, i32 2
  %9 = load i32, i32* %maxelemqu.i, align 4, !tbaa !108
  %cmp.i = icmp eq i32 %8, %9
  br i1 %cmp.i, label %if.then.i, label %_ZN9flexarrayI6pointtE3addERKS0_.exit

if.then.i:                                        ; preds = %if.then11
  tail call void @_ZN9flexarrayI6pointtE8doublingEb(%class.flexarray.4* nonnull %barp, i1 true) #19
  %.pre.i = load i32, i32* %elemqu.i, align 8, !tbaa !107
  br label %_ZN9flexarrayI6pointtE3addERKS0_.exit

_ZN9flexarrayI6pointtE3addERKS0_.exit:            ; preds = %if.then11, %if.then.i
  %10 = phi i32 [ %.pre.i, %if.then.i ], [ %8, %if.then11 ]
  %ep.i = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %barp, i64 0, i32 0
  %11 = load %struct.pointt*, %struct.pointt** %ep.i, align 8, !tbaa !109
  %idxprom.i26 = sext i32 %10 to i64
  %arrayidx.i27 = getelementptr inbounds %struct.pointt, %struct.pointt* %11, i64 %idxprom.i26
  %12 = bitcast %struct.pointt* %arrayidx.i27 to i64*
  %ref.tmp.sroa.4.0.insert.ext = zext i32 %y to i64
  %ref.tmp.sroa.4.0.insert.shift = shl nuw i64 %ref.tmp.sroa.4.0.insert.ext, 32
  %ref.tmp.sroa.0.0.insert.ext = zext i32 %x to i64
  %ref.tmp.sroa.0.0.insert.insert = or i64 %ref.tmp.sroa.4.0.insert.shift, %ref.tmp.sroa.0.0.insert.ext
  store i64 %ref.tmp.sroa.0.0.insert.insert, i64* %12, align 4
  %13 = load i32, i32* %elemqu.i, align 8, !tbaa !107
  %inc.i = add nsw i32 %13, 1
  store i32 %inc.i, i32* %elemqu.i, align 8, !tbaa !107
  %14 = load %class.regmngobj*, %class.regmngobj** %regmngp, align 8, !tbaa !41
  %regionmapp.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %14, i64 0, i32 6
  %15 = load %class.regobj**, %class.regobj*** %regionmapp.i, align 8, !tbaa !27
  %mapsizex.i21 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %14, i64 0, i32 16
  %16 = load i32, i32* %mapsizex.i21, align 4, !tbaa !30
  %mul.i22 = mul nsw i32 %16, %y
  %add.i23 = add nsw i32 %mul.i22, %x
  %idxprom.i24 = sext i32 %add.i23 to i64
  %arrayidx.i25 = getelementptr inbounds %class.regobj*, %class.regobj** %15, i64 %idxprom.i24
  store %class.regobj* %this, %class.regobj** %arrayidx.i25, align 8, !tbaa !26
  %square = getelementptr inbounds %class.regobj, %class.regobj* %this, i64 0, i32 4
  %17 = load i32, i32* %square, align 8, !tbaa !36
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %square, align 8, !tbaa !36
  br label %if.end14

if.end14:                                         ; preds = %if.then, %entry, %_ZN9flexarrayI6pointtE3addERKS0_.exit
  ret void
}

; Function Attrs: optsize
define dso_local void @_ZN6regobj10makebound2ER9flexarrayI6pointtES3_(%class.regobj* %this, %class.flexarray.4* nocapture readonly dereferenceable(16) %b1arp, %class.flexarray.4* dereferenceable(16) %b2arp) local_unnamed_addr #0 align 2 {
entry:
  %elemqu.i = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %b2arp, i64 0, i32 1
  store i32 0, i32* %elemqu.i, align 8, !tbaa !107
  %elemqu = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %b1arp, i64 0, i32 1
  %0 = load i32, i32* %elemqu, align 8, !tbaa !107
  %cmp90 = icmp sgt i32 %0, 0
  br i1 %cmp90, label %for.body.lr.ph, label %for.end43

for.body.lr.ph:                                   ; preds = %entry
  %ep.i = getelementptr inbounds %class.flexarray.4, %class.flexarray.4* %b1arp, i64 0, i32 0
  %regmngp = getelementptr inbounds %class.regobj, %class.regobj* %this, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc41
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc41 ]
  %1 = load %struct.pointt*, %struct.pointt** %ep.i, align 8, !tbaa !109
  %x3 = getelementptr inbounds %struct.pointt, %struct.pointt* %1, i64 %indvars.iv, i32 0
  %2 = load i32, i32* %x3, align 4, !tbaa !110
  %sub = add nsw i32 %2, -1
  %y5 = getelementptr inbounds %struct.pointt, %struct.pointt* %1, i64 %indvars.iv, i32 1
  %3 = load i32, i32* %y5, align 4, !tbaa !111
  %sub6 = add nsw i32 %3, -1
  %add = add nsw i32 %2, 1
  %add11 = add nsw i32 %3, 1
  %cmp12.inv = icmp sgt i32 %2, 0
  %spec.select = select i1 %cmp12.inv, i32 %sub, i32 0
  %cmp13.inv = icmp sgt i32 %3, 0
  %y1.0 = select i1 %cmp13.inv, i32 %sub6, i32 0
  %4 = load %class.regmngobj*, %class.regmngobj** %regmngp, align 8, !tbaa !41
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %4, i64 0, i32 12
  %5 = load i32, i32* %mapmaxx, align 4, !tbaa !32
  %cmp16 = icmp slt i32 %2, %5
  %spec.select72 = select i1 %cmp16, i32 %add, i32 %5
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %4, i64 0, i32 13
  %6 = load i32, i32* %mapmaxy, align 8, !tbaa !33
  %cmp22 = icmp slt i32 %3, %6
  %y2.0 = select i1 %cmp22, i32 %add11, i32 %6
  %cmp2887 = icmp sgt i32 %y1.0, %y2.0
  br i1 %cmp2887, label %for.inc41, label %for.cond30.preheader.lr.ph

for.cond30.preheader.lr.ph:                       ; preds = %for.body
  %cmp3184 = icmp sgt i32 %spec.select, %spec.select72
  br label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.inc38, %for.cond30.preheader.lr.ph
  %y.088 = phi i32 [ %y1.0, %for.cond30.preheader.lr.ph ], [ %inc39, %for.inc38 ]
  br i1 %cmp3184, label %for.inc38, label %for.body32

for.body32:                                       ; preds = %for.cond30.preheader, %for.inc
  %x.085 = phi i32 [ %inc, %for.inc ], [ %spec.select, %for.cond30.preheader ]
  %7 = load %class.regmngobj*, %class.regmngobj** %regmngp, align 8, !tbaa !41
  %regionmapp.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %7, i64 0, i32 6
  %8 = load %class.regobj**, %class.regobj*** %regionmapp.i, align 8, !tbaa !27
  %mapsizex.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %7, i64 0, i32 16
  %9 = load i32, i32* %mapsizex.i, align 4, !tbaa !30
  %mul.i = mul nsw i32 %9, %y.088
  %add.i = add nsw i32 %mul.i, %x.085
  %idxprom.i73 = sext i32 %add.i to i64
  %arrayidx.i74 = getelementptr inbounds %class.regobj*, %class.regobj** %8, i64 %idxprom.i73
  %10 = load %class.regobj*, %class.regobj** %arrayidx.i74, align 8, !tbaa !26
  %cmp35 = icmp eq %class.regobj* %10, null
  br i1 %cmp35, label %if.then36, label %for.inc

if.then36:                                        ; preds = %for.body32
  tail call void @_ZN6regobj10addtoboundER9flexarrayI6pointtEii(%class.regobj* nonnull %this, %class.flexarray.4* nonnull dereferenceable(16) %b2arp, i32 %x.085, i32 %y.088) #19
  br label %for.inc

for.inc:                                          ; preds = %for.body32, %if.then36
  %inc = add nsw i32 %x.085, 1
  %cmp31 = icmp slt i32 %x.085, %spec.select72
  br i1 %cmp31, label %for.body32, label %for.inc38

for.inc38:                                        ; preds = %for.inc, %for.cond30.preheader
  %inc39 = add nsw i32 %y.088, 1
  %cmp28 = icmp slt i32 %y.088, %y2.0
  br i1 %cmp28, label %for.cond30.preheader, label %for.inc41

for.inc41:                                        ; preds = %for.inc38, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %11 = load i32, i32* %elemqu, align 8, !tbaa !107
  %12 = sext i32 %11 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %12
  br i1 %cmp, label %for.body, label %for.end43

for.end43:                                        ; preds = %for.inc41, %entry
  ret void
}

; Function Attrs: optsize
define dso_local void @_ZN6regobj6createEii(%class.regobj* %this, i32 %x0, i32 %y0) local_unnamed_addr #0 align 2 {
entry:
  %x3 = getelementptr inbounds %class.regobj, %class.regobj* %this, i64 0, i32 5, i32 0
  store i32 %x0, i32* %x3, align 4, !tbaa !47
  %y5 = getelementptr inbounds %class.regobj, %class.regobj* %this, i64 0, i32 5, i32 1
  store i32 %y0, i32* %y5, align 4, !tbaa !48
  %square = getelementptr inbounds %class.regobj, %class.regobj* %this, i64 0, i32 4
  store i32 0, i32* %square, align 8, !tbaa !36
  store i32 128, i32* getelementptr inbounds (%class.flexarray.4, %class.flexarray.4* @_ZN6regobj9bound1arpE, i64 0, i32 2), align 4, !tbaa !108
  store i32 0, i32* getelementptr inbounds (%class.flexarray.4, %class.flexarray.4* @_ZN6regobj9bound1arpE, i64 0, i32 1), align 8, !tbaa !107
  %call.i.i = tail call noalias dereferenceable_or_null(1024) i8* @malloc(i64 1024) #20
  store i8* %call.i.i, i8** bitcast (%class.flexarray.4* @_ZN6regobj9bound1arpE to i8**), align 8, !tbaa !109
  store i32 128, i32* getelementptr inbounds (%class.flexarray.4, %class.flexarray.4* @_ZN6regobj9bound2arpE, i64 0, i32 2), align 4, !tbaa !108
  store i32 0, i32* getelementptr inbounds (%class.flexarray.4, %class.flexarray.4* @_ZN6regobj9bound2arpE, i64 0, i32 1), align 8, !tbaa !107
  %call.i.i72 = tail call noalias dereferenceable_or_null(1024) i8* @malloc(i64 1024) #20
  store i8* %call.i.i72, i8** bitcast (%class.flexarray.4* @_ZN6regobj9bound2arpE to i8**), align 8, !tbaa !109
  %nb1ar = getelementptr inbounds %class.regobj, %class.regobj* %this, i64 0, i32 9
  %maxelemqu.i = getelementptr inbounds %class.regobj, %class.regobj* %this, i64 0, i32 9, i32 2
  store i32 4, i32* %maxelemqu.i, align 4, !tbaa !60
  %elemqu.i = getelementptr inbounds %class.regobj, %class.regobj* %this, i64 0, i32 9, i32 1
  store i32 0, i32* %elemqu.i, align 8, !tbaa !59
  %call.i.i73 = tail call noalias dereferenceable_or_null(32) i8* @malloc(i64 32) #20
  %0 = bitcast %class.flexarray* %nb1ar to i8**
  store i8* %call.i.i73, i8** %0, align 8, !tbaa !54
  %sub = add nsw i32 %x0, -1
  %sub6 = add nsw i32 %y0, -1
  %add = add nsw i32 %x0, 1
  %add7 = add nsw i32 %y0, 1
  %cmp.inv = icmp sgt i32 %x0, 0
  %spec.select = select i1 %cmp.inv, i32 %sub, i32 0
  %cmp8.inv = icmp sgt i32 %y0, 0
  %y1.0 = select i1 %cmp8.inv, i32 %sub6, i32 0
  %regmngp = getelementptr inbounds %class.regobj, %class.regobj* %this, i64 0, i32 3
  %1 = load %class.regmngobj*, %class.regmngobj** %regmngp, align 8, !tbaa !41
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %1, i64 0, i32 12
  %2 = load i32, i32* %mapmaxx, align 4, !tbaa !32
  %cmp11 = icmp sgt i32 %2, %x0
  %spec.select71 = select i1 %cmp11, i32 %add, i32 %2
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %1, i64 0, i32 13
  %3 = load i32, i32* %mapmaxy, align 8, !tbaa !33
  %cmp17 = icmp sgt i32 %3, %y0
  %y2.0 = select i1 %cmp17, i32 %add7, i32 %3
  %cmp2278 = icmp sgt i32 %y1.0, %y2.0
  br i1 %cmp2278, label %for.end32.thread, label %for.cond23.preheader.lr.ph

for.end32.thread:                                 ; preds = %entry
  store i32 0, i32* @_ZN6regobj6boundlE, align 4, !tbaa !24
  %flexist82 = getelementptr inbounds %class.regobj, %class.regobj* %this, i64 0, i32 1
  br label %if.else

for.cond23.preheader.lr.ph:                       ; preds = %entry
  %cmp2475 = icmp sgt i32 %spec.select, %spec.select71
  br label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %for.inc30, %for.cond23.preheader.lr.ph
  %y.079 = phi i32 [ %y1.0, %for.cond23.preheader.lr.ph ], [ %inc31, %for.inc30 ]
  br i1 %cmp2475, label %for.inc30, label %for.body25

for.body25:                                       ; preds = %for.cond23.preheader, %for.inc
  %x.076 = phi i32 [ %inc, %for.inc ], [ %spec.select, %for.cond23.preheader ]
  %4 = load %class.regmngobj*, %class.regmngobj** %regmngp, align 8, !tbaa !41
  %regionmapp.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %4, i64 0, i32 6
  %5 = load %class.regobj**, %class.regobj*** %regionmapp.i, align 8, !tbaa !27
  %mapsizex.i = getelementptr inbounds %class.regmngobj, %class.regmngobj* %4, i64 0, i32 16
  %6 = load i32, i32* %mapsizex.i, align 4, !tbaa !30
  %mul.i = mul nsw i32 %6, %y.079
  %add.i = add nsw i32 %mul.i, %x.076
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds %class.regobj*, %class.regobj** %5, i64 %idxprom.i
  %7 = load %class.regobj*, %class.regobj** %arrayidx.i, align 8, !tbaa !26
  %cmp27 = icmp eq %class.regobj* %7, null
  br i1 %cmp27, label %if.then28, label %for.inc

if.then28:                                        ; preds = %for.body25
  tail call void @_ZN6regobj10addtoboundER9flexarrayI6pointtEii(%class.regobj* nonnull %this, %class.flexarray.4* nonnull dereferenceable(16) @_ZN6regobj9bound1arpE, i32 %x.076, i32 %y.079) #19
  br label %for.inc

for.inc:                                          ; preds = %for.body25, %if.then28
  %inc = add nsw i32 %x.076, 1
  %cmp24 = icmp slt i32 %x.076, %spec.select71
  br i1 %cmp24, label %for.body25, label %for.inc30

for.inc30:                                        ; preds = %for.inc, %for.cond23.preheader
  %inc31 = add nsw i32 %y.079, 1
  %cmp22 = icmp slt i32 %y.079, %y2.0
  br i1 %cmp22, label %for.cond23.preheader, label %for.end32

for.end32:                                        ; preds = %for.inc30
  %.pre = load i32, i32* getelementptr inbounds (%class.flexarray.4, %class.flexarray.4* @_ZN6regobj9bound1arpE, i64 0, i32 1), align 8, !tbaa !107
  store i32 %.pre, i32* @_ZN6regobj6boundlE, align 4, !tbaa !24
  %cmp33 = icmp eq i32 %.pre, 0
  %flexist = getelementptr inbounds %class.regobj, %class.regobj* %this, i64 0, i32 1
  br i1 %cmp33, label %if.else, label %if.then34

if.then34:                                        ; preds = %for.end32
  store i8 1, i8* %flexist, align 4, !tbaa !40
  store i8 0, i8* @_ZN6regobj5floddE, align 4, !tbaa !35
  br label %while.body

if.else:                                          ; preds = %for.end32.thread, %for.end32
  %flexist83 = phi i8* [ %flexist82, %for.end32.thread ], [ %flexist, %for.end32 ]
  store i8 0, i8* %flexist83, align 4, !tbaa !40
  br label %cleanup

while.body:                                       ; preds = %if.then34, %if.end41
  %storemerge7074 = phi i8 [ 0, %if.then34 ], [ %frombool, %if.end41 ]
  %cmp38 = icmp eq i8 %storemerge7074, 0
  br i1 %cmp38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %while.body
  tail call void @_ZN6regobj10makebound2ER9flexarrayI6pointtES3_(%class.regobj* %this, %class.flexarray.4* nonnull dereferenceable(16) @_ZN6regobj9bound1arpE, %class.flexarray.4* nonnull dereferenceable(16) @_ZN6regobj9bound2arpE) #19
  br label %if.end41

if.else40:                                        ; preds = %while.body
  tail call void @_ZN6regobj10makebound2ER9flexarrayI6pointtES3_(%class.regobj* %this, %class.flexarray.4* nonnull dereferenceable(16) @_ZN6regobj9bound2arpE, %class.flexarray.4* nonnull dereferenceable(16) @_ZN6regobj9bound1arpE) #19
  br label %if.end41

if.end41:                                         ; preds = %if.else40, %if.then39
  %storemerge.in = phi i32* [ getelementptr inbounds (%class.flexarray.4, %class.flexarray.4* @_ZN6regobj9bound1arpE, i64 0, i32 1), %if.else40 ], [ getelementptr inbounds (%class.flexarray.4, %class.flexarray.4* @_ZN6regobj9bound2arpE, i64 0, i32 1), %if.then39 ]
  %newflodd.0.off0 = phi i1 [ false, %if.else40 ], [ true, %if.then39 ]
  %storemerge = load i32, i32* %storemerge.in, align 8, !tbaa !107
  store i32 %storemerge, i32* @_ZN6regobj6boundlE, align 4, !tbaa !24
  %frombool = zext i1 %newflodd.0.off0 to i8
  store i8 %frombool, i8* @_ZN6regobj5floddE, align 4, !tbaa !35
  %cmp37 = icmp eq i32 %storemerge, 0
  br i1 %cmp37, label %cleanup, label %while.body

cleanup:                                          ; preds = %if.end41, %if.else
  %8 = load i8*, i8** bitcast (%class.flexarray.4* @_ZN6regobj9bound1arpE to i8**), align 8, !tbaa !109
  tail call void @free(i8* %8) #20
  %9 = load i8*, i8** bitcast (%class.flexarray.4* @_ZN6regobj9bound2arpE to i8**), align 8, !tbaa !109
  tail call void @free(i8* %9) #20
  ret void
}

; Function Attrs: nofree nounwind optsize
define dso_local void @_ZN6regobj6createEv(%class.regobj* nocapture %this) local_unnamed_addr #11 align 2 {
entry:
  %nb1ar = getelementptr inbounds %class.regobj, %class.regobj* %this, i64 0, i32 9
  %maxelemqu.i = getelementptr inbounds %class.regobj, %class.regobj* %this, i64 0, i32 9, i32 2
  store i32 4, i32* %maxelemqu.i, align 4, !tbaa !60
  %elemqu.i = getelementptr inbounds %class.regobj, %class.regobj* %this, i64 0, i32 9, i32 1
  store i32 0, i32* %elemqu.i, align 8, !tbaa !59
  %call.i.i = tail call noalias dereferenceable_or_null(32) i8* @malloc(i64 32) #20
  %0 = bitcast %class.flexarray* %nb1ar to i8**
  store i8* %call.i.i, i8** %0, align 8, !tbaa !54
  %flexist = getelementptr inbounds %class.regobj, %class.regobj* %this, i64 0, i32 1
  store i8 1, i8* %flexist, align 4, !tbaa !40
  ret void
}

; Function Attrs: nounwind optsize
define dso_local void @_ZN6regobj7destroyEv(%class.regobj* nocapture readonly %this) local_unnamed_addr #8 align 2 {
entry:
  %nb1ar = getelementptr inbounds %class.regobj, %class.regobj* %this, i64 0, i32 9
  %0 = bitcast %class.flexarray* %nb1ar to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !54
  tail call void @free(i8* %1) #20
  ret void
}

; Function Attrs: norecurse nounwind optsize readonly
define dso_local i1 @_ZN9regwayobj12isaddtoboundEP6regobjS1_(%class.regwayobj* nocapture readonly %this, %class.regobj* nocapture readnone %initialregionp, %class.regobj* nocapture readonly %regionp) unnamed_addr #14 align 2 {
entry:
  %fillnum = getelementptr inbounds %class.regobj, %class.regobj* %regionp, i64 0, i32 7
  %0 = load i32, i32* %fillnum, align 8, !tbaa !57
  %regfillnum = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 4
  %1 = load i32, i32* %regfillnum, align 4, !tbaa !180
  %cmp = icmp ne i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: nofree nounwind optsize
define dso_local void @_ZN9regwayobj6createEP9regmngobj(%class.regwayobj* nocapture %this, %class.regmngobj* %regmngpin) unnamed_addr #11 align 2 {
entry:
  %regmngp = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 5
  store %class.regmngobj* %regmngpin, %class.regmngobj** %regmngp, align 8, !tbaa !182
  %bound1arp = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 1
  %elemqu = getelementptr inbounds %class.regmngobj, %class.regmngobj* %regmngpin, i64 0, i32 18, i32 4
  %0 = load i32, i32* %elemqu, align 8, !tbaa !25
  %add = add nsw i32 %0, 1
  %maxelemqu.i = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 1, i32 2
  store i32 %add, i32* %maxelemqu.i, align 4, !tbaa !60
  %elemqu.i = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 1, i32 1
  store i32 0, i32* %elemqu.i, align 8, !tbaa !59
  %mul.i = shl i32 %add, 3
  %conv.i.i = sext i32 %mul.i to i64
  %call.i.i = tail call noalias i8* @malloc(i64 %conv.i.i) #20
  %1 = bitcast %class.flexarray* %bound1arp to i8**
  store i8* %call.i.i, i8** %1, align 8, !tbaa !54
  %bound2arp = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 2
  %maxelemqu.i7 = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 2, i32 2
  store i32 %add, i32* %maxelemqu.i7, align 4, !tbaa !60
  %elemqu.i8 = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 2, i32 1
  store i32 0, i32* %elemqu.i8, align 8, !tbaa !59
  %call.i.i11 = tail call noalias i8* @malloc(i64 %conv.i.i) #20
  %2 = bitcast %class.flexarray* %bound2arp to i8**
  store i8* %call.i.i11, i8** %2, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind optsize
define dso_local void @_ZN9regwayobj7destroyEv(%class.regwayobj* nocapture readonly %this) unnamed_addr #8 align 2 {
entry:
  %bound1arp = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 1
  %0 = bitcast %class.flexarray* %bound1arp to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !54
  tail call void @free(i8* %1) #20
  %bound2arp = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 2
  %2 = bitcast %class.flexarray* %bound2arp to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !54
  tail call void @free(i8* %3) #20
  ret void
}

; Function Attrs: optsize
define dso_local void @_ZN9regwayobj10addtoboundER9flexarrayIP6regobjES2_(%class.regwayobj* nocapture %this, %class.flexarray* dereferenceable(16) %barp, %class.regobj* %regionp) local_unnamed_addr #0 align 2 {
entry:
  %0 = ptrtoint %class.regobj* %regionp to i64
  %regfillnum = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 4
  %1 = load i32, i32* %regfillnum, align 4, !tbaa !180
  %fillnum = getelementptr inbounds %class.regobj, %class.regobj* %regionp, i64 0, i32 7
  store i32 %1, i32* %fillnum, align 8, !tbaa !57
  %filltact = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 3
  %2 = load i32, i32* %filltact, align 8, !tbaa !183
  %waydist = getelementptr inbounds %class.regobj, %class.regobj* %regionp, i64 0, i32 8
  store i32 %2, i32* %waydist, align 4, !tbaa !184
  %rend = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 7
  %3 = load %class.regobj*, %class.regobj** %rend, align 8, !tbaa !185
  %cmp = icmp eq %class.regobj* %3, %regionp
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %flend = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 6
  store i8 1, i8* %flend, align 8, !tbaa !186
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %elemqu.i = getelementptr inbounds %class.flexarray, %class.flexarray* %barp, i64 0, i32 1
  %4 = load i32, i32* %elemqu.i, align 8, !tbaa !59
  %maxelemqu.i = getelementptr inbounds %class.flexarray, %class.flexarray* %barp, i64 0, i32 2
  %5 = load i32, i32* %maxelemqu.i, align 4, !tbaa !60
  %cmp.i = icmp eq i32 %4, %5
  br i1 %cmp.i, label %if.then.i, label %_ZN9flexarrayIP6regobjE3addERKS1_.exit

if.then.i:                                        ; preds = %if.end
  tail call void @_ZN9flexarrayIP6regobjE8doublingEb(%class.flexarray* nonnull %barp, i1 true) #19
  %.pre.i = load i32, i32* %elemqu.i, align 8, !tbaa !59
  br label %_ZN9flexarrayIP6regobjE3addERKS1_.exit

_ZN9flexarrayIP6regobjE3addERKS1_.exit:           ; preds = %if.end, %if.then.i
  %6 = phi i32 [ %.pre.i, %if.then.i ], [ %4, %if.end ]
  %ep.i = getelementptr inbounds %class.flexarray, %class.flexarray* %barp, i64 0, i32 0
  %7 = load %class.regobj**, %class.regobj*** %ep.i, align 8, !tbaa !54
  %idxprom.i = sext i32 %6 to i64
  %arrayidx.i = getelementptr inbounds %class.regobj*, %class.regobj** %7, i64 %idxprom.i
  %8 = bitcast %class.regobj** %arrayidx.i to i64*
  store i64 %0, i64* %8, align 8, !tbaa !26
  %inc.i = add nsw i32 %6, 1
  store i32 %inc.i, i32* %elemqu.i, align 8, !tbaa !59
  ret void
}

; Function Attrs: optsize
define dso_local void @_ZN9regwayobj10makebound2ER9flexarrayIP6regobjES4_(%class.regwayobj* %this, %class.flexarray* nocapture readonly dereferenceable(16) %b1arp, %class.flexarray* dereferenceable(16) %b2arp) local_unnamed_addr #0 align 2 {
entry:
  %elemqu.i = getelementptr inbounds %class.flexarray, %class.flexarray* %b2arp, i64 0, i32 1
  store i32 0, i32* %elemqu.i, align 8, !tbaa !59
  %elemqu = getelementptr inbounds %class.flexarray, %class.flexarray* %b1arp, i64 0, i32 1
  %0 = load i32, i32* %elemqu, align 8, !tbaa !59
  %cmp30 = icmp sgt i32 %0, 0
  br i1 %cmp30, label %for.body.lr.ph, label %for.end11

for.body.lr.ph:                                   ; preds = %entry
  %ep.i = getelementptr inbounds %class.flexarray, %class.flexarray* %b1arp, i64 0, i32 0
  %1 = bitcast %class.regwayobj* %this to i1 (%class.regwayobj*, %class.regobj*, %class.regobj*)***
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc9
  %2 = phi i32 [ %0, %for.body.lr.ph ], [ %11, %for.inc9 ]
  %indvars.iv32 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next33, %for.inc9 ]
  %3 = load %class.regobj**, %class.regobj*** %ep.i, align 8, !tbaa !54
  %arrayidx.i = getelementptr inbounds %class.regobj*, %class.regobj** %3, i64 %indvars.iv32
  %4 = load %class.regobj*, %class.regobj** %arrayidx.i, align 8, !tbaa !26
  %elemqu3 = getelementptr inbounds %class.regobj, %class.regobj* %4, i64 0, i32 9, i32 1
  %5 = load i32, i32* %elemqu3, align 8, !tbaa !53
  %cmp428 = icmp sgt i32 %5, 0
  br i1 %cmp428, label %for.body5.lr.ph, label %for.inc9

for.body5.lr.ph:                                  ; preds = %for.body
  %ep.i25 = getelementptr inbounds %class.regobj, %class.regobj* %4, i64 0, i32 9, i32 0
  br label %for.body5

for.body5:                                        ; preds = %for.body5.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body5.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %6 = load %class.regobj**, %class.regobj*** %ep.i25, align 8, !tbaa !54
  %arrayidx.i27 = getelementptr inbounds %class.regobj*, %class.regobj** %6, i64 %indvars.iv
  %7 = load %class.regobj*, %class.regobj** %arrayidx.i27, align 8, !tbaa !26
  %vtable = load i1 (%class.regwayobj*, %class.regobj*, %class.regobj*)**, i1 (%class.regwayobj*, %class.regobj*, %class.regobj*)*** %1, align 8, !tbaa !187
  %8 = load i1 (%class.regwayobj*, %class.regobj*, %class.regobj*)*, i1 (%class.regwayobj*, %class.regobj*, %class.regobj*)** %vtable, align 8
  %call8 = tail call i1 %8(%class.regwayobj* %this, %class.regobj* nonnull %4, %class.regobj* %7) #19
  br i1 %call8, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body5
  tail call void @_ZN9regwayobj10addtoboundER9flexarrayIP6regobjES2_(%class.regwayobj* nonnull %this, %class.flexarray* nonnull dereferenceable(16) %b2arp, %class.regobj* %7) #19
  br label %for.inc

for.inc:                                          ; preds = %for.body5, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = load i32, i32* %elemqu3, align 8, !tbaa !53
  %10 = sext i32 %9 to i64
  %cmp4 = icmp slt i64 %indvars.iv.next, %10
  br i1 %cmp4, label %for.body5, label %for.inc9.loopexit

for.inc9.loopexit:                                ; preds = %for.inc
  %.pre = load i32, i32* %elemqu, align 8, !tbaa !59
  br label %for.inc9

for.inc9:                                         ; preds = %for.inc9.loopexit, %for.body
  %11 = phi i32 [ %.pre, %for.inc9.loopexit ], [ %2, %for.body ]
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %12 = sext i32 %11 to i64
  %cmp = icmp slt i64 %indvars.iv.next33, %12
  br i1 %cmp, label %for.body, label %for.end11

for.end11:                                        ; preds = %for.inc9, %entry
  ret void
}

; Function Attrs: optsize
define dso_local i1 @_ZN9regwayobj4fillEP6regobjS1_(%class.regwayobj* %this, %class.regobj* %rstart, %class.regobj* %rend) local_unnamed_addr #0 align 2 {
entry:
  %0 = ptrtoint %class.regobj* %rstart to i64
  %flend = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 6
  store i8 0, i8* %flend, align 8, !tbaa !186
  %rend2 = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 7
  store %class.regobj* %rend, %class.regobj** %rend2, align 8, !tbaa !185
  %rstart3 = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 8
  %1 = bitcast %class.regobj** %rstart3 to i64*
  store i64 %0, i64* %1, align 8, !tbaa !189
  %regmngp = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 5
  %2 = load %class.regmngobj*, %class.regmngobj** %regmngp, align 8, !tbaa !182
  %call = tail call i32 @_ZN9regmngobj13getregfillnumEv(%class.regmngobj* %2) #19
  %regfillnum = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 4
  store i32 %call, i32* %regfillnum, align 4, !tbaa !180
  %fillnum = getelementptr inbounds %class.regobj, %class.regobj* %rstart, i64 0, i32 7
  store i32 %call, i32* %fillnum, align 8, !tbaa !57
  %waydist = getelementptr inbounds %class.regobj, %class.regobj* %rstart, i64 0, i32 8
  store i32 0, i32* %waydist, align 4, !tbaa !184
  %bound1arp = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 1
  %elemqu.i = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 1, i32 1
  store i32 0, i32* %elemqu.i, align 8, !tbaa !59
  %maxelemqu.i = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 1, i32 2
  %3 = load i32, i32* %maxelemqu.i, align 4, !tbaa !60
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.then.i, label %_ZN9flexarrayIP6regobjE3addERKS1_.exit

if.then.i:                                        ; preds = %entry
  tail call void @_ZN9flexarrayIP6regobjE8doublingEb(%class.flexarray* nonnull %bound1arp, i1 true) #19
  %.pre.i = load i32, i32* %elemqu.i, align 8, !tbaa !59
  br label %_ZN9flexarrayIP6regobjE3addERKS1_.exit

_ZN9flexarrayIP6regobjE3addERKS1_.exit:           ; preds = %entry, %if.then.i
  %4 = phi i32 [ %.pre.i, %if.then.i ], [ 0, %entry ]
  %ep.i = getelementptr inbounds %class.flexarray, %class.flexarray* %bound1arp, i64 0, i32 0
  %5 = load %class.regobj**, %class.regobj*** %ep.i, align 8, !tbaa !54
  %idxprom.i = sext i32 %4 to i64
  %arrayidx.i = getelementptr inbounds %class.regobj*, %class.regobj** %5, i64 %idxprom.i
  %6 = bitcast %class.regobj** %arrayidx.i to i64*
  store i64 %0, i64* %6, align 8, !tbaa !26
  %inc.i = add nsw i32 %4, 1
  store i32 %inc.i, i32* %elemqu.i, align 8, !tbaa !59
  %filltact = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 3
  store i32 1, i32* %filltact, align 8, !tbaa !183
  %bound2arp13 = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 2
  %elemqu = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 2, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %_ZN9flexarrayIP6regobjE3addERKS1_.exit, %if.end
  %flodd.0.off023 = phi i1 [ false, %_ZN9flexarrayIP6regobjE3addERKS1_.exit ], [ %newflodd.0.off0, %if.end ]
  %7 = load i8, i8* %flend, align 8, !tbaa !186, !range !45
  %cmp7 = icmp eq i8 %7, 0
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  br i1 %flodd.0.off023, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  tail call void @_ZN9regwayobj10makebound2ER9flexarrayIP6regobjES4_(%class.regwayobj* nonnull %this, %class.flexarray* nonnull dereferenceable(16) %bound1arp, %class.flexarray* nonnull dereferenceable(16) %bound2arp13) #19
  br label %if.end

if.else:                                          ; preds = %while.body
  tail call void @_ZN9regwayobj10makebound2ER9flexarrayIP6regobjES4_(%class.regwayobj* nonnull %this, %class.flexarray* nonnull dereferenceable(16) %bound2arp13, %class.flexarray* nonnull dereferenceable(16) %bound1arp) #19
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %newflodd.0.off0 = phi i1 [ true, %if.then ], [ false, %if.else ]
  %boundl.1.in = phi i32* [ %elemqu, %if.then ], [ %elemqu.i, %if.else ]
  %boundl.1 = load i32, i32* %boundl.1.in, align 8, !tbaa !24
  %8 = load i32, i32* %filltact, align 8, !tbaa !183
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %filltact, align 8, !tbaa !183
  %cmp = icmp eq i32 %boundl.1, 0
  br i1 %cmp, label %if.end.while.end_crit_edge, label %land.rhs

if.end.while.end_crit_edge:                       ; preds = %if.end
  %.pre = load i8, i8* %flend, align 8, !tbaa !186, !range !45
  %phitmp = icmp ne i8 %.pre, 0
  br label %while.end

while.end:                                        ; preds = %land.rhs, %if.end.while.end_crit_edge
  %9 = phi i1 [ %phitmp, %if.end.while.end_crit_edge ], [ true, %land.rhs ]
  ret i1 %9
}

; Function Attrs: nofree nounwind optsize
define dso_local i32 @_ZN9regwayobj6getwayEP6regobjRPS1_(%class.regwayobj* nocapture readonly %this, %class.regobj* %rend, %class.regobj*** nocapture dereferenceable(8) %wayar) local_unnamed_addr #11 align 2 {
entry:
  %filltact = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 3
  %0 = load i32, i32* %filltact, align 8, !tbaa !183
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias i8* @malloc(i64 %mul) #20
  %1 = bitcast i8* %call to %class.regobj**
  %2 = bitcast %class.regobj*** %wayar to i8**
  store i8* %call, i8** %2, align 8, !tbaa !26
  %sub = add i32 %0, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds %class.regobj*, %class.regobj** %1, i64 %idxprom
  store %class.regobj* %rend, %class.regobj** %arrayidx, align 8, !tbaa !26
  %cmp75 = icmp sgt i32 %0, 1
  br i1 %cmp75, label %for.body.lr.ph, label %entry.for.end30_crit_edge

entry.for.end30_crit_edge:                        ; preds = %entry
  %3 = bitcast i8* %call to i64*
  br label %for.end30

for.body.lr.ph:                                   ; preds = %entry
  %regfillnum = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 4
  %x2.i = getelementptr inbounds %class.regobj, %class.regobj* %rend, i64 0, i32 5, i32 0
  %y5.i = getelementptr inbounds %class.regobj, %class.regobj* %rend, i64 0, i32 5, i32 1
  %4 = zext i32 %sub to i64
  %arrayidx484 = getelementptr inbounds %class.regobj*, %class.regobj** %1, i64 %4
  %5 = load %class.regobj*, %class.regobj** %arrayidx484, align 8, !tbaa !26
  %elemqu85 = getelementptr inbounds %class.regobj, %class.regobj* %5, i64 0, i32 9, i32 1
  %6 = load i32, i32* %elemqu85, align 8, !tbaa !53
  %cmp67186 = icmp sgt i32 %6, 0
  br i1 %cmp67186, label %for.body7.lr.ph, label %cleanup

for.body7.lr.ph:                                  ; preds = %for.body.lr.ph, %if.end25.for.body_crit_edge
  %7 = phi i32 [ %21, %if.end25.for.body_crit_edge ], [ %6, %for.body.lr.ph ]
  %8 = phi %class.regobj* [ %20, %if.end25.for.body_crit_edge ], [ %5, %for.body.lr.ph ]
  %i.07688 = phi i32 [ %sub26, %if.end25.for.body_crit_edge ], [ %sub, %for.body.lr.ph ]
  %indvars.iv7887 = phi i64 [ %indvars.iv.next79, %if.end25.for.body_crit_edge ], [ %4, %for.body.lr.ph ]
  %9 = phi %class.regobj** [ %.pre, %if.end25.for.body_crit_edge ], [ %1, %for.body.lr.ph ]
  %ep.i = getelementptr inbounds %class.regobj, %class.regobj* %8, i64 0, i32 9, i32 0
  %10 = load %class.regobj**, %class.regobj*** %ep.i, align 8, !tbaa !54
  %11 = load i32, i32* %regfillnum, align 4, !tbaa !180
  %sub11 = add nsw i32 %i.07688, -1
  %12 = zext i32 %7 to i64
  br label %for.body7

for.body7:                                        ; preds = %for.body7.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %mindist2.073 = phi float [ 1.000000e+10, %for.body7.lr.ph ], [ %mindist2.1, %for.inc ]
  %minregionp.072 = phi %class.regobj* [ null, %for.body7.lr.ph ], [ %minregionp.1, %for.inc ]
  %arrayidx.i = getelementptr inbounds %class.regobj*, %class.regobj** %10, i64 %indvars.iv
  %13 = load %class.regobj*, %class.regobj** %arrayidx.i, align 8, !tbaa !26
  %fillnum = getelementptr inbounds %class.regobj, %class.regobj* %13, i64 0, i32 7
  %14 = load i32, i32* %fillnum, align 8, !tbaa !57
  %cmp10 = icmp eq i32 %14, %11
  br i1 %cmp10, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body7
  %waydist = getelementptr inbounds %class.regobj, %class.regobj* %13, i64 0, i32 8
  %15 = load i32, i32* %waydist, align 4, !tbaa !184
  %cmp12 = icmp eq i32 %15, %sub11
  br i1 %cmp12, label %if.then13, label %for.inc

if.then13:                                        ; preds = %if.then
  %cmp14 = icmp eq %class.regobj* %minregionp.072, null
  %x.i = getelementptr inbounds %class.regobj, %class.regobj* %13, i64 0, i32 5, i32 0
  %16 = load i32, i32* %x.i, align 4, !tbaa !47
  %17 = load i32, i32* %x2.i, align 4, !tbaa !47
  %sub.i = sub nsw i32 %16, %17
  %conv.i = sitofp i32 %sub.i to float
  %mul.i.i = fmul float %conv.i, %conv.i
  %y.i = getelementptr inbounds %class.regobj, %class.regobj* %13, i64 0, i32 5, i32 1
  %18 = load i32, i32* %y.i, align 4, !tbaa !48
  %19 = load i32, i32* %y5.i, align 4, !tbaa !48
  %sub6.i = sub nsw i32 %18, %19
  %conv7.i = sitofp i32 %sub6.i to float
  %mul.i11.i = fmul float %conv7.i, %conv7.i
  %add.i = fadd float %mul.i.i, %mul.i11.i
  br i1 %cmp14, label %for.inc, label %if.else

if.else:                                          ; preds = %if.then13
  %cmp18 = fcmp olt float %add.i, %mindist2.073
  br i1 %cmp18, label %if.then19, label %for.inc

if.then19:                                        ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %for.body7, %if.then19, %if.else, %if.then
  %minregionp.1 = phi %class.regobj* [ %13, %if.then19 ], [ %minregionp.072, %if.else ], [ %minregionp.072, %if.then ], [ %minregionp.072, %for.body7 ], [ %13, %if.then13 ]
  %mindist2.1 = phi float [ %add.i, %if.then19 ], [ %mindist2.073, %if.else ], [ %mindist2.073, %if.then ], [ %mindist2.073, %for.body7 ], [ %add.i, %if.then13 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp6 = icmp ult i64 %indvars.iv.next, %12
  br i1 %cmp6, label %for.body7, label %for.end

for.end:                                          ; preds = %for.inc
  %cmp23 = icmp eq %class.regobj* %minregionp.1, null
  br i1 %cmp23, label %cleanup, label %if.end25

if.end25:                                         ; preds = %for.end
  %sub26 = add nsw i32 %i.07688, -1
  %idxprom27 = sext i32 %sub26 to i64
  %arrayidx28 = getelementptr inbounds %class.regobj*, %class.regobj** %9, i64 %idxprom27
  store %class.regobj* %minregionp.1, %class.regobj** %arrayidx28, align 8, !tbaa !26
  %cmp = icmp sgt i64 %indvars.iv7887, 1
  br i1 %cmp, label %if.end25.for.body_crit_edge, label %for.end30.loopexit

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  %indvars.iv.next79 = add nsw i64 %indvars.iv7887, -1
  %.pre = load %class.regobj**, %class.regobj*** %wayar, align 8, !tbaa !26
  %arrayidx4 = getelementptr inbounds %class.regobj*, %class.regobj** %.pre, i64 %indvars.iv.next79
  %20 = load %class.regobj*, %class.regobj** %arrayidx4, align 8, !tbaa !26
  %elemqu = getelementptr inbounds %class.regobj, %class.regobj* %20, i64 0, i32 9, i32 1
  %21 = load i32, i32* %elemqu, align 8, !tbaa !53
  %cmp671 = icmp sgt i32 %21, 0
  br i1 %cmp671, label %for.body7.lr.ph, label %cleanup

for.end30.loopexit:                               ; preds = %if.end25
  %.phi.trans.insert = bitcast %class.regobj*** %wayar to i64**
  %.pre80 = load i64*, i64** %.phi.trans.insert, align 8, !tbaa !26
  br label %for.end30

for.end30:                                        ; preds = %entry.for.end30_crit_edge, %for.end30.loopexit
  %22 = phi i64* [ %.pre80, %for.end30.loopexit ], [ %3, %entry.for.end30_crit_edge ]
  %rstart = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this, i64 0, i32 8
  %23 = bitcast %class.regobj** %rstart to i64*
  %24 = load i64, i64* %23, align 8, !tbaa !189
  store i64 %24, i64* %22, align 8, !tbaa !26
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end25.for.body_crit_edge, %for.body.lr.ph, %for.end30
  %retval.0 = phi i32 [ %0, %for.end30 ], [ -1, %for.body.lr.ph ], [ -1, %if.end25.for.body_crit_edge ], [ -1, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: optsize
define dso_local i1 @_ZN9regwayobj9createwayEP6regobjS1_RPS1_Ri(%class.regwayobj* %this, %class.regobj* %rstart, %class.regobj* %rfinish, %class.regobj*** nocapture dereferenceable(8) %wayar, i32* nocapture dereferenceable(4) %waylength) local_unnamed_addr #0 align 2 {
entry:
  %cmp = icmp eq %class.regobj* %rstart, %rfinish
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #20
  %0 = bitcast i8* %call to %class.regobj**
  %1 = bitcast %class.regobj*** %wayar to i8**
  store i8* %call, i8** %1, align 8, !tbaa !26
  store %class.regobj* %rstart, %class.regobj** %0, align 8, !tbaa !26
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %call2 = tail call i1 @_ZN9regwayobj4fillEP6regobjS1_(%class.regwayobj* %this, %class.regobj* %rstart, %class.regobj* %rfinish) #19
  br i1 %call2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  store %class.regobj** null, %class.regobj*** %wayar, align 8, !tbaa !26
  br label %return.sink.split

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @_ZN9regwayobj6getwayEP6regobjRPS1_(%class.regwayobj* %this, %class.regobj* %rfinish, %class.regobj*** nonnull dereferenceable(8) %wayar) #19
  store i32 %call5, i32* %waylength, align 4, !tbaa !24
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then7, label %return

if.then7:                                         ; preds = %if.end4
  %2 = bitcast %class.regobj*** %wayar to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !26
  tail call void @free(i8* %3) #20
  store %class.regobj** null, %class.regobj*** %wayar, align 8, !tbaa !26
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then, %if.then3, %if.then7
  %.sink = phi i32 [ 0, %if.then7 ], [ 0, %if.then3 ], [ 1, %if.then ]
  %retval.0.ph = phi i1 [ false, %if.then7 ], [ false, %if.then3 ], [ true, %if.then ]
  store i32 %.sink, i32* %waylength, align 4, !tbaa !24
  br label %return

return:                                           ; preds = %return.sink.split, %if.end4
  %retval.0 = phi i1 [ true, %if.end4 ], [ %retval.0.ph, %return.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: optsize
define dso_local noalias %struct.levelplacet* @_ZN6wayobj14findfreepointsE8rvectortiRi(%class.wayobj* %this, [3 x float] %startp.coerce, i32 %minpointqu, i32* nocapture dereferenceable(4) %pointqu) local_unnamed_addr #0 align 2 {
entry:
  %startx = alloca i32, align 4
  %starty = alloca i32, align 4
  %place.sroa.5 = alloca i64, align 8
  %startp.coerce.fca.0.extract = extractvalue [3 x float] %startp.coerce, 0
  %startp.coerce.fca.2.extract = extractvalue [3 x float] %startp.coerce, 2
  %0 = bitcast i32* %startx to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #21
  %1 = bitcast i32* %starty to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #21
  %place.sroa.5.0..sroa_cast286 = bitcast i64* %place.sroa.5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %place.sroa.5.0..sroa_cast286)
  %xcoef1.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 9
  %2 = load float, float* %xcoef1.i, align 4, !tbaa !70
  %xcoef2.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 10
  %3 = load float, float* %xcoef2.i, align 8, !tbaa !71
  %4 = tail call float @llvm.fmuladd.f32(float %startp.coerce.fca.0.extract, float %2, float %3) #21
  %conv.i = fptosi float %4 to i32
  store i32 %conv.i, i32* %startx, align 4, !tbaa !24
  %ycoef1.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 11
  %5 = load float, float* %ycoef1.i, align 4, !tbaa !73
  %ycoef2.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 12
  %6 = load float, float* %ycoef2.i, align 8, !tbaa !74
  %7 = tail call float @llvm.fmuladd.f32(float %startp.coerce.fca.2.extract, float %5, float %6) #21
  %conv.i264 = fptosi float %7 to i32
  store i32 %conv.i264, i32* %starty, align 4, !tbaa !24
  %call4 = tail call i1 @_ZN6wayobj5ismapEii(%class.wayobj* %this, i32 %conv.i, i32 %conv.i264) #19
  br i1 %call4, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %maplx = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 7
  %8 = load i32, i32* %maplx, align 4, !tbaa !79
  %shr = ashr i32 %8, 1
  store i32 %shr, i32* %startx, align 4, !tbaa !24
  %maply = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 8
  %9 = load i32, i32* %maply, align 8, !tbaa !82
  %shr5 = ashr i32 %9, 1
  store i32 %shr5, i32* %starty, align 4, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = phi i32 [ %shr5, %if.then ], [ %conv.i264, %entry ]
  %11 = phi i32 [ %shr, %if.then ], [ %conv.i, %entry ]
  %maparp.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 17
  %12 = load i16*, i16** %maparp.i, align 8, !tbaa !83
  %shift.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 2
  %13 = load i32, i32* %shift.i, align 8, !tbaa !84
  %shl.i = shl i32 %10, %13
  %or.i = or i32 %shl.i, %11
  %idxprom.i = sext i32 %or.i to i64
  %arrayidx.i = getelementptr inbounds i16, i16* %12, i64 %idxprom.i
  %14 = load i16, i16* %arrayidx.i, align 2, !tbaa !85
  %cmp = icmp eq i16 %14, 0
  br i1 %cmp, label %if.end13, label %if.then7

if.then7:                                         ; preds = %if.end
  %call8 = call i1 @_ZN6wayobj13findfreepointEiiRiS0_(%class.wayobj* nonnull %this, i32 %11, i32 %10, i32* nonnull dereferenceable(4) %startx, i32* nonnull dereferenceable(4) %starty) #19
  br i1 %call8, label %if.then7.if.end13_crit_edge, label %cleanup

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  %.pre = load i32, i32* %startx, align 4, !tbaa !24
  %.pre317 = load i32, i32* %starty, align 4, !tbaa !24
  br label %if.end13

if.end13:                                         ; preds = %if.then7.if.end13_crit_edge, %if.end
  %15 = phi i32 [ %.pre317, %if.then7.if.end13_crit_edge ], [ %10, %if.end ]
  %16 = phi i32 [ %.pre, %if.then7.if.end13_crit_edge ], [ %11, %if.end ]
  %call14 = call i1 @_ZN6wayobj4fillEiiii(%class.wayobj* nonnull %this, i32 %16, i32 %15, i32 0, i32 0) #19
  %fillnum15 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 27
  %17 = load i16, i16* %fillnum15, align 2, !tbaa !103
  %maplx16 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 7
  %18 = load i32, i32* %maplx16, align 4, !tbaa !79
  %mul = mul nsw i32 %18, 10
  %mul.i272 = mul i32 %18, 160
  %conv.i.i273 = sext i32 %mul.i272 to i64
  %call.i.i274 = call noalias i8* @malloc(i64 %conv.i.i273) #20
  %19 = bitcast i8* %call.i.i274 to %struct.levelplacet*
  %maply17 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 8
  %20 = load i32, i32* %maply17, align 8, !tbaa !82
  %mapmaxy = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 4
  %mapmaxx = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 3
  %waymap = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 18
  %indexxmask.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 22
  %.pre318 = load i32, i32* %mapmaxy, align 8, !tbaa !90
  br label %do.body

do.body:                                          ; preds = %for.end114, %if.end13
  %21 = phi i32 [ %.pre318, %if.end13 ], [ %43, %for.end114 ]
  %contour.sroa.0.0 = phi %struct.levelplacet* [ %19, %if.end13 ], [ %contour.sroa.0.1.lcssa, %for.end114 ]
  %contour.sroa.17.0 = phi i32 [ %mul, %if.end13 ], [ %contour.sroa.17.1.lcssa, %for.end114 ]
  %minneighbourcoef.0 = phi i32 [ 7, %if.end13 ], [ %dec, %for.end114 ]
  %cmp18308 = icmp sgt i32 %21, 1
  br i1 %cmp18308, label %for.cond19.preheader, label %for.end114

for.cond19.preheader:                             ; preds = %do.body, %for.inc112
  %y.0312 = phi i32 [ %inc113, %for.inc112 ], [ 1, %do.body ]
  %contour.sroa.17.1311 = phi i32 [ %contour.sroa.17.2.lcssa, %for.inc112 ], [ %contour.sroa.17.0, %do.body ]
  %contour.sroa.10.0310 = phi i32 [ %contour.sroa.10.1.lcssa, %for.inc112 ], [ 0, %do.body ]
  %contour.sroa.0.1309 = phi %struct.levelplacet* [ %contour.sroa.0.2.lcssa, %for.inc112 ], [ %contour.sroa.0.0, %do.body ]
  %22 = load i32, i32* %mapmaxx, align 4, !tbaa !89
  %cmp20301 = icmp sgt i32 %22, 1
  br i1 %cmp20301, label %for.body21, label %for.inc112

for.body21:                                       ; preds = %for.cond19.preheader, %for.inc
  %23 = phi i32 [ %41, %for.inc ], [ %22, %for.cond19.preheader ]
  %x.0305 = phi i32 [ %inc111, %for.inc ], [ 1, %for.cond19.preheader ]
  %contour.sroa.17.2304 = phi i32 [ %contour.sroa.17.4, %for.inc ], [ %contour.sroa.17.1311, %for.cond19.preheader ]
  %contour.sroa.10.1303 = phi i32 [ %contour.sroa.10.2, %for.inc ], [ %contour.sroa.10.0310, %for.cond19.preheader ]
  %contour.sroa.0.2302 = phi %struct.levelplacet* [ %contour.sroa.0.4, %for.inc ], [ %contour.sroa.0.1309, %for.cond19.preheader ]
  %24 = load i32, i32* %shift.i, align 8, !tbaa !84
  %shl = shl i32 %y.0312, %24
  %or = or i32 %shl, %x.0305
  %25 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8, !tbaa !88
  %idxprom = sext i32 %or to i64
  %fillnum22 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %25, i64 %idxprom, i32 0
  %26 = load i16, i16* %fillnum22, align 2, !tbaa !127
  %cmp25 = icmp eq i16 %26, %17
  br i1 %cmp25, label %if.then26, label %for.inc

if.then26:                                        ; preds = %for.body21
  %sub = sub nsw i32 %or, %20
  %sub27 = add nsw i32 %sub, -1
  %27 = load i16*, i16** %maparp.i, align 8, !tbaa !83
  %idxprom28 = sext i32 %sub27 to i64
  %arrayidx29 = getelementptr inbounds i16, i16* %27, i64 %idxprom28
  %28 = load i16, i16* %arrayidx29, align 2, !tbaa !85
  %cmp31 = icmp ne i16 %28, 0
  %spec.select = zext i1 %cmp31 to i32
  %idxprom36 = sext i32 %sub to i64
  %arrayidx37 = getelementptr inbounds i16, i16* %27, i64 %idxprom36
  %29 = load i16, i16* %arrayidx37, align 2, !tbaa !85
  %cmp39 = icmp eq i16 %29, 0
  %inc41 = select i1 %cmp31, i32 2, i32 1
  %neighboursqu.1 = select i1 %cmp39, i32 %spec.select, i32 %inc41
  %add = add nsw i32 %sub, 1
  %idxprom45 = sext i32 %add to i64
  %arrayidx46 = getelementptr inbounds i16, i16* %27, i64 %idxprom45
  %30 = load i16, i16* %arrayidx46, align 2, !tbaa !85
  %cmp48 = icmp ne i16 %30, 0
  %inc50 = zext i1 %cmp48 to i32
  %spec.select261 = add nuw nsw i32 %neighboursqu.1, %inc50
  %sub52 = add nsw i32 %or, -1
  %idxprom54 = sext i32 %sub52 to i64
  %arrayidx55 = getelementptr inbounds i16, i16* %27, i64 %idxprom54
  %31 = load i16, i16* %arrayidx55, align 2, !tbaa !85
  %cmp57 = icmp ne i16 %31, 0
  %inc59 = zext i1 %cmp57 to i32
  %neighboursqu.3 = add nuw nsw i32 %spec.select261, %inc59
  %add61 = add nsw i32 %or, 1
  %idxprom63 = sext i32 %add61 to i64
  %arrayidx64 = getelementptr inbounds i16, i16* %27, i64 %idxprom63
  %32 = load i16, i16* %arrayidx64, align 2, !tbaa !85
  %cmp66 = icmp ne i16 %32, 0
  %inc68 = zext i1 %cmp66 to i32
  %spec.select262 = add nuw nsw i32 %neighboursqu.3, %inc68
  %add70 = add nsw i32 %or, %20
  %sub71 = add nsw i32 %add70, -1
  %idxprom73 = sext i32 %sub71 to i64
  %arrayidx74 = getelementptr inbounds i16, i16* %27, i64 %idxprom73
  %33 = load i16, i16* %arrayidx74, align 2, !tbaa !85
  %cmp76 = icmp ne i16 %33, 0
  %inc78 = zext i1 %cmp76 to i32
  %neighboursqu.5 = add nuw nsw i32 %spec.select262, %inc78
  %idxprom82 = sext i32 %add70 to i64
  %arrayidx83 = getelementptr inbounds i16, i16* %27, i64 %idxprom82
  %34 = load i16, i16* %arrayidx83, align 2, !tbaa !85
  %cmp85 = icmp ne i16 %34, 0
  %inc87 = zext i1 %cmp85 to i32
  %spec.select263 = add nuw nsw i32 %neighboursqu.5, %inc87
  %add90 = add nsw i32 %add70, 1
  %idxprom92 = sext i32 %add90 to i64
  %arrayidx93 = getelementptr inbounds i16, i16* %27, i64 %idxprom92
  %35 = load i16, i16* %arrayidx93, align 2, !tbaa !85
  %cmp95 = icmp ne i16 %35, 0
  %inc97 = zext i1 %cmp95 to i32
  %neighboursqu.7 = add nuw nsw i32 %spec.select263, %inc97
  %cmp99 = icmp slt i32 %neighboursqu.7, %minneighbourcoef.0
  br i1 %cmp99, label %for.inc, label %if.then100

if.then100:                                       ; preds = %if.then26
  %36 = load i32, i32* %indexxmask.i, align 4, !tbaa !102
  %and.i = and i32 %36, %or
  %conv102 = trunc i32 %and.i to i16
  %shr.i = ashr i32 %or, %24
  %conv105 = trunc i32 %shr.i to i16
  %conv107 = sitofp i32 %neighboursqu.7 to float
  %mul108 = fmul float %conv107, 1.250000e-01
  %cmp.i = icmp eq i32 %contour.sroa.10.1303, %contour.sroa.17.2304
  br i1 %cmp.i, label %if.then.i, label %_ZN9flexarrayI11levelplacetE3addERKS0_.exit

if.then.i:                                        ; preds = %if.then100
  %shl.i268 = shl i32 %contour.sroa.17.2304, 1
  %mul.i = shl i32 %contour.sroa.17.2304, 5
  %conv.i.i = sext i32 %mul.i to i64
  %call.i.i = call noalias i8* @malloc(i64 %conv.i.i) #20
  %37 = bitcast %struct.levelplacet* %contour.sroa.0.2302 to i8*
  %conv4.i = sext i32 %contour.sroa.17.2304 to i64
  %mul5.i = shl nsw i64 %conv4.i, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %call.i.i, i8* align 4 %37, i64 %mul5.i, i1 false)
  call void @free(i8* %37) #20
  %38 = bitcast i8* %call.i.i to %struct.levelplacet*
  br label %_ZN9flexarrayI11levelplacetE3addERKS0_.exit

_ZN9flexarrayI11levelplacetE3addERKS0_.exit:      ; preds = %if.then100, %if.then.i
  %contour.sroa.0.3 = phi %struct.levelplacet* [ %38, %if.then.i ], [ %contour.sroa.0.2302, %if.then100 ]
  %contour.sroa.17.3 = phi i32 [ %shl.i268, %if.then.i ], [ %contour.sroa.17.2304, %if.then100 ]
  %idxprom.i265 = sext i32 %contour.sroa.10.1303 to i64
  %place.sroa.0.0..sroa_idx = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %contour.sroa.0.3, i64 %idxprom.i265, i32 0
  store i16 %conv102, i16* %place.sroa.0.0..sroa_idx, align 4, !tbaa.struct !190
  %place.sroa.4.0..sroa_idx279 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %contour.sroa.0.3, i64 %idxprom.i265, i32 1
  store i16 %conv105, i16* %place.sroa.4.0..sroa_idx279, align 2, !tbaa.struct !190
  %place.sroa.5.0..sroa_idx = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %contour.sroa.0.3, i64 %idxprom.i265, i32 2
  %39 = bitcast float* %place.sroa.5.0..sroa_idx to i64*
  %40 = load i64, i64* %place.sroa.5, align 8
  store i64 %40, i64* %39, align 4
  %place.sroa.5283.0..sroa_idx285 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %contour.sroa.0.3, i64 %idxprom.i265, i32 4
  store float %mul108, float* %place.sroa.5283.0..sroa_idx285, align 4, !tbaa.struct !190
  %inc.i = add nsw i32 %contour.sroa.10.1303, 1
  %.pre319 = load i32, i32* %mapmaxx, align 4, !tbaa !89
  br label %for.inc

for.inc:                                          ; preds = %if.then26, %for.body21, %_ZN9flexarrayI11levelplacetE3addERKS0_.exit
  %41 = phi i32 [ %23, %if.then26 ], [ %.pre319, %_ZN9flexarrayI11levelplacetE3addERKS0_.exit ], [ %23, %for.body21 ]
  %contour.sroa.0.4 = phi %struct.levelplacet* [ %contour.sroa.0.2302, %if.then26 ], [ %contour.sroa.0.3, %_ZN9flexarrayI11levelplacetE3addERKS0_.exit ], [ %contour.sroa.0.2302, %for.body21 ]
  %contour.sroa.10.2 = phi i32 [ %contour.sroa.10.1303, %if.then26 ], [ %inc.i, %_ZN9flexarrayI11levelplacetE3addERKS0_.exit ], [ %contour.sroa.10.1303, %for.body21 ]
  %contour.sroa.17.4 = phi i32 [ %contour.sroa.17.2304, %if.then26 ], [ %contour.sroa.17.3, %_ZN9flexarrayI11levelplacetE3addERKS0_.exit ], [ %contour.sroa.17.2304, %for.body21 ]
  %inc111 = add nuw nsw i32 %x.0305, 1
  %cmp20 = icmp slt i32 %inc111, %41
  br i1 %cmp20, label %for.body21, label %for.inc112

for.inc112:                                       ; preds = %for.inc, %for.cond19.preheader
  %contour.sroa.0.2.lcssa = phi %struct.levelplacet* [ %contour.sroa.0.1309, %for.cond19.preheader ], [ %contour.sroa.0.4, %for.inc ]
  %contour.sroa.10.1.lcssa = phi i32 [ %contour.sroa.10.0310, %for.cond19.preheader ], [ %contour.sroa.10.2, %for.inc ]
  %contour.sroa.17.2.lcssa = phi i32 [ %contour.sroa.17.1311, %for.cond19.preheader ], [ %contour.sroa.17.4, %for.inc ]
  %inc113 = add nuw nsw i32 %y.0312, 1
  %42 = load i32, i32* %mapmaxy, align 8, !tbaa !90
  %cmp18 = icmp slt i32 %inc113, %42
  br i1 %cmp18, label %for.cond19.preheader, label %for.end114

for.end114:                                       ; preds = %for.inc112, %do.body
  %43 = phi i32 [ %21, %do.body ], [ %42, %for.inc112 ]
  %contour.sroa.0.1.lcssa = phi %struct.levelplacet* [ %contour.sroa.0.0, %do.body ], [ %contour.sroa.0.2.lcssa, %for.inc112 ]
  %contour.sroa.10.0.lcssa = phi i32 [ 0, %do.body ], [ %contour.sroa.10.1.lcssa, %for.inc112 ]
  %contour.sroa.17.1.lcssa = phi i32 [ %contour.sroa.17.0, %do.body ], [ %contour.sroa.17.2.lcssa, %for.inc112 ]
  %dec = add nsw i32 %minneighbourcoef.0, -1
  %cmp115 = icmp slt i32 %contour.sroa.10.0.lcssa, %minpointqu
  %cmp116 = icmp sgt i32 %minneighbourcoef.0, -1
  %44 = and i1 %cmp116, %cmp115
  br i1 %44, label %do.body, label %do.end

do.end:                                           ; preds = %for.end114
  %cmp117 = icmp slt i32 %minneighbourcoef.0, 0
  br i1 %cmp117, label %cleanup.sink.split, label %if.end119

if.end119:                                        ; preds = %do.end
  store i32 %contour.sroa.10.0.lcssa, i32* %pointqu, align 4, !tbaa !24
  %45 = sext i32 %contour.sroa.10.0.lcssa to i64
  %46 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %45, i64 16)
  %47 = extractvalue { i64, i1 } %46, 1
  %48 = extractvalue { i64, i1 } %46, 0
  %49 = select i1 %47, i64 -1, i64 %48
  %call121 = call i8* @_Znam(i64 %49) #23
  %50 = bitcast i8* %call121 to %struct.levelplacet*
  %cmp123299 = icmp sgt i32 %contour.sroa.10.0.lcssa, 0
  br i1 %cmp123299, label %for.body124.lr.ph, label %cleanup.sink.split

for.body124.lr.ph:                                ; preds = %if.end119
  %minx = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 0
  %51 = load float, float* %minx, align 8, !tbaa !77
  %cellr = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 13
  %52 = load float, float* %cellr, align 4, !tbaa !69
  %add138 = fadd float %51, %52
  %maxx = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 1
  %53 = load float, float* %maxx, align 4, !tbaa !78
  %sub146 = fsub float %53, %51
  %54 = load i32, i32* %maplx16, align 4, !tbaa !79
  %conv149 = sitofp i32 %54 to float
  %miny = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 2
  %55 = load float, float* %miny, align 8, !tbaa !80
  %add155 = fadd float %52, %55
  %maxy = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 14, i32 3
  %56 = load float, float* %maxy, align 4, !tbaa !81
  %sub163 = fsub float %56, %55
  %57 = load i32, i32* %maply17, align 8, !tbaa !82
  %conv166 = sitofp i32 %57 to float
  %wide.trip.count = zext i32 %contour.sroa.10.0.lcssa to i64
  br label %for.body124

for.body124:                                      ; preds = %for.body124, %for.body124.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body124.lr.ph ], [ %indvars.iv.next, %for.body124 ]
  %x127 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %contour.sroa.0.1.lcssa, i64 %indvars.iv, i32 0
  %58 = load i16, i16* %x127, align 4, !tbaa !191
  %x130 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %50, i64 %indvars.iv, i32 0
  store i16 %58, i16* %x130, align 4, !tbaa !191
  %y134 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %contour.sroa.0.1.lcssa, i64 %indvars.iv, i32 1
  %59 = load i16, i16* %y134, align 2, !tbaa !193
  %y137 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %50, i64 %indvars.iv, i32 1
  store i16 %59, i16* %y137, align 2, !tbaa !193
  %conv142 = sitofp i16 %58 to float
  %mul147 = fmul float %sub146, %conv142
  %div = fdiv float %mul147, %conv149
  %add150 = fadd float %add138, %div
  %rx = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %50, i64 %indvars.iv, i32 2
  store float %add150, float* %rx, align 4, !tbaa !194
  %conv159 = sitofp i16 %59 to float
  %mul164 = fmul float %sub163, %conv159
  %div167 = fdiv float %mul164, %conv166
  %add168 = fadd float %add155, %div167
  %ry = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %50, i64 %indvars.iv, i32 3
  store float %add168, float* %ry, align 4, !tbaa !195
  %hiding174 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %contour.sroa.0.1.lcssa, i64 %indvars.iv, i32 4
  %60 = bitcast float* %hiding174 to i32*
  %61 = load i32, i32* %60, align 4, !tbaa !196
  %hiding177 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %50, i64 %indvars.iv, i32 4
  %62 = bitcast float* %hiding177 to i32*
  store i32 %61, i32* %62, align 4, !tbaa !196
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %cleanup.sink.split, label %for.body124

cleanup.sink.split:                               ; preds = %for.body124, %if.end119, %do.end
  %retval.0.ph = phi %struct.levelplacet* [ null, %do.end ], [ %50, %if.end119 ], [ %50, %for.body124 ]
  %63 = bitcast %struct.levelplacet* %contour.sroa.0.1.lcssa to i8*
  call void @free(i8* %63) #20
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then7
  %retval.0 = phi %struct.levelplacet* [ null, %if.then7 ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %place.sroa.5.0..sroa_cast286)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #21
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #21
  ret %struct.levelplacet* %retval.0
}

; Function Attrs: nofree norecurse nounwind optsize
define dso_local i1 @_ZN6wayobj16findverticallineEiiRiS0_(%class.wayobj* nocapture readonly %this, i32 %x, i32 %y, i32* nocapture dereferenceable(4) %y1, i32* nocapture dereferenceable(4) %y2) local_unnamed_addr #9 align 2 {
entry:
  store i32 %y, i32* %y1, align 4, !tbaa !24
  store i32 %y, i32* %y2, align 4, !tbaa !24
  %maply = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 8
  %0 = load i32, i32* %maply, align 8, !tbaa !82
  %cmp35 = icmp sgt i32 %0, %y
  br i1 %cmp35, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %maparp.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 17
  %1 = load i16*, i16** %maparp.i, align 8, !tbaa !83
  %shift.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 2
  %2 = load i32, i32* %shift.i, align 8, !tbaa !84
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %yy.036 = phi i32 [ %y, %for.body.lr.ph ], [ %inc, %for.inc ]
  %shl.i = shl i32 %yy.036, %2
  %or.i = or i32 %shl.i, %x
  %idxprom.i = sext i32 %or.i to i64
  %arrayidx.i = getelementptr inbounds i16, i16* %1, i64 %idxprom.i
  %3 = load i16, i16* %arrayidx.i, align 2, !tbaa !85
  %cmp2 = icmp eq i16 %3, 0
  br i1 %cmp2, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  store i32 %yy.036, i32* %y2, align 4, !tbaa !24
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %yy.036, 1
  %cmp = icmp slt i32 %inc, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry, %if.then
  %cmp433 = icmp sgt i32 %y, 0
  br i1 %cmp433, label %for.body5.lr.ph, label %for.end12

for.body5.lr.ph:                                  ; preds = %for.end
  %maparp.i25 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 17
  %4 = load i16*, i16** %maparp.i25, align 8, !tbaa !83
  %shift.i26 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 2
  %5 = load i32, i32* %shift.i26, align 8, !tbaa !84
  br label %for.body5

for.body5:                                        ; preds = %for.body5.lr.ph, %for.inc11
  %yy.134 = phi i32 [ %y, %for.body5.lr.ph ], [ %dec, %for.inc11 ]
  %shl.i27 = shl i32 %yy.134, %5
  %or.i28 = or i32 %shl.i27, %x
  %idxprom.i29 = sext i32 %or.i28 to i64
  %arrayidx.i30 = getelementptr inbounds i16, i16* %4, i64 %idxprom.i29
  %6 = load i16, i16* %arrayidx.i30, align 2, !tbaa !85
  %cmp8 = icmp eq i16 %6, 0
  br i1 %cmp8, label %for.inc11, label %if.then9

if.then9:                                         ; preds = %for.body5
  store i32 %yy.134, i32* %y1, align 4, !tbaa !24
  br label %for.end12

for.inc11:                                        ; preds = %for.body5
  %dec = add nsw i32 %yy.134, -1
  %cmp4 = icmp sgt i32 %yy.134, 1
  br i1 %cmp4, label %for.body5, label %for.end12

for.end12:                                        ; preds = %for.inc11, %for.end, %if.then9
  ret i1 true
}

; Function Attrs: optsize
define dso_local i1 @_ZN6wayobj11createwayarEiiR8wayinfot(%class.wayobj* %this, i32 %startindex, i32 %endindex, %struct.wayinfot* nocapture dereferenceable(24) %wayinfo) local_unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %deltaar = alloca [8 x %struct.waymapcellt], align 4
  %0 = bitcast [8 x %struct.waymapcellt]* %deltaar to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #21
  %x.i = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 0, i32 0
  store i16 -1, i16* %x.i, align 4, !tbaa !197
  %y.i = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 0, i32 1
  store i16 1, i16* %y.i, align 2, !tbaa !199
  %x.i316 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 1, i32 0
  store i16 0, i16* %x.i316, align 4, !tbaa !197
  %y.i317 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 1, i32 1
  store i16 1, i16* %y.i317, align 2, !tbaa !199
  %x.i314 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 2, i32 0
  store i16 1, i16* %x.i314, align 4, !tbaa !197
  %y.i315 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 2, i32 1
  store i16 1, i16* %y.i315, align 2, !tbaa !199
  %x.i312 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 3, i32 0
  store i16 1, i16* %x.i312, align 4, !tbaa !197
  %y.i313 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 3, i32 1
  store i16 0, i16* %y.i313, align 2, !tbaa !199
  %x.i310 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 4, i32 0
  store i16 1, i16* %x.i310, align 4, !tbaa !197
  %y.i311 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 4, i32 1
  store i16 -1, i16* %y.i311, align 2, !tbaa !199
  %x.i308 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 5, i32 0
  store i16 0, i16* %x.i308, align 4, !tbaa !197
  %y.i309 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 5, i32 1
  %y.i305 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 7, i32 1
  %1 = bitcast i16* %y.i309 to i64*
  store i64 -1, i64* %1, align 2
  store i16 0, i16* %y.i305, align 2, !tbaa !199
  %step = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 26
  %2 = load i16, i16* %step, align 8, !tbaa !129
  %conv = sext i16 %2 to i32
  %3 = sext i16 %2 to i64
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 12)
  %5 = extractvalue { i64, i1 } %4, 1
  %6 = extractvalue { i64, i1 } %4, 0
  %7 = select i1 %5, i64 -1, i64 %6
  %call = tail call i8* @_Znam(i64 %7) #23
  %8 = bitcast i8* %call to %class.rvectort*
  %waymap8 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 18
  %9 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap8, align 8, !tbaa !88
  %indexxmask.i302 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 22
  %10 = load i32, i32* %indexxmask.i302, align 4, !tbaa !102
  %and.i303 = and i32 %10, %startindex
  %shift.i300 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 2
  %11 = load i32, i32* %shift.i300, align 8, !tbaa !84
  %shr.i301 = ashr i32 %startindex, %11
  %cmp324 = icmp sgt i16 %2, 2
  br i1 %cmp324, label %for.body.lr.ph, label %for.end155

for.body.lr.ph:                                   ; preds = %entry
  %fillnum103 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 27
  %12 = add nsw i64 %3, -2
  br label %for.body

for.body:                                         ; preds = %for.inc153.for.body_crit_edge, %for.body.lr.ph
  %13 = phi i32 [ %11, %for.body.lr.ph ], [ %.pre331, %for.inc153.for.body_crit_edge ]
  %14 = phi i32 [ %10, %for.body.lr.ph ], [ %.pre, %for.inc153.for.body_crit_edge ]
  %indvars.iv = phi i64 [ %12, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc153.for.body_crit_edge ]
  %index.0327 = phi i32 [ %endindex, %for.body.lr.ph ], [ %index.1, %for.inc153.for.body_crit_edge ]
  %and.i = and i32 %14, %index.0327
  %shr.i = ashr i32 %index.0327, %13
  %sub13 = sub nsw i32 %and.i303, %and.i
  %sub14 = sub nsw i32 %shr.i301, %shr.i
  %cmp16.inv = icmp sgt i32 %sub13, -1
  %spec.select = select i1 %cmp16.inv, i32 %sub13, i32 -1
  %15 = icmp slt i32 %spec.select, 1
  %dpx.0 = select i1 %15, i32 %spec.select, i32 1
  %cmp22.inv = icmp sgt i32 %sub14, -1
  %spec.select293 = select i1 %cmp22.inv, i32 %sub14, i32 -1
  %16 = icmp slt i32 %spec.select293, 1
  %dpy.0 = select i1 %16, i32 %spec.select293, i32 1
  %mul = mul nsw i32 %dpy.0, 100
  %mul26 = mul nsw i32 %dpx.0, 241
  %cmp27 = icmp slt i32 %mul, %mul26
  %mul32 = mul nsw i32 %dpx.0, 41
  %cmp33 = icmp slt i32 %mul, %mul32
  %mul38 = mul nsw i32 %dpx.0, -40
  %cmp39 = icmp slt i32 %mul, %mul38
  %mul44 = mul nsw i32 %dpx.0, -240
  %cmp45 = icmp slt i32 %mul, %mul44
  %not.cmp27 = xor i1 %cmp27, true
  %not.cmp45 = xor i1 %cmp45, true
  %or.cond = and i1 %not.cmp27, %not.cmp45
  br i1 %or.cond, label %getsector, label %if.end52

if.end52:                                         ; preds = %for.body
  %not.cmp33 = xor i1 %cmp33, true
  %or.cond188 = and i1 %cmp27, %not.cmp33
  br i1 %or.cond188, label %getsector, label %if.end57

if.end57:                                         ; preds = %if.end52
  %not.cmp39 = xor i1 %cmp39, true
  %or.cond189 = and i1 %cmp33, %not.cmp39
  br i1 %or.cond189, label %getsector, label %if.end62

if.end62:                                         ; preds = %if.end57
  %or.cond190 = and i1 %cmp39, %not.cmp45
  br i1 %or.cond190, label %getsector, label %if.end67

if.end67:                                         ; preds = %if.end62
  %17 = and i1 %cmp27, %cmp45
  br i1 %17, label %getsector, label %if.end72

if.end72:                                         ; preds = %if.end67
  %or.cond192 = and i1 %cmp33, %not.cmp27
  br i1 %or.cond192, label %getsector, label %if.end77

if.end77:                                         ; preds = %if.end72
  %or.cond193 = and i1 %cmp39, %not.cmp33
  br i1 %or.cond193, label %getsector, label %if.end82

if.end82:                                         ; preds = %if.end77
  %or.cond194 = and i1 %cmp45, %not.cmp39
  %.295 = select i1 %or.cond194, i32 0, i32 6
  br label %getsector

getsector:                                        ; preds = %if.end82, %if.end77, %if.end72, %if.end67, %if.end62, %if.end57, %if.end52, %for.body
  %deltanum.0 = phi i32 [ 1, %for.body ], [ 2, %if.end52 ], [ 3, %if.end57 ], [ 4, %if.end62 ], [ 5, %if.end67 ], [ 6, %if.end72 ], [ 7, %if.end77 ], [ %.295, %if.end82 ]
  %18 = load i16, i16* %fillnum103, align 2, !tbaa !103
  br label %for.body90

for.body90:                                       ; preds = %if.end147, %getsector
  %delta2num.0323.in.in = phi i32 [ %deltanum.0, %getsector ], [ %delta2num.0323, %if.end147 ]
  %j.0322 = phi i32 [ 0, %getsector ], [ %inc, %if.end147 ]
  %delta1num.0321 = phi i32 [ %deltanum.0, %getsector ], [ %spec.store.select, %if.end147 ]
  %delta2num.0323.in = add nuw nsw i32 %delta2num.0323.in.in, 1
  %delta2num.0323 = and i32 %delta2num.0323.in, 7
  %idxprom = sext i32 %delta1num.0321 to i64
  %x91 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 %idxprom, i32 0
  %19 = load i16, i16* %x91, align 4, !tbaa !197
  %conv92 = sext i16 %19 to i32
  %add93 = add nsw i32 %and.i, %conv92
  %y96 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 %idxprom, i32 1
  %20 = load i16, i16* %y96, align 2, !tbaa !199
  %conv97 = sext i16 %20 to i32
  %add98 = add nsw i32 %shr.i, %conv97
  %shl.i297 = shl i32 %add98, %13
  %or.i298 = or i32 %shl.i297, %add93
  %idxprom100 = sext i32 %or.i298 to i64
  %fillnum = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %9, i64 %idxprom100, i32 0
  %21 = load i16, i16* %fillnum, align 2, !tbaa !127
  %cmp105 = icmp eq i16 %21, %18
  br i1 %cmp105, label %if.then106, label %if.end116

if.then106:                                       ; preds = %for.body90
  %num = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %9, i64 %idxprom100, i32 1
  %22 = load i16, i16* %num, align 2, !tbaa !130
  %23 = zext i16 %22 to i64
  %cmp110 = icmp eq i64 %indvars.iv, %23
  br i1 %cmp110, label %if.then111, label %if.end116

if.then111:                                       ; preds = %if.then106
  %call112 = tail call %class.rvectort @_ZN6wayobj8getpointEi(%class.wayobj* nonnull %this, i32 %or.i298) #19
  br label %for.inc153

if.end116:                                        ; preds = %if.then106, %for.body90
  %idxprom117 = zext i32 %delta2num.0323 to i64
  %x119 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 %idxprom117, i32 0
  %24 = load i16, i16* %x119, align 4, !tbaa !197
  %conv120 = sext i16 %24 to i32
  %add121 = add nsw i32 %and.i, %conv120
  %y124 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 %idxprom117, i32 1
  %25 = load i16, i16* %y124, align 2, !tbaa !199
  %conv125 = sext i16 %25 to i32
  %add126 = add nsw i32 %shr.i, %conv125
  %shl.i = shl i32 %add126, %13
  %or.i = or i32 %shl.i, %add121
  %idxprom128 = sext i32 %or.i to i64
  %fillnum130 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %9, i64 %idxprom128, i32 0
  %26 = load i16, i16* %fillnum130, align 2, !tbaa !127
  %cmp134 = icmp eq i16 %26, %18
  br i1 %cmp134, label %if.then135, label %if.end147

if.then135:                                       ; preds = %if.end116
  %num138 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %9, i64 %idxprom128, i32 1
  %27 = load i16, i16* %num138, align 2, !tbaa !130
  %28 = zext i16 %27 to i64
  %cmp140 = icmp eq i64 %indvars.iv, %28
  br i1 %cmp140, label %if.then141, label %if.end147

if.then141:                                       ; preds = %if.then135
  %call143 = tail call %class.rvectort @_ZN6wayobj8getpointEi(%class.wayobj* %this, i32 %or.i) #19
  br label %for.inc153

if.end147:                                        ; preds = %if.then135, %if.end116
  %dec = add nsw i32 %delta1num.0321, -1
  %cmp148 = icmp slt i32 %delta1num.0321, 1
  %spec.store.select = select i1 %cmp148, i32 7, i32 %dec
  %inc = add nuw nsw i32 %j.0322, 1
  %exitcond = icmp eq i32 %inc, 4
  br i1 %exitcond, label %delete.notnull, label %for.body90

delete.notnull:                                   ; preds = %if.end147
  tail call void @_ZdaPv(i8* nonnull %call) #22
  br label %cleanup

for.inc153:                                       ; preds = %if.then111, %if.then141
  %call112.sink341 = phi %class.rvectort [ %call112, %if.then111 ], [ %call143, %if.then141 ]
  %index.1 = phi i32 [ %or.i298, %if.then111 ], [ %or.i, %if.then141 ]
  %29 = extractvalue %class.rvectort %call112.sink341, 0
  %30 = extractvalue %class.rvectort %call112.sink341, 1
  %31 = extractvalue %class.rvectort %call112.sink341, 2
  %ref.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %class.rvectort, %class.rvectort* %8, i64 %indvars.iv, i32 0
  store float %29, float* %ref.tmp.sroa.0.0..sroa_idx, align 4
  %ref.tmp.sroa.4.0..sroa_idx201 = getelementptr inbounds %class.rvectort, %class.rvectort* %8, i64 %indvars.iv, i32 1
  store float %30, float* %ref.tmp.sroa.4.0..sroa_idx201, align 4
  %ref.tmp.sroa.5.0..sroa_idx203 = getelementptr inbounds %class.rvectort, %class.rvectort* %8, i64 %indvars.iv, i32 2
  store float %31, float* %ref.tmp.sroa.5.0..sroa_idx203, align 4
  %cmp = icmp sgt i64 %indvars.iv, 1
  br i1 %cmp, label %for.inc153.for.body_crit_edge, label %for.end155

for.inc153.for.body_crit_edge:                    ; preds = %for.inc153
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.pre = load i32, i32* %indexxmask.i302, align 4, !tbaa !102
  %.pre331 = load i32, i32* %shift.i300, align 8, !tbaa !84
  br label %for.body

for.end155:                                       ; preds = %for.inc153, %entry
  %createwayinfo = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 15
  %32 = bitcast %struct.createwayinfot* %createwayinfo to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %call, i8* nonnull align 8 dereferenceable(12) %32, i64 12, i1 false), !tbaa.struct !200
  %finishp = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 15, i32 1
  %sub158 = add nsw i32 %conv, -1
  %idxprom159 = sext i32 %sub158 to i64
  %arrayidx160 = getelementptr inbounds %class.rvectort, %class.rvectort* %8, i64 %idxprom159
  %33 = bitcast %class.rvectort* %arrayidx160 to i8*
  %34 = bitcast %class.rvectort* %finishp to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %33, i8* nonnull align 4 dereferenceable(12) %34, i64 12, i1 false), !tbaa.struct !200
  %flexist = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 0
  store i8 1, i8* %flexist, align 8, !tbaa !201
  %wayarp161 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 1
  %35 = bitcast %class.rvectort** %wayarp161 to i8**
  store i8* %call, i8** %35, align 8, !tbaa !203
  %wayarsize = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 2
  store i32 %conv, i32* %wayarsize, align 8, !tbaa !204
  %flcorrect = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 3
  store i8 0, i8* %flcorrect, align 4, !tbaa !205
  br label %cleanup

cleanup:                                          ; preds = %for.end155, %delete.notnull
  %retval.0 = phi i1 [ false, %delete.notnull ], [ true, %for.end155 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #21
  ret i1 %retval.0
}

; Function Attrs: nounwind optsize
define dso_local i1 @_ZN6wayobj11createwayarEiiRP8point16tRi(%class.wayobj* nocapture readonly %this, i32 %startindex, i32 %endindex, %struct.waymapcellt** nocapture dereferenceable(8) %wayar, i32* nocapture dereferenceable(4) %waylength) local_unnamed_addr #8 align 2 {
entry:
  %deltaar = alloca [8 x %struct.waymapcellt], align 4
  %0 = bitcast [8 x %struct.waymapcellt]* %deltaar to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #21
  %x.i = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 0, i32 0
  store i16 -1, i16* %x.i, align 4, !tbaa !197
  %y.i = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 0, i32 1
  store i16 1, i16* %y.i, align 2, !tbaa !199
  %x.i341 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 1, i32 0
  store i16 0, i16* %x.i341, align 4, !tbaa !197
  %y.i342 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 1, i32 1
  store i16 1, i16* %y.i342, align 2, !tbaa !199
  %x.i339 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 2, i32 0
  store i16 1, i16* %x.i339, align 4, !tbaa !197
  %y.i340 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 2, i32 1
  store i16 1, i16* %y.i340, align 2, !tbaa !199
  %x.i337 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 3, i32 0
  store i16 1, i16* %x.i337, align 4, !tbaa !197
  %y.i338 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 3, i32 1
  store i16 0, i16* %y.i338, align 2, !tbaa !199
  %x.i335 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 4, i32 0
  store i16 1, i16* %x.i335, align 4, !tbaa !197
  %y.i336 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 4, i32 1
  store i16 -1, i16* %y.i336, align 2, !tbaa !199
  %x.i333 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 5, i32 0
  store i16 0, i16* %x.i333, align 4, !tbaa !197
  %y.i334 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 5, i32 1
  %y.i330 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 7, i32 1
  %1 = bitcast i16* %y.i334 to i64*
  store i64 -1, i64* %1, align 2
  store i16 0, i16* %y.i330, align 2, !tbaa !199
  %step = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 26
  %2 = load i16, i16* %step, align 8, !tbaa !129
  %conv = sext i16 %2 to i32
  %conv8 = sext i16 %2 to i64
  %mul = shl nsw i64 %conv8, 2
  %call = tail call noalias i8* @malloc(i64 %mul) #20
  %3 = bitcast %struct.waymapcellt** %wayar to i8**
  store i8* %call, i8** %3, align 8, !tbaa !26
  %waymap9 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 18
  %4 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap9, align 8, !tbaa !88
  %indexxmask.i327 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 22
  %5 = load i32, i32* %indexxmask.i327, align 4, !tbaa !102
  %and.i328 = and i32 %5, %startindex
  %shift.i325 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 2
  %6 = load i32, i32* %shift.i325, align 8, !tbaa !84
  %shr.i326 = ashr i32 %startindex, %6
  %cmp355 = icmp sgt i16 %2, 2
  %7 = bitcast i8* %call to %struct.waymapcellt*
  %8 = bitcast i8* %call to i32*
  br i1 %cmp355, label %for.body.lr.ph, label %for.end166

for.body.lr.ph:                                   ; preds = %entry
  %fillnum105 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 27
  %9 = load i16, i16* %fillnum105, align 2, !tbaa !103
  %10 = add nsw i64 %conv8, -2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc164
  %indvars.iv = phi i64 [ %10, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc164 ]
  %index.0356 = phi i32 [ %endindex, %for.body.lr.ph ], [ %index.1, %for.inc164 ]
  %and.i324 = and i32 %index.0356, %5
  %shr.i322 = ashr i32 %index.0356, %6
  %sub14 = sub nsw i32 %and.i328, %and.i324
  %sub15 = sub nsw i32 %shr.i326, %shr.i322
  %cmp17.inv = icmp sgt i32 %sub14, -1
  %spec.select = select i1 %cmp17.inv, i32 %sub14, i32 -1
  %11 = icmp slt i32 %spec.select, 1
  %dpx.0 = select i1 %11, i32 %spec.select, i32 1
  %cmp23.inv = icmp sgt i32 %sub15, -1
  %spec.select306 = select i1 %cmp23.inv, i32 %sub15, i32 -1
  %12 = icmp slt i32 %spec.select306, 1
  %dpy.0 = select i1 %12, i32 %spec.select306, i32 1
  %mul27 = mul nsw i32 %dpy.0, 100
  %mul28 = mul nsw i32 %dpx.0, 241
  %cmp29 = icmp slt i32 %mul27, %mul28
  %mul34 = mul nsw i32 %dpx.0, 41
  %cmp35 = icmp slt i32 %mul27, %mul34
  %mul40 = mul nsw i32 %dpx.0, -40
  %cmp41 = icmp slt i32 %mul27, %mul40
  %mul46 = mul nsw i32 %dpx.0, -240
  %cmp47 = icmp slt i32 %mul27, %mul46
  %not.cmp29 = xor i1 %cmp29, true
  %not.cmp47 = xor i1 %cmp47, true
  %or.cond = and i1 %not.cmp29, %not.cmp47
  br i1 %or.cond, label %for.body92.preheader, label %if.end54

if.end54:                                         ; preds = %for.body
  %not.cmp35 = xor i1 %cmp35, true
  %or.cond204 = and i1 %cmp29, %not.cmp35
  br i1 %or.cond204, label %for.body92.preheader, label %if.end59

if.end59:                                         ; preds = %if.end54
  %not.cmp41 = xor i1 %cmp41, true
  %or.cond205 = and i1 %cmp35, %not.cmp41
  br i1 %or.cond205, label %for.body92.preheader, label %if.end64

if.end64:                                         ; preds = %if.end59
  %or.cond206 = and i1 %cmp41, %not.cmp47
  br i1 %or.cond206, label %for.body92.preheader, label %if.end69

if.end69:                                         ; preds = %if.end64
  %13 = and i1 %cmp29, %cmp47
  br i1 %13, label %for.body92.preheader, label %if.end74

if.end74:                                         ; preds = %if.end69
  %or.cond208 = and i1 %cmp35, %not.cmp29
  br i1 %or.cond208, label %for.body92.preheader, label %if.end79

if.end79:                                         ; preds = %if.end74
  %or.cond209 = and i1 %cmp41, %not.cmp35
  br i1 %or.cond209, label %for.body92.preheader, label %if.end84

if.end84:                                         ; preds = %if.end79
  %or.cond210 = and i1 %cmp47, %not.cmp41
  %.308 = select i1 %or.cond210, i32 0, i32 6
  br label %for.body92.preheader

for.body92.preheader:                             ; preds = %if.end84, %if.end79, %if.end74, %if.end69, %if.end64, %if.end59, %if.end54, %for.body
  %delta2num.0354.in.in.ph = phi i32 [ %.308, %if.end84 ], [ 7, %if.end79 ], [ 6, %if.end74 ], [ 5, %if.end69 ], [ 4, %if.end64 ], [ 3, %if.end59 ], [ 2, %if.end54 ], [ 1, %for.body ]
  br label %for.body92

for.body92:                                       ; preds = %for.body92.preheader, %if.end158
  %delta2num.0354.in.in = phi i32 [ %delta2num.0354, %if.end158 ], [ %delta2num.0354.in.in.ph, %for.body92.preheader ]
  %j.0353 = phi i32 [ %inc, %if.end158 ], [ 0, %for.body92.preheader ]
  %delta1num.0352 = phi i32 [ %spec.store.select, %if.end158 ], [ %delta2num.0354.in.in.ph, %for.body92.preheader ]
  %delta2num.0354.in = add nuw nsw i32 %delta2num.0354.in.in, 1
  %delta2num.0354 = and i32 %delta2num.0354.in, 7
  %idxprom = sext i32 %delta1num.0352 to i64
  %x93 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 %idxprom, i32 0
  %14 = load i16, i16* %x93, align 4, !tbaa !197
  %conv94 = sext i16 %14 to i32
  %add95 = add nsw i32 %and.i324, %conv94
  %y98 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 %idxprom, i32 1
  %15 = load i16, i16* %y98, align 2, !tbaa !199
  %conv99 = sext i16 %15 to i32
  %add100 = add nsw i32 %shr.i322, %conv99
  %shl.i319 = shl i32 %add100, %6
  %or.i320 = or i32 %shl.i319, %add95
  %idxprom102 = sext i32 %or.i320 to i64
  %fillnum = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %4, i64 %idxprom102, i32 0
  %16 = load i16, i16* %fillnum, align 2, !tbaa !127
  %cmp107 = icmp eq i16 %16, %9
  br i1 %cmp107, label %if.then108, label %if.end123

if.then108:                                       ; preds = %for.body92
  %num = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %4, i64 %idxprom102, i32 1
  %17 = load i16, i16* %num, align 2, !tbaa !130
  %18 = zext i16 %17 to i64
  %cmp112 = icmp eq i64 %indvars.iv, %18
  br i1 %cmp112, label %for.inc164, label %if.end123

if.end123:                                        ; preds = %if.then108, %for.body92
  %idxprom124 = zext i32 %delta2num.0354 to i64
  %x126 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 %idxprom124, i32 0
  %19 = load i16, i16* %x126, align 4, !tbaa !197
  %conv127 = sext i16 %19 to i32
  %add128 = add nsw i32 %and.i324, %conv127
  %y131 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 %idxprom124, i32 1
  %20 = load i16, i16* %y131, align 2, !tbaa !199
  %conv132 = sext i16 %20 to i32
  %add133 = add nsw i32 %shr.i322, %conv132
  %shl.i = shl i32 %add133, %6
  %or.i = or i32 %shl.i, %add128
  %idxprom135 = sext i32 %or.i to i64
  %fillnum137 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %4, i64 %idxprom135, i32 0
  %21 = load i16, i16* %fillnum137, align 2, !tbaa !127
  %cmp141 = icmp eq i16 %21, %9
  br i1 %cmp141, label %if.then142, label %if.end158

if.then142:                                       ; preds = %if.end123
  %num145 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %4, i64 %idxprom135, i32 1
  %22 = load i16, i16* %num145, align 2, !tbaa !130
  %23 = zext i16 %22 to i64
  %cmp147 = icmp eq i64 %indvars.iv, %23
  br i1 %cmp147, label %for.inc164, label %if.end158

if.end158:                                        ; preds = %if.then142, %if.end123
  %dec = add nsw i32 %delta1num.0352, -1
  %cmp159 = icmp slt i32 %delta1num.0352, 1
  %spec.store.select = select i1 %cmp159, i32 7, i32 %dec
  %inc = add nuw nsw i32 %j.0353, 1
  %exitcond = icmp eq i32 %inc, 4
  br i1 %exitcond, label %for.end, label %for.body92

for.end:                                          ; preds = %if.end158
  tail call void @free(i8* %call) #20
  br label %cleanup

for.inc164:                                       ; preds = %if.then142, %if.then108
  %add95.sink = phi i32 [ %add95, %if.then108 ], [ %add128, %if.then142 ]
  %add100.sink = phi i32 [ %add100, %if.then108 ], [ %add133, %if.then142 ]
  %index.1 = phi i32 [ %or.i320, %if.then108 ], [ %or.i, %if.then142 ]
  %conv114 = trunc i32 %add95.sink to i16
  %x117 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %7, i64 %indvars.iv, i32 0
  store i16 %conv114, i16* %x117, align 2, !tbaa !197
  %conv118 = trunc i32 %add100.sink to i16
  %y121 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %7, i64 %indvars.iv, i32 1
  store i16 %conv118, i16* %y121, align 2, !tbaa !199
  %indvars.iv.next = add i64 %indvars.iv, -1
  %cmp = icmp sgt i64 %indvars.iv, 1
  br i1 %cmp, label %for.body, label %for.end166

for.end166:                                       ; preds = %for.inc164, %entry
  %ref.tmp.sroa.4.0.insert.ext = shl i32 %shr.i326, 16
  %ref.tmp.sroa.0.0.insert.ext = and i32 %and.i328, 65535
  %ref.tmp.sroa.0.0.insert.insert = or i32 %ref.tmp.sroa.4.0.insert.ext, %ref.tmp.sroa.0.0.insert.ext
  store i32 %ref.tmp.sroa.0.0.insert.insert, i32* %8, align 2
  %shr.i = ashr i32 %endindex, %6
  %sub177 = add nsw i32 %conv, -1
  %idxprom178 = sext i32 %sub177 to i64
  %arrayidx179 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %7, i64 %idxprom178
  %24 = bitcast %struct.waymapcellt* %arrayidx179 to i32*
  %ref.tmp172.sroa.4.0.insert.ext = shl i32 %shr.i, 16
  %and.i = and i32 %endindex, 65535
  %ref.tmp172.sroa.0.0.insert.ext = and i32 %and.i, %5
  %ref.tmp172.sroa.0.0.insert.insert = or i32 %ref.tmp172.sroa.4.0.insert.ext, %ref.tmp172.sroa.0.0.insert.ext
  store i32 %ref.tmp172.sroa.0.0.insert.insert, i32* %24, align 2
  store i32 %conv, i32* %waylength, align 4, !tbaa !24
  br label %cleanup

cleanup:                                          ; preds = %for.end166, %for.end
  %retval.0 = phi i1 [ false, %for.end ], [ true, %for.end166 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #21
  ret i1 %retval.0
}

; Function Attrs: optsize
define dso_local i1 @_ZN6wayobj12createwayar2EiiR8wayinfot(%class.wayobj* %this, i32 %startindex, i32 %endindex, %struct.wayinfot* nocapture dereferenceable(24) %wayinfo) local_unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %step = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 26
  %0 = load i16, i16* %step, align 8, !tbaa !129
  %conv = sext i16 %0 to i32
  %1 = sext i16 %0 to i64
  %2 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 12)
  %3 = extractvalue { i64, i1 } %2, 1
  %4 = extractvalue { i64, i1 } %2, 0
  %5 = select i1 %3, i64 -1, i64 %4
  %call = tail call i8* @_Znam(i64 %5) #23
  %6 = bitcast i8* %call to %class.rvectort*
  %maply = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 8
  %7 = load i32, i32* %maply, align 8, !tbaa !82
  %waymap2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 18
  %8 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap2, align 8, !tbaa !88
  %indexxmask.i496 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 22
  %9 = load i32, i32* %indexxmask.i496, align 4, !tbaa !102
  %and.i497 = and i32 %9, %startindex
  %shift.i494 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 2
  %10 = load i32, i32* %shift.i494, align 8, !tbaa !84
  %shr.i495 = ashr i32 %startindex, %10
  %cmp498 = icmp sgt i16 %0, 2
  br i1 %cmp498, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %fillnum85 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 27
  %11 = add nsw i64 %1, -2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %12 = phi i32 [ %10, %for.body.lr.ph ], [ %.pre510, %for.inc.for.body_crit_edge ]
  %13 = phi i32 [ %9, %for.body.lr.ph ], [ %.pre, %for.inc.for.body_crit_edge ]
  %indvars.iv = phi i64 [ %11, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %index.0509 = phi i32 [ %endindex, %for.body.lr.ph ], [ %index.1, %for.inc.for.body_crit_edge ]
  %and.i = and i32 %13, %index.0509
  %shr.i = ashr i32 %index.0509, %12
  %sub7 = sub nsw i32 %and.i497, %and.i
  %sub8 = sub nsw i32 %shr.i495, %shr.i
  %cmp10.inv = icmp sgt i32 %sub7, -1
  %spec.select = select i1 %cmp10.inv, i32 %sub7, i32 -1
  %14 = icmp slt i32 %spec.select, 1
  %dpx.0 = select i1 %14, i32 %spec.select, i32 1
  %cmp16.inv = icmp sgt i32 %sub8, -1
  %spec.select490 = select i1 %cmp16.inv, i32 %sub8, i32 -1
  %15 = icmp slt i32 %spec.select490, 1
  %dpy.0 = select i1 %15, i32 %spec.select490, i32 1
  %mul = mul nsw i32 %dpy.0, 100
  %mul20 = mul nsw i32 %dpx.0, 241
  %cmp21 = icmp slt i32 %mul, %mul20
  %mul26 = mul nsw i32 %dpx.0, 41
  %cmp27 = icmp slt i32 %mul, %mul26
  %mul32 = mul nsw i32 %dpx.0, -40
  %cmp33 = icmp slt i32 %mul, %mul32
  %mul38 = mul nsw i32 %dpx.0, -240
  %cmp39 = icmp slt i32 %mul, %mul38
  %not.cmp21 = xor i1 %cmp21, true
  %not.cmp39 = xor i1 %cmp39, true
  %or.cond = and i1 %not.cmp21, %not.cmp39
  br i1 %or.cond, label %getsector, label %if.end46

if.end46:                                         ; preds = %for.body
  %not.cmp27 = xor i1 %cmp27, true
  %or.cond293 = and i1 %cmp21, %not.cmp27
  br i1 %or.cond293, label %getsector, label %if.end51

if.end51:                                         ; preds = %if.end46
  %not.cmp33 = xor i1 %cmp33, true
  %or.cond294 = and i1 %cmp27, %not.cmp33
  br i1 %or.cond294, label %getsector, label %if.end56

if.end56:                                         ; preds = %if.end51
  %or.cond295 = and i1 %cmp33, %not.cmp39
  br i1 %or.cond295, label %getsector, label %if.end61

if.end61:                                         ; preds = %if.end56
  %16 = and i1 %cmp21, %cmp39
  br i1 %16, label %getsector, label %if.end66

if.end66:                                         ; preds = %if.end61
  %or.cond297 = and i1 %cmp27, %not.cmp21
  br i1 %or.cond297, label %getsector, label %if.end71

if.end71:                                         ; preds = %if.end66
  %or.cond298 = and i1 %cmp33, %not.cmp27
  br i1 %or.cond298, label %getsector, label %if.end76

if.end76:                                         ; preds = %if.end71
  %or.cond299 = and i1 %cmp39, %not.cmp33
  %.492 = select i1 %or.cond299, i32 1, i32 -1
  br label %getsector

getsector:                                        ; preds = %if.end76, %if.end71, %if.end66, %if.end61, %if.end56, %if.end51, %if.end46, %for.body
  %dy.0 = phi i32 [ 1, %for.body ], [ 1, %if.end46 ], [ 0, %if.end51 ], [ -1, %if.end56 ], [ -1, %if.end61 ], [ -1, %if.end66 ], [ 0, %if.end71 ], [ %.492, %if.end76 ]
  %dx.0 = phi i32 [ 0, %for.body ], [ 1, %if.end46 ], [ 1, %if.end51 ], [ 1, %if.end56 ], [ 0, %if.end61 ], [ -1, %if.end66 ], [ -1, %if.end71 ], [ -1, %if.end76 ]
  %add = add nsw i32 %dx.0, %and.i
  %add82 = add nsw i32 %dy.0, %shr.i
  %shl.i = shl i32 %add82, %12
  %or.i = or i32 %shl.i, %add
  %idxprom = sext i32 %or.i to i64
  %fillnum = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %8, i64 %idxprom, i32 0
  %17 = load i16, i16* %fillnum, align 2, !tbaa !127
  %18 = load i16, i16* %fillnum85, align 2, !tbaa !103
  %cmp87 = icmp eq i16 %17, %18
  br i1 %cmp87, label %if.then88, label %if.end98

if.then88:                                        ; preds = %getsector
  %num = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %8, i64 %idxprom, i32 1
  %19 = load i16, i16* %num, align 2, !tbaa !130
  %20 = zext i16 %19 to i64
  %cmp92 = icmp eq i64 %indvars.iv, %20
  br i1 %cmp92, label %if.then93, label %if.end98

if.then93:                                        ; preds = %if.then88
  %call94 = tail call %class.rvectort @_ZN6wayobj8getpointEi(%class.wayobj* nonnull %this, i32 %or.i) #19
  br label %for.inc

if.end98:                                         ; preds = %if.then88, %getsector
  %sub99 = sub nsw i32 %index.0509, %7
  %sub100 = add nsw i32 %sub99, -1
  %idxprom101 = sext i32 %sub100 to i64
  %fillnum103 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %8, i64 %idxprom101, i32 0
  %21 = load i16, i16* %fillnum103, align 2, !tbaa !127
  %cmp107 = icmp eq i16 %21, %18
  br i1 %cmp107, label %if.then108, label %if.end120

if.then108:                                       ; preds = %if.end98
  %num111 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %8, i64 %idxprom101, i32 1
  %22 = load i16, i16* %num111, align 2, !tbaa !130
  %23 = zext i16 %22 to i64
  %cmp113 = icmp eq i64 %indvars.iv, %23
  br i1 %cmp113, label %if.then114, label %if.end120

if.then114:                                       ; preds = %if.then108
  %call116 = tail call %class.rvectort @_ZN6wayobj8getpointEi(%class.wayobj* nonnull %this, i32 %sub100) #19
  br label %for.inc

if.end120:                                        ; preds = %if.then108, %if.end98
  %idxprom121 = sext i32 %sub99 to i64
  %fillnum123 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %8, i64 %idxprom121, i32 0
  %24 = load i16, i16* %fillnum123, align 2, !tbaa !127
  %cmp127 = icmp eq i16 %24, %18
  br i1 %cmp127, label %if.then128, label %if.end140

if.then128:                                       ; preds = %if.end120
  %num131 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %8, i64 %idxprom121, i32 1
  %25 = load i16, i16* %num131, align 2, !tbaa !130
  %26 = zext i16 %25 to i64
  %cmp133 = icmp eq i64 %indvars.iv, %26
  br i1 %cmp133, label %if.then134, label %if.end140

if.then134:                                       ; preds = %if.then128
  %call136 = tail call %class.rvectort @_ZN6wayobj8getpointEi(%class.wayobj* %this, i32 %sub99) #19
  br label %for.inc

if.end140:                                        ; preds = %if.then128, %if.end120
  %inc141 = add nsw i32 %sub99, 1
  %idxprom142 = sext i32 %inc141 to i64
  %fillnum144 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %8, i64 %idxprom142, i32 0
  %27 = load i16, i16* %fillnum144, align 2, !tbaa !127
  %cmp148 = icmp eq i16 %27, %18
  br i1 %cmp148, label %if.then149, label %if.end161

if.then149:                                       ; preds = %if.end140
  %num152 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %8, i64 %idxprom142, i32 1
  %28 = load i16, i16* %num152, align 2, !tbaa !130
  %29 = zext i16 %28 to i64
  %cmp154 = icmp eq i64 %indvars.iv, %29
  br i1 %cmp154, label %if.then155, label %if.end161

if.then155:                                       ; preds = %if.then149
  %call157 = tail call %class.rvectort @_ZN6wayobj8getpointEi(%class.wayobj* %this, i32 %inc141) #19
  br label %for.inc

if.end161:                                        ; preds = %if.then149, %if.end140
  %sub162 = add nsw i32 %index.0509, -1
  %idxprom163 = sext i32 %sub162 to i64
  %fillnum165 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %8, i64 %idxprom163, i32 0
  %30 = load i16, i16* %fillnum165, align 2, !tbaa !127
  %cmp169 = icmp eq i16 %30, %18
  br i1 %cmp169, label %if.then170, label %if.end182

if.then170:                                       ; preds = %if.end161
  %num173 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %8, i64 %idxprom163, i32 1
  %31 = load i16, i16* %num173, align 2, !tbaa !130
  %32 = zext i16 %31 to i64
  %cmp175 = icmp eq i64 %indvars.iv, %32
  br i1 %cmp175, label %if.then176, label %if.end182

if.then176:                                       ; preds = %if.then170
  %call178 = tail call %class.rvectort @_ZN6wayobj8getpointEi(%class.wayobj* %this, i32 %sub162) #19
  br label %for.inc

if.end182:                                        ; preds = %if.then170, %if.end161
  %add183 = add nsw i32 %index.0509, 1
  %idxprom184 = sext i32 %add183 to i64
  %fillnum186 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %8, i64 %idxprom184, i32 0
  %33 = load i16, i16* %fillnum186, align 2, !tbaa !127
  %cmp190 = icmp eq i16 %33, %18
  br i1 %cmp190, label %if.then191, label %if.end203

if.then191:                                       ; preds = %if.end182
  %num194 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %8, i64 %idxprom184, i32 1
  %34 = load i16, i16* %num194, align 2, !tbaa !130
  %35 = zext i16 %34 to i64
  %cmp196 = icmp eq i64 %indvars.iv, %35
  br i1 %cmp196, label %if.then197, label %if.end203

if.then197:                                       ; preds = %if.then191
  %call199 = tail call %class.rvectort @_ZN6wayobj8getpointEi(%class.wayobj* %this, i32 %add183) #19
  br label %for.inc

if.end203:                                        ; preds = %if.then191, %if.end182
  %add204 = add nsw i32 %index.0509, %7
  %sub205 = add nsw i32 %add204, -1
  %idxprom206 = sext i32 %sub205 to i64
  %fillnum208 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %8, i64 %idxprom206, i32 0
  %36 = load i16, i16* %fillnum208, align 2, !tbaa !127
  %cmp212 = icmp eq i16 %36, %18
  br i1 %cmp212, label %if.then213, label %if.end225

if.then213:                                       ; preds = %if.end203
  %num216 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %8, i64 %idxprom206, i32 1
  %37 = load i16, i16* %num216, align 2, !tbaa !130
  %38 = zext i16 %37 to i64
  %cmp218 = icmp eq i64 %indvars.iv, %38
  br i1 %cmp218, label %if.then219, label %if.end225

if.then219:                                       ; preds = %if.then213
  %call221 = tail call %class.rvectort @_ZN6wayobj8getpointEi(%class.wayobj* %this, i32 %sub205) #19
  br label %for.inc

if.end225:                                        ; preds = %if.then213, %if.end203
  %idxprom227 = sext i32 %add204 to i64
  %fillnum229 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %8, i64 %idxprom227, i32 0
  %39 = load i16, i16* %fillnum229, align 2, !tbaa !127
  %cmp233 = icmp eq i16 %39, %18
  br i1 %cmp233, label %if.then234, label %if.end246

if.then234:                                       ; preds = %if.end225
  %num237 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %8, i64 %idxprom227, i32 1
  %40 = load i16, i16* %num237, align 2, !tbaa !130
  %41 = zext i16 %40 to i64
  %cmp239 = icmp eq i64 %indvars.iv, %41
  br i1 %cmp239, label %if.then240, label %if.end246

if.then240:                                       ; preds = %if.then234
  %call242 = tail call %class.rvectort @_ZN6wayobj8getpointEi(%class.wayobj* %this, i32 %add204) #19
  br label %for.inc

if.end246:                                        ; preds = %if.then234, %if.end225
  %inc247 = add nsw i32 %add204, 1
  %idxprom248 = sext i32 %inc247 to i64
  %fillnum250 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %8, i64 %idxprom248, i32 0
  %42 = load i16, i16* %fillnum250, align 2, !tbaa !127
  %cmp254 = icmp eq i16 %42, %18
  br i1 %cmp254, label %if.then255, label %delete.notnull

if.then255:                                       ; preds = %if.end246
  %num258 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %8, i64 %idxprom248, i32 1
  %43 = load i16, i16* %num258, align 2, !tbaa !130
  %44 = zext i16 %43 to i64
  %cmp260 = icmp eq i64 %indvars.iv, %44
  br i1 %cmp260, label %if.then261, label %delete.notnull

if.then261:                                       ; preds = %if.then255
  %call263 = tail call %class.rvectort @_ZN6wayobj8getpointEi(%class.wayobj* %this, i32 %inc247) #19
  br label %for.inc

delete.notnull:                                   ; preds = %if.end246, %if.then255
  tail call void @_ZdaPv(i8* nonnull %call) #22
  br label %cleanup

for.inc:                                          ; preds = %if.then261, %if.then240, %if.then219, %if.then197, %if.then176, %if.then155, %if.then134, %if.then114, %if.then93
  %call263.sink514 = phi %class.rvectort [ %call263, %if.then261 ], [ %call242, %if.then240 ], [ %call221, %if.then219 ], [ %call199, %if.then197 ], [ %call178, %if.then176 ], [ %call157, %if.then155 ], [ %call136, %if.then134 ], [ %call116, %if.then114 ], [ %call94, %if.then93 ]
  %index.1 = phi i32 [ %inc247, %if.then261 ], [ %add204, %if.then240 ], [ %sub205, %if.then219 ], [ %add183, %if.then197 ], [ %sub162, %if.then176 ], [ %inc141, %if.then155 ], [ %sub99, %if.then134 ], [ %sub100, %if.then114 ], [ %or.i, %if.then93 ]
  %45 = extractvalue %class.rvectort %call263.sink514, 0
  %46 = extractvalue %class.rvectort %call263.sink514, 1
  %47 = extractvalue %class.rvectort %call263.sink514, 2
  %ref.tmp262.sroa.0.0..sroa_idx = getelementptr inbounds %class.rvectort, %class.rvectort* %6, i64 %indvars.iv, i32 0
  store float %45, float* %ref.tmp262.sroa.0.0..sroa_idx, align 4
  %ref.tmp262.sroa.4.0..sroa_idx301 = getelementptr inbounds %class.rvectort, %class.rvectort* %6, i64 %indvars.iv, i32 1
  store float %46, float* %ref.tmp262.sroa.4.0..sroa_idx301, align 4
  %ref.tmp262.sroa.5.0..sroa_idx303 = getelementptr inbounds %class.rvectort, %class.rvectort* %6, i64 %indvars.iv, i32 2
  store float %47, float* %ref.tmp262.sroa.5.0..sroa_idx303, align 4
  %cmp = icmp sgt i64 %indvars.iv, 1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.pre = load i32, i32* %indexxmask.i496, align 4, !tbaa !102
  %.pre510 = load i32, i32* %shift.i494, align 8, !tbaa !84
  br label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %createwayinfo = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 15
  %48 = bitcast %struct.createwayinfot* %createwayinfo to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %call, i8* nonnull align 8 dereferenceable(12) %48, i64 12, i1 false), !tbaa.struct !200
  %finishp = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 15, i32 1
  %sub270 = add nsw i32 %conv, -1
  %idxprom271 = sext i32 %sub270 to i64
  %arrayidx272 = getelementptr inbounds %class.rvectort, %class.rvectort* %6, i64 %idxprom271
  %49 = bitcast %class.rvectort* %arrayidx272 to i8*
  %50 = bitcast %class.rvectort* %finishp to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %49, i8* nonnull align 4 dereferenceable(12) %50, i64 12, i1 false), !tbaa.struct !200
  %flexist = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 0
  store i8 1, i8* %flexist, align 8, !tbaa !201
  %wayarp273 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 1
  %51 = bitcast %class.rvectort** %wayarp273 to i8**
  store i8* %call, i8** %51, align 8, !tbaa !203
  %wayarsize = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 2
  store i32 %conv, i32* %wayarsize, align 8, !tbaa !204
  %flcorrect = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 3
  store i8 0, i8* %flcorrect, align 4, !tbaa !205
  br label %cleanup

cleanup:                                          ; preds = %for.end, %delete.notnull
  %retval.0 = phi i1 [ false, %delete.notnull ], [ true, %for.end ]
  ret i1 %retval.0
}

; Function Attrs: optsize
define dso_local i1 @_ZN6wayobj8wayexistEiiii(%class.wayobj* %this, i32 %startx, i32 %starty, i32 %endx, i32 %endy) local_unnamed_addr #0 align 2 {
entry:
  %call = tail call i1 @_ZN6wayobj5ismapEii(%class.wayobj* %this, i32 %startx, i32 %starty) #19
  br i1 %call, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i1 @_ZN6wayobj5ismapEii(%class.wayobj* %this, i32 %endx, i32 %endy) #19
  br i1 %call2, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %maparp.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 17
  %0 = load i16*, i16** %maparp.i, align 8, !tbaa !83
  %shift.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 2
  %1 = load i32, i32* %shift.i, align 8, !tbaa !84
  %shl.i = shl i32 %endy, %1
  %or.i = or i32 %shl.i, %endx
  %idxprom.i = sext i32 %or.i to i64
  %arrayidx.i = getelementptr inbounds i16, i16* %0, i64 %idxprom.i
  %2 = load i16, i16* %arrayidx.i, align 2, !tbaa !85
  %cmp = icmp eq i16 %2, 0
  br i1 %cmp, label %if.end5, label %return

if.end5:                                          ; preds = %if.end
  %cmp6 = icmp eq i32 %startx, %endx
  %cmp7 = icmp eq i32 %starty, %endy
  %or.cond = and i1 %cmp6, %cmp7
  br i1 %or.cond, label %return, label %if.end9

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i1 @_ZN6wayobj4fillEiiii(%class.wayobj* nonnull %this, i32 %startx, i32 %starty, i32 %endx, i32 %endy) #19
  br label %return

return:                                           ; preds = %if.end5, %if.end, %entry, %lor.lhs.false, %if.end9
  %retval.0 = phi i1 [ %call10, %if.end9 ], [ false, %lor.lhs.false ], [ false, %entry ], [ false, %if.end ], [ true, %if.end5 ]
  ret i1 %retval.0
}

; Function Attrs: optsize
define dso_local i1 @_ZN6wayobj9createwayERK8rvectortS2_bR8wayinfot(%class.wayobj* %this, %class.rvectort* nocapture readonly dereferenceable(12) %startp, %class.rvectort* nocapture readonly dereferenceable(12) %finishp, i1 %flcorrect, %struct.wayinfot* dereferenceable(24) %wayinfo) local_unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %endx = alloca i32, align 4
  %endy = alloca i32, align 4
  %frombool = zext i1 %flcorrect to i8
  %0 = bitcast i32* %endx to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #21
  %1 = bitcast i32* %endy to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #21
  %createwayinfo = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 15
  %2 = bitcast %struct.createwayinfot* %createwayinfo to i8*
  %3 = bitcast %class.rvectort* %startp to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(12) %2, i8* nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !200
  %finishp4 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 15, i32 1
  %4 = bitcast %class.rvectort* %finishp4 to i8*
  %5 = bitcast %class.rvectort* %finishp to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %4, i8* nonnull align 4 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !200
  %flcorrect6 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 15, i32 2
  store i8 %frombool, i8* %flcorrect6, align 8, !tbaa !206
  %x = getelementptr inbounds %class.rvectort, %class.rvectort* %startp, i64 0, i32 0
  %6 = load float, float* %x, align 4, !tbaa !68
  %xcoef1.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 9
  %7 = load float, float* %xcoef1.i, align 4, !tbaa !70
  %xcoef2.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 10
  %8 = load float, float* %xcoef2.i, align 8, !tbaa !71
  %9 = tail call float @llvm.fmuladd.f32(float %6, float %7, float %8) #21
  %conv.i = fptosi float %9 to i32
  %z = getelementptr inbounds %class.rvectort, %class.rvectort* %startp, i64 0, i32 2
  %10 = load float, float* %z, align 4, !tbaa !72
  %ycoef1.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 11
  %11 = load float, float* %ycoef1.i, align 4, !tbaa !73
  %ycoef2.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 12
  %12 = load float, float* %ycoef2.i, align 8, !tbaa !74
  %13 = tail call float @llvm.fmuladd.f32(float %10, float %11, float %12) #21
  %conv.i143 = fptosi float %13 to i32
  %x9 = getelementptr inbounds %class.rvectort, %class.rvectort* %finishp, i64 0, i32 0
  %14 = load float, float* %x9, align 4, !tbaa !68
  %15 = tail call float @llvm.fmuladd.f32(float %14, float %7, float %8) #21
  %conv.i155 = fptosi float %15 to i32
  store i32 %conv.i155, i32* %endx, align 4, !tbaa !24
  %z11 = getelementptr inbounds %class.rvectort, %class.rvectort* %finishp, i64 0, i32 2
  %16 = load float, float* %z11, align 4, !tbaa !72
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %11, float %12) #21
  %conv.i152 = fptosi float %17 to i32
  store i32 %conv.i152, i32* %endy, align 4, !tbaa !24
  %call13 = tail call i1 @_ZN6wayobj5ismapEii(%class.wayobj* %this, i32 %conv.i, i32 %conv.i143) #19
  br i1 %call13, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call14 = tail call i1 @_ZN6wayobj5ismapEii(%class.wayobj* nonnull %this, i32 %conv.i155, i32 %conv.i152) #19
  br i1 %call14, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %flexist = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 0
  store i8 0, i8* %flexist, align 8, !tbaa !201
  %wayarp = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 1
  store %class.rvectort* null, %class.rvectort** %wayarp, align 8, !tbaa !203
  %wayarsize = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 2
  store i32 0, i32* %wayarsize, align 8, !tbaa !204
  %flcorrect16 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 3
  store i8 0, i8* %flcorrect16, align 4, !tbaa !205
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %maparp.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 17
  %18 = load i16*, i16** %maparp.i, align 8, !tbaa !83
  %shift.i147 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 2
  %19 = load i32, i32* %shift.i147, align 8, !tbaa !84
  %shl.i148 = shl i32 %conv.i152, %19
  %or.i149 = or i32 %shl.i148, %conv.i155
  %idxprom.i = sext i32 %or.i149 to i64
  %arrayidx.i = getelementptr inbounds i16, i16* %18, i64 %idxprom.i
  %20 = load i16, i16* %arrayidx.i, align 2, !tbaa !85
  %cmp = icmp eq i16 %20, 0
  br i1 %cmp, label %if.end47, label %if.then19

if.then19:                                        ; preds = %if.end
  br i1 %flcorrect, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.then19
  %flexist24 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 0
  store i8 0, i8* %flexist24, align 8, !tbaa !201
  %wayarp25 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 1
  store %class.rvectort* null, %class.rvectort** %wayarp25, align 8, !tbaa !203
  %wayarsize26 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 2
  store i32 0, i32* %wayarsize26, align 8, !tbaa !204
  %flcorrect28 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 3
  store i8 0, i8* %flcorrect28, align 4, !tbaa !205
  br label %cleanup

if.else:                                          ; preds = %if.then19
  %call30 = call i1 @_ZN6wayobj13findfreepointEiiRiS0_(%class.wayobj* nonnull %this, i32 %conv.i155, i32 %conv.i152, i32* nonnull dereferenceable(4) %endx, i32* nonnull dereferenceable(4) %endy) #19
  br i1 %call30, label %if.else40, label %if.then33

if.then33:                                        ; preds = %if.else
  %flexist34 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 0
  store i8 0, i8* %flexist34, align 8, !tbaa !201
  %wayarp35 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 1
  store %class.rvectort* null, %class.rvectort** %wayarp35, align 8, !tbaa !203
  %wayarsize36 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 2
  store i32 0, i32* %wayarsize36, align 8, !tbaa !204
  %flcorrect38 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 3
  store i8 0, i8* %flcorrect38, align 4, !tbaa !205
  br label %cleanup

if.else40:                                        ; preds = %if.else
  %21 = load i32, i32* %endx, align 4, !tbaa !24
  %22 = load i32, i32* %endy, align 4, !tbaa !24
  %23 = load i32, i32* %shift.i147, align 8, !tbaa !84
  %shl.i145 = shl i32 %22, %23
  %or.i146 = or i32 %shl.i145, %21
  %call42 = call %class.rvectort @_ZN6wayobj8getpointEi(%class.wayobj* nonnull %this, i32 %or.i146) #19
  %24 = extractvalue %class.rvectort %call42, 0
  %25 = extractvalue %class.rvectort %call42, 1
  %26 = extractvalue %class.rvectort %call42, 2
  %ref.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 15, i32 1, i32 0
  store float %24, float* %ref.tmp.sroa.0.0..sroa_idx, align 4, !tbaa.struct !200
  %ref.tmp.sroa.4.0..sroa_idx92 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 15, i32 1, i32 1
  store float %25, float* %ref.tmp.sroa.4.0..sroa_idx92, align 4, !tbaa.struct !200
  %ref.tmp.sroa.5.0..sroa_idx94 = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 15, i32 1, i32 2
  store float %26, float* %ref.tmp.sroa.5.0..sroa_idx94, align 4, !tbaa.struct !200
  %.pre = load i32, i32* %endx, align 4, !tbaa !24
  %.pre156 = load i32, i32* %endy, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end, %if.else40
  %27 = phi i32 [ %.pre156, %if.else40 ], [ %conv.i152, %if.end ]
  %28 = phi i32 [ %.pre, %if.else40 ], [ %conv.i155, %if.end ]
  %flcorrectend.0.off0 = phi i1 [ true, %if.else40 ], [ false, %if.end ]
  %cmp48 = icmp eq i32 %28, %conv.i
  %cmp49 = icmp eq i32 %27, %conv.i143
  %or.cond = and i1 %cmp48, %cmp49
  br i1 %or.cond, label %if.then50, label %if.end63

if.then50:                                        ; preds = %if.end47
  %flexist51 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 0
  store i8 1, i8* %flexist51, align 8, !tbaa !201
  %call52 = call dereferenceable(24) i8* @_Znam(i64 24) #23
  %wayarp53 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 1
  %29 = bitcast %class.rvectort** %wayarp53 to i8**
  store i8* %call52, i8** %29, align 8, !tbaa !203
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %call52, i8* nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !200
  %arrayidx58 = getelementptr inbounds i8, i8* %call52, i64 12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %arrayidx58, i8* nonnull align 4 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !200
  %wayarsize59 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 2
  store i32 2, i32* %wayarsize59, align 8, !tbaa !204
  %flcorrect61 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 3
  %frombool62 = zext i1 %flcorrectend.0.off0 to i8
  store i8 %frombool62, i8* %flcorrect61, align 4, !tbaa !205
  br label %cleanup

if.end63:                                         ; preds = %if.end47
  %call64 = call i1 @_ZN6wayobj4fillEiiii(%class.wayobj* nonnull %this, i32 %conv.i, i32 %conv.i143, i32 %28, i32 %27) #19
  br i1 %call64, label %if.end72, label %if.then65

if.then65:                                        ; preds = %if.end63
  %flexist66 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 0
  store i8 0, i8* %flexist66, align 8, !tbaa !201
  %wayarp67 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 1
  store %class.rvectort* null, %class.rvectort** %wayarp67, align 8, !tbaa !203
  %wayarsize68 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 2
  store i32 0, i32* %wayarsize68, align 8, !tbaa !204
  %flcorrect70 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 3
  %frombool71 = zext i1 %flcorrectend.0.off0 to i8
  store i8 %frombool71, i8* %flcorrect70, align 4, !tbaa !205
  br label %cleanup

if.end72:                                         ; preds = %if.end63
  %flcorrect74 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 3
  %frombool75 = zext i1 %flcorrectend.0.off0 to i8
  store i8 %frombool75, i8* %flcorrect74, align 4, !tbaa !205
  %30 = load i32, i32* %shift.i147, align 8, !tbaa !84
  %shl.i = shl i32 %conv.i143, %30
  %or.i = or i32 %shl.i, %conv.i
  %endindex = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 25
  %31 = load i32, i32* %endindex, align 4, !tbaa !131
  %call77 = call i1 @_ZN6wayobj11createwayarEiiR8wayinfot(%class.wayobj* nonnull %this, i32 %or.i, i32 %31, %struct.wayinfot* nonnull dereferenceable(24) %wayinfo) #19
  br i1 %call77, label %cleanup, label %if.then78

if.then78:                                        ; preds = %if.end72
  %flexist79 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 0
  store i8 0, i8* %flexist79, align 8, !tbaa !201
  %wayarp80 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 1
  store %class.rvectort* null, %class.rvectort** %wayarp80, align 8, !tbaa !203
  %wayarsize81 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %wayinfo, i64 0, i32 2
  store i32 0, i32* %wayarsize81, align 8, !tbaa !204
  store i8 %frombool75, i8* %flcorrect74, align 4, !tbaa !205
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.then78, %if.then65, %if.then50, %if.then33, %if.then23, %if.then
  %retval.0 = phi i1 [ false, %if.then23 ], [ false, %if.then33 ], [ true, %if.then50 ], [ false, %if.then78 ], [ false, %if.then65 ], [ false, %if.then ], [ true, %if.end72 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #21
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #21
  ret i1 %retval.0
}

; Function Attrs: optsize
define dso_local i1 @_ZN6wayobj9createwayERK14createwayinfotR8wayinfot(%class.wayobj* %this, %struct.createwayinfot* nocapture readonly dereferenceable(25) %createinfo, %struct.wayinfot* dereferenceable(24) %wayinfo) local_unnamed_addr #0 align 2 {
entry:
  %startp = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %createinfo, i64 0, i32 0
  %finishp = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %createinfo, i64 0, i32 1
  %flcorrect = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %createinfo, i64 0, i32 2
  %0 = load i8, i8* %flcorrect, align 4, !tbaa !207, !range !45
  %tobool = icmp ne i8 %0, 0
  %call = tail call i1 @_ZN6wayobj9createwayERK8rvectortS2_bR8wayinfot(%class.wayobj* %this, %class.rvectort* nonnull dereferenceable(12) %startp, %class.rvectort* nonnull dereferenceable(12) %finishp, i1 %tobool, %struct.wayinfot* nonnull dereferenceable(24) %wayinfo) #19
  ret i1 %call
}

; Function Attrs: optsize
define dso_local i1 @_ZN6wayobj9createwayEiiiiRP8point16tRi(%class.wayobj* %this, i32 %startx, i32 %starty, i32 %endx, i32 %endy, %struct.waymapcellt** nocapture dereferenceable(8) %wayar, i32* nocapture dereferenceable(4) %waylength) local_unnamed_addr #0 align 2 {
entry:
  %call = tail call i1 @_ZN6wayobj5ismapEii(%class.wayobj* %this, i32 %startx, i32 %starty) #19
  br i1 %call, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i1 @_ZN6wayobj5ismapEii(%class.wayobj* %this, i32 %endx, i32 %endy) #19
  br i1 %call2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.waymapcellt* null, %struct.waymapcellt** %wayar, align 8, !tbaa !26
  br label %return.sink.split

if.end:                                           ; preds = %lor.lhs.false
  %maparp.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 17
  %0 = load i16*, i16** %maparp.i, align 8, !tbaa !83
  %shift.i = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 2
  %1 = load i32, i32* %shift.i, align 8, !tbaa !84
  %shl.i = shl i32 %endy, %1
  %or.i = or i32 %shl.i, %endx
  %idxprom.i = sext i32 %or.i to i64
  %arrayidx.i = getelementptr inbounds i16, i16* %0, i64 %idxprom.i
  %2 = load i16, i16* %arrayidx.i, align 2, !tbaa !85
  %cmp = icmp eq i16 %2, 0
  br i1 %cmp, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  store %struct.waymapcellt* null, %struct.waymapcellt** %wayar, align 8, !tbaa !26
  br label %return.sink.split

if.end5:                                          ; preds = %if.end
  %cmp6 = icmp eq i32 %startx, %endx
  %cmp7 = icmp eq i32 %starty, %endy
  %or.cond = and i1 %cmp6, %cmp7
  br i1 %or.cond, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  %call9 = tail call noalias dereferenceable_or_null(4) i8* @malloc(i64 4) #20
  %3 = bitcast %struct.waymapcellt** %wayar to i8**
  store i8* %call9, i8** %3, align 8, !tbaa !26
  br label %return.sink.split

if.end10:                                         ; preds = %if.end5
  %call11 = tail call i1 @_ZN6wayobj4fillEiiii(%class.wayobj* nonnull %this, i32 %startx, i32 %starty, i32 %endx, i32 %endy) #19
  br i1 %call11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end10
  store %struct.waymapcellt* null, %struct.waymapcellt** %wayar, align 8, !tbaa !26
  br label %return.sink.split

if.end13:                                         ; preds = %if.end10
  %4 = load i32, i32* %shift.i, align 8, !tbaa !84
  %shl.i41 = shl i32 %starty, %4
  %or.i42 = or i32 %shl.i41, %startx
  %endindex = getelementptr inbounds %class.wayobj, %class.wayobj* %this, i64 0, i32 25
  %5 = load i32, i32* %endindex, align 4, !tbaa !131
  %call15 = tail call i1 @_ZN6wayobj11createwayarEiiRP8point16tRi(%class.wayobj* nonnull %this, i32 %or.i42, i32 %5, %struct.waymapcellt** nonnull dereferenceable(8) %wayar, i32* nonnull dereferenceable(4) %waylength) #19
  br i1 %call15, label %return, label %if.then16

if.then16:                                        ; preds = %if.end13
  store %struct.waymapcellt* null, %struct.waymapcellt** %wayar, align 8, !tbaa !26
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then, %if.then4, %if.then8, %if.then12, %if.then16
  %.sink = phi i32 [ 0, %if.then16 ], [ 0, %if.then12 ], [ 1, %if.then8 ], [ 0, %if.then4 ], [ 0, %if.then ]
  %retval.0.ph = phi i1 [ false, %if.then16 ], [ false, %if.then12 ], [ true, %if.then8 ], [ false, %if.then4 ], [ false, %if.then ]
  store i32 %.sink, i32* %waylength, align 4, !tbaa !24
  br label %return

return:                                           ; preds = %return.sink.split, %if.end13
  %retval.0 = phi i1 [ true, %if.end13 ], [ %retval.0.ph, %return.sink.split ]
  ret i1 %retval.0
}

attributes #0 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "denormal-fp-math"="ieee,ieee" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn writeonly }
attributes #2 = { nofree nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "denormal-fp-math"="ieee,ieee" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "denormal-fp-math"="ieee,ieee" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "denormal-fp-math"="ieee,ieee" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree optsize "correctly-rounded-divide-sqrt-fp-math"="false" "denormal-fp-math"="ieee,ieee" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "denormal-fp-math"="ieee,ieee" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "denormal-fp-math"="ieee,ieee" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree norecurse nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "denormal-fp-math"="ieee,ieee" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nobuiltin nofree optsize "correctly-rounded-divide-sqrt-fp-math"="false" "denormal-fp-math"="ieee,ieee" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "denormal-fp-math"="ieee,ieee" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readnone speculatable willreturn }
attributes #13 = { norecurse nounwind optsize readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denormal-fp-math"="ieee,ieee" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { norecurse nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "denormal-fp-math"="ieee,ieee" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "denormal-fp-math"="ieee,ieee" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree nounwind }
attributes #17 = { norecurse optsize "correctly-rounded-divide-sqrt-fp-math"="false" "denormal-fp-math"="ieee,ieee" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nofree norecurse nounwind optsize writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "denormal-fp-math"="ieee,ieee" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize }
attributes #21 = { nounwind }
attributes #22 = { builtin nounwind optsize }
attributes #23 = { builtin optsize }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 11.0.0 (https://github.com/Timothy-SHU/Function-Merging c658f37ba70e92b0767ce87ffbcb52e9fac5e2a8)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!3, !4, i64 0}
!3 = !{!"_ZTS9regmngobj", !4, i64 0, !7, i64 8, !8, i64 12, !8, i64 16, !9, i64 20, !8, i64 24, !4, i64 32, !4, i64 40, !5, i64 48, !8, i64 304, !8, i64 308, !10, i64 312, !8, i64 316, !8, i64 320, !5, i64 324, !5, i64 328, !8, i64 332, !8, i64 336, !11, i64 344}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"short", !5, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"float", !5, i64 0}
!11 = !{!"_ZTS15largesolidarrayIP6regobjE", !4, i64 0, !12, i64 8, !13, i64 24, !13, i64 40, !8, i64 56, !8, i64 60}
!12 = !{!"_ZTS9flexstackIiE", !4, i64 0, !8, i64 8, !8, i64 12}
!13 = !{!"_ZTS9flexarrayIiE", !4, i64 0, !8, i64 8, !8, i64 12}
!14 = !{!3, !8, i64 24}
!15 = !{!11, !8, i64 60}
!16 = !{!11, !8, i64 56}
!17 = !{!11, !4, i64 0}
!18 = !{!13, !8, i64 12}
!19 = !{!13, !8, i64 8}
!20 = !{!13, !4, i64 0}
!21 = !{!12, !8, i64 12}
!22 = !{!12, !8, i64 8}
!23 = !{!12, !4, i64 0}
!24 = !{!8, !8, i64 0}
!25 = !{!3, !8, i64 400}
!26 = !{!4, !4, i64 0}
!27 = !{!3, !4, i64 32}
!28 = !{!3, !4, i64 40}
!29 = !{!5, !5, i64 0}
!30 = !{!3, !8, i64 332}
!31 = !{!3, !8, i64 336}
!32 = !{!3, !8, i64 316}
!33 = !{!3, !8, i64 320}
!34 = !{!3, !7, i64 8}
!35 = !{!9, !9, i64 0}
!36 = !{!37, !8, i64 16}
!37 = !{!"_ZTS6regobj", !8, i64 0, !9, i64 4, !9, i64 5, !4, i64 8, !8, i64 16, !38, i64 20, !8, i64 28, !8, i64 32, !8, i64 36, !39, i64 40}
!38 = !{!"_ZTS6pointt", !8, i64 0, !8, i64 4}
!39 = !{!"_ZTS9flexarrayIP6regobjE", !4, i64 0, !8, i64 8, !8, i64 12}
!40 = !{!37, !9, i64 4}
!41 = !{!37, !4, i64 8}
!42 = !{!11, !4, i64 24}
!43 = !{!11, !4, i64 40}
!44 = !{!37, !8, i64 0}
!45 = !{i8 0, i8 2}
!46 = !{!3, !10, i64 312}
!47 = !{!37, !8, i64 20}
!48 = !{!37, !8, i64 24}
!49 = !{!50, !9, i64 104}
!50 = !{!"_ZTS11regboundobj", !51, i64 0, !51, i64 16, !9, i64 32, !8, i64 36, !4, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !4, i64 64, !4, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !4, i64 96, !9, i64 104}
!51 = !{!"_ZTS9flexarrayI6pointtE", !4, i64 0, !8, i64 8, !8, i64 12}
!52 = !{!37, !9, i64 5}
!53 = !{!37, !8, i64 48}
!54 = !{!39, !4, i64 0}
!55 = !{!3, !8, i64 304}
!56 = !{!3, !8, i64 308}
!57 = !{!37, !8, i64 32}
!58 = !{!37, !8, i64 28}
!59 = !{!39, !8, i64 8}
!60 = !{!39, !8, i64 12}
!61 = !{!62, !10, i64 4}
!62 = !{!"_ZTS8rvectort", !10, i64 0, !10, i64 4, !10, i64 8}
!63 = !{!64, !10, i64 84}
!64 = !{!"_ZTS6wayobj", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !65, i64 56, !66, i64 88, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !8, i64 152, !8, i64 156, !9, i64 160, !8, i64 164, !7, i64 168, !7, i64 170}
!65 = !{!"_ZTS17createwaymnginfot", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !8, i64 16, !8, i64 20, !10, i64 24, !10, i64 28}
!66 = !{!"_ZTS14createwayinfot", !62, i64 0, !62, i64 12, !9, i64 24}
!67 = !{!64, !10, i64 80}
!68 = !{!62, !10, i64 0}
!69 = !{!64, !10, i64 52}
!70 = !{!64, !10, i64 36}
!71 = !{!64, !10, i64 40}
!72 = !{!62, !10, i64 8}
!73 = !{!64, !10, i64 44}
!74 = !{!64, !10, i64 48}
!75 = !{!64, !8, i64 20}
!76 = !{!64, !8, i64 24}
!77 = !{!64, !10, i64 56}
!78 = !{!64, !10, i64 60}
!79 = !{!64, !8, i64 28}
!80 = !{!64, !10, i64 64}
!81 = !{!64, !10, i64 68}
!82 = !{!64, !8, i64 32}
!83 = !{!64, !4, i64 120}
!84 = !{!64, !8, i64 8}
!85 = !{!7, !7, i64 0}
!86 = !{!64, !8, i64 0}
!87 = !{!64, !8, i64 4}
!88 = !{!64, !4, i64 128}
!89 = !{!64, !8, i64 12}
!90 = !{!64, !8, i64 16}
!91 = !{i64 0, i64 4, !92, i64 4, i64 4, !92, i64 8, i64 4, !92, i64 12, i64 4, !92, i64 16, i64 4, !24, i64 20, i64 4, !24, i64 24, i64 4, !92, i64 28, i64 4, !92}
!92 = !{!10, !10, i64 0}
!93 = !{!65, !8, i64 16}
!94 = !{!65, !8, i64 20}
!95 = !{!65, !10, i64 4}
!96 = !{!65, !10, i64 0}
!97 = !{!65, !10, i64 12}
!98 = !{!65, !10, i64 8}
!99 = !{!64, !8, i64 152}
!100 = !{!64, !4, i64 136}
!101 = !{!64, !4, i64 144}
!102 = !{!64, !8, i64 156}
!103 = !{!64, !7, i64 170}
!104 = !{!3, !9, i64 20}
!105 = !{!3, !8, i64 12}
!106 = !{!3, !8, i64 16}
!107 = !{!51, !8, i64 8}
!108 = !{!51, !8, i64 12}
!109 = !{!51, !4, i64 0}
!110 = !{!38, !8, i64 0}
!111 = !{!38, !8, i64 4}
!112 = !{!50, !4, i64 96}
!113 = !{!50, !4, i64 72}
!114 = !{!50, !8, i64 80}
!115 = !{!50, !8, i64 48}
!116 = !{!50, !8, i64 52}
!117 = !{!50, !8, i64 60}
!118 = !{!50, !4, i64 40}
!119 = !{!50, !4, i64 64}
!120 = !{!50, !8, i64 88}
!121 = !{!50, !8, i64 92}
!122 = !{!50, !8, i64 36}
!123 = !{!50, !9, i64 32}
!124 = !{!50, !8, i64 84}
!125 = !{!50, !8, i64 56}
!126 = !{!50, !8, i64 8}
!127 = !{!128, !7, i64 0}
!128 = !{!"_ZTS11waymapcellt", !7, i64 0, !7, i64 2}
!129 = !{!64, !7, i64 168}
!130 = !{!128, !7, i64 2}
!131 = !{!64, !8, i64 164}
!132 = !{!64, !9, i64 160}
!133 = !{!134, !135, i64 0}
!134 = !{!"_ZTS9statinfot", !135, i64 0, !135, i64 8, !135, i64 16, !135, i64 24, !135, i64 32, !136, i64 40, !136, i64 48, !136, i64 56, !136, i64 64, !136, i64 72, !136, i64 80, !136, i64 88, !136, i64 96}
!135 = !{!"double", !5, i64 0}
!136 = !{!"long", !5, i64 0}
!137 = !{!134, !135, i64 8}
!138 = !{!134, !136, i64 64}
!139 = !{!134, !136, i64 40}
!140 = !{!134, !135, i64 32}
!141 = !{!134, !136, i64 96}
!142 = !{!134, !136, i64 88}
!143 = !{!134, !135, i64 16}
!144 = !{!134, !136, i64 72}
!145 = !{!134, !136, i64 48}
!146 = !{!134, !135, i64 24}
!147 = !{!134, !136, i64 80}
!148 = !{!134, !136, i64 56}
!149 = !{!150, !8, i64 4096}
!150 = !{!"_ZTS9workinfot", !5, i64 0, !8, i64 4096, !8, i64 4100, !8, i64 4104, !8, i64 4108, !8, i64 4112, !8, i64 4116, !8, i64 4120, !10, i64 4124, !8, i64 4128, !8, i64 4132, !8, i64 4136}
!151 = !{!150, !8, i64 4100}
!152 = !{!150, !8, i64 4112}
!153 = !{!150, !8, i64 4104}
!154 = !{!155, !8, i64 4424}
!155 = !{!"_ZTS7way2obj", !4, i64 0, !4, i64 8, !7, i64 16, !5, i64 18, !5, i64 280, !8, i64 4376, !8, i64 4380, !8, i64 4384, !8, i64 4388, !8, i64 4392, !8, i64 4396, !8, i64 4400, !9, i64 4404, !8, i64 4408, !8, i64 4412, !5, i64 4416, !5, i64 4420, !8, i64 4424, !8, i64 4428}
!156 = !{!155, !8, i64 4428}
!157 = !{!155, !4, i64 0}
!158 = !{!150, !8, i64 4108}
!159 = !{!150, !8, i64 4116}
!160 = !{!150, !8, i64 4120}
!161 = !{!150, !10, i64 4124}
!162 = !{!150, !8, i64 4128}
!163 = !{!150, !8, i64 4132}
!164 = !{!150, !8, i64 4136}
!165 = !{!155, !8, i64 4384}
!166 = !{!155, !4, i64 8}
!167 = !{!168, !7, i64 0}
!168 = !{!"_ZTSN7way2obj11waymapcelltE", !7, i64 0, !7, i64 2}
!169 = !{!155, !7, i64 16}
!170 = !{!155, !8, i64 4408}
!171 = !{!155, !8, i64 4412}
!172 = !{!168, !7, i64 2}
!173 = !{!155, !8, i64 4388}
!174 = !{!155, !8, i64 4392}
!175 = !{!155, !9, i64 4404}
!176 = !{!155, !8, i64 4376}
!177 = !{!155, !8, i64 4380}
!178 = !{!155, !8, i64 4396}
!179 = !{!155, !8, i64 4400}
!180 = !{!181, !8, i64 44}
!181 = !{!"_ZTS9regwayobj", !39, i64 8, !39, i64 24, !8, i64 40, !8, i64 44, !4, i64 48, !9, i64 56, !4, i64 64, !4, i64 72}
!182 = !{!181, !4, i64 48}
!183 = !{!181, !8, i64 40}
!184 = !{!37, !8, i64 36}
!185 = !{!181, !4, i64 64}
!186 = !{!181, !9, i64 56}
!187 = !{!188, !188, i64 0}
!188 = !{!"vtable pointer", !6, i64 0}
!189 = !{!181, !4, i64 72}
!190 = !{i64 0, i64 2, !85, i64 2, i64 2, !85, i64 4, i64 4, !92, i64 8, i64 4, !92, i64 12, i64 4, !92}
!191 = !{!192, !7, i64 0}
!192 = !{!"_ZTS11levelplacet", !7, i64 0, !7, i64 2, !10, i64 4, !10, i64 8, !10, i64 12}
!193 = !{!192, !7, i64 2}
!194 = !{!192, !10, i64 4}
!195 = !{!192, !10, i64 8}
!196 = !{!192, !10, i64 12}
!197 = !{!198, !7, i64 0}
!198 = !{!"_ZTS8point16t", !7, i64 0, !7, i64 2}
!199 = !{!198, !7, i64 2}
!200 = !{i64 0, i64 4, !92, i64 4, i64 4, !92, i64 8, i64 4, !92}
!201 = !{!202, !9, i64 0}
!202 = !{!"_ZTS8wayinfot", !9, i64 0, !4, i64 8, !8, i64 16, !9, i64 20}
!203 = !{!202, !4, i64 8}
!204 = !{!202, !8, i64 16}
!205 = !{!202, !9, i64 20}
!206 = !{!64, !9, i64 112}
!207 = !{!66, !9, i64 24}
