.arch armv7ve
.data
.bss
.align 8
Vectortm:
	.zero	400000
.align 8
vectorB:
	.zero	400000
.align 8
vectorA:
	.zero	400000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r0, #62
	sub sp, sp, #4
	bl _sysy_starttime
	mov r0, #0
	movw r9, #:lower16:vectorA
	movt r9, #:upper16:vectorA
.p2align 4
label2:
	mov r1, #1065353216
	add r0, r0, #64
	vmov s0, r1
	movw r1, #34432
	movt r1, #1
	cmp r0, r1
	vstr s0, [r9, #0]
	vstr s0, [r9, #4]
	vstr s0, [r9, #8]
	vstr s0, [r9, #12]
	vstr s0, [r9, #16]
	vstr s0, [r9, #20]
	vstr s0, [r9, #24]
	vstr s0, [r9, #28]
	vstr s0, [r9, #32]
	vstr s0, [r9, #36]
	vstr s0, [r9, #40]
	vstr s0, [r9, #44]
	vstr s0, [r9, #48]
	vstr s0, [r9, #52]
	vstr s0, [r9, #56]
	vstr s0, [r9, #60]
	vstr s0, [r9, #64]
	vstr s0, [r9, #68]
	vstr s0, [r9, #72]
	vstr s0, [r9, #76]
	vstr s0, [r9, #80]
	vstr s0, [r9, #84]
	vstr s0, [r9, #88]
	vstr s0, [r9, #92]
	vstr s0, [r9, #96]
	vstr s0, [r9, #100]
	vstr s0, [r9, #104]
	vstr s0, [r9, #108]
	vstr s0, [r9, #112]
	vstr s0, [r9, #116]
	vstr s0, [r9, #120]
	vstr s0, [r9, #124]
	vstr s0, [r9, #128]
	vstr s0, [r9, #132]
	vstr s0, [r9, #136]
	vstr s0, [r9, #140]
	vstr s0, [r9, #144]
	vstr s0, [r9, #148]
	vstr s0, [r9, #152]
	vstr s0, [r9, #156]
	vstr s0, [r9, #160]
	vstr s0, [r9, #164]
	vstr s0, [r9, #168]
	vstr s0, [r9, #172]
	vstr s0, [r9, #176]
	vstr s0, [r9, #180]
	vstr s0, [r9, #184]
	vstr s0, [r9, #188]
	vstr s0, [r9, #192]
	vstr s0, [r9, #196]
	vstr s0, [r9, #200]
	vstr s0, [r9, #204]
	vstr s0, [r9, #208]
	vstr s0, [r9, #212]
	vstr s0, [r9, #216]
	vstr s0, [r9, #220]
	vstr s0, [r9, #224]
	vstr s0, [r9, #228]
	vstr s0, [r9, #232]
	vstr s0, [r9, #236]
	vstr s0, [r9, #240]
	vstr s0, [r9, #244]
	vstr s0, [r9, #248]
	vstr s0, [r9, #252]
	bge label5
	add r9, r9, #256
	b label2
label5:
	movw r9, #:lower16:vectorA
	movt r9, #:upper16:vectorA
	mov r1, #1065353216
	add r0, r9, r0, lsl #2
	vmov s0, r1
	vstr s0, [r0, #0]
	vstr s0, [r0, #4]
	vstr s0, [r0, #8]
	vstr s0, [r0, #12]
	vstr s0, [r0, #16]
	vstr s0, [r0, #20]
	vstr s0, [r0, #24]
	vstr s0, [r0, #28]
	vstr s0, [r0, #32]
	vstr s0, [r0, #36]
	vstr s0, [r0, #40]
	vstr s0, [r0, #44]
	vstr s0, [r0, #48]
	vstr s0, [r0, #52]
	vstr s0, [r0, #56]
	vstr s0, [r0, #60]
	vstr s0, [r0, #64]
	vstr s0, [r0, #68]
	vstr s0, [r0, #72]
	vstr s0, [r0, #76]
	vstr s0, [r0, #80]
	vstr s0, [r0, #84]
	vstr s0, [r0, #88]
	vstr s0, [r0, #92]
	vstr s0, [r0, #96]
	vstr s0, [r0, #100]
	vstr s0, [r0, #104]
	vstr s0, [r0, #108]
	vstr s0, [r0, #112]
	vstr s0, [r0, #116]
	vstr s0, [r0, #120]
	vstr s0, [r0, #124]
	mov r0, #0
.p2align 4
label6:
	mov r8, #0
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	mov r3, r8
	vmov s0, r8
	mov r2, r5
	movw r1, #34464
	movt r1, #1
	cmp r8, r1
	blt label13
	b label249
label68:
	mov r0, #76
	bl _sysy_stoptime
	movw r9, #:lower16:vectorA
	movt r9, #:upper16:vectorA
	mov r1, #0
	mov r0, r9
	vmov s0, r1
.p2align 4
label69:
	vldr s1, [r0, #0]
	movw r5, #:lower16:vectorB
	movt r5, #:upper16:vectorB
	movw r3, #34448
	movt r3, #1
	add r2, r5, r1, lsl #2
	vldr s2, [r2, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #4]
	vldr s2, [r2, #4]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #8]
	vldr s2, [r2, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #12]
	vldr s2, [r2, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #16]
	vldr s2, [r2, #16]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #20]
	vldr s2, [r2, #20]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #24]
	vldr s2, [r2, #24]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #28]
	vldr s2, [r2, #28]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #32]
	vldr s2, [r2, #32]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #36]
	vldr s2, [r2, #36]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #40]
	vldr s2, [r2, #40]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #44]
	vldr s2, [r2, #44]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #48]
	vldr s2, [r2, #48]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #52]
	vldr s2, [r2, #52]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #56]
	vldr s2, [r2, #56]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #60]
	vldr s2, [r2, #60]
	add r2, r1, #16
	cmp r2, r3
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	bge label74
	add r0, r0, #64
	mov r1, r2
	b label69
.p2align 4
label98:
	add r1, r3, #1
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	bge label804
	add r4, r8, #4
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	blt label100
	b label809
.p2align 4
label877:
	movw r8, #34464
	movt r8, #1
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label98
	add r0, r0, #1
	cmp r0, #1000
	blt label6
	b label68
.p2align 4
label100:
	add r4, r3, #2
	add r6, r3, #3
	add r7, r3, #4
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	add r5, r5, r8, lsl #2
.p2align 4
label101:
	add r10, r3, r8
	add r9, r1, r8
	vldr s2, [r5, #0]
	add r11, r8, #1
	mul r10, r10, r9
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r10, r10, r11
	add r11, r8, #2
	vmov s1, r10
	add r10, r4, r8
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r9, r11
	vldr s2, [r5, #4]
	add r11, r8, #3
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r6, r8
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r10, r10, r11
	vldr s2, [r5, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r7, r8
	add r8, r8, #4
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r9, r8
	vldr s2, [r5, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	movw r9, #34460
	movt r9, #1
	cmp r8, r9
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label809
	add r5, r5, #16
	b label101
label1057:
	mov r8, #0
	movw r9, #:lower16:vectorA
	movt r9, #:upper16:vectorA
	mov r3, r8
	vmov s0, r8
	mov r2, r9
	b label62
.p2align 4
label13:
	add r1, r3, #1
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	bge label254
	add r4, r8, #4
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	blt label21
	b label259
.p2align 4
label273:
	movw r8, #34464
	movt r8, #1
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label13
	mov r8, #0
	movw r5, #:lower16:vectorB
	movt r5, #:upper16:vectorB
	mov r3, r8
	vmov s0, r8
	mov r2, r5
	cmp r8, r1
	blt label37
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	mov r2, r5
	b label1057
label62:
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label98
	b label67
.p2align 4
label37:
	add r1, r3, #1
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	bge label337
	add r4, r8, #4
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	blt label45
	b label342
.p2align 4
label356:
	movw r8, #34464
	movt r8, #1
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label37
	mov r8, #0
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	mov r3, r8
	vmov s0, r8
	mov r2, r5
	cmp r8, r1
	blt label116
	movw r9, #:lower16:vectorA
	movt r9, #:upper16:vectorA
	mov r2, r9
	b label67
.p2align 4
label116:
	add r1, r3, #1
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	bge label117
	add r4, r8, #4
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	blt label127
	b label121
.p2align 4
label906:
	movw r8, #34464
	movt r8, #1
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label116
	mov r8, #0
	movw r9, #:lower16:vectorA
	movt r9, #:upper16:vectorA
	mov r3, r8
	vmov s0, r8
	mov r2, r9
	cmp r8, r1
	blt label98
	add r0, r0, #1
	cmp r0, #1000
	blt label6
	b label68
.p2align 4
label342:
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	add r4, r5, r8, lsl #2
	mov r5, r8
.p2align 4
label39:
	add r6, r3, r5
	add r7, r1, r5
	vldr s2, [r4, #0]
	add r5, r5, #1
	mul r6, r6, r7
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r6, r5
	vmov s1, r6
	movw r6, #34464
	movt r6, #1
	cmp r5, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label356
	add r4, r4, #4
	b label39
.p2align 4
label259:
	movw r9, #:lower16:vectorA
	movt r9, #:upper16:vectorA
	add r4, r9, r8, lsl #2
.p2align 4
label15:
	add r5, r3, r8
	add r6, r1, r8
	vldr s2, [r4, #0]
	add r8, r8, #1
	mul r5, r5, r6
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r1, r5
	vmov s1, r5
	movw r5, #34464
	movt r5, #1
	cmp r8, r5
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label273
	add r4, r4, #4
	b label15
.p2align 4
label809:
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	add r4, r5, r8, lsl #2
	mov r5, r8
.p2align 4
label108:
	add r6, r3, r5
	add r7, r1, r5
	vldr s2, [r4, #0]
	add r5, r5, #1
	mul r6, r6, r7
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r6, r5
	vmov s1, r6
	movw r6, #34464
	movt r6, #1
	cmp r5, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label877
	add r4, r4, #4
	b label108
label67:
	add r0, r0, #1
	cmp r0, #1000
	blt label6
	b label68
.p2align 4
label117:
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label116
	mov r8, #0
	movw r9, #:lower16:vectorA
	movt r9, #:upper16:vectorA
	mov r3, r8
	vmov s0, r8
	mov r2, r9
	cmp r8, r1
	blt label98
	b label67
label1052:
	mov r8, #0
	movw r9, #:lower16:vectorA
	movt r9, #:upper16:vectorA
	movw r1, #34464
	movt r1, #1
	mov r3, r8
	vmov s0, r8
	mov r2, r9
	cmp r8, r1
	blt label98
	b label67
.p2align 4
label337:
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label37
	mov r8, #0
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	mov r3, r8
	vmov s0, r8
	mov r2, r5
	cmp r8, r1
	blt label116
	b label1052
.p2align 4
label254:
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label13
	mov r8, #0
	movw r5, #:lower16:vectorB
	movt r5, #:upper16:vectorB
	mov r3, r8
	vmov s0, r8
	mov r2, r5
	cmp r8, r1
	blt label37
	b label1049
.p2align 4
label804:
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label98
	add r0, r0, #1
	cmp r0, #1000
	blt label6
	b label68
label74:
	movw r9, #:lower16:vectorA
	movt r9, #:upper16:vectorA
	movw r5, #:lower16:vectorB
	movt r5, #:upper16:vectorB
	add r1, r1, #28
	add r0, r9, r2, lsl #2
	add r2, r5, r2, lsl #2
	vldr s1, [r0, #0]
	vldr s2, [r2, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #4]
	vldr s2, [r2, #4]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #8]
	vldr s2, [r2, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #12]
	vldr s2, [r2, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #16]
	vldr s2, [r2, #16]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #20]
	vldr s2, [r2, #20]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #24]
	vldr s2, [r2, #24]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #28]
	vldr s2, [r2, #28]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #32]
	vldr s2, [r2, #32]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #36]
	vldr s2, [r2, #36]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #40]
	vldr s2, [r2, #40]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #44]
	add r0, r9, r1, lsl #2
	vldr s2, [r2, #44]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
label75:
	vldr s1, [r0, #0]
	movw r5, #:lower16:vectorB
	movt r5, #:upper16:vectorB
	add r2, r5, r1, lsl #2
	add r1, r1, #1
	vldr s2, [r2, #0]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	bge label79
	add r0, r0, #4
	b label75
label79:
	mov r1, #0
	movw r5, #:lower16:vectorB
	movt r5, #:upper16:vectorB
	vmov s1, r1
	mov r0, r5
.p2align 4
label80:
	vldr s2, [r0, #0]
	add r2, r1, #16
	movw r3, #34448
	movt r3, #1
	cmp r2, r3
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #12]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #16]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #20]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #24]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #28]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #32]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #36]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #40]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #44]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #48]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #52]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #56]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #60]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label84
	add r0, r0, #64
	mov r1, r2
	b label80
label84:
	movw r5, #:lower16:vectorB
	movt r5, #:upper16:vectorB
	add r1, r1, #28
	add r0, r5, r2, lsl #2
	vldr s2, [r0, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #12]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #16]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #20]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #24]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #28]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #32]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #36]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #40]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #44]
	add r0, r5, r1, lsl #2
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
label85:
	vldr s2, [r0, #0]
	add r1, r1, #1
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label89
	add r0, r0, #4
	b label85
label89:
	vdiv.f32 s0, s0, s1
	mov r0, #1065353216
	movw r1, #14269
	movt r1, #46470
	vmov s1, r0
	movw r0, #14269
	movt r0, #13702
	vmov s2, r0
	mov r0, #0
	vsub.f32 s1, s1, s0
	vcmp.f32 s1, s2
	vmov s2, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	orrs r0, r0, r1
	beq label765
	mov r0, #1065353216
	vmov.f32 s2, s0
	vmov s1, r0
	b label92
label90:
	mov r0, #1065353216
	movw r1, #14269
	movt r1, #46470
	vmov s0, r0
	movw r0, #14269
	movt r0, #13702
	vsub.f32 s0, s1, s0
	vmov s1, r0
	mov r0, #0
	vcmp.f32 s0, s1
	vmov s1, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwls r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwge r1, #1
	and r0, r0, r1
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label92:
	vadd.f32 s1, s1, s2
	mov r0, #1056964608
	movw r1, #14269
	movt r1, #46470
	vmov s2, r0
	movw r0, #14269
	movt r0, #13702
	vmov s4, r0
	mov r0, #0
	vmul.f32 s1, s1, s2
	vdiv.f32 s2, s0, s1
	vsub.f32 s3, s1, s2
	vcmp.f32 s3, s4
	vmov s4, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	orrs r0, r0, r1
	bne label92
	b label90
.p2align 4
label249:
	mov r8, #0
	movw r5, #:lower16:vectorB
	movt r5, #:upper16:vectorB
	movw r1, #34464
	movt r1, #1
	mov r3, r8
	vmov s0, r8
	mov r2, r5
	cmp r8, r1
	blt label37
label1049:
	mov r8, #0
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	movw r1, #34464
	movt r1, #1
	mov r3, r8
	vmov s0, r8
	mov r2, r5
	cmp r8, r1
	blt label116
	b label1057
.p2align 4
label21:
	add r4, r3, #2
	add r6, r3, #3
	add r7, r3, #4
	movw r9, #:lower16:vectorA
	movt r9, #:upper16:vectorA
	add r5, r9, r8, lsl #2
.p2align 4
label22:
	add r10, r3, r8
	add r9, r1, r8
	vldr s2, [r5, #0]
	mul r10, r10, r9
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r10, r1, r10
	vmov s1, r10
	add r10, r4, r8
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r1, r9
	vldr s2, [r5, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r6, r8
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r10, r1, r10
	vldr s2, [r5, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r7, r8
	add r8, r8, #4
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r1, r9
	vldr s2, [r5, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	movw r9, #34460
	movt r9, #1
	cmp r8, r9
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label259
	add r5, r5, #16
	b label22
label765:
	mov r0, #1065353216
	vmov s1, r0
	b label90
.p2align 4
label127:
	add r4, r3, #2
	add r6, r3, #3
	add r7, r3, #4
	movw r5, #:lower16:vectorB
	movt r5, #:upper16:vectorB
	add r5, r5, r8, lsl #2
.p2align 4
label128:
	add r9, r3, r8
	add r10, r1, r8
	vldr s2, [r5, #0]
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r1, r9
	vmov s1, r9
	add r9, r4, r8
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r10, r1, r10
	vldr s2, [r5, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r6, r8
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r1, r9
	vldr s2, [r5, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r7, r8
	add r8, r8, #4
	mul r9, r10, r9
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r1, r9
	vldr s2, [r5, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	movw r9, #34460
	movt r9, #1
	cmp r8, r9
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label121
	add r5, r5, #16
	b label128
.p2align 4
label121:
	movw r5, #:lower16:vectorB
	movt r5, #:upper16:vectorB
	add r4, r5, r8, lsl #2
.p2align 4
label122:
	add r5, r3, r8
	add r6, r1, r8
	vldr s2, [r4, #0]
	add r8, r8, #1
	mul r5, r5, r6
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r1, r5
	vmov s1, r5
	movw r5, #34464
	movt r5, #1
	cmp r8, r5
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label906
	add r4, r4, #4
	b label122
.p2align 4
label45:
	add r4, r3, #2
	add r6, r3, #3
	add r7, r3, #4
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	add r5, r5, r8, lsl #2
.p2align 4
label46:
	add r10, r3, r8
	add r9, r1, r8
	vldr s2, [r5, #0]
	add r11, r8, #1
	mul r10, r10, r9
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r10, r10, r11
	add r11, r8, #2
	vmov s1, r10
	add r10, r4, r8
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r9, r11
	vldr s2, [r5, #4]
	add r11, r8, #3
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r6, r8
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r10, r10, r11
	vldr s2, [r5, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r7, r8
	add r8, r8, #4
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r9, r8
	vldr s2, [r5, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	movw r9, #34460
	movt r9, #1
	cmp r8, r9
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label342
	add r5, r5, #16
	b label46
