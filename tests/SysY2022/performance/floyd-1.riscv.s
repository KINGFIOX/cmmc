.data
.section .rodata
.bss
.align 4
temp:
	.zero	8388608
.align 4
w:
	.zero	8388608
.align 4
dst:
	.zero	8388608
.text
.globl main
main:
	addi sp, sp, -32
	sd s1, 24(sp)
	sd s2, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
pcrel1207:
	auipc a0, %pcrel_hi(w)
	addi a0, a0, %pcrel_lo(pcrel1207)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel1208:
	auipc a0, %pcrel_hi(dst)
	addi s0, a0, %pcrel_lo(pcrel1208)
pcrel1209:
	auipc a0, %pcrel_hi(temp)
	addi a0, a0, %pcrel_lo(pcrel1209)
	mv a1, zero
	bge zero, s1, label99
	ble s1, zero, label13
	mv a2, zero
	mulw a3, s1, zero
	addw a4, zero, a3
	blt zero, s1, label10
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, zero, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, zero, a3
	bge a2, zero, label9
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, zero, a3
	bge a2, zero, label9
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, zero, a3
	bge a2, zero, label9
	j label1059
label99:
	mv a1, zero
	mulw a3, s1, zero
	bge zero, s1, label16
	mv a2, zero
	mulw a4, s1, zero
	addw a5, zero, a4
	bge zero, s1, label34
	mv t1, zero
	bge zero, s1, label37
	j label39
label10:
	bge a1, zero, label11
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
	j label1066
label16:
	mulw s1, s1, s1
	ble s1, zero, label31
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label19
	j label30
label658:
	addw t2, t1, a4
	bge a2, zero, label71
	j label717
label54:
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	j label780
label34:
	addiw a1, a1, 1
	mulw a3, s1, a1
	bge a1, s1, label16
	mv a2, zero
	mulw a4, s1, zero
	addw a5, a1, a4
	bge zero, s1, label34
	mv t1, zero
	bge zero, s1, label37
	j label39
label717:
	li t3, -1
	bge a1, zero, label67
	j label779
label37:
	addiw a2, a2, 1
	mulw a4, s1, a2
	addw a5, a1, a4
	bge a2, s1, label34
	mv t1, zero
	bge zero, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	li t2, -1
	bge t2, zero, label75
	addw t2, zero, a4
	bge a2, zero, label71
	bge a1, zero, label67
label779:
	li t4, -1
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
label899:
	bge a2, zero, label39
	j label962
label1103:
	li t4, -1
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	j label899
label40:
	bge a1, zero, label41
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	li t2, -1
	bge t2, zero, label75
	addw t2, t1, a4
	bge a2, zero, label71
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	j label962
label41:
	blt a1, s1, label42
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	li t2, -1
	bge t2, zero, label75
	addw t2, t1, a4
	bge a2, zero, label71
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
label962:
	li t2, -1
	blt t2, zero, label406
label1026:
	bge a1, zero, label46
	j label1090
label39:
	blt a2, s1, label40
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	li t2, -1
	bge t2, zero, label75
	addw t2, t1, a4
	bge a2, zero, label71
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	j label962
label406:
	mv t2, zero
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	li t2, -1
	bge t2, zero, label75
	addw t2, t1, a4
	bge a2, zero, label71
	bge a1, zero, label67
	j label1091
label900:
	li t2, -1
	bge t2, zero, label75
	j label963
label1091:
	li t4, -1
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	j label899
label56:
	blt a2, s1, label57
	li t2, -1
	bge t2, zero, label75
	addw t2, t1, a4
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	j label900
label57:
	bge t1, zero, label58
	li t2, -1
	bge t2, zero, label75
	addw t2, t1, a4
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	j label900
label58:
	blt t1, s1, label59
	li t2, -1
	bge t2, zero, label75
	addw t2, t1, a4
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	j label900
label67:
	blt a1, s1, label68
	li t4, -1
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	li t2, -1
	bge t2, zero, label75
	addw t2, t1, a4
	bge a2, zero, label71
	bge a1, zero, label67
	j label1103
label68:
	bge t1, zero, label69
	li t4, -1
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	li t2, -1
	bge t2, zero, label75
	addw t2, t1, a4
	bge a2, zero, label71
	bge a1, zero, label67
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	j label899
label1111:
	bge a2, zero, label56
	j label1115
label76:
	blt a2, s1, label77
	li t3, -1
	bge a1, zero, label84
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label54
	addw t2, t1, a4
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
label1115:
	li t2, -1
	bge t2, zero, label75
	j label1117
label46:
	blt a1, s1, label47
	li t2, -1
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	li t2, -1
	bge t2, zero, label75
	addw t2, t1, a4
	bge a2, zero, label71
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	j label1090
label47:
	bge t1, zero, label48
	li t2, -1
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	li t2, -1
	bge t2, zero, label75
	addw t2, t1, a4
	bge a2, zero, label71
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	j label1090
label48:
	blt t1, s1, label49
	li t2, -1
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	li t2, -1
	bge t2, zero, label75
	addw t2, t1, a4
	bge a2, zero, label71
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
label1090:
	li t2, -1
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
label838:
	bge a2, zero, label56
	j label900
