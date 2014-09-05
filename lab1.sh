#!/bin/bash

echo "CPU AND MEMORY RESOURCES ------------------"

uptime 

echo "FREE RAM (MB):" 
free -m | tr -s " " | cut -d " " -f4 | head -n 2 | tail -n 1

echo "NETWORK CONNECTIONS------------------------"
echo "lobytes received:"
cat /proc/net/dev | awk '{print$2}' | sed -n '4p'
echo "lobytes transmitted:"
cat /proc/net/dev | awk '{print$10}' | sed -n '4p'
echo "eth0 bytes received:"
cat /proc/net/dev | awk '{print$2}' | sed -n '3p'
echo "eth0 bytes transmitted:"
cat /proc/net/dev | awk '{print$10}' | sed -n '3p'

count=`ping -c 5 www.google.com | wc -l`
if [ $count -eq 10 ]
then 
echo "internet connectivity = yes" 
else
echo "internet connectivity = no"
fi
echo "ACCOUNT INFORMATION------------------------"

echo "TOTAL USERS:" 
cat /etc/passwd | awk -F":" '{print$7}' | wc -l
echo "ACTIVE USERS:"
who | wc -l
echo "MOST FREQUENTLY USED SHELL:"
cat /etc/passwd | awk -F":" '{print$7}' | sort | uniq -c | sort | head -n1

