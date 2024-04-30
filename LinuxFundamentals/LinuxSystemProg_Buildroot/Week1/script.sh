#!/bin/bash


# $0     - the invoking name of the script
# $1 :$9 - first to 9 argument
# $#     - Number of arguments passed
# $?     - Exit status of the last Process


greating="Hello"
echo " $1 ,$greating, $USER"

#-d check if the directory exists
if [ -d "$WRITEDIR" ] 

then
    echo "$WRITEDIR Created"
else
    exit 1

fi

