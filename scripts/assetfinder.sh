#!/bin/bash

if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/txt" ]; then
		mkdir $1/txt
fi

assetfinder $1 >> $PWD/$1/txt/assets.txt