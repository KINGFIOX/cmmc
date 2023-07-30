.arch armv7ve
.data
.bss
.align 8
buf:
	.zero	800
.text
.syntax unified
.arm
.fpu vfpv4
merge_sort:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r7, r1
	mov r4, r0
	sub sp, sp, #12
	add r0, r0, #1
	str r1, [sp, #0]
	cmp r1, r0
	ble label36
	add r0, r4, r1
	add r0, r0, r0, lsr #31
	asr r5, r0, #1
	mov r0, r4
	mov r1, r5
	bl merge_sort
	mov r0, r5
	mov r1, r7
	bl merge_sort
	mov r8, r4
	sub r2, r7, #20
	sub r1, r7, #4
	mov r3, r5
	movw r0, #:lower16:buf
	mov r6, r4
	sub r9, r5, #4
	movt r0, #:upper16:buf
	add r10, r0, #400
	str r10, [sp, #4]
	cmp r5, r4
	mov r10, #0
	ldr r7, [sp, #0]
	movwgt r10, #1
	cmp r7, r5
	mov r7, #0
	movwgt r7, #1
	ands r7, r10, r7
	bne label7
	cmp r5, r4
	bgt label11
	b label18
.p2align 4
label7:
	ldr r7, [r0, r8, lsl #2]
	ldr r11, [r0, r3, lsl #2]
	cmp r7, r11
	blt label8
	ldr r10, [sp, #4]
	add r3, r3, #1
	str r11, [r10, r6, lsl #2]
	add r6, r6, #1
	cmp r5, r8
	mov r10, #0
	ldr r7, [sp, #0]
	movwgt r10, #1
	cmp r7, r3
	mov r7, #0
	movwgt r7, #1
	ands r7, r10, r7
	bne label7
	cmp r5, r8
	ble label18
label11:
	add r7, r8, #4
	cmp r5, r7
	bgt label12
label15:
	ldr r7, [r0, r8, lsl #2]
	add r8, r8, #1
	ldr r10, [sp, #4]
	cmp r5, r8
	str r7, [r10, r6, lsl #2]
	add r6, r6, #1
	bgt label15
label18:
	ldr r7, [sp, #0]
	cmp r7, r3
	bgt label29
	b label20
.p2align 4
label8:
	ldr r10, [sp, #4]
	add r8, r8, #1
	str r7, [r10, r6, lsl #2]
	add r6, r6, #1
	cmp r5, r8
	mov r10, #0
	ldr r7, [sp, #0]
	movwgt r10, #1
	cmp r7, r3
	mov r7, #0
	movwgt r7, #1
	ands r7, r10, r7
	bne label7
	cmp r5, r8
	bgt label11
	b label18
label20:
	ldr r7, [sp, #0]
	cmp r4, r7
	blt label21
	b label36
label29:
	add r5, r3, #4
	ldr r7, [sp, #0]
	cmp r7, r5
	bgt label33
label30:
	ldr r5, [r0, r3, lsl #2]
	add r3, r3, #1
	ldr r10, [sp, #4]
	str r5, [r10, r6, lsl #2]
	ldr r7, [sp, #0]
	add r6, r6, #1
	cmp r7, r3
	bgt label30
	b label20
label22:
	ldr r10, [sp, #4]
	ldr r1, [r10, r4, lsl #2]
	str r1, [r0, r4, lsl #2]
	ldr r7, [sp, #0]
	add r4, r4, #1
	cmp r7, r4
	bgt label22
	b label36
label24:
	add r3, r4, #16
	cmp r1, r3
	bgt label25
label27:
	ldr r10, [sp, #4]
	add r3, r0, r4, lsl #2
	add r2, r10, r4, lsl #2
	add r4, r4, #4
	ldr r5, [r2, #0]
	cmp r1, r4
	str r5, [r3, #0]
	ldr r5, [r2, #4]
	str r5, [r3, #4]
	ldr r5, [r2, #8]
	str r5, [r3, #8]
	ldr r2, [r2, #12]
	str r2, [r3, #12]
	bgt label27
	b label22
label36:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label12:
	add r7, r0, r8, lsl #2
	add r8, r8, #4
	ldr r11, [r7, #0]
	cmp r9, r8
	ldr r10, [sp, #4]
	add r10, r10, r6, lsl #2
	add r6, r6, #4
	str r11, [r10, #0]
	ldr r11, [r7, #4]
	str r11, [r10, #4]
	ldr r11, [r7, #8]
	str r11, [r10, #8]
	ldr r7, [r7, #12]
	str r7, [r10, #12]
	bgt label12
	b label15
label33:
	add r5, r0, r3, lsl #2
	add r3, r3, #4
	ldr r8, [r5, #0]
	cmp r1, r3
	ldr r10, [sp, #4]
	add r7, r10, r6, lsl #2
	add r6, r6, #4
	str r8, [r7, #0]
	ldr r8, [r5, #4]
	str r8, [r7, #4]
	ldr r8, [r5, #8]
	str r8, [r7, #8]
	ldr r5, [r5, #12]
	str r5, [r7, #12]
	bgt label33
	b label30
label25:
	ldr r10, [sp, #4]
	add r5, r0, r4, lsl #2
	add r3, r10, r4, lsl #2
	add r4, r4, #16
	ldr r6, [r3, #0]
	cmp r2, r4
	str r6, [r5, #0]
	ldr r6, [r3, #4]
	str r6, [r5, #4]
	ldr r6, [r3, #8]
	str r6, [r5, #8]
	ldr r6, [r3, #12]
	str r6, [r5, #12]
	ldr r6, [r3, #16]
	str r6, [r5, #16]
	ldr r6, [r3, #20]
	str r6, [r5, #20]
	ldr r6, [r3, #24]
	str r6, [r5, #24]
	ldr r6, [r3, #28]
	str r6, [r5, #28]
	ldr r6, [r3, #32]
	str r6, [r5, #32]
	ldr r6, [r3, #36]
	str r6, [r5, #36]
	ldr r6, [r3, #40]
	str r6, [r5, #40]
	ldr r6, [r3, #44]
	str r6, [r5, #44]
	ldr r6, [r3, #48]
	str r6, [r5, #48]
	ldr r6, [r3, #52]
	str r6, [r5, #52]
	ldr r6, [r3, #56]
	str r6, [r5, #56]
	ldr r3, [r3, #60]
	str r3, [r5, #60]
	bgt label25
	b label27
label21:
	add r3, r4, #4
	ldr r7, [sp, #0]
	cmp r7, r3
	bgt label24
	b label22
.globl main
main:
.p2align 4
	push { r4, r5, lr }
	movw r4, #:lower16:buf
	sub sp, sp, #4
	movt r4, #:upper16:buf
	mov r0, r4
	bl getarray
	mov r5, r0
	mov r1, r0
	mov r0, #0
	bl merge_sort
	mov r0, r5
	mov r1, r4
	bl putarray
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, pc }
