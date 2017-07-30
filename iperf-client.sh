#!/bin/bash

for port in `seq 8100 1 8140`;
do
    iperf -c 10.0.0.200 -p $port -i 1 -t 120 &
done

