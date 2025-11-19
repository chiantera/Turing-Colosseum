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
	.type	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, @function
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB9655:
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
	je	.L7	#,
# /usr/include/c++/13/bits/locale_facets.h:882: 	if (_M_widen_ok)
	cmpb	$0, 56(%rbp)	#, MEM[(const struct ctype *)_14]._M_widen_ok
	movq	%rdi, %rbx	# tmp99, __os
	je	.L3	#,
# /usr/include/c++/13/bits/locale_facets.h:883: 	  return _M_widen[static_cast<unsigned char>(__c)];
	movsbl	67(%rbp), %esi	# MEM[(const struct ctype *)_14]._M_widen[10],
.L4:
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
.L3:
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
	jmp	.L4	#
.L7:
# /usr/include/c++/13/bits/basic_ios.h:50: 	__throw_bad_cast();
	call	_ZSt16__throw_bad_castv@PLT	#
	.cfi_endproc
.LFE9655:
	.size	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, .-_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4
	.globl	_Z10radix_sortPjm
	.type	_Z10radix_sortPjm, @function
_Z10radix_sortPjm:
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
	andq	$-64, %rsp	#,
	subq	$2176, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
# team_cpp/main.cpp:155:     uint32_t* temp = new uint32_t[n];
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp307
	movq	%rax, 2168(%rsp)	# tmp307, D.101336
	movabsq	$2305843009213693950, %rax	#, tmp307
	cmpq	%rsi, %rax	# n, tmp199
	jb	.L9	#,
	movq	%rdi, %r15	# tmp304, arr
# team_cpp/main.cpp:155:     uint32_t* temp = new uint32_t[n];
	leaq	0(,%rsi,4), %rdi	#, tmp200
	movq	%rsi, %r13	# tmp305, n
# team_cpp/main.cpp:155:     uint32_t* temp = new uint32_t[n];
	call	_Znam@PLT	#
# team_cpp/main.cpp:130:     alignas(64) size_t count[256] = {0};
	leaq	64(%rsp), %rdi	#, tmp302
	movl	$2048, %edx	#,
	xorl	%esi, %esi	#
# team_cpp/main.cpp:155:     uint32_t* temp = new uint32_t[n];
	movq	%rax, %r14	# tmp306, _7
# team_cpp/main.cpp:130:     alignas(64) size_t count[256] = {0};
	call	memset@PLT	#
	movq	%rax, %rdi	#, tmp302
# team_cpp/main.cpp:133:     for (size_t block_start = 0; block_start < n; block_start += BLOCK_SIZE) {
	testq	%r13, %r13	# n
	je	.L10	#,
	movq	%r15, %r8	# arr, ivtmp.165
# team_cpp/main.cpp:133:     for (size_t block_start = 0; block_start < n; block_start += BLOCK_SIZE) {
	xorl	%esi, %esi	# _107
	.p2align 4,,10
	.p2align 3
.L13:
	movq	%rsi, %rdx	# _107, block_start
# team_cpp/main.cpp:134:         size_t block_end = std::min(block_start + BLOCK_SIZE, n);
	addq	$8192, %rsi	#, _107
# /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	cmpq	%rsi, %r13	# _107, n
	movq	%rsi, %rax	# _107, _156
	cmovbe	%r13, %rax	# n,, _156
# team_cpp/main.cpp:137:         for (size_t i = block_start; i < block_end; ++i) {
	cmpq	%rax, %rdx	# _156, block_start
	jnb	.L11	#,
	leaq	(%r15,%rax,4), %rcx	#, _312
	movq	%r8, %rax	# ivtmp.165, ivtmp.160
	.p2align 4,,10
	.p2align 3
.L12:
# team_cpp/main.cpp:138:             ++count[(src[i] >> shift) & 0xFF];
	movzbl	(%rax), %edx	# MEM[(uint32_t *)_315], _114
# team_cpp/main.cpp:137:         for (size_t i = block_start; i < block_end; ++i) {
	addq	$4, %rax	#, ivtmp.160
# team_cpp/main.cpp:138:             ++count[(src[i] >> shift) & 0xFF];
	incq	64(%rsp,%rdx,8)	# MEM[(long unsigned int[256] *)_415][_114]
# team_cpp/main.cpp:137:         for (size_t i = block_start; i < block_end; ++i) {
	cmpq	%rax, %rcx	# ivtmp.160, _312
	jne	.L12	#,
.L11:
# team_cpp/main.cpp:133:     for (size_t block_start = 0; block_start < n; block_start += BLOCK_SIZE) {
	addq	$32768, %r8	#, ivtmp.165
	cmpq	%r13, %rsi	# n, _107
	jb	.L13	#,
