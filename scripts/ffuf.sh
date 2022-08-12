#!/bin/bash

if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/ffuf" ]; then
		mkdir $1/ffuf
fi

input="$PWD/$1/httprobe/$1+finalhttp.txt"
while IFS= read -r line
do
  ffuf -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -ac -t 100 -u $line/FUZZ >> $PWD/$1/ffuf/$1+ffuf.txt -mc 200
done < "$input"


