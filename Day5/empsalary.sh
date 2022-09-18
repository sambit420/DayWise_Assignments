#!/bin/bash -x

isPresent=1;
randomNumber=$(( RANDOM%2 ))
empRatePerHrs=20;
empHrs=8;
if [ $isPresent -eq $randomNumber ]
then 
      salary=$(( $empRatePerHrs * $empHrs ));
else 
      salary=0;
fi
echo $salary;
