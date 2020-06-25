#!/bin/sh
path=$2
a=$(ls $2 | shuf -n 1)
b=${a}
speed=$1
./back4.sh $speed $2/$b

