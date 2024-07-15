#!/usr/bin/bash



# 3. extract information file.
    # 1. open file.
    # 2. read file.
    # 3. extract.
    cat $1 | while read line; do
        # extract OS value for each user.
        declare os=${line%:*}
        echo "${os}"
    done