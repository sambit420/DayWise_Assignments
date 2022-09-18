N=5
i=1
max=0
min=0
echo "Enter 5 nos"
while [ $i -le $N ]
do
        printf "\n"
	read num
	if [ $num -gt 99 ] && [ $num -lt 1000 ]
        then
                if [ $i -eq 1 ]
		then
			max=$num
			min=$num
                elif [ $num -gt $max ]
		then
			max=$num
		elif [ $num -lt $min ]
		then
			min=$num
		fi
        else
                echo "$num is not a 2 digit no."
        fi
i=$((i+1))
done
echo "maximum is $max"
echo "minimum is $min"
