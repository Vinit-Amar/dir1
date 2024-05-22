#!/bin/bash
read -p "Enter the names of files or directories to check, separated by spaces: " -a items
if [ "${#items[@]}" -eq 0 ]; then
    echo "No input provided. Usage: $0 file_or_directory_name [file_or_directory_name ...]"
    exit 1
fi
for item in "${items[@]}"; do
    if [ -e "$item" ]; then
        echo "'$item' exists."
    else
        echo "'$item' does not exist."
    fi
done
