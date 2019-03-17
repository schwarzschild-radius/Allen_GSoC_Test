; ModuleID = 'test.cpp'
source_filename = "test.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Complex = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define i64 @_Z3add7ComplexS_(i64, i64) #0 {
  %3 = alloca %struct.Complex, align 4
  %4 = alloca %struct.Complex, align 4
  %5 = alloca %struct.Complex, align 4
  %6 = bitcast %struct.Complex* %4 to i64*
  store i64 %0, i64* %6, align 4
  %7 = bitcast %struct.Complex* %5 to i64*
  store i64 %1, i64* %7, align 4
  %8 = getelementptr inbounds %struct.Complex, %struct.Complex* %4, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.Complex, %struct.Complex* %5, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %9, %11
  %13 = getelementptr inbounds %struct.Complex, %struct.Complex* %3, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.Complex, %struct.Complex* %4, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.Complex, %struct.Complex* %5, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %15, %17
  %19 = getelementptr inbounds %struct.Complex, %struct.Complex* %3, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = bitcast %struct.Complex* %3 to i64*
  %21 = load i64, i64* %20, align 4
  ret i64 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.1-svn334776-1~exp1~20190309042730.123 (branches/release_60)"}
