#!/bin/bash

while true
do
    echo "Menu"
    echo "1. Show permissions of a file or directory"
    echo "2. Show number of files and directories under current directory separately"
    echo "3. Show last modification time of a file"
    echo "4. Exit"
    echo
    read -e -p "Enter your choice:" choice

    case $choice in 
        1)
            read -p "Enter file/directory name:" name
            ls -ld $name
            ;;
        2) 
            echo -n "Number of files: "
            # ls -l | grep ^- | wc -l
            find . -maxdepth 1 -type f | wc -l
            echo -n "Number of directories: "
            # ls -l | grep ^d | wc -l
            find . -maxdepth 1 -type d -not -name "." | wc -l
            echo
            ;;

        3)
            read -p "Enter File name : " name
            stat $name -c "%y"
            echo
            ;;
        4)
            echo "Exiting..."
            ;;
        *)
            echo "Invalid choice"
            exit 1
            ;;
    esac
done