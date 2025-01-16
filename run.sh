#!/bin/bash

# Find all .sh files excluding run.sh
scripts=$(find . -type f -name "*.sh" ! -name "run.sh" | sort)

echo "Available scripts:"

select script in $scripts "Quit"; do
    case $script in
        "Quit")
            echo "Exiting."
            exit 0
            ;;
        *)
            if [[ -f $script ]]; then
                bash "$script"
            else
                echo "Invalid selection."
            fi
            ;;
    esac
done