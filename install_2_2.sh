#!/bin/bash
if (( $EUID != 0 ))
then
        echo "Please run as root"
        exit
fi
url="$2"
filename=$(basename "$url")
workpath=$(dirname $(readlink -f $0))
curl $url -o $workpath/$filename -s
dpkg --install  $workpath/$filename
