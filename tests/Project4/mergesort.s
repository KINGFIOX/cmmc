.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
.text
_entry:
    jal main
    move $a0, $v0
    li $v0, 17
    syscall
read:
    li $v0, 4
    la $a0, _prompt
    syscall
    li $v0, 5
    syscall
    jr $ra
write:
    li $v0, 1
    syscall
    li $v0, 4
    la $a0, _ret
    syscall
    move $v0, $0
    jr $ra

merge:
    addiu $sp, $sp, -216
    sw $ra, 16($sp)
    sw $s0, 192($sp)
    sw $s1, 196($sp)
    sw $s2, 60($sp)
    sw $s3, 48($sp)
    sw $s4, 36($sp)
    sw $s5, 32($sp)
    sw $s6, 156($sp)
    sw $s7, 84($sp)
    move $t0, $a0
    move $t1, $a1
    move $t2, $a2
    move $t3, $a3
    addiu $t4, $t2, 1
    sw $t3, 168($sp)
    sw $t2, 144($sp)
    sw $t1, 180($sp)
    sw $t0, 116($sp)
    bge $t4, $t3, .BB8
    b .BB15
.BB1:
    lw $t0, 144($sp)
    move $t1, $t0
    lw $t2, 184($sp)
    move $t3, $t2
    move $t4, $t0
    sw $t4, 140($sp)
    sw $t3, 132($sp)
    sw $t1, 204($sp)
    b .BB9
.BB2:
    lw $t0, 124($sp)
    move $t1, $t0
    lw $t2, 172($sp)
    move $t3, $t2
    lw $t4, 108($sp)
    move $t5, $t4
    sw $t5, 88($sp)
    sw $t3, 56($sp)
    sw $t1, 44($sp)
    lw $t0, 180($sp)
    move $t1, $t0
    li $t2, 4
    move $t3, $t5
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 96($sp)
    sw $t5, 0($t1)
    lw $t6, 44($sp)
    addiu $t7, $t6, 1
    addiu $t8, $t3, 1
    move $t9, $t8
    lw $s0, 56($sp)
    move $s1, $s0
    move $s2, $t7
    move $s3, $t8
    sw $s3, 72($sp)
    sw $s2, 68($sp)
    sw $s1, 160($sp)
    sw $t9, 104($sp)
    b .BB17
.BB3:
    lw $t0, 172($sp)
    move $t1, $t0
    lw $t2, 124($sp)
    move $t3, $t2
    lw $t4, 108($sp)
    move $t5, $t4
    sw $t5, 24($sp)
    sw $t3, 148($sp)
    sw $t1, 76($sp)
    lw $t0, 180($sp)
    move $t1, $t0
    li $t2, 4
    move $t3, $t5
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 176($sp)
    lw $t6, 0($t5)
    sw $t6, 0($t1)
    lw $t7, 76($sp)
    addiu $t8, $t7, 1
    addiu $t9, $t3, 1
    move $s0, $t9
    move $s1, $t8
    lw $s2, 148($sp)
    move $s3, $s2
    move $s4, $t9
    sw $s4, 72($sp)
    sw $s3, 68($sp)
    sw $s1, 160($sp)
    sw $s0, 104($sp)
    b .BB17
.BB4:
    lw $t0, 100($sp)
    move $t1, $t0
    lw $t2, 112($sp)
    move $t3, $t2
    lw $t4, 208($sp)
    move $t5, $t4
    sw $t5, 64($sp)
    sw $t3, 188($sp)
    sw $t1, 136($sp)
    b .BB11
.BB5:
    lb $t0, 200($sp)
    move $t1, $t0
    sb $t1, 120($sp)
.BB6:
    lb $t0, 120($sp)
    beqz $t0, .BB8
    lw $t0, 144($sp)
    move $t1, $t0
    sw $t1, 164($sp)
