@echo off 
set CTS=%Date:~0,4%%Date:~5,2%%Date:~8,2%
set desdir=D:\test\date\
mkdir %desdir%\logdir
set logfile=%desdir%\logdir\%CTS%_copy.log

set sourdir1=D:\test\4C_HQ\4C_HQ\%CTS%
set sourdir2=D:\test\K0004\��ӥ����������޹�˾\%CTS%
set sourdir3=D:\test\K0015\�к�����������޹�˾\%CTS%
set sourdir4=D:\test\K0038\��̩�������������޹�˾\%CTS%
set sourdir5=D:\test\K0041\ŵ������������޹�˾\%CTS%
set sourdir6=D:\test\K0044\�����������ɷ����޹�˾\%CTS%
set sourdir7=D:\test\K0052\��ʱ����������޹�˾\%CTS%
set sourdir8=D:\test\K0056\�ųϻ���������޹�˾\%CTS%
set sourdir9=D:\test\K0071\ƽ���󻪻���������޹�˾\%CTS%
set sourdir10=D:\test\K0088\���δ������������޹�˾\%CTS%
set sourdir11=D:\test\K0104\���Ļ���������޹�˾\%CTS%
set sourdir12=D:\test\K0552\��̩����������޹�˾\%CTS%
set sourdir13=D:\test\K0556\�κϻ���������޹�˾\%CTS%
set sourdir14=D:\test\K0673\����֤ȯ�ɷ����޹�˾\%CTS%
set sourdir15=D:\test\K0687\�п���������������޹�˾\%CTS%
set sourdir16=D:\test\K0833\���ֻ���������޹�˾\%CTS%



echo ***********�����ȷ���ļ�����**************     >> %logfile%

echo =========================================================== >> %logfile%

echo ��ʼ���� at %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo ��ʼ����"%sourdir1%"  at  %date% %time%  >> %logfile%
pushd %sourdir1%
for /f "tokens=*" %%b in ('dir /s/b %sourdir1%\*.TXT') do (copy /y "%%b" "%desdir%")
echo ��ɴ���"%sourdir1%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo ��ʼ����"%sourdir2%"  at  %date% %time%  >> %logfile%
pushd %sourdir2%
for /f "tokens=*" %%b in ('dir /s/b %sourdir2%\*.TXT') do (copy /y "%%b" "%desdir%")
echo ��ɴ���"%sourdir2%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo ��ʼ����"%sourdir3%"  at  %date% %time%  >> %logfile%
pushd %sourdir3%
for /f "tokens=*" %%b in ('dir /s/b %sourdir3%\*.TXT') do (copy /y "%%b" "%desdir%")
echo ��ɴ���"%sourdir3%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo ��ʼ����"%sourdir4%"  at  %date% %time%  >> %logfile%
pushd %sourdir4%
for /f "tokens=*" %%b in ('dir /s/b %sourdir4%\*.TXT') do (copy /y "%%b" "%desdir%")
echo ��ɴ���"%sourdir4%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo ��ʼ����"%sourdir5%"  at  %date% %time%  >> %logfile%
pushd %sourdir5%
for /f "tokens=*" %%b in ('dir /s/b %sourdir5%\*.TXT') do (copy /y "%%b" "%desdir%")
echo ��ɴ���"%sourdir5%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo ��ʼ����"%sourdir6%"  at  %date% %time%  >> %logfile%
pushd %sourdir6%
for /f "tokens=*" %%b in ('dir /s/b %sourdir6%\*.TXT') do (copy /y "%%b" "%desdir%")
echo ��ɴ���"%sourdir6%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo ��ʼ����"%sourdir7%"  at  %date% %time%  >> %logfile%
pushd %sourdir7%
for /f "tokens=*" %%b in ('dir /s/b %sourdir7%\*.TXT') do (copy /y "%%b" "%desdir%")
echo ��ɴ���"%sourdir7%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo ��ʼ����"%sourdir8%"  at  %date% %time%  >> %logfile%
pushd %sourdir8%
for /f "tokens=*" %%b in ('dir /s/b %sourdir8%\*.TXT') do (copy /y "%%b" "%desdir%")
echo ��ɴ���"%sourdir8%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo ��ʼ����"%sourdir9%"  at  %date% %time%  >> %logfile%
pushd %sourdir9%
for /f "tokens=*" %%b in ('dir /s/b %sourdir9%\*.TXT') do (copy /y "%%b" "%desdir%")
echo ��ɴ���"%sourdir9%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo ��ʼ����"%sourdir10%"  at  %date% %time%  >> %logfile%
pushd %sourdir10%
for /f "tokens=*" %%b in ('dir /s/b %sourdir10%\*.TXT') do (copy /y "%%b" "%desdir%")
echo ��ɴ���"%sourdir10%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo ��ʼ����"%sourdir11%"  at  %date% %time%  >> %logfile%
pushd %sourdir11%
for /f "tokens=*" %%b in ('dir /s/b %sourdir11%\*.TXT') do (copy /y "%%b" "%desdir%")
echo ��ɴ���"%sourdir11%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo ��ʼ����"%sourdir12%"  at  %date% %time%  >> %logfile%
pushd %sourdir12%
for /f "tokens=*" %%b in ('dir /s/b %sourdir12%\*.TXT') do (copy /y "%%b" "%desdir%")
echo ��ɴ���"%sourdir12%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo ��ʼ����"%sourdir13%"  at  %date% %time%  >> %logfile%
pushd %sourdir13%
for /f "tokens=*" %%b in ('dir /s/b %sourdir13%\*.TXT') do (copy /y "%%b" "%desdir%")
echo ��ɴ���"%sourdir13%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo ��ʼ����"%sourdir14%"  at  %date% %time%  >> %logfile%
pushd %sourdir14%
for /f "tokens=*" %%b in ('dir /s/b %sourdir14%\*.TXT') do (copy /y "%%b" "%desdir%")
echo ��ɴ���"%sourdir14%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo ��ʼ����"%sourdir15%"  at  %date% %time%  >> %logfile%
pushd %sourdir15%
for /f "tokens=*" %%b in ('dir /s/b %sourdir15%\*.TXT') do (copy /y "%%b" "%desdir%")
echo ��ɴ���"%sourdir15%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo ��ʼ����"%sourdir16%"  at  %date% %time%  >> %logfile%
pushd %sourdir16%
for /f "tokens=*" %%b in ('dir /s/b %sourdir16%\*.TXT') do (copy /y "%%b" "%desdir%")
echo ��ɴ���"%sourdir16%"  at  %date% %time%  >> %logfile%

echo =========================================================== >> %logfile%
echo ***********��������ȷ���ļ�����*************  >> %logfile%

echo ***********��Ϣ***********    >>  %logfile%
echo �Ѿ���T+1�������T��ȷ���ļ����䵽��%desdir%��Ŀ¼��   >>    %logfile%
echo ������̵���־����ڡ�%logfile%��        >>     %logfile%
exit