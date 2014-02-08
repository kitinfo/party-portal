#!/bin/bash
#Flush destination-based NAT rules (port forwards)
#cbdev 04062013
iptables -t nat -F PREROUTING
iptables -F FORWARD
