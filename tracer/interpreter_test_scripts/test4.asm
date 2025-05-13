.text
main:
    li $t0, 123
    addi $sp, $sp, -4  # allocate space
    sw $t0, 0($sp)     # store 123
    lw $t1, 0($sp)     # load back into $t1

    move $a0, $t1
    li $v0, 1
    syscall

    addi $sp, $sp, 4   # deallocate
    li $v0, 10
    syscall
