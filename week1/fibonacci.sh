#!/bin/bash

echo "Enter a number:"

read n

a=0
b=1

echo "Fiboancci series till $n th number: "

for (( i=0;i<n;i++ ))
do
	echo -n "$a  "
	temp=$(( a+b ))
	a=$b
	b=$temp
done
