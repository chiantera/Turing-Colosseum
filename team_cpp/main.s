	.text
	.file	"main.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.globl	_Z10radix_sortPjm               # -- Begin function _Z10radix_sortPjm
	.p2align	4, 0x90
	.type	_Z10radix_sortPjm,@function
_Z10radix_sortPjm:                      # @_Z10radix_sortPjm
	.cfi_startproc
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB0_1
# %bb.2:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	leaq	(%rdi,%rsi,4), %rbx
	lzcntq	%rsi, %rax
	addl	%eax, %eax
	movl	$126, %edx
	subq	%rax, %rdx
	movq	%rdi, %r14
	movq	%rbx, %rsi
	callq	_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ # TAILCALL
.LBB0_1:
	.cfi_restore %rbx
	.cfi_restore %r14
	retq
.Lfunc_end0:
	.size	_Z10radix_sortPjm, .Lfunc_end0-_Z10radix_sortPjm
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$144, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	cmpl	$2, %edi
	jne	.LBB1_9
# %bb.1:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	open@PLT
	cmpl	$-1, %eax
	je	.LBB1_11
# %bb.2:
	movl	%eax, %ebp
	movq	%rsp, %rsi
	movl	%eax, %edi
	callq	fstat@PLT
	cmpl	$-1, %eax
	je	.LBB1_20
# %bb.3:
	movq	48(%rsp), %rbx
	xorl	%edi, %edi
	movq	%rbx, %rsi
	movl	$3, %edx
	movl	$32770, %ecx                    # imm = 0x8002
	movl	%ebp, %r8d
	xorl	%r9d, %r9d
	callq	mmap@PLT
	cmpq	$-1, %rax
	je	.LBB1_23
# %bb.4:
	movq	%rax, %r14
	movq	%rbx, %r12
	shrq	$2, %r12
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$3, %edx
	callq	madvise@PLT
	movl	%ebp, %edi
	callq	close@PLT
	cmpq	$4, %rbx
	jb	.LBB1_6
# %bb.5:
	leaq	(%r14,%r12,4), %r15
	lzcntq	%r12, %rax
	addl	%eax, %eax
	movl	$126, %edx
	subq	%rax, %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
.LBB1_6:
	movq	%rbx, %rax
	shrq	$3, %rax
	movq	%r12, %rcx
	subq	%rax, %rcx
	jbe	.LBB1_28
# %bb.7:
	cmpq	$16, %rcx
	jae	.LBB1_29
# %bb.8:
	xorl	%r15d, %r15d
	jmp	.LBB1_32
.LBB1_9:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str(%rip), %rsi
	movl	$7, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r14), %r14
	testq	%r14, %r14
	je	.LBB1_14
# %bb.10:
	movq	%r14, %rdi
	callq	strlen@PLT
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	jmp	.LBB1_15
.LBB1_11:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.2(%rip), %rsi
	movl	$19, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB1_39
# %bb.12:
	cmpb	$0, 56(%rbx)
	jne	.LBB1_17
.LBB1_18:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
	jmp	.LBB1_19
.LBB1_14:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$1, %esi
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LBB1_15:
	leaq	.L.str.1(%rip), %rsi
	movl	$13, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB1_39
# %bb.16:
	cmpb	$0, 56(%rbx)
	je	.LBB1_18
.LBB1_17:
	movzbl	67(%rbx), %eax
.LBB1_19:
	movsbl	%al, %esi
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	movl	$1, %eax
	jmp	.LBB1_38
.LBB1_20:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.3(%rip), %rsi
	movl	$23, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB1_39
# %bb.21:
	cmpb	$0, 56(%rbx)
	je	.LBB1_26
.LBB1_22:
	movzbl	67(%rbx), %eax
	jmp	.LBB1_27
.LBB1_23:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.4(%rip), %rsi
	movl	$19, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB1_39
# %bb.24:
	cmpb	$0, 56(%rbx)
	jne	.LBB1_22
