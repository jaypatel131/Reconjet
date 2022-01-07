#!/bin/bash

go install github.com/tomnomnom/assetfinder@latest
sudo mv cd ../go/bin/assetfinder /usr/bin/assetfinder
sudo apt install amass
sudo apt install whois
sudo apt install dnsrecon
sudo apt install subfinder
sudo apt install sublist3r
go install -v github.com/hakluke/haktrails@latest 
sudo mv haktrails ../go/bin//usr/bin/haktrails
go install github.com/hakluke/hakrawler@latest
sudo mv hakrawler ../go/bin//usr/bin/hakrawler
go install github.com/lc/gau/v2/cmd/gau@latest
sudo mv gau ../go/bin//usr/bin/gau
sudo apt install dnsenum
go install github.com/tomnomnom/httprobe@latest
sudo mv httprobe ../go/bin//usr/bin/httprobe
sudo apt install ffuf
sudo apt install gobuster
sudo apt install nikto
sudo apt install eyewitness
go install github.com/tomnomnom/waybackurls@latest
sudo mv waybackurls /usr/bin/waybackurls
echo "please go for documentation of haktrails because u have to add api key for this"