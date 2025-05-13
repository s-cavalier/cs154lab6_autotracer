.text
main:
    j skip
    li $a0, 999       # should be skipped
    li $v0, 1
    syscall

skip:
    li $a0, 42
    li $v0, 1
    syscall

    li $v0, 10
    syscall
