.arch armv7ve
.data
.bss
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
	str r0, [sp, #4]
	mov r8, r0
	bl getint
	str r0, [sp, #0]
	mov r8, r0
	bl getint
	mov r4, r0
	bl getch
	mov r5, #1
	movw r1, #:lower16:sheet1
	movt r1, #:upper16:sheet1
	str r1, [sp, #8]
	ldr r8, [sp, #0]
	cmp r8, r5
	blt label9
	ldr r8, [sp, #4]
	cmp r8, #0
	ble label5
	b label223
label224:
	str r4, [sp, #16]
	mov r6, #1
	b label27
label9:
	mov r0, #95
	bl _sysy_starttime
	cmp r4, #0
	movw r3, #:lower16:sheet2
	movt r3, #:upper16:sheet2
	str r3, [sp, #12]
	ble label71
	b label224
label71:
	mov r6, #1
label10:
	mov r0, #106
	bl _sysy_stoptime
	cmp r6, #2
	bne label75
	mov r0, #1
	ldr r8, [sp, #0]
	cmp r8, r0
	blt label79
	ldr r8, [sp, #4]
	cmp r8, #0
	ble label15
	mov r2, #2000
	ldr r1, [sp, #8]
	ldr r3, [sp, #12]
	mla r1, r0, r2, r1
	mla r2, r0, r2, r3
	mov r3, #1
	ldr r4, [r2, r3, lsl #2]
	str r4, [r1, r3, lsl #2]
	ldr r8, [sp, #4]
	add r3, r3, #1
	cmp r8, r3
	blt label15
	ldr r4, [r2, r3, lsl #2]
	str r4, [r1, r3, lsl #2]
	ldr r8, [sp, #4]
	add r3, r3, #1
	cmp r8, r3
	blt label15
	ldr r4, [r2, r3, lsl #2]
	str r4, [r1, r3, lsl #2]
	ldr r8, [sp, #4]
	add r3, r3, #1
	cmp r8, r3
	blt label15
	ldr r4, [r2, r3, lsl #2]
	str r4, [r1, r3, lsl #2]
	ldr r8, [sp, #4]
	add r3, r3, #1
	cmp r8, r3
	blt label15
	ldr r4, [r2, r3, lsl #2]
	str r4, [r1, r3, lsl #2]
	ldr r8, [sp, #4]
	add r3, r3, #1
	cmp r8, r3
	blt label15
	ldr r4, [r2, r3, lsl #2]
	str r4, [r1, r3, lsl #2]
	ldr r8, [sp, #4]
	add r3, r3, #1
	cmp r8, r3
	blt label15
	ldr r4, [r2, r3, lsl #2]
	str r4, [r1, r3, lsl #2]
	ldr r8, [sp, #4]
	add r3, r3, #1
	cmp r8, r3
	blt label15
	ldr r4, [r2, r3, lsl #2]
	str r4, [r1, r3, lsl #2]
	ldr r8, [sp, #4]
	add r3, r3, #1
	cmp r8, r3
	blt label15
	b label297
label27:
	sub r0, r6, #1
	cmp r6, #1
	ldr r3, [sp, #12]
	mov r4, #1
	clz r0, r0
	lsr r0, r0, #5
	add r6, r0, #1
	str r3, [sp, #20]
	mov r2, r3
	ldr r1, [sp, #8]
	mov r5, r1
	moveq r2, r1
	moveq r5, r3
	str r2, [sp, #20]
	sub r1, r4, #1
	mov r0, #2000
	mla r7, r4, r0, r5
	ldr r8, [sp, #0]
	mla r1, r1, r0, r2
	mla r2, r4, r0, r2
	cmp r8, r4
	add r3, r2, #2000
	blt label38
	mov r0, #1
	ldr r8, [sp, #4]
	cmp r8, r0
	blt label37
	b label34
label239:
	str r4, [sp, #16]
	b label27
label38:
	ldr r4, [sp, #16]
	subs r4, r4, #1
	ble label10
	b label239
label34:
	sub r8, r0, #1
	add r10, r1, r0, lsl #2
	ldr r9, [r1, r8, lsl #2]
	ldr r11, [r1, r0, lsl #2]
	ldr r10, [r10, #4]
	add r9, r9, r11
	ldr r11, [r2, r8, lsl #2]
	add r10, r9, r10
	add r9, r2, r8, lsl #2
	ldr r9, [r9, #8]
	add r10, r10, r11
	ldr r8, [r3, r8, lsl #2]
	add r9, r10, r9
	ldr r10, [r3, r0, lsl #2]
	add r8, r9, r8
	add r9, r3, r0, lsl #2
	ldr r9, [r9, #4]
	add r8, r8, r10
	ldr r10, [r2, r0, lsl #2]
	add r8, r8, r9
	eor r9, r8, #2
	eor r10, r10, #1
	orrs r9, r9, r10
	bne label36
	mov r8, #1
	str r8, [r7, r0, lsl #2]
	add r0, r0, #1
	ldr r8, [sp, #4]
	cmp r8, r0
	blt label37
	b label34
label36:
	sub r8, r8, #3
	clz r8, r8
	lsr r8, r8, #5
	str r8, [r7, r0, lsl #2]
	add r0, r0, #1
	ldr r8, [sp, #4]
	cmp r8, r0
	blt label37
	b label34
label37:
	add r4, r4, #1
	sub r1, r4, #1
	mov r0, #2000
	ldr r2, [sp, #20]
	mla r7, r4, r0, r5
	ldr r8, [sp, #0]
	mla r1, r1, r0, r2
	mla r2, r4, r0, r2
	cmp r8, r4
	add r3, r2, #2000
	blt label38
	mov r0, #1
	ldr r8, [sp, #4]
	cmp r8, r0
	blt label37
	b label34
label223:
	mov r0, #2000
	ldr r1, [sp, #8]
	mov r7, #1
	mla r6, r5, r0, r1
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r6, r7, lsl #2]
	ldr r8, [sp, #4]
	add r7, r7, #1
	cmp r8, r7
	blt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r6, r7, lsl #2]
	ldr r8, [sp, #4]
	add r7, r7, #1
	cmp r8, r7
	blt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r6, r7, lsl #2]
	ldr r8, [sp, #4]
	add r7, r7, #1
	cmp r8, r7
	blt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r6, r7, lsl #2]
	ldr r8, [sp, #4]
	add r7, r7, #1
	cmp r8, r7
	blt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r6, r7, lsl #2]
	ldr r8, [sp, #4]
	add r7, r7, #1
	cmp r8, r7
	blt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r6, r7, lsl #2]
	ldr r8, [sp, #4]
	add r7, r7, #1
	cmp r8, r7
	blt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r6, r7, lsl #2]
	ldr r8, [sp, #4]
	add r7, r7, #1
	cmp r8, r7
	blt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r6, r7, lsl #2]
	ldr r8, [sp, #4]
	add r7, r7, #1
	cmp r8, r7
	blt label5
	b label293
label5:
	bl getch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r8, r5
	blt label9
	ldr r8, [sp, #4]
	cmp r8, #0
	ble label5
	b label223
label293:
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r6, r7, lsl #2]
	ldr r8, [sp, #4]
	add r7, r7, #1
	cmp r8, r7
	blt label5
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r6, r7, lsl #2]
	ldr r8, [sp, #4]
	add r7, r7, #1
	cmp r8, r7
	blt label5
label307:
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r6, r7, lsl #2]
	ldr r8, [sp, #4]
	add r7, r7, #1
	cmp r8, r7
	blt label5
	b label307
label230:
	mov r2, #2000
	ldr r1, [sp, #8]
	ldr r3, [sp, #12]
	mla r1, r0, r2, r1
	mla r2, r0, r2, r3
	mov r3, #1
	ldr r4, [r2, r3, lsl #2]
	str r4, [r1, r3, lsl #2]
	ldr r8, [sp, #4]
	add r3, r3, #1
	cmp r8, r3
	blt label15
	ldr r4, [r2, r3, lsl #2]
	str r4, [r1, r3, lsl #2]
	ldr r8, [sp, #4]
	add r3, r3, #1
	cmp r8, r3
	blt label15
	ldr r4, [r2, r3, lsl #2]
	str r4, [r1, r3, lsl #2]
	ldr r8, [sp, #4]
	add r3, r3, #1
	cmp r8, r3
	blt label15
	ldr r4, [r2, r3, lsl #2]
	str r4, [r1, r3, lsl #2]
	ldr r8, [sp, #4]
	add r3, r3, #1
	cmp r8, r3
	blt label15
	ldr r4, [r2, r3, lsl #2]
	str r4, [r1, r3, lsl #2]
	ldr r8, [sp, #4]
	add r3, r3, #1
	cmp r8, r3
	blt label15
	ldr r4, [r2, r3, lsl #2]
	str r4, [r1, r3, lsl #2]
	ldr r8, [sp, #4]
	add r3, r3, #1
	cmp r8, r3
	blt label15
	ldr r4, [r2, r3, lsl #2]
	str r4, [r1, r3, lsl #2]
	ldr r8, [sp, #4]
	add r3, r3, #1
	cmp r8, r3
	blt label15
	ldr r4, [r2, r3, lsl #2]
	str r4, [r1, r3, lsl #2]
	ldr r8, [sp, #4]
	add r3, r3, #1
	cmp r8, r3
	blt label15
label297:
	ldr r4, [r2, r3, lsl #2]
	str r4, [r1, r3, lsl #2]
	ldr r8, [sp, #4]
	add r3, r3, #1
	cmp r8, r3
	blt label15
	ldr r4, [r2, r3, lsl #2]
	str r4, [r1, r3, lsl #2]
	ldr r8, [sp, #4]
	add r3, r3, #1
	cmp r8, r3
	blt label15
label311:
	ldr r4, [r2, r3, lsl #2]
	str r4, [r1, r3, lsl #2]
	ldr r8, [sp, #4]
	add r3, r3, #1
	cmp r8, r3
	blt label15
	b label311
label75:
	mov r4, #1
	ldr r8, [sp, #0]
	cmp r8, r4
	blt label21
	ldr r8, [sp, #4]
	cmp r8, #0
	ble label23
	b label249
label79:
	mov r4, #1
	ldr r8, [sp, #0]
	cmp r8, r4
	blt label21
	ldr r8, [sp, #4]
	cmp r8, #0
	ble label23
	b label249
label21:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label23:
	mov r0, #10
	bl putch
	add r4, r4, #1
	ldr r8, [sp, #0]
	cmp r8, r4
	blt label21
	ldr r8, [sp, #4]
	cmp r8, #0
	ble label23
label249:
	mov r0, #2000
	ldr r1, [sp, #8]
	mov r6, #1
	mla r5, r4, r0, r1
label25:
	ldr r1, [r5, r6, lsl #2]
	mov r0, #35
	cmp r1, #1
	mov r1, #46
	moveq r1, r0
	mov r0, r1
	bl putch
	ldr r8, [sp, #4]
	add r6, r6, #1
	cmp r8, r6
	blt label23
	b label25
label15:
	add r0, r0, #1
	ldr r8, [sp, #0]
	cmp r8, r0
	blt label79
	ldr r8, [sp, #4]
	cmp r8, #0
	ble label15
	b label230
