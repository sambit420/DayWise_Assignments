# Write a program to compute Factors of a number N using prime factorization
# method.
# Logic -> Traverse till i*i <= N instead of i <= N for efficiency.
# O/P -> Print the prime factors of number N.

echo "Enter a number"
read n

# echo $n|factor
# or we can use for loop

for(( i=2; i<=$n; i++))
do
	if (($n%$i == 0))
	then
		count=0
		while (($n%$i == 0))
		do
			n=$(($n/$i))
			count=$(($count + 1))
		done
		echo "$i --> $count times"
	fi
done
