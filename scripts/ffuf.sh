#!/bin/bash

if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/ffuf" ]; then
		mkdir $1/ffuf
fi
ffuf -u https://$1/FUZZ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt >> $PWD/$1/ffuf/$1+ffuf.txt -mc 200