.BB7:
    lw $t0, 116($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 164($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 180($sp)
    move $t6, $t5
    li $t7, 4
    mult $t3, $t7
    mflo $t8
    addu $t6, $t6, $t8
    lw $t9, 0($t6)
    sw $t9, 0($t1)
    addiu $s0, $t3, 1
    lw $s1, 168($sp)
    sw $s0, 52($sp)
    beq $s0, $s1, .BB8
    lw $t0, 52($sp)
    move $t1, $t0
    sw $t1, 164($sp)
    b .BB7
.BB8:
    move $v0, $zero
    lw $s7, 84($sp)
    lw $s6, 156($sp)
    lw $s5, 32($sp)
    lw $s4, 36($sp)
    lw $s3, 48($sp)
    lw $s2, 60($sp)
    lw $s1, 196($sp)
    lw $s0, 192($sp)
    lw $ra, 16($sp)
    addiu $sp, $sp, 216
    jr $ra
.BB9:
    lw $t0, 204($sp)
    lw $t1, 184($sp)
    beq $t0, $t1, .BB10
    b .BB13
.BB10:
    lw $t0, 204($sp)
    move $t1, $t0
    lw $t2, 132($sp)
    move $t3, $t2
    lw $t4, 140($sp)
    move $t5, $t4
    sw $t5, 64($sp)
    sw $t3, 188($sp)
    sw $t1, 136($sp)
.BB11:
    lw $t0, 136($sp)
    lw $t1, 184($sp)
    beq $t0, $t1, .BB12
    b .BB16
.BB12:
    lw $t0, 136($sp)
    move $t1, $t0
    lw $t2, 188($sp)
    move $t3, $t2
    lw $t4, 64($sp)
    move $t5, $t4
    sw $t5, 92($sp)
    sw $t3, 80($sp)
    sw $t1, 152($sp)
    lw $t0, 180($sp)
    move $t1, $t0
    li $t2, 4
    move $t3, $t5
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 116($sp)
    move $t6, $t5
    li $t7, 4
    lw $t8, 80($sp)
    mult $t8, $t7
    mflo $t9
    addu $t6, $t6, $t9
    lw $s0, 0($t6)
    sw $s0, 0($t1)
    addiu $s1, $t8, 1
    addiu $s2, $t3, 1
    move $s3, $s2
    lw $s4, 152($sp)
    move $s5, $s4
    move $s6, $s1
    move $s7, $s2
    sw $s7, 72($sp)
    sw $s6, 68($sp)
    sw $s5, 160($sp)
    sw $s3, 104($sp)
    b .BB17
.BB13:
    lw $t0, 204($sp)
    move $t1, $t0
    lw $t2, 132($sp)
    move $t3, $t2
    lw $t4, 140($sp)
    move $t5, $t4
    sw $t5, 208($sp)
    sw $t3, 112($sp)
    sw $t1, 100($sp)
    move $t0, $t3
    lw $t1, 168($sp)
    beq $t0, $t1, .BB4
    lw $t0, 100($sp)
    move $t1, $t0
    lw $t2, 112($sp)
    move $t3, $t2
    lw $t4, 208($sp)
    move $t5, $t4
    sw $t5, 108($sp)
    sw $t3, 124($sp)
    sw $t1, 172($sp)
    lw $t0, 116($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 172($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 0($t1)
    move $t6, $t0
    li $t7, 4
    lw $t8, 124($sp)
    mult $t8, $t7
    mflo $t9
    addu $t6, $t6, $t9
    lw $s0, 0($t6)
    sw $s0, 96($sp)
    sw $t1, 176($sp)
    bge $t5, $s0, .BB2
    b .BB3
.BB14:
    li $t0, -1
    sb $t0, 120($sp)
    b .BB6
.BB15:
    lw $t0, 168($sp)
    lw $t1, 144($sp)
    addu $t2, $t0, $t1
    li $t3, 2
    .set nomacro
    div $zero, $t2, $t3
    .set macro
    mflo $t4
    lw $t5, 116($sp)
    move $a0, $t5
    lw $t6, 180($sp)
    move $a1, $t6
    move $a2, $t1
    move $a3, $t4
    sw $t4, 184($sp)
    jal merge
    move $t7, $v0
    lw $t8, 116($sp)
    move $a0, $t8
    lw $t9, 180($sp)
    move $a1, $t9
    lw $s0, 184($sp)
    move $a2, $s0
    lw $s1, 168($sp)
    move $a3, $s1
    jal merge
    move $s2, $v0
    lw $s3, 144($sp)
    sne $s4, $s3, $s1
    sb $s4, 200($sp)
    beq $s3, $s1, .BB5
    b .BB1
.BB16:
    lw $t0, 136($sp)
    move $t1, $t0
    lw $t2, 188($sp)
    move $t3, $t2
    lw $t4, 64($sp)
    move $t5, $t4
    sw $t5, 28($sp)
    sw $t3, 40($sp)
    sw $t1, 128($sp)
    lw $t0, 180($sp)
    move $t1, $t0
    li $t2, 4
    move $t3, $t5
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 116($sp)
    move $t6, $t5
    li $t7, 4
    lw $t8, 128($sp)
    mult $t8, $t7
    mflo $t9
    addu $t6, $t6, $t9
    lw $s0, 0($t6)
    sw $s0, 0($t1)
    addiu $s1, $t8, 1
    addiu $s2, $t3, 1
    move $s3, $s2
    move $s4, $s1
    lw $s5, 40($sp)
    move $s6, $s5
    move $s7, $s2
    sw $s7, 72($sp)
    sw $s6, 68($sp)
    sw $s4, 160($sp)
    sw $s3, 104($sp)
.BB17:
    lw $t0, 104($sp)
    lw $t1, 168($sp)
    beq $t0, $t1, .BB14
    lw $t0, 160($sp)
    move $t1, $t0
    lw $t2, 68($sp)
    move $t3, $t2
    lw $t4, 72($sp)
    move $t5, $t4
    sw $t5, 140($sp)
    sw $t3, 132($sp)
    sw $t1, 204($sp)
    b .BB9

.globl main
main:
    addiu $sp, $sp, -920
    sw $ra, 16($sp)
    sw $s0, 912($sp)
    sw $s1, 908($sp)
    sw $s2, 900($sp)
    sw $s3, 492($sp)
    sw $s4, 40($sp)
    sw $s5, 80($sp)
    sw $s6, 32($sp)
    sw $s7, 48($sp)
    addiu $t0, $sp, 500
    addiu $t1, $sp, 92
    jal read
    move $t2, $v0
    sgt $t3, $t2, $zero
    sb $t3, 60($sp)
    sw $t2, 68($sp)
    sw $t1, 52($sp)
    sw $t0, 24($sp)
    blez $t2, .BB19
    b .BB20
.BB19:
    lb $t0, 60($sp)
    move $t1, $t0
    sb $t1, 72($sp)
    b .BB22
.BB20:
    li $t0, 15
    lw $t1, 68($sp)
    ble $t1, $t0, .BB25
    b .BB24
.BB21:
    li $t0, -1
    sb $t0, 72($sp)
.BB22:
    lw $t0, 24($sp)
    move $a0, $t0
    lw $t1, 52($sp)
    move $a1, $t1
    move $a2, $zero
    lw $t2, 68($sp)
    move $a3, $t2
    jal merge
    move $t3, $v0
    lb $t4, 72($sp)
    beqz $t4, .BB26
.BB23:
    li $t0, 15
    lw $t1, 68($sp)
    ble $t1, $t0, .BB31
    b .BB30
.BB24:
    lw $t0, 24($sp)
    move $t1, $t0
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    addiu $t3, $t0, 4
    jal read
    move $t4, $v0
    sw $t4, 0($t3)
    addiu $t5, $t0, 8
    jal read
    move $t6, $v0
    sw $t6, 0($t5)
    addiu $t7, $t0, 12
    jal read
    move $t8, $v0
    sw $t8, 0($t7)
    addiu $t9, $t0, 16
    jal read
    move $s0, $v0
    sw $s0, 0($t9)
    addiu $s1, $t0, 20
    jal read
    move $s2, $v0
    sw $s2, 0($s1)
    addiu $s3, $t0, 24
    jal read
    move $s4, $v0
    sw $s4, 0($s3)
    addiu $s5, $t0, 28
    jal read
    move $s6, $v0
    sw $s6, 0($s5)
    addiu $s7, $t0, 32
    jal read
    move $t0, $v0
    sw $t0, 0($s7)
    lw $t1, 24($sp)
    addiu $t2, $t1, 36
    jal read
    move $t3, $v0
    sw $t3, 0($t2)
    addiu $t4, $t1, 40
    jal read
    move $t5, $v0
    sw $t5, 0($t4)
    addiu $t6, $t1, 44
    jal read
    move $t7, $v0
    sw $t7, 0($t6)
    addiu $t8, $t1, 48
    jal read
    move $t9, $v0
    sw $t9, 0($t8)
    addiu $s0, $t1, 52
    jal read
    move $s1, $v0
    sw $s1, 0($s0)
    addiu $s2, $t1, 56
    jal read
    move $s3, $v0
    sw $s3, 0($s2)
    addiu $s4, $t1, 60
    jal read
    move $s5, $v0
    sw $s5, 0($s4)
    li $s6, 16
    lw $s7, 68($sp)
    ble $s7, $s6, .BB29
    b .BB27
.BB25:
    lw $t0, 24($sp)
    move $t1, $t0
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 1
    lw $t4, 68($sp)
    ble $t4, $t3, .BB29
    lw $t0, 24($sp)
    addiu $t1, $t0, 4
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 2
    lw $t4, 68($sp)
    ble $t4, $t3, .BB29
    b .BB34
.BB26:
    move $v0, $zero
    lw $s7, 48($sp)
    lw $s6, 32($sp)
    lw $s5, 80($sp)
    lw $s4, 40($sp)
    lw $s3, 492($sp)
    lw $s2, 900($sp)
    lw $s1, 908($sp)
    lw $s0, 912($sp)
    lw $ra, 16($sp)
    addiu $sp, $sp, 920
    jr $ra
.BB27:
    li $t0, 31
    lw $t1, 68($sp)
    ble $t1, $t0, .BB33
    b .BB32
.BB28:
    li $t0, -1
    sb $t0, 72($sp)
    b .BB22
.BB29:
    lw $t0, 24($sp)
    move $a0, $t0
    lw $t1, 52($sp)
    move $a1, $t1
    move $a2, $zero
    lw $t2, 68($sp)
    move $a3, $t2
    jal merge
    move $t3, $v0
    li $t4, 15
    lw $t5, 68($sp)
    ble $t5, $t4, .BB31
.BB30:
    lw $t0, 24($sp)
    move $t1, $t0
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    addiu $t3, $t0, 4
    lw $t4, 0($t3)
    move $a0, $t4
    jal write
    addiu $t5, $t0, 8
    lw $t6, 0($t5)
    move $a0, $t6
    jal write
    addiu $t7, $t0, 12
    lw $t8, 0($t7)
    move $a0, $t8
    jal write
    addiu $t9, $t0, 16
    lw $s0, 0($t9)
    move $a0, $s0
    jal write
    addiu $s1, $t0, 20
    lw $s2, 0($s1)
    move $a0, $s2
    jal write
    addiu $s3, $t0, 24
    lw $s4, 0($s3)
    move $a0, $s4
    jal write
    addiu $s5, $t0, 28
    lw $s6, 0($s5)
    move $a0, $s6
    jal write
    addiu $s7, $t0, 32
    lw $t0, 0($s7)
    move $a0, $t0
    jal write
    lw $t1, 24($sp)
    addiu $t2, $t1, 36
    lw $t3, 0($t2)
    move $a0, $t3
    jal write
    addiu $t4, $t1, 40
    lw $t5, 0($t4)
    move $a0, $t5
    jal write
    addiu $t6, $t1, 44
    lw $t7, 0($t6)
    move $a0, $t7
    jal write
    addiu $t8, $t1, 48
    lw $t9, 0($t8)
    move $a0, $t9
    jal write
    addiu $s0, $t1, 52
    lw $s1, 0($s0)
    move $a0, $s1
    jal write
    addiu $s2, $t1, 56
    lw $s3, 0($s2)
    move $a0, $s3
    jal write
    addiu $s4, $t1, 60
    lw $s5, 0($s4)
    move $a0, $s5
    jal write
    li $s6, 16
    lw $s7, 68($sp)
    ble $s7, $s6, .BB26
    li $t0, 31
    lw $t1, 68($sp)
    ble $t1, $t0, .BB40
    b .BB35
.BB31:
    lw $t0, 24($sp)
    move $t1, $t0
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 1
    lw $t4, 68($sp)
    ble $t4, $t3, .BB26
    b .BB37
.BB32:
    lw $t0, 24($sp)
    addiu $t1, $t0, 64
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    addiu $t3, $t0, 68
    jal read
    move $t4, $v0
    sw $t4, 0($t3)
    addiu $t5, $t0, 72
    jal read
    move $t6, $v0
    sw $t6, 0($t5)
    addiu $t7, $t0, 76
    jal read
    move $t8, $v0
    sw $t8, 0($t7)
    addiu $t9, $t0, 80
    jal read
    move $s0, $v0
    sw $s0, 0($t9)
    addiu $s1, $t0, 84
    jal read
    move $s2, $v0
    sw $s2, 0($s1)
    addiu $s3, $t0, 88
    jal read
    move $s4, $v0
    sw $s4, 0($s3)
    addiu $s5, $t0, 92
    jal read
    move $s6, $v0
    sw $s6, 0($s5)
    addiu $s7, $t0, 96
    jal read
    move $t0, $v0
    sw $t0, 0($s7)
    lw $t1, 24($sp)
    addiu $t2, $t1, 100
    jal read
    move $t3, $v0
    sw $t3, 0($t2)
    addiu $t4, $t1, 104
    jal read
    move $t5, $v0
    sw $t5, 0($t4)
    addiu $t6, $t1, 108
    jal read
    move $t7, $v0
    sw $t7, 0($t6)
    addiu $t8, $t1, 112
    jal read
    move $t9, $v0
    sw $t9, 0($t8)
    addiu $s0, $t1, 116
    jal read
    move $s1, $v0
    sw $s1, 0($s0)
    addiu $s2, $t1, 120
    jal read
    move $s3, $v0
    sw $s3, 0($s2)
    addiu $s4, $t1, 124
    jal read
    move $s5, $v0
    sw $s5, 0($s4)
    li $s6, 32
    lw $s7, 68($sp)
    ble $s7, $s6, .BB29
    b .BB41
.BB33:
    lw $t0, 24($sp)
    addiu $t1, $t0, 64
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 17
    lw $t4, 68($sp)
    ble $t4, $t3, .BB29
    b .BB38
.BB34:
    lw $t0, 24($sp)
    addiu $t1, $t0, 8
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 3
    lw $t4, 68($sp)
    ble $t4, $t3, .BB29
    lw $t0, 24($sp)
    addiu $t1, $t0, 12
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 4
    lw $t4, 68($sp)
    ble $t4, $t3, .BB29
    b .BB44
.BB35:
    lw $t0, 24($sp)
    addiu $t1, $t0, 64
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    addiu $t3, $t0, 68
    lw $t4, 0($t3)
    move $a0, $t4
    jal write
    addiu $t5, $t0, 72
    lw $t6, 0($t5)
    move $a0, $t6
    jal write
    addiu $t7, $t0, 76
    lw $t8, 0($t7)
    move $a0, $t8
    jal write
    addiu $t9, $t0, 80
    lw $s0, 0($t9)
    move $a0, $s0
    jal write
    addiu $s1, $t0, 84
    lw $s2, 0($s1)
    move $a0, $s2
    jal write
    addiu $s3, $t0, 88
    lw $s4, 0($s3)
    move $a0, $s4
    jal write
    addiu $s5, $t0, 92
    lw $s6, 0($s5)
    move $a0, $s6
    jal write
    addiu $s7, $t0, 96
    lw $t0, 0($s7)
    move $a0, $t0
    jal write
    lw $t1, 24($sp)
    addiu $t2, $t1, 100
    lw $t3, 0($t2)
    move $a0, $t3
    jal write
    addiu $t4, $t1, 104
    lw $t5, 0($t4)
    move $a0, $t5
    jal write
    addiu $t6, $t1, 108
    lw $t7, 0($t6)
    move $a0, $t7
    jal write
    addiu $t8, $t1, 112
    lw $t9, 0($t8)
    move $a0, $t9
    jal write
    addiu $s0, $t1, 116
    lw $s1, 0($s0)
    move $a0, $s1
    jal write
    addiu $s2, $t1, 120
    lw $s3, 0($s2)
    move $a0, $s3
    jal write
    addiu $s4, $t1, 124
    lw $s5, 0($s4)
    move $a0, $s5
    jal write
    li $s6, 32
    lw $s7, 68($sp)
    ble $s7, $s6, .BB26
    b .BB45
.BB36:
    li $t0, -1
    sb $t0, 72($sp)
    b .BB22
.BB37:
    lw $t0, 24($sp)
    addiu $t1, $t0, 4
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 2
    lw $t4, 68($sp)
    ble $t4, $t3, .BB26
    lw $t0, 24($sp)
    addiu $t1, $t0, 8
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 3
    lw $t4, 68($sp)
    ble $t4, $t3, .BB26
    b .BB46
.BB38:
    lw $t0, 24($sp)
    addiu $t1, $t0, 68
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 18
    lw $t4, 68($sp)
    ble $t4, $t3, .BB29
    lw $t0, 24($sp)
    addiu $t1, $t0, 72
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 19
    lw $t4, 68($sp)
    ble $t4, $t3, .BB47
    b .BB48
.BB39:
    lw $t0, 24($sp)
    addiu $t1, $t0, 132
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 34
    lw $t4, 68($sp)
    ble $t4, $t3, .BB47
    b .BB54
.BB40:
    lw $t0, 24($sp)
    addiu $t1, $t0, 64
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 17
    lw $t4, 68($sp)
    ble $t4, $t3, .BB26
    lw $t0, 24($sp)
    addiu $t1, $t0, 68
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 18
    lw $t4, 68($sp)
    ble $t4, $t3, .BB26
    b .BB42
.BB41:
    li $t0, 47
    lw $t1, 68($sp)
    ble $t1, $t0, .BB43
    lw $t0, 24($sp)
    addiu $t1, $t0, 128
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    addiu $t3, $t0, 132
    jal read
    move $t4, $v0
    sw $t4, 0($t3)
    addiu $t5, $t0, 136
    jal read
    move $t6, $v0
    sw $t6, 0($t5)
    addiu $t7, $t0, 140
    jal read
    move $t8, $v0
    sw $t8, 0($t7)
    addiu $t9, $t0, 144
    jal read
    move $s0, $v0
    sw $s0, 0($t9)
    addiu $s1, $t0, 148
    jal read
    move $s2, $v0
    sw $s2, 0($s1)
    addiu $s3, $t0, 152
    jal read
    move $s4, $v0
    sw $s4, 0($s3)
    addiu $s5, $t0, 156
    jal read
    move $s6, $v0
    sw $s6, 0($s5)
    addiu $s7, $t0, 160
    jal read
    move $t0, $v0
    sw $t0, 0($s7)
    lw $t1, 24($sp)
    addiu $t2, $t1, 164
    jal read
    move $t3, $v0
    sw $t3, 0($t2)
    addiu $t4, $t1, 168
    jal read
    move $t5, $v0
    sw $t5, 0($t4)
    addiu $t6, $t1, 172
    jal read
    move $t7, $v0
    sw $t7, 0($t6)
    addiu $t8, $t1, 176
    jal read
    move $t9, $v0
    sw $t9, 0($t8)
    addiu $s0, $t1, 180
    jal read
    move $s1, $v0
    sw $s1, 0($s0)
    addiu $s2, $t1, 184
    jal read
    move $s3, $v0
    sw $s3, 0($s2)
    addiu $s4, $t1, 188
    jal read
    move $s5, $v0
    sw $s5, 0($s4)
    li $s6, 48
    lw $s7, 68($sp)
    ble $s7, $s6, .BB29
    li $t0, 63
    lw $t1, 68($sp)
    ble $t1, $t0, .BB53
    b .BB52
.BB42:
    lw $t0, 24($sp)
    addiu $t1, $t0, 72
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 19
    lw $t4, 68($sp)
    ble $t4, $t3, .BB26
    b .BB60
.BB43:
    lw $t0, 24($sp)
    addiu $t1, $t0, 128
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 33
    lw $t4, 68($sp)
    ble $t4, $t3, .BB47
    b .BB39
.BB44:
    lw $t0, 24($sp)
    addiu $t1, $t0, 16
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 5
    lw $t4, 68($sp)
    ble $t4, $t3, .BB47
    b .BB49
.BB45:
    li $t0, 47
    lw $t1, 68($sp)
    ble $t1, $t0, .BB50
    lw $t0, 24($sp)
    addiu $t1, $t0, 128
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    addiu $t3, $t0, 132
    lw $t4, 0($t3)
    move $a0, $t4
    jal write
    addiu $t5, $t0, 136
    lw $t6, 0($t5)
    move $a0, $t6
    jal write
    addiu $t7, $t0, 140
    lw $t8, 0($t7)
    move $a0, $t8
    jal write
    addiu $t9, $t0, 144
    lw $s0, 0($t9)
    move $a0, $s0
    jal write
    addiu $s1, $t0, 148
    lw $s2, 0($s1)
    move $a0, $s2
    jal write
    addiu $s3, $t0, 152
    lw $s4, 0($s3)
    move $a0, $s4
    jal write
    addiu $s5, $t0, 156
    lw $s6, 0($s5)
    move $a0, $s6
    jal write
    addiu $s7, $t0, 160
    lw $t0, 0($s7)
    move $a0, $t0
    jal write
    lw $t1, 24($sp)
    addiu $t2, $t1, 164
    lw $t3, 0($t2)
    move $a0, $t3
    jal write
    addiu $t4, $t1, 168
    lw $t5, 0($t4)
    move $a0, $t5
    jal write
    addiu $t6, $t1, 172
    lw $t7, 0($t6)
    move $a0, $t7
    jal write
    addiu $t8, $t1, 176
    lw $t9, 0($t8)
    move $a0, $t9
    jal write
    addiu $s0, $t1, 180
    lw $s1, 0($s0)
    move $a0, $s1
    jal write
    addiu $s2, $t1, 184
    lw $s3, 0($s2)
    move $a0, $s3
    jal write
    addiu $s4, $t1, 188
    lw $s5, 0($s4)
    move $a0, $s5
    jal write
    li $s6, 48
    lw $s7, 68($sp)
    ble $s7, $s6, .BB26
    b .BB64
.BB46:
    lw $t0, 24($sp)
    addiu $t1, $t0, 12
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 4
    lw $t4, 68($sp)
    ble $t4, $t3, .BB26
    b .BB51
.BB47:
    lw $t0, 24($sp)
    move $a0, $t0
    lw $t1, 52($sp)
    move $a1, $t1
    move $a2, $zero
    lw $t2, 68($sp)
    move $a3, $t2
    jal merge
    move $t3, $v0
    b .BB23
.BB48:
    lw $t0, 24($sp)
    addiu $t1, $t0, 76
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 20
    lw $t4, 68($sp)
    ble $t4, $t3, .BB47
    b .BB55
.BB49:
    lw $t0, 24($sp)
    addiu $t1, $t0, 20
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 6
    lw $t4, 68($sp)
    ble $t4, $t3, .BB47
    lw $t0, 24($sp)
    addiu $t1, $t0, 24
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 7
    lw $t4, 68($sp)
    ble $t4, $t3, .BB21
    b .BB57
.BB50:
    lw $t0, 24($sp)
    addiu $t1, $t0, 128
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 33
    lw $t4, 68($sp)
    ble $t4, $t3, .BB26
    b .BB59
.BB51:
    lw $t0, 24($sp)
    addiu $t1, $t0, 16
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 5
    lw $t4, 68($sp)
    ble $t4, $t3, .BB26
    b .BB61
.BB52:
    lw $t0, 24($sp)
    addiu $t1, $t0, 192
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    addiu $t3, $t0, 196
    jal read
    move $t4, $v0
    sw $t4, 0($t3)
    addiu $t5, $t0, 200
    jal read
    move $t6, $v0
    sw $t6, 0($t5)
    addiu $t7, $t0, 204
    jal read
    move $t8, $v0
    sw $t8, 0($t7)
    addiu $t9, $t0, 208
    jal read
    move $s0, $v0
    sw $s0, 0($t9)
    addiu $s1, $t0, 212
    jal read
    move $s2, $v0
    sw $s2, 0($s1)
    addiu $s3, $t0, 216
    jal read
    move $s4, $v0
    sw $s4, 0($s3)
    addiu $s5, $t0, 220
    jal read
    move $s6, $v0
    sw $s6, 0($s5)
    addiu $s7, $t0, 224
    jal read
    move $t0, $v0
    sw $t0, 0($s7)
    lw $t1, 24($sp)
    addiu $t2, $t1, 228
    jal read
    move $t3, $v0
    sw $t3, 0($t2)
    addiu $t4, $t1, 232
    jal read
    move $t5, $v0
    sw $t5, 0($t4)
    addiu $t6, $t1, 236
    jal read
    move $t7, $v0
    sw $t7, 0($t6)
    addiu $t8, $t1, 240
    jal read
    move $t9, $v0
    sw $t9, 0($t8)
    addiu $s0, $t1, 244
    jal read
    move $s1, $v0
    sw $s1, 0($s0)
    addiu $s2, $t1, 248
    jal read
    move $s3, $v0
    sw $s3, 0($s2)
    addiu $s4, $t1, 252
    jal read
    move $s5, $v0
    sw $s5, 0($s4)
    li $s6, 64
    lw $s7, 68($sp)
    ble $s7, $s6, .BB29
    li $t0, 64
    sw $t0, 64($sp)
    b .BB69
.BB53:
    lw $t0, 24($sp)
    addiu $t1, $t0, 192
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 49
    lw $t4, 68($sp)
    ble $t4, $t3, .BB36
    li $t0, 49
    sw $t0, 44($sp)
    b .BB58
.BB54:
    lw $t0, 24($sp)
    addiu $t1, $t0, 136
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 35
    lw $t4, 68($sp)
    ble $t4, $t3, .BB28
    li $t0, 35
    sw $t0, 44($sp)
    b .BB58
.BB55:
    lw $t0, 24($sp)
    addiu $t1, $t0, 80
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 21
    lw $t4, 68($sp)
    ble $t4, $t3, .BB56
    li $t0, 21
    sw $t0, 44($sp)
    b .BB58
.BB56:
    li $t0, -1
    sb $t0, 72($sp)
    b .BB22
.BB57:
    li $t0, 7
    sw $t0, 44($sp)
.BB58:
    lw $t0, 24($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 44($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    jal read
    move $t5, $v0
    sw $t5, 0($t1)
    addiu $t6, $t3, 1
    lw $t7, 68($sp)
    sw $t6, 36($sp)
    bge $t6, $t7, .BB62
    lw $t0, 36($sp)
    move $t1, $t0
    sw $t1, 44($sp)
    b .BB58
.BB59:
    lw $t0, 24($sp)
    addiu $t1, $t0, 132
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 34
    lw $t4, 68($sp)
    ble $t4, $t3, .BB26
    b .BB66
.BB60:
    lw $t0, 24($sp)
    addiu $t1, $t0, 76
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 20
    lw $t4, 68($sp)
    ble $t4, $t3, .BB26
    b .BB67
.BB61:
    lw $t0, 24($sp)
    addiu $t1, $t0, 20
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 6
    lw $t4, 68($sp)
    ble $t4, $t3, .BB26
    lw $t0, 24($sp)
    addiu $t1, $t0, 24
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 7
    lw $t4, 68($sp)
    ble $t4, $t3, .BB26
    li $t0, 7
    sw $t0, 88($sp)
    b .BB72
.BB62:
    li $t0, -1
    sb $t0, 72($sp)
    b .BB22
.BB63:
    lw $t0, 24($sp)
    addiu $t1, $t0, 192
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    addiu $t3, $t0, 196
    lw $t4, 0($t3)
    move $a0, $t4
    jal write
    addiu $t5, $t0, 200
    lw $t6, 0($t5)
    move $a0, $t6
    jal write
    addiu $t7, $t0, 204
    lw $t8, 0($t7)
    move $a0, $t8
    jal write
    addiu $t9, $t0, 208
    lw $s0, 0($t9)
    move $a0, $s0
    jal write
    addiu $s1, $t0, 212
    lw $s2, 0($s1)
    move $a0, $s2
    jal write
    addiu $s3, $t0, 216
    lw $s4, 0($s3)
    move $a0, $s4
    jal write
    addiu $s5, $t0, 220
    lw $s6, 0($s5)
    move $a0, $s6
    jal write
    addiu $s7, $t0, 224
    lw $t0, 0($s7)
    move $a0, $t0
    jal write
    lw $t1, 24($sp)
    addiu $t2, $t1, 228
    lw $t3, 0($t2)
    move $a0, $t3
    jal write
    addiu $t4, $t1, 232
    lw $t5, 0($t4)
    move $a0, $t5
    jal write
    addiu $t6, $t1, 236
    lw $t7, 0($t6)
    move $a0, $t7
    jal write
    addiu $t8, $t1, 240
    lw $t9, 0($t8)
    move $a0, $t9
    jal write
    addiu $s0, $t1, 244
    lw $s1, 0($s0)
    move $a0, $s1
    jal write
    addiu $s2, $t1, 248
    lw $s3, 0($s2)
    move $a0, $s3
    jal write
    addiu $s4, $t1, 252
    lw $s5, 0($s4)
    move $a0, $s5
    jal write
    li $s6, 64
    lw $s7, 68($sp)
    ble $s7, $s6, .BB26
    li $t0, 64
    sw $t0, 84($sp)
    b .BB74
.BB64:
    li $t0, 63
    lw $t1, 68($sp)
    ble $t1, $t0, .BB65
    b .BB63
.BB65:
    lw $t0, 24($sp)
    addiu $t1, $t0, 192
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 49
    lw $t4, 68($sp)
    ble $t4, $t3, .BB26
    li $t0, 49
    sw $t0, 88($sp)
    b .BB72
.BB66:
    lw $t0, 24($sp)
    addiu $t1, $t0, 136
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 35
    lw $t4, 68($sp)
    ble $t4, $t3, .BB26
    li $t0, 35
    sw $t0, 88($sp)
    b .BB72
.BB67:
    lw $t0, 24($sp)
    addiu $t1, $t0, 80
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 21
    lw $t4, 68($sp)
    ble $t4, $t3, .BB26
    li $t0, 21
    sw $t0, 88($sp)
    b .BB72
.BB68:
    lw $t0, 64($sp)
    move $t1, $t0
    sw $t1, 28($sp)
    lw $t0, 24($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 28($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    jal read
    move $t5, $v0
    sw $t5, 0($t1)
    addiu $t6, $t1, 4
    jal read
    move $t7, $v0
    sw $t7, 0($t6)
    addiu $t8, $t1, 8
    jal read
    move $t9, $v0
    sw $t9, 0($t8)
    addiu $s0, $t1, 12
    jal read
    move $s1, $v0
    sw $s1, 0($s0)
    addiu $s2, $t1, 16
    jal read
    move $s3, $v0
    sw $s3, 0($s2)
    addiu $s4, $t1, 20
    jal read
    move $s5, $v0
    sw $s5, 0($s4)
    addiu $s6, $t1, 24
    jal read
    move $s7, $v0
    sw $s7, 0($s6)
    addiu $t0, $t1, 28
    jal read
    sw $t1, 76($sp)
    move $t1, $v0
    sw $t1, 0($t0)
    lw $t2, 76($sp)
    addiu $t3, $t2, 32
    jal read
    move $t4, $v0
    sw $t4, 0($t3)
    addiu $t5, $t2, 36
    jal read
    move $t6, $v0
    sw $t6, 0($t5)
    addiu $t7, $t2, 40
    jal read
    move $t8, $v0
    sw $t8, 0($t7)
    addiu $t9, $t2, 44
    jal read
    move $s0, $v0
    sw $s0, 0($t9)
    addiu $s1, $t2, 48
    jal read
    move $s2, $v0
    sw $s2, 0($s1)
    addiu $s3, $t2, 52
    jal read
    move $s4, $v0
    sw $s4, 0($s3)
    addiu $s5, $t2, 56
    jal read
    move $s6, $v0
    sw $s6, 0($s5)
    addiu $s7, $t2, 60
    jal read
    move $t0, $v0
    sw $t0, 0($s7)
    lw $t1, 28($sp)
    addiu $t2, $t1, 16
    lw $t3, 68($sp)
    sw $t2, 496($sp)
    bge $t2, $t3, .BB29
    lw $t0, 496($sp)
    move $t1, $t0
    sw $t1, 64($sp)
.BB69:
    lw $t0, 64($sp)
    addiu $t1, $t0, 15
    lw $t2, 68($sp)
    bge $t1, $t2, .BB70
    b .BB68
.BB70:
    lw $t0, 64($sp)
    move $t1, $t0
    sw $t1, 44($sp)
    b .BB58
.BB71:
    lw $t0, 84($sp)
    move $t1, $t0
    sw $t1, 88($sp)
.BB72:
    lw $t0, 24($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 88($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 0($t1)
    move $a0, $t5
    jal write
    addiu $t6, $t3, 1
    lw $t7, 68($sp)
    sw $t6, 916($sp)
    bge $t6, $t7, .BB26
    lw $t0, 916($sp)
    move $t1, $t0
    sw $t1, 88($sp)
    b .BB72
.BB73:
    lw $t0, 84($sp)
    move $t1, $t0
    sw $t1, 904($sp)
    lw $t0, 24($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 904($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 0($t1)
    move $a0, $t5
    jal write
    addiu $t6, $t1, 4
    lw $t7, 0($t6)
    move $a0, $t7
    jal write
    addiu $t8, $t1, 8
    lw $t9, 0($t8)
    move $a0, $t9
    jal write
    addiu $s0, $t1, 12
    lw $s1, 0($s0)
    move $a0, $s1
    jal write
    addiu $s2, $t1, 16
    lw $s3, 0($s2)
    move $a0, $s3
    jal write
    addiu $s4, $t1, 20
    lw $s5, 0($s4)
    move $a0, $s5
    jal write
    addiu $s6, $t1, 24
    lw $s7, 0($s6)
    move $a0, $s7
    jal write
    addiu $t0, $t1, 28
    sw $t1, 76($sp)
    lw $t1, 0($t0)
    move $a0, $t1
    jal write
    lw $t2, 76($sp)
    addiu $t3, $t2, 32
    lw $t4, 0($t3)
    move $a0, $t4
    jal write
    addiu $t5, $t2, 36
    lw $t6, 0($t5)
    move $a0, $t6
    jal write
    addiu $t7, $t2, 40
    lw $t8, 0($t7)
    move $a0, $t8
    jal write
    addiu $t9, $t2, 44
    lw $s0, 0($t9)
    move $a0, $s0
    jal write
    addiu $s1, $t2, 48
    lw $s2, 0($s1)
    move $a0, $s2
    jal write
    addiu $s3, $t2, 52
    lw $s4, 0($s3)
    move $a0, $s4
    jal write
    addiu $s5, $t2, 56
    lw $s6, 0($s5)
    move $a0, $s6
    jal write
    addiu $s7, $t2, 60
    lw $t0, 0($s7)
    move $a0, $t0
    jal write
    lw $t1, 904($sp)
    addiu $t2, $t1, 16
    lw $t3, 68($sp)
    sw $t2, 56($sp)
    bge $t2, $t3, .BB26
    lw $t0, 56($sp)
    move $t1, $t0
    sw $t1, 84($sp)
.BB74:
    lw $t0, 84($sp)
    addiu $t1, $t0, 15
    lw $t2, 68($sp)
    bge $t1, $t2, .BB71
    b .BB73

