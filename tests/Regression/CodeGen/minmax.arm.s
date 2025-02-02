.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl smin_lt
smin_lt:
	cmp r0, r1
	movge r0, r1
	bx lr
.p2align 4
.globl smax_lt
smax_lt:
	cmp r0, r1
	movle r0, r1
	bx lr
.p2align 4
.globl smin_le
smin_le:
	cmp r0, r1
	movge r0, r1
	bx lr
.p2align 4
.globl smax_le
smax_le:
	cmp r0, r1
	movle r0, r1
	bx lr
.p2align 4
.globl smin_gt
smin_gt:
	cmp r0, r1
	movge r0, r1
	bx lr
.p2align 4
.globl smax_gt
smax_gt:
	cmp r0, r1
	movle r0, r1
	bx lr
.p2align 4
.globl smin_ge
smin_ge:
	cmp r0, r1
	movge r0, r1
	bx lr
.p2align 4
.globl smax_ge
smax_ge:
	cmp r0, r1
	movle r0, r1
	bx lr
.p2align 4
.globl clamp_mask
clamp_mask:
	usat r0, #7, r0
	bx lr
.p2align 4
.globl clamp_mask2
clamp_mask2:
	usat r0, #8, r0
	bx lr
.p2align 4
.globl smax_zero
smax_zero:
	bic r0, r0, r0, asr #31
	bx lr
.p2align 4
.globl smax_imm
smax_imm:
	cmp r0, #127
	movle r0, #127
	bx lr
.p2align 4
.globl smin_imm
smin_imm:
	cmp r0, #255
	movge r0, #255
	bx lr
.p2align 4
.globl ssat
ssat:
	ssat r0, #8, r0
	bx lr
