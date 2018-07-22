#/bin/bash

sumOfOddPower()
{
    local max=$1
    local sum=0

    for (( i=1; i<=$max; i=$i+2 ))
    do
        let sum="$sum + $i * $i"
    done

    echo $sum
}

sumOfOddPower 99
