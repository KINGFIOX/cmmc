.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl callee
callee:
	mov r0, #0
	bx lr
.globl caller
caller:
	mov r0, #0
	bx lr
