
# Write a program that takes a input and determines if the number is a prime.

echo "Enter a number"
read n

for ((i=2; i<=n/2; i++))
do
	ans=$(( n%i ))
	if (( $ans == 0 ))
	then
		echo "$n is not a prime number."
		exit 0
	fi
done

if (( $n == 1))
then
	echo "1 is a composite number."
else
	echo "$n is a prime number."
fi

