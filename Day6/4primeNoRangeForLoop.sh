
# Extend the program to take a range of number as input and output the Prime
# Numbers in that range
# we need to set the output of factor command to command line using set command then using the $# variable we will determine the number of values 
# in the command line.
# Unix Shell Script To Print Prime Numbers In A Given Range [a, b]

if [ $# -ne 2 ]
then
    echo "Wrong Number Of Arguments"
    exit
fi

if [ $2 -lt 0 -o $1 -lt 0 ]
then
    echo "Argument One Or Two Is Negative."
    exit
fi

a=$1
b=$2

if [ $a -gt $b ]
then
    t=$a
    a=$b
    b=$t
fi

echo "Prime Numbers In Range [$a, $b] Are:"
echo -ne "["

for i in `seq $a 1 $b`
do
    set -- `factor $i`
    if [ $# -eq 2 ]
    then
        echo -ne "$i,"
    fi
done

echo -e "\b]"

# Take input as given below
# $./4primeNoRangeForLoop.sh 1 10

