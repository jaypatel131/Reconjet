#!/bin/bash

if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/lazy3" ]; then
		mkdir $1/lazy3
fi
cd $PWD/lazys3
ruby lazys3.rb $1 >> $PWD/../$1/lazy3/$1+lazys3.txt