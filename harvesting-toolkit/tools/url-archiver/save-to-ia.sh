#!/bin/sh

url=$(awk -F = '{print $1}' url.txt)
mkdir -p data
for i in $(cat paths.txt);
do 
	# echo "${url}${i}"
	curl "http://web.archive.org/save/${url}${i}"
	sleep 2
done