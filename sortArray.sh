#!/bin/bash

echo "original order of the array: "

array=(7 5 3 6 2 9 10 8)

echo ${array[*]};

for ((i = 0; i<7; i++))
do
    
    for((j = 0; j<7; j++))
    do
    
        if [ ${array[j]} -gt ${array[$((j+1))]} ]
        then
            
            temp=${array[j]}
            array[$j]=${array[$((j+1))]}  
            array[$((j+1))]=$temp
        fi
    done
done

echo "My sorted array is :"
echo ${array[*]}

