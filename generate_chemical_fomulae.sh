#!/bin/sh
# $0 is the script name, $1 id the first ARG, $2 is second...

choice="$1"
count="$2"
angle="$3"
startingIndex="$4"

if [ "$choice" = "0" ]; then
    echo "Generating clean data with Gaussian background"
    trdg -l chem -c $count -w 1 -f 64 -r -t 8 -k $angle -rk -na 2 -b 0 -si $startingIndex
fi

if [ "$choice" = "1" ]; then
    echo "Generating clean data with background image"
    trdg -l chem -c $count -w 1 -f 64 -r -t 8 -k $angle -rk -na 2 -b 3 -si $startingIndex
fi

if [ "$choice" = "2" ]; then
    echo "Generating clean data with plain white background"
    trdg -l chem -c $count -w 1 -f 64 -r -t 8 -k $angle -rk -na 2 -b 1 -si $startingIndex
fi


if [ "$choice" = "3" ]; then
    echo "Generating clean data with Quasicrystal, background"
    trdg -l chem -c $count -w 1 -f 64 -r -t 8 -k $angle -rk -na 2 -b 2 -si $startingIndex
fi


if [ "$choice" = "4" ]; then
    echo "Generating distorted data"
    trdg -l chem -c $count -w 5 -f 64 -r -t 8 -k $angle -rk -na 2 -d 3 -do 2 -si $startingIndex
fi

# trdg -l cn_sim -c 1000 -w 5 -f 64 -r -t 8 -d -do 2 -k 10 -rk -na 2 -b 3 -si 0