.L10:
	leaq	72(%rsp), %rax	#, ivtmp.69
	movq	64(%rsp), %rdx	# MEM[(long unsigned int *)_415], count_I_lsm0.52
	leaq	2112(%rsp), %r12	#, _363
	movq	%rax, 56(%rsp)	# ivtmp.69, %sfp
	.p2align 4,,10
	.p2align 3
.L14:
# team_cpp/main.cpp:144:         count[i] += count[i - 1];
	addq	(%rax), %rdx	# MEM[(long unsigned int *)_324], count_I_lsm0.52
# team_cpp/main.cpp:143:     for (size_t i = 1; i < 256; ++i) {
	addq	$8, %rax	#, ivtmp.153
# team_cpp/main.cpp:144:         count[i] += count[i - 1];
	movq	%rdx, -8(%rax)	# count_I_lsm0.52, MEM[(long unsigned int *)_324]
# team_cpp/main.cpp:143:     for (size_t i = 1; i < 256; ++i) {
	cmpq	%rax, %r12	# ivtmp.153, _363
	jne	.L14	#,
# team_cpp/main.cpp:148:     for (size_t i = n; i-- > 0; ) {
	leaq	-1(%r13), %rbx	#, i
# team_cpp/main.cpp:148:     for (size_t i = n; i-- > 0; ) {
	testq	%r13, %r13	# n
	je	.L15	#,
# team_cpp/main.cpp:148:     for (size_t i = n; i-- > 0; ) {
	movq	%rbx, %rdx	# i, i
	.p2align 4,,10
	.p2align 3
.L16:
# team_cpp/main.cpp:149:         uint8_t byte = (src[i] >> shift) & 0xFF;
	movl	(%r15,%rdx,4), %esi	# MEM[(uint32_t *)arr_8(D) + i_224 * 4], _128
# team_cpp/main.cpp:150:         dst[--count[byte]] = src[i];
	movzbl	%sil, %r8d	# _128, _130
# team_cpp/main.cpp:150:         dst[--count[byte]] = src[i];
	movq	64(%rsp,%r8,8), %rax	# MEM[(long unsigned int[256] *)_415][_130], tmp313
	decq	%rax	# _132
# team_cpp/main.cpp:150:         dst[--count[byte]] = src[i];
	movq	%rax, 64(%rsp,%r8,8)	# _132, MEM[(long unsigned int[256] *)_415][_130]
	movl	%esi, (%r14,%rax,4)	# _128, *_134
# team_cpp/main.cpp:148:     for (size_t i = n; i-- > 0; ) {
	subq	$1, %rdx	#, i
	jnb	.L16	#,
# team_cpp/main.cpp:130:     alignas(64) size_t count[256] = {0};
	movl	$2048, %edx	#,
	xorl	%esi, %esi	#
	call	memset@PLT	#
	movq	%r14, %r9	# _7, ivtmp.137
# team_cpp/main.cpp:133:     for (size_t block_start = 0; block_start < n; block_start += BLOCK_SIZE) {
	xorl	%r8d, %r8d	# _75
# team_cpp/main.cpp:130:     alignas(64) size_t count[256] = {0};
	movq	%rax, %rdi	#, tmp302
	.p2align 4,,10
	.p2align 3
.L21:
	movq	%r8, %rdx	# _75, block_start
# team_cpp/main.cpp:134:         size_t block_end = std::min(block_start + BLOCK_SIZE, n);
	addq	$8192, %r8	#, _75
# /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	cmpq	%r8, %r13	# _75, n
	movq	%r8, %rax	# _75, _167
	cmovbe	%r13, %rax	# n,, _167
# team_cpp/main.cpp:137:         for (size_t i = block_start; i < block_end; ++i) {
	cmpq	%rax, %rdx	# _167, block_start
	jnb	.L19	#,
	leaq	(%r14,%rax,4), %rsi	#, _333
	movq	%r9, %rax	# ivtmp.137, ivtmp.132
	.p2align 4,,10
	.p2align 3
.L20:
# team_cpp/main.cpp:138:             ++count[(src[i] >> shift) & 0xFF];
	movzbl	1(%rax), %edx	# MEM[(uint32_t *)_336], _83
# team_cpp/main.cpp:137:         for (size_t i = block_start; i < block_end; ++i) {
	addq	$4, %rax	#, ivtmp.132
# team_cpp/main.cpp:138:             ++count[(src[i] >> shift) & 0xFF];
	incq	64(%rsp,%rdx,8)	# MEM[(long unsigned int[256] *)_415][_83]
# team_cpp/main.cpp:137:         for (size_t i = block_start; i < block_end; ++i) {
	cmpq	%rax, %rsi	# ivtmp.132, _333
	jne	.L20	#,
