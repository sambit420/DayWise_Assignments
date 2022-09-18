#!/bin/bash

# Take a number from user and check if the number is a Prime then show
# that its palindrome is also prime
# a. Write function check if number is Prime
# b. Write function to get the Palindrome.
# c. Check if the Palindrome number is also prime

read -p 'Enter a number: ' num

function checkPalindrome() {
        temp=$num
        rev=0
        while [ $num -gt 0 ]
        do
                rem=$(($num%10))
                rev=$(($rev*10 + $rem))
                num=$(($num / 10))
        done

        if (($temp == $rev))
        then
                echo "$temp is a palindrome number!"
        else
                echo "$temp is not a palindrome number!"
        fi

}

flag=0
for((i=2; i<$(($num/2)); i++))
do
	if [ $(($num%$i)) -eq 0 ]
	then
		flag=1
	fi
done

if (($flag == 1))
then
	echo "$num is not a prime number."
else
	echo "$num is prime number."
	checkPalindrome $num
fi
