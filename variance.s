	.file	"variance.c"
	.globl	variance
	.data
	.align 8
	.type	variance, @function
	.size	variance, 8

/* FUNCTION VARIABLE DEFINITIONS:

	%xmm0 = x[i]
	%xmm1 = sum1
	%xmm2 = sum2
	%xmm3 =  n (double version)
	%r8 = i
	%r9 = n

*/

variance:

	push	%rbp
	movq	%rsp, %rbp

	xorq	%r8, %r8
	movq	%rdi, %r9
	xorpd	%xmm1,%xmm1
	xorpd	%xmm2, %xmm2
	cvtsi2sd	%r9, %xmm3
	decq	%r9
	jmp		2f
1:	movsd	(%rsi, %r8, 8), %xmm0
	addsd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	incq	%r8
2:	cmpq %r8, %r9
	jl	1b
	divsd	%xmm3, %xmm1
	divsd	%xmm3,	%xmm2
	mulsd	%xmm2, %xmm2
	subsd	%xmm1, %xmm2
	movsd	%xmm2, %xmm0

	pop		%rbp
	ret

	
	
	
