no_of_individuals=50
declare -A birthday
declare -A birmonth

echo "The birthday $no_of_individuals individuals are: "
for(( individual = 1; individual <= no_of_individuals; individual++ ))
do
    bmonth=$((RANDOM % 12 + 1))
    byear=$((RANDOM % 2 + 92))
case $bmonth in
        1)birmonth[1]="January";;
        2)birmonth[2]="February";;
        3)birmonth[3]="March";;
        4)birmonth[4]="April";;
        5)birmonth[5]="May";;
        6)birmonth[6]="June";;
        7)birmonth[7]="July";;
        8)birmonth[8]="August";;
        9)birmonth[9]="September";;
        10)birmonth[10]="October";;
        11)birmonth[11]="November";;
        12)birmonth[12]="December";;
esac
    echo "$individual birthday in month ${birmonth[$bmonth]} year $byear "
    
    birthday[$bmonth]+=" ${individual}"
done

for month in ${!birthday[@]}
do
    echo "The individuals birthday in month ${birmonth[$month]} "
    for individual in ${birthday[$month]}
    do
        echo -n "$individual ";
	printf "\n";
    done
	
done
