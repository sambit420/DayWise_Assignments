read -p "enter size of array" b
index=0

for ((a = 0; a < b; a++))
do
	read c
	array[index++]=$c
done
# echo "${array[@]}"

n=${#array[@]}


for ((i = 0; i < $n-2; i++));
do

	for ((j = $i+1; j < $n-1; j++));
	do
		for ((k = $j+1; k < $n; k++))
		do
			tot=$((${array[i]} + ${array[j]} + ${array[k]}))
			
			if (($tot == 0))
			then
			d=$d+1
			echo " Triplets are === ${array[i]}  ${array[j]}  ${array[k]}"
			fi
		done
	done
done
if ((d==0))
then
	echo "provide an valid array where triplets can zero"
fi

