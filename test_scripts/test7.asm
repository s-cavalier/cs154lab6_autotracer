        .text
        .globl main
main:
        li   $t0, 6         # 0b110
        li   $t1, 3         # 0b011
        and  $t2, $t0, $t1  # $t2 = 2
        li   $t3, 2
        beq  $t2, $t3, ok
        nop

        # fail case
        li   $v0, 1
        li   $a0, 0         # prints “0”
        syscall
        j    exit
        nop

ok:
        li   $v0, 1
        move $a0, $t2       # prints “2”
        syscall

exit:
        li   $v0, 10
        syscall
