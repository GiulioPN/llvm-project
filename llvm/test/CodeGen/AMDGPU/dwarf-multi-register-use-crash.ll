; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=amdgcn-amd-amdhsa -mcpu=gfx908 < %s | FileCheck %s

; Don't crash.

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare ptr @__kmpc_alloc_shared()

define weak_odr void @test(i32 %0) !dbg !34 {
; CHECK-LABEL: test:
; CHECK:       .Lfunc_begin0:
; CHECK-NEXT:    .loc 1 288 0 ; dummy:288:0
; CHECK-NEXT:    .cfi_sections .debug_frame
; CHECK-NEXT:    .cfi_startproc
; CHECK-NEXT:  ; %bb.0:
; CHECK-NEXT:    s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
; CHECK-NEXT:    s_mov_b32 s16, s33
; CHECK-NEXT:    s_mov_b32 s33, s32
; CHECK-NEXT:    s_or_saveexec_b64 s[18:19], -1
; CHECK-NEXT:    buffer_store_dword v41, off, s[0:3], s33 offset:4 ; 4-byte Folded Spill
; CHECK-NEXT:    s_mov_b64 exec, s[18:19]
; CHECK-NEXT:    v_writelane_b32 v41, s16, 16
; CHECK-NEXT:    v_writelane_b32 v41, s30, 0
; CHECK-NEXT:    v_writelane_b32 v41, s31, 1
; CHECK-NEXT:    v_writelane_b32 v41, s34, 2
; CHECK-NEXT:    v_writelane_b32 v41, s35, 3
; CHECK-NEXT:    v_writelane_b32 v41, s36, 4
; CHECK-NEXT:    v_writelane_b32 v41, s37, 5
; CHECK-NEXT:    v_writelane_b32 v41, s38, 6
; CHECK-NEXT:    v_writelane_b32 v41, s39, 7
; CHECK-NEXT:    v_writelane_b32 v41, s48, 8
; CHECK-NEXT:    v_writelane_b32 v41, s49, 9
; CHECK-NEXT:    v_writelane_b32 v41, s50, 10
; CHECK-NEXT:    v_writelane_b32 v41, s51, 11
; CHECK-NEXT:    v_writelane_b32 v41, s52, 12
; CHECK-NEXT:    s_addk_i32 s32, 0x400
; CHECK-NEXT:    v_writelane_b32 v41, s53, 13
; CHECK-NEXT:    v_writelane_b32 v41, s54, 14
; CHECK-NEXT:    s_mov_b64 s[48:49], s[4:5]
; CHECK-NEXT:    ;DEBUG_VALUE: dummy:dummy <- undef
; CHECK-NEXT:  .Ltmp0:
; CHECK-NEXT:    .loc 1 49 9 prologue_end ; dummy:49:9
; CHECK-NEXT:    s_getpc_b64 s[4:5]
; CHECK-NEXT:    s_add_u32 s4, s4, __kmpc_alloc_shared@gotpcrel32@lo+4
; CHECK-NEXT:    s_addc_u32 s5, s5, __kmpc_alloc_shared@gotpcrel32@hi+12
; CHECK-NEXT:    v_writelane_b32 v41, s55, 15
; CHECK-NEXT:    s_load_dwordx2 s[54:55], s[4:5], 0x0
; CHECK-NEXT:    s_mov_b64 s[4:5], s[48:49]
; CHECK-NEXT:    buffer_store_dword v40, off, s[0:3], s33 ; 4-byte Folded Spill
; CHECK-NEXT:    v_mov_b32_e32 v40, v31
; CHECK-NEXT:    s_mov_b32 s50, s15
; CHECK-NEXT:    s_mov_b32 s51, s14
; CHECK-NEXT:    s_mov_b32 s52, s13
; CHECK-NEXT:    s_mov_b32 s53, s12
; CHECK-NEXT:    s_mov_b64 s[34:35], s[10:11]
; CHECK-NEXT:    s_mov_b64 s[36:37], s[8:9]
; CHECK-NEXT:    s_mov_b64 s[38:39], s[6:7]
; CHECK-NEXT:    s_waitcnt lgkmcnt(0)
; CHECK-NEXT:    s_swappc_b64 s[30:31], s[54:55]
; CHECK-NEXT:    s_mov_b64 s[4:5], s[48:49]
; CHECK-NEXT:    s_mov_b64 s[6:7], s[38:39]
; CHECK-NEXT:    s_mov_b64 s[8:9], s[36:37]
; CHECK-NEXT:    s_mov_b64 s[10:11], s[34:35]
; CHECK-NEXT:    s_mov_b32 s12, s53
; CHECK-NEXT:    s_mov_b32 s13, s52
; CHECK-NEXT:    s_mov_b32 s14, s51
; CHECK-NEXT:    s_mov_b32 s15, s50
; CHECK-NEXT:    v_mov_b32_e32 v31, v40
; CHECK-NEXT:    s_swappc_b64 s[30:31], s[54:55]
; CHECK-NEXT:  .Ltmp1:
; CHECK-NEXT:    ;DEBUG_VALUE: dummy:dummy <- [$vgpr0_vgpr1+0]
; CHECK-NEXT:    .loc 1 0 9 is_stmt 0 ; dummy:0:9
; CHECK-NEXT:    buffer_load_dword v40, off, s[0:3], s33 ; 4-byte Folded Reload
; CHECK-NEXT:    v_mov_b32_e32 v2, 0
; CHECK-NEXT:    flat_store_dword v[0:1], v2
; CHECK-NEXT:    v_readlane_b32 s55, v41, 15
; CHECK-NEXT:    v_readlane_b32 s54, v41, 14
; CHECK-NEXT:    v_readlane_b32 s53, v41, 13
; CHECK-NEXT:    v_readlane_b32 s52, v41, 12
; CHECK-NEXT:    v_readlane_b32 s51, v41, 11
; CHECK-NEXT:    v_readlane_b32 s50, v41, 10
; CHECK-NEXT:    v_readlane_b32 s49, v41, 9
; CHECK-NEXT:    v_readlane_b32 s48, v41, 8
; CHECK-NEXT:    v_readlane_b32 s39, v41, 7
; CHECK-NEXT:    v_readlane_b32 s38, v41, 6
; CHECK-NEXT:    v_readlane_b32 s37, v41, 5
; CHECK-NEXT:    v_readlane_b32 s36, v41, 4
; CHECK-NEXT:    v_readlane_b32 s35, v41, 3
; CHECK-NEXT:    v_readlane_b32 s34, v41, 2
; CHECK-NEXT:    v_readlane_b32 s31, v41, 1
; CHECK-NEXT:    v_readlane_b32 s30, v41, 0
; CHECK-NEXT:    s_mov_b32 s32, s33
; CHECK-NEXT:    v_readlane_b32 s4, v41, 16
; CHECK-NEXT:    s_or_saveexec_b64 s[6:7], -1
; CHECK-NEXT:    buffer_load_dword v41, off, s[0:3], s33 offset:4 ; 4-byte Folded Reload
; CHECK-NEXT:    s_mov_b64 exec, s[6:7]
; CHECK-NEXT:    s_mov_b32 s33, s4
; CHECK-NEXT:    s_waitcnt vmcnt(0) lgkmcnt(0)
; CHECK-NEXT:    s_setpc_b64 s[30:31]
; CHECK-NEXT:  .Ltmp2:
  %2 = call ptr @__kmpc_alloc_shared(), !dbg !43
  %3 = call ptr @__kmpc_alloc_shared()
  store i32 0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !40, metadata !DIExpression()), !dbg !43
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !44}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 15.0.0 (https://github.com/llvm/llvm-project.git 05256c8d95e0b15bcc502d595c15d902ff520f97)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !8, imports: !20, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "dummy", directory: "dummy", checksumkind: CSK_MD5, checksum: "b67bec84bdce3730b4a6f2ed8d50b85c")
!2 = !{!3, !3, !3}
!3 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "dummy", scope: !4, file: !1, line: 49, baseType: !5, size: 32, elements: !6, identifier: "dummy")
!4 = !DINamespace(name: "dummy", scope: null)
!5 = !DIBasicType(name: "dummy", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7}
!7 = !DIEnumerator(name: "dummy", value: 0, isUnsigned: true)
!8 = !{!5, !9, !11, !12, !13, !14}
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dummy", scope: !10, file: !1, line: 49, size: 32, flags: DIFlagEnumClass, elements: !6, identifier: "dummy")
!10 = !DINamespace(name: "dummy", scope: !4)
!11 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "dummy", scope: !4, file: !1, line: 49, size: 32, flags: DIFlagEnumClass, elements: !6, identifier: "dummy")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dummy", scope: !4, file: !1, line: 49, size: 32, flags: DIFlagEnumClass, elements: !6, identifier: "dummy")
!13 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "dummy", scope: !10, file: !1, line: 49, size: 32, flags: DIFlagEnumClass, elements: !6, identifier: "dummy")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dummy", scope: !10, file: !1, line: 49, size: 32, flags: DIFlagEnumClass, elements: !6, templateParams: !15, identifier: "dummy")
!15 = !{!16, !17, !19}
!16 = !DITemplateTypeParameter(name: "dummy", type: !11)
!17 = !DITemplateTypeParameter(name: "dummy", type: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "dummy", scope: !10, file: !1, line: 49, size: 32, flags: DIFlagEnumClass, identifier: "dummy")
!19 = !DITemplateValueParameter(type: !5, value: i1 true)
!20 = !{!21}
!21 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !4, entity: !22, file: !1, line: 49)
!22 = !DISubprogram(name: "dummy", scope: !4, file: !1, line: 49, type: !23, flags: DIFlagEnumClass, spFlags: DISPFlagOptimized)
!23 = !DISubroutineType(types: !24)
!24 = !{!5}
!25 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 15.0.0 (https://github.com/llvm/llvm-project.git 05256c8d95e0b15bcc502d595c15d902ff520f97)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, imports: !20, splitDebugInlining: false, nameTableKind: None)
!26 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 15.0.0 (https://github.com/llvm/llvm-project.git 05256c8d95e0b15bcc502d595c15d902ff520f97)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !24, imports: !20, splitDebugInlining: false, nameTableKind: None)
!27 = !{i32 7, !"Dwarf Version", i32 5}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 50}
!31 = !{i32 7, !"openmp-device", i32 50}
!32 = !{i32 7, !"PIC Level", i32 2}
!34 = distinct !DISubprogram(name: "dummy", linkageName: "dummy", scope: !35, file: !1, line: 49, type: !23, scopeLine: 288, flags: DIFlagEnumClass, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !36, retainedNodes: !37)
!35 = distinct !DICompositeType(tag: DW_TAG_class_type, file: !1, line: 49, size: 32, flags: DIFlagEnumClass, elements: !6, identifier: "dummy")
!36 = !DISubprogram(name: "dummy", scope: !35, file: !1, line: 49, type: !23, scopeLine: 288, flags: DIFlagEnumClass, spFlags: DISPFlagOptimized)
!37 = !{!38, !40, !41, !42}
!38 = !DILocalVariable(name: "dummy", arg: 1, scope: !34, type: !39, flags: DIFlagEnumClass)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 32)
!40 = !DILocalVariable(name: "dummy", arg: 2, scope: !34, file: !1, line: 49, type: !5)
!41 = !DILocalVariable(name: "dummy", arg: 3, scope: !34, file: !1, line: 49, type: !5)
!42 = !DILocalVariable(name: "dummy", arg: 4, scope: !34, file: !1, line: 49, type: !5)
!43 = !DILocation(line: 49, column: 9, scope: !34)
!44 = !{i32 1, !"amdhsa_code_object_version", i32 500}
