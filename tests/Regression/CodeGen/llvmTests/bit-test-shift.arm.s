.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl x
x:
	ands r1, r0, #256
	mov r1, #0
	mvn r0, #25
	moveq r0, r1
	bx lr
