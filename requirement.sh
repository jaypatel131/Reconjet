#!/bin/bash

#apt pre-build
sudo apt install -y golang
sudo apt install -y git
sudo apt install -y jq
sudo apt install -y amass
sudo apt install -y whois
sudo apt install -y dnsrecon
sudo apt install -y subfinder
sudo apt install -y sublist3r
sudo apt install -y ffuf
sudo apt install -y gobuster
sudo apt install -y nikto
sudo apt install -y whatweb
sudo apt install -y eyewitness
sudo apt install -y arjun
sudo apt install -y feroxbuster
sudo apt install -y cargo
sudo apt install -y libpcap-dev
sudo apt install -y jsbeautifier
#Go
go install github.com/tomnomnom/assetfinder@latest
sudo mv ~/go/bin/assetfinder /usr/bin/assetfinder
go install -v github.com/hakluke/haktrails@latest 
sudo mv ~/go/bin/haktrails /usr/bin/haktrails
go install github.com/hakluke/hakrawler@latest
sudo mv ~/go/bin/hakrawler /usr/bin/hakrawler
go install github.com/lc/gau/v2/cmd/gau@latest
sudo mv ~/go/bin/gau /usr/bin/gau
sudo apt install dnsenum
go install github.com/tomnomnom/httprobe@latest
sudo mv ~/go/bin/httprobe /usr/bin/httprobe
go install github.com/tomnomnom/waybackurls@latest
sudo mv ~/go/bin/waybackurls /usr/bin/waybackurls
go install github.com/dwisiswant0/cf-check@latest
sudo mv ~/go/bin/cf-check /usr/bin/cf-check
go install github.com/yghonem14/cngo@latest
sudo mv ~/go/bin/cngo /usr/bin/cngo
go install github.com/KathanP19/Gxss@latest
sudo mv ~/go/bin/Gxss /usr/bin/Gxss
go install github.com/m4dm0e/dirdar@latest
sudo mv ~/go/bin/dirdar /usr/bin/dirdar
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest
sudo mv ~/go/bin/dnsx /usr/bin/dnsx
go install github.com/tomnomnom/fff@latest
sudo mv ~/go/bin/fff /usr/bin/fff
go install github.com/jaeles-project/gospider@latest
sudo mv ~/go/bin/gospider /usr/bin/gospider
go install github.com/gwen001/github-endpoints@latest
sudo mv	~/go/bin/github-endpoints /usr/bin/github-endpoints
go install github.com/sensepost/gowitness@latest
sudo mv	~/go/bin/gowitness /usr/bin/gowitness
go install github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
sudo mv	~/go/bin/naabu /usr/bin/naabu
go install github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
sudo mv	~/go/bin/nuclei /usr/bin/nuclei
go install github.com/d3mondev/puredns/v2@latest
sudo mv	~/go/bin/puredns /usr/bin/puredns
go install github.com/projectdiscovery/shuffledns/cmd/shuffledns@latest
sudo mv	~/go/bin/shuffledns /usr/bin/shuffledns
go install github.com/lc/subjs@latest
sudo mv	~/go/bin/subjs /usr/bin/subjs
go install github.com/gwen001/github-subdomains@latest
sudo mv	~/go/bin/github-subdomains /usr/bin/github-subdomains

#folder
mkdir tools
cd tools
git clone https://github.com/rbsec/dnscan.git
git clone https://github.com/s0md3v/Corsy.git
git clone https://github.com/nahamsec/lazys3.git
git clone https://github.com/rbsec/dnscan.git
git clone https://github.com/codingo/DNSCewl.git
git clone https://github.com/alone-breecher/bug_hunting.git
git clone https://github.com/projectdiscovery/nuclei-templates.git
git clone https://github.com/nmmapper/dnsdumpster.git
git clone https://www.github.com/devanshbatham/ParamSpider
git clone https://github.com/GerbenJavado/LinkFinder.git
cd LinkFinder
python setup.py install
cd ..
cd ParamSpider
pip install -r requirements.txt
cd ..
git clone https://github.com/devanshbatham/OpenRedireX
# python3 openredirex.py -u “https://www.geeksforgeeks.org/computer-science-projects/?ref=FUZZ” -p payloads.txt –keyword FUZZ
git clone https://github.com/ProjectAnte/dnsgen
cd dnsgen
pip3 install -r requirements.txt
python3 setup.py install
cd ..
git clone https://github.com/findomain/findomain.git
cd findomain
cargo build --release
sudo cp target/release/findomain /usr/bin/
cd ..

echo "firefox https://dnsdumpster.com/"
echo "please go for documentation of haktrails because u have to add api key for this"
echo "firefox https://www.geeksforgeeks.org/aquatone-tool-for-domain-flyovers/"
echo "firefox https://github.com/michenriksen/aquatone"
cd $PATH/dnscan/
pip install -r requirements.txt
cd $PATH/../dnsdumpster/
pip3 install -r requirements.txt
