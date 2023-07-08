.arch armv7ve
.data
.bss
.align 4
A:
	.zero	4194304
.align 4
B:
	.zero	4194304
.align 4
C:
	.zero	4194304
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getint
	movw r5, #:lower16:B
	movw r4, #:lower16:A
	str r0, [sp, #0]
	mov r6, r0
	movt r5, #:upper16:B
	movt r4, #:upper16:A
	str r4, [sp, #8]
	str r5, [sp, #4]
	mov r5, #0
	cmp r0, r5
	ble label94
	cmp r0, #0
	ble label8
	b label390
label94:
	mov r4, #0
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label16
	cmp r6, #0
	ble label15
	b label427
label16:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	str r5, [sp, #12]
	mov r2, #0
	ldr r6, [sp, #0]
	cmp r6, r2
	ble label132
	cmp r6, #0
	ble label22
	mov r3, #0
	add r1, r5, r2, lsl #12
	add r4, r3, #4
	cmp r6, r4
	ble label27
	b label465
label132:
	mov r2, #0
	ldr r5, [sp, #4]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label161
	mov r3, #0
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	add r3, r3, #1
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	add r3, r3, #1
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	add r3, r3, #1
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	b label558
label161:
	mov r1, #0
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label234
	cmp r6, #0
	ble label47
	ldr r5, [sp, #4]
	mov r3, #0
	add r2, r5, r1, lsl #12
	add r4, r3, #4
	cmp r6, r4
	ble label51
	add r5, r2, r3, lsl #2
	mov r6, #0
	str r6, [r2, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label51
	add r5, r2, r3, lsl #2
	mov r6, #0
	str r6, [r2, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label51
	add r5, r2, r3, lsl #2
	mov r6, #0
	str r6, [r2, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label51
	b label648
label558:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label43
	b label584
label35:
	ldr r6, [sp, #0]
	cmp r6, #0
	ble label42
	ldr r5, [sp, #12]
	add r5, r5, r3, lsl #12
	cmp r6, #4
	ble label183
	b label441
label183:
	mov r6, #0
label37:
	ldr r7, [r5, r6, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label42
	b label195
label42:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	add r3, r3, #1
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	add r3, r3, #1
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	add r3, r3, #1
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	add r3, r3, #1
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	b label613
label195:
	mov r6, r7
	b label37
label39:
	add r6, r5, r9, lsl #2
	ldr r10, [r5, r9, lsl #2]
	add r8, r1, r9, lsl #2
	ldr r11, [r1, r9, lsl #2]
	mla r10, r4, r11, r10
	str r10, [r5, r9, lsl #2]
	ldr r9, [r6, #4]
	ldr r10, [r8, #4]
	mla r9, r4, r10, r9
	str r9, [r6, #4]
	ldr r9, [r6, #8]
	ldr r10, [r8, #8]
	mla r9, r4, r10, r9
	str r9, [r6, #8]
	ldr r9, [r6, #12]
	ldr r8, [r8, #12]
	mla r8, r4, r8, r9
	str r8, [r6, #12]
	ldr r6, [sp, #0]
	add r8, r7, #4
	cmp r6, r8
	ble label227
	mov r9, r7
	mov r7, r8
	b label39
label227:
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label42
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label42
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label42
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label42
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label42
	b label195
label441:
	mov r7, #4
	mov r9, #0
	b label39
label465:
	add r5, r1, r3, lsl #2
	mov r6, #0
	str r6, [r1, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label27
	add r5, r1, r3, lsl #2
	mov r6, #0
	str r6, [r1, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label27
	add r5, r1, r3, lsl #2
	mov r6, #0
	str r6, [r1, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label27
	b label632
label234:
	mov r2, #0
	ldr r5, [sp, #12]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label56
	mov r3, #0
	cmp r6, r3
	ble label84
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label75
	add r3, r3, #1
	cmp r6, r3
	ble label84
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label75
	add r3, r3, #1
	cmp r6, r3
	ble label84
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label75
	add r3, r3, #1
	cmp r6, r3
	ble label84
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label75
	b label570
label56:
	add r0, r0, #1
	cmp r0, #5
	bge label268
	mov r2, #0
	ldr r6, [sp, #0]
	cmp r6, r2
	ble label132
	cmp r6, #0
	ble label22
	ldr r5, [sp, #12]
	mov r3, #0
	add r1, r5, r2, lsl #12
	add r4, r3, #4
	cmp r6, r4
	ble label27
	b label465
label268:
	mov r7, #0
	mov r0, r7
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label71
	cmp r6, #0
	ble label69
	ldr r5, [sp, #4]
	mov r4, #0
	mov r3, r7
	add r1, r5, r7, lsl #12
	add r2, r4, #4
	cmp r6, r2
	ble label282
	b label65
label71:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r7
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label84:
	add r2, r2, #1
	ldr r5, [sp, #12]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label56
	mov r3, #0
	cmp r6, r3
	ble label84
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label75
	add r3, r3, #1
	cmp r6, r3
	ble label84
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label75
	add r3, r3, #1
	cmp r6, r3
	ble label84
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label75
	add r3, r3, #1
	cmp r6, r3
	ble label84
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label75
	add r3, r3, #1
	cmp r6, r3
	ble label84
label600:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label75
label625:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label84
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label75
	b label625
label570:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label84
	b label600
label613:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	b label613
label584:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	b label613
label43:
	add r2, r2, #1
	ldr r5, [sp, #4]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label161
	mov r3, #0
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	add r3, r3, #1
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	add r3, r3, #1
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	add r3, r3, #1
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label35
	add r3, r3, #1
	cmp r6, r3
	ble label43
	b label584
label51:
	mov r4, #0
	str r4, [r2, r3, lsl #2]
	ldr r6, [sp, #0]
	add r3, r3, #1
	cmp r6, r3
	ble label47
	b label51
label27:
	mov r4, #0
	str r4, [r1, r3, lsl #2]
	ldr r6, [sp, #0]
	add r3, r3, #1
	cmp r6, r3
	ble label22
	b label27
label75:
	ldr r6, [sp, #0]
	cmp r6, #0
	ble label76
	ldr r5, [sp, #4]
	add r5, r5, r3, lsl #12
	cmp r6, #4
	ble label327
	b label421
label76:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label84
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label75
	add r3, r3, #1
	cmp r6, r3
	ble label84
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label75
	add r3, r3, #1
	cmp r6, r3
	ble label84
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label75
	add r3, r3, #1
	cmp r6, r3
	ble label84
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label75
	add r3, r3, #1
	cmp r6, r3
	ble label84
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label75
	b label625
label421:
	mov r7, #4
	mov r9, #0
	b label78
label327:
	mov r6, #0
	ldr r7, [r5, r6, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label76
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label76
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label76
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label76
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label76
	b label659
label78:
	add r6, r5, r9, lsl #2
	ldr r10, [r5, r9, lsl #2]
	add r8, r1, r9, lsl #2
	ldr r11, [r1, r9, lsl #2]
	mla r10, r4, r11, r10
	str r10, [r5, r9, lsl #2]
	ldr r9, [r6, #4]
	ldr r10, [r8, #4]
	mla r9, r4, r10, r9
	str r9, [r6, #4]
	ldr r9, [r6, #8]
	ldr r10, [r8, #8]
	mla r9, r4, r10, r9
	str r9, [r6, #8]
	ldr r9, [r6, #12]
	ldr r8, [r8, #12]
	mla r8, r4, r8, r9
	str r8, [r6, #12]
	ldr r6, [sp, #0]
	add r8, r7, #4
	cmp r6, r8
	ble label659
	mov r9, r7
	mov r7, r8
	b label78
label659:
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label76
	b label659
label648:
	add r5, r2, r3, lsl #2
	mov r6, #0
	str r6, [r2, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	b label49
label47:
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label234
	cmp r6, #0
	ble label47
	ldr r5, [sp, #4]
	mov r3, #0
	add r2, r5, r1, lsl #12
	add r4, r3, #4
	cmp r6, r4
	ble label51
	add r5, r2, r3, lsl #2
	mov r6, #0
	str r6, [r2, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label51
	add r5, r2, r3, lsl #2
	mov r6, #0
	str r6, [r2, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label51
	add r5, r2, r3, lsl #2
	mov r6, #0
	str r6, [r2, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label51
	b label648
label49:
	add r4, r3, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label51
	b label648
label632:
	add r5, r1, r3, lsl #2
	mov r6, #0
	str r6, [r1, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	b label24
label22:
	add r2, r2, #1
	ldr r6, [sp, #0]
	cmp r6, r2
	ble label132
	cmp r6, #0
	ble label22
	ldr r5, [sp, #12]
	mov r3, #0
	add r1, r5, r2, lsl #12
	add r4, r3, #4
	cmp r6, r4
	ble label27
	add r5, r1, r3, lsl #2
	mov r6, #0
	str r6, [r1, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label27
	add r5, r1, r3, lsl #2
	mov r6, #0
	str r6, [r1, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label27
	add r5, r1, r3, lsl #2
	mov r6, #0
	str r6, [r1, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label27
	b label632
label24:
	add r4, r3, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label27
	b label632
label282:
	mov r2, r4
	ldr r4, [r1, r4, lsl #2]
	ldr r6, [sp, #0]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label304
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label304
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label304
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label304
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label304
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label304
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label304
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label304
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label304
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label304
	b label66
label304:
	mov r7, r3
label69:
	add r0, r0, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label71
	cmp r6, #0
	ble label69
	ldr r5, [sp, #4]
	mov r4, #0
	mov r3, r7
	add r1, r5, r0, lsl #12
	add r2, r4, #4
	cmp r6, r2
	ble label282
	b label65
label66:
	ldr r4, [r1, r2, lsl #2]
	ldr r6, [sp, #0]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label304
	b label66
label65:
	add r5, r1, r4, lsl #2
	ldr r4, [r1, r4, lsl #2]
	add r3, r3, r4
	ldr r4, [r5, #4]
	add r3, r3, r4
	ldr r4, [r5, #8]
	add r3, r3, r4
	ldr r4, [r5, #12]
	add r3, r3, r4
	mov r4, r2
	add r2, r2, #4
	ldr r6, [sp, #0]
	cmp r6, r2
	ble label282
	b label65
label8:
	add r5, r5, #1
	ldr r6, [sp, #0]
	cmp r6, r5
	ble label94
	cmp r6, #0
	ble label8
	b label390
label15:
	add r4, r4, #1
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label16
	cmp r6, #0
	ble label15
	b label427
label390:
	ldr r4, [sp, #8]
	mov r6, #0
	add r4, r4, r5, lsl #12
label6:
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label8
	mov r6, r0
	b label6
label427:
	ldr r5, [sp, #4]
	mov r6, #0
	add r5, r5, r4, lsl #12
label13:
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label15
	mov r6, r0
	b label13
