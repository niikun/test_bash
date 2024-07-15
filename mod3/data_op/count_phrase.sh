#!/usr/bin/bash


count=$1
phrase=$2

num=0

while [[ "$num" -lt "$count" ]];
do
    echo "$((num+1)) times $phrase"
    num=$((num+1))
done 