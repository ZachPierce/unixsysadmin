#!/bin/bash

iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -p icmp --icmp-type 8 -m conntrack --ctstate NEW -j ACCEPT
iptables -A INPUT -p icmp --icmp-type 0 -m conntrack --ctstate NEW -j ACCEPT
iptables -A INPUT -p icmp --icmp-type 30 -m conntrack --ctstate NEW -j ACCEPT
iptables -A INPUT -p icmp --icmp-type 3 -m conntrack --ctstate NEW -j ACCEPT
iptables -A INPUT -p tcp -s 100.64.0.0/24 --dport ssh -j ACCEPT
iptables -A INPUT -p tcp -s 100.64.18.0/24 --dport ssh -j ACCEPT
iptables -A INPUT -p tcp -s 100.64.254.0/24 --dport ssh -j ACCEPT
iptables -A INPUT -p tcp -s 10.21.32.0/24 --dport ssh -j ACCEPT
iptables -A INPUT -p tcp -s 172.20.74.4 --dport ssh -j ACCEPT
iptables -A INPUT -p tcp --dport ssh -j REJECT

