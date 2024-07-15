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
# switch case
# Select --> create user menu

declare -i a=0
while (( $a<5 )); do
    echo "${a}"
    ((a++))
done
  

# 1. for loop

# case 1: iterate over directory ----> get files.
for i in {1..5}; do
    echo "${i}"
done

for file in *; do
    echo "${file}"
done

# case 2: iterate over array of integares.
# Method 1.
for i in `seq 3`;do
    echo "${i}"
done

# Method 2.
for((i=0;i<3;((++i)))); do
    echo "${i}"
done

#------------------------------------------------------

# switch case

declare os=$1

if [[ ${os} == "Linux" ]]; then
    echo "Linux"
elif [[ ${os} == "Windows" ]]; then
    echo "Windows"
else 
    echo "undefined Operatng System"
fi


case "${os}" in
    linux) #>>>>>>>>>>cas1
        echo "case: ${os}"
        ;;
    windows) #>>>>>>> case2
        echo "windows"
        ;;
    *)  #>>>>>>>default
        echo "Undefine Operating System"
        ;;
esac
 
#------------------------------------------------------

# Select (Testing and Flashing )

# select os in "Linux" "Windows"; do
#      echo ${os};
# done

# 1) Linux
# 2) Windows
# #? 1
# Linux

#------------------------------------------------------
# Processing Files
#------------------------------------------------------

# 1, read file ---> line by line 
cat $PWD/test.txt | while read line; do
    echo "${line}"
done

while IFS= read -r line; do
    echo "$line"
done < test.txt

cat $PWD/test.txt | while read line; do
    if [[ "${line}" == "linux" ]]; then
        echo "Linux Kernal"
    fi
done

# sami@linux:~$ uname --operating-system 
# GNU/Linux


#-----------------------------------------------------

# 2. Write file -
    # 2.1 redirection.
    echo "operating-system:GNU/Linux" > ./file.txt

    # 2.2 append
    echo "Appeneded Data" >> ./file.txt



