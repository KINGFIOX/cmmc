.arch armv7ve
.data
.align 1
.globl foo
foo:
	.byte	127
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	movw r0, #:lower16:foo
	movt r0, #:upper16:foo
	ldrsb r1, [r0, #0]
	ldrb r0, [r0, #0]
	asr r0, r0, #5
	and r0, r0, #7
	lsl r0, r0, #5
	asr r0, r0, #5
	sxtb r0, r0
	bx lr