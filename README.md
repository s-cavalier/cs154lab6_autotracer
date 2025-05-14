### Lab 6 AutoTracer
Small changes to the old test suite and now an automatic tracer. For easy of use, just run ./trace.sh `<1 for 1bitpred, 2 for 2bitpred, 3 for predtable> <mips file>` and it will run the program. Available instructions are: <br>
`add, and, addi, lui, ori, slt, lw, sw, beq, bne, nop, li, j, syscall, move` <br>
most syscalls are also available. <br>
You can also `./mipstracer <mips file> <trace output file>` <br>
A lot of tests are built in!
