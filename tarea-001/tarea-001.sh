#!/bin/bash

start=1;
end=100;

for i in $( seq $start $end )
do
    formated=$(printf "%03g" $i);
    fileName="arch-${formated}.txt";
    touch $fileName;
    echo "${i}" >> $fileName;
done