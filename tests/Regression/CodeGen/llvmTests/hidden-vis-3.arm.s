.arch armv7ve
.data
.section .rodata
.bss
.align 4
.globl x
x:
	.zero	4
.align 4
.globl y
y:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.globl t
t:
	movw r0, #:lower16:y
	movt r0, #:upper16:y
	ldr r0, [r0, #0]
	movw r1, #:lower16:x
	movt r1, #:upper16:x
	ldr r1, [r1, #0]
	add r0, r0, r1
	bx lr