.L19:
# team_cpp/main.cpp:133:     for (size_t block_start = 0; block_start < n; block_start += BLOCK_SIZE) {
	addq	$32768, %r9	#, ivtmp.137
	cmpq	%r13, %r8	# n, _75
	jb	.L21	#,
.L18:
	movq	64(%rsp), %rdx	# MEM[(long unsigned int *)_415], count_I_lsm0.51
	movq	56(%rsp), %rax	# %sfp, ivtmp.125
	.p2align 4,,10
	.p2align 3
.L22:
# team_cpp/main.cpp:144:         count[i] += count[i - 1];
	addq	(%rax), %rdx	# MEM[(long unsigned int *)_345], count_I_lsm0.51
# team_cpp/main.cpp:143:     for (size_t i = 1; i < 256; ++i) {
	addq	$8, %rax	#, ivtmp.125
# team_cpp/main.cpp:144:         count[i] += count[i - 1];
	movq	%rdx, -8(%rax)	# count_I_lsm0.51, MEM[(long unsigned int *)_345]
# team_cpp/main.cpp:143:     for (size_t i = 1; i < 256; ++i) {
	cmpq	%rax, %r12	# ivtmp.125, _363
	jne	.L22	#,
# team_cpp/main.cpp:148:     for (size_t i = n; i-- > 0; ) {
	testq	%r13, %r13	# n
	je	.L23	#,
# team_cpp/main.cpp:148:     for (size_t i = n; i-- > 0; ) {
	movq	%rbx, %rdx	# i, i
	.p2align 4,,10
	.p2align 3
.L24:
# team_cpp/main.cpp:149:         uint8_t byte = (src[i] >> shift) & 0xFF;
	movl	(%r14,%rdx,4), %ecx	# MEM[(uint32_t *)_7 + i_220 * 4], _97
# team_cpp/main.cpp:150:         dst[--count[byte]] = src[i];
	movzbl	%ch, %esi	# _97, _100
# team_cpp/main.cpp:150:         dst[--count[byte]] = src[i];
	movq	64(%rsp,%rsi,8), %rax	# MEM[(long unsigned int[256] *)_415][_100], tmp315
	decq	%rax	# _102
# team_cpp/main.cpp:150:         dst[--count[byte]] = src[i];
	movq	%rax, 64(%rsp,%rsi,8)	# _102, MEM[(long unsigned int[256] *)_415][_100]
	movl	%ecx, (%r15,%rax,4)	# _97, *_104
# team_cpp/main.cpp:148:     for (size_t i = n; i-- > 0; ) {
	subq	$1, %rdx	#, i
	jnb	.L24	#,
# team_cpp/main.cpp:130:     alignas(64) size_t count[256] = {0};
	movl	$2048, %edx	#,
	xorl	%esi, %esi	#
	call	memset@PLT	#
	movq	%r15, %r9	# arr, ivtmp.109
# team_cpp/main.cpp:133:     for (size_t block_start = 0; block_start < n; block_start += BLOCK_SIZE) {
	xorl	%r8d, %r8d	# _43
# team_cpp/main.cpp:130:     alignas(64) size_t count[256] = {0};
	movq	%rax, %rdi	#, tmp302
	.p2align 4,,10
	.p2align 3
.L29:
	movq	%r8, %rdx	# _43, block_start
# team_cpp/main.cpp:134:         size_t block_end = std::min(block_start + BLOCK_SIZE, n);
	addq	$8192, %r8	#, _43
# /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	cmpq	%r8, %r13	# _43, n
	movq	%r8, %rax	# _43, _178
	cmovbe	%r13, %rax	# n,, _178
# team_cpp/main.cpp:137:         for (size_t i = block_start; i < block_end; ++i) {
	cmpq	%rax, %rdx	# _178, block_start
	jnb	.L27	#,
	leaq	(%r15,%rax,4), %rsi	#, _354
	movq	%r9, %rax	# ivtmp.109, ivtmp.104
	.p2align 4,,10
	.p2align 3
.L28:
# team_cpp/main.cpp:138:             ++count[(src[i] >> shift) & 0xFF];
	movzbl	2(%rax), %edx	# MEM[(uint32_t *)_401], _51
# team_cpp/main.cpp:137:         for (size_t i = block_start; i < block_end; ++i) {
	addq	$4, %rax	#, ivtmp.104
# team_cpp/main.cpp:138:             ++count[(src[i] >> shift) & 0xFF];
	incq	64(%rsp,%rdx,8)	# MEM[(long unsigned int[256] *)_415][_51]
# team_cpp/main.cpp:137:         for (size_t i = block_start; i < block_end; ++i) {
	cmpq	%rax, %rsi	# ivtmp.104, _354
	jne	.L28	#,
