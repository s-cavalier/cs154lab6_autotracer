.text
main:
    lui $t0, 1           # $t0 = 65536
    ori $t0, $t0, 255    # $t0 = 65536 | 255 = 65791

    move $a0, $t1
    li $v0, 1
    syscall

    li $v0, 10
    syscall
