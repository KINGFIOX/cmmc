.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl testStackProbesOff
testStackProbesOff:
	mov r0, #0
	bx lr
.globl testStackProbesOn
testStackProbesOn:
	bx lr