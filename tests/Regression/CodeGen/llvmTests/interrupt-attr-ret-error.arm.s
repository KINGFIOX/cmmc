.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl isr1_user
isr1_user:
	mov r0, #0
	bx lr