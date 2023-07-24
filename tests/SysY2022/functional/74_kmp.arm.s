.arch armv7ve
.data
.bss
.align 4
next:
	.zero	16384
.align 4
src:
	.zero	16384
.align 4
dst:
	.zero	16384
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, lr }
	mov r6, #0
	movw r5, #:lower16:next
	movw r4, #:lower16:dst
	sub sp, sp, #4
	movt r5, #:upper16:next
	movt r4, #:upper16:dst
label2:
	bl getch
	cmp r0, #10
	str r0, [r4, r6, lsl #2]
	bne label33
	mov r7, #0
	str r7, [r4, r6, lsl #2]
	movw r6, #:lower16:src
	movt r6, #:upper16:src
label5:
	bl getch
	cmp r0, #10
	str r0, [r6, r7, lsl #2]
	bne label44
	mov r1, #0
	mvn r0, #0
	str r1, [r6, r7, lsl #2]
	str r0, [r5, #0]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	bne label20
	mov r0, #0
	mov r1, r0
	ldr r2, [r6, r0, lsl #2]
	cmp r2, #0
	bne label17
	b label123
.p2align 4
label20:
	cmn r0, #1
	beq label21
	ldr r3, [r4, r0, lsl #2]
	cmp r2, r3
	beq label21
	ldr r0, [r5, r0, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	bne label20
	mov r0, #0
	mov r1, r0
	ldr r2, [r6, r0, lsl #2]
	cmp r2, #0
	bne label17
label123:
	mvn r0, #0
	b label15
label12:
	ldr r2, [r6, r1, lsl #2]
	cmp r2, #0
	beq label123
label17:
	ldr r3, [r4, r0, lsl #2]
	cmp r2, r3
	beq label19
	ldr r0, [r5, r0, lsl #2]
	mov r3, #0
	cmn r0, #1
	add r2, r0, #1
	moveq r0, r3
	clz r2, r2
	lsr r2, r2, #5
	add r1, r1, r2
	b label12
.p2align 4
label21:
	add r1, r1, #1
	add r0, r0, #1
	str r0, [r5, r1, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	bne label20
	mov r0, #0
	mov r1, r0
	ldr r2, [r6, r0, lsl #2]
	cmp r2, #0
	bne label17
	b label123
label15:
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, pc }
label19:
	add r0, r0, #1
	add r1, r1, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #0
	bne label12
	mov r0, r1
	b label15
label33:
	add r6, r6, #1
	b label2
label44:
	add r7, r7, #1
	b label5
