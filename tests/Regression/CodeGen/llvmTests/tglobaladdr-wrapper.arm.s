.arch armv7ve
.data
.align 4
.globl x
x:
	.4byte	0
.align 4
.globl a
a:
	.4byte	0
.align 4
.globl b
b:
	.4byte	0
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r1, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne label11
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	ldr r0, [r0, #0]
	b label3
label11:
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	ldr r0, [r0, #0]
label3:
	str r0, [r1, #0]
	bx lr