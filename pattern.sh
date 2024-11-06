#!/bin/bash

# Prompt the user to enter the number of rows
read -p "Enter the number of rows: " row

# Loop through each row
for (( i=0; i<row; i++ )); do
    # Reset j to 0 for each new row
    for (( j=0; j<row; j++ )); do
        # Print '*' or space based on the condition
        if [ $i -ge $j ]; then
            echo -n "*"
        else
            echo -n " "
        fi
    done
    # Move to the next line after finishing a row
    echo " "
done


