; ModuleID = 'test1.cpp'
source_filename = "test1.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32 (...)**, i32, [4 x i8] }

@arr = dso_local global [8 x float] [float 0x3FB99999A0000000, float 0x3FC99999A0000000, float 0x3FD3333340000000, float 0x3FD99999A0000000, float 5.000000e-01, float 0x3FE3333340000000, float 0x3FE6666660000000, float 0x3FE99999A0000000], align 16, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_Z1fP1Si(%struct.S* %s, i32 %i) #0 !dbg !14 {
entry:
  %s.addr = alloca %struct.S*, align 8
  %i.addr = alloca i32, align 4
  store %struct.S* %s, %struct.S** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.S** %s.addr, metadata !21, metadata !DIExpression()), !dbg !22
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !23, metadata !DIExpression()), !dbg !24
  ret void, !dbg !25
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "arr", scope: !2, file: !3, line: 7, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !3, producer: "clang version 9.0.0 (http://llvm.org/git/clang.git 44d861c1f7099970b74af95998dc36e99eeb1f08) (http://llvm.org/git/llvm.git 911c696716fbcfc90f4f105f81ffacca4f7868ea)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, nameTableKind: None)
!3 = !DIFile(filename: "test1.cpp", directory: "/home/amcsgpu/PK/Experiments/Allen_GSoC_Test")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !8)
!7 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!8 = !{!9}
!9 = !DISubrange(count: 8)
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 9.0.0 (http://llvm.org/git/clang.git 44d861c1f7099970b74af95998dc36e99eeb1f08) (http://llvm.org/git/llvm.git 911c696716fbcfc90f4f105f81ffacca4f7868ea)"}
!14 = distinct !DISubprogram(name: "f", linkageName: "_Z1fP1Si", scope: !3, file: !3, line: 9, type: !15, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !20}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "S", file: !3, line: 5, baseType: !19)
!19 = !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 1, flags: DIFlagFwdDecl, identifier: "_ZTS1S")
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DILocalVariable(name: "s", arg: 1, scope: !14, file: !3, line: 9, type: !17)
!22 = !DILocation(line: 9, column: 11, scope: !14)
!23 = !DILocalVariable(name: "i", arg: 2, scope: !14, file: !3, line: 9, type: !20)
!24 = !DILocation(line: 9, column: 18, scope: !14)
!25 = !DILocation(line: 11, column: 1, scope: !14)
