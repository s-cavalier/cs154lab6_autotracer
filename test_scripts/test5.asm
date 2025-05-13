        .text
        .globl main
main:
        li   $t0, 5         # counter

loop:
        beq  $t0, $zero, done
        nop

        # print current counter
        li   $v0, 1
        move $a0, $t0
        syscall

        addi $t0, $t0, -1   # decrement
        j    loop
        nop

done:
        li   $v0, 10
        syscall
