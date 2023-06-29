.arch armv7ve
.data
.data
.align 4
sheet1:
	.zero	1000000
.align 4
sheet2:
	.zero	1000000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getint
	mov r8, r0
	str r0, [sp, #0]
	bl getint
	mov r7, r0
	str r0, [sp, #4]
	bl getint
	mov r4, r0
	bl getch
	movw r2, #:lower16:sheet1
	movt r2, #:upper16:sheet1
	str r2, [sp, #8]
	mov r5, #1
	ldr r7, [sp, #4]
	cmp r5, r7
	bgt label9
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label5
	b label225
label226:
	str r4, [sp, #16]
	mov r0, #1
	b label10
label9:
	mov r0, #95
	bl _sysy_starttime
	movw r3, #:lower16:sheet2
	movt r3, #:upper16:sheet2
	str r3, [sp, #12]
	cmp r4, #0
	ble label72
	b label226
label10:
	cmp r0, #1
	ldr r3, [sp, #12]
	mov r1, r3
	ldr r2, [sp, #8]
	moveq r1, r2
	ldr r2, [sp, #8]
	ldr r3, [sp, #12]
	moveq r2, r3
	mov r4, #2
	mov r3, #1
	mov r0, r3
	str r3, [sp, #20]
	moveq r0, r4
	str r0, [sp, #20]
	mov r0, r3
	sub r3, r3, #1
	mov r6, #2000
	mla r3, r3, r6, r1
	mla r4, r0, r6, r1
	add r5, r4, #2000
	mla r6, r0, r6, r2
	ldr r7, [sp, #4]
	cmp r0, r7
	bgt label22
	mov r7, #1
	ldr r8, [sp, #0]
	cmp r7, r8
	bgt label21
	b label17
label232:
	str r4, [sp, #16]
	ldr r0, [sp, #20]
	b label10
label17:
	sub r8, r7, #1
	ldr r10, [r3, r8, lsl #2]
	add r9, r3, r7, lsl #2
	ldr r11, [r3, r7, lsl #2]
	add r10, r10, r11
	ldr r9, [r9, #4]
	add r10, r10, r9
	add r9, r4, r8, lsl #2
	ldr r11, [r4, r8, lsl #2]
	add r10, r10, r11
	ldr r9, [r9, #8]
	add r9, r10, r9
	ldr r8, [r5, r8, lsl #2]
	add r9, r9, r8
	add r8, r5, r7, lsl #2
	ldr r10, [r5, r7, lsl #2]
	add r9, r9, r10
	ldr r8, [r8, #4]
	add r8, r9, r8
	eor r9, r8, #2
	ldr r10, [r4, r7, lsl #2]
	eor r10, r10, #1
	orr r9, r9, r10
	cmp r9, #0
	bne label18
	mov r8, #1
	str r8, [r6, r7, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #0]
	cmp r7, r8
	bgt label21
	b label17
label22:
	ldr r4, [sp, #16]
	sub r4, r4, #1
	cmp r4, #0
	ble label144
	b label232
label144:
	ldr r0, [sp, #20]
	mov r4, r0
	mov r0, #106
	bl _sysy_stoptime
	cmp r4, #2
	bne label148
	mov r0, #1
	ldr r7, [sp, #4]
	cmp r0, r7
	bgt label152
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label28
	mov r1, #2000
	ldr r2, [sp, #8]
	mla r2, r0, r1, r2
	ldr r3, [sp, #12]
	mla r3, r0, r1, r3
	mov r1, #1
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	b label293
label148:
	mov r4, #1
	ldr r7, [sp, #4]
	cmp r4, r7
	bgt label34
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label36
	b label255
label152:
	mov r4, #1
	ldr r7, [sp, #4]
	cmp r4, r7
	bgt label34
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label36
	b label255
label293:
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	b label301
label34:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label21:
	add r0, r0, #1
	sub r3, r0, #1
	mov r6, #2000
	mla r3, r3, r6, r1
	mla r4, r0, r6, r1
	add r5, r4, #2000
	mla r6, r0, r6, r2
	ldr r7, [sp, #4]
	cmp r0, r7
	bgt label22
	mov r7, #1
	ldr r8, [sp, #0]
	cmp r7, r8
	bgt label21
	b label17
label18:
	sub r8, r8, #3
	clz r8, r8
	lsr r8, r8, #5
	str r8, [r6, r7, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #0]
	cmp r7, r8
	bgt label21
	b label17
label225:
	mov r0, #2000
	ldr r2, [sp, #8]
	mla r7, r5, r0, r2
	mov r6, #1
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label5
label312:
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #0]
	cmp r6, r8
	bgt label5
	b label312
label237:
	mov r1, #2000
	ldr r2, [sp, #8]
	mla r2, r0, r1, r2
	ldr r3, [sp, #12]
	mla r3, r0, r1, r3
	mov r1, #1
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
label301:
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
label317:
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	b label317
label72:
	mov r4, #1
	mov r0, #106
	bl _sysy_stoptime
	cmp r4, #2
	bne label148
	mov r0, #1
	ldr r7, [sp, #4]
	cmp r0, r7
	bgt label152
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label28
	mov r1, #2000
	ldr r2, [sp, #8]
	mla r2, r0, r1, r2
	ldr r3, [sp, #12]
	mla r3, r0, r1, r3
	mov r1, #1
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	ldr r4, [r3, r1, lsl #2]
	str r4, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r1, r8
	bgt label28
	b label293
label36:
	mov r0, #10
	bl putch
	add r4, r4, #1
	ldr r7, [sp, #4]
	cmp r4, r7
	bgt label34
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label36
	b label255
label5:
	bl getch
	add r5, r5, #1
	ldr r7, [sp, #4]
	cmp r5, r7
	bgt label9
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label5
	b label225
label255:
	mov r0, #2000
	ldr r2, [sp, #8]
	mla r6, r4, r0, r2
	mov r5, #1
label38:
	ldr r0, [r6, r5, lsl #2]
	mov r1, #35
	mov r2, #46
	cmp r0, #1
	mov r0, r2
	moveq r0, r1
	bl putch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r5, r8
	bgt label36
	b label38
label28:
	add r0, r0, #1
	ldr r7, [sp, #4]
	cmp r0, r7
	bgt label152
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label28
	b label237
