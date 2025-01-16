#!/bin/bash

echo -n "Enter Username: "
read username

if [[ -z $username ]]; then
    echo "You must enter a username."
    exit 1
fi

if id "$username" &>/dev/null; then
    echo "User exists."
else
    echo "User does not exist."
fi