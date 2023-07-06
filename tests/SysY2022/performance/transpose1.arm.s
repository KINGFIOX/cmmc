.arch armv7ve
.data
.bss
.align 4
matrix:
	.zero	80000000
.align 4
a:
	.zero	400000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	bl getint
	mov r6, r0
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r7, r0
	bl getarray
	mov r5, r0
	mov r0, #28
	bl _sysy_starttime
	cmp r6, #0
	movw r1, #:lower16:matrix
	movt r1, #:upper16:matrix
	ble label10
	mov r0, #0
	add r2, r0, #4
	cmp r6, r2
	ble label5
	add r3, r1, r0, lsl #2
	str r0, [r1, r0, lsl #2]
	add r4, r0, #1
	str r4, [r3, #4]
	add r4, r0, #2
	add r0, r0, #3
	str r4, [r3, #8]
	str r0, [r3, #12]
	mov r0, r2
	add r2, r2, #4
	cmp r6, r2
	ble label5
	b label48
label5:
	add r2, r0, #4
	cmp r6, r2
	ble label8
	b label61
label10:
	cmp r5, #0
	ble label22
	mov r9, #0
	ldr r2, [r7, r9, lsl #2]
	mov r0, #0
	sdiv r3, r6, r2
	mul r8, r2, r0
	cmp r3, r0
	ble label21
	mov r4, #0
	cmp r2, r4
	ble label20
	cmp r0, r4
	bge label19
	add r4, r4, #1
	cmp r2, r4
	ble label20
	cmp r0, r4
	bge label19
	add r4, r4, #1
	cmp r2, r4
	ble label20
	cmp r0, r4
	bge label19
	add r4, r4, #1
	cmp r2, r4
	ble label20
	cmp r0, r4
	bge label19
	b label317
label20:
	add r0, r0, #1
	mul r8, r2, r0
	cmp r3, r0
	ble label21
	mov r4, #0
	cmp r2, r4
	ble label20
	cmp r0, r4
	bge label19
	add r4, r4, #1
	cmp r2, r4
	ble label20
	cmp r0, r4
	bge label19
	add r4, r4, #1
	cmp r2, r4
	ble label20
	cmp r0, r4
	bge label19
	add r4, r4, #1
	cmp r2, r4
	ble label20
	cmp r0, r4
	bge label19
	add r4, r4, #1
	cmp r2, r4
	ble label20
	b label289
label21:
	add r9, r9, #1
	cmp r5, r9
	ble label22
	ldr r2, [r7, r9, lsl #2]
	mov r0, #0
	sdiv r3, r6, r2
	mul r8, r2, r0
	cmp r3, r0
	ble label21
	mov r4, #0
	cmp r2, r4
	ble label20
	cmp r0, r4
	bge label19
	add r4, r4, #1
	cmp r2, r4
	ble label20
	cmp r0, r4
	bge label19
	add r4, r4, #1
	cmp r2, r4
	ble label20
	cmp r0, r4
	bge label19
	add r4, r4, #1
	cmp r2, r4
	ble label20
	cmp r0, r4
	bge label19
label317:
	add r4, r4, #1
	cmp r2, r4
	ble label20
label289:
	cmp r0, r4
	bge label19
	b label304
label19:
	mla r10, r3, r4, r0
	add r11, r8, r4
	add r4, r4, #1
	ldr r11, [r1, r11, lsl #2]
	str r11, [r1, r10, lsl #2]
	cmp r2, r4
	ble label20
	cmp r0, r4
	bge label19
	add r4, r4, #1
	cmp r2, r4
	ble label20
	cmp r0, r4
	bge label19
	add r4, r4, #1
	cmp r2, r4
	ble label20
	cmp r0, r4
	bge label19
	add r4, r4, #1
	cmp r2, r4
	ble label20
	cmp r0, r4
	bge label19
	add r4, r4, #1
	cmp r2, r4
	ble label20
	cmp r0, r4
	bge label19
label304:
	add r4, r4, #1
	cmp r2, r4
	ble label20
	cmp r0, r4
	bge label19
	b label304
label8:
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r6, r0
	ble label10
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r6, r0
	ble label10
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r6, r0
	ble label10
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r6, r0
	ble label10
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r6, r0
	ble label10
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r6, r0
	ble label10
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r6, r0
	ble label10
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r6, r0
	ble label10
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r6, r0
	ble label10
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r6, r0
	ble label10
label315:
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r6, r0
	ble label10
	b label315
label22:
	cmp r5, #0
	ble label117
	mov r2, #0
	mov r0, r2
	add r3, r2, #4
	cmp r5, r3
	ble label28
	b label35
label28:
	add r3, r0, #4
	cmp r5, r3
	ble label31
	b label34
label31:
	ldr r3, [r1, r0, lsl #2]
	mul r4, r0, r0
	add r0, r0, #1
	cmp r5, r0
	mla r2, r3, r4, r2
	ble label139
	ldr r3, [r1, r0, lsl #2]
	mul r4, r0, r0
	add r0, r0, #1
	cmp r5, r0
	mla r2, r3, r4, r2
	ble label139
	ldr r3, [r1, r0, lsl #2]
	mul r4, r0, r0
	add r0, r0, #1
	cmp r5, r0
	mla r2, r3, r4, r2
	ble label139
	ldr r3, [r1, r0, lsl #2]
	mul r4, r0, r0
	add r0, r0, #1
	cmp r5, r0
	mla r2, r3, r4, r2
	ble label139
	ldr r3, [r1, r0, lsl #2]
	mul r4, r0, r0
	add r0, r0, #1
	cmp r5, r0
	mla r2, r3, r4, r2
	ble label139
	ldr r3, [r1, r0, lsl #2]
	mul r4, r0, r0
	add r0, r0, #1
	cmp r5, r0
	mla r2, r3, r4, r2
	ble label139
	ldr r3, [r1, r0, lsl #2]
	mul r4, r0, r0
	add r0, r0, #1
	cmp r5, r0
	mla r2, r3, r4, r2
	ble label139
	ldr r3, [r1, r0, lsl #2]
	mul r4, r0, r0
	add r0, r0, #1
	cmp r5, r0
	mla r2, r3, r4, r2
	ble label139
	ldr r3, [r1, r0, lsl #2]
	mul r4, r0, r0
	add r0, r0, #1
	cmp r5, r0
	mla r2, r3, r4, r2
	ble label139
	ldr r3, [r1, r0, lsl #2]
	mul r4, r0, r0
	add r0, r0, #1
	cmp r5, r0
	mla r2, r3, r4, r2
	ble label139
	b label327
label139:
	mov r4, r2
	b label23
label327:
	ldr r3, [r1, r0, lsl #2]
	mul r4, r0, r0
	add r0, r0, #1
	cmp r5, r0
	mla r2, r3, r4, r2
	ble label139
	b label327
label34:
	add r4, r1, r0, lsl #2
	ldr r7, [r1, r0, lsl #2]
	add r8, r0, #1
	mul r9, r0, r0
	ldr r6, [r4, #4]
	mla r8, r8, r0, r8
	mla r2, r7, r9, r2
	add r7, r0, #2
	mla r2, r6, r8, r2
	add r0, r0, #3
	mul r7, r7, r7
	ldr r6, [r4, #8]
	mul r0, r0, r0
	ldr r4, [r4, #12]
	mla r2, r6, r7, r2
	mla r2, r4, r0, r2
	mov r0, r3
	add r3, r3, #4
	cmp r5, r3
	ble label31
	b label34
label35:
	add r4, r1, r0, lsl #2
	ldr r7, [r1, r0, lsl #2]
	add r8, r0, #1
	mul r9, r0, r0
	ldr r6, [r4, #4]
	mla r8, r8, r0, r8
	mla r2, r7, r9, r2
	add r7, r0, #2
	mla r2, r6, r8, r2
	add r0, r0, #3
	mul r7, r7, r7
	ldr r6, [r4, #8]
	mul r0, r0, r0
	ldr r4, [r4, #12]
	mla r2, r6, r7, r2
	mla r2, r4, r0, r2
	mov r0, r3
	add r3, r3, #4
	cmp r5, r3
	ble label28
	b label35
label117:
	mov r4, #0
label23:
	mov r0, #47
	bl _sysy_stoptime
	mov r0, r4
	cmp r4, #0
	rsbmi r0, r4, #0
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label61:
	add r3, r1, r0, lsl #2
	str r0, [r1, r0, lsl #2]
	add r4, r0, #1
	str r4, [r3, #4]
	add r4, r0, #2
	add r0, r0, #3
	str r4, [r3, #8]
	str r0, [r3, #12]
	mov r0, r2
	add r2, r2, #4
	cmp r6, r2
	ble label8
	b label61
label48:
	add r3, r1, r0, lsl #2
	str r0, [r1, r0, lsl #2]
	add r4, r0, #1
	str r4, [r3, #4]
	add r4, r0, #2
	add r0, r0, #3
	str r4, [r3, #8]
	str r0, [r3, #12]
	mov r0, r2
	add r2, r2, #4
	cmp r6, r2
	ble label5
	b label48
