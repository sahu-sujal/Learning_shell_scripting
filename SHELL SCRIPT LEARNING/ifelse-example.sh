#!/bin/bash

###############################
#
#   if [expresion]
#   then 
#   		
#   		commands
#   else
#   		commands
#   fi #this ends the if-else loop
#
###############################

set -e
set -x

	a=4
	b=10

	if [ $a -gt $b ]
	then
		echo "a is greater than b"
	else
		echo "b is greater than a"
	fi
