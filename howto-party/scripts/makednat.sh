#!/bin/bash
#Create destination-based NAT mapping (aka tcp port forwarding) with iptables
#cbdev 04062013
if [ $# -lt 4 ]
	then
	echo "Usage: $0 <IN-IF[eth0]> <IN-PORT[80]> <DEST-ADDR[192.168.178.1]> <DEST-PORT[8080]>"
	echo "Creates destination-based NAT (port forward) from IN-IF:IN-PORT to DEST-ADDR:DEST-PORT"
	exit
fi

#iptables -A PREROUTING -t nat -i eth1 -p tcp --source 11.22.33.44 --dport 80 -j DNAT --to $3:$4

iptables -A PREROUTING -t nat -i $1 -p tcp --dport $2 -j DNAT --to $3:$4
iptables -A FORWARD -p tcp -m state --state NEW -d $3 --dport $2 -j ACCEPT