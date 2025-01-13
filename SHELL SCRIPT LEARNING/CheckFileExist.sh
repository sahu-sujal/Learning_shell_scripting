#!/bin/bash

echo "Enter the filename"

read filename

if [ -f $filename ]
then
	echo "file $filename exist"
else
	echo "file $filename doesn't exist"
fi
