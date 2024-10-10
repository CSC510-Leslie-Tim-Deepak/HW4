#!/bin/bash

#task a
grep -rl 'sample' dataset1/ | xargs -I {} sh -c 'count=$(grep -o "CSC510" "{}" | wc -l); if [ "$count" -ge 3 ]; then echo "$count {}"; fi' | \
#task b
gawk '{print $1, $2}' | xargs -I {} sh -c 'size=$(stat -f "%z" "$(echo {} | cut -d" " -f2)"); echo "$(echo {} | cut -d" " -f1) $size $(echo {} | cut -d" " -f2)"' | sor    t -k1,1nr -k2,2nr | \
#task c
sed 's/dataset1\/\///g' | sed 's/file_/filtered_/'
