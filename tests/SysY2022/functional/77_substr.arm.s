.arch armv7ve
.data
.bss
.align 4
p:
	.zero	1024
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	mov r1, #1
	mov r7, #2
	mov r2, #4
	sub sp, sp, #112
	mov r3, #7
	mov r0, #8
	mov r6, #0
	mov r9, #9
	str r0, [sp, #52]
	mov r8, #3
	add r5, sp, #52
	mov r4, sp
	str r3, [r5, #4]
	str r2, [r5, #8]
	str r1, [r5, #12]
	str r7, [r5, #16]
	str r3, [r5, #20]
	str r6, [r5, #24]
	str r1, [r5, #28]
	str r9, [r5, #32]
	str r8, [r5, #36]
	str r2, [r5, #40]
	str r0, [r5, #44]
	str r8, [r5, #48]
	str r3, [r5, #52]
	str r6, [r5, #56]
	str r8, [sp, #0]
	str r9, [r4, #4]
	str r3, [r4, #8]
	str r1, [r4, #12]
	str r2, [r4, #16]
	str r7, [r4, #20]
	str r2, [r4, #24]
	mov r2, #6
	str r8, [r4, #28]
	str r2, [r4, #32]
	str r0, [r4, #36]
	mov r0, #5
	str r6, [r4, #40]
	str r1, [r4, #44]
	str r0, [r4, #48]
	mov r0, #43
	bl putint
	mov r0, #10
	bl putch
	mov r1, r6
	movw r0, #:lower16:p
	movt r0, #:upper16:p
label2:
	add r2, r0, r1, lsl #2
	mov r3, #0
	str r3, [r0, r1, lsl #2]
	add r1, r1, #16
	str r3, [r2, #4]
	cmp r1, #256
	str r3, [r2, #8]
	str r3, [r2, #12]
	str r3, [r2, #16]
	str r3, [r2, #20]
	str r3, [r2, #24]
	str r3, [r2, #28]
	str r3, [r2, #32]
	str r3, [r2, #36]
	str r3, [r2, #40]
	str r3, [r2, #44]
	str r3, [r2, #48]
	str r3, [r2, #52]
	str r3, [r2, #56]
	str r3, [r2, #60]
	bge label65
	b label2
label65:
	mov r7, #1
	sub r3, r7, #1
	add r2, r0, r7, lsl #6
	cmp r7, #16
	sub r6, r2, #64
	bge label12
	mov r1, #1
	cmp r1, #14
	bge label11
	sub r8, r1, #1
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r4, r8, lsl #2]
	cmp r9, r10
	bne label10
	ldr r8, [r6, r8, lsl #2]
	add r8, r8, #1
	str r8, [r2, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #14
	bge label11
	sub r8, r1, #1
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r4, r8, lsl #2]
	cmp r9, r10
	bne label10
	ldr r8, [r6, r8, lsl #2]
	add r8, r8, #1
	str r8, [r2, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #14
	bge label11
	sub r8, r1, #1
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r4, r8, lsl #2]
	cmp r9, r10
	bne label10
	ldr r8, [r6, r8, lsl #2]
	add r8, r8, #1
	str r8, [r2, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #14
	bge label11
	sub r8, r1, #1
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r4, r8, lsl #2]
	cmp r9, r10
	bne label10
	b label212
label12:
	ldr r0, [r0, #1012]
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #112
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label197:
	sub r8, r1, #1
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r4, r8, lsl #2]
	cmp r9, r10
	bne label10
	b label205
label11:
	add r7, r7, #1
	sub r3, r7, #1
	add r2, r0, r7, lsl #6
	cmp r7, #16
	sub r6, r2, #64
	bge label12
	mov r1, #1
	cmp r1, #14
	bge label11
	sub r8, r1, #1
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r4, r8, lsl #2]
	cmp r9, r10
	bne label10
	ldr r8, [r6, r8, lsl #2]
	add r8, r8, #1
	str r8, [r2, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #14
	bge label11
	sub r8, r1, #1
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r4, r8, lsl #2]
	cmp r9, r10
	bne label10
	ldr r8, [r6, r8, lsl #2]
	add r8, r8, #1
	str r8, [r2, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #14
	bge label11
	sub r8, r1, #1
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r4, r8, lsl #2]
	cmp r9, r10
	bne label10
	ldr r8, [r6, r8, lsl #2]
	add r8, r8, #1
	str r8, [r2, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #14
	bge label11
	sub r8, r1, #1
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r4, r8, lsl #2]
	cmp r9, r10
	bne label10
	ldr r8, [r6, r8, lsl #2]
	add r8, r8, #1
	str r8, [r2, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #14
	bge label11
	b label197
label205:
	ldr r8, [r6, r8, lsl #2]
	add r8, r8, #1
	str r8, [r2, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #14
	bge label11
	sub r8, r1, #1
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r4, r8, lsl #2]
	cmp r9, r10
	bne label10
	b label205
label10:
	ldr r8, [r6, r1, lsl #2]
	add r9, r2, r1, lsl #2
	ldr r9, [r9, #-4]
	cmp r8, r9
	movle r8, r9
	str r8, [r2, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #14
	bge label11
	sub r8, r1, #1
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r4, r8, lsl #2]
	cmp r9, r10
	bne label10
	ldr r8, [r6, r8, lsl #2]
	add r8, r8, #1
	str r8, [r2, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #14
	bge label11
	sub r8, r1, #1
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r4, r8, lsl #2]
	cmp r9, r10
	bne label10
	ldr r8, [r6, r8, lsl #2]
	add r8, r8, #1
	str r8, [r2, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #14
	bge label11
	sub r8, r1, #1
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r4, r8, lsl #2]
	cmp r9, r10
	bne label10
	ldr r8, [r6, r8, lsl #2]
	add r8, r8, #1
	str r8, [r2, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #14
	bge label11
	sub r8, r1, #1
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r4, r8, lsl #2]
	cmp r9, r10
	bne label10
	ldr r8, [r6, r8, lsl #2]
	add r8, r8, #1
	str r8, [r2, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #14
	bge label11
	sub r8, r1, #1
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r4, r8, lsl #2]
	cmp r9, r10
	bne label10
	b label205
label212:
	ldr r8, [r6, r8, lsl #2]
	add r8, r8, #1
	str r8, [r2, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #14
	bge label11
	b label197