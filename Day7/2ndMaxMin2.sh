MAXCOUNT=10
count=1

while [ "$count" -le $MAXCOUNT ]
do
	array[$count]=$(($(($RANDOM%899))+100));
	let "((count++))"
done

echo "${array[*]}"
len=${#array[@]}

for ((i = 0; i<len; i++));
do
    
    for((j = 0; j<len-i-1; j++));
    do
    
        if [[ "${array[j]}" -gt "${array[$((j+1))]}" ]];
        then
            
            temp=${array[j]};
            array[$j]=${array[$((j+1))]};  
            array[$((j+1))]=$temp;
        fi
    done
done

echo "Array in sorted order :"
echo "${array[*]}"

secondMin=${array[2]}
secondMax=${array[$MAXCOUNT-1]}

echo "2nd Smallest is $secondMin"
echo "2nd Largest is $secondMax"
