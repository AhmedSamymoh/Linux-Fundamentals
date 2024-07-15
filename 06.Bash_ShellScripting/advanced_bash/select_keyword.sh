#!/bin/bash


########################################### Select (Testing-Flashing) ###################################### 
# Requirements:
#       1. create testing tool ----> audio tool (C++ Application).
#           # tester capability ---> 
                            # 1. Push audio.
#                           # 2. Run audio ----> send audio speaker.
#                           # 3. init voice call. 
# 
function Push_Audio () {
    
    echo "------------- Please Insert Audio Path --------------"  
    declare AUDIO_PATH
    read AUDIO_PATH
    echo "------ Pushing command ------"
    echo "adb push ${AUDIO_PATH}  <Path Inside Board>"

}

# MoreInfo:- tldr select.
##################################################################################################################
select TEST_CASE in "Push_Audio" "Run_Audio" "Init_Voice_call" "Exist"; do 
    case "${TEST_CASE}" in
       Push_Audio)
            Push_Audio
        ;;
        Exist)
            break
        ;;
        *)
            echo "default (none of above)"
            break
        ;;
    esac
done


echo "After Select"