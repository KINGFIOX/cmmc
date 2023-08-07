.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
QuickSort:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r5, r2
	mov r3, r0
	sub sp, sp, #28
	mov r0, r1
	str r3, [sp, #12]
	mov r3, #0
	str r2, [sp, #16]
	mov r1, r3
label2:
	cmp r3, #0
	mov r2, #0
	str r2, [sp, #8]
	movne r2, r1
	str r2, [sp, #8]
	ldr r5, [sp, #16]
	cmp r5, r0
	bgt label6
	b label91
label13:
	ldr r6, [sp, #4]
	mov r3, #1
	ldr r2, [sp, #8]
	add r0, r6, #1
	mov r1, r2
	b label2
label6:
	ldr r3, [sp, #12]
	mov r6, r0
	ldr r1, [r3, r0, lsl #2]
	ldr r5, [sp, #16]
	str r0, [sp, #4]
	sub r2, r1, #1
label7:
	ldr r6, [sp, #4]
	cmp r5, r6
	bgt label77
label10:
	ldr r3, [sp, #12]
	ldr r6, [sp, #4]
	str r1, [r3, r6, lsl #2]
	sub r6, r6, #1
	str r6, [sp, #0]
	b label11
.p2align 4
label77:
	ldr r3, [sp, #12]
	add r4, r3, r5, lsl #2
	ldr r6, [sp, #4]
	cmp r6, r5
	bge label81
.p2align 4
label82:
	ldr r7, [r4, #0]
	cmp r2, r7
	blt label84
	ldr r3, [sp, #12]
	ldr r6, [sp, #4]
	str r7, [r3, r6, lsl #2]
	add r6, r6, #1
	add r3, r3, r6, lsl #2
	b label85
.p2align 4
label84:
	sub r5, r5, #1
	sub r4, r4, #4
	ldr r6, [sp, #4]
	cmp r6, r5
	blt label82
	ldr r3, [sp, #12]
	cmp r5, r6
	add r3, r3, r6, lsl #2
	bgt label88
	b label344
label85:
	cmp r5, r6
	ble label278
.p2align 4
label88:
	ldr r7, [r3, #0]
	cmp r1, r7
	ble label283
	add r6, r6, #1
	add r3, r3, #4
	cmp r5, r6
	bgt label88
	str r6, [sp, #4]
	b label10
.p2align 4
label81:
	ldr r3, [sp, #12]
	ldr r6, [sp, #4]
	cmp r5, r6
	add r3, r3, r6, lsl #2
	bgt label88
	str r6, [sp, #4]
	b label10
label11:
	ldr r6, [sp, #0]
	cmp r6, r0
	bgt label14
	b label13
label35:
	add r0, r4, #1
	b label11
label14:
	ldr r3, [sp, #12]
	mov r4, r0
	ldr r1, [r3, r0, lsl #2]
	ldr r6, [sp, #0]
	sub r2, r1, #1
label15:
	cmp r6, r4
	bgt label18
label121:
	ldr r3, [sp, #12]
	sub r5, r4, #1
	str r1, [r3, r4, lsl #2]
	b label33
.p2align 4
label18:
	ldr r3, [sp, #12]
	add r5, r3, r6, lsl #2
	cmp r4, r6
	blt label23
	cmp r6, r4
	add r3, r3, r4, lsl #2
	bgt label29
	b label318
.p2align 4
label23:
	ldr r7, [r5, #0]
	cmp r2, r7
	bge label134
	sub r6, r6, #1
	sub r5, r5, #4
	cmp r4, r6
	blt label23
	ldr r3, [sp, #12]
	cmp r6, r4
	add r3, r3, r4, lsl #2
	ble label335
.p2align 4
label29:
	ldr r7, [r3, #0]
	cmp r1, r7
	ble label30
	add r4, r4, #1
	add r3, r3, #4
	cmp r6, r4
	bgt label29
	b label121
label33:
	cmp r5, r0
	bgt label36
	b label35
label208:
	add r0, r6, #1
	b label33
label36:
	ldr r3, [sp, #12]
	mov r8, r5
	mov r6, r0
	ldr r1, [r3, r0, lsl #2]
	sub r2, r1, #1
label37:
	cmp r8, r6
	bgt label40
label169:
	ldr r3, [sp, #12]
	sub r7, r6, #1
	str r1, [r3, r6, lsl #2]
	mov r1, r0
	b label55
.p2align 4
label40:
	ldr r3, [sp, #12]
	add r7, r3, r8, lsl #2
	cmp r6, r8
	blt label44
	cmp r8, r6
	add r3, r3, r6, lsl #2
	bgt label50
	b label337
label45:
	ldr r3, [sp, #12]
	str r9, [r3, r6, lsl #2]
	add r6, r6, #1
	add r3, r3, r6, lsl #2
	cmp r8, r6
	ble label191
.p2align 4
label50:
	ldr r9, [r3, #0]
	cmp r1, r9
	ble label51
	add r6, r6, #1
	add r3, r3, #4
	cmp r8, r6
	bgt label50
	b label169
label55:
	cmp r7, r1
	ble label208
	ldr r3, [sp, #12]
	mov r10, r7
	mov r8, r1
	ldr r0, [r3, r1, lsl #2]
	sub r2, r0, #1
label58:
	cmp r10, r8
	bgt label62
label61:
	ldr r3, [sp, #12]
	sub r2, r8, #1
	str r0, [r3, r8, lsl #2]
	mov r0, r3
	bl QuickSort
	add r1, r8, #1
	b label55
.p2align 4
label62:
	ldr r3, [sp, #12]
	add r9, r3, r10, lsl #2
	cmp r8, r10
	blt label67
	cmp r10, r8
	add r3, r3, r8, lsl #2
	bgt label73
	b label326
.p2align 4
label67:
	ldr r11, [r9, #0]
	cmp r2, r11
	bge label234
	sub r10, r10, #1
	sub r9, r9, #4
	cmp r8, r10
	blt label67
	ldr r3, [sp, #12]
	cmp r10, r8
	add r3, r3, r8, lsl #2
	ble label341
.p2align 4
label73:
	ldr r11, [r3, #0]
	cmp r0, r11
	ble label250
	add r8, r8, #1
	add r3, r3, #4
	cmp r10, r8
	bgt label73
	b label61
.p2align 4
label44:
	ldr r9, [r7, #0]
	cmp r2, r9
	bge label45
	sub r8, r8, #1
	sub r7, r7, #4
	cmp r6, r8
	blt label44
	ldr r3, [sp, #12]
	cmp r8, r6
	add r3, r3, r6, lsl #2
	bgt label50
	b label169
label91:
	ldr r2, [sp, #8]
	add sp, sp, #28
	mov r0, r2
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label51:
	str r9, [r7, #0]
	sub r8, r8, #1
	b label37
label234:
	ldr r3, [sp, #12]
	str r11, [r3, r8, lsl #2]
	add r8, r8, #1
	add r3, r3, r8, lsl #2
	cmp r10, r8
	bgt label73
	b label61
label30:
	str r7, [r5, #0]
	sub r6, r6, #1
	b label15
label134:
	ldr r3, [sp, #12]
	str r7, [r3, r4, lsl #2]
	add r4, r4, #1
	add r3, r3, r4, lsl #2
	cmp r6, r4
	bgt label29
	b label121
.p2align 4
label337:
	cmp r8, r6
	bgt label40
	b label169
.p2align 4
label326:
	cmp r10, r8
	bgt label62
	b label61
.p2align 4
label318:
	cmp r6, r4
	bgt label18
	b label121
.p2align 4
label341:
	cmp r10, r8
	bgt label62
	b label61
.p2align 4
label335:
	cmp r6, r4
	bgt label18
	b label121
.p2align 4
label344:
	str r6, [sp, #4]
	cmp r5, r6
	bgt label77
	b label10
label191:
	cmp r8, r6
	bgt label40
	b label169
label278:
	str r6, [sp, #4]
	cmp r5, r6
	bgt label77
	b label10
label283:
	str r7, [r4, #0]
	sub r5, r5, #1
	str r6, [sp, #4]
	b label7
label250:
	str r11, [r9, #0]
	sub r10, r10, #1
	b label58
.p2align 4
.globl main
main:
	push { r4, r5, r6, lr }
	sub sp, sp, #40
	mov r4, #0
	mov r0, #4
	mov r2, #9
	mov r5, sp
	str r0, [sp, #0]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #2
	str r2, [sp, #8]
	str r0, [sp, #12]
	mov r0, #1
	str r4, [sp, #16]
	str r0, [sp, #20]
	mov r0, #6
	str r0, [sp, #24]
	mov r0, #5
	str r0, [sp, #28]
	mov r0, #7
	str r0, [sp, #32]
	mov r0, #8
	str r0, [sp, #36]
	mov r0, r5
	mov r1, r4
	bl QuickSort
	cmp r0, #10
	bge label377
	add r5, r5, r0, lsl #2
	mov r6, r0
.p2align 4
label373:
	ldr r0, [r5, #0]
	bl putint
	mov r0, #10
	bl putch
	add r6, r6, #1
	cmp r6, #10
	bge label377
	add r5, r5, #4
	b label373
label377:
	mov r0, r4
	add sp, sp, #40
	pop { r4, r5, r6, pc }
