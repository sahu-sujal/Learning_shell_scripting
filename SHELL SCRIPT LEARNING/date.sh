#!/bin/bash

echo "the date is"
date | awk '{print $1, $2, $3}'

echo "the time is"
date | awk '{print $4}'
