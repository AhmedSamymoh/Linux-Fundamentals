#!/usr/bin/bash

###
# Error codes:
    # return back error 10: directory not exists.
###


# 2. Inputs: 
#######################################################################################################
# Action (Entity Run script): Developer-script-Service Management           
                # a. before script run (Positional Parameters)  --DONE.
                # b. After run operation (Hold script until input (USER)) -- DONE

# a. Before script Run (Positional Parameters).            # Shell variables: 
#            $0  ---> name script. 
#            $1  ---> 1st paramater.
#            $2  ---> 2nd parameter.


# b. After Run operation.
#           though: read Variable.
#read $NAME # hold input ----> written user.
#echo $NAME





#############################################################################
# Local Variable Operations.
# 1. Declare variable -----> 1:[Read-only, Read/Write], 2: Datatype.  ====> declare NAME="HAZEM"
#2. Assign value variable.
#3. Access Variable ===> echo ${NAME}
#4. Delete Variable ===> unset NAME
#############################################################################

declare NAME=100 # Local variable.



#############################################################################
# Enviroment Variable Operations.
# Operations
#1. Declare variable ====> export
#2. Assign value variable.
#3. Access Variable.
#4. Delete Variable.
#5. Print all ENV system.
#############################################################################

echo ${SHELL_LOCAL}

# 3. Operations: 
    # 1. Variables.
    # 2. direct commands.
    # 3. Arth. operations (*, - , / , +).
    # 4. Check conditions.
    # 5. functions ----> do specific (Task).

######
# 1. Variables:
# Assignations -----> 1. Direct value.
#                     2. assign value from another command result (command substuiation.)   
######=
declare NAME=`hostname`
echo ${NAME}




############################
#  2. Run Commands:
#  1. pstree
############################
#pstree




############################
# 3. Arth. operations.
############################
declare -i X=100
declare -i Y=200
declare -i RESULT=0

echo ${RESULT}


############################
# 4. Check Conditions.
############################

# if else statement.


# a. Numbers ..... [> , < , >= , <=, !=, ==] 
# example : simple condition (($Y > $X)).
# complex conditon: comparasion operators + logical operators (&& , || , !)
if (($Y > $X || $Y > $RESULT)); then
    # code
    echo "Y is the greatest Number."
else 
    echo "X is not greater than Y"
fi

# b. strings.
# Equa: string1 = string2 ====> check string == string2.
# Not Equ: string1 != string2 ===> check strings not =.
# check is null (empty): -z
# check is not null (not empty): -n

declare KERNEL_TYPE
declare CURRENT_TYPE="Linux"


if [[ -n $CURRENT_TYPE ]]; then
    echo "String variable is not empty."
fi




# c. files/directories.
# Files Opertions: 
# 1. check file is exists. 
# file path: $1 ----> check if file is exists.

if [[ -f $1 ]]; then
    echo "File is exists"
else 
    echo "File not exists"
fi




# 2. check file is exists && not empty.
if [[ -s $1 ]]; then
    echo "File is exists and not empty"
else 
    if [[ -f $1 ]]; then
        echo "File is exists and empty."
    else 
        echo "File not exists."
    fi 
fi

# TODO: 3. check owner file.
if [[ -O $1 ]]; then 
    echo `who ` "is owner"
fi

# TODO: 4. User run script --->  inside group file.
if [[ -G $1 ]]; then 
    echo `who ` "inside group"
fi




###############################################################################
# Directory:
# 1. check if directory exists 
# Check if directory exists: if [[ -d $PATH_DIRECTORY ]]
# Check if directory not exists: if [[! -d $PATH_DIRECTORY ]]
if [[ ! -d $1 ]]; then 
    echo "Directory is exists"
fi

# TODO: 2. check owner file.
if [[ -O $1 ]]; then 
    echo `who ` "inside group"
fi

# TODO: 3. check inside group file.
if [[ -G $1 ]]; then 
    echo `who ` "inside group"
fi


#####################################################################################


# 4. Outputs:
# Two outputs:
#               1. Exit Status ----> RUN normally (0)  or there is an issue.
#               2. Print stdout: 1. echo   ---> command. 
#                                2. printf ---> report.
# 


cd $1
#### Output:
# 1. Status ---> change directory or not.
# 2. change directoy.
if [[ $? == 0 ]]; then 
    echo "Command is run succ"
else 
    echo "Command is failed"
    #exit 10 # script failed ---> error code 10 ---> failed directory not exists.
fi


printf "%d %s \n" 1 "Hello world"  2 "Hello world2"



declare -x ENV_NAME="Hazem"

## Status for your process
#exit 0 # succ.
