        .text
        .globl main
main:
        lui  $t0, 1         # $t0 = 0x0001_0000
        ori  $t0, $t0, 2    # $t0 = 0x0001_0002 = 65538
        li   $t1, 65538
        beq  $t0, $t1, matched
        nop

        # not matched
        li   $v0, 1
        li   $a0, 0         # prints “0”
        syscall
        j    exit
        nop

matched:
        li   $v0, 1
        move $a0, $t0       # prints “65538”
        syscall

exit:
        li   $v0, 10
        syscall
