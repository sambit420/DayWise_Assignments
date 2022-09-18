echo "Enter the value"
read n
echo "Enter the unit"
read unit
if [ $unit == ft ]
then
	Inches=$(($n*12))
	echo "Inch = $Inches"
elif [ $unit == in ]
then
	Feets=$(echo $n/12 | bc -l)
	echo "Feet = $Feets"
else
	echo "Enter unit Feet=ft or Inch=in"
fi

