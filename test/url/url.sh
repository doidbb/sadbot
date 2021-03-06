#!/bin/bash
#gets the amount of hits from the database
source ./data/uri_hits_db
#parses the url input from the channel
uri_parse=$(wget -O- ${2} -q -nv | grep '<title>' | awk -F '<title>' '{print $NF}' | awk -F '</title>' '{print $1}')
#outputs the final result with the user's name, and the amount of hits
echo ' [URL number ' ${HITS} ' by ' ${1}' '] ' - ' $uri_parse
#HITSNEW=$HITS
HITSNEW=$(($HITS + 1))
echo 'HITS='$HITSNEW > ./data/uri_hits_db
