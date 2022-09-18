#!/bin/bash

# Write a function to check if the two numbers are Palindromes

read -p 'Enter two numbers: ' a b

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

for num in $a $b
do
	checkPalindrome "$num"
done
