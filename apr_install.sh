#!/bin/bash

#install gcc
rpm -qa|grep openssl
yum -y install apr-devel gcc make openssl-devel
strings /lib64/libc.so.6 | grep GLIBC
#cptemp install apr
tar zxf apr-1.6.3.tar.gz 
tar zxf apr-iconv-1.2.2.tar.gz 
tar zxf apr-util-1.6.1.tar.gz 
cd apr-1.6.3
./configure --prefix=/usr/local/apr
make&&make install
cd ../apr-iconv-1.2.2
./configure --prefix=/usr/local/apr-iconv --with-apr=/usr/local/apr
make&&make install
cd ../apr-util-1.6.1
./configure --prefix=/usr/local/apr-util --with-apr=/usr/local/apr --with-apr-iconv=/usr/local/apr-iconv/bin/apriconv 
make&&make install
yum install expat-devel
make&&make install
#cptemp install lastest openssl
tar zxf openssl-1.1.0f.tar.gz 
cd openssl-1.1.0f
cat /proc/version
yum -y install perl
./config shared zlib --prefix=/usr/local/openssl -fPIC
./config -t
make depend
mv /usr/bin/openssl ~
ln -s /mnt/openssl/bin/openssl /usr/bin/openssl
echo "/mnt/openssl/lib/" >> /etc/ld.so.conf
ldconfig -v|grep libssl.so.1.1
openssl version
make&&make install
#install tomcat native 
cd /mnt/tomcat_*/bin/tomcat-native-1.2.14-src/
./configure --with-apr=/usr/local/apr --with-java-home=/mnt/java/jdk1.8.0_152 --with-ssl=/usr/local/openssl
make
#set environment
vi /etc/profile
source /etc/profile
cd /mnt/tomcat_*/bin/
./catalina.sh start
tail -f ../logs/catalina.out 
 

