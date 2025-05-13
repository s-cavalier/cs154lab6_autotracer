        .text
        .globl main
main:
        li   $t0, 0
        beq  $zero, $zero, target
        addi $t0, $t0, 5    # delay slot: should always run

target:
        # if delay slot ran, $t0 == 5
        li   $v0, 1
        move $a0, $t0       # prints “5”
        syscall

        li   $v0, 10
        syscall
