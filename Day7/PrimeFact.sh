read -p "Enter the no" n

index=0

echo "The prime factors of $n are"
for(( p=1; p*p <= $n; p++ ))
do
    if (( $n % $p == 0 ))
    then
        array[index++]=$p
      
    fi
done

array[index]=$n
echo "${array[@]}"
