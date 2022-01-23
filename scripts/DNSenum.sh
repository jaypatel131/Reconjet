#!/bin/bash

if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/Dnsenum" ]; then
		mkdir $1/Dnsenum
fi
if [ ! -d "$1/txt" ]; then
		mkdir $1/txt
fi
dnsenum --noreverse --enum $1 > $PWD/$1/Dnsenum/$1+dnsenum.txt
ed 's/^[//g' $PWD/$1/Dnsenum/$1+dnsenum.txt >> $PWD/$1/txt/dnsenum.txt