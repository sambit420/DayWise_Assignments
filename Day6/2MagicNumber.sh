#!/bin/bash

# Find the Magic Number
# a. Ask the user to think of a number n between 1 to 100
# b. Then check with the user if the number is less then n/2 or greater
# c. Repeat till the Magic Number is reached..

echo "Enter a number you want to check"
read n

remainder=1
sum=0
number=$n

while (( $number > 9 ))
do
	while (($number>0))
	do
		remainder=$(($number%10))
		sum=$(($sum + $remainder))
		number=$(($number/10))
	done
	rem=$(($sum%10))
	quo=$(($sum/10))
	number=$(($quo + $rem))

	if(($number==1))
	then
		echo "The given number is a magic number."
	else
		echo "The given number is not a magic number."
	fi
done
