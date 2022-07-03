#!/bin/sh
# $0 is the script name, $1 id the first ARG, $2 is second...

choice="$1"
count="$2"
angle="$3"

if [ "$choice" = "0" ]; then
    echo "Generating clean data"
    trdg -l chem -c $count -w 5 -f 64 -r -t 8 -k $angle -rk -na 2 -b 2
fi


if [ "$choice" = "1" ]; then
    echo "Generating distorted data"
    trdg -l chem -c $count -w 5 -f 64 -r -t 8 -k $angle -rk -na 2 -d 3 -do 2
fi

if [ "$choice" = "2" ]; then
    echo "Generating clean data with background image"
    trdg -l chem -c $count -w 5 -f 64 -r -t 8 -k $angle -rk -na 2 -b 0
fi