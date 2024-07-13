#!/usr/bin/bash

declare -A mealhash=([dinner]="steak" [lunch]="sasarada" [breakfast]='fruit')

for key in "${!mealhash[@]}";
do
    echo "$key I eat the ${mealhash[$key]}"
done