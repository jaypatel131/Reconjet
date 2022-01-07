#!/bin/bash

if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/whatweb" ]; then
		mkdir $1/whatweb
fi
whatweb -v $1 >> $PWD/$1/whatweb/$1+whatweb.com