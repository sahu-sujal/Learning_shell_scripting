#!/bin/bash

echo "print first $1 No"
echo ""

for ((i=1;i<=$1;i++))
do
	echo "$i"
done
