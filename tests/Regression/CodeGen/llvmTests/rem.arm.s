.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test1
test1:
	movw r1, #32897
	movt r1, #32896
	smmla r1, r0, r1, r0
	asr r2, r1, #7
	add r1, r2, r1, lsr #31
	rsb r1, r1, r1, lsl #8
	sub r0, r0, r1
	bx lr
.p2align 4
.globl test2
test2:
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r1, r1, #8
	sub r0, r0, r1, lsl #8
	bx lr
.p2align 4
.globl test3
test3:
	mov r1, #255
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.p2align 4
.globl test4
test4:
	and r0, r0, #255
	bx lr
.p2align 4
.globl test5
test5:
	mov r1, #41
	sdiv r2, r1, r0
	mls r0, r2, r0, r1
	bx lr
