
# $1 = 1 means 1bitpred, $1 = 2 means 2bitpred, $1 = 3 means pred table
# $2 is input ASM file

(
    cd tracer;
    make clean;
    make;
    mv mipstracer ..;
)

./mipstracer $2 mips.traced

python run_predictor.py $1 mips.traced