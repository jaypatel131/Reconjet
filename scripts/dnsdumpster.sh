#!/bin/bash

if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/Dnsdumpstr" ]; then
		mkdir $1/Dnsdumpstr
fi

echo "you just need this don't you;)"
firefox https://dnsdumpster.com/
