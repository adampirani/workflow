#!/bin/sh

mkdir -p data
for i in $(cat paths.txt);
do 
	# echo "${i}"
	curl "http://web.archive.org/save/${i}"
	sleep 2
done