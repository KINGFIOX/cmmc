.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl tnaked
tnaked:
	bx lr
.globl tnonaked
tnonaked:
	bx lr