.LBB1_26:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB1_27:
	movsbl	%al, %esi
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	movl	%ebp, %edi
	callq	close@PLT
	movl	$1, %eax
	jmp	.LBB1_38
.LBB1_28:
	xorl	%r15d, %r15d
	jmp	.LBB1_33
.LBB1_29:
	movq	%rcx, %rdx
	andq	$-16, %rdx
	leaq	48(%r14,%rax,4), %rsi
	addq	%rdx, %rax
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%edi, %edi
	vpxor	%xmm1, %xmm1, %xmm1
	vpxor	%xmm2, %xmm2, %xmm2
	vpxor	%xmm3, %xmm3, %xmm3
	.p2align	4, 0x90
.LBB1_30:                               # =>This Inner Loop Header: Depth=1
	vpmovzxdq	-48(%rsi,%rdi,4), %ymm4 # ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpaddq	%ymm4, %ymm0, %ymm0
	vpmovzxdq	-32(%rsi,%rdi,4), %ymm4 # ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpaddq	%ymm4, %ymm1, %ymm1
	vpmovzxdq	-16(%rsi,%rdi,4), %ymm4 # ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpaddq	%ymm4, %ymm2, %ymm2
	vpmovzxdq	(%rsi,%rdi,4), %ymm4    # ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpaddq	%ymm4, %ymm3, %ymm3
	addq	$16, %rdi
	cmpq	%rdi, %rdx
	jne	.LBB1_30
# %bb.31:
	vpaddq	%ymm0, %ymm1, %ymm0
	vpaddq	%ymm0, %ymm2, %ymm0
	vpaddq	%ymm0, %ymm3, %ymm0
	vextracti128	$1, %ymm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %r15
	cmpq	%rdx, %rcx
	je	.LBB1_33
	.p2align	4, 0x90
.LBB1_32:                               # =>This Inner Loop Header: Depth=1
	movl	(%r14,%rax,4), %ecx
	addq	%rcx, %r15
	incq	%rax
	cmpq	%rax, %r12
	jne	.LBB1_32
.LBB1_33:
	movq	_ZSt4cout@GOTPCREL(%rip), %r12
	leaq	.L.str.5(%rip), %rsi
	movl	$16, %edx
	movq	%r12, %rdi
	vzeroupper
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	_ZNSo9_M_insertImEERSoT_@PLT
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	movq	240(%rax,%rcx), %r15
	testq	%r15, %r15
	je	.LBB1_39
# %bb.34:
	cmpb	$0, 56(%r15)
	je	.LBB1_36
# %bb.35:
	movzbl	67(%r15), %ecx
	jmp	.LBB1_37
.LBB1_36:
	movq	%r15, %rdi
	movq	%rax, %r12
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r15), %rax
	movq	%r15, %rdi
	movl	$10, %esi
	callq	*48(%rax)
	movl	%eax, %ecx
	movq	%r12, %rax
.LBB1_37:
	movsbl	%cl, %esi
	movq	%rax, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	munmap@PLT
	xorl	%eax, %eax
.LBB1_38:
	addq	$144, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB1_39:
	.cfi_def_cfa_offset 192
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,comdat
	.weak	_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ # -- Begin function _ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	.p2align	4, 0x90
	.type	_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,@function
_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_: # @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	subq	%rdi, %rbp
	cmpq	$65, %rbp
	jl	.LBB2_38
# %bb.1:
	movq	%rdx, %r14
	movq	%rdi, %rbx
	leaq	4(%rdi), %r12
	movq	$-4, %r13
	subq	%rdi, %r13
	jmp	.LBB2_2
	.p2align	4, 0x90
.LBB2_37:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	movq	%r15, %rsi
	cmpq	$64, %rbp
	jle	.LBB2_38
.LBB2_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_31 Depth 2
                                        #       Child Loop BB2_32 Depth 3
                                        #       Child Loop BB2_34 Depth 3
	subq	$1, %r14
	jb	.LBB2_3
# %bb.19:                               #   in Loop: Header=BB2_2 Depth=1
	shrq	$3, %rbp
	movl	4(%rbx), %ecx
	movl	(%rbx,%rbp,4), %edx
	movl	-4(%rsi), %eax
	cmpl	%edx, %ecx
	jae	.LBB2_25
