.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl sink_freqinfo
sink_freqinfo:
	mov r0, #0
	bx lr
