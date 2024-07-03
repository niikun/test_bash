#!/usr/bin/bash

echo "$myvar"

if [ "$myvar" -gt 10 ]; then
  echo "myvar is greater than 10"
else
  echo "myvar is 10 or less"
fi