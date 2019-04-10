#!/bin/sh

base=1
offset=5

[ $1 ] && base=$1
[ $2 ] && offset=$2

for i in `seq $base $(($base + $offset - 1))`
do
    ping -c 3 192.168.51.$i
    echo "\r\n"
done

