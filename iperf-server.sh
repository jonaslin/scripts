#!/bin/bash

portStart=$1
portEnd=$2

for port in `seq $portStart 1 $portEnd`
do
    iperf -s -p $port &
done
