.arch armv7ve
.data
.data
.globl foo
foo:
	.byte	1
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	mov r0, #0
	bx lr
