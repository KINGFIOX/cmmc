.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl t
t:
	movw r1, #1
	movt r1, #65535
	add r0, r0, r1
	bx lr