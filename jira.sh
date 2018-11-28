DumpFile="$DESDIR"$DBName.$DATE.sql 
OldFile="$DESDIR"$DBName.$(date +%Y%m%d --date='5 days ago').sql
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
#Delete Old File 
if [ -f $OldFile ] 
then 
   rm -f $OldFile >> $LogFile 2>&1 
   echo "[$OldFile]Delete Old File Success!" >> $LogFile 
else 
   echo "[$OldFile]No Old Backup File!" >> $LogFile 
fi 