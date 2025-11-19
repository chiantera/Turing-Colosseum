	.file	"main.cpp"
# GNU C++17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -march=icelake-server -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -mno-sse4a -mno-fma4 -mno-xop -mfma -mavx512f -mbmi -mbmi2 -maes -mpclmul -mavx512vl -mavx512bw -mavx512dq -mavx512cd -mno-avx512er -mno-avx512pf -mavx512vbmi -mavx512ifma -mno-avx5124vnniw -mno-avx5124fmaps -mavx512vpopcntdq -mavx512vbmi2 -mgfni -mvpclmulqdq -mavx512vnni -mavx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mno-clzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mhle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mno-pku -mno-prefetchwt1 -mprfchw -mno-ptwrite -mrdpid -mrdrnd -mrdseed -mrtm -mno-serialize -mno-sgx -msha -mno-shstk -mno-tbm -mno-tsxldtrk -mvaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 -mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxadd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex --param=l1-cache-size=48 --param=l1-cache-line-size=64 --param=l2-cache-size=55296 -mtune=icelake-server -O3 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.p2align 4
	.type	_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.isra.0, @function
_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.isra.0:
.LFB9692:
	.cfi_startproc
# /usr/include/c++/13/bits/stl_heap.h:229:       while (__secondChild < (__len - 1) / 2)
	leaq	-1(%rdx), %rax	#, tmp131
# /usr/include/c++/13/bits/stl_heap.h:224:     __adjust_heap(_RandomAccessIterator __first, _Distance __holeIndex,
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# /usr/include/c++/13/bits/stl_heap.h:238:       if ((__len & 1) == 0 && __secondChild == (__len - 2) / 2)
	movq	%rdx, %rbp	# __len, _163
# /usr/include/c++/13/bits/stl_heap.h:224:     __adjust_heap(_RandomAccessIterator __first, _Distance __holeIndex,
	movq	%rsi, %r8	# tmp155, __holeIndex
# /usr/include/c++/13/bits/stl_heap.h:229:       while (__secondChild < (__len - 1) / 2)
	movq	%rax, %r11	# tmp131, tmp132
# /usr/include/c++/13/bits/stl_heap.h:224:     __adjust_heap(_RandomAccessIterator __first, _Distance __holeIndex,
	movl	%ecx, %r9d	# tmp157, __value
# /usr/include/c++/13/bits/stl_heap.h:238:       if ((__len & 1) == 0 && __secondChild == (__len - 2) / 2)
	andl	$1, %ebp	#, _163
# /usr/include/c++/13/bits/stl_heap.h:229:       while (__secondChild < (__len - 1) / 2)
	shrq	$63, %r11	#, tmp132
	addq	%rax, %r11	# tmp131, tmp133
# /usr/include/c++/13/bits/stl_heap.h:224:     __adjust_heap(_RandomAccessIterator __first, _Distance __holeIndex,
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
# /usr/include/c++/13/bits/stl_heap.h:224:     __adjust_heap(_RandomAccessIterator __first, _Distance __holeIndex,
	movq	%rdx, %rbx	# tmp156, __len
# /usr/include/c++/13/bits/stl_heap.h:229:       while (__secondChild < (__len - 1) / 2)
	sarq	%r11	# tmp134
# /usr/include/c++/13/bits/stl_heap.h:229:       while (__secondChild < (__len - 1) / 2)
	cmpq	%r11, %rsi	# tmp134, __holeIndex
	jl	.L6	#,
	jmp	.L2	#
	.p2align 4,,10
	.p2align 3
.L17:
# /usr/include/c++/13/bits/stl_heap.h:234: 	    __secondChild--;
	decq	%rax	# __holeIndex
# /usr/include/c++/13/bits/stl_heap.h:235: 	  *(__first + __holeIndex) = _GLIBCXX_MOVE(*(__first + __secondChild));
	leaq	(%rdi,%rax,4), %rcx	#, prephitmp_77
# /usr/include/c++/13/bits/stl_heap.h:235: 	  *(__first + __holeIndex) = _GLIBCXX_MOVE(*(__first + __secondChild));
	movl	(%rcx), %edx	# MEM[(type &)_101], pretmp_100
	movl	%edx, (%rdi,%rsi,4)	# pretmp_100, *_147
# /usr/include/c++/13/bits/stl_heap.h:229:       while (__secondChild < (__len - 1) / 2)
	cmpq	%rax, %r11	# __holeIndex, tmp134
	jle	.L5	#,
.L4:
	movq	%rax, %rsi	# __holeIndex, __holeIndex
.L6:
# /usr/include/c++/13/bits/stl_heap.h:231: 	  __secondChild = 2 * (__secondChild + 1);
	leaq	1(%rsi), %rdx	#, tmp135
# /usr/include/c++/13/bits/stl_heap.h:231: 	  __secondChild = 2 * (__secondChild + 1);
	leaq	(%rdx,%rdx), %rax	#, __holeIndex
# /usr/include/c++/13/bits/stl_heap.h:233: 		     __first + (__secondChild - 1)))
	salq	$3, %rdx	#, _121
# /usr/include/c++/13/bits/stl_heap.h:232: 	  if (__comp(__first + __secondChild,
	leaq	(%rdi,%rdx), %rcx	#, prephitmp_77
# /usr/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	movl	(%rcx), %r10d	# *_110, _109
# /usr/include/c++/13/bits/stl_heap.h:232: 	  if (__comp(__first + __secondChild,
	cmpl	-4(%rdi,%rdx), %r10d	# *_111, _109
	jb	.L17	#,
# /usr/include/c++/13/bits/stl_heap.h:235: 	  *(__first + __holeIndex) = _GLIBCXX_MOVE(*(__first + __secondChild));
	movl	%r10d, (%rdi,%rsi,4)	# _109, *_94
# /usr/include/c++/13/bits/stl_heap.h:229:       while (__secondChild < (__len - 1) / 2)
	cmpq	%rax, %r11	# __holeIndex, tmp134
	jg	.L4	#,
.L5:
# /usr/include/c++/13/bits/stl_heap.h:238:       if ((__len & 1) == 0 && __secondChild == (__len - 2) / 2)
	testq	%rbp, %rbp	# _163
	je	.L10	#,
.L7:
# /usr/include/c++/13/bits/stl_heap.h:139:       _Distance __parent = (__holeIndex - 1) / 2;
	leaq	-1(%rax), %rdx	#, tmp144
# /usr/include/c++/13/bits/stl_heap.h:139:       _Distance __parent = (__holeIndex - 1) / 2;
	movq	%rdx, %rsi	# tmp144, tmp145
	shrq	$63, %rsi	#, tmp145
	addq	%rdx, %rsi	# tmp144, tmp146
	sarq	%rsi	# __parent
# /usr/include/c++/13/bits/stl_heap.h:140:       while (__holeIndex > __topIndex && __comp(__first + __parent, __value))
	cmpq	%r8, %rax	# __holeIndex, __holeIndex
	jg	.L9	#,
	jmp	.L8	#
	.p2align 4,,10
	.p2align 3
.L19:
# /usr/include/c++/13/bits/stl_heap.h:142: 	  *(__first + __holeIndex) = _GLIBCXX_MOVE(*(__first + __parent));
	movl	%edx, (%rcx)	# _48, *_159
# /usr/include/c++/13/bits/stl_heap.h:144: 	  __parent = (__holeIndex - 1) / 2;
	leaq	-1(%rsi), %rdx	#, _53
# /usr/include/c++/13/bits/stl_heap.h:144: 	  __parent = (__holeIndex - 1) / 2;
	movq	%rdx, %rax	# _53, tmp150
	shrq	$63, %rax	#, tmp150
	addq	%rdx, %rax	# _53, tmp151
	sarq	%rax	# tmp151
	movq	%rax, %rdx	# tmp151, tmp152
	movq	%rsi, %rax	# __parent, __holeIndex
# /usr/include/c++/13/bits/stl_heap.h:140:       while (__holeIndex > __topIndex && __comp(__first + __parent, __value))
	cmpq	%rsi, %r8	# __holeIndex, __holeIndex
	jge	.L18	#,
	movq	%rdx, %rsi	# tmp152, __parent
.L9:
# /usr/include/c++/13/bits/stl_heap.h:140:       while (__holeIndex > __topIndex && __comp(__first + __parent, __value))
	leaq	(%rdi,%rsi,4), %r10	#, _47
# /usr/include/c++/13/bits/stl_heap.h:142: 	  *(__first + __holeIndex) = _GLIBCXX_MOVE(*(__first + __parent));
	leaq	(%rdi,%rax,4), %rcx	#, prephitmp_77
