.data
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
pcrel1236:
	auipc a0, %pcrel_hi(w)
	addi a0, a0, %pcrel_lo(pcrel1236)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel1237:
	auipc a0, %pcrel_hi(dst)
	addi s0, a0, %pcrel_lo(pcrel1237)
pcrel1238:
	auipc a0, %pcrel_hi(temp)
	addi a0, a0, %pcrel_lo(pcrel1238)
	mv a1, zero
	bge zero, s1, label99
	ble s1, zero, label13
	mv a2, zero
	mulw a3, s1, zero
	addw a3, zero, a3
	slli a4, a3, 2
	add a4, a0, a4
	blt zero, s1, label10
	li a3, -1
	sw a3, 0(a4)
	addiw a2, zero, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, zero, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, zero, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, zero, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	j label1080
label99:
	mv a1, zero
	mulw a3, s1, zero
	bge zero, s1, label16
	mv a2, zero
	mulw a4, s1, zero
	addw a5, zero, a4
	slliw a5, a5, 2
	add a5, a0, a5
	bge zero, s1, label34
	mv t1, zero
	bge zero, s1, label37
	j label39
label16:
	mulw s1, s1, s1
	ble s1, zero, label31
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label19
	j label30
label34:
	addiw a1, a1, 1
	mulw a3, s1, a1
	bge a1, s1, label16
	mv a2, zero
	mulw a4, s1, zero
	addw a5, a1, a4
	slliw a5, a5, 2
	add a5, a0, a5
	bge zero, s1, label34
	mv t1, zero
	bge zero, s1, label37
	j label39
label659:
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	j label786
label54:
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	j label787
label786:
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
label912:
	bge a2, zero, label39
label978:
	li t2, -1
	blt t2, zero, label406
	j label1045
label37:
	addiw a2, a2, 1
	mulw a4, s1, a2
	addw a5, a1, a4
	slliw a5, a5, 2
	add a5, a0, a5
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
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	bge a1, zero, label67
	j label786
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
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	bge a1, zero, label67
	j label1113
label979:
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	j label1046
label59:
	addw t2, t1, a4
	slliw t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	bge t2, zero, label75
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
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
	j label979
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
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	j label978
label1133:
	bge a2, zero, label56
	j label1135
label56:
	blt a2, s1, label57
	li t2, -1
	bge t2, zero, label75
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
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
label913:
	li t2, -1
	bge t2, zero, label75
	j label979
label57:
	bge t1, zero, label58
	li t2, -1
	bge t2, zero, label75
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
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
	j label913
label58:
	blt t1, s1, label59
	li t2, -1
	bge t2, zero, label75
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
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
	j label913
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
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	j label1112
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
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	j label1112
label69:
	blt t1, s1, label70
	li t4, -1
	addw t3, t3, t4
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
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	bge a1, zero, label67
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	j label912
label70:
	addw t4, t1, a3
	slliw t4, t4, 2
	add t4, a0, t4
	lw t4, 0(t4)
	addw t3, t3, t4
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
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	j label912
label71:
	blt a2, s1, label72
	li t3, -1
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
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
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	bge a1, zero, label67
	j label1113
label72:
	bge a1, zero, label73
	li t3, -1
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
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
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	bge a1, zero, label67
	j label1113
label73:
	blt a1, s1, label74
	li t3, -1
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
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
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	bge a1, zero, label67
	j label1113
label67:
	blt a1, s1, label68
	li t4, -1
	addw t3, t3, t4
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
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	bge a1, zero, label67
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	j label912
label68:
	bge t1, zero, label69
	li t4, -1
	addw t3, t3, t4
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
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	bge a1, zero, label67
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	j label912
label787:
	li t2, -1
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
	j label848
label1112:
	li t2, -1
	li t3, -1
	slt t2, t3, t2
	beq t2, zero, label54
