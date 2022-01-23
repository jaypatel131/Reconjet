#!/bin/bash

if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/rDNS" ]; then
		mkdir $1/rDNS
fi
val=$(dnsrecon -d $1 -D /usr/share/wordlists/dnsmap.txt -t std --json $PWD/$1/rDNS/$1+dnsrecon.json)