(
    cd tracer;
    make clean;
    make;
    mv mipstracer ..;
)

./mipstracer $1 mips.traced