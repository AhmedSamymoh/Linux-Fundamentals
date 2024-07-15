#!/bin/bash




# piping (|) ---> Inter-process commuincation.
cat $1 | grep "data .. "

# &&
command1 && command2 && command3





# ||
command1 || command2 || command3


function push (){
	
	echo "Steps of pushing P1 $1 $2" || "Steps of pushing P2 $1 $2 " || "Steps of pushing P3 $1 $2"

	PUSH_P1 $1 $2 || PUSH_P2 $1 $2 || PUSH_P3 $1 $2 

}







