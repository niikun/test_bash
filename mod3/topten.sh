#!/usr/bin/bash

for filename in file{1..10};
do
	echo $filename >> filename.txt
done
