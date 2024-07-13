#!/usr/bin/bash

declare -a array=("apple" "pear" "cherry")

for i in "${array[@]}"
do 
    echo "this is ${i} is delicious."
done