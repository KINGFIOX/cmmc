.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl extend2bit_v2
extend2bit_v2:
	uxtb r0, r0
	sxtb r0, r0
	sub r0, r0, #3
	clz r0, r0
	lsr r0, r0, #5
	bx lr