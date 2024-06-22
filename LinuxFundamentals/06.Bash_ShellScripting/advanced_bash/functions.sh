#!/bin/bash



source ./switch_case.sh 

function trace_on(){
	echo "--------------------- Activate Trace ---------------------------"
	set -x 
}


# 
# Functions: set of actions (commands ) --- output  ---> (result) --- [string, number, mu] 
#           1. declare/define.                                              (DONE).
#           2. call function.                                               (DONE).
#           3. define function Paramters.                                   (DONE).
#           4. call function with arguments.                                (DONE).
#           5. Scopes Variables.   
                    #special variables: $1 .. $n ---> for each function
                    # local keyword  --> define local variable              
#   
declare NAME="Global Scope."


echo "$NAME"


function name () {
    echo "Number of arguments : $#"
    local NAME="Function Scope."
    echo "${NAME}" 
    return $? # outside function: $? 
}

# call function
name "Paramter1"

echo "$NAME"




