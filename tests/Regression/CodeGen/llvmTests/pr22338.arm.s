.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl fn
fn:
	sub r1, r1, #1
	clz r1, r1
	lsr r1, r1, #5
	cmp r1, #0
	mov r1, #0
	movne r1, #2
	cmp r0, #1
	mov r0, #0
	movwne r0, #1
	lsl r0, r0, r1
	bx lr
