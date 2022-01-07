#!/bin/bash

if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/Ipadd" ]; then
		mkdir $1/Ipadd
fi
if [ ! -d "$1/txt" ]; then
		mkdir $1/txt
fi
nslookup $1 >> $PWD/$1/txt/$1+ipadd.txt
cat $PWD/$1/txt/$1+ipadd.txt | awk '{if(NF>0) {print $0}}' >> $PWD/$1/Ipadd/$1+ipadd.txt
rm $PWD/$1/txt/$1+ipadd.txt