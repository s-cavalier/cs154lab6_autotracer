.text
main:
    li $t0, 13        # 00001101
    li $t1, 10        # 00001010
    and $t2, $t0, $t1 # $t2 = 8 (00001000)
    ori $t3, $t2, 2   # $t3 = 10 (00001010)
    lui $t4, 3        # $t4 = 3 << 16 = 196608

    move $a0, $t3
    li $v0, 1         # print $t3
    syscall

    move $a0, $t4
    li $v0, 1         # print $t4
    syscall

    li $v0, 10
    syscall
