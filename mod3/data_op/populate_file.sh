#!/usr/bin/bash

echo "How many Lines do you want?"

read LINES

COUNT=1
while [ $COUNT -le $LINES ]
do
    echo "$COUNT $RANDOM" >> file.txt
    ((COUNT++))
done