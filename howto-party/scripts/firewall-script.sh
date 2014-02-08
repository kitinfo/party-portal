#!/bin/bash
#Firewall rule script
#cbdev sometime
if [ $# -lt 1 ]
 then
	echo "No firewall binary - call with $0 iptables or $0 ip6tables"
	exit
fi

echo "Setting up rules using $1"

echo "Resetting chain default policies to ACCEPT"
$1 -P INPUT ACCEPT
$1 -P FORWARD ACCEPT
$1 -P OUTPUT ACCEPT


echo "Flushing all rules"
$1 -F
$1 -t nat -F


echo "Allowing loopback connections"
$1 -A INPUT -i lo -j ACCEPT
$1 -A OUTPUT -o lo -j ACCEPT

echo "Setting default policies to DROP"
$1 -P INPUT DROP
$1 -P FORWARD DROP
##This can be used when only certain outgoing traffic is to be allowd
#$1 -P OUTPUT DROP

echo "Allowing established and related connections"
$1 -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

echo "Allowing all outbound connections"
##When only allowing specifix outbound traffic, specify rules here
$1 -A OUTPUT -j ACCEPT

echo "Opening defined set of inbound ports"
#$1 -A INPUT -p tcp --dport 80 -j ACCEPT

##
# EDIT HERE
# Add your own inbound ports
##

echo "Allowing 10 SSH attempts on 2222 per 3 minutes"
$1 -A INPUT -p tcp -m tcp --dport 2222 -m state --state NEW -m recent --set --name DEFAULT --rsource
$1 -A INPUT -p tcp -m tcp --dport 2222 -m state --state NEW -m recent --update --seconds 180 --hitcount 10 --name DEFAULT --rsource -j DROP
$1 -A INPUT -p tcp -m state --state NEW --dport 2222 -j ACCEPT

echo "Allowing ICMP Ping"
$1 -A INPUT -p icmp -j ACCEPT
$1 -A INPUT -p icmpv6 -j ACCEPT

echo "Rejecting all other traffic"
$1 -A INPUT -j REJECT
$1 -A FORWARD -j REJECT


