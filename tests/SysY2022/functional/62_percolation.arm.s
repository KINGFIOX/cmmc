.arch armv7ve
.data
.bss
.align 8
array:
	.zero	440
.text
.syntax unified
.arm
.fpu vfpv4
findfa:
.p2align 4
	push { r4, r5, r6, r7, r8, lr }
	movw r5, #:lower16:array
	mov r4, r0
	movt r5, #:upper16:array
	ldr r6, [r5, r0, lsl #2]
	cmp r0, r6
	bne label4
label2:
	pop { r4, r5, r6, r7, r8, pc }
label4:
	ldr r7, [r5, r6, lsl #2]
	cmp r6, r7
	bne label7
	mov r0, r6
	str r6, [r5, r4, lsl #2]
	b label2
label7:
	ldr r8, [r5, r7, lsl #2]
	cmp r7, r8
	bne label10
	mov r0, r7
	str r7, [r5, r6, lsl #2]
	str r7, [r5, r4, lsl #2]
	b label2
label10:
	ldr r0, [r5, r8, lsl #2]
	cmp r8, r0
	bne label13
	mov r0, r8
	str r8, [r5, r7, lsl #2]
	str r8, [r5, r6, lsl #2]
	str r8, [r5, r4, lsl #2]
	b label2
label13:
	bl findfa
	str r0, [r5, r8, lsl #2]
	str r0, [r5, r7, lsl #2]
	str r0, [r5, r6, lsl #2]
	str r0, [r5, r4, lsl #2]
	b label2
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, lr }
	movw r4, #:lower16:array
	mov r5, #1
	sub sp, sp, #4
	movt r4, #:upper16:array
	cmp r5, #0
	beq label110
.p2align 4
label73:
	sub r5, r5, #1
	mvn r0, #0
	mov r6, #0
	str r0, [r4, #4]
	mov r7, r6
	str r0, [r4, #8]
	str r0, [r4, #12]
	str r0, [r4, #16]
	str r0, [r4, #20]
	str r0, [r4, #24]
	str r0, [r4, #28]
	str r0, [r4, #32]
	str r0, [r4, #36]
	str r0, [r4, #40]
	str r0, [r4, #44]
	str r0, [r4, #48]
	str r0, [r4, #52]
	str r0, [r4, #56]
	str r0, [r4, #60]
	str r0, [r4, #64]
	str r0, [r4, #68]
	cmp r6, #10
	blt label77
	cmp r6, #0
	beq label109
	cmp r5, #0
	bne label73
	b label110
.p2align 4
label77:
	bl getint
	mov r8, r0
	bl getint
	cmp r6, #0
	add r7, r7, #1
	mov r2, r0
	beq label78
	cmp r7, #10
	blt label77
	cmp r6, #0
	beq label109
	cmp r5, #0
	bne label73
	b label110
.p2align 4
label78:
	sub r0, r8, #1
	cmp r8, #1
	add r1, r2, r0, lsl #2
	str r1, [r4, r1, lsl #2]
	beq label79
	cmp r8, #4
	beq label106
	cmp r2, #4
	blt label83
	cmp r2, #1
	bgt label103
	cmp r8, #4
	blt label100
	cmp r8, #1
	bgt label97
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	mov r0, #0
	cmp r0, #0
	bne label95
	cmp r7, #10
	blt label77
	cmp r6, #0
	beq label109
	b label519
.p2align 4
label94:
	mov r0, r7
	bl putint
	mov r0, #10
	bl putch
	mov r6, #1
	cmp r7, #10
	blt label77
	cmp r6, #0
	beq label109
	cmp r5, #0
	bne label73
	b label110
.p2align 4
label80:
	str r0, [r4, r3, lsl #2]
	cmp r8, #4
	beq label106
	cmp r2, #4
	blt label83
	cmp r2, #1
	bgt label103
	cmp r8, #4
	blt label100
	cmp r8, #1
	bgt label97
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	mov r0, #0
	cmp r0, #0
	bne label95
	cmp r7, #10
	blt label77
	cmp r6, #0
	beq label109
.p2align 4
label519:
	cmp r5, #0
	bne label73
	b label110
.p2align 4
label109:
	mvn r0, #0
	bl putint
	mov r0, #10
	bl putch
	cmp r5, #0
	bne label73
label110:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
.p2align 4
label83:
	add r3, r1, #1
	ldr r0, [r4, r3, lsl #2]
	cmn r0, #1
	bne label84
	cmp r2, #1
	bgt label103
	cmp r8, #4
	blt label100
	cmp r8, #1
	bgt label97
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	mov r0, #0
	cmp r0, #0
	bne label95
	cmp r7, #10
	blt label77
	cmp r6, #0
	beq label109
	cmp r5, #0
	bne label73
	b label110
.p2align 4
label84:
	mov r0, r1
	bl findfa
	mov r9, r0
	mov r0, r3
	bl findfa
	cmp r9, r0
	bne label85
	cmp r2, #1
	bgt label103
	cmp r8, #4
	blt label100
	cmp r8, #1
	bgt label97
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	mov r0, #0
	cmp r0, #0
	bne label95
	cmp r7, #10
	blt label77
	cmp r6, #0
	beq label109
	cmp r5, #0
	bne label73
	b label110
.p2align 4
label96:
	ldr r0, [r4, #68]
	cmn r0, #1
	mov r0, #0
	movwne r0, #1
	cmp r0, #0
	bne label95
	mov r0, #0
	cmp r0, #0
	bne label94
	cmp r7, #10
	blt label77
	cmp r6, #0
	beq label109
	cmp r5, #0
	bne label73
	b label110
.p2align 4
label85:
	str r0, [r4, r9, lsl #2]
	cmp r2, #1
	bgt label103
	cmp r8, #4
	blt label100
	cmp r8, #1
	bgt label97
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	mov r0, #0
	cmp r0, #0
	bne label95
	cmp r7, #10
	blt label77
	cmp r6, #0
	beq label109
	cmp r5, #0
	bne label73
	b label110
.p2align 4
label103:
	sub r2, r1, #1
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	bne label104
	cmp r8, #4
	blt label100
	cmp r8, #1
	bgt label97
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	mov r0, #0
	cmp r0, #0
	bne label95
	cmp r7, #10
	blt label77
	cmp r6, #0
	beq label109
	cmp r5, #0
	bne label73
	b label110
.p2align 4
label104:
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r2
	bl findfa
	cmp r3, r0
	bne label105
	cmp r8, #4
	blt label100
	cmp r8, #1
	bgt label97
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	mov r0, #0
	cmp r0, #0
	bne label95
	cmp r7, #10
	blt label77
	cmp r6, #0
	beq label109
	cmp r5, #0
	bne label73
	b label110
.p2align 4
label79:
	mov r9, #0
	str r9, [r4, #0]
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r9
	bl findfa
	cmp r3, r0
	bne label80
	cmp r8, #4
	beq label106
	cmp r2, #4
	blt label83
	cmp r2, #1
	bgt label103
	cmp r8, #4
	blt label100
	cmp r8, #1
	bgt label97
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	mov r0, #0
	cmp r0, #0
	bne label95
	cmp r7, #10
	blt label77
	cmp r6, #0
	beq label109
	b label519
.p2align 4
label97:
	sub r2, r1, #4
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	bne label98
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	mov r0, #0
	cmp r0, #0
	bne label95
	cmp r7, #10
	blt label77
	cmp r6, #0
	beq label109
	cmp r5, #0
	bne label73
	b label110
.p2align 4
label98:
	mov r0, r1
	bl findfa
	mov r1, r0
	mov r0, r2
	bl findfa
	cmp r1, r0
	bne label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	mov r0, #0
	cmp r0, #0
	bne label95
	cmp r7, #10
	blt label77
	cmp r6, #0
	beq label109
	cmp r5, #0
	bne label73
	b label110
.p2align 4
label100:
	add r2, r1, #4
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	bne label101
	cmp r8, #1
	bgt label97
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	mov r0, #0
	cmp r0, #0
	bne label95
	cmp r7, #10
	blt label77
	cmp r6, #0
	beq label109
	cmp r5, #0
	bne label73
	b label110
.p2align 4
label95:
	mov r0, #0
	bl findfa
	mov r1, r0
	mov r0, #17
	bl findfa
	sub r0, r1, r0
	clz r0, r0
	lsr r0, r0, #5
	cmp r0, #0
	bne label94
	cmp r7, #10
	blt label77
	cmp r6, #0
	beq label109
	cmp r5, #0
	bne label73
	b label110
.p2align 4
label99:
	str r0, [r4, r1, lsl #2]
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	mov r0, #0
	cmp r0, #0
	bne label95
	cmp r7, #10
	blt label77
	cmp r6, #0
	beq label109
	cmp r5, #0
	bne label73
	b label110
.p2align 4
label101:
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r2
	bl findfa
	cmp r3, r0
	bne label102
	cmp r8, #1
	bgt label97
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	mov r0, #0
	cmp r0, #0
	bne label95
	cmp r7, #10
	blt label77
	cmp r6, #0
	beq label109
	cmp r5, #0
	bne label73
	b label110
.p2align 4
label102:
	str r0, [r4, r3, lsl #2]
	cmp r8, #1
	bgt label97
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	mov r0, #0
	cmp r0, #0
	bne label95
	cmp r7, #10
	blt label77
	cmp r6, #0
	beq label109
	cmp r5, #0
	bne label73
	b label110
.p2align 4
label105:
	str r0, [r4, r3, lsl #2]
	cmp r8, #4
	blt label100
	cmp r8, #1
	bgt label97
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	mov r0, #0
	cmp r0, #0
	bne label95
	cmp r7, #10
	blt label77
	cmp r6, #0
	beq label109
	cmp r5, #0
	bne label73
	b label110
.p2align 4
label106:
	mov r9, #17
	str r9, [r4, #68]
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r9
	bl findfa
	cmp r3, r0
	bne label107
	cmp r2, #4
	blt label83
	cmp r2, #1
	bgt label103
	cmp r8, #4
	blt label100
	cmp r8, #1
	bgt label97
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	mov r0, #0
	cmp r0, #0
	bne label95
	cmp r7, #10
	blt label77
	cmp r6, #0
	beq label109
	cmp r5, #0
	bne label73
	b label110
.p2align 4
label107:
	str r0, [r4, r3, lsl #2]
	cmp r2, #4
	blt label83
	cmp r2, #1
	bgt label103
	cmp r8, #4
	blt label100
	cmp r8, #1
	bgt label97
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	mov r0, #0
	cmp r0, #0
	bne label95
	cmp r7, #10
	blt label77
	cmp r6, #0
	beq label109
	cmp r5, #0
	bne label73
	b label110
