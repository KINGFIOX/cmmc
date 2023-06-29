.arch armv7ve
.data
.bss
.align 4
temp:
	.zero	8388608
.align 4
w:
	.zero	8388608
.align 4
dst:
	.zero	8388608
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getint
	mov r10, r0
	str r0, [sp, #8]
	movw r0, #:lower16:w
	movt r0, #:upper16:w
	mov r4, r0
	bl getarray
	mov r0, #62
	bl _sysy_starttime
	movw r1, #:lower16:dst
	movt r1, #:upper16:dst
	str r1, [sp, #0]
	movw r10, #:lower16:temp
	movt r10, #:upper16:temp
	str r10, [sp, #4]
	mov r0, #0
	ldr r10, [sp, #8]
	cmp r0, r10
	bge label75
	b label57
label75:
	mov r6, #0
	str r6, [sp, #12]
label4:
	ldr r6, [sp, #12]
	cmp r6, #0
	mov r0, #0
	movwlt r0, #1
	ldr r10, [sp, #8]
	ldr r6, [sp, #12]
	cmp r6, r10
	mov r1, #0
	movwge r1, #1
	orr r1, r0, r1
	ldr r10, [sp, #8]
	ldr r6, [sp, #12]
	mul r2, r10, r6
	bge label41
	mov r0, #0
label6:
	cmp r0, #0
	mov r4, #0
	movwlt r4, #1
	orr r3, r1, r4
	ldr r10, [sp, #8]
	cmp r0, r10
	mov r5, #0
	movwge r5, #1
	orr r3, r3, r5
	orr r4, r4, r5
	ldr r10, [sp, #8]
	mul r5, r10, r0
	ldr r10, [sp, #8]
	ldr r6, [sp, #12]
	mla r6, r10, r0, r6
	bge label94
	mov r7, #0
	ldr r10, [sp, #8]
	cmp r7, r10
	bge label10
	cmp r3, #0
	beq label39
	mvn r8, #0
	cmn r8, #1
	ble label106
	b label14
label10:
	add r0, r0, #1
	b label6
label41:
	ldr r10, [sp, #8]
	mul r4, r10, r10
	cmp r4, #0
	ble label56
	mov r0, #0
	add r2, r0, #4
	cmp r2, r4
	bge label45
	b label44
label14:
	cmp r7, #0
	mov r8, #0
	movwlt r8, #1
	orr r8, r1, r8
	ldr r10, [sp, #8]
	cmp r7, r10
	mov r9, #0
	movwge r9, #1
	orr r8, r8, r9
	cmp r8, #0
	beq label15
	mvn r8, #0
	cmp r8, #0
	mov r8, #0
	movwge r8, #1
	cmp r8, #0
	beq label20
label21:
	cmp r7, #0
	mov r8, #0
	movwlt r8, #1
	orr r8, r4, r8
	ldr r10, [sp, #8]
	cmp r7, r10
	mov r9, #0
	movwge r9, #1
	orr r8, r8, r9
	cmp r8, #0
	beq label22
	mvn r8, #0
	cmp r8, #0
	bge label25
	add r8, r7, r5
	cmp r3, #0
	beq label33
	b label350
label20:
	add r7, r7, #1
	ldr r10, [sp, #8]
	cmp r7, r10
	bge label10
	cmp r3, #0
	beq label39
	mvn r8, #0
	cmn r8, #1
	ble label106
	b label14
label15:
	add r8, r7, r2
	ldr r10, [sp, #4]
	ldr r8, [r10, r8, lsl #2]
	cmp r8, #0
	mov r8, #0
	movwge r8, #1
	cmp r8, #0
	beq label20
	b label21
label106:
	mov r8, #0
	cmp r8, #0
	beq label20
	b label21
label350:
	mvn r9, #0
label34:
	cmp r7, #0
	mov r10, #0
	movwlt r10, #1
	orr r11, r1, r10
	ldr r10, [sp, #8]
	cmp r7, r10
	mov r10, #0
	movwge r10, #1
	orr r10, r11, r10
	cmp r10, #0
	beq label36
	mvn r10, #0
	add r9, r9, r10
	ldr r10, [sp, #4]
	str r9, [r10, r8, lsl #2]
	add r7, r7, #1
	ldr r10, [sp, #8]
	cmp r7, r10
	bge label10
	cmp r3, #0
	beq label39
	mvn r8, #0
	cmn r8, #1
	ble label106
	b label14
label36:
	add r11, r7, r2
	ldr r10, [sp, #4]
	ldr r10, [r10, r11, lsl #2]
	add r9, r9, r10
	ldr r10, [sp, #4]
	str r9, [r10, r8, lsl #2]
	add r7, r7, #1
	ldr r10, [sp, #8]
	cmp r7, r10
	bge label10
	cmp r3, #0
	beq label39
	mvn r8, #0
	cmn r8, #1
	ble label106
	b label14
label39:
	ldr r10, [sp, #4]
	ldr r8, [r10, r6, lsl #2]
	cmn r8, #1
	ble label106
	b label14
label25:
	add r8, r7, r5
	ldr r10, [sp, #4]
	ldr r8, [r10, r8, lsl #2]
	cmp r3, #0
	beq label26
	mvn r9, #0
	b label27
label26:
	ldr r10, [sp, #4]
	ldr r9, [r10, r6, lsl #2]
label27:
	cmp r7, #0
	mov r10, #0
	movwlt r10, #1
	orr r11, r1, r10
	ldr r10, [sp, #8]
	cmp r7, r10
	mov r10, #0
	movwge r10, #1
	orr r10, r11, r10
	cmp r10, #0
	beq label29
	mvn r10, #0
	add r9, r9, r10
	cmp r8, r9
	ble label20
	add r8, r7, r5
	cmp r3, #0
	beq label33
	b label350
label29:
	add r11, r7, r2
	ldr r10, [sp, #4]
	ldr r10, [r10, r11, lsl #2]
	add r9, r9, r10
	cmp r8, r9
	ble label20
	add r8, r7, r5
	cmp r3, #0
	beq label33
	b label350
label22:
	add r8, r7, r5
	ldr r10, [sp, #4]
	ldr r8, [r10, r8, lsl #2]
	cmp r8, #0
	bge label25
	add r8, r7, r5
	cmp r3, #0
	beq label33
	b label350
label33:
	ldr r10, [sp, #4]
	ldr r9, [r10, r6, lsl #2]
	b label34
label57:
	ldr r10, [sp, #8]
	cmp r0, r10
	mov r1, #0
	movwge r1, #1
	cmp r0, #0
	mov r2, #0
	movwlt r2, #1
	orr r3, r1, r2
	ldr r10, [sp, #8]
	cmp r10, #0
	ble label58
	mov r1, #0
	b label59
label58:
	add r0, r0, #1
	ldr r10, [sp, #8]
	cmp r0, r10
	bge label75
	b label57
label59:
	cmp r1, #0
	mov r2, #0
	movwlt r2, #1
	orr r2, r3, r2
	ldr r10, [sp, #8]
	cmp r1, r10
	mov r5, #0
	movwge r5, #1
	orr r2, r2, r5
	ldr r10, [sp, #8]
	mla r5, r10, r1, r0
	cmp r2, #0
	beq label61
	mvn r2, #0
	ldr r10, [sp, #4]
	str r2, [r10, r5, lsl #2]
	add r1, r1, #1
	ldr r10, [sp, #8]
	cmp r1, r10
	bge label58
	b label59
label61:
	ldr r2, [r4, r5, lsl #2]
	ldr r10, [sp, #4]
	str r2, [r10, r5, lsl #2]
	add r1, r1, #1
	ldr r10, [sp, #8]
	cmp r1, r10
	bge label58
	b label59
label94:
	ldr r6, [sp, #12]
	add r6, r6, #1
	str r6, [sp, #12]
	b label4
label44:
	ldr r10, [sp, #4]
	add r3, r10, r0, lsl #2
	ldr r10, [sp, #4]
	ldr r6, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	add r5, r1, r0, lsl #2
	ldr r1, [sp, #0]
	str r6, [r1, r0, lsl #2]
	ldr r0, [r3, #4]
	str r0, [r5, #4]
	ldr r0, [r3, #8]
	str r0, [r5, #8]
	ldr r0, [r3, #12]
	str r0, [r5, #12]
	mov r0, r2
	add r2, r2, #4
	cmp r2, r4
	bge label45
	b label44
label45:
	add r2, r0, #4
	cmp r2, r4
	bge label48
label47:
	ldr r10, [sp, #4]
	add r3, r10, r0, lsl #2
	ldr r10, [sp, #4]
	ldr r6, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	add r5, r1, r0, lsl #2
	ldr r1, [sp, #0]
	str r6, [r1, r0, lsl #2]
	ldr r0, [r3, #4]
	str r0, [r5, #4]
	ldr r0, [r3, #8]
	str r0, [r5, #8]
	ldr r0, [r3, #12]
	str r0, [r5, #12]
	mov r0, r2
	add r2, r2, #4
	cmp r2, r4
	bge label48
	b label47
label48:
	add r2, r0, #4
	cmp r2, r4
	bge label51
label50:
	ldr r10, [sp, #4]
	add r3, r10, r0, lsl #2
	ldr r10, [sp, #4]
	ldr r6, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	add r5, r1, r0, lsl #2
	ldr r1, [sp, #0]
	str r6, [r1, r0, lsl #2]
	ldr r0, [r3, #4]
	str r0, [r5, #4]
	ldr r0, [r3, #8]
	str r0, [r5, #8]
	ldr r0, [r3, #12]
	str r0, [r5, #12]
	mov r0, r2
	add r2, r2, #4
	cmp r2, r4
	bge label51
	b label50
label51:
	add r2, r0, #4
	cmp r2, r4
	bge label53
	b label55
label53:
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label56
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label56
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label56
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label56
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label56
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label56
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label56
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label56
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label56
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label56
label368:
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label56
	b label368
label55:
	ldr r10, [sp, #4]
	add r3, r10, r0, lsl #2
	ldr r10, [sp, #4]
	ldr r6, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	add r5, r1, r0, lsl #2
	ldr r1, [sp, #0]
	str r6, [r1, r0, lsl #2]
	ldr r0, [r3, #4]
	str r0, [r5, #4]
	ldr r0, [r3, #8]
	str r0, [r5, #8]
	ldr r0, [r3, #12]
	str r0, [r5, #12]
	mov r0, r2
	add r2, r2, #4
	cmp r2, r4
	bge label53
	b label55
label56:
	mov r0, #64
	bl _sysy_stoptime
	mov r0, r4
	ldr r1, [sp, #0]
	bl putarray
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
