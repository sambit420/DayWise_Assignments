N=5
i=1
sum=0
echo "Enter 5 nos"
while [ $i -le $N ]
do
	printf "\n"
	read num
	if [ $num -gt 9 ] && [ $num -lt 100 ]
	then
		sum=$((sum+num))
		i=$((i+1))
	else
		echo "$num is not a 2 digit no."
	fi
done
avg=$(echo $sum/$N | bc -l)
echo "sum = $sum"
printf "\n"
echo "avg = $avg"