# /usr/include/c++/13/bits/predefined_ops.h:69:       { return *__it < __val; }
	movl	(%r10), %edx	# *_47, _48
# /usr/include/c++/13/bits/stl_heap.h:140:       while (__holeIndex > __topIndex && __comp(__first + __parent, __value))
	cmpl	%r9d, %edx	# __value, _48
	jb	.L19	#,
.L8:
# /usr/include/c++/13/bits/stl_heap.h:146:       *(__first + __holeIndex) = _GLIBCXX_MOVE(__value);
	movl	%r9d, (%rcx)	# __value, *prephitmp_156
# /usr/include/c++/13/bits/stl_heap.h:249:     }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
# /usr/include/c++/13/bits/stl_heap.h:146:       *(__first + __holeIndex) = _GLIBCXX_MOVE(__value);
	leaq	(%rdi,%rsi,4), %rcx	#, prephitmp_77
# /usr/include/c++/13/bits/stl_heap.h:238:       if ((__len & 1) == 0 && __secondChild == (__len - 2) / 2)
	testq	%rbp, %rbp	# _163
	jne	.L8	#,
	movq	%r8, %rax	# __holeIndex, __holeIndex
	.p2align 4,,10
	.p2align 3
.L10:
# /usr/include/c++/13/bits/stl_heap.h:238:       if ((__len & 1) == 0 && __secondChild == (__len - 2) / 2)
	subq	$2, %rbx	#, tmp137
# /usr/include/c++/13/bits/stl_heap.h:238:       if ((__len & 1) == 0 && __secondChild == (__len - 2) / 2)
	movq	%rbx, %rdx	# tmp137, tmp139
	shrq	$63, %rdx	#, tmp139
	addq	%rbx, %rdx	# tmp137, tmp140
	sarq	%rdx	# tmp141
# /usr/include/c++/13/bits/stl_heap.h:238:       if ((__len & 1) == 0 && __secondChild == (__len - 2) / 2)
	cmpq	%rdx, %rax	# tmp141, __holeIndex
	jne	.L7	#,
# /usr/include/c++/13/bits/stl_heap.h:240: 	  __secondChild = 2 * (__secondChild + 1);
	leaq	2(%rax,%rax), %rax	#, __secondChild
# /usr/include/c++/13/bits/stl_heap.h:241: 	  *(__first + __holeIndex) = _GLIBCXX_MOVE(*(__first
	movl	-4(%rdi,%rax,4), %edx	# MEM[(type &)_33], _37
# /usr/include/c++/13/bits/stl_heap.h:243: 	  __holeIndex = __secondChild - 1;
	decq	%rax	# __holeIndex
# /usr/include/c++/13/bits/stl_heap.h:241: 	  *(__first + __holeIndex) = _GLIBCXX_MOVE(*(__first
	movl	%edx, (%rcx)	# _37, *prephitmp_132
# /usr/include/c++/13/bits/stl_heap.h:146:       *(__first + __holeIndex) = _GLIBCXX_MOVE(__value);
	leaq	(%rdi,%rax,4), %rcx	#, prephitmp_77
	jmp	.L7	#
	.p2align 4,,10
	.p2align 3
.L18:
	movq	%r10, %rcx	# _47, prephitmp_77
# /usr/include/c++/13/bits/stl_heap.h:146:       *(__first + __holeIndex) = _GLIBCXX_MOVE(__value);
	movl	%r9d, (%rcx)	# __value, *prephitmp_156
# /usr/include/c++/13/bits/stl_heap.h:249:     }
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE9692:
	.size	_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.isra.0, .-_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.isra.0
	.p2align 4
	.type	_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.isra.0, @function
_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.isra.0:
.LFB9693:
	.cfi_startproc
# /usr/include/c++/13/bits/stl_algo.h:1815:       if (__first == __last) return;
	cmpq	%rsi, %rdi	# __last, __first
	je	.L34	#,
# /usr/include/c++/13/bits/stl_algo.h:1812:     __insertion_sort(_RandomAccessIterator __first,
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rdi, %r14	# tmp104, __first
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
# /usr/include/c++/13/bits/stl_algo.h:1817:       for (_RandomAccessIterator __i = __first + 1; __i != __last; ++__i)
	leaq	4(%rdi), %r13	#, __i
# /usr/include/c++/13/bits/stl_algo.h:1812:     __insertion_sort(_RandomAccessIterator __first,
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx	# tmp105, __last
# /usr/include/c++/13/bits/stl_algo.h:1817:       for (_RandomAccessIterator __i = __first + 1; __i != __last; ++__i)
	cmpq	%r13, %rsi	# __i, __last
	je	.L32	#,
# /usr/include/c++/13/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	movl	$4, %ebp	#, tmp103
	jmp	.L29	#
	.p2align 4,,10
	.p2align 3
.L37:
# /usr/include/c++/13/bits/stl_algobase.h:746: 	  const ptrdiff_t _Num = __last - __first;
	movq	%rdi, %rdx	# __last, _24
	subq	%r14, %rdx	# __first, _24
# /usr/include/c++/13/bits/stl_algobase.h:747: 	  if (__builtin_expect(_Num > 1, true))
	cmpq	$4, %rdx	#, _24
	jle	.L24	#,
# /usr/include/c++/13/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	movq	%rbp, %rax	# tmp103, tmp99
# /usr/include/c++/13/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	movq	%r14, %rsi	# __first,
# /usr/include/c++/13/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	subq	%rdx, %rax	# _24, tmp99
	addq	%rax, %rdi	# tmp99, tmp101
# /usr/include/c++/13/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	call	memmove@PLT	#
.L25:
# /usr/include/c++/13/bits/stl_algo.h:1824: 	      *__first = _GLIBCXX_MOVE(__val);
	movl	%r12d, (%r14)	# _5, *__first_1(D)
# /usr/include/c++/13/bits/stl_algo.h:1817:       for (_RandomAccessIterator __i = __first + 1; __i != __last; ++__i)
	cmpq	%r13, %rbx	# __i, __last
	je	.L32	#,
.L29:
# /usr/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	movl	0(%r13), %r12d	# MEM[(unsigned int *)__i_34], _5
	movl	(%r14), %eax	# *__first_1(D), _6
	movq	%r13, %rdi	# __i, __last
# /usr/include/c++/13/bits/stl_algo.h:1823: 	      _GLIBCXX_MOVE_BACKWARD3(__first, __i, __i + 1);
	addq	$4, %r13	#, __i
# /usr/include/c++/13/bits/stl_algo.h:1819: 	  if (__comp(__i, __first))
	cmpl	%eax, %r12d	# _6, _5
	jb	.L37	#,
# /usr/include/c++/13/bits/predefined_ops.h:98:       { return __val < *__it; }
	movl	-8(%r13), %edx	# MEM[(unsigned int *)_13 + -8B], _9
# /usr/include/c++/13/bits/stl_algo.h:1798:       --__next;
	leaq	-8(%r13), %rax	#, __next
# /usr/include/c++/13/bits/stl_algo.h:1799:       while (__comp(__val, __next))
	cmpl	%edx, %r12d	# _9, _5
	jnb	.L27	#,
	.p2align 4,,10
	.p2align 3
.L28:
# /usr/include/c++/13/bits/stl_algo.h:1801: 	  *__last = _GLIBCXX_MOVE(*__next);
	movl	%edx, 4(%rax)	# _9, MEM[(unsigned int *)__next_39 + 4B]
	movq	%rax, %rdi	# __next, __last
# /usr/include/c++/13/bits/stl_algo.h:1803: 	  --__next;
	subq	$4, %rax	#, __next
# /usr/include/c++/13/bits/predefined_ops.h:98:       { return __val < *__it; }
	movl	(%rax), %edx	# MEM[(unsigned int *)__next_12], _9
# /usr/include/c++/13/bits/stl_algo.h:1799:       while (__comp(__val, __next))
	cmpl	%edx, %r12d	# _9, _5
	jb	.L28	#,
.L27:
# /usr/include/c++/13/bits/stl_algo.h:1805:       *__last = _GLIBCXX_MOVE(__val);
	movl	%r12d, (%rdi)	# _5, *__last_38
# /usr/include/c++/13/bits/stl_algo.h:1817:       for (_RandomAccessIterator __i = __first + 1; __i != __last; ++__i)
	cmpq	%r13, %rbx	# __i, __last
	jne	.L29	#,