label75:
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	bge a2, zero, label76
	li t3, -1
	bge a1, zero, label84
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label54
	addw t2, t1, a4
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	j label1111
label77:
	bge a1, zero, label78
	li t3, -1
	bge a1, zero, label84
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label54
	addw t2, t1, a4
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	j label1115
label78:
	blt a1, s1, label79
	li t3, -1
	bge a1, zero, label84
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label54
	addw t2, t1, a4
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	j label1115
label79:
	slliw t3, a5, 2
	add t3, a0, t3
	lw t3, 0(t3)
	bge a1, zero, label84
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label54
	addw t2, t1, a4
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	j label1115
label84:
	blt a1, s1, label85
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label54
	addw t2, t1, a4
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	j label1119
label71:
	blt a2, s1, label72
	li t3, -1
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	li t2, -1
	bge t2, zero, label75
	addw t2, t1, a4
	bge a2, zero, label71
	j label1107
label86:
	blt t1, s1, label87
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label54
	addw t2, t1, a4
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	li t2, -1
	bge t2, zero, label75
	j label1117
label72:
	bge a1, zero, label73
	li t3, -1
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	li t2, -1
	bge t2, zero, label75
	addw t2, t1, a4
	bge a2, zero, label71
	bge a1, zero, label67
	j label1091
label73:
	blt a1, s1, label74
	li t3, -1
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	li t2, -1
	bge t2, zero, label75
	addw t2, t1, a4
	bge a2, zero, label71
	bge a1, zero, label67
	j label1091
label74:
	slliw t3, a5, 2
	add t3, a0, t3
	lw t3, 0(t3)
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	li t2, -1
	bge t2, zero, label75
	addw t2, t1, a4
	bge a2, zero, label71
	bge a1, zero, label67
	j label1091
label1107:
	li t3, -1
	bge a1, zero, label67
	j label1091
label963:
	addw t2, t1, a4
	bge a2, zero, label71
	j label1027
label59:
	addw t2, t1, a4
	slliw t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	bge t2, zero, label75
	addw t2, t1, a4
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	li t2, -1
	bge t2, zero, label75
	j label963
label1027:
	li t3, -1
	bge a1, zero, label67
	j label1091
label69:
	blt t1, s1, label70
	li t4, -1
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	li t2, -1
	bge t2, zero, label75
	addw t2, t1, a4
	bge a2, zero, label71
	bge a1, zero, label67
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	j label899
label70:
	addw t4, t1, a3
	slliw t4, t4, 2
	add t4, a0, t4
	lw t4, 0(t4)
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	li t2, -1
	bge t2, zero, label75
	addw t2, t1, a4
	bge a2, zero, label71
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	j label899
label85:
	bge t1, zero, label86
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label54
	addw t2, t1, a4
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	li t2, -1
	bge t2, zero, label75
	j label1117
label780:
	li t2, -1
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	j label838
label42:
	slliw t2, a5, 2
	add t2, a0, t2
	lw t2, 0(t2)
	blt t2, zero, label406
	bge a1, zero, label46
	li t2, -1
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	li t2, -1
	bge t2, zero, label75
	addw t2, t1, a4
	bge a2, zero, label71
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	j label1026
label1117:
	addw t2, t1, a4
	bge a2, zero, label71
	j label1027
label87:
	addw t4, t1, a3
	slliw t4, t4, 2
	add t4, a0, t4
	lw t4, 0(t4)
	addw t3, t3, t4
	ble t2, t3, label54
	addw t2, t1, a4
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	slli t2, t2, 2
	add t2, a0, t2
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	li t2, -1
	bge t2, zero, label75
	j label1117
label49:
	addw t2, t1, a3
	slliw t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	bge a2, zero, label56
	li t2, -1
	bge t2, zero, label75
	j label658
label1119:
	li t2, -1
	bge t2, zero, label75
	j label1117
label1064:
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
label1066:
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	j label1064
label1059:
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
label940:
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
	j label1004
label9:
	blt a2, s1, label10
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	j label940
label1068:
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
	j label1066
label1004:
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	j label1068
label13:
	addiw a1, a1, 1
	bge a1, s1, label99
	ble s1, zero, label13
	mv a2, zero
	mulw a3, s1, zero
	addw a4, a1, a3
	blt zero, s1, label10
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, zero, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	j label940
label11:
	blt a1, s1, label12
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
	j label1066
label12:
	slliw a3, a4, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
	li a3, -1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a4, a1, a3
	bge a2, zero, label9
	j label1066
label19:
	addiw a2, a1, 16
	bge a2, s1, label22
