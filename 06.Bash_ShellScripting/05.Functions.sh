#!/usr/bin/bash

echo "---------- Functions -----------"

# Functions:
#       1. Declare/define
#       2. Arguments
#       3. return value
#       4. call function with arguments 
#       5. return value ---> [string] [number]


declare NAME="Terminal Scope"

echo ${NAME}

function name(){
    # special variable shell(bash) defined it for each function
    # $1 $2 -> second argument --> function scope
    # $# -> no. of args
    # $? -> exit status
    if (( $# == 0 )); then
        exit 1
    fi
    echo "First Function.  "

    # change scope ----> local
    local NAME="Function Scope"
}  


name firstArg secArg #--->> Function scope $1
echo ${NAME}


############################# Return Values #############################

function returnNumber(){
    return 10
}

returnNumber

echo "$?" # ---> return Value



function returnString(){
    echo "Return"
}

declare RET=`returnString` # ----> Command sub.
 
echo ${RET}







