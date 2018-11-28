#!/bin/bash 
# 当/var/log/syslog大于1GB时 
# 自动将其备份，并清空 
# 注意这里awk的使用 
if ! [ -f /var/log/syslog ] 
then 
echo "file not exist!" 
exit 1 
fi 
if [ `ls -l /var/log/syslog|awk '{print $5}'` -gt $((1024*1024)) ] 
then 
cat /var/log/syslog >> ~/log/history # 将日志备份 
echo >> ~/log/history # 增加一个空行 
date >> ~/log/history # 记录时间 
echo "-------------------------------------" >> ~/log/history 
echo > /var/log/syslog # 清空 
fi