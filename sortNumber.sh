#!/bin/bash

# sort number

number=
while read line
do
    [ "$line" == "q" ] && break

    number="$number $line"
done

read -a numArray <<< $number
sorted=`echo ${numArray[@]} | tr " " "\n" | sort -nr`
echo $sorted
