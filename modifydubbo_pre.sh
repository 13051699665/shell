#!/bin/bash -ilex
pid=`ps aux | grep -v  "grep" | grep "tomcat_api" | awk '{print $2}'`
tomcat_path=/usr/local/src/tomcat_api
war_path=/home/qdfinance/jks_node/workspace/dubbo_pre/AntBuild/war
#delopy project
if [ "$pid" = "" ]
    then
        echo "no tomcat pid alive!"
    rm -rf $tomcat_path/webapps/unifgroupDubboServer/*
    unzip $war_path/unifgroupDubboServer.war -d $tomcat_path/webapps/unifgroupDubboServer/
else
    echo "tomcat Id list :$pid"
    kill -9 $pid
    echo "tomcat stop success"
    rm -rf $tomcat_path/webapps/unifgroupDubboServer/*
    unzip $war_path/unifgroupDubboServer.war -d $tomcat_path/webapps/unifgroupDubboServer/
fi
#start tomcat
export BUILD_ID=dontkillme
cd ${tomcat_path}/bin
/bin/sh catalina.sh start 
