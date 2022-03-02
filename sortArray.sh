#!/bin/bash

echo "Enter elements of array"
read -p "enter a " a;
read -p "enter b " b;
read -p "enter c " c;
read -p "enter d " d;
read -p "enter e " e;
read -p "enter f " f;
read -p "enter g " g;

echo "Original Array: "
array=($a $b $c $d $e $f $g);

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