.L27:
# team_cpp/main.cpp:133:     for (size_t block_start = 0; block_start < n; block_start += BLOCK_SIZE) {
	addq	$32768, %r9	#, ivtmp.109
	cmpq	%r13, %r8	# n, _43
	jb	.L29	#,
.L26:
	movq	64(%rsp), %rdx	# MEM[(long unsigned int *)_415], count_I_lsm0.50
	movq	56(%rsp), %rax	# %sfp, ivtmp.97
	.p2align 4,,10
	.p2align 3
.L30:
# team_cpp/main.cpp:144:         count[i] += count[i - 1];
	addq	(%rax), %rdx	# MEM[(long unsigned int *)_392], count_I_lsm0.50
# team_cpp/main.cpp:143:     for (size_t i = 1; i < 256; ++i) {
	addq	$8, %rax	#, ivtmp.97
# team_cpp/main.cpp:144:         count[i] += count[i - 1];
	movq	%rdx, -8(%rax)	# count_I_lsm0.50, MEM[(long unsigned int *)_392]
# team_cpp/main.cpp:143:     for (size_t i = 1; i < 256; ++i) {
	cmpq	%r12, %rax	# _363, ivtmp.97
	jne	.L30	#,
# team_cpp/main.cpp:148:     for (size_t i = n; i-- > 0; ) {
	testq	%r13, %r13	# n
	je	.L31	#,
# team_cpp/main.cpp:148:     for (size_t i = n; i-- > 0; ) {
	movq	%rbx, %rsi	# i, i
	.p2align 4,,10
	.p2align 3
.L32:
# team_cpp/main.cpp:149:         uint8_t byte = (src[i] >> shift) & 0xFF;
	movl	(%r15,%rsi,4), %r8d	# MEM[(uint32_t *)arr_8(D) + i_216 * 4], _65
# team_cpp/main.cpp:149:         uint8_t byte = (src[i] >> shift) & 0xFF;
	movl	%r8d, %edx	# _65, tmp270
	shrl	$16, %edx	#, tmp270
# team_cpp/main.cpp:150:         dst[--count[byte]] = src[i];
	movzbl	%dl, %edx	# tmp270, _68
# team_cpp/main.cpp:150:         dst[--count[byte]] = src[i];
	movq	64(%rsp,%rdx,8), %rax	# MEM[(long unsigned int[256] *)_415][_68], tmp318
	decq	%rax	# _70
# team_cpp/main.cpp:150:         dst[--count[byte]] = src[i];
	movq	%rax, 64(%rsp,%rdx,8)	# _70, MEM[(long unsigned int[256] *)_415][_68]
	movl	%r8d, (%r14,%rax,4)	# _65, *_72
# team_cpp/main.cpp:148:     for (size_t i = n; i-- > 0; ) {
	subq	$1, %rsi	#, i
	jnb	.L32	#,
# team_cpp/main.cpp:130:     alignas(64) size_t count[256] = {0};
	movl	$2048, %edx	#,
	xorl	%esi, %esi	#
	call	memset@PLT	#
	movq	%r14, %r8	# _7, ivtmp.81
# team_cpp/main.cpp:133:     for (size_t block_start = 0; block_start < n; block_start += BLOCK_SIZE) {
	xorl	%edi, %edi	# _12
	.p2align 4,,10
	.p2align 3
.L37:
	movq	%rdi, %rdx	# _12, block_start
# team_cpp/main.cpp:134:         size_t block_end = std::min(block_start + BLOCK_SIZE, n);
	addq	$8192, %rdi	#, _12
# /usr/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	cmpq	%rdi, %r13	# _12, n
	movq	%rdi, %rax	# _12, _189
	cmovbe	%r13, %rax	# n,, _189
# team_cpp/main.cpp:137:         for (size_t i = block_start; i < block_end; ++i) {
	cmpq	%rax, %rdx	# _189, block_start
	jnb	.L35	#,
	leaq	(%r14,%rax,4), %rsi	#, _372
	movq	%r8, %rax	# ivtmp.81, ivtmp.76
	.p2align 4,,10
	.p2align 3
.L36:
# team_cpp/main.cpp:138:             ++count[(src[i] >> shift) & 0xFF];
	movzbl	3(%rax), %edx	# MEM[(uint32_t *)_369], _19
# team_cpp/main.cpp:137:         for (size_t i = block_start; i < block_end; ++i) {
	addq	$4, %rax	#, ivtmp.76
# team_cpp/main.cpp:138:             ++count[(src[i] >> shift) & 0xFF];
	incq	64(%rsp,%rdx,8)	# MEM[(long unsigned int[256] *)_415][_19]
# team_cpp/main.cpp:137:         for (size_t i = block_start; i < block_end; ++i) {
	cmpq	%rsi, %rax	# _372, ivtmp.76
	jne	.L36	#,
