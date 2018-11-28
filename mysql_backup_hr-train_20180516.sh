#!/bin/bash
# put this script in crontab, 2:00 am - 03:00 point execution once a day, 17:00 PM - 18:00 perform at a time
# set the database name, database login name, password, backup paths, log path, data files, backup mode
# by default backup way is mysqldump
# by default, with the root login the mysql database, backup /$DESDIR/$DBName.sql
DBName=(unifgroup_hrms,unifgroup_ts)
DBUser=root
DBPasswd="gfds@#$^9876POIU"
DAY=$(date "+%Y%m%d%H")
TIME=$(date "+%H%M%S")
DESDIR=/mnt/mysqlbackup/$DAY
LogFile=/mnt/mysqlbackup/run.log
#Setting End
echo "-------------------------------------------" >> $LogFile
echo $(date +"%Y-%m-%d %H:%M:%S") >> $LogFile
echo "--------------------------" >> $LogFile
#To determine whether a /$DESDIR/ exists
if [ ! -d ${DESDIR} ]
then
    mkdir -p ${DESDIR}
else echo "direcory is exist"  >> $LogFile
fi
#start backup
for i in $(echo $DBName | sed 's/,/\n/g')
do
/mnt/mysql/bin/mysqldump -u$DBUser -p$DBPasswd  $i > $DESDIR/$i.sql  2>>$LogFile
if [ -f $DESDIR/$i.sql ]
then
echo "$i Backup Success!" >> $LogFile
else echo "$i Backup fail!" >> $LogFile
fi
echo $(date +"%Y-%m-%d %H:%M:%S") >> $LogFile
echo "--------------------------" >> $LogFile
done
echo $(date +"%Y-%m-%d %H:%M:%S") >> $LogFile
echo "-------------------------------------------" >> $LogFile