.L32:
# /usr/include/c++/13/bits/stl_algo.h:1830:     }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
.L24:
	.cfi_restore_state
# /usr/include/c++/13/bits/stl_algobase.h:749: 	  else if (_Num == 1)
	jne	.L25	#,
# /usr/include/c++/13/bits/stl_algobase.h:423: 	{ *__to = std::move(*__from); }
	movl	%eax, -4(%r13)	# _6, MEM[(unsigned int *)_13 + -4B]
# /usr/include/c++/13/bits/stl_algobase.h:423: 	{ *__to = std::move(*__from); }
	jmp	.L25	#
.L34:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	ret	
	.cfi_endproc
.LFE9693:
	.size	_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.isra.0, .-_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.isra.0
	.p2align 4
	.type	_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.0, @function
_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.0:
.LFB9696:
	.cfi_startproc
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
# /usr/include/c++/13/bits/stl_algo.h:1922:       while (__last - __first > int(_S_threshold))
	movq	%rsi, %rax	# __last, _7
	subq	%rdi, %rax	# __first, _7
# /usr/include/c++/13/bits/stl_algo.h:1918:     __introsort_loop(_RandomAccessIterator __first,
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12	# tmp124, __first
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 48
# /usr/include/c++/13/bits/stl_algo.h:1922:       while (__last - __first > int(_S_threshold))
	cmpq	$64, %rax	#, _7
	jle	.L67	#,
	movq	%rsi, %rdi	# tmp125, __last
	movq	%rdx, %r13	# tmp126, __depth_limit
# /usr/include/c++/13/bits/stl_algo.h:1897:       std::__move_median_to_first(__first, __first + 1, __mid, __last - 1,
	leaq	4(%r12), %rbp	#, _140
# /usr/include/c++/13/bits/stl_algo.h:1924: 	  if (__depth_limit == 0)
	testq	%rdx, %rdx	# __depth_limit
	je	.L73	#,
.L41:
# /usr/include/c++/13/bits/stl_algo.h:1896:       _RandomAccessIterator __mid = __first + (__last - __first) / 2;
	sarq	$3, %rax	#, tmp121
# /usr/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	vmovq	(%r12), %xmm0	# MEM <vector(2) unsigned int> [(type &)__first_2(D)], MEM <vector(2) unsigned int> [(type &)__first_2(D)]
	movl	-4(%rdi), %esi	# MEM[(unsigned int *)__last_58 + -4B], pretmp_196
# /usr/include/c++/13/bits/stl_algo.h:1929: 	  --__depth_limit;
	decq	%r13	# __depth_limit
# /usr/include/c++/13/bits/stl_algo.h:1896:       _RandomAccessIterator __mid = __first + (__last - __first) / 2;
	leaq	(%r12,%rax,4), %r8	#, __mid
# /usr/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	movl	(%r8), %eax	# *__mid_46, _67
	vpextrd	$1, %xmm0, %ecx	# MEM <vector(2) unsigned int> [(type &)__first_2(D)], pretmp_157
	vpshufd	$225, %xmm0, %xmm1	#, MEM <vector(2) unsigned int> [(type &)__first_2(D)], _165
	vmovd	%xmm0, %edx	# MEM <vector(2) unsigned int> [(type &)__first_2(D)], _51
# /usr/include/c++/13/bits/stl_algo.h:88:       if (__comp(__a, __b))
	cmpl	%eax, %ecx	# _67, pretmp_157
	jnb	.L44	#,
# /usr/include/c++/13/bits/stl_algo.h:90: 	  if (__comp(__b, __c))
	cmpl	%esi, %eax	# pretmp_196, _67
	jb	.L70	#,
# /usr/include/c++/13/bits/stl_algo.h:92: 	  else if (__comp(__a, __c))
	cmpl	%esi, %ecx	# pretmp_196, pretmp_157
	jb	.L69	#,
.L71:
# /usr/include/c++/13/bits/move.h:198:       __a = _GLIBCXX_MOVE(__b);
	vmovq	%xmm1, (%r12)	# _165, MEM <vector(2) unsigned int> [(unsigned int &)__first_2(D)]
# /usr/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	movl	-4(%rdi), %esi	# MEM[(unsigned int *)__last_58 + -4B], _57
.L48:
# /usr/include/c++/13/bits/stl_algobase.h:187:     }
	movq	%rdi, %rax	# __last, __last
	movq	%rbp, %rbx	# _140, __last
	jmp	.L72	#
	.p2align 4,,10
	.p2align 3
.L52:
# /usr/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	movl	4(%rbx), %edx	# MEM[(unsigned int *)__first_50], _51
# /usr/include/c++/13/bits/stl_algo.h:1878: 	    ++__first;
	addq	$4, %rbx	#, __last
.L72:
# /usr/include/c++/13/bits/stl_algo.h:1877: 	  while (__comp(__first, __pivot))
	cmpl	%ecx, %edx	# pretmp_157, _51
	jb	.L52	#,
# /usr/include/c++/13/bits/stl_algo.h:1879: 	  --__last;
	subq	$4, %rax	#, __last
# /usr/include/c++/13/bits/stl_algo.h:1880: 	  while (__comp(__pivot, __last))
	cmpl	%esi, %ecx	# _57, pretmp_157
	jnb	.L53	#,
	.p2align 4,,10
	.p2align 3
.L54:
# /usr/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	movl	-4(%rax), %esi	# MEM[(unsigned int *)__last_56], _57
# /usr/include/c++/13/bits/stl_algo.h:1881: 	    --__last;
	subq	$4, %rax	#, __last
# /usr/include/c++/13/bits/stl_algo.h:1880: 	  while (__comp(__pivot, __last))
	cmpl	%esi, %ecx	# _57, pretmp_157
	jb	.L54	#,
.L53:
# /usr/include/c++/13/bits/stl_algo.h:1882: 	  if (!(__first < __last))
	cmpq	%rax, %rbx	# __last, __last
	jnb	.L74	#,
# /usr/include/c++/13/bits/move.h:198:       __a = _GLIBCXX_MOVE(__b);
	movl	%esi, (%rbx)	# _57, *__first_15
# /usr/include/c++/13/bits/stl_algo.h:1885: 	  ++__first;
	addq	$4, %rbx	#, __last
# /usr/include/c++/13/bits/move.h:199:       __b = _GLIBCXX_MOVE(__tmp);
	movl	%edx, (%rax)	# _51, *__last_14
# /usr/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	movl	-4(%rax), %esi	# MEM[(unsigned int *)__last_14 + -4B], _57
	movl	(%rbx), %edx	# MEM[(unsigned int *)__first_15 + 4B], _51
	movl	(%r12), %ecx	# *__first_2(D), pretmp_157
# /usr/include/c++/13/bits/stl_algo.h:1877: 	  while (__comp(__first, __pivot))
	jmp	.L72	#
.L44:
# /usr/include/c++/13/bits/stl_algo.h:97:       else if (__comp(__a, __c))
	cmpl	%esi, %ecx	# pretmp_196, pretmp_157
	jb	.L71	#,
# /usr/include/c++/13/bits/stl_algo.h:99:       else if (__comp(__b, __c))
	cmpl	%esi, %eax	# pretmp_196, _67
	jnb	.L70	#,
.L69:
# /usr/include/c++/13/bits/move.h:198:       __a = _GLIBCXX_MOVE(__b);
	movl	%esi, (%r12)	# pretmp_196, *__first_2(D)
# /usr/include/c++/13/bits/stl_algobase.h:187:     }
	movl	%edx, %esi	# _51, _57
# /usr/include/c++/13/bits/move.h:199:       __b = _GLIBCXX_MOVE(__tmp);
	movl	%edx, -4(%rdi)	# _51, MEM[(unsigned int &)__last_58 + 18446744073709551612]
# /usr/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	movl	(%r12), %ecx	# *__first_2(D), pretmp_157
# /usr/include/c++/13/bits/stl_algobase.h:187:     }
	movl	4(%r12), %edx	# MEM[(unsigned int *)__first_2(D) + 4B], _51
	jmp	.L48	#
	.p2align 4,,10
	.p2align 3
.L74:
# /usr/include/c++/13/bits/stl_algo.h:1932: 	  std::__introsort_loop(__cut, __last, __depth_limit, __comp);
	movq	%rdi, %rsi	# __last,
	movq	%r13, %rdx	# __depth_limit,
	movq	%rbx, %rdi	# __last,
	call	_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.0	#
# /usr/include/c++/13/bits/stl_algo.h:1922:       while (__last - __first > int(_S_threshold))
	movq	%rbx, %rax	# __last, _7
	subq	%r12, %rax	# __first, _7
