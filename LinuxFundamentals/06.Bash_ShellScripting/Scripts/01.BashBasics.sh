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

declare Variable="Aloooo"
echo ${Variable}
Variable="Sami"
echo ${Variable}  
unset Variable
echo ${Variable} # It will not print anything as the variable is unset.

declare -r VAR_NAME="Sami"
VAR_NAME="Aloooo" # It will give an error as the variable is read-only.
echo ${VAR_NAME}
echo


# 3.2. Variables Types:
# 1. Local Variables: declared inside a function.
# 2. Global Variables: declared outside a function.
# 3. Environment Variables: system variables.

# 3.2.3 Environment Variables:
# 1. Declare an environment variable: export VAR_NAME=value

export environment_variable="Bash Shell Scripting"  
echo ${environment_variable}
echo $$
env | grep environment_variable
bash 
echo $$

# Environment Variable is accessible in the current shell Process or all the child shells.
