echo "Enter the length"
read n
echo "Enter the width"
read m
echo "Enter unit"
read unit
if [ $unit == ft ]
then
        area1=$((n*m))
	echo "Area is $area1 sq.ft"
	meter1=$(echo $n*0.3048 | bc -l)
	meter2=$(echo $m*0.3048 | bc -l)
	area2=$(echo $meter1*$meter2 | bc -l)
        echo "Area is $area2 sq. meter"
elif [ $unit == meter ]
then
        area1=$((n*m))
        echo "Area is $area1 sq. meter"
        feet1=$(echo $n*3.28084 | bc -l)
        feet2=$(echo $m*3.28084 | bc -l)
        area2=$(echo $feet1*$feet2 | bc -l)
        echo "Area is $area2 sq. ft."
fi
