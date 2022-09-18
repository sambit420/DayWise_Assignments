
# Write a program that takes a command-line argument n and prints a
# table of the powers of 2 that are less than or equal to 2^n till 256 is
# reached.

function is_power_of_two () {
    declare -i n=$1
    (( n > 0 && (n & (n - 1)) == 0 ))
}

for number; do
    if is_power_of_two "$number"; then
        printf "%d\n" "$number"
    fi
done
