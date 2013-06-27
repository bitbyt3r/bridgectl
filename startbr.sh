#!/bin/bash

ifconfig eth0 0
brctl addif br0 eth0
ifup br0
ip route add default via 130.85.36.65 dev br0
vzctl start 51
vzctl set 51 --netif_add eth0 --save
brctl addif br0 veth51.0
