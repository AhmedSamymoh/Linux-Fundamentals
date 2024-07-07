#!/usr/bin/bash

# ---------------------------
# advance variables operations:
#---------------------------
# 1. Variable_name:-<default value>
# 2. Variable_name:=<default value>
# 3. Variable_name:?<default value>


declare NAME=""
echo "Name: ${NAME:-Sami}" # Varible is empty        ----> NAME="HAZEM" (** YOCTO)
echo "Name: ${NAME:=Sami}" # Varible is NOT define   ----> 1. Define it 2. Assign it a value (** YOCTO)
#echo "Name: ${NAME2:?Sami}" # Varible is declared ----> Will NOT raise an error
# echo "Name: ${NAME2:?Sami}" # Varible is NOT declared ----> raise an error


# ---------------------------
# advanced string operations:
# ---------------------------
# string operations:
# 1. check string ---> empty, declare, string1=string2
# 2. get substring ---> ${string:position:length}
# 3. Matching Pattern ---> ${string#substring} ---> remove the shortest match from the beginning
                        # searching pattern inside the string
                        # extract


declare str="Hello World"
echo "String: ${str:3}" # cutting operation cut first 3 chars
echo "String: ${str: -3}" # cutting operation cut left last 3 chars


# 2. Matching Pattern

declare filename="file.txt"
# 2.1: Extract part from the string >>> %.* ,,,, ##*. <<<
    # 2.1.1: Extract the beginning
        #basic name:
            declare basic_name=${filename%.*}
            echo "Basic Name: $basic_name"

    # 2.1.2: Extract the end
       # extension:
            declare basic_name=${filename##*.}
            echo "Basic Name: $basic_name"


# 2.2 Searching pattern inside the string
declare string="Linux is fun ,Hello World"

    # 2.2.2 :
    if [[ "${string}" == *World* ]]; then
        echo "Found"
    fi

    # 2.2.1 grep command ---> for file
        # if grep -q "World" /path/to/your/file.txt; then
        #     echo "Found"
        # fi
# ---------------------------

declare str2="  Hello World         "
# trim spaces left right
trimmed=$(echo -e "${str2}" |  sed -e 's/^[[:space:]]*//' | sed -e 's/[[:space:]]*$//')
echo "Trimmed: $trimmed"


# --------------------------- Flow Control ---------------------------
# loops:
# 1. for loop
# 2. while loop

declare -i a=0
while (( $a<5 )); do
    echo "${a}"
    ((a++))
done
  

# 1. for loop

for i in {1..5}; do
    echo "${i}"
done

for file in *; do
    echo "${file}"
done
