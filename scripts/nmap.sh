#!/bin/bash

if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/Nmap" ]; then
		mkdir $1/Nmap
fi
echo $1 | httprobe -s -p https:443 | sed 's/https\?:\/\///' | tr -d ':443' >> $PWD/$1/Nmap/http.txt
sort -u $PWD/$1/Nmap/http.txt > $PWD/$1/Nmap/alive.txt
echo "[+] Scanning for open ports..."
nmap -iL $PWD/$1/Nmap/alive.txt -T4 -oA $PWD/$1/Nmap/scan.txt