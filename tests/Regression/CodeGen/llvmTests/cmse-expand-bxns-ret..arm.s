.arch armv7ve
.data
.data
.align 4
.globl counter
counter:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo
foo:
	movw r0, #:lower16:counter
	mov r1, #5
	movt r0, #:upper16:counter
	str r1, [r0, #0]
	bx lr
