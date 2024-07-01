#!/bin/bash

read -p "Enter filename: " filename

if [ -f "$filename" ];then
    echo "file $filename exists"

else
    echo "file $filename does not exist."
fi