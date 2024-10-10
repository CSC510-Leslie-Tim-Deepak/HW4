#!/bin/bash
# To find the PID of the infinite.sh process and then kill the process
pid=$(ps aux | grep infinite.sh | grep -v grep | awk '{print $2}'); kill -9 $pid && echo "Killed process with PID: $pid"
