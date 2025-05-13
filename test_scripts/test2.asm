        .text
        .globl main
main:
        li   $t0, 7
        li   $t1, 8
        bne  $t0, $t1, not_equal
        nop

        # equal path (should not happen)
        li   $v0, 1
        li   $a0, -1
        syscall
        j    exit
        nop

not_equal:
        # not-equal path
        li   $v0, 1
        li   $a0, 1       # prints “1”
        syscall

exit:
        li   $v0, 10
        syscall