# /usr/include/c++/13/bits/stl_algo.h:1922:       while (__last - __first > int(_S_threshold))
	cmpq	$64, %rax	#, _7
	jle	.L67	#,
# /usr/include/c++/13/bits/stl_algo.h:1924: 	  if (__depth_limit == 0)
	testq	%r13, %r13	# __depth_limit
	je	.L57	#,
	movq	%rbx, %rdi	# __last, __last
	jmp	.L41	#
.L70:
# /usr/include/c++/13/bits/move.h:198:       __a = _GLIBCXX_MOVE(__b);
	movl	%eax, (%r12)	# _67, *__first_2(D)
# /usr/include/c++/13/bits/move.h:199:       __b = _GLIBCXX_MOVE(__tmp);
	movl	%edx, (%r8)	# _51, *__mid_46
# /usr/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	movl	4(%r12), %edx	# MEM[(unsigned int *)__first_2(D) + 4B], _51
	movl	(%r12), %ecx	# *__first_2(D), pretmp_157
	movl	-4(%rdi), %esi	# MEM[(unsigned int *)__last_58 + -4B], _57
# /usr/include/c++/13/bits/stl_algobase.h:187:     }
	jmp	.L48	#
.L73:
# /usr/include/c++/13/bits/stl_algo.h:1924: 	  if (__depth_limit == 0)
	movq	%rdi, %rbx	# __last, __last
.L57:
# /usr/include/c++/13/bits/stl_heap.h:351:       const _DistanceType __len = __last - __first;
	sarq	$2, %rax	#, _7
# /usr/include/c++/13/bits/stl_heap.h:352:       _DistanceType __parent = (__len - 2) / 2;
	leaq	-2(%rax), %r13	#, tmp114
# /usr/include/c++/13/bits/stl_heap.h:351:       const _DistanceType __len = __last - __first;
	movq	%rax, %rbp	# _7, tmp113
# /usr/include/c++/13/bits/stl_heap.h:352:       _DistanceType __parent = (__len - 2) / 2;
	sarq	%r13	# __parent
	jmp	.L43	#
.L75:
# /usr/include/c++/13/bits/stl_heap.h:360: 	  __parent--;
	decq	%r13	# __parent
.L43:
# /usr/include/c++/13/bits/stl_heap.h:356: 	  std::__adjust_heap(__first, __parent, __len, _GLIBCXX_MOVE(__value),
	movl	(%r12,%r13,4), %ecx	# MEM[(type &)__first_2(D) + _171 * 4], MEM[(type &)__first_2(D) + _171 * 4]
	movq	%rbp, %rdx	# tmp113,
	movq	%r13, %rsi	# __parent,
	movq	%r12, %rdi	# __first,
	call	_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.isra.0	#
# /usr/include/c++/13/bits/stl_heap.h:358: 	  if (__parent == 0)
	testq	%r13, %r13	# __parent
	jne	.L75	#,
	.p2align 4,,10
	.p2align 3
.L42:
# /usr/include/c++/13/bits/stl_heap.h:424: 	  --__last;
	subq	$4, %rbx	#, __last
# /usr/include/c++/13/bits/stl_heap.h:263:       *__result = _GLIBCXX_MOVE(*__first);
	movl	(%r12), %eax	# MEM[(type &)__first_2(D)], _21
# /usr/include/c++/13/bits/stl_heap.h:262:       _ValueType __value = _GLIBCXX_MOVE(*__result);
	movl	(%rbx), %ecx	# MEM[(type &)__last_19], _20
# /usr/include/c++/13/bits/stl_heap.h:264:       std::__adjust_heap(__first, _DistanceType(0),
	xorl	%esi, %esi	#
# /usr/include/c++/13/bits/stl_heap.h:265: 			 _DistanceType(__last - __first),
	movq	%rbx, %rbp	# __last, _22
# /usr/include/c++/13/bits/stl_heap.h:264:       std::__adjust_heap(__first, _DistanceType(0),
	movq	%r12, %rdi	# __first,
# /usr/include/c++/13/bits/stl_heap.h:265: 			 _DistanceType(__last - __first),
	subq	%r12, %rbp	# __first, _22
# /usr/include/c++/13/bits/stl_heap.h:263:       *__result = _GLIBCXX_MOVE(*__first);
	movl	%eax, (%rbx)	# _21, MEM[(unsigned int *)__last_19]
# /usr/include/c++/13/bits/stl_heap.h:265: 			 _DistanceType(__last - __first),
	movq	%rbp, %rdx	# _22, tmp117
	sarq	$2, %rdx	#, tmp117
# /usr/include/c++/13/bits/stl_heap.h:264:       std::__adjust_heap(__first, _DistanceType(0),
	call	_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.isra.0	#
# /usr/include/c++/13/bits/stl_heap.h:422:       while (__last - __first > 1)
	cmpq	$4, %rbp	#, _22
	jg	.L42	#,
.L67:
# /usr/include/c++/13/bits/stl_algo.h:1935:     }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE9696:
	.size	_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.0, .-_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.0
	.p2align 4
	.type	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, @function
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB9701:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# /usr/include/c++/13/ostream:736:     { return flush(__os.put(__os.widen('\n'))); }
	movq	(%rdi), %rax	# __os_1(D)->_vptr.basic_ostream, __os_1(D)->_vptr.basic_ostream
	movq	-24(%rax), %rax	# MEM[(long int *)_2 + -24B], MEM[(long int *)_2 + -24B]
	movq	240(%rdi,%rax), %rbp	# MEM[(const struct __ctype_type * *)_5 + 240B], _14
# /usr/include/c++/13/bits/basic_ios.h:49:       if (!__f)
	testq	%rbp, %rbp	# _14
	je	.L81	#,
# /usr/include/c++/13/bits/locale_facets.h:882: 	if (_M_widen_ok)
	cmpb	$0, 56(%rbp)	#, MEM[(const struct ctype *)_14]._M_widen_ok
	movq	%rdi, %rbx	# tmp99, __os
	je	.L78	#,
# /usr/include/c++/13/bits/locale_facets.h:883: 	  return _M_widen[static_cast<unsigned char>(__c)];
	movsbl	67(%rbp), %esi	# MEM[(const struct ctype *)_14]._M_widen[10],
.L79:
# /usr/include/c++/13/ostream:736:     { return flush(__os.put(__os.widen('\n'))); }
	movq	%rbx, %rdi	# __os,
	call	_ZNSo3putEc@PLT	#
# /usr/include/c++/13/ostream:736:     { return flush(__os.put(__os.widen('\n'))); }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
# /usr/include/c++/13/ostream:736:     { return flush(__os.put(__os.widen('\n'))); }
	movq	%rax, %rdi	# tmp101, _8
# /usr/include/c++/13/ostream:736:     { return flush(__os.put(__os.widen('\n'))); }
	popq	%rbp	#
	.cfi_def_cfa_offset 8
# /usr/include/c++/13/ostream:758:     { return __os.flush(); }
	jmp	_ZNSo5flushEv@PLT	#
.L78:
	.cfi_restore_state
# /usr/include/c++/13/bits/locale_facets.h:884: 	this->_M_widen_init();
	movq	%rbp, %rdi	# _14,
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT	#
# /usr/include/c++/13/bits/locale_facets.h:885: 	return this->do_widen(__c);
	movq	0(%rbp), %rax	# MEM[(const struct ctype *)_14].D.45915._vptr.facet, MEM[(const struct ctype *)_14].D.45915._vptr.facet
	movl	$10, %esi	#,
	movq	%rbp, %rdi	# _14,
	call	*48(%rax)	# MEM[(int (*) () *)_24 + 48B]
	movsbl	%al, %esi	# tmp100,
	jmp	.L79	#
.L81:
# /usr/include/c++/13/bits/basic_ios.h:50: 	__throw_bad_cast();
	call	_ZSt16__throw_bad_castv@PLT	#
	.cfi_endproc
.LFE9701:
	.size	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, .-_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	.p2align 4
	.globl	_Z10radix_sortPjm
	.type	_Z10radix_sortPjm, @function
_Z10radix_sortPjm:
.LFB9137:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
# team_cpp/main.cpp:304:     std::sort(arr, arr + n);
	leaq	0(,%rsi,4), %r12	#, _1
# team_cpp/main.cpp:303: void radix_sort(uint32_t* arr, size_t n) {
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
# team_cpp/main.cpp:304:     std::sort(arr, arr + n);
	leaq	(%rdi,%r12), %rbx	#, _2
