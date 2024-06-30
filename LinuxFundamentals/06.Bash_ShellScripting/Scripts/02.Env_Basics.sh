#!/usr/bin/bash

##############################
#   Environment Variables    #   
##############################


# 3.2.3 Environment Variables:  

# 1. Declare an environment variable: export VAR_NAME=value
declare -x ENV_NAME="Bash Shell Scripting"
env | grep ENV_NAME

# 2. Assign value to a variable:
ENV_NAME="Sami"

# 3. Delete a variable:

env | grep ENV_NAME
unset ENV_NAME
env | grep ENV_NAME



##############################
#     Important Varibles     #   
##############################

# 1. $HOME: Home directory of the user.

# 2. $PATH ---> Executable : search PATH Variable.

# $PATH=$PATH:~/usr/local/bin ---> Add a new path to the PATH variable.
# Could add it to .bashrc or .bash_profile to make it permanent.
# so every time a new shell is opened, the path will be added to the PATH variable.  

# 3. $SHELL ---> Custom terminal embedded shell.




# alias: Create a shortcut for a command.
# alias disk_space="df -h"

