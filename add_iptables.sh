#!/bin/bash
i=0
#for (( i=0; i<8000; i++ ))
while [ "$i" != "8000" ]
do
    #echo $i
    iptables -t nat -A PREROUTING -i br0 -p tcp -s 0.0.0.0/0 -d 192.168.1.1 --dport 22 -j ACCEPT
    iptables -t nat -D PREROUTING 1
    i=$(($i+1))
done