# team_cpp/main.cpp:303: void radix_sort(uint32_t* arr, size_t n) {
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 64
# /usr/include/c++/13/bits/stl_algo.h:1945:       if (__first != __last)
	cmpq	%rdi, %rbx	# arr, _2
	je	.L110	#,
# /usr/include/c++/13/bits/stl_algo.h:1948: 				std::__lg(__last - __first) * 2,
	movq	%r12, %rax	# _1, tmp124
# /usr/include/c++/13/bits/stl_algobase.h:1518:       return std::__bit_width(make_unsigned_t<_Tp>(__n)) - 1;
	movl	$63, %edx	#, tmp127
	movq	%rdi, %r14	# tmp146, arr
# /usr/include/c++/13/bits/stl_algo.h:1947: 	  std::__introsort_loop(__first, __last,
	movq	%rbx, %rsi	# _2,
# /usr/include/c++/13/bits/stl_algo.h:1948: 				std::__lg(__last - __first) * 2,
	sarq	$2, %rax	#, tmp124
# /usr/include/c++/13/bits/stl_algo.h:1817:       for (_RandomAccessIterator __i = __first + 1; __i != __last; ++__i)
	leaq	4(%r14), %rbp	#, __i
	lzcntq	%rax, %rax	# tmp124, tmp125
# /usr/include/c++/13/bits/stl_algobase.h:1518:       return std::__bit_width(make_unsigned_t<_Tp>(__n)) - 1;
	subl	%eax, %edx	# tmp125, tmp126
# /usr/include/c++/13/bits/stl_algobase.h:1518:       return std::__bit_width(make_unsigned_t<_Tp>(__n)) - 1;
	movslq	%edx, %rdx	# tmp126, tmp128
# /usr/include/c++/13/bits/stl_algo.h:1947: 	  std::__introsort_loop(__first, __last,
	addq	%rdx, %rdx	# tmp129
	call	_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.0	#
# /usr/include/c++/13/bits/stl_algo.h:1857:       if (__last - __first > int(_S_threshold))
	cmpq	$64, %r12	#, _1
	jg	.L112	#,
# /usr/include/c++/13/bits/stl_algo.h:1817:       for (_RandomAccessIterator __i = __first + 1; __i != __last; ++__i)
	cmpq	%rbp, %rbx	# __i, _2
	je	.L110	#,
# /usr/include/c++/13/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	movl	$4, %r12d	#, tmp145
	jmp	.L102	#
	.p2align 4,,10
	.p2align 3
.L113:
# /usr/include/c++/13/bits/stl_algobase.h:746: 	  const ptrdiff_t _Num = __last - __first;
	movq	%rdi, %rdx	# __last, _61
	subq	%r14, %rdx	# arr, _61
# /usr/include/c++/13/bits/stl_algobase.h:747: 	  if (__builtin_expect(_Num > 1, true))
	cmpq	$4, %rdx	#, _61
	jle	.L97	#,
# /usr/include/c++/13/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	movq	%r12, %rax	# tmp145, tmp139
# /usr/include/c++/13/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	movq	%r14, %rsi	# arr,
# /usr/include/c++/13/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	subq	%rdx, %rax	# _61, tmp139
	addq	%rax, %rdi	# tmp139, tmp141
# /usr/include/c++/13/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	call	memmove@PLT	#
.L98:
# /usr/include/c++/13/bits/stl_algo.h:1824: 	      *__first = _GLIBCXX_MOVE(__val);
	movl	%r13d, (%r14)	# _51, MEM[(unsigned int *)arr_4(D)]
# /usr/include/c++/13/bits/stl_algo.h:1817:       for (_RandomAccessIterator __i = __first + 1; __i != __last; ++__i)
	cmpq	%rbp, %rbx	# __i, _2
	je	.L110	#,
.L102:
# /usr/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	movl	0(%rbp), %r13d	# MEM[(unsigned int *)__i_104], _51
	movl	(%r14), %eax	# MEM[(unsigned int *)arr_4(D)], _52
	movq	%rbp, %rdi	# __i, __last
# /usr/include/c++/13/bits/stl_algo.h:1823: 	      _GLIBCXX_MOVE_BACKWARD3(__first, __i, __i + 1);
	addq	$4, %rbp	#, __i
# /usr/include/c++/13/bits/stl_algo.h:1819: 	  if (__comp(__i, __first))
	cmpl	%eax, %r13d	# _52, _51
	jb	.L113	#,
# /usr/include/c++/13/bits/predefined_ops.h:98:       { return __val < *__it; }
	movl	-8(%rbp), %edx	# MEM[(unsigned int *)_79 + -8B], _55
# /usr/include/c++/13/bits/stl_algo.h:1798:       --__next;
	leaq	-8(%rbp), %rax	#, __next
# /usr/include/c++/13/bits/stl_algo.h:1799:       while (__comp(__val, __next))
	cmpl	%edx, %r13d	# _55, _51
	jnb	.L100	#,
	.p2align 4,,10
	.p2align 3
.L101:
# /usr/include/c++/13/bits/stl_algo.h:1801: 	  *__last = _GLIBCXX_MOVE(*__next);
	movl	%edx, 4(%rax)	# _55, MEM[(unsigned int *)__next_108 + 4B]
	movq	%rax, %rdi	# __next, __last
# /usr/include/c++/13/bits/stl_algo.h:1803: 	  --__next;
	subq	$4, %rax	#, __next
# /usr/include/c++/13/bits/predefined_ops.h:98:       { return __val < *__it; }
	movl	(%rax), %edx	# MEM[(unsigned int *)__next_58], _55
# /usr/include/c++/13/bits/stl_algo.h:1799:       while (__comp(__val, __next))
	cmpl	%edx, %r13d	# _55, _51
	jb	.L101	#,
.L100:
# /usr/include/c++/13/bits/stl_algo.h:1805:       *__last = _GLIBCXX_MOVE(__val);
	movl	%r13d, (%rdi)	# _51, *__last_107
# /usr/include/c++/13/bits/stl_algo.h:1817:       for (_RandomAccessIterator __i = __first + 1; __i != __last; ++__i)
	cmpq	%rbp, %rbx	# __i, _2
	jne	.L102	#,
.L110:
# team_cpp/main.cpp:305: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L112:
	.cfi_restore_state
# /usr/include/c++/13/bits/stl_algo.h:1859: 	  std::__insertion_sort(__first, __first + int(_S_threshold), __comp);
	leaq	64(%r14), %r12	#, __i
# /usr/include/c++/13/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	movl	$4, %r13d	#, tmp144
	jmp	.L91	#
	.p2align 4,,10
	.p2align 3
.L115:
# /usr/include/c++/13/bits/stl_algobase.h:746: 	  const ptrdiff_t _Num = __last - __first;
	movq	%rdi, %rdx	# __last, _38
	subq	%r14, %rdx	# arr, _38
# /usr/include/c++/13/bits/stl_algobase.h:747: 	  if (__builtin_expect(_Num > 1, true))
	cmpq	$4, %rdx	#, _38
	jle	.L86	#,
# /usr/include/c++/13/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	movq	%r13, %rax	# tmp144, tmp133
# /usr/include/c++/13/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	movq	%r14, %rsi	# arr,
# /usr/include/c++/13/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	subq	%rdx, %rax	# _38, tmp133
	addq	%rax, %rdi	# tmp133, tmp135
# /usr/include/c++/13/bits/stl_algobase.h:748: 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
	call	memmove@PLT	#
.L87:
# /usr/include/c++/13/bits/stl_algo.h:1824: 	      *__first = _GLIBCXX_MOVE(__val);
	movl	%r15d, (%r14)	# _28, MEM[(unsigned int *)arr_4(D)]
# /usr/include/c++/13/bits/stl_algo.h:1817:       for (_RandomAccessIterator __i = __first + 1; __i != __last; ++__i)
	cmpq	%rbp, %r12	# __i, __i
	je	.L114	#,
.L91:
# /usr/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	movl	0(%rbp), %r15d	# MEM[(unsigned int *)__i_41], _28
	movl	(%r14), %eax	# MEM[(unsigned int *)arr_4(D)], _29
	movq	%rbp, %rdi	# __i, __last
# /usr/include/c++/13/bits/stl_algo.h:1823: 	      _GLIBCXX_MOVE_BACKWARD3(__first, __i, __i + 1);
	addq	$4, %rbp	#, __i
# /usr/include/c++/13/bits/stl_algo.h:1819: 	  if (__comp(__i, __first))
	cmpl	%eax, %r15d	# _29, _28
	jb	.L115	#,
