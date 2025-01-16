#!/bin/bash
# Script to manage personal data with a password

data_file="personal.dat"

while true
do
  echo "Menu:"
  echo "1. Add personal details with a password"
  echo "2. Display stored details"
  echo "3. Verify password and display details"
  echo "4. Exit"
  echo "Enter your choice:"
  read choice

  case $choice in
    1)
      echo "Enter name, age, and password (separated by spaces):"
      read name age password
      echo "$name|$age|$password" >> "$data_file"
      echo "Details saved!"
      ;;
    2)
      echo "Stored details:"
      cat "$data_file"
      ;;
    3)
      echo "Enter name:"
      read input_name
      echo "Enter password:"
      read input_password
      if grep -q "$input_name|.*|$input_password" "$data_file"; then
        grep "$input_name|.*|$input_password" "$data_file"
      else
        echo "Invalid credentials."
      fi
      ;;
    4)
      exit 0
      ;;
    *)
      echo "Invalid choice, please try again."
      ;;
  esac
done