# %bb.20:                               #   in Loop: Header=BB2_2 Depth=1
	cmpl	%eax, %edx
	jae	.LBB2_22
# %bb.21:                               #   in Loop: Header=BB2_2 Depth=1
	movl	(%rbx), %eax
	movl	%edx, (%rbx)
	movl	%eax, (%rbx,%rbp,4)
	jmp	.LBB2_30
	.p2align	4, 0x90
.LBB2_25:                               #   in Loop: Header=BB2_2 Depth=1
	cmpl	%eax, %ecx
	jae	.LBB2_27
# %bb.26:                               #   in Loop: Header=BB2_2 Depth=1
	movl	(%rbx), %eax
	movl	%ecx, (%rbx)
	movl	%eax, 4(%rbx)
	jmp	.LBB2_30
	.p2align	4, 0x90
.LBB2_22:                               #   in Loop: Header=BB2_2 Depth=1
	movl	(%rbx), %edx
	cmpl	%eax, %ecx
	jae	.LBB2_24
# %bb.23:                               #   in Loop: Header=BB2_2 Depth=1
	movl	%eax, (%rbx)
	movl	%edx, -4(%rsi)
	jmp	.LBB2_30
	.p2align	4, 0x90
.LBB2_27:                               #   in Loop: Header=BB2_2 Depth=1
	movl	(%rbx), %ecx
	cmpl	%eax, %edx
	jae	.LBB2_29
# %bb.28:                               #   in Loop: Header=BB2_2 Depth=1
	movl	%eax, (%rbx)
	movl	%ecx, -4(%rsi)
	jmp	.LBB2_30
.LBB2_24:                               #   in Loop: Header=BB2_2 Depth=1
	movl	%ecx, (%rbx)
	movl	%edx, 4(%rbx)
	jmp	.LBB2_30
.LBB2_29:                               #   in Loop: Header=BB2_2 Depth=1
	movl	%edx, (%rbx)
	movl	%ecx, (%rbx,%rbp,4)
	.p2align	4, 0x90
.LBB2_30:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rsi, %rax
	movq	%r12, %rcx
	.p2align	4, 0x90
.LBB2_31:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_32 Depth 3
                                        #       Child Loop BB2_34 Depth 3
	movl	(%rbx), %edx
	leaq	(%r13,%rcx), %rbp
	.p2align	4, 0x90
.LBB2_32:                               #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rcx), %edi
	addq	$4, %rcx
	addq	$4, %rbp
	cmpl	%edx, %edi
	jb	.LBB2_32
# %bb.33:                               #   in Loop: Header=BB2_31 Depth=2
	leaq	-4(%rcx), %r15
	.p2align	4, 0x90
.LBB2_34:                               #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-4(%rax), %r8d
	addq	$-4, %rax
	cmpl	%r8d, %edx
	jb	.LBB2_34
# %bb.35:                               #   in Loop: Header=BB2_31 Depth=2
	cmpq	%rax, %r15
	jae	.LBB2_37
# %bb.36:                               #   in Loop: Header=BB2_31 Depth=2
	movl	%r8d, (%r15)
	movl	%edi, (%rax)
	jmp	.LBB2_31
