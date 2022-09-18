n=60
m=40
total=25
        area1=$((n*m))
	echo "Area for single plot is $area1 sq. ft"
	area2=$((n*m*total))
        echo "Total Area is $area2 sq.ft"
        area3=$(echo $area1/43560*$total | bc -l)
        echo "Area is $area3 acre"
