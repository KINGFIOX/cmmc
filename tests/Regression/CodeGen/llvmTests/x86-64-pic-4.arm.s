.arch armv7ve
.data
.data
.p2align 2
.globl a
a:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl get_a
get_a:
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	ldr r0, [r0, #0]
	bx lr
