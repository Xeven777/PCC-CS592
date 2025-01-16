#!/bin/bash
# Script to sort an array of integers using Bubble Sort

echo "Enter the number of elements:"
read n

echo "Enter the elements of the array:"
read -a array

for (( i=0; i<n-1; i++ ))
do
  for (( j=0; j<n-i-1; j++ ))
  do
    if [ ${array[j]} -gt ${array[$((j+1))]} ]; then
      temp=${array[j]}
      array[j]=${array[$((j+1))]}
      array[$((j+1))]=$temp
    fi
  done
done

echo "Sorted array:"
echo "${array[@]}"
