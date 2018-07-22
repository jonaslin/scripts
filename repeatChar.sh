#!/bin/bash

repeatChar()
{
    local count=$1
    local word=$2

    local result=

    for (( i=0; i<${#word}; i++ ))
    do
        local ch=${word:$i:1}
        for (( j=0; j<$count; j++ ))
        do
            result=${result}${ch}
        done
    done

    echo $result
}

# repeat characters 5 times
repeatChar 5 $1
