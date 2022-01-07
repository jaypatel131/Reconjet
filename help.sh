#!/bin/bash

go install github.com/tomnomnom/assetfinder@latest
sudo apt install amass
sudo apt install whois
sudo apt install dnsrecon
sudo apt install subfinder
sudo apt install sublist3r
go install -v github.com/hakluke/haktrails@latest 
go install github.com/hakluke/hakrawler@latest
go install github.com/lc/gau/v2/cmd/gau@latest
sudo apt install dnsenum
go install github.com/tomnomnom/httprobe@latest
sudo apt install ffuf
sudo apt install gobuster
sudo apt install nikto
sudo apt install eyewitness
go install github.com/tomnomnom/waybackurls@latest
echo "-------------------------------------------------------------------------------"
echo "please go for documentation of haktrails because u have to add api key for this"
echo "-------------------------------------------------------------------------------"
echo " NOW GO TO Main DIR ~ by using cd "
echo " go to /go/bin directory "
echo " command cd go/bin/ "
echo "---------------------------------- then ---------------------------------------"
echo "sudo mv assetfinder /usr/bin/assetfinder"
echo "sudo mv haktrails /usr/bin/haktrails"
echo "sudo mv hakrawler /usr/bin/hakrawler"
echo "sudo mv gau /usr/bin/gau"
echo "sudo mv httprobe /usr/bin/httprobe"
echo "sudo mv waybackurls /usr/bin/waybackurls"
