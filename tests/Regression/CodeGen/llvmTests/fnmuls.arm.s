.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl test1
test1:
	vmul.f32 s0, s0, s1
	vneg.f32 s0, s0
	bx lr
.globl test2
test2:
	vmul.f32 s0, s0, s1
	vneg.f32 s0, s0
	bx lr