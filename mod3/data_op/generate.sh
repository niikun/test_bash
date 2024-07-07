#!/usr/bin/bash


echo "how many lines do you want?"
read LINES

COUNT=0

while [[ $COUNT -le $LINES ]]
do
    echo "$COUNT,hello $COUNT times." >> test_bash.csv
    COUNT=$((COUNT+1))
done