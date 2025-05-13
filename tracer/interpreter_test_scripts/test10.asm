.text
main:
    li $t0, 0        # counter
    li $t1, 5        # limit

loop:
    bne $t0, $t1, continue
    j end

continue:
    move $a0, $t0    # print counter
    li $v0, 1
    syscall

    addi $t0, $t0, 1
    j loop

end:
    li $v0, 10
    syscall
