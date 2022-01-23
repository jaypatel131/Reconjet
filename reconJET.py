#!/bin/python3

import sys
import datetime
import os
import argparse
global filename

def assetfinder(x):
    i = x
    print("[+] Looking for assets : "+i)
    cmd = "bash scripts/assetfinder.sh "+i+" 2>/dev/null"
    os.system(cmd)
    return 0
    
def whois(x):
    i = x
    print("[+] Whois information for domain "+i)
    cmd = "bash scripts/whois.sh "+i+" 2>/dev/null"
    os.system(cmd)
    return 0   
    
def ipaddress(x):
    i = x
    print("[+] Scan for ASN enumeration..."+i)
    cmd = "bash scripts/iprange.sh "+i+" 2>/dev/null"
    os.system(cmd)
    return 0

def rdns(x):
    i = x
    print("[+] Looking for Reverse DNS : "+i)
    cmd = "bash scripts/rDNS.sh "+i+" 2>/dev/null"
    os.system(cmd)
    return 0
    
def subfinder(x):
    i = x
    print("[+] Looking for Subdomains(subfinder) : "+i)
    cmd = "bash scripts/subfinder.sh "+i+" 2>/dev/null"
    os.system(cmd)
    return 0

def sublis3r(x):
    i = x
    print("[+] Looking for Subdomains(sublis3r) : "+i)
    cmd = "bash scripts/sublis3r.sh "+i+" 2>/dev/null"
    os.system(cmd)
    return 0
    
def dnscan(x):
    i = x
    print("[+] Looking for Subdomains(dnscan) : "+i)
    cmd = "bash scripts/dnsscan.sh "+i+" 2>/dev/null"
    os.system(cmd)
    return 0

def hakrawler(x):
    i = x
    print("[+] Looking for hakrawler(links) : "+i)
    cmd = "bash scripts/hakrawler.sh "+i+" 2>/dev/null"
    os.system(cmd)
    return 0
    
def amass(x):
    i = x
    print("[+] Looking for amass data : "+i)
    cmd = "bash scripts/amass.sh "+i+" 2>/dev/null"
    os.system(cmd)
    return 0
    
def ip_address(x):
    i = x
    print("[+] Looking for ip address : "+i)
    cmd = "bash scripts/ipadd.sh "+i+" 2>/dev/null"
    os.system(cmd)
    return 0
    
def pscan(x):
    i = x
    print("[+] Scan For port by Nmap : "+i)
    cmd = "bash scripts/nmap.sh "+i+" 2>/dev/null"
    os.system(cmd)
    return 0

def GAU(x):
    i = x
    print("[+] Looking for GAU data : "+i)
    cmd = "bash scripts/GAU.sh "+i+" 2>/dev/null"
    os.system(cmd)
    return 0

def DNSenum(x):
    i = x
    print("[+] Subdomain finder DNSenum data : "+i)
    cmd = "bash scripts/DNSenum.sh "+i+" 2>/dev/null"
    os.system(cmd)
    return 0

def dnsdumpster(x):
    i = x
    print("[+] Subdomain finder dnsdumpster : "+i)
    cmd = "bash scripts/dnsdumpster.sh "+i+" 2>/dev/null"
    os.system(cmd)
    return 0    

def dnsrecon(x):
    i = x
    print("[+] Looking for dnsrecon : "+i)
    cmd = "bash scripts/dnsrecon.sh "+i+" 2>/dev/null"
    os.system(cmd)
    return 0

def httprobe(x):
    i = x
    print("[+] Looking for live website : "+i)
    cmd = "bash scripts/httprobe.sh "+i+" 2>/dev/null"
    os.system(cmd)
    return 0
    
def ffuf(x):
    i = x
    print("[+] FUZZING by ffuf : "+i)
    cmd = "bash scripts/ffuf.sh "+i+" 2>/dev/null"
    os.system(cmd)
    return 0   


def gobuster(x):
    i = x
    print("[+] Directory busting by gobuster : "+i)
    cmd = "bash scripts/gobuster.sh "+i+" 2>/dev/null"
    os.system(cmd)
    return 0

def lazyS3(x):
    i = x
    print("[+] Looking for S3 bucket : "+i)
    cmd = "bash scripts/lazyS3.sh "+i+" 2>/dev/null"
    os.system(cmd)
    return 0
    
def nikto(x):
    i = x
    print("[+] Scan for nikto : "+i)
    cmd = "bash scripts/nikto.sh "+i+" 2>/dev/null"
    os.system(cmd)
    return 0

def whatweb(x):
    i = x
    print("[+] Looking for Web build : "+i)
    cmd = "bash scripts/whatweb.sh "+i+" 2>/dev/null"
    os.system(cmd)
    return 0

