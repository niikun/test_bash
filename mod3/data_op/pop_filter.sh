#!/usr/bin/bash

echo "How many lines do you want ?"
read LINES

declare -a array=("apple" "peach" "grape")

COUNT=1
while [ $COUNT -le $LINES ]
do
    rand=$[ $RANDOM % 3 ]
    echo "$COUNT ${array[ $rand ]}" >> filter-file.txt
    ((COUNT++))
done