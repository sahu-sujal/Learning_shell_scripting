#!/bin/bash



#######################################
#
# Author : Sujal Sahu
# 
# Date : 27/18/2024
# 
# this script output the node health
#
# version: v1.0
#
#######################################

set -x # this is used to execute scrit in debug mode

set -e # this is used to exit script when there is any error but in case of pipe it priotize the last command

set -o pipefail # this is used to exit the script when there is any error in the pipe statement


#checking the disk space
df -h

#checking the memory space
free -g

#checking the cpu
nproc

#greping the python process id
ps -ef | grep python | awk -F" " '{print $2}'

