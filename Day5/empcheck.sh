#!/bin/bash -x

isPresent=1;
randomNumber=$(( RANDOM % 2 ))
if [ $isPresent -eq $randomNumber ]
then 
    echo "employee is present"
else 
    echo "employee is not present"
fi

