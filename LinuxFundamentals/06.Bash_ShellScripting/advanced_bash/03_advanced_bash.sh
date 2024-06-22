#!/usr/bin/bash

function pass () {
    # do nothing.
    return 0
}



#
#  Advanced Variables operations.
#                   1. variable_name:-<default value>
#                   2. variable_name:=<default value>
#                   3. variable_name:?<default value>

echo "Advanced Bash Topics"

# local variable.


echo "${NAME:-Hazem}"  # variable is empty        ---> NAME="Hazem" (* YOCTO)
echo "${NAME:=Hazem}"  # variable is not defined  ---> 1. define variable. then 2. set variable = value  (* YOCTO)
# echo "${NAME2:?Hazem}" # variable is not declared ---> raise error.
 

############################################## Advanced string Operations. ###############################################
#      string operations:
                    # 1. check string  ---> empty, declared, string1 = string2 (DONE)
#                   # 2. get sub-string   ---> string (DONE)
#                   # 3. Matching Pattern ---> 
                                        # Searching pattern inside string. (DONE)
                                        # Extract (DONE).
#           


# 1. check string.

if [[ -z "${string}" ]]; then
    pass
fi


declare string="Hello world"

# 1. Sub-string operation.
echo "${string:3}"       # cutting operation : cut first 3 chars.
echo "${string: -3}"     # cutting operation : left last 3 chars.




# 2. Matching patterns.
declare filename="Hello.txt"

# 2.1 : Extract part from string.
    # 2.1.1: Extract from the beg.
        # basic name:-
        declare basic_name=${filename%.*}
        echo "${basic_name}"

    # 2.1.2: Extract from the end.
        # extension:- 
        declare extension=${filename##*.}
        echo "${extension}"


# 2.2: Searching pattern inside string.
declare data="Hello world"
    # 2.2.1:
    if [[ "${data}" == *"world"* ]]; then
        echo "${data} contains: world"
    fi
#################################################################################
declare string="       Hello world"
echo "Before trim: ${string}"
trimmed=$(echo -e "${string}" | sed -e 's/^[[:space:]]*//')
echo "After Trim: ${trimmed}"
#################################################################################



####################################### Flow Control #######################################
#                   1. if .. else ---> (DONE)
#                   2. Loops:   
                            # 1. while (DONE).
                            # 2. for.  (DONE).
#                   3.  switch case.
#                   4.  select  ---> create user menu.
#
#
#

# for x in <iteratable> ----> list contains spaces.

# case 1: iterate over directory ----> get files. 
# Method 1.
for filename in `ls`; do
    echo "${filename}"
done

# Method 2.
for variable in *; do
    echo "${variable}"
done

# case 2: iterate over array of 10 integers.
# Method 1.
for i in `seq 10`;do 
    echo "${i}"
done

# Method 2.
for(( i = 0;i< 10 ; i++ )); do
    echo "${i}"
done

###################################### Switch case ###########################################
declare os=$1

# check variable ---> specific value.
if [ $os = "linux" ]; then
    echo "Linux"
elif [ $os = "windows" ]; then
     # else if body
     echo "windows"
else
    # else body
    echo " Undefined " 
fi

# switch case syntax.
case "${os}" in
    linux)
        echo "case: ${os}"
    ;;
    windows)
        echo "case: ${os}"
    ;;
    *)
        echo "default (none of above)"
    ;;
esac




########################################### Select (Testing-Flashing) ###################################### 
#select os in "linux" "windows"; do 
   # if [[ "${os}" == "linux" ]]; then
    # echo "Linux operations"
#fi
#done

########################################### Processing Files ###################################### 

# 1. read file ---> line by line.

# Method 1.
while IFS= read -r line; do
    echo "$line"
done < $1


# Method 2.
# cat ---> output: stdout (monitor).
# cat ---> output: forward command after (|)
cat $1 | while read line; do
    if [[ "${line}" == "linux" ]]; then
        echo "Linux OS"
    fi
done

# 2. write file ----> redirection.
    # 2.1: overwrite.
        echo "linux"  > "./test.txt" # overwrite.
    # 2.2: Append
        echo "Windows" >> "./file.txt" # Append.

# 3. extract information file.
    # 1. open file.
    # 2. read file.
    # 3. extract.
    cat $1 | while read line; do
        # extract OS value for each user.
        declare os=${line%:*}
        echo "${os}"
    done

###################################################################################








