#!/bin/bash

# Task a: Filter files
grep -l "sample" * | xargs -I{} sh -c 'count=$(grep -o "CSC510" {} | wc -l | tr -d " "); [ "$count" -ge 3 ] && echo "$count {}"' |

# Task b: Sort the filtered files
xargs -I{} sh -c 'set -- {}; size=$(stat -f "%z" $2); echo "$1 $size $2"' | gawk '{print $1, $2, $3}' | sort -k1,1nr -k2,2nr | gawk '{print $3}' |

# Task c: Replace 'file_' with 'filtered_' in the file names and list the final output.
sed 's/file_/filtered_/'