.LBB2_3:
	leaq	7(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%rsi, %r14
	callq	_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	jmp	.LBB2_4
	.p2align	4, 0x90
.LBB2_17:                               #   in Loop: Header=BB2_4 Depth=1
	xorl	%edx, %edx
.LBB2_18:                               #   in Loop: Header=BB2_4 Depth=1
	movl	%eax, (%rbx,%rdx,4)
	cmpq	$4, %rcx
	jle	.LBB2_38
.LBB2_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #     Child Loop BB2_15 Depth 2
	movl	-4(%r14), %eax
	movl	(%rbx), %edx
	movl	%edx, -4(%r14)
	addq	$-4, %r14
	movq	%r14, %rcx
	subq	%rbx, %rcx
	movq	%rcx, %rsi
	sarq	$2, %rsi
	cmpq	$3, %rsi
	jl	.LBB2_5
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	leaq	-1(%rsi), %rdx
	shrq	$63, %rdx
	leaq	-1(%rsi,%rdx), %rdi
	sarq	%rdi
	xorl	%r8d, %r8d
	jmp	.LBB2_7
	.p2align	4, 0x90
.LBB2_9:                                #   in Loop: Header=BB2_7 Depth=2
	leaq	2(%r8,%r8), %rdx
.LBB2_10:                               #   in Loop: Header=BB2_7 Depth=2
	movl	(%rbx,%rdx,4), %r9d
	movl	%r9d, (%rbx,%r8,4)
	movq	%rdx, %r8
	cmpq	%rdi, %rdx
	jge	.LBB2_11
.LBB2_7:                                #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r8,%r8), %rdx
	movl	8(%rbx,%rdx,4), %r9d
	cmpl	4(%rbx,%rdx,4), %r9d
	jae	.LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=2
	leaq	1(%r8,%r8), %rdx
	jmp	.LBB2_10
	.p2align	4, 0x90
.LBB2_5:                                #   in Loop: Header=BB2_4 Depth=1
	xorl	%edx, %edx
.LBB2_11:                               #   in Loop: Header=BB2_4 Depth=1
	testb	$4, %cl
	jne	.LBB2_14
# %bb.12:                               #   in Loop: Header=BB2_4 Depth=1
	addq	$-2, %rsi
	sarq	%rsi
	cmpq	%rsi, %rdx
	jne	.LBB2_14
# %bb.13:                               #   in Loop: Header=BB2_4 Depth=1
	leaq	(%rdx,%rdx), %rsi
	movl	4(%rbx,%rsi,4), %esi
	movl	%esi, (%rbx,%rdx,4)
	leaq	1(%rdx,%rdx), %rdx
.LBB2_14:                               #   in Loop: Header=BB2_4 Depth=1
	testq	%rdx, %rdx
	jle	.LBB2_18
	.p2align	4, 0x90
.LBB2_15:                               #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-1(%rdx), %rsi
	movq	%rsi, %rdi
	shrq	%rdi
	movl	(%rbx,%rdi,4), %r8d
	cmpl	%eax, %r8d
	jae	.LBB2_18
# %bb.16:                               #   in Loop: Header=BB2_15 Depth=2
	movl	%r8d, (%rbx,%rdx,4)
	movq	%rdi, %rdx
	cmpq	$1, %rsi
	ja	.LBB2_15
	jmp	.LBB2_17
.LBB2_38:
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_, .Lfunc_end2-_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,"axG",@progbits,_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,comdat
	.weak	_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ # -- Begin function _ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.p2align	4, 0x90
	.type	_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,@function
_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_: # @_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	%rsi, %rax
	subq	%rdi, %rax
	cmpq	$65, %rax
	jl	.LBB3_23
# %bb.1:
	movq	%r12, 16(%rsp)                  # 8-byte Spill
	leaq	4(%r14), %rbp
	leaq	8(%r14), %rsi
	movl	$4, %r12d
	movq	%rbp, 8(%rsp)                   # 8-byte Spill
	movq	%r14, %rbx
	jmp	.LBB3_4
	.p2align	4, 0x90
.LBB3_2:                                #   in Loop: Header=BB3_4 Depth=1
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	%rsi, %r15
	movq	%r14, %rsi
	callq	memmove@PLT
	movq	%r15, %rsi
	movq	%r14, %rax
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=1
	movl	%r13d, (%rax)
	addq	$8, %r12
	addq	$8, %rbp
	addq	$8, %rsi
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_9 Depth 2
                                        #     Child Loop BB3_14 Depth 2
	leaq	(%r14,%r12), %r15
	movl	(%r14,%r12), %r13d
	movl	(%r14), %eax
	cmpl	%eax, %r13d
	jae	.LBB3_7
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	cmpq	$5, %r12
	jb	.LBB3_15
# %bb.6:                                #   in Loop: Header=BB3_4 Depth=1
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	%rsi, %rbx
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	memmove@PLT
	movq	%rbx, %rsi
.LBB3_16:                               #   in Loop: Header=BB3_4 Depth=1
	movq	%r14, %rax
	movl	%r13d, (%rax)
	leaq	4(%r12), %rdx
	cmpq	$64, %rdx
	jne	.LBB3_11
	jmp	.LBB3_17
	.p2align	4, 0x90
.LBB3_7:                                #   in Loop: Header=BB3_4 Depth=1
	movl	(%rbx), %ecx
	movq	%r15, %rax
	cmpl	%ecx, %r13d
	jae	.LBB3_10
# %bb.8:                                #   in Loop: Header=BB3_4 Depth=1
	movq	%rbp, %rax
	.p2align	4, 0x90
.LBB3_9:                                #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, (%rax)
	movl	-8(%rax), %ecx
	addq	$-4, %rax
	cmpl	%ecx, %r13d
	jb	.LBB3_9
.LBB3_10:                               #   in Loop: Header=BB3_4 Depth=1
	movl	%r13d, (%rax)
	leaq	4(%r12), %rdx
	cmpq	$64, %rdx
	je	.LBB3_17
.LBB3_11:                               #   in Loop: Header=BB3_4 Depth=1
	leaq	(%r14,%rdx), %rbx
	movl	(%r14,%rdx), %r13d
	cmpl	(%r14), %r13d
	jb	.LBB3_2
# %bb.12:                               #   in Loop: Header=BB3_4 Depth=1
	movl	(%r15), %ecx
	movq	%rbx, %rax
	cmpl	%ecx, %r13d
	jae	.LBB3_3
# %bb.13:                               #   in Loop: Header=BB3_4 Depth=1
	movq	%rsi, %rax
	.p2align	4, 0x90
.LBB3_14:                               #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, (%rax)
	movl	-8(%rax), %ecx
	addq	$-4, %rax
	cmpl	%ecx, %r13d
	jb	.LBB3_14
	jmp	.LBB3_3
.LBB3_15:                               #   in Loop: Header=BB3_4 Depth=1
	movl	%eax, 4(%rbx)
	jmp	.LBB3_16
.LBB3_23:
	cmpq	%r12, %r14
	je	.LBB3_36
# %bb.24:
	leaq	4(%r14), %rax
	cmpq	%r12, %rax
	je	.LBB3_36
# %bb.25:
	movq	%r14, %r15
	jmp	.LBB3_30
	.p2align	4, 0x90
.LBB3_26:                               #   in Loop: Header=BB3_30 Depth=1
	movq	%r15, %rdx
	subq	%r14, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	cmpq	$2, %rax
	jl	.LBB3_34
# %bb.27:                               #   in Loop: Header=BB3_30 Depth=1
	shlq	$2, %rax
	subq	%rax, %rdi
	addq	$8, %rdi
	movq	%r14, %rsi
	callq	memmove@PLT
.LBB3_28:                               #   in Loop: Header=BB3_30 Depth=1
	movq	%r14, %rax
.LBB3_29:                               #   in Loop: Header=BB3_30 Depth=1
	movl	%ebx, (%rax)
	leaq	4(%r15), %rax
	cmpq	%r12, %rax
	je	.LBB3_36
.LBB3_30:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_33 Depth 2
	movq	%r15, %rdi
	movq	%rax, %r15
	movl	4(%rdi), %ebx
	movl	(%r14), %ecx
	cmpl	%ecx, %ebx
	jb	.LBB3_26
# %bb.31:                               #   in Loop: Header=BB3_30 Depth=1
	movl	(%rdi), %ecx
	movq	%r15, %rax
	cmpl	%ecx, %ebx
	jae	.LBB3_29
# %bb.32:                               #   in Loop: Header=BB3_30 Depth=1
	movq	%r15, %rax
	.p2align	4, 0x90
.LBB3_33:                               #   Parent Loop BB3_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, (%rax)
	movl	-8(%rax), %ecx
	addq	$-4, %rax
	cmpl	%ecx, %ebx
	jb	.LBB3_33
	jmp	.LBB3_29
.LBB3_34:                               #   in Loop: Header=BB3_30 Depth=1
	movq	%r14, %rax
	cmpq	$4, %rdx
	jne	.LBB3_29
# %bb.35:                               #   in Loop: Header=BB3_30 Depth=1
	movl	%ecx, 4(%rdi)
	jmp	.LBB3_28
.LBB3_17:
	addq	$64, %r14
	movq	16(%rsp), %rsi                  # 8-byte Reload
	jmp	.LBB3_19
	.p2align	4, 0x90
.LBB3_18:                               #   in Loop: Header=BB3_19 Depth=1
	movl	%eax, (%rdx)
	addq	$4, %r14
.LBB3_19:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_22 Depth 2
	cmpq	%rsi, %r14
	je	.LBB3_36
# %bb.20:                               #   in Loop: Header=BB3_19 Depth=1
	movl	-4(%r14), %ecx
	movl	(%r14), %eax
	movq	%r14, %rdx
	cmpl	%ecx, %eax
	jae	.LBB3_18
# %bb.21:                               #   in Loop: Header=BB3_19 Depth=1
	movq	%r14, %rdx
	.p2align	4, 0x90
.LBB3_22:                               #   Parent Loop BB3_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, (%rdx)
	movl	-8(%rdx), %ecx
	addq	$-4, %rdx
	cmpl	%ecx, %eax
	jb	.LBB3_22
	jmp	.LBB3_18
.LBB3_36:
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_, .Lfunc_end3-_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,"axG",@progbits,_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,comdat
	.weak	_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ # -- Begin function _ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.p2align	4, 0x90
	.type	_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,@function
_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_: # @_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.cfi_startproc
# %bb.0:
	subq	%rdi, %rsi
	movq	%rsi, %rax
	sarq	$2, %rax
	cmpq	$2, %rax
	jge	.LBB4_2
.LBB4_1:
	retq
.LBB4_2:
	leaq	-2(%rax), %rdx
	movq	%rdx, %rcx
	shrq	%rcx
	decq	%rax
	shrq	%rax
	testb	$4, %sil
	jne	.LBB4_20
# %bb.3:
	orq	$1, %rdx
	movq	%rcx, %rsi
	jmp	.LBB4_6
	.p2align	4, 0x90
.LBB4_4:                                #   in Loop: Header=BB4_6 Depth=1
	movq	%r9, %r10
.LBB4_5:                                #   in Loop: Header=BB4_6 Depth=1
	movl	%r8d, (%rdi,%r10,4)
	subq	$1, %rsi
	jb	.LBB4_1
.LBB4_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
                                        #     Child Loop BB4_15 Depth 2
	movl	(%rdi,%rsi,4), %r8d
	movq	%rsi, %r9
	cmpq	%rsi, %rax
	jle	.LBB4_12
# %bb.7:                                #   in Loop: Header=BB4_6 Depth=1
	movq	%rsi, %r10
	jmp	.LBB4_10
	.p2align	4, 0x90
.LBB4_8:                                #   in Loop: Header=BB4_10 Depth=2
	leaq	2(%r10,%r10), %r9
.LBB4_9:                                #   in Loop: Header=BB4_10 Depth=2
	movl	(%rdi,%r9,4), %r11d
	movl	%r11d, (%rdi,%r10,4)
	movq	%r9, %r10
	cmpq	%rax, %r9
	jge	.LBB4_12
.LBB4_10:                               #   Parent Loop BB4_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r10,%r10), %r9
	movl	8(%rdi,%r9,4), %r11d
	cmpl	4(%rdi,%r9,4), %r11d
	jae	.LBB4_8
# %bb.11:                               #   in Loop: Header=BB4_10 Depth=2
	leaq	1(%r10,%r10), %r9
	jmp	.LBB4_9
	.p2align	4, 0x90
.LBB4_12:                               #   in Loop: Header=BB4_6 Depth=1
	cmpq	%rcx, %r9
	jne	.LBB4_14
# %bb.13:                               #   in Loop: Header=BB4_6 Depth=1
	movl	(%rdi,%rdx,4), %r9d
	movl	%r9d, (%rdi,%rcx,4)
	movq	%rdx, %r9
.LBB4_14:                               #   in Loop: Header=BB4_6 Depth=1
	cmpq	%rsi, %r9
	jle	.LBB4_4
	.p2align	4, 0x90
.LBB4_15:                               #   Parent Loop BB4_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-1(%r9), %r10
	shrq	$63, %r10
	leaq	-1(%r9,%r10), %r10
	sarq	%r10
	movl	(%rdi,%r10,4), %r11d
	cmpl	%r8d, %r11d
	jae	.LBB4_4
# %bb.16:                               #   in Loop: Header=BB4_15 Depth=2
	movl	%r11d, (%rdi,%r9,4)
	movq	%r10, %r9
	cmpq	%rsi, %r10
	jg	.LBB4_15
	jmp	.LBB4_5
	.p2align	4, 0x90
.LBB4_18:                               #   in Loop: Header=BB4_20 Depth=1
	movq	%rsi, %r8
.LBB4_19:                               #   in Loop: Header=BB4_20 Depth=1
	movl	%edx, (%rdi,%r8,4)
	subq	$1, %rcx
	jb	.LBB4_1
.LBB4_20:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_24 Depth 2
                                        #     Child Loop BB4_27 Depth 2
	movl	(%rdi,%rcx,4), %edx
	movq	%rcx, %r8
	cmpq	%rcx, %rax
	jle	.LBB4_19
# %bb.21:                               #   in Loop: Header=BB4_20 Depth=1
	movq	%rcx, %r8
	jmp	.LBB4_24
	.p2align	4, 0x90
.LBB4_22:                               #   in Loop: Header=BB4_24 Depth=2
	leaq	2(%r8,%r8), %rsi
.LBB4_23:                               #   in Loop: Header=BB4_24 Depth=2
	movl	(%rdi,%rsi,4), %r9d
	movl	%r9d, (%rdi,%r8,4)
	movq	%rsi, %r8
	cmpq	%rax, %rsi
	jge	.LBB4_26
.LBB4_24:                               #   Parent Loop BB4_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r8,%r8), %rsi
	movl	8(%rdi,%rsi,4), %r9d
	cmpl	4(%rdi,%rsi,4), %r9d
	jae	.LBB4_22
# %bb.25:                               #   in Loop: Header=BB4_24 Depth=2
	leaq	1(%r8,%r8), %rsi
	jmp	.LBB4_23
	.p2align	4, 0x90
.LBB4_26:                               #   in Loop: Header=BB4_20 Depth=1
	cmpq	%rcx, %rsi
	jle	.LBB4_18
	.p2align	4, 0x90
.LBB4_27:                               #   Parent Loop BB4_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-1(%rsi), %r8
	shrq	$63, %r8
	leaq	-1(%rsi,%r8), %r8
	sarq	%r8
	movl	(%rdi,%r8,4), %r9d
	cmpl	%edx, %r9d
	jae	.LBB4_18
# %bb.28:                               #   in Loop: Header=BB4_27 Depth=2
	movl	%r9d, (%rdi,%rsi,4)
	movq	%r8, %rsi
	cmpq	%rcx, %r8
	jg	.LBB4_27
	jmp	.LBB4_19
.Lfunc_end4:
	.size	_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_, .Lfunc_end4-_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage: "
	.size	.L.str, 8

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" <input_file>"
	.size	.L.str.1, 14

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Failed to open file"
	.size	.L.str.2, 20

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Failed to get file size"
	.size	.L.str.3, 24

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Failed to mmap file"
	.size	.L.str.4, 20

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Sum of top 50%: "
	.size	.L.str.5, 17

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _ZSt4cerr
	.addrsig_sym _ZSt4cout
