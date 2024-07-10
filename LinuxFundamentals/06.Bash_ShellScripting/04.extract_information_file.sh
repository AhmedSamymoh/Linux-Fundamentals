#!/usr/bin/bash

# operating-system:GNU/Linux

# %:* read operating-system
# #*: read GNU/Linux

# declare os=${line%:*} ---> os=read operating-system
# declare os=${line#*:} ---> os=GNU/Linux

# 3. extract operations
# open read extract 

cat $PWD/file.txt | while read line ; do

    # declare os=${line%:*}
    declare os=${line#*:}
    echo ${os}
    if [[ "${os}" == "GNU/Linux" ]]; then
        echo "operating-system is GNU/Linux"
    fi
    
done

###############################################



