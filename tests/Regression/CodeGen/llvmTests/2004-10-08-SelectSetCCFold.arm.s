.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
	cmp r0, #0
	beq label11
	mov r0, r1
	b label2
label11:
	cmp r2, r3
	mov r0, #0
	movwlt r0, #1
label2:
	bx lr