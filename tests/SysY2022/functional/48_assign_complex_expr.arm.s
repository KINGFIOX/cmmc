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
	mvn r0, #0
	sub sp, sp, #4
	bl putint
	mov r0, #71
	bl putint
	add sp, sp, #4
	mov r0, #0
	pop { pc }
