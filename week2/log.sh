#!/bin/bash

if [ $# -ne 1 ]
then
    echo "Usage: $0 <number>"
    exit 1
fi

num=$1

# log=$(echo "scale=2; l($num)/l(10)" | bc -l)

log=$(bc -l <<< "scale=2; l($num)/l(10)")


echo "The log of $num is $log"