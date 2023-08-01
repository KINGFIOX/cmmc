.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl bare_select
bare_select:
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.p2align 4
.globl bare_select_float
bare_select_float:
	cmp r0, #0
	vmovne.f32 s1, s0
	vmov.f32 s0, s1
	bx lr
