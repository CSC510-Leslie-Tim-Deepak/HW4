#!/bin/bash
# To find the PID of the infinite.sh process 
pid=$(ps aux | grep infinite.sh | grep -v grep | awk '{print $2}')

# To kill the process 
kill -9 $pid
echo "Killed process with PID: $pid"
