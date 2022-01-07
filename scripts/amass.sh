#!/bin/bash

if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/Amass" ]; then
		mkdir $1/Amass
fi
if [ ! -d "$1/txt" ]; then
		mkdir $1/txt
fi
amass enum -d $1 -ip -o $PWD/$1/txt/$1-amass.txt
sort -u $PWD/$1/txt/$1-amass.txt >> $PWD/$1/Amass/$1-amass.txt
rm $PWD/$1/txt/$1-amass.txt