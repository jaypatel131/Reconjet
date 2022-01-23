#!/bin/bash

if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/hakrawler" ]; then
		mkdir $1/hakrawler
fi
echo $1 | haktrails subdomains | httpx | hakrawler > $1+cat.txt
cat $1+cat.txt >> $PWD/$1/hakrawler/$1+hakrawler.txt
rm $1+cat.txt