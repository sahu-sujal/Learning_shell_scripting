#!/bin/bash

echo "Print even no till $1"

for ((i=2; i<=$1; i=i+2))
do
	echo "$i"
done
