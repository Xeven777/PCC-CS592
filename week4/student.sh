#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <filename>"
    exit 1
elif [[ ! -f $1 ]]; then
    echo "$1 is not a file"
    exit 2
fi

fn=$1

cat $fn | sort -n > new.txt