.arch armv7ve
.data
.align 4
.globl var
var:
	.4byte	0
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl big_global
big_global:
	movw r0, #:lower16:var
	movt r0, #:upper16:var
	ldr r0, [r0, #0]
	bx lr
.globl small_global
small_global:
	movw r0, #:lower16:var
	movt r0, #:upper16:var
	ldr r0, [r0, #0]
	bx lr