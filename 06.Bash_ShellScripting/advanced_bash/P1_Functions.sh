#!/bin/bash


declare PROJECT_NAME="P1_XXX"


###################################
#
# Function related projects.
#
##################################


# Requirements:
#		1. Push file from Host (PC)  location to Target (Board). 
#		adb root 	
#		adb push <PATH_HOST> <target_path>
#



function push (){
	echo "------------- help ------------------"
	echo "------------------------------- Pushing File to Target (${PROJECT_NAME}) --------------------------------"
	echo "adb root && adb push $1 $2"
}











