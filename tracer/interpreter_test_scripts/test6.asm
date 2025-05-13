.text
main:
    li $t0, 1
    li $t1, 2
    li $t2, 3

    add $t3, $t0, $t1     # $t3 = 3
    add $t4, $t3, $t2     # $t4 = 6
    move $a0, $t4         # Print 6

    li $v0, 1
    syscall

    li $v0, 10
    syscall
