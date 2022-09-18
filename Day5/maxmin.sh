#!/bin/bash -x

read -p "enter a: " a
read -p "enter a: " b
read -p "enter a: " c
first=$(( $a + ($b * $c) ))
second=$(( ($a % $b) + $c ))
third=$(( $c + ($a / $b) ))
fourth=$(( ($a * $b) + $c ))
large=$first
if [ $large < $second ]
 then 
        large=$second
   elif [ $large < $third ]
  then 
        large=$third
  elif [ $large < $fourth ]
     then
        large=$fourth
fi 
echo $large




