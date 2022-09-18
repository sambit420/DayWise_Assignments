
# Extend the program to take a range of number as input and output the Prime
# Numbers in that range

echo "Enter a range"
read range

echo 2
j=3
while [ $j -le $range ]
do
	i=2
	x=`expr $j - 1`
	while [ $i -le $x ]
	do
		if [ `expr $j % $i` -ne 0 ]
		then
			i=`expr $i + 1`
		else
			break
		fi
	done
	if [ $i -eq $j ]
	then
		echo $j
	fi
	j=`expr $j + 1`
done
