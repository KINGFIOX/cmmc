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
	bge label6
	mov r0, #0
	b label22
label6:
	ldr r10, [sp, #8]
	mul r4, r10, r10
	cmp r4, #0
	ble label21
	mov r0, #0
	add r2, r0, #8
	cmp r2, r4
	bge label10
	b label9
label22:
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
	bge label24
	mov r7, #0
	ldr r10, [sp, #8]
	cmp r7, r10
	bge label27
	cmp r3, #0
	beq label56
	mvn r8, #0
	cmn r8, #1
	ble label246
	b label52
label33:
	add r7, r7, #1
	ldr r10, [sp, #8]
	cmp r7, r10
	bge label27
	cmp r3, #0
	beq label56
	mvn r8, #0
	cmn r8, #1
	ble label246
label52:
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
	beq label53
	mvn r8, #0
	cmp r8, #0
	mov r8, #0
	movwge r8, #1
	cmp r8, #0
	beq label33
	b label34
label246:
	mov r8, #0
	cmp r8, #0
	beq label33
label34:
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
	beq label35
	mvn r8, #0
	cmp r8, #0
	bge label38
	add r8, r7, r5
	cmp r3, #0
	beq label295
	b label391
label38:
	add r8, r7, r5
	ldr r10, [sp, #4]
	ldr r8, [r10, r8, lsl #2]
	cmp r3, #0
	beq label272
	mvn r9, #0
	b label39
label272:
	ldr r10, [sp, #4]
	ldr r9, [r10, r6, lsl #2]
label39:
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
	beq label41
	mvn r10, #0
	add r9, r9, r10
	cmp r8, r9
	ble label33
	add r8, r7, r5
	cmp r3, #0
	beq label295
	b label391
label41:
	add r11, r7, r2
	ldr r10, [sp, #4]
	ldr r10, [r10, r11, lsl #2]
	add r9, r9, r10
	cmp r8, r9
	ble label33
	add r8, r7, r5
	cmp r3, #0
	beq label295
	b label391
label56:
	ldr r10, [sp, #4]
	ldr r8, [r10, r6, lsl #2]
	cmn r8, #1
	ble label246
	b label52
label391:
	mvn r9, #0
	b label46
label35:
	add r8, r7, r5
	ldr r10, [sp, #4]
	ldr r8, [r10, r8, lsl #2]
	cmp r8, #0
	bge label38
	add r8, r7, r5
	cmp r3, #0
	beq label295
	b label391
label46:
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
	beq label302
	mvn r10, #0
	add r9, r9, r10
	ldr r10, [sp, #4]
	str r9, [r10, r8, lsl #2]
	add r7, r7, #1
	ldr r10, [sp, #8]
	cmp r7, r10
	bge label27
	cmp r3, #0
	beq label56
	mvn r8, #0
	cmn r8, #1
	ble label246
	b label52
label302:
	add r11, r7, r2
	ldr r10, [sp, #4]
	ldr r10, [r10, r11, lsl #2]
	add r9, r9, r10
	ldr r10, [sp, #4]
	str r9, [r10, r8, lsl #2]
	add r7, r7, #1
	ldr r10, [sp, #8]
	cmp r7, r10
	bge label27
	cmp r3, #0
	beq label56
	mvn r8, #0
	cmn r8, #1
	ble label246
	b label52
label53:
	add r8, r7, r2
	ldr r10, [sp, #4]
	ldr r8, [r10, r8, lsl #2]
	cmp r8, #0
	mov r8, #0
	movwge r8, #1
	cmp r8, #0
	beq label33
	b label34
label295:
	ldr r10, [sp, #4]
	ldr r9, [r10, r6, lsl #2]
	b label46
label27:
	add r0, r0, #1
	b label22
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
	ble label63
	mov r1, #0
label58:
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
	beq label60
	mvn r2, #0
	b label61
label60:
	ldr r2, [r4, r5, lsl #2]
label61:
	ldr r10, [sp, #4]
	str r2, [r10, r5, lsl #2]
	add r1, r1, #1
	ldr r10, [sp, #8]
	cmp r1, r10
	bge label63
	b label58
label24:
	ldr r6, [sp, #12]
	add r6, r6, #1
	str r6, [sp, #12]
	b label4
label63:
	add r0, r0, #1
	ldr r10, [sp, #8]
	cmp r0, r10
	bge label75
	b label57
label9:
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
	ldr r0, [r3, #16]
	str r0, [r5, #16]
	ldr r0, [r3, #20]
	str r0, [r5, #20]
	ldr r0, [r3, #24]
	str r0, [r5, #24]
	ldr r0, [r3, #28]
	str r0, [r5, #28]
	mov r0, r2
	add r2, r2, #8
	cmp r2, r4
	bge label10
	b label9
label10:
	add r2, r0, #8
	cmp r2, r4
	bge label13
label12:
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
	ldr r0, [r3, #16]
	str r0, [r5, #16]
	ldr r0, [r3, #20]
	str r0, [r5, #20]
	ldr r0, [r3, #24]
	str r0, [r5, #24]
	ldr r0, [r3, #28]
	str r0, [r5, #28]
	mov r0, r2
	add r2, r2, #8
	cmp r2, r4
	bge label13
	b label12
label13:
	add r2, r0, #8
	cmp r2, r4
	bge label15
label20:
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
	ldr r0, [r3, #16]
	str r0, [r5, #16]
	ldr r0, [r3, #20]
	str r0, [r5, #20]
	ldr r0, [r3, #24]
	str r0, [r5, #24]
	ldr r0, [r3, #28]
	str r0, [r5, #28]
	mov r0, r2
	add r2, r2, #8
	cmp r2, r4
	bge label15
	b label20
label15:
	add r2, r0, #8
	cmp r2, r4
	bge label18
label17:
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
	ldr r0, [r3, #16]
	str r0, [r5, #16]
	ldr r0, [r3, #20]
	str r0, [r5, #20]
	ldr r0, [r3, #24]
	str r0, [r5, #24]
	ldr r0, [r3, #28]
	str r0, [r5, #28]
	mov r0, r2
	add r2, r2, #8
	cmp r2, r4
	bge label18
	b label17
label18:
	ldr r10, [sp, #4]
	ldr r2, [r10, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r4
	bge label21
	b label18
label21:
	mov r0, #64
	bl _sysy_stoptime
	mov r0, r4
	ldr r1, [sp, #0]
	bl putarray
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
