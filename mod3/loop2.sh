#!/usr/bin/bash

for file in /workspaces/test_bash/mod3/*
do
    echo "$file"
    cat "$file"
done