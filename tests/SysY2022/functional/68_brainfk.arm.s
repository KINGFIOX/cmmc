.arch armv7ve
.data
.bss
.align 8
tape:
	.zero	262144
.align 8
program:
	.zero	131072
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, lr }
	sub sp, sp, #4
	bl getint
	cmp r0, #0
	movw r4, #:lower16:program
	movt r4, #:upper16:program
	mov r5, r0
	ble label40
	mov r6, r4
	mov r7, #0
	b label32
.p2align 4
label35:
	add r6, r6, #4
	mov r7, r0
.p2align 4
label32:
	bl getch
	str r0, [r6, #0]
	add r0, r7, #1
	cmp r5, r0
	bgt label35
label2:
	mov r6, #0
	mov r7, r6
	str r6, [r4, r5, lsl #2]
	movw r5, #:lower16:tape
	movt r5, #:upper16:tape
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	bne label7
	b label30
.p2align 4
label8:
	add r6, r6, #1
.p2align 4
label9:
	add r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	beq label30
.p2align 4
label7:
	cmp r0, #62
	beq label8
	cmp r0, #60
	beq label13
	cmp r0, #43
	bne label166
	add r0, r5, r6, lsl #2
	add r7, r7, #1
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	bne label7
	b label30
.p2align 4
label166:
	cmp r0, #45
	bne label169
	add r0, r5, r6, lsl #2
	add r7, r7, #1
	ldr r1, [r0, #0]
	sub r1, r1, #1
	str r1, [r0, #0]
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	bne label7
	b label30
.p2align 4
label169:
	cmp r0, #46
	bne label172
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	bne label7
	b label30
label172:
	cmp r0, #44
	bne label20
	bl getch
	str r0, [r5, r6, lsl #2]
	b label9
label20:
	cmp r0, #93
	beq label21
	b label9
label30:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label21:
	ldr r0, [r5, r6, lsl #2]
	cmp r0, #0
	beq label9
	mov r0, #1
	cmp r0, #0
	bgt label25
	b label9
.p2align 4
label27:
	subs r0, r0, #1
	ble label9
.p2align 4
label25:
	sub r7, r7, #1
	ldr r1, [r4, r7, lsl #2]
	cmp r1, #91
	beq label27
	sub r1, r1, #93
	clz r1, r1
	lsr r1, r1, #5
	adds r0, r0, r1
	bgt label25
	b label9
.p2align 4
label13:
	sub r6, r6, #1
	add r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	bne label7
	b label30
label40:
	mov r5, #0
	b label2
