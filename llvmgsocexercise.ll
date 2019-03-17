; ModuleID = 'llvmgsocexercise.cxx'
source_filename = "llvmgsocexercise.cxx"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.S = type { i32 (...)**, i32, [4 x i8] }

@s = global %struct.S* null, align 8
@_ZZ4tempP1SiE3arr = private unnamed_addr constant [8 x float] [float 0x3FB99999A0000000, float 0x3FC99999A0000000, float 0x3FD3333340000000, float 0x3FD99999A0000000, float 5.000000e-01, float 0x3FE3333340000000, float 0x3FE6666660000000, float 0x3FE99999A0000000], align 16

; Function Attrs: noinline optnone uwtable
define void @_Z4tempP1Si(%struct.S*, i32) #0 {
  %3 = alloca %struct.S*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [8 x float], align 16
  %6 = alloca i32, align 4
  store %struct.S* %0, %struct.S** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i8* @_Znwm(i64 16) #4
  %8 = bitcast i8* %7 to %struct.S*
  store %struct.S* %8, %struct.S** %3, align 8
  %9 = load %struct.S*, %struct.S** %3, align 8
  %10 = getelementptr inbounds %struct.S, %struct.S* %9, i32 0, i32 1
  store i32 42, i32* %10, align 8
  %11 = bitcast [8 x float]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast ([8 x float]* @_ZZ4tempP1SiE3arr to i8*), i64 32, i32 16, i1 false)
  store i32 0, i32* %6, align 4
  br label %12

; <label>:12:                                     ; preds = %40, %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %43

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x float], [8 x float]* %5, i64 0, i64 %17
  %19 = load float, float* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x float], [8 x float]* %5, i64 0, i64 %21
  %23 = load float, float* %22, align 4
  %24 = fmul float %19, %23
  %25 = fpext float %24 to double
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x float], [8 x float]* %5, i64 0, i64 %27
  %29 = load float, float* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = sitofp i32 %30 to float
  %32 = fadd float %29, %31
  %33 = fpext float %32 to double
  %34 = call double @sqrt(double %33) #5
  %35 = fdiv double %25, %34
  %36 = fptrunc double %35 to float
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x float], [8 x float]* %5, i64 0, i64 %38
  store float %36, float* %39, align 4
  br label %40

; <label>:40:                                     ; preds = %15
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %12

; <label>:43:                                     ; preds = %12
  ret void
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare double @sqrt(double) #3

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { builtin }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.1-svn334776-1~exp1~20190309042730.123 (branches/release_60)"}
