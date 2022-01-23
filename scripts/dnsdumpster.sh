#!/bin/bash

if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/Dnsdumpstr" ]; then
		mkdir $1/Dnsdumpstr
fi

cd $PWD/dnsdumpster/
python3 dnsdumpster.py -d $1 >> $PWD/../$1/Dnsdumpstr/$1+Dnsdumpstr.txt