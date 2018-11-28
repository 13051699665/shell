#  merge log for many server log
#  # This script run at 00:06
#!/bin/bash

# This is variables
DAY=$(date +%Y_%m_%d)

# Create the combined log storage directory
mkdir -p /mnt/logs/merge_logs/$DAY

# The specified log before and after the merger of storage directory
OldLog=/mnt/logs/nlog/$DAY
NewLog=/mnt/logs/merge_logs

# Perform more merge server logs
for log in access_iZ25fy623qhZ.log  access_iZ256iytj6lZ.log
do
sort -m -t " " -k 4 -o  $NewLog/access_log.$DAY.log $OldLog/$log $OldLog/$log
done
