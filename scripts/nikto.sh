#!/bin/bash

if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/nikto" ]; then
		mkdir $1/nikto
fi
nikto -h https://$1 >> $PWD/$1/nikto/$1+nikto.txt