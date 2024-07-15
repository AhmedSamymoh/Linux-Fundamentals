#!/usr/bin/bash

# set -- command

#  - Export newly initialized variables to child processes:
#    set -a

#  - Exit the shell when (some) commands fail:
#    set -e

#  - for tracing error
#    set -x

#  - raise an error when using undefined variable
#    set -u 

echo "------------- Debugging -------------"

# echo "Command 1"
# echo "Command 2"
# ech "Command 3" #<< lets know how to debugg this error
# echo "Command 4"


# For Unit testing for a couple or a block of commands we use : set -e then set +e
set -e
set -x

echo "Command 5"
echo "Command 6"
ech0 "Command 7" #<< lets know how to debugg this error
echo "Command 8"

set +e

echo "Command 7"


