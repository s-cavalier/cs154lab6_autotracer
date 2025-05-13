.text
main:
    li $t0, 5         # $t0 = 5
    li $t1, 7         # $t1 = 7
    add $t2, $t0, $t1 # $t2 = 12
    addi $t2, $t2, 3  # $t2 = 15
    move $a0, $t2     # Move result to $a0
    li $v0, 1         # syscall: print_int
    syscall

    li $v0, 10        # syscall: exit
    syscall
