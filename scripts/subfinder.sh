#!/bin/bash

if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/subfinder" ]; then
		mkdir $1/subfinder
fi
if [ ! -d "$1/txt" ]; then
		mkdir $1/txt
fi
val=$(subfinder -d $1 >> $PWD/$1/txt/$1+subfinder.txt)
cat $PWD/$1/txt/$1+subfinder.txt | awk '{if(NF>0) {print $0}}' | sort -u >> $PWD/$1/subfinder/$1+subfinder.txt
rm $PWD/$1/txt/$1+subfinder.txt