#!/bin/bash

PATH=/usr/bin:/etc:/usr/sbin:/usr/local/bin:$HOME/bin:/usr/bin/X11:/sbin:/bin.
export PATH

#可以将这个脚本放进crontab，每周第七天凌晨0点执行一次，自动备份  
#设置
#数据库名，数据库登录名，密码，备份路径，日志路径，数据文件位置，备份方式 
#默认情况下备份方式是mysqldump，也可以是tar
#默认情况下，用root登录mysql数据库，备份至/backup/$DATE/mysql_$DATE 
DBName="qdtzkgjtqdjt8852"
DBUser="qdtzkgjtqdjt8852"
DBPasswd="" 
DATE=$(date "+%Y%m%d")
TIME=$(date "+%H%M%S")
DESDIR=/backup/mysql/
LogFile=/root/db.log  
#Setting End 
DumpFile="$DESDIR"$DBName.$DATE.sql 
echo "-------------------------------------------" >> $LogFile 
echo $(date +"%y-%m-%d %H:%M:%S") >> $LogFile 
echo "--------------------------" >> $LogFile
#/backup是否存在
if [ ! -d ${DESDIR} ]; then
    mkdir -p ${DESDIR}
fi
#/$DESDIR/是否存在
if [ ! -d ${DESDIR} ]; then
    mkdir -p ${DESDIR}
fi 
#start backup 
if [ -f $DumpFile ] 
then 
   echo "$DumpFile The Backup File is exists,Can't Backup!" >> $LogFile 
   elif [ -z $DBPasswd ] 
      then 
         mysqldump -u $DBUser --opt --database $DBName > $DumpFile 
      else 
         mysqldump -u $DBUser -p$DBPasswd --opt --database $DBName > $DumpFile 
      echo "[$DumpFile]Backup Success!" >> $LogFile
fi 
echo $(date +"%y-%m-%d %H:%M:%S") >> $LogFile
echo "-------------------------------------------" >> $LogFile
