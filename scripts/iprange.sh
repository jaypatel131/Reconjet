#!/bin/bash

if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/ASN" ]; then
		mkdir $1/ASN
fi
if [ ! -d "$1/txt" ]; then
		mkdir $1/txt
fi
val=$(nslookup $1 >> $PWD/$1/txt/ipaddress.txt)
cat $PWD/$1/txt/ipaddress.txt | awk '{if(NF>0) {print $0}}' | grep -Po "\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}" >> $PWD/$1/ASN/asn.txt
echo $1 | sed -e 's/[".com,in"]*$//g' > $PWD/$1/ASN/$1-ipaddress.txt
echo "This will give IPs you have to manually go and search for asn no on bgp.he.net" >> $PWD/$1/ASN/$1-ipaddress.txt
rm $PWD/$1/txt/ipaddress.txt