label848:
	bge a2, zero, label56
	j label913
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
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	j label978
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
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	j label978
label42:
	lw t2, 0(a5)
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
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
label1045:
	bge a1, zero, label46
	j label1112
label1135:
	li t2, -1
	bge t2, zero, label75
	j label1137
label87:
	lw t3, 0(a5)
	bge a1, zero, label80
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label54
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	addw t3, t3, t4
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
	j label1135
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
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	bge a2, zero, label39
	li t2, -1
	blt t2, zero, label406
	bge a1, zero, label46
	j label1112
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
	j label659
label75:
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	bge a2, zero, label84
	li t3, -1
	bge a1, zero, label80
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label54
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	addw t3, t3, t4
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
	j label1133
label83:
	addw t4, t1, a3
	slliw t4, t4, 2
	add t4, a0, t4
	lw t4, 0(t4)
	addw t3, t3, t4
	ble t2, t3, label54
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
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
	j label1137
label84:
	blt a2, s1, label85
	li t3, -1
	bge a1, zero, label80
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label54
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	addw t3, t3, t4
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
	j label1143
label80:
	blt a1, s1, label81
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label54
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	addw t3, t3, t4
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
	j label1139
label81:
	bge t1, zero, label82
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label54
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	addw t3, t3, t4
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
	j label1137
label82:
	blt t1, s1, label83
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label54
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	addw t3, t3, t4
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
	j label1137
label1046:
	li t3, -1
	bge a1, zero, label67
	j label1113
label1137:
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	j label1046
label1139:
	li t2, -1
	bge t2, zero, label75
	j label1137
label1143:
	bge a2, zero, label56
	j label1135
label85:
	bge a1, zero, label86
	li t3, -1
	bge a1, zero, label80
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label54
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	addw t3, t3, t4
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
	j label1135
label86:
	blt a1, s1, label87
	li t3, -1
	bge a1, zero, label80
	li t4, -1
	addw t3, t3, t4
	ble t2, t3, label54
	addw t2, t1, a4
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	li t3, -1
	bge a1, zero, label67
	addw t3, t3, t4
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
	j label1135
label1113:
	li t4, -1
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s1, label37
	j label912
label74:
	lw t3, 0(a5)
	bge a1, zero, label67
	li t4, -1
	addw t3, t3, t4
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
	slli t2, t2, 2
	add t2, a0, t2
	bge a2, zero, label71
	bge a1, zero, label67
	j label1113
label1080:
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
label955:
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	j label1022
label1085:
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
label1087:
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	j label1085
label9:
	blt a2, s1, label10
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	j label955
label11:
	blt a1, s1, label12
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	j label1087
label1022:
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	j label1089
label10:
	bge a1, zero, label11
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	j label1087
label1089:
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	j label1087
label13:
	addiw a1, a1, 1
	bge a1, s1, label99
	ble s1, zero, label13
	mv a2, zero
	mulw a3, s1, zero
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	blt zero, s1, label10
	li a3, -1
	sw a3, 0(a4)
	addiw a2, zero, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	j label955
label12:
	slliw a3, a3, 2
	add a3, s2, a3
	lw a3, 0(a3)
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	li a3, -1
	sw a3, 0(a4)
	addiw a2, a2, 1
	bge a2, s1, label13
	mulw a3, s1, a2
	addw a3, a1, a3
	slli a4, a3, 2
	add a4, a0, a4
	bge a2, zero, label9
	j label1087
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
	bge a2, s1, label25
	j label24
label25:
	addiw a2, a1, 16
	bge a2, s1, label28
	j label27
label28:
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
label1096:
	slliw a2, a1, 2
	add a2, a0, a2
	lw a2, 0(a2)
	slliw a3, a1, 2
	add a3, s0, a3
	sw a2, 0(a3)
	addiw a1, a1, 1
	bge a1, s1, label31
	j label1096
label27:
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
	bge a2, s1, label28
	j label27
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
label24:
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
	bge a2, s1, label25
	j label24
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
