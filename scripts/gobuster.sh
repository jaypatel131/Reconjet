#!/bin/bash

if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/gobuster" ]; then
		mkdir $1/gobuster
fi
gobuster dir -u https://$1 -w /usr/share/wordlists/dirb/common.txt --timeout 10s -o $PWD/$1/gobuster/gobuster.txt