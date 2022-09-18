#!/bin/bash -x
echo 'dldir' | program
if [ -d "$dldir" ]
then 
     mkdir $dldir;
else
     echo "folder already exist";
fi
