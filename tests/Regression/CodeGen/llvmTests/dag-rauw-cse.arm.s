.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test
test:
	orr r0, r0, #1
	movw r1, #7057
	and r0, r0, r1
	bx lr
