#!/bin/bash

brctl addbr br0
ifconfig eth0 0
brctl addif br0 eth0
service network restart
ip route add default via 130.85.36.65 dev br0
