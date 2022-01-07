#!/bin/bash

if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/sublis3r" ]; then
		mkdir $1/sublis3r
fi
if [ ! -d "$1/txt" ]; then
		mkdir $1/txt
fi
val=$(sublist3r -d $1 -o $PWD/$1/txt/$1+sublis3r.txt)
cat $PWD/$1/txt/$1+sublis3r.txt | awk '{if(NF>0) {print $0}}' | sort -u >> $PWD/$1/sublis3r/$1+sublis3r.txt
rm $PWD/$1/txt/$1+sublis3r.txt