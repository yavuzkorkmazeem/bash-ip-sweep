#!/bin/bash
#Basic IP Sweep Tool Written In Bash
#Usage : ./ipsweep.sh 192.168.1

#check for input :
if [ "$1" == "" ]
then
echo "you forgot the ip adress"
echo "syntax : 192.168.1"


# Loop over all IPs from .1 to .254
else
for ip in $(seq 1 254); do
ping -c  1 -W 1 $1.$ip |grep "64 bytes"|cut -d " " -f 4|tr -d ":" & done
fi
