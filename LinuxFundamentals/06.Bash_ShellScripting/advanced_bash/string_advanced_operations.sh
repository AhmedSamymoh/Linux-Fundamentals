#!/usr/bin/bash

########################################## 1. Extraction (Sub-string Patterns) ######################################

declare string="Hello world"

# 1. Sub-string operation.
echo "${string:3}"       # cutting operation : cut first 3 chars output: lo world
echo "${string: -3}"     # cutting operation : left last 3 chars output: rld

# 2. Matching patterns.
declare filename="Hello.txt"

# 2.1 : Extract part from string.
    # 2.1.1: Extract from the beg.
        # basic name:-
        declare basic_name=${filename%.*}
        echo "File name: ${basic_name}"

    # 2.1.2: Extract from the end.
        # extension:- 
        declare extension=${filename##*.}
        echo "Ext: ${extension}"

########################################## 2. Searching Pattern ######################################

# 2.2: Searching pattern inside string.
declare data="Hello world"
    # 2.2.1:
    if [[ "${data}" == *"txt"* ]]; then
        echo "${string} contains: ${substring}"
    fi
    
     
    
####################################### 3. Trim ##########################################
source ./tracing_functions.sh

trace_on

declare string="       Hello world  " 
echo "Before trim: ${string}"
trimmed=$(echo -e "${string}" | tr -d '[:space:]')
echo "$trimmed"

trace_off


#################################################################################
