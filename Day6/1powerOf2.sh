
# Write a program that takes a command-line argument n and prints a table of the
# powers of 2 that are less than or equal to 2^n.

isPowerOf2 () {
    local n=$1 i=0
    for ((; n>1; n/=2, i++)); do :; done
    (($1 - (2 ** $i) == 0))
}

for n in {1..17}
do
	isPowerOf2 $n && echo $n;
done
