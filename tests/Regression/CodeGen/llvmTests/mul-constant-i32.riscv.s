.data
.section .rodata
.bss
.text
.globl mul_neg_fold
mul_neg_fold:
	li a2, -9
	mulw a0, a0, a2
	addw a0, a0, a1
	ret
.globl test_mul_by_1
test_mul_by_1:
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_10
test_mul_by_10:
	li a1, 10
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_11
test_mul_by_11:
	li a1, 11
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_12
test_mul_by_12:
	li a1, 12
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_13
test_mul_by_13:
	li a1, 13
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_14
test_mul_by_14:
	li a1, 14
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_15
test_mul_by_15:
	li a1, 15
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_16
test_mul_by_16:
	slliw a0, a0, 4
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_17
test_mul_by_17:
	li a1, 17
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_18
test_mul_by_18:
	li a1, 18
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_19
test_mul_by_19:
	li a1, 19
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_2
test_mul_by_2:
	slliw a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_20
test_mul_by_20:
	li a1, 20
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_21
test_mul_by_21:
	li a1, 21
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_22
test_mul_by_22:
	li a1, 22
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_23
test_mul_by_23:
	li a1, 23
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_24
test_mul_by_24:
	li a1, 24
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_25
test_mul_by_25:
	li a1, 25
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_26
test_mul_by_26:
	li a1, 26
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_27
test_mul_by_27:
	li a1, 27
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_28
test_mul_by_28:
	li a1, 28
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_29
test_mul_by_29:
	li a1, 29
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_3
test_mul_by_3:
	li a1, 3
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_30
test_mul_by_30:
	li a1, 30
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_31
test_mul_by_31:
	li a1, 31
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_32
test_mul_by_32:
	slliw a0, a0, 5
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_37
test_mul_by_37:
	li a1, 37
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_4
test_mul_by_4:
	slliw a0, a0, 2
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_41
test_mul_by_41:
	li a1, 41
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_5
test_mul_by_5:
	li a1, 5
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_520
test_mul_by_520:
	li a1, 520
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_6
test_mul_by_6:
	li a1, 6
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_62
test_mul_by_62:
	li a1, 62
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_66
test_mul_by_66:
	li a1, 66
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_7
test_mul_by_7:
	li a1, 7
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_73
test_mul_by_73:
	li a1, 73
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_8
test_mul_by_8:
	slliw a0, a0, 3
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_9
test_mul_by_9:
	li a1, 9
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_neg10
test_mul_by_neg10:
	li a1, -10
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_by_neg36
test_mul_by_neg36:
	li a1, -36
	mulw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_mul_spec
test_mul_spec:
	li a1, 9
	mulw a1, a0, a1
	addiw a1, a1, 42
	li a2, 5
	mulw a0, a0, a2
	addiw a0, a0, 2
	mulw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret