#!/bin/bash

start=1;
echo -n "Enter a number: "
read number
digits="${#number}"

for i in $( seq $start $number )
do
    formated=$(printf "%0${digits}g" $i);
    fileName="arch-${formated}.txt";
    touch $fileName;
    echo "${i}" >> $fileName;
done

echo "$number files have been created"