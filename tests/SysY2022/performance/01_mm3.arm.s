.arch armv7ve
.data
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
	sub sp, sp, #220
	bl getint
	mov r1, r0
	str r0, [sp, #64]
	movw r1, #:lower16:A
	movt r1, #:upper16:A
	str r1, [sp, #72]
	movw r1, #:lower16:B
	movt r1, #:upper16:B
	str r1, [sp, #68]
	movw r1, #:lower16:C
	movt r1, #:upper16:C
	str r1, [sp, #76]
	mov r4, #0
	mov r1, r0
	cmp r4, r0
	bge label126
	cmp r0, #0
	ble label8
	ldr r1, [sp, #72]
	add r6, r1, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label8
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label8
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label8
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label8
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label8
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label8
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label8
	b label1619
label126:
	mov r4, #0
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label16
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label15
	ldr r1, [sp, #68]
	add r6, r1, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label15
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label15
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label15
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label15
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label15
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label15
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label15
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label15
	b label1562
label16:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	str r0, [sp, #80]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label162
	ldr r1, [sp, #76]
	add r3, r1, r0, lsl #12
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label33
	mov r2, #0
	add r4, r2, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label24
	b label32
label162:
	mov r0, #0
	str r0, [sp, #88]
	ldr r1, [sp, #68]
	add r2, r1, r0, lsl #12
	str r2, [sp, #172]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label247
	str r0, [sp, #156]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label114
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label97
	ldr r0, [sp, #156]
	add r0, r0, #1
	str r0, [sp, #156]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label114
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label97
	ldr r0, [sp, #156]
	add r0, r0, #1
	str r0, [sp, #156]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label114
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label97
	ldr r0, [sp, #156]
	add r0, r0, #1
	str r0, [sp, #156]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label114
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label97
	ldr r0, [sp, #156]
	add r0, r0, #1
	str r0, [sp, #156]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label114
label1579:
	ldr r1, [sp, #72]
	ldr r0, [sp, #156]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label97
	b label1612
label114:
	ldr r0, [sp, #88]
	add r0, r0, #1
	str r0, [sp, #88]
	ldr r1, [sp, #68]
	add r2, r1, r0, lsl #12
	str r2, [sp, #172]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label247
	mov r0, #0
	str r0, [sp, #156]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label114
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label97
	ldr r0, [sp, #156]
	add r0, r0, #1
	str r0, [sp, #156]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label114
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label97
	ldr r0, [sp, #156]
	add r0, r0, #1
	str r0, [sp, #156]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label114
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label97
	ldr r0, [sp, #156]
	add r0, r0, #1
	str r0, [sp, #156]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label114
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label97
	ldr r0, [sp, #156]
	add r0, r0, #1
	str r0, [sp, #156]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label114
	b label1579
label1612:
	ldr r0, [sp, #156]
	add r0, r0, #1
	str r0, [sp, #156]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label114
	b label1645
label107:
	ldr r1, [sp, #140]
	ldr r1, [r1, r0, lsl #2]
	ldr r2, [sp, #172]
	ldr r3, [r2, r0, lsl #2]
	ldr r2, [sp, #60]
	mla r2, r3, r2, r1
	ldr r1, [sp, #140]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label113
	b label107
label113:
	ldr r0, [sp, #156]
	add r0, r0, #1
	str r0, [sp, #156]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label114
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label97
	ldr r0, [sp, #156]
	add r0, r0, #1
	str r0, [sp, #156]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label114
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label97
	ldr r0, [sp, #156]
	add r0, r0, #1
	str r0, [sp, #156]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label114
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label97
	ldr r0, [sp, #156]
	add r0, r0, #1
	str r0, [sp, #156]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label114
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label97
	ldr r0, [sp, #156]
	add r0, r0, #1
	str r0, [sp, #156]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label114
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label97
	b label1612
label1645:
	ldr r1, [sp, #72]
	ldr r0, [sp, #156]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label97
	b label1612
label247:
	mov r0, #0
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label251
	ldr r1, [sp, #68]
	add r3, r1, r0, lsl #12
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label39
	mov r2, #0
	add r4, r2, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label42
	b label50
label251:
	mov r0, #0
	str r0, [sp, #84]
	ldr r1, [sp, #76]
	add r2, r1, r0, lsl #12
	str r2, [sp, #92]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label53
	str r0, [sp, #164]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label93
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label77
	ldr r0, [sp, #164]
	add r0, r0, #1
	str r0, [sp, #164]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label93
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label77
	ldr r0, [sp, #164]
	add r0, r0, #1
	str r0, [sp, #164]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label93
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label77
	ldr r0, [sp, #164]
	add r0, r0, #1
	str r0, [sp, #164]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label93
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label77
	ldr r0, [sp, #164]
	add r0, r0, #1
	str r0, [sp, #164]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label93
	b label1572
label97:
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label113
	ldr r1, [sp, #76]
	ldr r0, [sp, #156]
	add r1, r1, r0, lsl #12
	str r1, [sp, #140]
	ldr r1, [sp, #64]
	cmp r1, #16
	ble label837
	b label1364
label1572:
	ldr r1, [sp, #72]
	ldr r0, [sp, #164]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label77
label1605:
	ldr r0, [sp, #164]
	add r0, r0, #1
	str r0, [sp, #164]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label93
	b label1638
label76:
	ldr r0, [sp, #164]
	add r0, r0, #1
	str r0, [sp, #164]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label93
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label77
	ldr r0, [sp, #164]
	add r0, r0, #1
	str r0, [sp, #164]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label93
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label77
	ldr r0, [sp, #164]
	add r0, r0, #1
	str r0, [sp, #164]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label93
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label77
	ldr r0, [sp, #164]
	add r0, r0, #1
	str r0, [sp, #164]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label93
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label77
	ldr r0, [sp, #164]
	add r0, r0, #1
	str r0, [sp, #164]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label93
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label77
	b label1605
label91:
	ldr r1, [sp, #208]
	ldr r1, [r1, r0, lsl #2]
	ldr r2, [sp, #92]
	ldr r3, [r2, r0, lsl #2]
	ldr r2, [sp, #56]
	mla r2, r3, r2, r1
	ldr r1, [sp, #208]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label76
	b label91
label1638:
	ldr r1, [sp, #72]
	ldr r0, [sp, #164]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label77
	b label1605
label93:
	ldr r0, [sp, #84]
	add r0, r0, #1
	str r0, [sp, #84]
	ldr r1, [sp, #76]
	add r2, r1, r0, lsl #12
	str r2, [sp, #92]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label53
	mov r0, #0
	str r0, [sp, #164]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label93
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label77
	ldr r0, [sp, #164]
	add r0, r0, #1
	str r0, [sp, #164]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label93
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label77
	ldr r0, [sp, #164]
	add r0, r0, #1
	str r0, [sp, #164]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label93
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label77
	ldr r0, [sp, #164]
	add r0, r0, #1
	str r0, [sp, #164]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label93
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label77
	ldr r0, [sp, #164]
	add r0, r0, #1
	str r0, [sp, #164]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label93
	b label1572
label53:
	ldr r0, [sp, #80]
	add r0, r0, #1
	cmp r0, #5
	bge label341
	str r0, [sp, #80]
	mov r0, #0
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label162
	ldr r1, [sp, #76]
	add r3, r1, r0, lsl #12
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label33
	mov r2, #0
	add r4, r2, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label24
	b label32
label341:
	mov r0, #0
	str r0, [sp, #52]
	mov r4, r0
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label72
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label58
label1347:
	ldr r1, [sp, #68]
	ldr r0, [sp, #52]
	add r1, r1, r0, lsl #12
	str r1, [sp, #48]
	mov r0, r4
	mov r2, #0
	add r3, r2, #16
	str r3, [sp, #152]
	ldr r1, [sp, #64]
	cmp r3, r1
	bge label64
	b label71
label29:
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label33
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label33
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label33
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label33
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label33
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label33
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label33
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label33
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label33
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label33
	b label1631
label33:
	add r0, r0, #1
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label162
	ldr r1, [sp, #76]
	add r3, r1, r0, lsl #12
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label33
	mov r2, #0
	add r4, r2, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label24
	b label32
label1631:
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label33
	b label1631
label1364:
	ldr r2, [sp, #44]
	ldr r0, [r2, #0]
	str r0, [sp, #28]
	mov r0, #16
	str r0, [sp, #24]
	mov r3, #0
	b label110
label837:
	mov r0, #0
	ldr r2, [sp, #44]
	ldr r2, [r2, #0]
	str r2, [sp, #60]
	add r2, r0, #16
	str r2, [sp, #12]
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label104
	b label103
label104:
	add r2, r0, #16
	str r2, [sp, #16]
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label107
label106:
	ldr r1, [sp, #140]
	add r1, r1, r0, lsl #2
	str r1, [sp, #204]
	ldr r1, [sp, #140]
	ldr r3, [r1, r0, lsl #2]
	ldr r2, [sp, #172]
	add r1, r2, r0, lsl #2
	str r1, [sp, #168]
	ldr r2, [sp, #172]
	ldr r1, [r2, r0, lsl #2]
	ldr r2, [sp, #60]
	mla r2, r2, r1, r3
	ldr r1, [sp, #140]
	str r2, [r1, r0, lsl #2]
	ldr r1, [sp, #204]
	ldr r0, [r1, #4]
	ldr r1, [sp, #168]
	ldr r1, [r1, #4]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #4]
	ldr r1, [sp, #204]
	ldr r0, [r1, #8]
	ldr r1, [sp, #168]
	ldr r1, [r1, #8]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #8]
	ldr r1, [sp, #204]
	ldr r0, [r1, #12]
	ldr r1, [sp, #168]
	ldr r1, [r1, #12]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #12]
	ldr r1, [sp, #204]
	ldr r0, [r1, #16]
	ldr r1, [sp, #168]
	ldr r1, [r1, #16]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #16]
	ldr r1, [sp, #204]
	ldr r0, [r1, #20]
	ldr r1, [sp, #168]
	ldr r1, [r1, #20]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #20]
	ldr r1, [sp, #204]
	ldr r0, [r1, #24]
	ldr r1, [sp, #168]
	ldr r1, [r1, #24]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #24]
	ldr r1, [sp, #204]
	ldr r0, [r1, #28]
	ldr r1, [sp, #168]
	ldr r1, [r1, #28]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #28]
	ldr r1, [sp, #204]
	ldr r0, [r1, #32]
	ldr r1, [sp, #168]
	ldr r1, [r1, #32]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #32]
	ldr r1, [sp, #204]
	ldr r0, [r1, #36]
	ldr r1, [sp, #168]
	ldr r1, [r1, #36]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #36]
	ldr r1, [sp, #204]
	ldr r0, [r1, #40]
	ldr r1, [sp, #168]
	ldr r1, [r1, #40]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #40]
	ldr r1, [sp, #204]
	ldr r0, [r1, #44]
	ldr r1, [sp, #168]
	ldr r1, [r1, #44]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #44]
	ldr r1, [sp, #204]
	ldr r0, [r1, #48]
	ldr r1, [sp, #168]
	ldr r1, [r1, #48]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #48]
	ldr r1, [sp, #204]
	ldr r0, [r1, #52]
	ldr r1, [sp, #168]
	ldr r1, [r1, #52]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #52]
	ldr r1, [sp, #204]
	ldr r0, [r1, #56]
	ldr r1, [sp, #168]
	ldr r1, [r1, #56]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #56]
	ldr r1, [sp, #204]
	ldr r0, [r1, #60]
	ldr r1, [sp, #168]
	ldr r1, [r1, #60]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #60]
	ldr r2, [sp, #16]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #16]
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label107
	b label106
label103:
	ldr r1, [sp, #140]
	add r1, r1, r0, lsl #2
	str r1, [sp, #4]
	ldr r1, [sp, #140]
	ldr r3, [r1, r0, lsl #2]
	ldr r2, [sp, #172]
	add r1, r2, r0, lsl #2
	str r1, [sp, #184]
	ldr r2, [sp, #172]
	ldr r1, [r2, r0, lsl #2]
	ldr r2, [sp, #60]
	mla r2, r2, r1, r3
	ldr r1, [sp, #140]
	str r2, [r1, r0, lsl #2]
	ldr r1, [sp, #4]
	ldr r0, [r1, #4]
	ldr r1, [sp, #184]
	ldr r1, [r1, #4]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #4]
	ldr r1, [sp, #4]
	ldr r0, [r1, #8]
	ldr r1, [sp, #184]
	ldr r1, [r1, #8]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #8]
	ldr r1, [sp, #4]
	ldr r0, [r1, #12]
	ldr r1, [sp, #184]
	ldr r1, [r1, #12]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #12]
	ldr r1, [sp, #4]
	ldr r0, [r1, #16]
	ldr r1, [sp, #184]
	ldr r1, [r1, #16]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #16]
	ldr r1, [sp, #4]
	ldr r0, [r1, #20]
	ldr r1, [sp, #184]
	ldr r1, [r1, #20]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #20]
	ldr r1, [sp, #4]
	ldr r0, [r1, #24]
	ldr r1, [sp, #184]
	ldr r1, [r1, #24]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #24]
	ldr r1, [sp, #4]
	ldr r0, [r1, #28]
	ldr r1, [sp, #184]
	ldr r1, [r1, #28]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #28]
	ldr r1, [sp, #4]
	ldr r0, [r1, #32]
	ldr r1, [sp, #184]
	ldr r1, [r1, #32]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #32]
	ldr r1, [sp, #4]
	ldr r0, [r1, #36]
	ldr r1, [sp, #184]
	ldr r1, [r1, #36]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #36]
	ldr r1, [sp, #4]
	ldr r0, [r1, #40]
	ldr r1, [sp, #184]
	ldr r1, [r1, #40]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #40]
	ldr r1, [sp, #4]
	ldr r0, [r1, #44]
	ldr r1, [sp, #184]
	ldr r1, [r1, #44]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #44]
	ldr r1, [sp, #4]
	ldr r0, [r1, #48]
	ldr r1, [sp, #184]
	ldr r1, [r1, #48]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #48]
	ldr r1, [sp, #4]
	ldr r0, [r1, #52]
	ldr r1, [sp, #184]
	ldr r1, [r1, #52]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #52]
	ldr r1, [sp, #4]
	ldr r0, [r1, #56]
	ldr r1, [sp, #184]
	ldr r1, [r1, #56]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #56]
	ldr r1, [sp, #4]
	ldr r0, [r1, #60]
	ldr r1, [sp, #184]
	ldr r1, [r1, #60]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #60]
	ldr r2, [sp, #12]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #12]
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label104
	b label103
label110:
	ldr r1, [sp, #140]
	add r0, r1, r3, lsl #2
	str r0, [sp, #196]
	ldr r1, [sp, #140]
	ldr r1, [r1, r3, lsl #2]
	ldr r2, [sp, #172]
	add r0, r2, r3, lsl #2
	str r0, [sp, #188]
	ldr r2, [sp, #172]
	ldr r2, [r2, r3, lsl #2]
	ldr r0, [sp, #28]
	mla r0, r2, r0, r1
	ldr r1, [sp, #140]
	str r0, [r1, r3, lsl #2]
	ldr r0, [sp, #196]
	ldr r1, [r0, #4]
	ldr r0, [sp, #188]
	ldr r2, [r0, #4]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #4]
	ldr r0, [sp, #196]
	ldr r1, [r0, #8]
	ldr r0, [sp, #188]
	ldr r2, [r0, #8]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #8]
	ldr r0, [sp, #196]
	ldr r1, [r0, #12]
	ldr r0, [sp, #188]
	ldr r2, [r0, #12]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #12]
	ldr r0, [sp, #196]
	ldr r1, [r0, #16]
	ldr r0, [sp, #188]
	ldr r2, [r0, #16]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #16]
	ldr r0, [sp, #196]
	ldr r1, [r0, #20]
	ldr r0, [sp, #188]
	ldr r2, [r0, #20]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #20]
	ldr r0, [sp, #196]
	ldr r1, [r0, #24]
	ldr r0, [sp, #188]
	ldr r2, [r0, #24]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #24]
	ldr r0, [sp, #196]
	ldr r1, [r0, #28]
	ldr r0, [sp, #188]
	ldr r2, [r0, #28]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #28]
	ldr r0, [sp, #196]
	ldr r1, [r0, #32]
	ldr r0, [sp, #188]
	ldr r2, [r0, #32]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #32]
	ldr r0, [sp, #196]
	ldr r1, [r0, #36]
	ldr r0, [sp, #188]
	ldr r2, [r0, #36]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #36]
	ldr r0, [sp, #196]
	ldr r1, [r0, #40]
	ldr r0, [sp, #188]
	ldr r2, [r0, #40]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #40]
	ldr r0, [sp, #196]
	ldr r1, [r0, #44]
	ldr r0, [sp, #188]
	ldr r2, [r0, #44]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #44]
	ldr r0, [sp, #196]
	ldr r1, [r0, #48]
	ldr r0, [sp, #188]
	ldr r2, [r0, #48]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #48]
	ldr r0, [sp, #196]
	ldr r1, [r0, #52]
	ldr r0, [sp, #188]
	ldr r2, [r0, #52]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #52]
	ldr r0, [sp, #196]
	ldr r1, [r0, #56]
	ldr r0, [sp, #188]
	ldr r2, [r0, #56]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #56]
	ldr r0, [sp, #196]
	ldr r1, [r0, #60]
	ldr r0, [sp, #188]
	ldr r2, [r0, #60]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #60]
	ldr r0, [sp, #24]
	add r2, r0, #16
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label1161
	ldr r0, [sp, #24]
	mov r3, r0
	mov r0, r2
	str r2, [sp, #24]
	b label110
label1161:
	ldr r0, [sp, #24]
	ldr r2, [sp, #44]
	ldr r2, [r2, #0]
	str r2, [sp, #60]
	add r2, r0, #16
	str r2, [sp, #12]
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label104
	b label103
label77:
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label76
	ldr r1, [sp, #68]
	ldr r0, [sp, #164]
	add r1, r1, r0, lsl #12
	str r1, [sp, #208]
	ldr r1, [sp, #64]
	cmp r1, #16
	ble label490
	b label1400
label490:
	mov r0, #0
	ldr r2, [sp, #40]
	ldr r2, [r2, #0]
	str r2, [sp, #56]
	add r2, r0, #16
	str r2, [sp, #8]
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label88
label87:
	ldr r1, [sp, #208]
	add r1, r1, r0, lsl #2
	str r1, [sp, #192]
	ldr r1, [sp, #208]
	ldr r3, [r1, r0, lsl #2]
	ldr r2, [sp, #92]
	add r1, r2, r0, lsl #2
	str r1, [sp, #180]
	ldr r2, [sp, #92]
	ldr r1, [r2, r0, lsl #2]
	ldr r2, [sp, #56]
	mla r2, r2, r1, r3
	ldr r1, [sp, #208]
	str r2, [r1, r0, lsl #2]
	ldr r1, [sp, #192]
	ldr r0, [r1, #4]
	ldr r1, [sp, #180]
	ldr r1, [r1, #4]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #192]
	str r0, [r1, #4]
	ldr r1, [sp, #192]
	ldr r0, [r1, #8]
	ldr r1, [sp, #180]
	ldr r1, [r1, #8]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #192]
	str r0, [r1, #8]
	ldr r1, [sp, #192]
	ldr r0, [r1, #12]
	ldr r1, [sp, #180]
	ldr r1, [r1, #12]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #192]
	str r0, [r1, #12]
	ldr r1, [sp, #192]
	ldr r0, [r1, #16]
	ldr r1, [sp, #180]
	ldr r1, [r1, #16]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #192]
	str r0, [r1, #16]
	ldr r1, [sp, #192]
	ldr r0, [r1, #20]
	ldr r1, [sp, #180]
	ldr r1, [r1, #20]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #192]
	str r0, [r1, #20]
	ldr r1, [sp, #192]
	ldr r0, [r1, #24]
	ldr r1, [sp, #180]
	ldr r1, [r1, #24]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #192]
	str r0, [r1, #24]
	ldr r1, [sp, #192]
	ldr r0, [r1, #28]
	ldr r1, [sp, #180]
	ldr r1, [r1, #28]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #192]
	str r0, [r1, #28]
	ldr r1, [sp, #192]
	ldr r0, [r1, #32]
	ldr r1, [sp, #180]
	ldr r1, [r1, #32]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #192]
	str r0, [r1, #32]
	ldr r1, [sp, #192]
	ldr r0, [r1, #36]
	ldr r1, [sp, #180]
	ldr r1, [r1, #36]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #192]
	str r0, [r1, #36]
	ldr r1, [sp, #192]
	ldr r0, [r1, #40]
	ldr r1, [sp, #180]
	ldr r1, [r1, #40]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #192]
	str r0, [r1, #40]
	ldr r1, [sp, #192]
	ldr r0, [r1, #44]
	ldr r1, [sp, #180]
	ldr r1, [r1, #44]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #192]
	str r0, [r1, #44]
	ldr r1, [sp, #192]
	ldr r0, [r1, #48]
	ldr r1, [sp, #180]
	ldr r1, [r1, #48]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #192]
	str r0, [r1, #48]
	ldr r1, [sp, #192]
	ldr r0, [r1, #52]
	ldr r1, [sp, #180]
	ldr r1, [r1, #52]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #192]
	str r0, [r1, #52]
	ldr r1, [sp, #192]
	ldr r0, [r1, #56]
	ldr r1, [sp, #180]
	ldr r1, [r1, #56]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #192]
	str r0, [r1, #56]
	ldr r1, [sp, #192]
	ldr r0, [r1, #60]
	ldr r1, [sp, #180]
	ldr r1, [r1, #60]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #192]
	str r0, [r1, #60]
	ldr r2, [sp, #8]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #8]
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label88
	b label87
label80:
	ldr r1, [sp, #208]
	add r0, r1, r3, lsl #2
	str r0, [sp, #200]
	ldr r1, [sp, #208]
	ldr r1, [r1, r3, lsl #2]
	ldr r2, [sp, #92]
	add r0, r2, r3, lsl #2
	str r0, [sp, #160]
	ldr r2, [sp, #92]
	ldr r2, [r2, r3, lsl #2]
	ldr r0, [sp, #32]
	mla r0, r2, r0, r1
	ldr r1, [sp, #208]
	str r0, [r1, r3, lsl #2]
	ldr r0, [sp, #200]
	ldr r1, [r0, #4]
	ldr r0, [sp, #160]
	ldr r2, [r0, #4]
	ldr r0, [sp, #32]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #4]
	ldr r0, [sp, #200]
	ldr r1, [r0, #8]
	ldr r0, [sp, #160]
	ldr r2, [r0, #8]
	ldr r0, [sp, #32]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #8]
	ldr r0, [sp, #200]
	ldr r1, [r0, #12]
	ldr r0, [sp, #160]
	ldr r2, [r0, #12]
	ldr r0, [sp, #32]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #12]
	ldr r0, [sp, #200]
	ldr r1, [r0, #16]
	ldr r0, [sp, #160]
	ldr r2, [r0, #16]
	ldr r0, [sp, #32]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #16]
	ldr r0, [sp, #200]
	ldr r1, [r0, #20]
	ldr r0, [sp, #160]
	ldr r2, [r0, #20]
	ldr r0, [sp, #32]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #20]
	ldr r0, [sp, #200]
	ldr r1, [r0, #24]
	ldr r0, [sp, #160]
	ldr r2, [r0, #24]
	ldr r0, [sp, #32]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #24]
	ldr r0, [sp, #200]
	ldr r1, [r0, #28]
	ldr r0, [sp, #160]
	ldr r2, [r0, #28]
	ldr r0, [sp, #32]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #28]
	ldr r0, [sp, #200]
	ldr r1, [r0, #32]
	ldr r0, [sp, #160]
	ldr r2, [r0, #32]
	ldr r0, [sp, #32]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #32]
	ldr r0, [sp, #200]
	ldr r1, [r0, #36]
	ldr r0, [sp, #160]
	ldr r2, [r0, #36]
	ldr r0, [sp, #32]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #36]
	ldr r0, [sp, #200]
	ldr r1, [r0, #40]
	ldr r0, [sp, #160]
	ldr r2, [r0, #40]
	ldr r0, [sp, #32]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #40]
	ldr r0, [sp, #200]
	ldr r1, [r0, #44]
	ldr r0, [sp, #160]
	ldr r2, [r0, #44]
	ldr r0, [sp, #32]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #44]
	ldr r0, [sp, #200]
	ldr r1, [r0, #48]
	ldr r0, [sp, #160]
	ldr r2, [r0, #48]
	ldr r0, [sp, #32]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #48]
	ldr r0, [sp, #200]
	ldr r1, [r0, #52]
	ldr r0, [sp, #160]
	ldr r2, [r0, #52]
	ldr r0, [sp, #32]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #52]
	ldr r0, [sp, #200]
	ldr r1, [r0, #56]
	ldr r0, [sp, #160]
	ldr r2, [r0, #56]
	ldr r0, [sp, #32]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #56]
	ldr r0, [sp, #200]
	ldr r1, [r0, #60]
	ldr r0, [sp, #160]
	ldr r2, [r0, #60]
	ldr r0, [sp, #32]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #60]
	ldr r0, [sp, #36]
	add r2, r0, #16
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label594
	ldr r0, [sp, #36]
	mov r3, r0
	mov r0, r2
	str r2, [sp, #36]
	b label80
label594:
	ldr r0, [sp, #36]
	ldr r2, [sp, #40]
	ldr r2, [r2, #0]
	str r2, [sp, #56]
	add r2, r0, #16
	str r2, [sp, #8]
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label88
	b label87
label88:
	add r2, r0, #16
	str r2, [sp, #20]
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label91
label90:
	ldr r1, [sp, #208]
	add r1, r1, r0, lsl #2
	str r1, [sp, #0]
	ldr r1, [sp, #208]
	ldr r3, [r1, r0, lsl #2]
	ldr r2, [sp, #92]
	add r1, r2, r0, lsl #2
	str r1, [sp, #176]
	ldr r2, [sp, #92]
	ldr r1, [r2, r0, lsl #2]
	ldr r2, [sp, #56]
	mla r2, r2, r1, r3
	ldr r1, [sp, #208]
	str r2, [r1, r0, lsl #2]
	ldr r1, [sp, #0]
	ldr r0, [r1, #4]
	ldr r1, [sp, #176]
	ldr r1, [r1, #4]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #4]
	ldr r1, [sp, #0]
	ldr r0, [r1, #8]
	ldr r1, [sp, #176]
	ldr r1, [r1, #8]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #8]
	ldr r1, [sp, #0]
	ldr r0, [r1, #12]
	ldr r1, [sp, #176]
	ldr r1, [r1, #12]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #12]
	ldr r1, [sp, #0]
	ldr r0, [r1, #16]
	ldr r1, [sp, #176]
	ldr r1, [r1, #16]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #16]
	ldr r1, [sp, #0]
	ldr r0, [r1, #20]
	ldr r1, [sp, #176]
	ldr r1, [r1, #20]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [r1, #24]
	ldr r1, [sp, #176]
	ldr r1, [r1, #24]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [r1, #28]
	ldr r1, [sp, #176]
	ldr r1, [r1, #28]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r1, #32]
	ldr r1, [sp, #176]
	ldr r1, [r1, #32]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #32]
	ldr r1, [sp, #0]
	ldr r0, [r1, #36]
	ldr r1, [sp, #176]
	ldr r1, [r1, #36]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #36]
	ldr r1, [sp, #0]
	ldr r0, [r1, #40]
	ldr r1, [sp, #176]
	ldr r1, [r1, #40]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #40]
	ldr r1, [sp, #0]
	ldr r0, [r1, #44]
	ldr r1, [sp, #176]
	ldr r1, [r1, #44]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #44]
	ldr r1, [sp, #0]
	ldr r0, [r1, #48]
	ldr r1, [sp, #176]
	ldr r1, [r1, #48]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #48]
	ldr r1, [sp, #0]
	ldr r0, [r1, #52]
	ldr r1, [sp, #176]
	ldr r1, [r1, #52]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #52]
	ldr r1, [sp, #0]
	ldr r0, [r1, #56]
	ldr r1, [sp, #176]
	ldr r1, [r1, #56]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #56]
	ldr r1, [sp, #0]
	ldr r0, [r1, #60]
	ldr r1, [sp, #176]
	ldr r1, [r1, #60]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #60]
	ldr r2, [sp, #20]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #20]
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label91
	b label90
label1400:
	ldr r2, [sp, #40]
	ldr r0, [r2, #0]
	str r0, [sp, #32]
	mov r0, #16
	str r0, [sp, #36]
	mov r3, #0
	b label80
label1619:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label8
label1557:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label8
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label8
label1623:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label8
	b label1623
label1562:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label15
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label15
label1628:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label15
	b label1628
label8:
	add r4, r4, #1
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label126
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label8
	ldr r1, [sp, #72]
	add r6, r1, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label8
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label8
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label8
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label8
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label8
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label8
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label8
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label8
	b label1557
label15:
	add r4, r4, #1
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label16
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label15
	ldr r1, [sp, #68]
	add r6, r1, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label15
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label15
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label15
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label15
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label15
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label15
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label15
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label15
	b label1562
label42:
	add r4, r2, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label44
	b label49
label44:
	add r4, r2, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label47
label46:
	add r1, r3, r2, lsl #2
	mov r5, #0
	str r5, [r3, r2, lsl #2]
	str r5, [r1, #4]
	str r5, [r1, #8]
	str r5, [r1, #12]
	str r5, [r1, #16]
	str r5, [r1, #20]
	str r5, [r1, #24]
	str r5, [r1, #28]
	str r5, [r1, #32]
	str r5, [r1, #36]
	str r5, [r1, #40]
	str r5, [r1, #44]
	str r5, [r1, #48]
	str r5, [r1, #52]
	str r5, [r1, #56]
	str r5, [r1, #60]
	mov r2, r4
	add r4, r4, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label47
	b label46
label47:
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label39
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label39
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label39
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label39
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label39
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label39
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label39
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label39
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label39
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label39
label1635:
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label39
	b label1635
label24:
	add r4, r2, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label27
label26:
	add r1, r3, r2, lsl #2
	mov r5, #0
	str r5, [r3, r2, lsl #2]
	str r5, [r1, #4]
	str r5, [r1, #8]
	str r5, [r1, #12]
	str r5, [r1, #16]
	str r5, [r1, #20]
	str r5, [r1, #24]
	str r5, [r1, #28]
	str r5, [r1, #32]
	str r5, [r1, #36]
	str r5, [r1, #40]
	str r5, [r1, #44]
	str r5, [r1, #48]
	str r5, [r1, #52]
	str r5, [r1, #56]
	str r5, [r1, #60]
	mov r2, r4
	add r4, r4, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label27
	b label26
label27:
	add r4, r2, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label29
label31:
	add r1, r3, r2, lsl #2
	mov r5, #0
	str r5, [r3, r2, lsl #2]
	str r5, [r1, #4]
	str r5, [r1, #8]
	str r5, [r1, #12]
	str r5, [r1, #16]
	str r5, [r1, #20]
	str r5, [r1, #24]
	str r5, [r1, #28]
	str r5, [r1, #32]
	str r5, [r1, #36]
	str r5, [r1, #40]
	str r5, [r1, #44]
	str r5, [r1, #48]
	str r5, [r1, #52]
	str r5, [r1, #56]
	str r5, [r1, #60]
	mov r2, r4
	add r4, r4, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label29
	b label31
label50:
	add r1, r3, r2, lsl #2
	mov r5, #0
	str r5, [r3, r2, lsl #2]
	str r5, [r1, #4]
	str r5, [r1, #8]
	str r5, [r1, #12]
	str r5, [r1, #16]
	str r5, [r1, #20]
	str r5, [r1, #24]
	str r5, [r1, #28]
	str r5, [r1, #32]
	str r5, [r1, #36]
	str r5, [r1, #40]
	str r5, [r1, #44]
	str r5, [r1, #48]
	str r5, [r1, #52]
	str r5, [r1, #56]
	str r5, [r1, #60]
	mov r2, r4
	add r4, r4, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label42
	b label50
label39:
	add r0, r0, #1
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label251
	ldr r1, [sp, #68]
	add r3, r1, r0, lsl #12
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label39
	mov r2, #0
	add r4, r2, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label42
	b label50
label49:
	add r1, r3, r2, lsl #2
	mov r5, #0
	str r5, [r3, r2, lsl #2]
	str r5, [r1, #4]
	str r5, [r1, #8]
	str r5, [r1, #12]
	str r5, [r1, #16]
	str r5, [r1, #20]
	str r5, [r1, #24]
	str r5, [r1, #28]
	str r5, [r1, #32]
	str r5, [r1, #36]
	str r5, [r1, #40]
	str r5, [r1, #44]
	str r5, [r1, #48]
	str r5, [r1, #52]
	str r5, [r1, #56]
	str r5, [r1, #60]
	mov r2, r4
	add r4, r4, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label44
	b label49
label32:
	add r1, r3, r2, lsl #2
	mov r5, #0
	str r5, [r3, r2, lsl #2]
	str r5, [r1, #4]
	str r5, [r1, #8]
	str r5, [r1, #12]
	str r5, [r1, #16]
	str r5, [r1, #20]
	str r5, [r1, #24]
	str r5, [r1, #28]
	str r5, [r1, #32]
	str r5, [r1, #36]
	str r5, [r1, #40]
	str r5, [r1, #44]
	str r5, [r1, #48]
	str r5, [r1, #52]
	str r5, [r1, #56]
	str r5, [r1, #60]
	mov r2, r4
	add r4, r4, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label24
	b label32
label64:
	add r3, r2, #16
	str r3, [sp, #136]
	ldr r1, [sp, #64]
	cmp r3, r1
	bge label67
label70:
	ldr r1, [sp, #48]
	add r5, r1, r2, lsl #2
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	ldr r10, [r5, #4]
	ldr r9, [r5, #8]
	ldr r7, [r5, #12]
	ldr r6, [r5, #16]
	ldr r3, [r5, #20]
	ldr r2, [r5, #24]
	ldr r8, [r5, #28]
	ldr r4, [r5, #32]
	ldr r11, [r5, #36]
	str r11, [sp, #148]
	ldr r11, [r5, #40]
	str r11, [sp, #128]
	ldr r11, [r5, #44]
	str r11, [sp, #124]
	ldr r11, [r5, #48]
	str r11, [sp, #112]
	ldr r11, [r5, #52]
	str r11, [sp, #104]
	ldr r11, [r5, #56]
	str r11, [sp, #96]
	ldr r5, [r5, #60]
	add r0, r0, r1
	add r0, r0, r10
	add r0, r0, r9
	add r0, r0, r7
	add r0, r0, r6
	add r0, r0, r3
	add r0, r0, r2
	add r0, r0, r8
	add r0, r0, r4
	ldr r11, [sp, #148]
	add r0, r0, r11
	ldr r11, [sp, #128]
	add r0, r0, r11
	ldr r11, [sp, #124]
	add r0, r0, r11
	ldr r11, [sp, #112]
	add r0, r0, r11
	ldr r11, [sp, #104]
	add r0, r0, r11
	ldr r11, [sp, #96]
	add r0, r0, r11
	add r0, r0, r5
	ldr r3, [sp, #136]
	mov r2, r3
	add r3, r3, #16
	str r3, [sp, #136]
	ldr r1, [sp, #64]
	cmp r3, r1
	bge label67
	b label70
label67:
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, r1
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label370
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, r1
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label370
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, r1
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label370
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, r1
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label370
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, r1
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label370
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, r1
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label370
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, r1
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label370
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, r1
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label370
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, r1
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label370
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, r1
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label370
	b label1637
label370:
	mov r4, r0
	ldr r0, [sp, #52]
	add r0, r0, #1
	str r0, [sp, #52]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label72
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label58
	b label1347
label1637:
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, r1
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label370
	b label1637
label71:
	ldr r1, [sp, #48]
	add r8, r1, r2, lsl #2
	ldr r1, [sp, #48]
	ldr r7, [r1, r2, lsl #2]
	ldr r5, [r8, #4]
	ldr r1, [r8, #8]
	ldr r10, [r8, #12]
	ldr r3, [r8, #16]
	ldr r9, [r8, #20]
	ldr r4, [r8, #24]
	ldr r6, [r8, #28]
	ldr r2, [r8, #32]
	ldr r11, [r8, #36]
	str r11, [sp, #144]
	ldr r11, [r8, #40]
	str r11, [sp, #132]
	ldr r11, [r8, #44]
	str r11, [sp, #120]
	ldr r11, [r8, #48]
	str r11, [sp, #116]
	ldr r11, [r8, #52]
	str r11, [sp, #108]
	ldr r11, [r8, #56]
	str r11, [sp, #100]
	ldr r8, [r8, #60]
	add r0, r0, r7
	add r0, r0, r5
	add r0, r0, r1
	add r0, r0, r10
	add r0, r0, r3
	add r0, r0, r9
	add r0, r0, r4
	add r0, r0, r6
	add r0, r0, r2
	ldr r11, [sp, #144]
	add r0, r0, r11
	ldr r11, [sp, #132]
	add r0, r0, r11
	ldr r11, [sp, #120]
	add r0, r0, r11
	ldr r11, [sp, #116]
	add r0, r0, r11
	ldr r11, [sp, #108]
	add r0, r0, r11
	ldr r11, [sp, #100]
	add r0, r0, r11
	add r0, r0, r8
	ldr r3, [sp, #152]
	mov r2, r3
	add r3, r3, #16
	str r3, [sp, #152]
	ldr r1, [sp, #64]
	cmp r3, r1
	bge label64
	b label71
label58:
	ldr r0, [sp, #52]
	add r0, r0, #1
	str r0, [sp, #52]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label72
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label58
	b label1347
label72:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #220
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
