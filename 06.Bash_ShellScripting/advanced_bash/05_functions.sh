#!/usr/bin/bash

echo "--------- Functions ----------"


# 
# Functions: set of actions (commands ) --- output  ---> (result) --- [string, number] 
#           1. declare/define.                                              (DONE).
#           2. call function.                                               (DONE).
#           3. define function Paramters.                                   (DONE).
#           4. call function with arguments.                                (DONE).
#           5. Scopes Variables.   
                    #special variables: $1 .. $n ---> for each function
                    # local keyword  --> define local variable              
#           5. return value -----> [string] OR [Number]  OR [Array]                 

# 1. declare/define.

# Requirement: print Hello {NAME}
# function must receive at least one parameter.
function name () {
    # operations.
    # special variable shell (bash) define it for each function.
        # scope: function.
        # $1 .. $2 .. $n
    #
    # control number of arguments passed to this function.
    if (($# == 0)); then
        # echo error.
        # exit.
        echo "Insu. Number of arguments passed."
    fi
    echo "Number of arguments: $#"
    # echo "Hello $1 " 
}
# 2. call function with parameters.

######################################### Scopes #########################################
declare NAME="Terminal Scope"

echo ${NAME}

function changeName(){
    # variable scope global.
        # NAME="Function scope"

    # change scope ---> local.
    NAME="Function scope"
}
changeName
echo $NAME

############################################## Return Values ##############################################


function returnNumber()
{   
    # return number
    return 10 # identify ----> status of exeuction.
}



echo $? # echo 10


function returnString()
{
    echo "Value" # content.
    return 10 # status.
}

RET=`returnString` # command sub.
echo $?
echo ${RET}







