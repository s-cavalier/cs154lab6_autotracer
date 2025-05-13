.text
main:
    li $t0, 100
    li $t1, 200
    li $t2, 300

    addi $sp, $sp, -12
    sw $t0, 0($sp)
    sw $t1, 4($sp)
    sw $t2, 8($sp)

    lw $s0, 0($sp)
    lw $s1, 4($sp)
    lw $s2, 8($sp)

    move $a0, $s0
    li $v0, 1
    syscall

    move $a0, $s1
    li $v0, 1
    syscall

    move $a0, $s2
    li $v0, 1
    syscall

    addi $sp, $sp, 12
    li $v0, 10
    syscall
