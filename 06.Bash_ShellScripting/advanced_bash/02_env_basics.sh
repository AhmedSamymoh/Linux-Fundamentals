#!/usr/bin/bash


################################################
# Env variable.
################################################

# 1. Declare env variable.
declare -x ENV_NAME="Name"
# 2. Assign value variable.
ENV_NAME="Name1"
# 3. Access Variable.
echo ${ENV_NAME}
# 4. Delete Variable.
unset ENV_NAME
# 5. Print all ENV system.
env 


##############################
# Important Variables:
##############################
# 1. PATH  ---> executable : search PATH  variable ----> custom.
# 2. SHELL ---> Custom terminal embedded shell (/bin/bash)






