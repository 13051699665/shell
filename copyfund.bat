@echo off 
set CTS=%Date:~0,4%%Date:~5,2%%Date:~8,2%
set desdir=D:\test\date\
mkdir %desdir%\logdir
set logfile=%desdir%\logdir\%CTS%_copy.log

set sourdir1=D:\test\4C_HQ\4C_HQ\%CTS%
set sourdir2=D:\test\K0004\金鹰基金管理有限公司\%CTS%
set sourdir3=D:\test\K0015\中海基金管理有限公司\%CTS%
set sourdir4=D:\test\K0038\华泰柏瑞基金管理有限公司\%CTS%
set sourdir5=D:\test\K0041\诺安基金管理有限公司\%CTS%
set sourdir6=D:\test\K0044\汇添富基金管理股份有限公司\%CTS%
set sourdir7=D:\test\K0052\博时基金管理有限公司\%CTS%
set sourdir8=D:\test\K0056\信诚基金管理有限公司\%CTS%
set sourdir9=D:\test\K0071\平安大华基金管理有限公司\%CTS%
set sourdir10=D:\test\K0088\华宸未来基金管理有限公司\%CTS%
set sourdir11=D:\test\K0104\华夏基金管理有限公司\%CTS%
set sourdir12=D:\test\K0552\九泰基金管理有限公司\%CTS%
set sourdir13=D:\test\K0556\嘉合基金管理有限公司\%CTS%
set sourdir14=D:\test\K0673\东兴证券股份有限公司\%CTS%
set sourdir15=D:\test\K0687\中科沃土基金管理有限公司\%CTS%
set sourdir16=D:\test\K0833\新沃基金管理有限公司\%CTS%



echo ***********行情和确认文件传输**************     >> %logfile%

echo =========================================================== >> %logfile%

echo 开始传输 at %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo 开始传输"%sourdir1%"  at  %date% %time%  >> %logfile%
pushd %sourdir1%
for /f "tokens=*" %%b in ('dir /s/b %sourdir1%\*.TXT') do (copy /y "%%b" "%desdir%")
echo 完成传输"%sourdir1%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo 开始传输"%sourdir2%"  at  %date% %time%  >> %logfile%
pushd %sourdir2%
for /f "tokens=*" %%b in ('dir /s/b %sourdir2%\*.TXT') do (copy /y "%%b" "%desdir%")
echo 完成传输"%sourdir2%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo 开始传输"%sourdir3%"  at  %date% %time%  >> %logfile%
pushd %sourdir3%
for /f "tokens=*" %%b in ('dir /s/b %sourdir3%\*.TXT') do (copy /y "%%b" "%desdir%")
echo 完成传输"%sourdir3%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo 开始传输"%sourdir4%"  at  %date% %time%  >> %logfile%
pushd %sourdir4%
for /f "tokens=*" %%b in ('dir /s/b %sourdir4%\*.TXT') do (copy /y "%%b" "%desdir%")
echo 完成传输"%sourdir4%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo 开始传输"%sourdir5%"  at  %date% %time%  >> %logfile%
pushd %sourdir5%
for /f "tokens=*" %%b in ('dir /s/b %sourdir5%\*.TXT') do (copy /y "%%b" "%desdir%")
echo 完成传输"%sourdir5%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo 开始传输"%sourdir6%"  at  %date% %time%  >> %logfile%
pushd %sourdir6%
for /f "tokens=*" %%b in ('dir /s/b %sourdir6%\*.TXT') do (copy /y "%%b" "%desdir%")
echo 完成传输"%sourdir6%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo 开始传输"%sourdir7%"  at  %date% %time%  >> %logfile%
pushd %sourdir7%
for /f "tokens=*" %%b in ('dir /s/b %sourdir7%\*.TXT') do (copy /y "%%b" "%desdir%")
echo 完成传输"%sourdir7%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo 开始传输"%sourdir8%"  at  %date% %time%  >> %logfile%
pushd %sourdir8%
for /f "tokens=*" %%b in ('dir /s/b %sourdir8%\*.TXT') do (copy /y "%%b" "%desdir%")
echo 完成传输"%sourdir8%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo 开始传输"%sourdir9%"  at  %date% %time%  >> %logfile%
pushd %sourdir9%
for /f "tokens=*" %%b in ('dir /s/b %sourdir9%\*.TXT') do (copy /y "%%b" "%desdir%")
echo 完成传输"%sourdir9%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo 开始传输"%sourdir10%"  at  %date% %time%  >> %logfile%
pushd %sourdir10%
for /f "tokens=*" %%b in ('dir /s/b %sourdir10%\*.TXT') do (copy /y "%%b" "%desdir%")
echo 完成传输"%sourdir10%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo 开始传输"%sourdir11%"  at  %date% %time%  >> %logfile%
pushd %sourdir11%
for /f "tokens=*" %%b in ('dir /s/b %sourdir11%\*.TXT') do (copy /y "%%b" "%desdir%")
echo 完成传输"%sourdir11%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo 开始传输"%sourdir12%"  at  %date% %time%  >> %logfile%
pushd %sourdir12%
for /f "tokens=*" %%b in ('dir /s/b %sourdir12%\*.TXT') do (copy /y "%%b" "%desdir%")
echo 完成传输"%sourdir12%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo 开始传输"%sourdir13%"  at  %date% %time%  >> %logfile%
pushd %sourdir13%
for /f "tokens=*" %%b in ('dir /s/b %sourdir13%\*.TXT') do (copy /y "%%b" "%desdir%")
echo 完成传输"%sourdir13%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo 开始传输"%sourdir14%"  at  %date% %time%  >> %logfile%
pushd %sourdir14%
for /f "tokens=*" %%b in ('dir /s/b %sourdir14%\*.TXT') do (copy /y "%%b" "%desdir%")
echo 完成传输"%sourdir14%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo 开始传输"%sourdir15%"  at  %date% %time%  >> %logfile%
pushd %sourdir15%
for /f "tokens=*" %%b in ('dir /s/b %sourdir15%\*.TXT') do (copy /y "%%b" "%desdir%")
echo 完成传输"%sourdir15%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo 开始传输"%sourdir16%"  at  %date% %time%  >> %logfile%
pushd %sourdir16%
for /f "tokens=*" %%b in ('dir /s/b %sourdir16%\*.TXT') do (copy /y "%%b" "%desdir%")
echo 完成传输"%sourdir16%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo ***********完成行情和确认文件传输*************  >> %logfile%

echo ***********信息***********    >>  %logfile%
echo 已经将T+1日行情和T日确认文件传输到“%desdir%”目录下   >>    %logfile%
echo 传输过程的日志存放在”%logfile%“        >>     %logfile%
exit