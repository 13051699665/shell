#!/bin/bash
# This script run at 23:58

# This is variables
DAY=$(date  +%Y_%m_%d)
HOSTNAME=`hostname`

# On the day of the log store directory
mkdir /mnt/logs/nlog/$DAY

# The Nginx logs path
logs_path="/mnt/nginx/logs"
dest_path="/mnt/logs/nlog/$DAY"

mv ${logs_path}/access.log ${dest_path}/access_$HOSTNAME.log
kill -USR1 `cat /mnt/nginx/logs/nginx.pid`

