#!/usr/bin/bash

######################################
# @Task:1 Module 1 Linux fundamentals
# @file: File Organizer
# @date: Jul 11, 2024
# @author: Ahmed Samy
######################################

declare path_argu=$1

############### User inputs Validation ##################
if [[ $# == 0 ]]; then
    echo "Please enter path of the directory !!"
    exit 1
elif (( $# > 1 )); then
    echo "Please enter ONLY One path of the directory !!"
    exit 2
fi
#########################################################


declare extension


if [ -e "$1" ]; then
    for file in "$1"*; do
        # -f operator check if it is a file
        if [ -f "$file" ]; then
           
           extension="${file##*.}"

            # Organize files based on extension
            case "$extension" in
                txt)
                    mkdir -p "$path_argu/txt"
                    mv "$file" "$path_argu/txt/"
                    ;;
                jpg)
                    mkdir -p "$path_argu/jpg"
                    mv "$file" "$path_argu/jpg/"
                    ;;
                pdf)
                    mkdir -p "$path_argu/pdf"
                    mv "$file" "$path_argu/pdf/"
                    ;;
                *)
                    mkdir -p "$path_argu/misc"
                    mv "$file" "$path_argu/misc/"
                    ;;
            esac
            
            
        fi
    done
    tree $1
else
    echo "Path doesn't Exist !!"
    exit 3
fi

