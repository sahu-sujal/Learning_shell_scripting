#!/bin/bash

echo "creating folder"
mkdir sujal

echo "chainging dicetory"
cd sujal

echo "creating two file"
touch test1 test2

echo "writing some content in both file"
echo "i'm test1" > test1
echo "i'm test2" > test2

echo "going back"
cd ../
cat sujal/test1
cat sujal/test2