#!/usr/bin/bash
# ^^ This is called a shebang line. o use the bash shell to run the script.


# 2. Inputs: User, Script or Command Line Arguments
   
 # 2.1. Positional Parameters: before running the script, you can pass arguments to the script.

# Positional Parameters:
# $0: The name of the script.
# $1: 1st argument.
# $2: 2nd argument. and so on.
# $#: no. of arguments passed to the script.

#echo "The name of the script is: $0"


 # 2.2. After script run 
    # though : read Variable

#read $NAME
#echo $NAME 

# 3. Variables: Operations and Types

# 3.1. Variables Operations:
# 1. Declare a variable: declare VAR_NAME=value
# 2. Access a variable: $VAR_NAME
# 3. Unset a variable: unset VAR_NAME
# 4. Read-only variable: readonly VAR_NAME or declare -r VAR_NAME

# declare Variable="Aloooo"
# echo ${Variable}
# Variable="Sami"
# echo ${Variable}  
# unset Variable
# echo ${Variable} # It will not print anything as the variable is unset.

# declare -r VAR_NAME="Sami"
# VAR_NAME="Aloooo" # It will give an error as the variable is read-only.
# echo ${VAR_NAME}
# echo


# 3.2. Variables Types:
# 1. Local Variables: declared inside a function.
# 2. Global Variables: declared outside a function.
# 3. Environment Variables: system variables.

# 3.2.3 Environment Variables:
# 1. Declare an environment variable: export VAR_NAME=value

# export environment_variable="Bash Shell Scripting"  
# echo ${environment_variable}
# echo $$
# env | grep environment_variable
# bash 
# echo $$

# Environment Variable is accessible in the current shell Process or all the child shells.


declare NAME=`hostname` # >> `` << command substitution. assign the o/p of a command to a variable.

echo ${NAME} 


# Arithmetic Operations:
declare -i num1=10 # -i -- integer variable.
declare -i num2=20
declare -i result=$(($num1+$num2))
echo $result
declare -i result=$(($num1-$num2))
echo $result
declare -i result=$(($num1/$num2))
echo $result
declare -i result=$(($num1*$num2))
echo $result

# 30
# -10
# 0
# 200

# Checking condition:

# if statement:

# a. if condition with numbers: 

# simple if condition:
if (($num1 > $num2)); then
#code
    echo "num1 is greater than num2"
else
    echo "num1 is less than num2" 
fi

#complex condition: comparasion operators and logical operators [ || && ! ]
if (($num1 < $num2)) || (($num1 == $num2)); then
    echo "num2 is greater than or equal to num1"
else
    echo "num2 is less than num2"
fi


# b. strings:

# syntax: [[ string1 == string2 ]] or [[ string1 != string2 ]]
# [[ -z string ]] : check if string empty.
# [[ -n string ]] : check if string not empty.

declare KERNEL_TYPE="Linux"
declare CURRENT_KERNEL_TYPE=`uname -s`

if [[ $KERNEL_TYPE == $CURRENT_KERNEL_TYPE ]]; then
    echo "Both are same"
else
    echo "Both are different"
fi

if [[ -z $KERNEL_TYPE ]]; then
    echo "Kernel Type is empty"
fi

if [[ -n $KERNEL_TYPE ]]; then
    echo "Kernel Type is not empty"
fi

# files and directories:

# -e or -s: check if file exists.
# -f: check if file exists and is a regular file.
if [[ -s $PWD/test.txt ]]
then
    echo "File exists and not empty"
else
    if [[ -e $PWD/test.txt ]]
    then
        echo "File exists and empty"
    else
        echo "File does not exist"
    fi 
fi 

# -d: check is a directory.
if [[ ! -d $PWD ]]
then
    echo "It is a directory"
fi


# -O: check owner of the file.
if [[ -O $PWD/test.txt ]]
then
    echo `who` "is the owner"
fi

# -G: check group of the file.
if [[ -G $PWD/test.txt ]]
then
    echo `groups` "is the group"
fi

echo
########################

# 4. Outputs:
# Two types of outputs:
#                       1. Exit Status: (Run Normally) 0-255 
#                       2. print stdout : echo, printf, cat, etc.

# echo $? : exit status of the last command. << vip >>
echo "Exit Status: $?"