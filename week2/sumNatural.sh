#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Usage: $0 <number>"
	exit 1
fi

n=$1

sum=0

for (( i=1;i<n;i++ ))
do
	((sum+=i))
done

echo "The sum of digits until $1 is : $sum"
