#!/bin/sh

leftPad()
{
    local word=$1
    local size=$2
    local pad=$3

    local result=

    let len="$size - ${#word}"
    local i=0
    for (( i=0; i<$len; i++ ))
    do
        result=${result}${pad}
    done

    echo ${result}${word}
}

for (( i=1; i<=120; i++ ))
do
    leftPad "$i" 4 0
done
