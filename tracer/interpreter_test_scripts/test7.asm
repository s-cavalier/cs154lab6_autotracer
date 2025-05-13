.text
main:
    li $t0, 5
    li $t1, 5
    li $t2, 9

    beq $t0, $t2, fail_branch  # Should not jump
    li $a0, 111
    li $v0, 1
    syscall

    bne $t0, $t2, pass_branch  # Should jump

fail_branch:
    li $a0, 999
    li $v0, 1
    syscall

pass_branch:
    li $a0, 222
    li $v0, 1
    syscall

    li $v0, 10
    syscall
