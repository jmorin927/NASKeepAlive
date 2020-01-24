#!/bin/bash

set -e

# keep track of the last executed command
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
# echo an error message before exiting
trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT

clear

echo
echo "NASKeepAlive: Started"
echo

count=0

while true
do
	touch /Volumes/Media/NASKeepAlive.txt

	echo "NASKeepAlive[$count]: $(date '+%Y-%m-%d %H:%M:%S:%p')" 

	((count=count+1))

	sleep 60
done

echo
echo "NASKeepAlive: Stopped"
echo