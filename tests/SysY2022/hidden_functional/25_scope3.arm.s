.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { lr }
	mov r0, #97
	sub sp, sp, #4
	bl putch
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #46
	pop { pc }
