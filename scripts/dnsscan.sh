#!/bin/bash
if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/dnsscan" ]; then
		mkdir $1/dnsscan
fi
if [ ! -d "$1/txt" ]; then
		mkdir $1/txt
fi
val=$($PWD/tools/dnscan/./dnscan.py -d $1 -w $PWD/tools/dnscan/subdomains-10000.txt > $PWD/$1/dnsscan/dnsscan.txt)
cat $PWD/$1/dnsscan/dnsscan.txt | awk '{if(NF>0) {print $0}}' >> $PWD/$1/dnsscan/$1+dnsscan.txt
