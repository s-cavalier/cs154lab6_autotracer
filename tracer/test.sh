./mipstracer test_scripts/$1 branch.trace > test_dump/$1.real
spim -f test_scripts/$1 > test_dump/$1.exp

diff test_dump/$1.real test_dump/$1.exp