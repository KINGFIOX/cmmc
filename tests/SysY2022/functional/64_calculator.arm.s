.arch armv7ve
.data
.bss
.align 4
ints:
	.zero	40000
.align 4
chas:
	.zero	40000
.align 4
get:
	.zero	40000
.align 4
get2:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	bl getch
	movw r4, #:lower16:get2
	cmp r0, #13
	mov r2, #0
	mov r1, #0
	movw r7, #:lower16:get
	movw r6, #:lower16:chas
	movw r5, #:lower16:ints
	movt r4, #:upper16:get2
	movwne r1, #1
	movt r7, #:upper16:get
	movt r6, #:upper16:chas
	movt r5, #:upper16:ints
	cmp r0, #10
	movwne r2, #1
	ands r1, r1, r2
	beq label131
	mov r8, #0
	b label2
label131:
	mov r0, #0
	mov r3, #1
	mov r8, #0
	mov r1, r8
	cmp r0, r8
	ble label79
	ldr r2, [r7, r8, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	str r2, [r4, r3, lsl #2]
	add r1, r8, #1
	add r3, r3, #1
	cmp r0, r1
	ble label79
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label79
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label79
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label79
	b label770
label2:
	str r0, [r7, r8, lsl #2]
	bl getch
	add r8, r8, #1
	mov r2, #0
	mov r1, #0
	cmp r0, #13
	movwne r1, #1
	cmp r0, #10
	movwne r2, #1
	ands r1, r1, r2
	beq label141
	b label2
label141:
	mov r0, r8
	mov r3, #1
	mov r8, #0
	mov r1, r8
	cmp r0, r8
	ble label79
	ldr r2, [r7, r8, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	str r2, [r4, r3, lsl #2]
	add r1, r8, #1
	add r3, r3, #1
	cmp r0, r1
	ble label79
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label79
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label79
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	b label752
label79:
	cmp r8, #0
	ble label80
	subs r0, r8, #4
	ble label114
	b label117
label752:
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label79
	b label770
label12:
	cmp r2, #40
	bne label13
	add r8, r8, #1
	mov r9, #40
	str r9, [r6, r8, lsl #2]
	cmp r2, #94
	bne label15
	add r8, r8, #1
	mov r9, #94
	str r9, [r6, r8, lsl #2]
	cmp r2, #41
	bne label23
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label23
	add r10, r4, r3, lsl #2
	mov r11, #32
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label23
	add r10, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label23
	add r10, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label23
	b label772
label65:
	add r8, r3, #1
	mov r3, #37
	str r3, [r6, r8, lsl #2]
	mov r3, r2
	mov r2, #32
	add r1, r1, #1
	str r2, [r4, r3, lsl #2]
	add r3, r3, #1
	cmp r0, r1
	ble label79
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label79
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label79
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label79
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label79
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	b label752
label772:
	add r10, r4, r3, lsl #2
	mov r11, #32
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label23
	b label772
label23:
	cmp r2, #43
	bne label33
	b label26
label13:
	cmp r2, #94
	bne label15
	add r8, r8, #1
	mov r9, #94
	str r9, [r6, r8, lsl #2]
	cmp r2, #41
	bne label23
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label23
	add r10, r4, r3, lsl #2
	mov r11, #32
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label23
	add r10, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label23
	add r10, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label23
	b label772
label15:
	cmp r2, #41
	bne label23
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label23
	add r10, r4, r3, lsl #2
	mov r11, #32
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label23
	add r10, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label23
	add r10, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label23
	add r10, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label23
	b label772
label770:
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	b label752
label26:
	ldr r9, [r6, r8, lsl #2]
	sub r11, r9, #45
	sub r10, r9, #43
	clz r11, r11
	clz r10, r10
	lsr r11, r11, #5
	lsr r10, r10, #5
	orr r10, r10, r11
	sub r11, r9, #42
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #47
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #37
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #94
	clz r11, r11
	lsr r11, r11, #5
	orrs r10, r10, r11
	beq label30
	add r10, r4, r3, lsl #2
	mov r11, #32
	subs r8, r8, #1
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	bne label26
	add r8, r8, #1
	mov r9, #43
	str r9, [r6, r8, lsl #2]
	cmp r2, #45
	bne label43
	b label36
label30:
	add r8, r8, #1
	mov r9, #43
	str r9, [r6, r8, lsl #2]
	b label33
label36:
	ldr r9, [r6, r8, lsl #2]
	sub r11, r9, #45
	sub r10, r9, #43
	clz r11, r11
	clz r10, r10
	lsr r11, r11, #5
	lsr r10, r10, #5
	orr r10, r10, r11
	sub r11, r9, #42
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #47
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #37
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #94
	clz r11, r11
	lsr r11, r11, #5
	orrs r10, r10, r11
	beq label40
	add r10, r4, r3, lsl #2
	mov r11, #32
	subs r8, r8, #1
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	bne label36
	add r8, r8, #1
	mov r9, #45
	str r9, [r6, r8, lsl #2]
	cmp r2, #42
	bne label46
	b label69
label40:
	add r8, r8, #1
	mov r9, #45
	str r9, [r6, r8, lsl #2]
	b label43
label46:
	cmp r2, #47
	bne label56
	b label49
label609:
	mov r2, r3
	mov r3, r8
	b label62
label49:
	ldr r9, [r6, r8, lsl #2]
	sub r11, r9, #47
	sub r10, r9, #42
	clz r11, r11
	clz r10, r10
	lsr r11, r11, #5
	lsr r10, r10, #5
	orr r10, r10, r11
	sub r11, r9, #37
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #94
	clz r11, r11
	lsr r11, r11, #5
	orrs r10, r10, r11
	beq label53
	add r10, r4, r3, lsl #2
	mov r11, #32
	subs r8, r8, #1
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	bne label49
	add r8, r8, #1
	mov r9, #47
	str r9, [r6, r8, lsl #2]
	cmp r2, #37
	bne label59
	b label609
label53:
	add r8, r8, #1
	mov r9, #47
	str r9, [r6, r8, lsl #2]
label56:
	cmp r2, #37
	bne label59
	b label609
label69:
	ldr r9, [r6, r8, lsl #2]
	sub r11, r9, #47
	sub r10, r9, #42
	clz r11, r11
	clz r10, r10
	lsr r11, r11, #5
	lsr r10, r10, #5
	orr r10, r10, r11
	sub r11, r9, #37
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #94
	clz r11, r11
	lsr r11, r11, #5
	orrs r10, r10, r11
	beq label72
	add r10, r4, r3, lsl #2
	mov r11, #32
	subs r8, r8, #1
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	bne label69
	add r8, r8, #1
	mov r9, #42
	str r9, [r6, r8, lsl #2]
	cmp r2, #47
	bne label56
	b label49
label62:
	ldr r8, [r6, r3, lsl #2]
	sub r10, r8, #47
	sub r9, r8, #42
	clz r10, r10
	clz r9, r9
	lsr r10, r10, #5
	lsr r9, r9, #5
	orr r9, r9, r10
	sub r10, r8, #37
	clz r10, r10
	lsr r10, r10, #5
	orr r9, r9, r10
	sub r10, r8, #94
	clz r10, r10
	lsr r10, r10, #5
	orrs r9, r9, r10
	beq label65
	add r9, r4, r2, lsl #2
	mov r10, #32
	subs r3, r3, #1
	str r10, [r4, r2, lsl #2]
	add r2, r2, #2
	str r8, [r9, #4]
	bne label62
	add r8, r3, #1
	mov r3, #37
	str r3, [r6, r8, lsl #2]
	mov r3, r2
	mov r2, #32
	add r1, r1, #1
	str r2, [r4, r3, lsl #2]
	add r3, r3, #1
	cmp r0, r1
	ble label79
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label79
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label79
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label79
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label79
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	b label752
label59:
	mov r2, #32
	add r1, r1, #1
	str r2, [r4, r3, lsl #2]
	add r3, r3, #1
	cmp r0, r1
	ble label79
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label79
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label79
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label79
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	str r2, [r4, r3, lsl #2]
	add r1, r1, #1
	add r3, r3, #1
	cmp r0, r1
	ble label79
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label12
	b label752
label33:
	cmp r2, #45
	bne label43
	b label36
label43:
	cmp r2, #42
	bne label46
	b label69
label72:
	add r8, r8, #1
	mov r9, #42
	str r9, [r6, r8, lsl #2]
	cmp r2, #47
	bne label56
	b label49
label117:
	add r2, r6, r8, lsl #2
	mov r7, #32
	add r1, r4, r3, lsl #2
	ldr r8, [r6, r8, lsl #2]
	str r7, [r4, r3, lsl #2]
	add r3, r3, #8
	str r8, [r1, #4]
	ldr r8, [r2, #-4]
	str r7, [r1, #8]
	str r8, [r1, #12]
	ldr r8, [r2, #-8]
	str r7, [r1, #16]
	str r8, [r1, #20]
	mov r8, r0
	ldr r2, [r2, #-12]
	str r7, [r1, #24]
	str r2, [r1, #28]
	subs r0, r0, #4
	ble label114
	b label117
label114:
	ldr r0, [r6, r8, lsl #2]
	add r1, r4, r3, lsl #2
	mov r2, #32
	subs r8, r8, #1
	str r2, [r4, r3, lsl #2]
	add r3, r3, #2
	str r0, [r1, #4]
	ble label80
	b label114
label80:
	mov r0, #64
	str r0, [r4, r3, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	beq label82
	mov r0, #1
	mov r1, #0
label83:
	ldr r3, [r4, r0, lsl #2]
	sub r6, r3, #42
	sub r2, r3, #43
	clz r6, r6
	clz r2, r2
	lsr r8, r6, #5
	lsr r9, r2, #5
	sub r6, r3, #47
	sub r2, r3, #45
	clz r6, r6
	clz r2, r2
	lsr r6, r6, #5
	lsr r7, r2, #5
	orr r2, r9, r7
	orr r2, r2, r8
	orr r2, r2, r6
	sub r6, r3, #37
	clz r6, r6
	lsr r6, r6, #5
	orr r2, r2, r6
	sub r6, r3, #94
	clz r6, r6
	lsr r6, r6, #5
	orrs r2, r2, r6
	beq label102
	add r2, r5, r1, lsl #2
	ldr r6, [r5, r1, lsl #2]
	cmp r9, #0
	mov r9, #0
	ldr r2, [r2, #-4]
	add r10, r6, r2
	movne r9, r10
	cmp r7, #0
	sub r10, r2, r6
	mov r7, r9
	movne r7, r10
	cmp r8, #0
	mul r9, r6, r2
	movne r7, r9
	cmp r3, #47
	bne label88
	sdiv r7, r2, r6
	cmp r3, #37
	bne label91
	mls r7, r7, r6, r2
	cmp r3, #94
	bne label401
	cmp r6, #0
	beq label408
	mov r3, r6
	mov r6, #1
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
	b label781
label88:
	cmp r3, #37
	bne label91
	sdiv r7, r2, r6
	mls r7, r7, r6, r2
	cmp r3, #94
	bne label401
	cmp r6, #0
	beq label408
	mov r3, r6
	mov r6, #1
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
label781:
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
	b label767
label91:
	cmp r3, #94
	bne label401
	cmp r6, #0
	beq label408
	mov r3, r6
	mov r6, #1
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
	b label749
label767:
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
	b label783
label401:
	mov r6, r7
label93:
	sub r1, r1, #1
	str r6, [r5, r1, lsl #2]
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	beq label82
	b label83
label408:
	mov r6, #1
	sub r1, r1, #1
	str r6, [r5, r1, lsl #2]
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	beq label82
	b label83
label102:
	cmp r3, #32
	beq label109
	add r1, r1, #1
	sub r6, r3, #48
	add r2, r0, #1
	str r6, [r5, r1, lsl #2]
	ldr r3, [r4, r2, lsl #2]
	cmp r3, #32
	beq label437
	b label652
label437:
	mov r3, #1
	add r0, r0, r3
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	beq label82
	b label83
label783:
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
label96:
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
	b label96
label749:
	mul r6, r2, r6
	subs r3, r3, #1
	beq label93
	b label767
label109:
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	beq label82
	b label83
label652:
	mov r3, #1
label104:
	add r7, r0, r3
	add r6, r6, r6, lsl #2
	ldr r7, [r4, r7, lsl #2]
	lsl r6, r6, #1
	sub r6, r6, #48
	add r6, r7, r6
	add r7, r2, r3
	str r6, [r5, r1, lsl #2]
	add r3, r3, #1
	ldr r7, [r4, r7, lsl #2]
	cmp r7, #32
	beq label107
	b label104
label82:
	ldr r0, [r5, #4]
	bl putint
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label107:
	add r0, r0, r3
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	beq label82
	b label83