.L35:
# team_cpp/main.cpp:133:     for (size_t block_start = 0; block_start < n; block_start += BLOCK_SIZE) {
	addq	$32768, %r8	#, ivtmp.81
	cmpq	%r13, %rdi	# n, _12
	jb	.L37	#,
.L34:
	movq	64(%rsp), %rdx	# MEM[(long unsigned int *)_415], count_I_lsm0.49
	movq	56(%rsp), %rax	# %sfp, ivtmp.69
	.p2align 4,,10
	.p2align 3
.L38:
# team_cpp/main.cpp:144:         count[i] += count[i - 1];
	addq	(%rax), %rdx	# MEM[(long unsigned int *)_360], count_I_lsm0.49
# team_cpp/main.cpp:143:     for (size_t i = 1; i < 256; ++i) {
	addq	$8, %rax	#, ivtmp.69
# team_cpp/main.cpp:144:         count[i] += count[i - 1];
	movq	%rdx, -8(%rax)	# count_I_lsm0.49, MEM[(long unsigned int *)_360]
# team_cpp/main.cpp:143:     for (size_t i = 1; i < 256; ++i) {
	cmpq	%r12, %rax	# _363, ivtmp.69
	jne	.L38	#,
# team_cpp/main.cpp:148:     for (size_t i = n; i-- > 0; ) {
	testq	%r13, %r13	# n
	je	.L39	#,
	.p2align 4,,10
	.p2align 3
.L40:
# team_cpp/main.cpp:149:         uint8_t byte = (src[i] >> shift) & 0xFF;
	movl	(%r14,%rbx,4), %esi	# MEM[(uint32_t *)_7 + i_108 * 4], _33
# team_cpp/main.cpp:149:         uint8_t byte = (src[i] >> shift) & 0xFF;
	movl	%esi, %edx	# _33, _35
	shrl	$24, %edx	#,
# team_cpp/main.cpp:150:         dst[--count[byte]] = src[i];
	movq	64(%rsp,%rdx,8), %rax	# MEM[(long unsigned int[256] *)_415][_35], tmp321
	decq	%rax	# _37
# team_cpp/main.cpp:150:         dst[--count[byte]] = src[i];
	movq	%rax, 64(%rsp,%rdx,8)	# _37, MEM[(long unsigned int[256] *)_415][_35]
	movl	%esi, (%r15,%rax,4)	# _33, *_39
# team_cpp/main.cpp:148:     for (size_t i = n; i-- > 0; ) {
	subq	$1, %rbx	#, i
	jnb	.L40	#,
.L39:
# team_cpp/main.cpp:160:     delete[] temp;
	movq	2168(%rsp), %rax	# D.101336, tmp308
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp308
	jne	.L70	#,
# team_cpp/main.cpp:161: }
	leaq	-40(%rbp), %rsp	#,
# team_cpp/main.cpp:160:     delete[] temp;
	movq	%r14, %rdi	# _7,
# team_cpp/main.cpp:161: }
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
# team_cpp/main.cpp:160:     delete[] temp;
	jmp	_ZdaPv@PLT	#
.L15:
	.cfi_restore_state
# team_cpp/main.cpp:130:     alignas(64) size_t count[256] = {0};
	movl	$2048, %edx	#,
	xorl	%esi, %esi	#
	call	memset@PLT	#
	movq	%rax, %rdi	#, tmp302
	jmp	.L18	#
.L23:
	movl	$2048, %edx	#,
	xorl	%esi, %esi	#
	call	memset@PLT	#
	movq	%rax, %rdi	#, tmp302
	jmp	.L26	#
.L31:
	movl	$2048, %edx	#,
	xorl	%esi, %esi	#
	call	memset@PLT	#
	jmp	.L34	#
.L70:
# team_cpp/main.cpp:160:     delete[] temp;
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	_Z10radix_sortPjm.cold, @function
_Z10radix_sortPjm.cold:
.LFSB9138:
.L9:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -56
	.cfi_offset 6, -16
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
# team_cpp/main.cpp:155:     uint32_t* temp = new uint32_t[n];
	movq	2168(%rsp), %rax	# D.101336, tmp309
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp309
	jne	.L71	#,
	call	__cxa_throw_bad_array_new_length@PLT	#
.L71:
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE9138:
	.text
	.size	_Z10radix_sortPjm, .-_Z10radix_sortPjm
	.section	.text.unlikely
	.size	_Z10radix_sortPjm.cold, .-_Z10radix_sortPjm.cold
.LCOLDE0:
	.text
.LHOTE0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Usage: "
.LC2:
	.string	" <input_file>"
.LC3:
	.string	"Failed to open file"
.LC4:
	.string	"Failed to get file size"
.LC5:
	.string	"Failed to mmap file"
