echo "Enter a no"
read n
echo "no is $n"
thousand=$((n%1000))
hun=$((n%100))
ten=$((n%10))
one=$((n%1))
if [ $thousand -eq 0 ]
then
	echo "thousand"
elif [ $hun -eq 0 ]
then
	echo "hun"
elif [ $ten -eq 0 ]
then
	echo "ten"
else
	echo "unit"
fi

