        .text
        .globl main
main:
        li   $sp, 1000
        addi $sp, $sp, -8

        # store two values
        li   $t0, 42
        sw   $t0, 4($sp)
        li   $t1, 100
        sw   $t1, 0($sp)

        # load back and compare
        lw   $t2, 4($sp)
        li   $t3, 42
        beq  $t2, $t3, mem_ok
        nop

        # load failed
        li   $v0, 1
        li   $a0, 0         # prints “0”
        syscall
        j    exit
        nop

mem_ok:
        li   $v0, 1
        move $a0, $t2       # prints “42”
        syscall

exit:
        li   $v0, 10
        syscall
