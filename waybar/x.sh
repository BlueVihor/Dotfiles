#!/bin/bash

# Run acpi -b and store the output
output=$(acpi -b)

# Convert the output string into an array of words
read -a words <<< "$output"

# Loop through the array and assign each word to a variable
for i in "${!words[@]}"; do
    eval "word$i='${words[$i]}'"
done

# Example: print the variables
#for i in "${!words[@]}"; do
  #  eval "echo word$i=\$word$i"
#done

echo $word3
