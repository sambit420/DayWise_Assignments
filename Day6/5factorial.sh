
# Write a program that computes a factorial of a number taken as input
# 5 Factorial – 5! = 1 * 2 * 3 * 4 * 5

read -p "Enter a number: " n

fact=1

for((i=2; i<=n; i++))
do
	if(( $n == 1 || $n == 0 ))
	then
		echo 1
	else
		fact=$((fact * i))
	fi
done

echo "factorial of $n = $fact"
