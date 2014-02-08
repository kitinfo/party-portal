#!/bin/bash
#Create source-based IPv4 NAT with iptables
#cbdev 04062013
if [ $# -lt 3 ]
	then
	echo "Usage: $0 <NETWORK[0.0.0.0/32]> <OUT-IF[eth0]> <OUT-ADDR[192.168.178.1]>"
	echo "Creates source-based NAT for NETWORK via OUT-IF@OUT-ADDR"
	exit
fi

iptables -t nat -A POSTROUTING -o $2 -s $1 -j SNAT --to $3