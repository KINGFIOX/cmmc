.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl f1
f1:
	udiv r0, r1, r0
	add r1, r2, #1
	add r0, r0, r1
	bx lr
.p2align 4
.globl f2
f2:
	push { r4 }
	udiv r4, r1, r0
	mls r0, r4, r0, r1
	sub r1, r2, r3
	add r0, r0, r1
	pop { r4 }
	bx lr
.p2align 4
.globl f3
f3:
	add r2, r0, r1
	sub r0, r0, r1
	mul r0, r2, r0
	bx lr
.p2align 4
.globl f4
f4:
	sub r0, r0, r1
	sub r1, r1, r2
	udiv r0, r0, r1
	sub r1, r2, r3
	mul r0, r0, r1
	bx lr
