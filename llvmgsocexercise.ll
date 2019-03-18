; ModuleID = 'llvmgsocexercise.cxx'
source_filename = "llvmgsocexercise.cxx"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.S = type <{ i32 (...)**, i32, [4 x i8] }>

$_ZTV1S = comdat any

$_ZTS1S = comdat any

$_ZTI1S = comdat any

@_ZTV1S = linkonce_odr unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI1S to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@_ZZN1SC1EiE3arr = private unnamed_addr constant [8 x float] [float 0x3FB99999A0000000, float 0x3FC99999A0000000, float 0x3FD3333340000000, float 0x3FD99999A0000000, float 5.000000e-01, float 0x3FE3333340000000, float 0x3FE6666660000000, float 0x3FE99999A0000000], align 16
@s = global %struct.S* null, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS1S = linkonce_odr constant [3 x i8] c"1S\00", comdat
@_ZTI1S = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTS1S, i32 0, i32 0) }, comdat

; Function Attrs: noinline nounwind optnone uwtable
define void @_ZN1SC2Ei(%struct.S*, i32) unnamed_addr #0 align 2 {
  %3 = alloca %struct.S*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [8 x float], align 16
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  store %struct.S* %0, %struct.S** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.S*, %struct.S** %3, align 8
  %9 = bitcast %struct.S* %8 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV1S, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %9, align 8
  %10 = getelementptr inbounds %struct.S, %struct.S* %8, i32 0, i32 1
  store i32 42, i32* %10, align 8
  %11 = bitcast [8 x float]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast ([8 x float]* @_ZZN1SC1EiE3arr to i8*), i64 32, i32 16, i1 false)
  store i32 0, i32* %6, align 4
  br label %12

; <label>:12:                                     ; preds = %34, %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %37

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x float], [8 x float]* %5, i64 0, i64 %17
  store float* %18, float** %7, align 8
  %19 = load float*, float** %7, align 8
  %20 = load float, float* %19, align 4
  %21 = load float*, float** %7, align 8
  %22 = load float, float* %21, align 4
  %23 = fmul float %20, %22
  %24 = load float*, float** %7, align 8
  %25 = load float, float* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sitofp i32 %26 to float
  %28 = fadd float %25, %27
  %29 = call float @sqrtf(float %28) #3
  %30 = fdiv float %23, %29
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x float], [8 x float]* %5, i64 0, i64 %32
  store float %30, float* %33, align 4
  br label %34

; <label>:34:                                     ; preds = %15
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %12

; <label>:37:                                     ; preds = %12
  %38 = load i32, i32* %4, align 4
  %39 = srem i32 %38, 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [8 x float], [8 x float]* %5, i64 0, i64 %40
  %42 = load float, float* %41, align 4
  %43 = fptosi float %42 to i32
  %44 = getelementptr inbounds %struct.S, %struct.S* %8, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.S, %struct.S* %8, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 42
  store i32 %47, i32* %45, align 8
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare float @sqrtf(float) #2

declare void @__cxa_pure_virtual() unnamed_addr

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.1-svn334776-1~exp1~20190309042730.123 (branches/release_60)"}
