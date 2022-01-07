#!/bin/bash

if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/GAU" ]; then
		mkdir $1/GAU
fi
echo $1 | gau --threads 5 >> $PWD/$1/GAU/$1+gau.txt