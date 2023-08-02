.arch armv7ve
.data
.bss
.align 8
count:
	.zero	4000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
QuickSort:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r5, r2
	mov r3, r0
	sub sp, sp, #20
	str r0, [sp, #8]
	mov r0, r1
	str r2, [sp, #12]
label2:
	ldr r5, [sp, #12]
	cmp r5, r0
	ble label4
	ldr r3, [sp, #8]
	mov r6, r0
	ldr r1, [r3, r0, lsl #2]
	str r0, [sp, #4]
	sub r2, r1, #1
label6:
	ldr r6, [sp, #4]
	cmp r5, r6
	bgt label76
label9:
	ldr r3, [sp, #8]
	ldr r6, [sp, #4]
	str r1, [r3, r6, lsl #2]
	sub r6, r6, #1
	str r6, [sp, #0]
label10:
	ldr r6, [sp, #0]
	cmp r6, r0
	bgt label13
	ldr r6, [sp, #4]
	add r0, r6, #1
	b label2
.p2align 4
label76:
	ldr r3, [sp, #8]
	add r4, r3, r5, lsl #2
	ldr r6, [sp, #4]
	cmp r6, r5
	blt label81
	add r3, r3, r6, lsl #2
	cmp r5, r6
	bgt label87
	b label324
.p2align 4
label81:
	ldr r7, [r4, #0]
	cmp r2, r7
	bge label263
	sub r5, r5, #1
	sub r4, r4, #4
	ldr r6, [sp, #4]
	cmp r6, r5
	blt label81
	ldr r3, [sp, #8]
	add r3, r3, r6, lsl #2
	cmp r5, r6
	ble label338
.p2align 4
label87:
	ldr r7, [r3, #0]
	cmp r1, r7
	ble label279
	add r6, r6, #1
	add r3, r3, #4
	cmp r5, r6
	bgt label87
	str r6, [sp, #4]
	b label9
label4:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label13:
	ldr r3, [sp, #8]
	mov r4, r0
	ldr r1, [r3, r0, lsl #2]
	ldr r6, [sp, #0]
	sub r2, r1, #1
label14:
	cmp r6, r4
	bgt label62
label17:
	ldr r3, [sp, #8]
	sub r5, r4, #1
	str r1, [r3, r4, lsl #2]
label18:
	cmp r5, r0
	bgt label21
	add r0, r4, #1
	b label10
.p2align 4
label62:
	ldr r3, [sp, #8]
	add r5, r3, r6, lsl #2
	cmp r4, r6
	blt label66
	add r3, r3, r4, lsl #2
	cmp r6, r4
	bgt label73
	b label334
.p2align 4
label66:
	ldr r7, [r5, #0]
	cmp r2, r7
	bge label67
	sub r6, r6, #1
	sub r5, r5, #4
	cmp r4, r6
	blt label66
	ldr r3, [sp, #8]
	add r3, r3, r4, lsl #2
	cmp r6, r4
	ble label335
.p2align 4
label73:
	ldr r7, [r3, #0]
	cmp r1, r7
	ble label74
	add r4, r4, #1
	add r3, r3, #4
	cmp r6, r4
	bgt label73
	b label17
label21:
	ldr r3, [sp, #8]
	mov r8, r5
	mov r6, r0
	ldr r1, [r3, r0, lsl #2]
	sub r2, r1, #1
label22:
	cmp r8, r6
	bgt label48
label25:
	ldr r3, [sp, #8]
	sub r7, r6, #1
	str r1, [r3, r6, lsl #2]
	mov r1, r0
	b label26
.p2align 4
label48:
	ldr r3, [sp, #8]
	add r7, r3, r8, lsl #2
	cmp r6, r8
	bge label192
.p2align 4
label52:
	ldr r9, [r7, #0]
	cmp r2, r9
	blt label53
	ldr r3, [sp, #8]
	str r9, [r3, r6, lsl #2]
	add r6, r6, #1
	add r3, r3, r6, lsl #2
	b label55
.p2align 4
label53:
	sub r8, r8, #1
	sub r7, r7, #4
	cmp r6, r8
	blt label52
	ldr r3, [sp, #8]
	add r3, r3, r6, lsl #2
	cmp r8, r6
	bgt label58
	b label332
label55:
	cmp r8, r6
	ble label208
.p2align 4
label58:
	ldr r9, [r3, #0]
	cmp r1, r9
	ble label59
	add r6, r6, #1
	add r3, r3, #4
	cmp r8, r6
	bgt label58
	b label25
label26:
	cmp r7, r1
	bgt label28
	b label141
.p2align 4
label32:
	ldr r3, [sp, #8]
	add r9, r3, r10, lsl #2
	cmp r8, r10
	blt label36
	add r3, r3, r8, lsl #2
	cmp r10, r8
	bgt label42
	b label328
.p2align 4
label36:
	ldr r11, [r9, #0]
	cmp r2, r11
	bge label37
	sub r10, r10, #1
	sub r9, r9, #4
	cmp r8, r10
	blt label36
	ldr r3, [sp, #8]
	add r3, r3, r8, lsl #2
	cmp r10, r8
	ble label329
.p2align 4
label42:
	ldr r11, [r3, #0]
	cmp r0, r11
	ble label176
	add r8, r8, #1
	add r3, r3, #4
	cmp r10, r8
	bgt label42
label46:
	ldr r3, [sp, #8]
	sub r2, r8, #1
	str r0, [r3, r8, lsl #2]
	mov r0, r3
	bl QuickSort
	add r1, r8, #1
	b label26
.p2align 4
label192:
	ldr r3, [sp, #8]
	add r3, r3, r6, lsl #2
	cmp r8, r6
	bgt label58
	b label25
label28:
	ldr r3, [sp, #8]
	mov r10, r7
	mov r8, r1
	ldr r0, [r3, r1, lsl #2]
	sub r2, r0, #1
label29:
	cmp r10, r8
	bgt label32
	b label46
label37:
	ldr r3, [sp, #8]
	str r11, [r3, r8, lsl #2]
	add r8, r8, #1
	add r3, r3, r8, lsl #2
	cmp r10, r8
	bgt label42
	b label46
label263:
	ldr r3, [sp, #8]
	ldr r6, [sp, #4]
	str r7, [r3, r6, lsl #2]
	add r6, r6, #1
	add r3, r3, r6, lsl #2
	cmp r5, r6
	bgt label87
	str r6, [sp, #4]
	b label9
label74:
	str r7, [r5, #0]
	sub r6, r6, #1
	b label14
label67:
	ldr r3, [sp, #8]
	str r7, [r3, r4, lsl #2]
	add r4, r4, #1
	add r3, r3, r4, lsl #2
	cmp r6, r4
	bgt label73
	b label17
label59:
	str r9, [r7, #0]
	sub r8, r8, #1
	b label22
.p2align 4
label328:
	cmp r10, r8
	bgt label32
	b label46
.p2align 4
label324:
	str r6, [sp, #4]
	cmp r5, r6
	bgt label76
	b label9
.p2align 4
label334:
	cmp r6, r4
	bgt label62
	b label17
.p2align 4
label329:
	cmp r10, r8
	bgt label32
	b label46
.p2align 4
label338:
	str r6, [sp, #4]
	cmp r5, r6
	bgt label76
	b label9
.p2align 4
label335:
	cmp r6, r4
	bgt label62
	b label17
.p2align 4
label332:
	cmp r8, r6
	bgt label48
	b label25
label208:
	cmp r8, r6
	bgt label48
	b label25
label141:
	add r0, r6, #1
	b label18
label176:
	str r11, [r9, #0]
	sub r10, r10, #1
	b label29
label279:
	str r7, [r4, #0]
	sub r5, r5, #1
	str r6, [sp, #4]
	b label6
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r9, #28
	mov r7, #27
	mov r11, #5
	mov r2, #23
	mov r6, #254
	mov r3, #89
	sub sp, sp, #260
	mov r0, #7
	mov r4, #26
	movw r5, #282
	str r0, [sp, #0]
	mov r1, #1
	movw r10, #290
	str r2, [sp, #4]
	mov r8, #39
	str r3, [sp, #8]
	str r4, [sp, #12]
	str r5, [sp, #16]
	str r6, [sp, #20]
	str r7, [sp, #24]
	str r11, [sp, #28]
	mov r11, #83
	str r11, [sp, #32]
	movw r11, #273
	str r11, [sp, #36]
	movw r11, #574
	str r11, [sp, #40]
	movw r11, #905
	str r11, [sp, #44]
	movw r11, #354
	str r11, [sp, #48]
	movw r11, #657
	str r11, [sp, #52]
	movw r11, #935
	str r11, [sp, #56]
	mov r11, #264
	str r11, [sp, #60]
	movw r11, #639
	str r11, [sp, #64]
	movw r11, #459
	str r11, [sp, #68]
	mov r11, #29
	str r11, [sp, #72]
	mov r11, #68
	str r11, [sp, #76]
	movw r11, #929
	str r11, [sp, #80]
	mov r11, #756
	str r11, [sp, #84]
	mov r11, #452
	str r11, [sp, #88]
	movw r11, #279
	str r11, [sp, #92]
	mov r11, #58
	str r11, [sp, #96]
	mov r11, #87
	str r11, [sp, #100]
	mov r11, #96
	str r11, [sp, #104]
	mov r11, #36
	str r11, [sp, #108]
	mov r11, #5
	str r8, [sp, #112]
	str r9, [sp, #116]
	str r1, [sp, #120]
	str r10, [sp, #124]
	str r0, [sp, #128]
	str r2, [sp, #132]
	str r3, [sp, #136]
	str r4, [sp, #140]
	add r4, sp, #128
	str r5, [sp, #144]
	mov r5, #0
	str r6, [sp, #148]
	str r7, [sp, #152]
	str r11, [sp, #156]
	mov r11, #83
	str r11, [sp, #160]
	movw r11, #273
	str r11, [sp, #164]
	movw r11, #574
	str r11, [sp, #168]
	movw r11, #905
	str r11, [sp, #172]
	movw r11, #354
	str r11, [sp, #176]
	movw r11, #657
	str r11, [sp, #180]
	movw r11, #935
	str r11, [sp, #184]
	mov r11, #264
	str r11, [sp, #188]
	movw r11, #639
	str r11, [sp, #192]
	movw r11, #459
	str r11, [sp, #196]
	mov r11, #29
	str r11, [sp, #200]
	mov r11, #68
	str r11, [sp, #204]
	movw r11, #929
	str r11, [sp, #208]
	mov r11, #756
	str r11, [sp, #212]
	mov r11, #452
	str r11, [sp, #216]
	movw r11, #279
	str r11, [sp, #220]
	mov r11, #58
	str r11, [sp, #224]
	mov r11, #87
	str r11, [sp, #228]
	mov r11, #96
	str r11, [sp, #232]
	mov r11, #36
	str r11, [sp, #236]
	str r8, [sp, #240]
	str r9, [sp, #244]
	str r1, [sp, #248]
	str r10, [sp, #252]
.p2align 4
label366:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label529
	add r4, r4, #4
	mov r5, r0
	b label366
label529:
	mov r2, #0
	rsb r0, r2, #32
	cmp r2, #31
	sub r0, r0, #1
	bge label371
.p2align 4
label449:
	add r4, sp, #128
	mov r3, #0
	mov r1, r4
	cmp r0, r3
	ble label1517
.p2align 4
label453:
	ldr r4, [r1, #0]
	add r3, r3, #1
	ldr r5, [r1, #4]
	cmp r4, r5
	bgt label454
	add r1, r1, #4
	cmp r0, r3
	bgt label453
	b label1767
.p2align 4
label454:
	add r6, r1, #4
	str r4, [r1, #4]
	str r5, [r1, #0]
	mov r1, r6
	cmp r0, r3
	bgt label453
	add r2, r2, #1
	rsb r0, r2, #32
	cmp r2, #31
	sub r0, r0, #1
	blt label449
label371:
	add r4, sp, #128
	mov r5, #0
	b label372
.p2align 4
label1767:
	add r2, r2, #1
	rsb r0, r2, #32
	cmp r2, #31
	sub r0, r0, #1
	blt label449
	b label371
.p2align 4
label372:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label376
	add r4, r4, #4
	mov r5, r0
	b label372
label376:
	ldr r0, [sp, #192]
	ldr r1, [sp, #188]
	add r0, r0, r1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	bl putint
	mov r2, #0
	movw r0, #:lower16:count
	movt r0, #:upper16:count
.p2align 4
label377:
	mov r1, #0
	add r2, r2, #64
	str r1, [r0, #0]
	cmp r2, #960
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #12]
	str r1, [r0, #16]
	str r1, [r0, #20]
	str r1, [r0, #24]
	str r1, [r0, #28]
	str r1, [r0, #32]
	str r1, [r0, #36]
	str r1, [r0, #40]
	str r1, [r0, #44]
	str r1, [r0, #48]
	str r1, [r0, #52]
	str r1, [r0, #56]
	str r1, [r0, #60]
	str r1, [r0, #64]
	str r1, [r0, #68]
	str r1, [r0, #72]
	str r1, [r0, #76]
	str r1, [r0, #80]
	str r1, [r0, #84]
	str r1, [r0, #88]
	str r1, [r0, #92]
	str r1, [r0, #96]
	str r1, [r0, #100]
	str r1, [r0, #104]
	str r1, [r0, #108]
	str r1, [r0, #112]
	str r1, [r0, #116]
	str r1, [r0, #120]
	str r1, [r0, #124]
	str r1, [r0, #128]
	str r1, [r0, #132]
	str r1, [r0, #136]
	str r1, [r0, #140]
	str r1, [r0, #144]
	str r1, [r0, #148]
	str r1, [r0, #152]
	str r1, [r0, #156]
	str r1, [r0, #160]
	str r1, [r0, #164]
	str r1, [r0, #168]
	str r1, [r0, #172]
	str r1, [r0, #176]
	str r1, [r0, #180]
	str r1, [r0, #184]
	str r1, [r0, #188]
	str r1, [r0, #192]
	str r1, [r0, #196]
	str r1, [r0, #200]
	str r1, [r0, #204]
	str r1, [r0, #208]
	str r1, [r0, #212]
	str r1, [r0, #216]
	str r1, [r0, #220]
	str r1, [r0, #224]
	str r1, [r0, #228]
	str r1, [r0, #232]
	str r1, [r0, #236]
	str r1, [r0, #240]
	str r1, [r0, #244]
	str r1, [r0, #248]
	str r1, [r0, #252]
	bge label380
	add r0, r0, #256
	b label377
label380:
	movw r0, #:lower16:count
	movt r0, #:upper16:count
	mov r4, #0
	add r1, r0, r2, lsl #2
	str r4, [r1, #0]
	str r4, [r1, #4]
	str r4, [r1, #8]
	str r4, [r1, #12]
	str r4, [r1, #16]
	str r4, [r1, #20]
	str r4, [r1, #24]
	str r4, [r1, #28]
	str r4, [r1, #32]
	str r4, [r1, #36]
	str r4, [r1, #40]
	str r4, [r1, #44]
	str r4, [r1, #48]
	str r4, [r1, #52]
	str r4, [r1, #56]
	str r4, [r1, #60]
	str r4, [r1, #64]
	str r4, [r1, #68]
	str r4, [r1, #72]
	str r4, [r1, #76]
	str r4, [r1, #80]
	str r4, [r1, #84]
	str r4, [r1, #88]
	str r4, [r1, #92]
	str r4, [r1, #96]
	str r4, [r1, #100]
	str r4, [r1, #104]
	str r4, [r1, #108]
	str r4, [r1, #112]
	str r4, [r1, #116]
	str r4, [r1, #120]
	str r4, [r1, #124]
	str r4, [r1, #128]
	str r4, [r1, #132]
	str r4, [r1, #136]
	str r4, [r1, #140]
	str r4, [r1, #144]
	str r4, [r1, #148]
	str r4, [r1, #152]
	str r4, [r1, #156]
	ldr r1, [sp, #128]
	add r2, r0, r1, lsl #2
	ldr r3, [r2, #0]
	adds r3, r3, #1
	str r3, [r2, #0]
	ldr r7, [sp, #132]
	bic r3, r3, r3, asr #31
	add r5, r0, r7, lsl #2
	ldr r2, [r5, #0]
	add r6, r2, #1
	str r6, [r5, #0]
	mov r2, #0
	movgt r2, r1
	mov r1, r3
	cmp r3, r6
	movle r1, r6
	movlt r2, r7
	ldr r6, [sp, #136]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #140]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #144]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #148]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #152]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #156]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #160]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #164]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #168]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #172]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #176]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #180]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #184]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #188]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #192]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #196]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #200]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #204]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #208]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #212]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #216]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #220]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #224]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #228]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #232]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #236]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #240]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #244]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	movle r1, r5
	movlt r2, r6
	ldr r6, [sp, #248]
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	add r5, r5, #1
	str r5, [r3, #0]
	cmp r1, r5
	ldr r3, [sp, #252]
	movle r1, r5
	movlt r2, r6
	add r5, r0, r3, lsl #2
	ldr r0, [r5, #0]
	add r6, r0, #1
	str r6, [r5, #0]
	mov r0, r2
	cmp r1, r6
	movlt r0, r3
	bl putint
	mov r2, r4
	ldr r0, [sp, #0]
	str r0, [sp, #128]
	ldr r0, [sp, #4]
	str r0, [sp, #132]
	ldr r0, [sp, #8]
	str r0, [sp, #136]
	ldr r0, [sp, #12]
	str r0, [sp, #140]
	ldr r0, [sp, #16]
	str r0, [sp, #144]
	ldr r0, [sp, #20]
	str r0, [sp, #148]
	ldr r0, [sp, #24]
	str r0, [sp, #152]
	ldr r0, [sp, #28]
	str r0, [sp, #156]
	ldr r0, [sp, #32]
	str r0, [sp, #160]
	ldr r0, [sp, #36]
	str r0, [sp, #164]
	ldr r0, [sp, #40]
	str r0, [sp, #168]
	ldr r0, [sp, #44]
	str r0, [sp, #172]
	ldr r0, [sp, #48]
	str r0, [sp, #176]
	ldr r0, [sp, #52]
	str r0, [sp, #180]
	ldr r0, [sp, #56]
	str r0, [sp, #184]
	ldr r0, [sp, #60]
	str r0, [sp, #188]
	ldr r0, [sp, #64]
	str r0, [sp, #192]
	ldr r0, [sp, #68]
	str r0, [sp, #196]
	ldr r0, [sp, #72]
	str r0, [sp, #200]
	ldr r0, [sp, #76]
	str r0, [sp, #204]
	ldr r0, [sp, #80]
	str r0, [sp, #208]
	ldr r0, [sp, #84]
	str r0, [sp, #212]
	ldr r0, [sp, #88]
	str r0, [sp, #216]
	ldr r0, [sp, #92]
	str r0, [sp, #220]
	ldr r0, [sp, #96]
	str r0, [sp, #224]
	ldr r0, [sp, #100]
	str r0, [sp, #228]
	ldr r0, [sp, #104]
	str r0, [sp, #232]
	ldr r0, [sp, #108]
	str r0, [sp, #236]
	ldr r0, [sp, #112]
	str r0, [sp, #240]
	ldr r0, [sp, #116]
	str r0, [sp, #244]
	ldr r0, [sp, #120]
	str r0, [sp, #248]
	ldr r0, [sp, #124]
	str r0, [sp, #252]
	rsb r0, r4, #32
	cmp r4, #31
	sub r0, r0, #1
	blt label383
label1012:
	add r4, sp, #128
	mov r5, #0
	b label392
.p2align 4
label383:
	add r4, sp, #128
	mov r3, #0
	mov r1, r4
	cmp r0, r3
	ble label1016
.p2align 4
label387:
	ldr r4, [r1, #0]
	add r3, r3, #1
	ldr r5, [r1, #4]
	cmp r4, r5
	bgt label388
	add r1, r1, #4
	cmp r0, r3
	bgt label387
	b label1763
.p2align 4
label388:
	add r6, r1, #4
	str r4, [r1, #4]
	str r5, [r1, #0]
	mov r1, r6
	cmp r0, r3
	bgt label387
	add r2, r2, #1
	rsb r0, r2, #32
	cmp r2, #31
	sub r0, r0, #1
	blt label383
	b label1012
.p2align 4
label392:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label395
	add r4, r4, #4
	mov r5, r0
	b label392
label395:
	ldr r0, [sp, #0]
	add r4, sp, #128
	str r0, [sp, #128]
	add r0, r4, #4
	ldr r1, [sp, #4]
	str r1, [sp, #132]
	ldr r1, [sp, #8]
	str r1, [sp, #136]
	ldr r1, [sp, #12]
	str r1, [sp, #140]
	ldr r1, [sp, #16]
	str r1, [sp, #144]
	ldr r1, [sp, #20]
	str r1, [sp, #148]
	ldr r1, [sp, #24]
	str r1, [sp, #152]
	ldr r1, [sp, #28]
	str r1, [sp, #156]
	ldr r1, [sp, #32]
	str r1, [sp, #160]
	ldr r1, [sp, #36]
	str r1, [sp, #164]
	ldr r1, [sp, #40]
	str r1, [sp, #168]
	ldr r1, [sp, #44]
	str r1, [sp, #172]
	ldr r1, [sp, #48]
	str r1, [sp, #176]
	ldr r1, [sp, #52]
	str r1, [sp, #180]
	ldr r1, [sp, #56]
	str r1, [sp, #184]
	ldr r1, [sp, #60]
	str r1, [sp, #188]
	ldr r1, [sp, #64]
	str r1, [sp, #192]
	ldr r1, [sp, #68]
	str r1, [sp, #196]
	ldr r1, [sp, #72]
	str r1, [sp, #200]
	ldr r1, [sp, #76]
	str r1, [sp, #204]
	ldr r1, [sp, #80]
	str r1, [sp, #208]
	ldr r1, [sp, #84]
	str r1, [sp, #212]
	ldr r1, [sp, #88]
	str r1, [sp, #216]
	ldr r1, [sp, #92]
	str r1, [sp, #220]
	ldr r1, [sp, #96]
	str r1, [sp, #224]
	ldr r1, [sp, #100]
	str r1, [sp, #228]
	ldr r1, [sp, #104]
	str r1, [sp, #232]
	ldr r1, [sp, #108]
	str r1, [sp, #236]
	ldr r1, [sp, #112]
	str r1, [sp, #240]
	ldr r1, [sp, #116]
	str r1, [sp, #244]
	ldr r1, [sp, #120]
	str r1, [sp, #248]
	ldr r1, [sp, #124]
	str r1, [sp, #252]
	mov r1, #1
	cmp r1, #32
	blt label399
label1133:
	add r4, sp, #128
	mov r5, #0
	b label407
.p2align 4
label399:
	ldr r2, [r0, #0]
	sub r5, r1, #1
	add r4, sp, #128
	add r3, r4, r5, lsl #2
	add r6, r5, #1
	cmn r5, #1
	bgt label404
.p2align 4
label403:
	add r4, sp, #128
	add r1, r1, #1
	add r0, r0, #4
	str r2, [r4, r6, lsl #2]
	cmp r1, #32
	blt label399
	b label1133
.p2align 4
label407:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label410
	add r4, r4, #4
	mov r5, r0
	b label407
.p2align 4
label404:
	ldr r7, [r3, #0]
	cmp r2, r7
	bge label403
	add r4, sp, #128
	sub r5, r5, #1
	sub r3, r3, #4
	str r7, [r4, r6, lsl #2]
	add r6, r5, #1
	cmn r5, #1
	bgt label404
	add r1, r1, #1
	add r0, r0, #4
	str r2, [r4, r6, lsl #2]
	cmp r1, #32
	blt label399
	b label1133
label410:
	ldr r0, [sp, #0]
	add r4, sp, #128
	mov r1, #0
	mov r2, #31
	str r0, [sp, #128]
	ldr r0, [sp, #4]
	str r0, [sp, #132]
	ldr r0, [sp, #8]
	str r0, [sp, #136]
	ldr r0, [sp, #12]
	str r0, [sp, #140]
	ldr r0, [sp, #16]
	str r0, [sp, #144]
	ldr r0, [sp, #20]
	str r0, [sp, #148]
	ldr r0, [sp, #24]
	str r0, [sp, #152]
	ldr r0, [sp, #28]
	str r0, [sp, #156]
	ldr r0, [sp, #32]
	str r0, [sp, #160]
	ldr r0, [sp, #36]
	str r0, [sp, #164]
	ldr r0, [sp, #40]
	str r0, [sp, #168]
	ldr r0, [sp, #44]
	str r0, [sp, #172]
	ldr r0, [sp, #48]
	str r0, [sp, #176]
	ldr r0, [sp, #52]
	str r0, [sp, #180]
	ldr r0, [sp, #56]
	str r0, [sp, #184]
	ldr r0, [sp, #60]
	str r0, [sp, #188]
	ldr r0, [sp, #64]
	str r0, [sp, #192]
	ldr r0, [sp, #68]
	str r0, [sp, #196]
	ldr r0, [sp, #72]
	str r0, [sp, #200]
	ldr r0, [sp, #76]
	str r0, [sp, #204]
	ldr r0, [sp, #80]
	str r0, [sp, #208]
	ldr r0, [sp, #84]
	str r0, [sp, #212]
	ldr r0, [sp, #88]
	str r0, [sp, #216]
	ldr r0, [sp, #92]
	str r0, [sp, #220]
	ldr r0, [sp, #96]
	str r0, [sp, #224]
	ldr r0, [sp, #100]
	str r0, [sp, #228]
	ldr r0, [sp, #104]
	str r0, [sp, #232]
	ldr r0, [sp, #108]
	str r0, [sp, #236]
	ldr r0, [sp, #112]
	str r0, [sp, #240]
	ldr r0, [sp, #116]
	str r0, [sp, #244]
	ldr r0, [sp, #120]
	str r0, [sp, #248]
	ldr r0, [sp, #124]
	str r0, [sp, #252]
	mov r0, r4
	bl QuickSort
	mov r5, #0
.p2align 4
label411:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label414
	add r4, r4, #4
	mov r5, r0
	b label411
label414:
	ldr r0, [sp, #0]
	add r4, sp, #128
	mov r1, #0
	str r0, [sp, #128]
	ldr r0, [sp, #4]
	str r0, [sp, #132]
	ldr r0, [sp, #8]
	str r0, [sp, #136]
	ldr r0, [sp, #12]
	str r0, [sp, #140]
	ldr r0, [sp, #16]
	str r0, [sp, #144]
	ldr r0, [sp, #20]
	str r0, [sp, #148]
	ldr r0, [sp, #24]
	str r0, [sp, #152]
	ldr r0, [sp, #28]
	str r0, [sp, #156]
	ldr r0, [sp, #32]
	str r0, [sp, #160]
	ldr r0, [sp, #36]
	str r0, [sp, #164]
	ldr r0, [sp, #40]
	str r0, [sp, #168]
	ldr r0, [sp, #44]
	str r0, [sp, #172]
	ldr r0, [sp, #48]
	str r0, [sp, #176]
	ldr r0, [sp, #52]
	str r0, [sp, #180]
	ldr r0, [sp, #56]
	str r0, [sp, #184]
	ldr r0, [sp, #60]
	str r0, [sp, #188]
	ldr r0, [sp, #64]
	str r0, [sp, #192]
	ldr r0, [sp, #68]
	str r0, [sp, #196]
	ldr r0, [sp, #72]
	str r0, [sp, #200]
	ldr r0, [sp, #76]
	str r0, [sp, #204]
	ldr r0, [sp, #80]
	str r0, [sp, #208]
	ldr r0, [sp, #84]
	str r0, [sp, #212]
	ldr r0, [sp, #88]
	str r0, [sp, #216]
	ldr r0, [sp, #92]
	str r0, [sp, #220]
	ldr r0, [sp, #96]
	str r0, [sp, #224]
	ldr r0, [sp, #100]
	str r0, [sp, #228]
	ldr r0, [sp, #104]
	str r0, [sp, #232]
	ldr r0, [sp, #108]
	str r0, [sp, #236]
	ldr r0, [sp, #112]
	str r0, [sp, #240]
	ldr r0, [sp, #116]
	str r0, [sp, #244]
	ldr r0, [sp, #120]
	str r0, [sp, #248]
	ldr r0, [sp, #124]
	str r0, [sp, #252]
	mov r0, r1
	cmp r1, #32
	bge label1359
.p2align 4
label419:
	ldr r2, [r4, #0]
	add r1, r1, r2
	and r2, r0, #3
	cmp r2, #3
	add r0, r0, #1
	bne label421
	str r1, [r4, #0]
	mov r1, #0
	add r4, r4, #4
	cmp r0, #32
	blt label419
	b label1359
.p2align 4
label421:
	mov r2, #0
	str r2, [r4, #0]
	add r4, r4, #4
	cmp r0, #32
	blt label419
label1359:
	add r4, sp, #128
	mov r5, #0
.p2align 4
label423:
	ldr r0, [r4, #0]
	bl putint
	add r0, r5, #1
	cmp r0, #32
	bge label426
	add r4, r4, #4
	mov r5, r0
	b label423
label426:
	ldr r0, [sp, #0]
	add r4, sp, #128
	mov r1, #0
	mov r2, r1
	str r0, [sp, #128]
	ldr r0, [sp, #4]
	str r0, [sp, #132]
	ldr r0, [sp, #8]
	str r0, [sp, #136]
	ldr r0, [sp, #12]
	str r0, [sp, #140]
	ldr r0, [sp, #16]
	str r0, [sp, #144]
	ldr r0, [sp, #20]
	str r0, [sp, #148]
	ldr r0, [sp, #24]
	str r0, [sp, #152]
	ldr r0, [sp, #28]
	str r0, [sp, #156]
	ldr r0, [sp, #32]
	str r0, [sp, #160]
	ldr r0, [sp, #36]
	str r0, [sp, #164]
	ldr r0, [sp, #40]
	str r0, [sp, #168]
	ldr r0, [sp, #44]
	str r0, [sp, #172]
	ldr r0, [sp, #48]
	str r0, [sp, #176]
	ldr r0, [sp, #52]
	str r0, [sp, #180]
	ldr r0, [sp, #56]
	str r0, [sp, #184]
	ldr r0, [sp, #60]
	str r0, [sp, #188]
	ldr r0, [sp, #64]
	str r0, [sp, #192]
	ldr r0, [sp, #68]
	str r0, [sp, #196]
	ldr r0, [sp, #72]
	str r0, [sp, #200]
	ldr r0, [sp, #76]
	str r0, [sp, #204]
	ldr r0, [sp, #80]
	str r0, [sp, #208]
	ldr r0, [sp, #84]
	str r0, [sp, #212]
	ldr r0, [sp, #88]
	str r0, [sp, #216]
	ldr r0, [sp, #92]
	str r0, [sp, #220]
	ldr r0, [sp, #96]
	str r0, [sp, #224]
	ldr r0, [sp, #100]
	str r0, [sp, #228]
	ldr r0, [sp, #104]
	str r0, [sp, #232]
	ldr r0, [sp, #108]
	str r0, [sp, #236]
	ldr r0, [sp, #112]
	str r0, [sp, #240]
	ldr r0, [sp, #116]
	str r0, [sp, #244]
	ldr r0, [sp, #120]
	str r0, [sp, #248]
	ldr r0, [sp, #124]
	str r0, [sp, #252]
	mov r3, r1
	mov r0, r4
	cmp r1, #32
	bge label1473
.p2align 4
label433:
	cmp r3, #2
	blt label434
	beq label436
	b label437
.p2align 4
label434:
	ldr r5, [r4, #0]
	add r3, r3, #1
	add r0, r0, #4
	add r4, r4, #4
	add r2, r2, r5
	cmp r3, #32
	blt label433
	b label1473
.p2align 4
label436:
	ldr r1, [sp, #128]
	movw r0, #21846
	movt r0, #21845
	add r4, sp, #128
	mov r3, #3
	smmul r0, r2, r0
	add r0, r0, r0, lsr #31
	str r0, [sp, #128]
	add r0, r4, #12
	mov r4, r0
	cmp r3, #32
	blt label433
	b label1473
.p2align 4
label437:
	ldr r5, [r0, #0]
	add r3, r3, #1
	add r4, r4, #4
	add r2, r2, r5
	sub r2, r2, r1
	movw r1, #21846
	movt r1, #21845
	smmul r1, r2, r1
	add r5, r1, r1, lsr #31
	ldr r1, [r0, #-8]
	str r5, [r0, #-8]
	add r0, r0, #4
	cmp r3, #32
	blt label433
label1473:
	mov r5, #0
	add r4, sp, #128
	str r5, [sp, #248]
	str r5, [sp, #252]
.p2align 4
label439:
	ldr r0, [r4, #0]
	bl putint
	add r5, r5, #1
	cmp r5, #32
	bge label443
	add r4, r4, #4
	b label439
label443:
	mov r0, #0
	add sp, sp, #260
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label1763:
	add r2, r2, #1
	rsb r0, r2, #32
	cmp r2, #31
	sub r0, r0, #1
	blt label383
	b label1012
label1016:
	add r2, r2, #1
	rsb r0, r2, #32
	cmp r2, #31
	sub r0, r0, #1
	blt label383
	b label1012
label1517:
	add r2, r2, #1
	rsb r0, r2, #32
	cmp r2, #31
	sub r0, r0, #1
	blt label449
	b label371
