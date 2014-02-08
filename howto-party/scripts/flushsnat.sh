#!/bin/bash
#Flushes source-based NAT rules
#cbdev 04062013
iptables -t nat -F POSTROUTING