# /usr/include/c++/13/bits/predefined_ops.h:98:       { return __val < *__it; }
	movl	-8(%rbp), %edx	# MEM[(unsigned int *)_99 + -8B], _32
# /usr/include/c++/13/bits/stl_algo.h:1798:       --__next;
	leaq	-8(%rbp), %rax	#, __next
# /usr/include/c++/13/bits/stl_algo.h:1799:       while (__comp(__val, __next))
	cmpl	%edx, %r15d	# _32, _28
	jnb	.L89	#,
	.p2align 4,,10
	.p2align 3
.L90:
# /usr/include/c++/13/bits/stl_algo.h:1801: 	  *__last = _GLIBCXX_MOVE(*__next);
	movl	%edx, 4(%rax)	# _32, MEM[(unsigned int *)__next_103 + 4B]
	movq	%rax, %rdi	# __next, __last
# /usr/include/c++/13/bits/stl_algo.h:1803: 	  --__next;
	subq	$4, %rax	#, __next
# /usr/include/c++/13/bits/predefined_ops.h:98:       { return __val < *__it; }
	movl	(%rax), %edx	# MEM[(unsigned int *)__next_35], _32
# /usr/include/c++/13/bits/stl_algo.h:1799:       while (__comp(__val, __next))
	cmpl	%edx, %r15d	# _32, _28
	jb	.L90	#,
.L89:
# /usr/include/c++/13/bits/stl_algo.h:1805:       *__last = _GLIBCXX_MOVE(__val);
	movl	%r15d, (%rdi)	# _28, *__last_102
# /usr/include/c++/13/bits/stl_algo.h:1817:       for (_RandomAccessIterator __i = __first + 1; __i != __last; ++__i)
	cmpq	%rbp, %r12	# __i, __i
	jne	.L91	#,
.L114:
# /usr/include/c++/13/bits/stl_algo.h:1839:       for (_RandomAccessIterator __i = __first; __i != __last; ++__i)
	cmpq	%r12, %rbx	# __i, _2
	je	.L110	#,
	.p2align 4,,10
	.p2align 3
.L95:
# /usr/include/c++/13/bits/stl_algo.h:1796: 	__val = _GLIBCXX_MOVE(*__last);
	movl	(%r12), %ecx	# MEM[(type &)__i_15], _18
# /usr/include/c++/13/bits/predefined_ops.h:98:       { return __val < *__it; }
	movl	-4(%r12), %edx	# MEM[(unsigned int *)__i_15 + -4B], _20
# /usr/include/c++/13/bits/stl_algo.h:1798:       --__next;
	leaq	-4(%r12), %rax	#, __next
# /usr/include/c++/13/bits/stl_algo.h:1799:       while (__comp(__val, __next))
	cmpl	%edx, %ecx	# _20, _18
	jnb	.L103	#,
	.p2align 4,,10
	.p2align 3
.L94:
# /usr/include/c++/13/bits/stl_algo.h:1801: 	  *__last = _GLIBCXX_MOVE(*__next);
	movl	%edx, 4(%rax)	# _20, MEM[(unsigned int *)__next_36 + 4B]
	movq	%rax, %rsi	# __next, __last
# /usr/include/c++/13/bits/stl_algo.h:1803: 	  --__next;
	subq	$4, %rax	#, __next
# /usr/include/c++/13/bits/predefined_ops.h:98:       { return __val < *__it; }
	movl	(%rax), %edx	# MEM[(unsigned int *)__next_23], _20
# /usr/include/c++/13/bits/stl_algo.h:1799:       while (__comp(__val, __next))
	cmpl	%edx, %ecx	# _20, _18
	jb	.L94	#,
# /usr/include/c++/13/bits/stl_algo.h:1839:       for (_RandomAccessIterator __i = __first; __i != __last; ++__i)
	addq	$4, %r12	#, __i
# /usr/include/c++/13/bits/stl_algo.h:1805:       *__last = _GLIBCXX_MOVE(__val);
	movl	%ecx, (%rsi)	# _18, *__last_24
# /usr/include/c++/13/bits/stl_algo.h:1839:       for (_RandomAccessIterator __i = __first; __i != __last; ++__i)
	cmpq	%r12, %rbx	# __i, _2
	jne	.L95	#,
	jmp	.L110	#
	.p2align 4,,10
	.p2align 3
.L103:
# /usr/include/c++/13/bits/stl_algo.h:1799:       while (__comp(__val, __next))
	movq	%r12, %rsi	# __i, __last
# /usr/include/c++/13/bits/stl_algo.h:1839:       for (_RandomAccessIterator __i = __first; __i != __last; ++__i)
	addq	$4, %r12	#, __i
# /usr/include/c++/13/bits/stl_algo.h:1805:       *__last = _GLIBCXX_MOVE(__val);
	movl	%ecx, (%rsi)	# _18, *__last_24
# /usr/include/c++/13/bits/stl_algo.h:1839:       for (_RandomAccessIterator __i = __first; __i != __last; ++__i)
	cmpq	%r12, %rbx	# __i, _2
	jne	.L95	#,
	jmp	.L110	#
.L86:
# /usr/include/c++/13/bits/stl_algobase.h:749: 	  else if (_Num == 1)
	jne	.L87	#,
# /usr/include/c++/13/bits/stl_algobase.h:423: 	{ *__to = std::move(*__from); }
	movl	%eax, -4(%rbp)	# _29, MEM[(unsigned int *)_99 + -4B]
# /usr/include/c++/13/bits/stl_algobase.h:423: 	{ *__to = std::move(*__from); }
	jmp	.L87	#
.L97:
# /usr/include/c++/13/bits/stl_algobase.h:749: 	  else if (_Num == 1)
	jne	.L98	#,
# /usr/include/c++/13/bits/stl_algobase.h:423: 	{ *__to = std::move(*__from); }
	movl	%eax, -4(%rbp)	# _52, MEM[(unsigned int *)_79 + -4B]
# /usr/include/c++/13/bits/stl_algobase.h:423: 	{ *__to = std::move(*__from); }
	jmp	.L98	#
	.cfi_endproc
.LFE9137:
	.size	_Z10radix_sortPjm, .-_Z10radix_sortPjm
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Usage: "
.LC1:
	.string	" <input_file>"
.LC2:
	.string	"Failed to open file"
.LC3:
	.string	"Failed to get file size"
.LC4:
	.string	"Failed to mmap file"
.LC5:
	.string	"Sum of top 50%: "
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB9138:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rsi, %rbx	# tmp224, argv
	andq	$-32, %rsp	#,
	subq	$160, %rsp	#,
# team_cpp/main.cpp:309: int main(int argc, char* argv[]) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp230
	movq	%rax, 152(%rsp)	# tmp230, D.102513
	xorl	%eax, %eax	# tmp230
# team_cpp/main.cpp:310:     if (argc != 2) {
	cmpl	$2, %edi	#, tmp223
	je	.L117	#,
# /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cerr(%rip), %r12	#, tmp165
	movl	$7, %edx	#,
	leaq	.LC0(%rip), %rsi	#, tmp164
	movq	%r12, %rdi	# tmp165,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# team_cpp/main.cpp:311:         std::cerr << "Usage: " << argv[0] << " <input_file>" << std::endl;
	movq	(%rbx), %rsi	# *argv_14(D),
	movq	%r12, %rdi	# tmp165,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	movl	$13, %edx	#,
	leaq	.LC1(%rip), %rsi	#, tmp167
# team_cpp/main.cpp:311:         std::cerr << "Usage: " << argv[0] << " <input_file>" << std::endl;
	movq	%rax, %rbx	# tmp225, _32
# /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	movq	%rax, %rdi	# _32,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/13/ostream:115: 	return __pf(*this);
	movq	%rbx, %rdi	# _32,
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0	#
.L118:
# team_cpp/main.cpp:312:         return 1;
	movl	$1, %eax	#, <retval>
