.text
main:
    li $t0, 4
    li $t1, 9
    slt $t2, $t0, $t1  # $t2 = 1 (4 < 9)
    beq $t2, $zero, skip
    li $a0, 100        # Expect to print 100 if slt worked
    li $v0, 1
    syscall

skip:
    bne $t0, $t1, not_equal
    nop                # Should be skipped
    li $a0, 999
    li $v0, 1
    syscall

not_equal:
    li $a0, 200        # Expect to print 200
    li $v0, 1
    syscall

    li $v0, 10
    syscall
