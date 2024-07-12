#!/usr/bin/bash


mimic(){
    echo "First param is $1"
    echo "Second params is $2"
}

mimic 1 2

mimic 99 100


add(){
    num1=$1
    num2=$2
    result=$((num1+num2))
    echo $result
}

mul(){
    num1=$1
    num2=$2
    result=$((num1*num2))
    echo $result
}

mul 12 24