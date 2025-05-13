        .text
        .globl main
main:
        li   $t0, 3
        li   $t1, 4
        slt  $t2, $t0, $t1  # $t2 = 1
        beq  $t2, $zero, ge
        nop

        # less-than path
        li   $v0, 1
        li   $a0, 100       # prints “100”
        syscall
        j    exit
        nop

ge:
        # greater-or-equal path
        li   $v0, 1
        li   $a0, 200       # prints “200”
        syscall

exit:
        li   $v0, 10
        syscall
