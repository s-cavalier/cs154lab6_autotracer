        .text
        .globl main
main:
        li   $t0, 1
        li   $t1, 2
        add  $t2, $t0, $t1  # $t2 = 3
        li   $t3, 3
        bne  $t2, $t3, nope
        nop

        # equal path
        li   $v0, 1
        move $a0, $t2       # prints “3”
        syscall
        j    exit
        nop

nope:
        li   $v0, 1
        li   $a0, -1        # prints “-1”
        syscall

exit:
        li   $v0, 10
        syscall
