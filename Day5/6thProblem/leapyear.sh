echo "Enter year"
read n
a=$((n%4))
b=$((n%100))
c=$((n%400))
if [ $c -eq 0 ] || [ $b -ne 0 ] && [ $a -eq 0 ]
then
	echo "$n is a leap year"
else
	echo "$n is not a leap year"
fi

