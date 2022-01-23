#!/bin/bash

if [ ! -d "$1" ]; then
		mkdir $1
fi
if [ ! -d "$1/wayback" ]; then
		mkdir $1/wayback
fi
if [ ! -d "$1/wayback/params" ]; then
		mkdir $1/wayback/params
fi
if [ ! -d "$1/wayback/extensions" ]; then
		mkdir $1/wayback/extensions
fi
if [ ! -d "$1/txt" ]; then
		mkdir $1/txt
fi
echo "[+] Enter wayback data..."
#echo "Enter the website name: "
#read sub_web
#echo "$sub_web" > $PWD/$1/txt/assets.txt
assetfinder $1 >> $PWD/$1/txt/assets.txt
echo "[+] Scraping wayback data..."
cat $PWD/$1/txt/assets.txt | waybackurls >> $PWD/$1/wayback/wayback_output.txt
sort -u $PWD/$1/wayback/wayback_output.txt
 
echo "[+] Pulling and compiling all possible params found in wayback data..."
cat $PWD/$1/wayback/wayback_output.txt | grep '?*=' | cut -d '=' -f 1 | sort -u >> $PWD/$1/wayback/params/wayback_params.txt
for line in $(cat $PWD/$1/wayback/params/wayback_params.txt);do echo $line'=';done
 
echo "[+] Pulling and compiling js/php/aspx/jsp/json files from wayback output..."
for line in $(cat $PWD/$1/wayback/wayback_output.txt);do
    ext="${line##*.}"
    if [[ "$ext" == "js" ]]; then
        echo $line >> $PWD/$1/wayback/extensions/js1.txt
        sort -u $PWD/$1/wayback/extensions/js1.txt >> $PWD/$1/wayback/extensions/js.txt
    fi
    if [[ "$ext" == "html" ]];then
        echo $line >> $PWD/$1/wayback/extensions/jsp1.txt
        sort -u $PWD/$1/wayback/extensions/jsp1.txt >> $PWD/$1/wayback/extensions/jsp.txt
    fi
    if [[ "$ext" == "json" ]];then
        echo $line >> $PWD/$1/wayback/extensions/json1.txt
        sort -u $PWD/$1/wayback/extensions/json1.txt >> $PWD/$1/wayback/extensions/json.txt
    fi
    if [[ "$ext" == "php" ]];then
        echo $line >> $PWD/$1/wayback/extensions/php1.txt
        sort -u $PWD/$1/wayback/extensions/php1.txt >> $PWD/$1/wayback/extensions/php.txt
    fi
    if [[ "$ext" == "aspx" ]];then
        echo $line >> $PWD/$1/wayback/extensions/aspx1.txt
        sort -u $PWD/$1/wayback/extensions/aspx1.txt >> $PWD/$1/wayback/extensions/aspx.txt
    fi
done
 
rm $PWD/$1/wayback/extensions/js1.txt
rm $PWD/$1/wayback/extensions/jsp1.txt
rm $PWD/$1/wayback/extensions/json1.txt
rm $PWD/$1/wayback/extensions/php1.txt
rm $PWD/$1/wayback/extensions/aspx1.txt