def eyewitness(x):
    i = x
    print("[+] Looking for screenshort : "+i)
    cmd = "bash scripts/eyewitness.sh "+i+" 2>/dev/null"
    os.system(cmd)
    return 0

def wayback(x):
    i = x
    print("[+] Look into wayback machine : "+i)
    cmd = "bash scripts/wayback.sh "+i+" 2>/dev/null"
    os.system(cmd)
    return 0

#Main-code
ap = argparse.ArgumentParser()
ap.add_argument("-d", "--domainlist", required=True, help="provide domain list")
args = vars(ap.parse_args())
filename = str(args['domainlist'])
with open(filename, "r") as file:
    readline=file.read().splitlines()
    print(readline)

os.system("figlet -w 100 -c reconJET")
print("\t\t\t    Made with love by Xroot0rayan & Mr.Cry0niX")
print("------------------------------------------------------------------------------------------------------")
print("\t\t\t\t    file open : "+str(filename))
while(True):
    print("------------------------------------------------------------------------------------------------------")
    print("Select Operation : ")
    print(" 0 . assetfinder \n 1 . ASN  \n 2 . Whois lookup \n 3 . Reverase DNS lookup \n 4 . subfinder(Subdomain enum) \n 5 . Sublister(Subdomain enum) \n 6 . hakrawler(link discovery) \n 7 . Amass(Subdomain enum) \n 8 . IP Address \n 9 . Port & service Scanning(nmap) \n10 . Gather all url(gau) \n11 . dnsenum \n12 . Dnsdumpster \n13 . Dnsrecon \n14 . Dnscan \n15 . httprobe(Subdomain probbing) \n16 . ffuf(https only) \n17 . gobuster(http) \n18 . lazyS3 \n19 . nikto \n20 . whatweb \n21 . eyewitness \n22 . wayback \n23 . all")
    selected_option = int(input("Enter Option Number : "))
    if selected_option == "":
        print("You have not selected any option :(")
        exit(0)
    print("type 0 if you starting recon on fresh domain")
    print("You have selected Option : "+str(selected_option))
    if selected_option==0:
    	abc = list(map(assetfinder,readline))
    if selected_option==1:
    	abc = list(map(ipaddress,readline))
    if selected_option==2:
        abc = list(map(whois,readline))
    if selected_option==3:
        abc = list(map(rdns,readline))
    if selected_option==4:
        abc = list(map(subfinder,readline))
    if selected_option==5:
        abc = list(map(sublis3r,readline))
    if selected_option==6:
        abc = list(map(hakrawler,readline))
    if selected_option==7:
        abc = list(map(amass,readline))
    if selected_option==8:
        abc = list(map(ip_address,readline))
    if selected_option==9:
        abc = list(map(pscan,readline))
    if selected_option==10:
        abc = list(map(GAU,readline))
    if selected_option==11:
        abc = list(map(DNSenum,readline))
    if selected_option==12:
        abc = list(map(dnsdumpster,readline))
    if selected_option==13:
        abc = list(map(dnsrecon,readline))
    if selected_option==14:
        abc = list(map(dnscan,readline))
    if selected_option==15:
        abc = list(map(httprobe,readline))
    if selected_option==16:
        abc = list(map(ffuf,readline))
    if selected_option==17:
        abc = list(map(gobuster,readline))
    if selected_option==18:
        abc = list(map(lazyS3,readline))
    if selected_option==19:
        abc = list(map(nikto,readline))
    if selected_option==20:
        abc = list(map(whatweb,readline))
    if selected_option==21:
        abc = list(map(eyewitness,readline))
    if selected_option==22:
        abc = list(map(wayback,readline))
    if selected_option==23:
    	abc = list(map(assetfinder,readline))
    	abc = list(map(ipaddress,readline)) 
    	abc = list(map(whois,readline))
    	abc = list(map(rdns,readline))
    	abc = list(map(sublis3r,readline))
    	abc = list(map(hakrawler,readline))
    	abc = list(map(amass,readline))
    	abc = list(map(ip_address,readline))
    	abc = list(map(pscan,readline))
    	abc = list(map(GAU,readline))
    	abc = list(map(DNSenum,readline))
    	abc = list(map(dnscan,readline))
    	abc = list(map(httprobe,readline))
    	abc = list(map(ffuf,readline))
    	abc = list(map(gobuster,readline))
    	abc = list(map(lazyS3,readline))
    	abc = list(map(nikto,readline))
    	abc = list(map(whatweb,readline))
    	abc = list(map(wayback,readline))
    	abc = list(map(eyewitness,readline))
        
        
        
        
        
        
    
    cont=True
    sel = input("Continue with more option?[Y/n] : ")
    if sel=="Y" or sel=="y" or sel=="":
        cont=True
    else:
        cont=False
    if cont==False:
        break
print("--------------------------------------------------------------------")
print("\t\tThanks for using reconJET script")
print("--------------------------------------------------------------------")	
