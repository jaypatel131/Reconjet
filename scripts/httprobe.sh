#!/bin/bash

if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/httprobe" ]; then
		mkdir $1/httprobe
fi
if [ ! -d "$1/txt" ]; then
		mkdir $1/txt
fi
cat $PWD/$1/subfinder/$1+subfinder.txt | sort -u | httprobe >> $PWD/$1/txt/$1+httprobefind.txt
cat $PWD/$1/sublis3r/$1+sublis3r.txt | sort -u | httprobe >> $PWD/$1/txt/$1+httprobelist.txt
cat $PWD/$1/txt/$1+httprobefind.txt >> $PWD/$1/httprobe/$1+httprobe.txt
cat $PWD/$1/txt/$1+httprobelist.txt >> $PWD/$1/httprobe/$1+httprobe.txt
cat $PWD/$1/httprobe/$1+httprobe.txt | sort -u >> $PWD/$1/httprobe/$1+finalhttp.txt
