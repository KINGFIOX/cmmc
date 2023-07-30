.arch armv7ve
.data
.bss
.align 8
f:
	.zero	800400
.align 8
dep:
	.zero	40020
.align 8
to:
	.zero	40020
.align 8
next:
	.zero	40020
.align 8
head:
	.zero	40020
.text
.syntax unified
.arm
.fpu vfpv4
tree:
.p2align 4
	push { r4, r5, r6, r7, lr }
	movw r6, #:lower16:next
	sub sp, sp, #4
	add r2, r0, r0, lsl #2
	mov r3, r1
	movw r5, #:lower16:to
	movt r6, #:upper16:next
	add r4, r1, #1
	movw r1, #:lower16:dep
	movt r5, #:upper16:to
	movt r1, #:upper16:dep
	str r3, [r1, r0, lsl #2]
	movw r1, #:lower16:f
	movt r1, #:upper16:f
	add r2, r1, r2, lsl #4
	ldr r7, [r2, #0]
	cmp r7, #0
	bne label26
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r7, [r1, r0, lsl #2]
	cmn r7, #1
	bne label5
	b label7
label26:
	mov r3, #0
	b label2
.p2align 4
label5:
	ldr r0, [r5, r7, lsl #2]
	mov r1, r4
	bl tree
	ldr r7, [r6, r7, lsl #2]
	cmn r7, #1
	bne label5
label7:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
.p2align 4
label2:
	ldr r7, [r2, r3, lsl #2]
	add r7, r7, r7, lsl #2
	add r7, r1, r7, lsl #4
	ldr r7, [r7, r3, lsl #2]
	add r3, r3, #1
	cmp r7, #0
	str r7, [r2, r3, lsl #2]
	bne label2
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r7, [r1, r0, lsl #2]
	cmn r7, #1
	bne label5
	b label7
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getch
	movw r6, #:lower16:dep
	sub r2, r0, #48
	movw r1, #:lower16:to
	movw r9, #:lower16:f
	movw r3, #:lower16:next
	movt r6, #:upper16:dep
	cmp r2, #9
	movt r1, #:upper16:to
	movt r9, #:upper16:f
	movt r3, #:upper16:next
	str r1, [sp, #12]
	movw r1, #:lower16:head
	str r3, [sp, #16]
	movt r1, #:upper16:head
	str r1, [sp, #20]
	str r9, [sp, #0]
	str r6, [sp, #4]
	bhi label178
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label191
	b label841
label178:
	mov r5, r0
	mov r4, #0
.p2align 4
label77:
	bl getch
	cmp r5, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r4, r2
	cmp r1, #9
	bhi label186
	cmp r1, #10
	blo label191
	b label841
label186:
	mov r5, r0
	b label77
label191:
	mov r5, r0
	mov r6, #0
.p2align 4
label83:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label86
	mov r5, r0
	b label83
label86:
	bl getch
	rsb r2, r6, #0
	cmp r4, #0
	sub r1, r0, #48
	mov r4, r6
	movne r4, r2
	cmp r1, #9
	bhi label209
	mov r5, #0
	cmp r1, #10
	blo label222
	b label221
label209:
	mov r6, r0
	mov r5, #0
.p2align 4
label88:
	bl getch
	cmp r6, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r5, r2
	cmp r1, #9
	bhi label217
	cmp r1, #10
	blo label222
	b label221
label217:
	mov r6, r0
	b label88
.p2align 4
label221:
	mov r7, #0
	cmp r5, #0
	rsb r0, r7, #0
	ldr r6, [sp, #4]
	mov r5, r7
	movne r5, r0
	cmp r4, #0
	movw r0, #16191
	movt r0, #16191
	str r0, [r6, #0]
	bgt label238
	cmp r4, #1
	bne label249
	b label102
label222:
	mov r6, r0
	mov r7, #0
.p2align 4
label94:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	blo label231
	cmp r5, #0
	rsb r0, r7, #0
	ldr r6, [sp, #4]
	mov r5, r7
	movne r5, r0
	cmp r4, #0
	movw r0, #16191
	movt r0, #16191
	str r0, [r6, #0]
	bgt label238
	cmp r4, #1
	bne label249
	b label102
label231:
	mov r6, r0
	b label94
label238:
	mov r0, #1
	b label99
label249:
	mov r6, #0
	mov r7, #1
	b label139
label102:
	mov r0, #1
	mov r1, #1
	bl tree
	cmp r5, #0
	bne label253
	b label138
.p2align 4
label139:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label584
	mov r8, #0
	cmp r1, #10
	blo label589
.p2align 4
label856:
	mov r9, #0
	b label145
.p2align 4
label584:
	mov r9, r0
	mov r8, #0
	b label161
.p2align 4
label589:
	mov r9, r0
	mov r10, #0
	b label158
.p2align 4
label145:
	bl getch
	rsb r2, r9, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r9
	movne r8, r2
	cmp r1, #9
	bhi label598
	mov r9, #0
	cmp r1, #10
	blo label611
.p2align 4
label857:
	mov r0, #0
	b label153
.p2align 4
label598:
	mov r10, r0
	mov r9, #0
.p2align 4
label147:
	bl getch
	cmp r10, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bhi label606
	cmp r1, #10
	blo label611
	b label857
.p2align 4
label606:
	mov r10, r0
	b label147
.p2align 4
label611:
	mov r10, r0
	mov r11, #0
	b label155
.p2align 4
label153:
	cmp r9, #0
	rsb r1, r0, #0
	add r7, r7, #1
	movne r0, r1
	cmp r4, r7
	ldr r1, [sp, #12]
	str r0, [r1, r6, lsl #2]
	ldr r1, [sp, #20]
	add r0, r0, r0, lsl #2
	lsl r0, r0, #4
	add r1, r1, r8, lsl #2
	ldr r2, [r1, #0]
	ldr r3, [sp, #16]
	str r2, [r3, r6, lsl #2]
	str r6, [r1, #0]
	add r6, r6, #1
	ldr r9, [sp, #0]
	str r8, [r9, r0]
	bne label139
	b label102
.p2align 4
label155:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label638
	mov r0, r11
	b label153
.p2align 4
label638:
	mov r10, r0
	b label155
.p2align 4
label158:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label647
	mov r9, r10
	b label145
.p2align 4
label647:
	mov r9, r0
	b label158
.p2align 4
label161:
	bl getch
	cmp r9, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r8, r2
	cmp r1, #9
	bhi label655
	cmp r1, #10
	blo label589
	b label856
.p2align 4
label655:
	mov r9, r0
	b label161
label253:
	str r5, [sp, #8]
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label259
	mov r4, #0
	cmp r1, #10
	blo label272
.p2align 4
label849:
	mov r5, #0
	b label111
.p2align 4
label259:
	mov r5, r0
	mov r4, #0
.p2align 4
label105:
	bl getch
	cmp r5, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r4, r2
	cmp r1, #9
	bhi label267
	cmp r1, #10
	blo label272
	b label849
.p2align 4
label267:
	mov r5, r0
	b label105
.p2align 4
label272:
	mov r5, r0
	mov r6, #0
	b label135
.p2align 4
label111:
	bl getch
	rsb r2, r5, #0
	cmp r4, #0
	sub r1, r0, #48
	mov r4, r5
	movne r4, r2
	cmp r1, #9
	bhi label281
	mov r5, #0
	cmp r1, #10
	blo label294
.p2align 4
label851:
	mov r0, #0
	b label122
.p2align 4
label281:
	mov r6, r0
	mov r5, #0
.p2align 4
label113:
	bl getch
	cmp r6, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r5, r2
	cmp r1, #9
	bhi label289
	cmp r1, #10
	blo label294
	b label851
.p2align 4
label289:
	mov r6, r0
	b label113
.p2align 4
label294:
	mov r6, r0
	mov r7, #0
.p2align 4
label119:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	blo label303
	mov r0, r7
	b label122
.p2align 4
label303:
	mov r6, r0
	b label119
.p2align 4
label122:
	cmp r5, #0
	rsb r2, r0, #0
	ldr r6, [sp, #4]
	mov r1, r0
	movne r1, r2
	ldr r0, [r6, r4, lsl #2]
	ldr r2, [r6, r1, lsl #2]
	cmp r0, r2
	mov r2, r4
	mov r0, r1
	movlt r2, r1
	movlt r0, r4
	mov r1, #19
	ldr r4, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r4, r3
	bgt label131
	cmp r0, r2
	bne label128
.p2align 4
label329:
	mov r0, r2
	b label129
.p2align 4
label128:
	add r1, r2, r2, lsl #2
	ldr r9, [sp, #0]
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #76]
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #76]
	mov r1, r2
	cmp r4, r3
	movne r0, r3
	movne r1, r4
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #72]
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r5, [r2, #72]
	mov r2, r1
	cmp r4, r5
	movne r2, r4
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #68]
	mov r1, r0
	movne r1, r5
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #68]
	mov r0, r2
	cmp r3, r4
	movne r1, r4
	movne r0, r3
	add r3, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #64]
	ldr r3, [r3, #64]
	cmp r2, r3
	movne r1, r3
	movne r0, r2
	add r3, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #60]
	ldr r4, [r3, #60]
	cmp r2, r4
	movne r1, r4
	movne r0, r2
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #56]
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #56]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #52]
	ldr r2, [r2, #52]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #48]
	ldr r2, [r2, #48]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #44]
	ldr r2, [r2, #44]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #40]
	ldr r4, [r2, #40]
	cmp r3, r4
	movne r0, r3
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r5, [r2, #36]
	mov r2, r1
	movne r2, r4
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #36]
	mov r1, r0
	cmp r5, r3
	movne r1, r5
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #32]
	mov r0, r2
	movne r0, r3
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #32]
	cmp r4, r3
	movne r1, r4
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #28]
	mov r2, r0
	movne r2, r3
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #28]
	mov r0, r1
	cmp r4, r3
	movne r0, r4
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #24]
	mov r1, r2
	movne r1, r3
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #24]
	cmp r4, r2
	movne r1, r2
	movne r0, r4
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #20]
	ldr r2, [r2, #20]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #16]
	ldr r2, [r2, #16]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #12]
	ldr r2, [r2, #12]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #8]
	ldr r2, [r2, #8]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #4]
	ldr r4, [r2, #4]
	cmp r3, r4
	movne r1, r4
	movne r0, r3
	add r1, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	lsl r1, r1, #4
	lsl r2, r2, #4
	ldr r2, [r9, r2]
	ldr r1, [r9, r1]
	cmp r2, r1
	movne r0, r2
	add r0, r0, r0, lsl #2
	lsl r0, r0, #4
	ldr r0, [r9, r0]
.p2align 4
label129:
	bl putint
	mov r0, #10
	bl putch
	ldr r5, [sp, #8]
	subs r5, r5, #1
	bne label253
	b label138
.p2align 4
label131:
	add r4, r2, r2, lsl #2
	ldr r9, [sp, #0]
	add r4, r9, r4, lsl #4
	ldr r4, [r4, r1, lsl #2]
	cmp r4, #0
	bne label132
	mov r3, #0
	cmp r3, #0
	sub r1, r1, #1
	movne r2, r4
	ldr r6, [sp, #4]
	ldr r4, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r4, r3
	bgt label131
	cmp r0, r2
	beq label329
	b label128
.p2align 4
label132:
	ldr r6, [sp, #4]
	ldr r5, [r6, r4, lsl #2]
	cmp r3, r5
	mov r3, #0
	movwle r3, #1
	cmp r3, #0
	sub r1, r1, #1
	movne r2, r4
	ldr r4, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r4, r3
	bgt label131
	cmp r0, r2
	beq label329
	b label128
.p2align 4
label135:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	blo label578
	mov r5, r6
	b label111
.p2align 4
label578:
	mov r5, r0
	b label135
label138:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label841:
	mov r6, #0
	b label86
.p2align 4
label99:
	mvn r2, #0
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	bge label99
	cmp r4, #1
	bne label249
	b label102
