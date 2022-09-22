index=0
for ((i=0; i<=100; i++));
do
	arr[index++]=$i;
done

echo "${arr[@]}"
n=${#arr[@]}

for ((i=1; i<=$n; i++));
do
	if [ $(($((${arr[i]}%10 )))) == $(($((${arr[i]} / 10 )))) ]
	then
		arr2[index++]=${arr[i]}
fi
done
echo "${arr2[@]}"
