.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #284
	add r4, sp, #72
	bl getint
	str r0, [sp, #276]
	bl getint
	str r0, [sp, #4]
	bl getint
	str r0, [sp, #16]
	bl getint
	str r0, [sp, #28]
	bl getint
	str r0, [sp, #36]
	bl getint
	str r0, [sp, #44]
	bl getint
	str r0, [sp, #52]
	bl getint
	str r0, [sp, #60]
	bl getint
	str r0, [sp, #224]
	bl getint
	str r0, [sp, #240]
	bl getint
	str r0, [sp, #160]
	bl getint
	str r0, [sp, #156]
	bl getint
	str r0, [sp, #144]
	bl getint
	str r0, [sp, #140]
	bl getint
	str r0, [sp, #64]
	bl getint
	str r0, [sp, #152]
	ldr r0, [sp, #276]
	str r0, [sp, #72]
	ldr r0, [sp, #4]
	str r0, [sp, #76]
	ldr r0, [sp, #16]
	str r0, [sp, #80]
	ldr r0, [sp, #28]
	str r0, [sp, #84]
	ldr r0, [sp, #36]
	str r0, [sp, #88]
	ldr r0, [sp, #44]
	str r0, [sp, #92]
	ldr r0, [sp, #52]
	str r0, [sp, #96]
	ldr r0, [sp, #60]
	str r0, [sp, #100]
	ldr r0, [sp, #224]
	str r0, [sp, #104]
	ldr r0, [sp, #240]
	str r0, [sp, #108]
	ldr r0, [sp, #160]
	str r0, [sp, #112]
	ldr r0, [sp, #156]
	str r0, [sp, #116]
	ldr r0, [sp, #144]
	str r0, [sp, #120]
	ldr r0, [sp, #140]
	str r0, [sp, #124]
	ldr r0, [sp, #64]
	str r0, [sp, #128]
	ldr r0, [sp, #152]
	str r0, [sp, #132]
	mov r0, #0
	cmp r0, #15
	bge label10
.p2align 4
label4:
	add r1, r0, #1
	mov r2, r1
	cmp r1, #16
	blt label7
	mov r0, r1
	cmp r1, #15
	blt label4
	b label10
.p2align 4
label7:
	ldr r3, [r4, r0, lsl #2]
	ldr r5, [r4, r2, lsl #2]
	cmp r3, r5
	blt label8
	add r2, r2, #1
	cmp r2, #16
	blt label7
	mov r0, r1
	cmp r1, #15
	blt label4
label10:
	ldr r5, [sp, #72]
	ldr r0, [sp, #76]
	ldr r10, [sp, #80]
	ldr r9, [sp, #84]
	cmp r5, #0
	ldr r8, [sp, #88]
	ldr r7, [sp, #92]
	ldr r6, [sp, #96]
	ldr r4, [sp, #100]
	ldr r3, [sp, #104]
	ldr r2, [sp, #108]
	ldr r1, [sp, #112]
	ldr r11, [sp, #116]
	str r11, [sp, #216]
	ldr r11, [sp, #120]
	str r11, [sp, #212]
	ldr r11, [sp, #124]
	str r11, [sp, #208]
	ldr r11, [sp, #128]
	str r11, [sp, #204]
	ldr r11, [sp, #132]
	str r11, [sp, #200]
	beq label11
	str r5, [sp, #148]
	mov r5, r10
	str r0, [sp, #24]
	mov r0, r9
	str r10, [sp, #12]
	mov r0, r8
	str r9, [sp, #248]
	mov r0, r7
	str r8, [sp, #232]
	mov r0, r6
	str r7, [sp, #168]
	mov r0, r4
	str r6, [sp, #56]
	mov r0, r3
	str r4, [sp, #48]
	mov r0, r2
	str r3, [sp, #40]
	mov r0, r1
	str r2, [sp, #32]
	str r1, [sp, #20]
	ldr r11, [sp, #216]
	str r11, [sp, #8]
	mov r0, r11
	ldr r11, [sp, #212]
	str r11, [sp, #0]
	mov r0, r11
	ldr r11, [sp, #208]
	str r11, [sp, #272]
	mov r0, r11
	ldr r11, [sp, #204]
	str r11, [sp, #268]
	mov r0, r11
	ldr r11, [sp, #200]
	str r11, [sp, #264]
	mov r0, r11
	ldr r0, [sp, #276]
	str r0, [sp, #260]
	ldr r0, [sp, #4]
	str r0, [sp, #136]
	ldr r0, [sp, #16]
	str r0, [sp, #256]
	ldr r0, [sp, #28]
	str r0, [sp, #252]
	ldr r0, [sp, #36]
	str r0, [sp, #244]
	ldr r0, [sp, #44]
	str r0, [sp, #236]
	ldr r0, [sp, #52]
	str r0, [sp, #228]
	ldr r0, [sp, #60]
	str r0, [sp, #220]
	ldr r0, [sp, #224]
	str r0, [sp, #164]
	ldr r0, [sp, #240]
	str r0, [sp, #172]
	ldr r0, [sp, #160]
	str r0, [sp, #176]
	ldr r0, [sp, #156]
	str r0, [sp, #180]
	ldr r0, [sp, #144]
	str r0, [sp, #184]
	ldr r0, [sp, #140]
	str r0, [sp, #188]
	ldr r0, [sp, #64]
	str r0, [sp, #192]
	ldr r0, [sp, #152]
	str r0, [sp, #196]
label13:
	ldr r0, [sp, #24]
	movw r1, #51217
	ldr r5, [sp, #12]
	movt r1, #4405
	add r0, r0, r5
	ldr r5, [sp, #148]
	smmul r1, r0, r1
	asr r2, r1, #26
	subs r5, r5, #1
	add r1, r2, r1, lsr #31
	movw r2, #1
	movt r2, #15232
	mls r0, r1, r2, r0
	beq label11
	str r5, [sp, #148]
	str r0, [sp, #24]
	ldr r0, [sp, #248]
	str r0, [sp, #12]
	mov r5, r0
	ldr r0, [sp, #232]
	str r0, [sp, #248]
	ldr r0, [sp, #168]
	str r0, [sp, #232]
	ldr r0, [sp, #56]
	str r0, [sp, #168]
	ldr r0, [sp, #48]
	str r0, [sp, #56]
	ldr r0, [sp, #40]
	str r0, [sp, #48]
	ldr r0, [sp, #32]
	str r0, [sp, #40]
	ldr r0, [sp, #20]
	str r0, [sp, #32]
	ldr r0, [sp, #8]
	str r0, [sp, #20]
	ldr r0, [sp, #0]
	str r0, [sp, #8]
	ldr r0, [sp, #272]
	str r0, [sp, #0]
	ldr r0, [sp, #268]
	str r0, [sp, #272]
	ldr r0, [sp, #264]
	str r0, [sp, #268]
	ldr r0, [sp, #260]
	str r0, [sp, #264]
	ldr r0, [sp, #136]
	str r0, [sp, #260]
	ldr r0, [sp, #256]
	str r0, [sp, #136]
	ldr r0, [sp, #252]
	str r0, [sp, #256]
	ldr r0, [sp, #244]
	str r0, [sp, #252]
	ldr r0, [sp, #236]
	str r0, [sp, #244]
	ldr r0, [sp, #228]
	str r0, [sp, #236]
	ldr r0, [sp, #220]
	str r0, [sp, #228]
	ldr r0, [sp, #164]
	str r0, [sp, #220]
	ldr r0, [sp, #172]
	str r0, [sp, #164]
	ldr r0, [sp, #176]
	str r0, [sp, #172]
	ldr r0, [sp, #180]
	str r0, [sp, #176]
	ldr r0, [sp, #184]
	str r0, [sp, #180]
	ldr r0, [sp, #188]
	str r0, [sp, #184]
	ldr r0, [sp, #192]
	str r0, [sp, #188]
	ldr r0, [sp, #196]
	str r0, [sp, #192]
	mov r0, #0
	str r0, [sp, #196]
	b label13
.p2align 4
label8:
	str r5, [r4, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #16
	blt label7
	mov r0, r1
	cmp r1, #15
	blt label4
	b label10
label11:
	movw r1, #19504
	movt r1, #4
	add r0, r1, r0, lsl #5
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #284
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
