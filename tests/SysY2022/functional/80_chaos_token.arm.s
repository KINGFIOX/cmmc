.arch armv7ve
.data
.section .rodata
.align 8
__HELLO:
	.4byte	87
	.4byte	101
	.4byte	108
	.4byte	99
	.4byte	111
	.4byte	109
	.4byte	101
	.4byte	32
	.4byte	116
	.4byte	111
	.4byte	32
	.4byte	116
	.4byte	104
	.4byte	101
	.4byte	32
	.4byte	74
	.4byte	97
	.4byte	112
	.4byte	97
	.4byte	114
	.4byte	105
	.4byte	32
	.4byte	80
	.4byte	97
	.4byte	114
	.4byte	107
	.4byte	33
	.4byte	10
	.zero	288
.align 8
N4__mE___:
	.4byte	83
	.4byte	97
	.4byte	97
	.4byte	98
	.4byte	97
	.4byte	114
	.4byte	117
	.zero	172
	.4byte	75
	.4byte	97
	.4byte	98
	.4byte	97
	.4byte	110
	.zero	180
	.4byte	72
	.4byte	97
	.4byte	115
	.4byte	104
	.4byte	105
	.4byte	98
	.4byte	105
	.4byte	114
	.4byte	111
	.4byte	107
	.4byte	111
	.4byte	117
	.zero	152
	.4byte	65
	.4byte	114
	.4byte	97
	.4byte	105
	.4byte	103
	.4byte	117
	.4byte	109
	.4byte	97
	.zero	168
	.4byte	72
	.4byte	117
	.4byte	110
	.4byte	98
	.4byte	111
	.4byte	114
	.4byte	117
	.4byte	116
	.4byte	111
	.4byte	32
	.4byte	80
	.4byte	101
	.4byte	110
	.4byte	103
	.4byte	105
	.4byte	110
	.zero	136
	.4byte	84
	.4byte	97
	.4byte	105
	.4byte	114
	.4byte	105
	.4byte	107
	.4byte	117
	.4byte	32
	.4byte	79
	.4byte	111
	.4byte	107
	.4byte	97
	.4byte	109
	.4byte	105
	.zero	144
.align 8
saY_HeI10_To:
	.4byte	32
	.4byte	115
	.4byte	97
	.4byte	121
	.4byte	115
	.4byte	32
	.4byte	104
	.4byte	101
	.4byte	108
	.4byte	108
	.4byte	111
	.4byte	32
	.4byte	116
	.4byte	111
	.4byte	32
	.zero	100
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	mov r4, #0
	movw r6, #:lower16:__HELLO
	movt r6, #:upper16:__HELLO
	mov r0, #10
	sub sp, sp, #28
	str r0, [sp, #0]
	mov r5, sp
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #12]
	str r4, [sp, #16]
	ldr r0, [r6, #0]
	cmp r0, #0
	beq label40
.p2align 4
label3:
	ldr r0, [r6, #0]
	bl putch
	ldr r0, [r6, #4]
	cmp r0, #0
	beq label40
	add r6, r6, #4
	b label3
label40:
	mov r6, r4
label6:
	mov r0, #6
	sdiv r0, r6, r0
	add r1, r0, r0, lsl #1
	sub r7, r6, r1, lsl #1
	cmp r0, r7
	beq label8
	movw r8, #:lower16:N4__mE___
	movt r8, #:upper16:N4__mE___
	mov r1, #200
	mla r9, r0, r1, r8
	ldr r0, [r9, #0]
	cmp r0, #0
	bne label12
label15:
	movw r9, #:lower16:saY_HeI10_To
	movt r9, #:upper16:saY_HeI10_To
	ldr r0, [r9, #0]
	cmp r0, #0
	beq label16
.p2align 4
label27:
	ldr r0, [r9, #0]
	bl putch
	ldr r0, [r9, #4]
	cmp r0, #0
	beq label16
	add r9, r9, #4
	b label27
.p2align 4
label12:
	ldr r0, [r9, #0]
	bl putch
	ldr r0, [r9, #4]
	cmp r0, #0
	beq label15
	add r9, r9, #4
	b label12
label16:
	mov r0, #200
	mla r7, r7, r0, r8
	ldr r0, [r7, #0]
	cmp r0, #0
	beq label21
.p2align 4
label18:
	ldr r0, [r7, #0]
	bl putch
	ldr r0, [r7, #4]
	cmp r0, #0
	beq label21
	add r7, r7, #4
	b label18
label21:
	ldr r0, [sp, #0]
	cmp r0, #0
	beq label8
	mov r7, r5
.p2align 4
label23:
	ldr r0, [r7, #0]
	bl putch
	ldr r0, [r7, #4]
	cmp r0, #0
	beq label8
	add r7, r7, #4
	b label23
label8:
	add r0, r6, r6, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r6, r0, r1, lsl #5
	cmp r6, #0
	bne label6
	mov r0, r4
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, pc }
