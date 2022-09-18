read -p " Enter Date:-" date
read -p " Enter Month:-" Month
if [ $date -ge 20 ] && [ $date -le 31 ] && [ "$Month" = "March" ]
then
        echo true;
elif [ $date -ge 1 ] && [ $date -le 30 ] && [ "$Month" = "April" ]
then
         echo true;
elif [ $date -ge 1 ] && [ $date -le 31 ] && [ "$Month" = "May" ]
then
	echo true;
elif [ $date -ge 1 ] && [ $date -le 20 ] && [ "$Month" = "June" ]
then
	echo true;
else
	echo false;
fi
