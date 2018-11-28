#!/bin/bash -ilex
tomcat_path=/usr/local/src/tomcat_wbs
pid=$(lsof -i|grep 39884 | grep LISTEN | awk '{ print $2 }')
fix1=custservplat_pre
fix2=saleplat_pre
fix3=wbs_plat-pre
war_path=/home/qdfinance/jks_node/workspace/$fix3/target
#delopy project
if [ "$pid" = "" ]  
    then
	echo "no tomcat pid alive!"
    rm -rf $tomcat_path/webapps/wbs_plat/*
    unzip $war_path/wbs_plat.war -d $tomcat_path/webapps/wbs_plat/
else
    echo "tomcat Id list :$pid"
    kill -9 $pid
    echo "tomcat stop success"
    rm -rf $tomcat_path/webapps/wbs_plat/*
    unzip $war_path/wbs_plat.war -d $tomcat_path/webapps/wbs_plat/
fi
#start tomcat
export BUILD_ID=dontkillme
cd ${tomcat_path}/bin
./catalina.sh start &
