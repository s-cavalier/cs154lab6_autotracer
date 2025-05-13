        .text
        .globl main
main:
        li   $t0, 5
        li   $t1, 5
        beq  $t0, $t1, equal
        nop               # delay slot

        # not-equal path
        li   $v0, 1       # print integer
        li   $a0, 0       # prints “0”
        syscall
        j    exit
        nop

equal:
        # equal path
        li   $v0, 1
        move $a0, $t0     # prints “5”
        syscall

exit:
        li   $v0, 10      # exit
        syscall