.L116:
# team_cpp/main.cpp:366: }
	movq	152(%rsp), %rdx	# D.102513, tmp231
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp231
	jne	.L153	#,
	leaq	-40(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
.L117:
	.cfi_restore_state
# /usr/include/x86_64-linux-gnu/bits/fcntl2.h:53:       return __open_alias (__path, __oflag, __va_arg_pack ());
	movq	8(%rsi), %rdi	# MEM[(char * *)argv_14(D) + 8B], MEM[(char * *)argv_14(D) + 8B]
	xorl	%eax, %eax	#
	xorl	%esi, %esi	#
	call	open@PLT	#
	movl	%eax, %r13d	# tmp226, _34
# team_cpp/main.cpp:319:     if (fd == -1) {
	cmpl	$-1, %eax	#, _34
	je	.L154	#,
# team_cpp/main.cpp:326:     if (fstat(fd, &sb) == -1) {
	movq	%rsp, %rsi	#, tmp172
	movl	%eax, %edi	# _34,
	call	fstat@PLT	#
# /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	movl	$23, %edx	#,
	leaq	.LC3(%rip), %rsi	#, tmp173
# team_cpp/main.cpp:326:     if (fstat(fd, &sb) == -1) {
	incl	%eax	# tmp227
	je	.L152	#,
# team_cpp/main.cpp:332:     size_t file_size = sb.st_size;
	movq	48(%rsp), %rbx	# sb.st_size, file_size
# team_cpp/main.cpp:336:     void* mapped = mmap(nullptr, file_size, PROT_READ | PROT_WRITE,
	xorl	%r9d, %r9d	#
	movl	%r13d, %r8d	# _34,
	movl	$32770, %ecx	#,
	movl	$3, %edx	#,
	xorl	%edi, %edi	#
	movq	%rbx, %rsi	# file_size,
# team_cpp/main.cpp:333:     size_t num_integers = file_size / sizeof(uint32_t);
	movq	%rbx, %r12	# file_size, num_integers
# team_cpp/main.cpp:336:     void* mapped = mmap(nullptr, file_size, PROT_READ | PROT_WRITE,
	call	mmap@PLT	#
# team_cpp/main.cpp:333:     size_t num_integers = file_size / sizeof(uint32_t);
	shrq	$2, %r12	#, num_integers
# team_cpp/main.cpp:336:     void* mapped = mmap(nullptr, file_size, PROT_READ | PROT_WRITE,
	movq	%rax, %r14	# tmp228, mapped
# team_cpp/main.cpp:338:     if (mapped == MAP_FAILED) {
	cmpq	$-1, %rax	#, mapped
	je	.L155	#,
# team_cpp/main.cpp:345:     madvise(mapped, file_size, MADV_SEQUENTIAL | MADV_WILLNEED);
	movl	$3, %edx	#,
	movq	%rbx, %rsi	# file_size,
	movq	%rax, %rdi	# mapped,
	call	madvise@PLT	#
# team_cpp/main.cpp:347:     close(fd);
	movl	%r13d, %edi	# _34,
	movq	%rbx, %r13	# file_size, _38
	call	close@PLT	#
	andq	$-4, %r13	#, _38
# team_cpp/main.cpp:304:     std::sort(arr, arr + n);
	leaq	(%r14,%r13), %r15	#, _36
# /usr/include/c++/13/bits/stl_algo.h:1945:       if (__first != __last)
	cmpq	%r15, %r14	# _36, mapped
	je	.L124	#,
# /usr/include/c++/13/bits/stl_algo.h:1948: 				std::__lg(__last - __first) * 2,
	movq	%rbx, %rax	# file_size, tmp179
# /usr/include/c++/13/bits/stl_algobase.h:1518:       return std::__bit_width(make_unsigned_t<_Tp>(__n)) - 1;
	movl	$63, %edx	#, tmp182
# /usr/include/c++/13/bits/stl_algo.h:1947: 	  std::__introsort_loop(__first, __last,
	movq	%r15, %rsi	# _36,
	movq	%r14, %rdi	# mapped,
# /usr/include/c++/13/bits/stl_algo.h:1948: 				std::__lg(__last - __first) * 2,
	sarq	$2, %rax	#, tmp179
# /usr/include/c++/13/bit:215: 	  return __builtin_clzl(__x) - __diff;
	lzcntq	%rax, %rax	# tmp179, tmp180
# /usr/include/c++/13/bits/stl_algobase.h:1518:       return std::__bit_width(make_unsigned_t<_Tp>(__n)) - 1;
	subl	%eax, %edx	# tmp180, tmp181
# /usr/include/c++/13/bits/stl_algobase.h:1518:       return std::__bit_width(make_unsigned_t<_Tp>(__n)) - 1;
	movslq	%edx, %rdx	# tmp181, tmp183
# /usr/include/c++/13/bits/stl_algo.h:1947: 	  std::__introsort_loop(__first, __last,
	addq	%rdx, %rdx	# tmp183, tmp184
	call	_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.0	#
# /usr/include/c++/13/bits/stl_algo.h:1857:       if (__last - __first > int(_S_threshold))
	cmpq	$64, %r13	#, _38
	jle	.L125	#,
# /usr/include/c++/13/bits/stl_algo.h:1859: 	  std::__insertion_sort(__first, __first + int(_S_threshold), __comp);
	leaq	64(%r14), %r13	#, __i
	movq	%r14, %rdi	# mapped,
	movq	%r13, %rsi	# __i,
	call	_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.isra.0	#
# /usr/include/c++/13/bits/stl_algo.h:1839:       for (_RandomAccessIterator __i = __first; __i != __last; ++__i)
	cmpq	%r13, %r15	# __i, _36
	je	.L124	#,
	.p2align 4,,10
	.p2align 3
.L129:
# /usr/include/c++/13/bits/stl_algo.h:1796: 	__val = _GLIBCXX_MOVE(*__last);
	movl	0(%r13), %ecx	# MEM[(type &)__i_84], _64
# /usr/include/c++/13/bits/predefined_ops.h:98:       { return __val < *__it; }
	movl	-4(%r13), %edx	# MEM[(unsigned int *)__i_84 + -4B], _66
# /usr/include/c++/13/bits/stl_algo.h:1798:       --__next;
	leaq	-4(%r13), %rax	#, __next
# /usr/include/c++/13/bits/stl_algo.h:1799:       while (__comp(__val, __next))
	cmpl	%edx, %ecx	# _66, _64
	jnb	.L138	#,
	.p2align 4,,10
	.p2align 3
.L128:
# /usr/include/c++/13/bits/stl_algo.h:1801: 	  *__last = _GLIBCXX_MOVE(*__next);
	movl	%edx, 4(%rax)	# _66, MEM[(unsigned int *)__next_88 + 4B]
	movq	%rax, %rsi	# __next, __last
# /usr/include/c++/13/bits/stl_algo.h:1803: 	  --__next;
	subq	$4, %rax	#, __next
# /usr/include/c++/13/bits/predefined_ops.h:98:       { return __val < *__it; }
	movl	(%rax), %edx	# MEM[(unsigned int *)__next_69], _66
# /usr/include/c++/13/bits/stl_algo.h:1799:       while (__comp(__val, __next))
	cmpl	%edx, %ecx	# _66, _64
	jb	.L128	#,
.L127:
# /usr/include/c++/13/bits/stl_algo.h:1839:       for (_RandomAccessIterator __i = __first; __i != __last; ++__i)
	addq	$4, %r13	#, __i
# /usr/include/c++/13/bits/stl_algo.h:1805:       *__last = _GLIBCXX_MOVE(__val);
	movl	%ecx, (%rsi)	# _64, *__last_87
# /usr/include/c++/13/bits/stl_algo.h:1839:       for (_RandomAccessIterator __i = __first; __i != __last; ++__i)
	cmpq	%r13, %r15	# __i, _36
	jne	.L129	#,
.L124:
# team_cpp/main.cpp:355:     size_t top_half_start = num_integers / 2;
	movq	%rbx, %rsi	# file_size, top_half_start
	shrq	$3, %rsi	#, top_half_start
# team_cpp/main.cpp:357:     for (size_t i = top_half_start; i < num_integers; ++i) {
	cmpq	%r12, %rsi	# num_integers, top_half_start
	jnb	.L139	#,
	movq	%r12, %rdx	# num_integers, niters.228
	subq	%rsi, %rdx	# top_half_start, niters.228
	leaq	-1(%rdx), %rax	#, tmp185
	cmpq	$6, %rax	#, tmp185
	jbe	.L140	#,
	movq	%rdx, %rcx	# niters.228, bnd.229
	leaq	(%r14,%rsi,4), %rax	#, ivtmp.255
	vpxor	%xmm2, %xmm2, %xmm2	# vect_sum_27.237
	shrq	$3, %rcx	#, bnd.229
	salq	$5, %rcx	#, tmp188
	addq	%rax, %rcx	# ivtmp.255, _81
	.p2align 4,,10
	.p2align 3
.L132:
# team_cpp/main.cpp:358:         sum += numbers[i];
	vmovdqu	(%rax), %ymm0	# MEM <vector(8) unsigned int> [(uint32_t *)_144], MEM <vector(8) unsigned int> [(uint32_t *)_144]
	addq	$32, %rax	#, ivtmp.255
	vpmovzxdq	%xmm0, %ymm1	# MEM <vector(8) unsigned int> [(uint32_t *)_144],
	vextracti128	$0x1, %ymm0, %xmm0	# MEM <vector(8) unsigned int> [(uint32_t *)_144], tmp193
	vpmovzxdq	%xmm0, %ymm0	# tmp193, vect__7.236
# team_cpp/main.cpp:358:         sum += numbers[i];
	vpaddq	%ymm0, %ymm1, %ymm0	# vect__7.236, vect__7.236, tmp194
	vpaddq	%ymm0, %ymm2, %ymm2	# tmp194, vect_sum_27.237, vect_sum_27.237
	cmpq	%rax, %rcx	# ivtmp.255, _81
	jne	.L132	#,
	vmovdqa	%xmm2, %xmm0	# vect_sum_27.237, tmp195
	vextracti64x2	$0x1, %ymm2, %xmm2	# vect_sum_27.237, tmp196
	movq	%rdx, %rcx	# niters.228, niters_vector_mult_vf.230
	vpaddq	%xmm2, %xmm0, %xmm2	# tmp196, tmp195, _117
	andq	$-8, %rcx	#, niters_vector_mult_vf.230
	vpsrldq	$8, %xmm2, %xmm0	#, _117, tmp198
	leaq	(%rsi,%rcx), %rax	#, tmp.242
	vpaddq	%xmm0, %xmm2, %xmm0	# tmp198, _117, tmp199
	vmovq	%xmm0, %r13	# tmp199, stmp_sum_54.249
	testb	$7, %dl	#, niters.228
	je	.L156	#,
	vzeroupper
.L131:
	subq	%rcx, %rdx	# niters_vector_mult_vf.230, niters.239
	leaq	-1(%rdx), %rdi	#, tmp201
	cmpq	$2, %rdi	#, tmp201
	jbe	.L135	#,
# team_cpp/main.cpp:358:         sum += numbers[i];
	addq	%rcx, %rsi	# niters_vector_mult_vf.230, tmp202
	movq	%rdx, %rcx	# niters.239, niters_vector_mult_vf.241
	vmovdqu	(%r14,%rsi,4), %xmm1	# MEM <vector(4) unsigned int> [(uint32_t *)vectp.245_149], MEM <vector(4) unsigned int> [(uint32_t *)vectp.245_149]
	andq	$-4, %rcx	#, niters_vector_mult_vf.241
	addq	%rcx, %rax	# niters_vector_mult_vf.241, tmp.242
	andb	$3, %dl	#, niters.239
	vpmovzxdq	%xmm1, %xmm0	# MEM <vector(4) unsigned int> [(uint32_t *)vectp.245_149], vect__55.247
	vpsrldq	$8, %xmm1, %xmm1	#, MEM <vector(4) unsigned int> [(uint32_t *)vectp.245_149], tmp206
	vpmovzxdq	%xmm1, %xmm1	# tmp206, vect__55.247
# team_cpp/main.cpp:358:         sum += numbers[i];
	vpaddq	%xmm1, %xmm0, %xmm0	# vect__55.247, vect__55.247, tmp207
	vpaddq	%xmm2, %xmm0, %xmm0	# _117, tmp207, vect_sum_54.248
	vpsrldq	$8, %xmm0, %xmm1	#, vect_sum_54.248, tmp209
	vpaddq	%xmm1, %xmm0, %xmm0	# tmp209, vect_sum_54.248, tmp210
	vmovq	%xmm0, %r13	# tmp210, stmp_sum_54.249
	je	.L130	#,
.L135:
# team_cpp/main.cpp:358:         sum += numbers[i];
	movl	(%r14,%rax,4), %ecx	# *_5, *_5
	leaq	0(,%rax,4), %rdx	#, _4
# team_cpp/main.cpp:358:         sum += numbers[i];
	addq	%rcx, %r13	# *_5, stmp_sum_54.249
# team_cpp/main.cpp:357:     for (size_t i = top_half_start; i < num_integers; ++i) {
	leaq	1(%rax), %rcx	#, i
# team_cpp/main.cpp:357:     for (size_t i = top_half_start; i < num_integers; ++i) {
	cmpq	%r12, %rcx	# num_integers, i
	jnb	.L130	#,
# team_cpp/main.cpp:358:         sum += numbers[i];
	movl	4(%r14,%rdx), %ecx	# *_61, *_61
# team_cpp/main.cpp:357:     for (size_t i = top_half_start; i < num_integers; ++i) {
	addq	$2, %rax	#, i
# team_cpp/main.cpp:358:         sum += numbers[i];
	addq	%rcx, %r13	# *_61, stmp_sum_54.249
# team_cpp/main.cpp:357:     for (size_t i = top_half_start; i < num_integers; ++i) {
	cmpq	%r12, %rax	# num_integers, i
	jnb	.L130	#,
# team_cpp/main.cpp:358:         sum += numbers[i];
	movl	8(%r14,%rdx), %eax	# *_129, *_129
# team_cpp/main.cpp:358:         sum += numbers[i];
	addq	%rax, %r13	# *_129, stmp_sum_54.249
.L130:
# /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %r12	#, tmp219
	movl	$16, %edx	#,
	leaq	.LC5(%rip), %rsi	#, tmp218
	movq	%r12, %rdi	# tmp219,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	movq	%r13, %rsi	# stmp_sum_54.249,
	movq	%r12, %rdi	# tmp219,
	call	_ZNSo9_M_insertImEERSoT_@PLT	#
	movq	%rax, %rdi	# tmp229, _37
# /usr/include/c++/13/ostream:115: 	return __pf(*this);
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0	#
# team_cpp/main.cpp:363:     munmap(mapped, file_size);
	movq	%rbx, %rsi	# file_size,
	movq	%r14, %rdi	# mapped,
	call	munmap@PLT	#
# team_cpp/main.cpp:365:     return 0;
	xorl	%eax, %eax	# <retval>
	jmp	.L116	#
.L154:
# /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cerr(%rip), %rbx	#, tmp170
	movl	$19, %edx	#,
	leaq	.LC2(%rip), %rsi	#, tmp169
	movq	%rbx, %rdi	# tmp170,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/13/ostream:115: 	return __pf(*this);
	movq	%rbx, %rdi	# tmp170,
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0	#
# team_cpp/main.cpp:321:         return 1;
	jmp	.L118	#
.L155:
# /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	movl	$19, %edx	#,
	leaq	.LC4(%rip), %rsi	#, tmp176
.L152:
	leaq	_ZSt4cerr(%rip), %rbx	#, tmp177
	movq	%rbx, %rdi	# tmp177,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/13/ostream:115: 	return __pf(*this);
	movq	%rbx, %rdi	# tmp177,
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0	#
# team_cpp/main.cpp:340:         close(fd);
	movl	%r13d, %edi	# _34,
	call	close@PLT	#
# team_cpp/main.cpp:341:         return 1;
	jmp	.L118	#
.L125:
# /usr/include/c++/13/bits/stl_algo.h:1864: 	std::__insertion_sort(__first, __last, __comp);
	movq	%r15, %rsi	# _36,
	movq	%r14, %rdi	# mapped,
	call	_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.isra.0	#
	jmp	.L124	#
.L138:
# /usr/include/c++/13/bits/stl_algo.h:1799:       while (__comp(__val, __next))
	movq	%r13, %rsi	# __i, __last
	jmp	.L127	#
.L156:
	vzeroupper
	jmp	.L130	#
.L139:
# team_cpp/main.cpp:356:     uint64_t sum = 0;
	xorl	%r13d, %r13d	# stmp_sum_54.249
	jmp	.L130	#
.L140:
# team_cpp/main.cpp:357:     for (size_t i = top_half_start; i < num_integers; ++i) {
	movq	%rsi, %rax	# top_half_start, tmp.242
# team_cpp/main.cpp:357:     for (size_t i = top_half_start; i < num_integers; ++i) {
	vpxor	%xmm2, %xmm2, %xmm2	# _117
	xorl	%ecx, %ecx	# niters_vector_mult_vf.230
# team_cpp/main.cpp:356:     uint64_t sum = 0;
	xorl	%r13d, %r13d	# stmp_sum_54.249
	jmp	.L131	#
.L153:
# team_cpp/main.cpp:366: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE9138:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