label21:
	slliw a3, a1, 2
	add a3, a0, a3
	lw a4, 0(a3)
	slliw a1, a1, 2
	add a1, s0, a1
	sw a4, 0(a1)
	lw a4, 4(a3)
	sw a4, 4(a1)
	lw a4, 8(a3)
	sw a4, 8(a1)
	lw a4, 12(a3)
	sw a4, 12(a1)
	lw a4, 16(a3)
	sw a4, 16(a1)
	lw a4, 20(a3)
	sw a4, 20(a1)
	lw a4, 24(a3)
	sw a4, 24(a1)
	lw a4, 28(a3)
	sw a4, 28(a1)
	lw a4, 32(a3)
	sw a4, 32(a1)
	lw a4, 36(a3)
	sw a4, 36(a1)
	lw a4, 40(a3)
	sw a4, 40(a1)
	lw a4, 44(a3)
	sw a4, 44(a1)
	lw a4, 48(a3)
	sw a4, 48(a1)
	lw a4, 52(a3)
	sw a4, 52(a1)
	lw a4, 56(a3)
	sw a4, 56(a1)
	lw a3, 60(a3)
	sw a3, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label22
	j label21
label22:
	addiw a2, a1, 16
	bge a2, s1, label24
	j label29
label24:
	addiw a2, a1, 16
	bge a2, s1, label26
label28:
	slliw a3, a1, 2
	add a3, a0, a3
	lw a4, 0(a3)
	slliw a1, a1, 2
	add a1, s0, a1
	sw a4, 0(a1)
	lw a4, 4(a3)
	sw a4, 4(a1)
	lw a4, 8(a3)
	sw a4, 8(a1)
	lw a4, 12(a3)
	sw a4, 12(a1)
	lw a4, 16(a3)
	sw a4, 16(a1)
	lw a4, 20(a3)
	sw a4, 20(a1)
	lw a4, 24(a3)
	sw a4, 24(a1)
	lw a4, 28(a3)
	sw a4, 28(a1)
	lw a4, 32(a3)
	sw a4, 32(a1)
	lw a4, 36(a3)
	sw a4, 36(a1)
	lw a4, 40(a3)
	sw a4, 40(a1)
	lw a4, 44(a3)
	sw a4, 44(a1)
	lw a4, 48(a3)
	sw a4, 48(a1)
	lw a4, 52(a3)
	sw a4, 52(a1)
	lw a4, 56(a3)
	sw a4, 56(a1)
	lw a3, 60(a3)
	sw a3, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label26
	j label28
label26:
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label31
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label31
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label31
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label31
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label31
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label31
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label31
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label31
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label31
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label31
label1074:
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label31
	j label1074
label30:
	slliw a3, a1, 2
	add a3, a0, a3
	lw a4, 0(a3)
	slliw a1, a1, 2
	add a1, s0, a1
	sw a4, 0(a1)
	lw a4, 4(a3)
	sw a4, 4(a1)
	lw a4, 8(a3)
	sw a4, 8(a1)
	lw a4, 12(a3)
	sw a4, 12(a1)
	lw a4, 16(a3)
	sw a4, 16(a1)
	lw a4, 20(a3)
	sw a4, 20(a1)
	lw a4, 24(a3)
	sw a4, 24(a1)
	lw a4, 28(a3)
	sw a4, 28(a1)
	lw a4, 32(a3)
	sw a4, 32(a1)
	lw a4, 36(a3)
	sw a4, 36(a1)
	lw a4, 40(a3)
	sw a4, 40(a1)
	lw a4, 44(a3)
	sw a4, 44(a1)
	lw a4, 48(a3)
	sw a4, 48(a1)
	lw a4, 52(a3)
	sw a4, 52(a1)
	lw a4, 56(a3)
	sw a4, 56(a1)
	lw a3, 60(a3)
	sw a3, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label19
	j label30
label29:
	slliw a3, a1, 2
	add a3, a0, a3
	lw a4, 0(a3)
	slliw a1, a1, 2
	add a1, s0, a1
	sw a4, 0(a1)
	lw a4, 4(a3)
	sw a4, 4(a1)
	lw a4, 8(a3)
	sw a4, 8(a1)
	lw a4, 12(a3)
	sw a4, 12(a1)
	lw a4, 16(a3)
	sw a4, 16(a1)
	lw a4, 20(a3)
	sw a4, 20(a1)
	lw a4, 24(a3)
	sw a4, 24(a1)
	lw a4, 28(a3)
	sw a4, 28(a1)
	lw a4, 32(a3)
	sw a4, 32(a1)
	lw a4, 36(a3)
	sw a4, 36(a1)
	lw a4, 40(a3)
	sw a4, 40(a1)
	lw a4, 44(a3)
	sw a4, 44(a1)
	lw a4, 48(a3)
	sw a4, 48(a1)
	lw a4, 52(a3)
	sw a4, 52(a1)
	lw a4, 56(a3)
	sw a4, 56(a1)
	lw a3, 60(a3)
	sw a3, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label24
	j label29
label31:
	li a0, 64
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
