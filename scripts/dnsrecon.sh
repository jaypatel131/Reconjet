#!/bin/bash

if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/dnsrecon" ]; then
		mkdir $1/dnsrecon
fi
dnsrecon -d $1 >> $PWD/$1/dnsrecon/$1+Dnsrec.txt