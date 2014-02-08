#!/bin/bash
#Prepare computer for source-based IPv4 NAT
#cbdev 04062013

iptables -t nat -F
echo 1 > /proc/sys/net/ipv4/ip_forward