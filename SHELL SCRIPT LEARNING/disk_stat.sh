#!/bin/bash

###########################################################
#
# AUTHOR: Sujal Sahu
# VERSION: V1.0
# DATE: 14/01/2025
#
# This script is used to get the system statistics
#
##########################################################

echo "Date: $(date)"
echo ""
echo "uptime: $(uptime)"
echo ""
echo "----- People Currently LoggedIn -----"
echo ""
w
echo ""
echo "---- People last login ----"
last -a | head -3
echo ""
echo "Disk and Memory statistics"
echo ""
df -h |xargs | awk '{print "Free/Total Disk : " $9"/"$11}'
echo ""
free -h | xargs | awk '{print "Free/Total Memory : " $10"/"$8 }'
