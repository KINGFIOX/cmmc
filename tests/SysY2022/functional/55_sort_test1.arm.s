.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, lr }
	sub sp, sp, #40
	mov r0, #4
	mov r1, #1
	mov r4, sp
	str r0, [sp, #0]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #12]
	mov r0, #0
	str r0, [sp, #16]
	str r1, [sp, #20]
	mov r1, #6
	str r1, [sp, #24]
	mov r1, #5
	str r1, [sp, #28]
	mov r1, #7
	str r1, [sp, #32]
	mov r1, #8
	str r1, [sp, #36]
	rsb r1, r0, #10
	cmp r0, #9
	sub r1, r1, #1
	blt label27
.p2align 4
label26:
	mov r5, #0
.p2align 4
label9:
	ldr r0, [r4, r5, lsl #2]
	bl putint
	mov r0, #10
	bl putch
	add r5, r5, #1
	cmp r5, #10
	blt label9
	mov r0, #0
	add sp, sp, #40
	pop { r4, r5, r6, pc }
.p2align 4
label27:
	mov r2, #0
	cmp r1, r2
	bgt label6
	add r0, r0, #1
	rsb r1, r0, #10
	cmp r0, #9
	sub r1, r1, #1
	blt label27
	b label26
.p2align 4
label6:
	add r5, r4, r2, lsl #2
	add r6, r2, #1
	ldr r3, [r5, #0]
	ldr r5, [r5, #4]
	cmp r3, r5
	bgt label7
	mov r2, r6
	cmp r1, r6
	bgt label6
	add r0, r0, #1
	rsb r1, r0, #10
	cmp r0, #9
	sub r1, r1, #1
	blt label27
	b label26
.p2align 4
label7:
	add r2, r4, r2, lsl #2
	str r3, [r2, #4]
	str r5, [r2, #0]
	mov r2, r6
	cmp r1, r6
	bgt label6
	add r0, r0, #1
	rsb r1, r0, #10
	cmp r0, #9
	sub r1, r1, #1
	blt label27
	b label26
