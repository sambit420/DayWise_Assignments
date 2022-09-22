declare -A dice
  dice[1]=0
  dice[2]=0
  dice[3]=0
  dice[4]=0
  dice[5]=0
  dice[6]=0

max_count=10
while(( 1 ))
do
	result=$(( RANDOM % 6 + 1 ))
    	(( dice[$result]++))
	if(( dice[$result] == max_count))
    	then
        	break
    	fi

done
max_time=$(( RANDOM % 6 + 1 ))
min_time=$(( RANDOM % 6 + 1 ))
echo "No of the dice :"

for no in ${!dice[@]}
do
	if(( dice[$no] >= dice[$max_time] ))
    	then
        max_time=$no
   	fi

	if(( dice[$no] <= dice[$min_time] ))
    	then
        min_time=$no
    	fi
echo $no " " ${dice[$no]}
done

echo "Maximum times reached no is $max_time"
echo "Minimum times reached no is $min_time"
