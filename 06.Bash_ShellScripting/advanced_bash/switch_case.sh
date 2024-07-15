#!/bin/bash



###################################### Switch case ###########################################
declare OS=$1


case "${OS}" in
    linux)
        echo "Linux"
    ;;
    Windows)
        echo "Windows"
    ;;
    *)
        echo "default (none of above)"
    ;;
esac




