#!/usr/bin/bash



phrase_generator(){
counts=$1
phrase=$2
for ((i=0; i<="$counts"; i++))
do
    echo "$phrase"
done
}

while [[ $# -gt 1 ]]
do
key="$1"

case $key in
    -c|--count)
    COUNT="$2"
    shift
    ;;
    -p|--phrase)
    PHRASE="$2"
    shift
    ;;
esac
shift
done

phrase_generator "${COUNT}" "${PHRASE}"