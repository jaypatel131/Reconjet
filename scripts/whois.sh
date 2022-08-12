#!/bin/bash
if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/whois" ]; then
		mkdir $1/whois
fi
whois $1 -H > $PWD/$1/whois/$1-whois.txt