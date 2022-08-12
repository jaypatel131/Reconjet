#!/bin/bash

if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/eyewitness" ]; then
		mkdir $1/eyewitness
fi
echo first you have to run sublis3r....
cd $PWD/$1/eyewitness/
echo $PWD/$1/sublis3r/$1+sublis3r.txt >> subs.txt
eyewitness -f subs.txt -d screens --web