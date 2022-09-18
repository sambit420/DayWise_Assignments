

#!/bin/bash

# Extend the Flip Coin problem till either Heads or Tails wins 11 times.

heads=0
tails=0
count=0

while ((count<30))
do
	toss=$((RANDOM%2))
	if (( $toss == 1 ))
	then
		heads=$(($heads + 1))
		if (($heads == 11))
		then
			break
		fi
	else
		tails=$(($tails + 1))
		if (($tails == 11))
                then
                        break
                fi

	fi
	count=$(($count+1))
done

echo "Heads = $heads"
echo "Tails = $tails"

if (( $heads > $tails ))
then
	echo "Heads win!"
else
	echo "Tails win!"
fi