.LC6:
	.string	"Sum of top 50%: "
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB9139:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rsi, %rbx	# tmp202, argv
	andq	$-32, %rsp	#,
	subq	$160, %rsp	#,
# team_cpp/main.cpp:218: int main(int argc, char* argv[]) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp208
	movq	%rax, 152(%rsp)	# tmp208, D.101388
	xorl	%eax, %eax	# tmp208
# team_cpp/main.cpp:219:     if (argc != 2) {
	cmpl	$2, %edi	#, tmp201
	je	.L73	#,
# /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cerr(%rip), %r12	#, tmp149
	movl	$7, %edx	#,
	leaq	.LC1(%rip), %rsi	#, tmp148
	movq	%r12, %rdi	# tmp149,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# team_cpp/main.cpp:220:         std::cerr << "Usage: " << argv[0] << " <input_file>" << std::endl;
	movq	(%rbx), %rsi	# *argv_14(D),
	movq	%r12, %rdi	# tmp149,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	movl	$13, %edx	#,
	leaq	.LC2(%rip), %rsi	#, tmp151
# team_cpp/main.cpp:220:         std::cerr << "Usage: " << argv[0] << " <input_file>" << std::endl;
	movq	%rax, %rbx	# tmp203, _33
# /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	movq	%rax, %rdi	# _33,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/13/ostream:115: 	return __pf(*this);
	movq	%rbx, %rdi	# _33,
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0	#
.L74:
# team_cpp/main.cpp:221:         return 1;
	movl	$1, %eax	#, <retval>
