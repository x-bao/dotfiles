#!/bin/sh

base=1
offset=5
ip=192.168.51
waittime=200

function inred () {
    echo "\033[31m$1\033[0m"
}

function help () {
    echo "--- Saving you ---\n"
    echo "Usage"
    echo "$(inred 'ips') \t\t\t By default, without any params, you will search from 192.168.51.1 to 192.168.51.5"
    echo "$(inred 'ips -p 192.168.0')\t Set ip search scope"
    echo "$(inred 'ips -b 1 -o 3')\t\t Set base is 1 and offet is 3 which mains that you will search from ip 192.168.51.1 to 192.168.51.3"
    echo "$(inred 'ips -w 1000')\t\t Set ping waittime"
    echo "$(inred 'ips -h')\t\t\t Show help"
}

while getopts p:b:o:w:h args
do
    case $args in
        p)
            ip=$OPTARG
            ;;
        b)
            base=$OPTARG
            ;;
        o)
            offset=$OPTARG
            ;;
        w)
            waittime=$OPTARG
            ;;
        h)
            help
            exit 0
            ;;
        ?)
            help
            exit -1
            ;;
        :)
            help
            ;;
    esac
done

trap 'echo "\nBye\n"; exit' INT

for i in `seq $base $(($base + $offset - 1))`
do
    ping -c 3 -W $waittime $ip.$i
    echo "\r\n"
done

