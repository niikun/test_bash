#!/bin/bash

# Function to prompt user for input
get_input(){
    read -p "enter file to process: " infile
}

# file to sort sdin lines
sort_lines(){
    sort
}

# Function to filter lines by keyword
filter(){
    grep "$1"
}

process_file(){
    # get file name from user
    get_input

    # redirect file to stdin pipe
    cat "$infile" | tee /dev/stderr |
    # Sort piped lines
    sort_lines |
    # filter lines by keyword
    filter "error"
}

process_file