.L72:
# team_cpp/main.cpp:275: }
	movq	152(%rsp), %rdx	# D.101388, tmp209
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp209
	jne	.L99	#,
	leaq	-32(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
.L73:
	.cfi_restore_state
# /usr/include/x86_64-linux-gnu/bits/fcntl2.h:53:       return __open_alias (__path, __oflag, __va_arg_pack ());
	movq	8(%rsi), %rdi	# MEM[(char * *)argv_14(D) + 8B], MEM[(char * *)argv_14(D) + 8B]
	xorl	%eax, %eax	#
	xorl	%esi, %esi	#
	call	open@PLT	#
	movl	%eax, %ebx	# tmp204, _35
# team_cpp/main.cpp:228:     if (fd == -1) {
	cmpl	$-1, %eax	#, _35
	je	.L100	#,
# team_cpp/main.cpp:235:     if (fstat(fd, &sb) == -1) {
	movq	%rsp, %rsi	#, tmp156
	movl	%eax, %edi	# _35,
	call	fstat@PLT	#
# /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	movl	$23, %edx	#,
	leaq	.LC4(%rip), %rsi	#, tmp157
# team_cpp/main.cpp:235:     if (fstat(fd, &sb) == -1) {
	incl	%eax	# tmp205
	je	.L98	#,
# team_cpp/main.cpp:241:     size_t file_size = sb.st_size;
	movq	48(%rsp), %r13	# sb.st_size, file_size
# team_cpp/main.cpp:245:     void* mapped = mmap(nullptr, file_size, PROT_READ | PROT_WRITE,
	xorl	%r9d, %r9d	#
	movl	%ebx, %r8d	# _35,
	movl	$32770, %ecx	#,
	movl	$3, %edx	#,
	xorl	%edi, %edi	#
	movq	%r13, %rsi	# file_size,
# team_cpp/main.cpp:242:     size_t num_integers = file_size / sizeof(uint32_t);
	movq	%r13, %r14	# file_size, num_integers
# team_cpp/main.cpp:245:     void* mapped = mmap(nullptr, file_size, PROT_READ | PROT_WRITE,
	call	mmap@PLT	#
# team_cpp/main.cpp:242:     size_t num_integers = file_size / sizeof(uint32_t);
	shrq	$2, %r14	#, num_integers
# team_cpp/main.cpp:245:     void* mapped = mmap(nullptr, file_size, PROT_READ | PROT_WRITE,
	movq	%rax, %r12	# tmp206, mapped
# team_cpp/main.cpp:247:     if (mapped == MAP_FAILED) {
	cmpq	$-1, %rax	#, mapped
	je	.L101	#,
# team_cpp/main.cpp:254:     madvise(mapped, file_size, MADV_SEQUENTIAL | MADV_WILLNEED);
	movl	$3, %edx	#,
	movq	%r13, %rsi	# file_size,
	movq	%rax, %rdi	# mapped,
	call	madvise@PLT	#
# team_cpp/main.cpp:256:     close(fd);
	movl	%ebx, %edi	# _35,
	call	close@PLT	#
# team_cpp/main.cpp:261:     radix_sort(numbers, num_integers);
	movq	%r14, %rsi	# num_integers,
	movq	%r12, %rdi	# mapped,
	call	_Z10radix_sortPjm	#
# team_cpp/main.cpp:264:     size_t top_half_start = num_integers / 2;
	movq	%r13, %rcx	# file_size, top_half_start
	shrq	$3, %rcx	#, top_half_start
# team_cpp/main.cpp:266:     for (size_t i = top_half_start; i < num_integers; ++i) {
	cmpq	%r14, %rcx	# num_integers, top_half_start
	jnb	.L87	#,
	movq	%r14, %rdx	# num_integers, niters.170
	subq	%rcx, %rdx	# top_half_start, niters.170
	leaq	-1(%rdx), %rax	#, tmp163
	cmpq	$6, %rax	#, tmp163
	jbe	.L88	#,
	movq	%rdx, %rsi	# niters.170, bnd.171
	leaq	(%r12,%rcx,4), %rax	#, ivtmp.197
	vpxor	%xmm2, %xmm2, %xmm2	# vect_sum_28.179
	shrq	$3, %rsi	#, bnd.171
	salq	$5, %rsi	#, tmp166
	addq	%rax, %rsi	# ivtmp.197, _111
	.p2align 4,,10
	.p2align 3
.L81:
# team_cpp/main.cpp:267:         sum += numbers[i];
	vmovdqu	(%rax), %ymm0	# MEM <vector(8) unsigned int> [(uint32_t *)_50], MEM <vector(8) unsigned int> [(uint32_t *)_50]
	addq	$32, %rax	#, ivtmp.197
	vpmovzxdq	%xmm0, %ymm1	# MEM <vector(8) unsigned int> [(uint32_t *)_50],
	vextracti128	$0x1, %ymm0, %xmm0	# MEM <vector(8) unsigned int> [(uint32_t *)_50], tmp171
	vpmovzxdq	%xmm0, %ymm0	# tmp171, vect__7.178
# team_cpp/main.cpp:267:         sum += numbers[i];
	vpaddq	%ymm0, %ymm1, %ymm0	# vect__7.178, vect__7.178, tmp172
	vpaddq	%ymm0, %ymm2, %ymm2	# tmp172, vect_sum_28.179, vect_sum_28.179
	cmpq	%rsi, %rax	# _111, ivtmp.197
	jne	.L81	#,
	vmovdqa	%xmm2, %xmm0	# vect_sum_28.179, tmp173
	vextracti64x2	$0x1, %ymm2, %xmm2	# vect_sum_28.179, tmp174
	movq	%rdx, %rsi	# niters.170, niters_vector_mult_vf.172
	vpaddq	%xmm2, %xmm0, %xmm2	# tmp174, tmp173, _84
	andq	$-8, %rsi	#, niters_vector_mult_vf.172
	vpsrldq	$8, %xmm2, %xmm0	#, _84, tmp176
	leaq	(%rcx,%rsi), %rax	#, tmp.184
	vpaddq	%xmm0, %xmm2, %xmm0	# tmp176, _84, tmp177
	vmovq	%xmm0, %rbx	# tmp177, stmp_sum_53.191
	testb	$7, %dl	#, niters.170
	je	.L102	#,
	vzeroupper
.L80:
	subq	%rsi, %rdx	# niters_vector_mult_vf.172, niters.181
	leaq	-1(%rdx), %rdi	#, tmp179
	cmpq	$2, %rdi	#, tmp179
	jbe	.L84	#,
# team_cpp/main.cpp:267:         sum += numbers[i];
	addq	%rsi, %rcx	# niters_vector_mult_vf.172, tmp180
	vmovdqu	(%r12,%rcx,4), %xmm1	# MEM <vector(4) unsigned int> [(uint32_t *)vectp.187_116], MEM <vector(4) unsigned int> [(uint32_t *)vectp.187_116]
	movq	%rdx, %rcx	# niters.181, niters_vector_mult_vf.183
	andq	$-4, %rcx	#, niters_vector_mult_vf.183
	vpmovzxdq	%xmm1, %xmm0	# MEM <vector(4) unsigned int> [(uint32_t *)vectp.187_116], vect__54.189
	vpsrldq	$8, %xmm1, %xmm1	#, MEM <vector(4) unsigned int> [(uint32_t *)vectp.187_116], tmp184
	addq	%rcx, %rax	# niters_vector_mult_vf.183, tmp.184
	andb	$3, %dl	#, niters.181
	vpmovzxdq	%xmm1, %xmm1	# tmp184, vect__54.189
# team_cpp/main.cpp:267:         sum += numbers[i];
	vpaddq	%xmm1, %xmm0, %xmm0	# vect__54.189, vect__54.189, tmp185
	vpaddq	%xmm2, %xmm0, %xmm0	# _84, tmp185, vect_sum_53.190
	vpsrldq	$8, %xmm0, %xmm1	#, vect_sum_53.190, tmp187
	vpaddq	%xmm1, %xmm0, %xmm0	# tmp187, vect_sum_53.190, tmp188
	vmovq	%xmm0, %rbx	# tmp188, stmp_sum_53.191
	je	.L79	#,
.L84:
# team_cpp/main.cpp:267:         sum += numbers[i];
	movl	(%r12,%rax,4), %ecx	# *_5, *_5
	leaq	0(,%rax,4), %rdx	#, _4
# team_cpp/main.cpp:267:         sum += numbers[i];
	addq	%rcx, %rbx	# *_5, stmp_sum_53.191
# team_cpp/main.cpp:266:     for (size_t i = top_half_start; i < num_integers; ++i) {
	leaq	1(%rax), %rcx	#, i
# team_cpp/main.cpp:266:     for (size_t i = top_half_start; i < num_integers; ++i) {
	cmpq	%r14, %rcx	# num_integers, i
	jnb	.L79	#,
# team_cpp/main.cpp:267:         sum += numbers[i];
	movl	4(%r12,%rdx), %ecx	# *_56, *_56
# team_cpp/main.cpp:266:     for (size_t i = top_half_start; i < num_integers; ++i) {
	addq	$2, %rax	#, i
# team_cpp/main.cpp:267:         sum += numbers[i];
	addq	%rcx, %rbx	# *_56, stmp_sum_53.191
# team_cpp/main.cpp:266:     for (size_t i = top_half_start; i < num_integers; ++i) {
	cmpq	%r14, %rax	# num_integers, i
	jnb	.L79	#,
# team_cpp/main.cpp:267:         sum += numbers[i];
	movl	8(%r12,%rdx), %eax	# *_96, *_96
# team_cpp/main.cpp:267:         sum += numbers[i];
	addq	%rax, %rbx	# *_96, stmp_sum_53.191
.L79:
# /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %r14	#, tmp197
	movl	$16, %edx	#,
	leaq	.LC6(%rip), %rsi	#, tmp196
	movq	%r14, %rdi	# tmp197,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/13/ostream:173:       { return _M_insert(__n); }
	movq	%rbx, %rsi	# stmp_sum_53.191,
	movq	%r14, %rdi	# tmp197,
	call	_ZNSo9_M_insertImEERSoT_@PLT	#
	movq	%rax, %rdi	# tmp207, _36
# /usr/include/c++/13/ostream:115: 	return __pf(*this);
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0	#
# team_cpp/main.cpp:272:     munmap(mapped, file_size);
	movq	%r13, %rsi	# file_size,
	movq	%r12, %rdi	# mapped,
	call	munmap@PLT	#
# team_cpp/main.cpp:274:     return 0;
	xorl	%eax, %eax	# <retval>
	jmp	.L72	#
.L101:
# /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	movl	$19, %edx	#,
	leaq	.LC5(%rip), %rsi	#, tmp160
.L98:
	leaq	_ZSt4cerr(%rip), %r12	#, tmp161
	movq	%r12, %rdi	# tmp161,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/13/ostream:115: 	return __pf(*this);
	movq	%r12, %rdi	# tmp161,
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0	#
# team_cpp/main.cpp:249:         close(fd);
	movl	%ebx, %edi	# _35,
	call	close@PLT	#
# team_cpp/main.cpp:250:         return 1;
	jmp	.L74	#
.L100:
# /usr/include/c++/13/ostream:667: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cerr(%rip), %rbx	#, tmp154
	movl	$19, %edx	#,
	leaq	.LC3(%rip), %rsi	#, tmp153
	movq	%rbx, %rdi	# tmp154,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/13/ostream:115: 	return __pf(*this);
	movq	%rbx, %rdi	# tmp154,
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0	#
# team_cpp/main.cpp:230:         return 1;
	jmp	.L74	#
.L102:
	vzeroupper
	jmp	.L79	#
.L87:
# team_cpp/main.cpp:265:     uint64_t sum = 0;
	xorl	%ebx, %ebx	# stmp_sum_53.191
	jmp	.L79	#
.L88:
# team_cpp/main.cpp:266:     for (size_t i = top_half_start; i < num_integers; ++i) {
	movq	%rcx, %rax	# top_half_start, tmp.184
# team_cpp/main.cpp:266:     for (size_t i = top_half_start; i < num_integers; ++i) {
	vpxor	%xmm2, %xmm2, %xmm2	# _84
	xorl	%esi, %esi	# niters_vector_mult_vf.172
# team_cpp/main.cpp:265:     uint64_t sum = 0;
	xorl	%ebx, %ebx	# stmp_sum_53.191
	jmp	.L80	#
.L99:
# team_cpp/main.cpp:275: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE9139:
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
