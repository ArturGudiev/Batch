@echo off

if "%1"=="" goto EMPTY
if "%1"=="drive" goto drive
if "%1"=="sql" goto sqlplus
if "%1"=="sqlplus" goto sqlplus
if "%1"=="sqlplus1" goto sqlplus1
if "%1"=="sql1" goto sqlplus1
if "%1"=="plus" goto sqlplus
if "%1"=="pl" goto sqlplus
if "%1"=="pl1" goto sqlplus1
if "%1"=="sqldev" goto sqldev
if "%1"=="dev" goto sqldev
if "%1"=="+" goto start
if "%1"=="++" goto start
if "%1"=="start" goto start
if "%1"=="-" goto stop
if "%1"=="--" goto stop
if "%1"=="stop" goto stop
if "%1"=="dp" goto dp
if "%1"=="dpclear" goto dpclear
if "%1"=="dpcl" goto dpclear
if "%1"=="dpc" goto dpclear
if "%1"=="dpdir" goto dpdir
if "%1"=="admin" goto admin
if "%1"=="tns" goto tns
if "%1"=="net" goto net
if "%1"=="listener" goto listener
if "%1"=="triz" goto triz
if "%1"=="ba" goto ba
if "%1"=="g4" goto g4
if "%1"=="4" goto g4
if "%1"=="ba1" goto ba1
if "%1"=="in" goto ba1
if "%1"=="log" goto ba1
if "%1"=="g3" goto g3
if "%1"=="3" goto g3
if "%1"=="g5" goto g5
if "%1"=="5" goto g5
if "%1"=="picture" goto picture
if "%1"=="g6" goto g6
if "%1"=="6" goto g6
if "%1"=="as" goto as
if "%1"=="g62" goto g62
if "%1"=="62" goto g62
if "%1"=="6i" goto 6i
if "%1"=="redis" goto redis
if "%1"=="r" goto redis
if "%1"=="re" goto redis_edit
if "%1"=="mongo" goto mongo
if "%1"=="mo" goto mongo
if "%1"=="mongod" goto mongodir
if "%1"=="mond" goto mongodir
if "%1"=="mod" goto mongodir
if "%1"=="mos" goto mos
goto end

:mos
C:\tools\mongo\mongo.exe "mongodb+srv://cluster0-jryec.mongodb.net/test" --username user --password 1234567890MongoDb! C:\Artur\University\SUBD\mongo\script.js
REM C:\tools\mongo\mongo.exe "mongodb+srv://cluster0-jryec.mongodb.net/test" --username user --password 1234567890MongoDb! C:\Artur\University\SUBD\mongo\createuser.js
goto end

:mongodir
cd C:\Artur\University\SUBD\mongo
goto end

:mongo
C:\tools\mongo\mongo.exe "mongodb+srv://cluster0-jryec.mongodb.net/test" --username user --password 1234567890MongoDb!
goto end

:redis_edits
code C:\Programming\Redis\script.txt
goto end

:redis
C:\tools\Redis\redis-cli.exe < C:\Programming\Redis\script.txt
goto end

:6i
cc @C:\Artur\University\SUBD\6\6_inline.sql
goto end

:g62
cc @C:\Artur\University\SUBD\6\6_2.sql
goto end

:as
cc alter session set _oracle_script=true;
goto end

:g6
cc @C:\Artur\University\SUBD\6\6.sql
goto end

:picture
C:\Artur\University\SUBD\pdb2.png
goto end

:g5
cc @C:\Artur\University\SUBD\5\5.sql
goto end

:g3
cc @C:\Artur\University\SUBD\3.sql
goto end

:ba1
C:\app\gudiea\product\12.2.0\dbhome_1\bin\sqlplus.exe books_admin/MyPassword
goto end

:g4
cc @C:\Artur\University\SUBD\4.sql
goto end

:ba
cc conn books_admin/MyPassword;
goto end

:triz
ch https://drive.google.com/drive/folders/0B7UqoJnvdTY2RERoZ0NoZzhDaWs
goto end

:listener
code C:\app\gudiea\virtual\product\12.2.0\dbhome_1\network\admin\listener.ora
goto end

:net
code  C:\app\gudiea\virtual\product\12.2.0\dbhome_1\network\admin/sqlnet.ora
goto end

:tns
code  C:\app\gudiea\virtual\product\12.2.0\dbhome_1\network\admin/tnsnames.ora
goto end

:admin
cd C:\app\gudiea\virtual\product\12.2.0\dbhome_1\network\admin
goto end

:dpdir
dir C:\Programming\Oracle\dp_dir
goto end

:dpclear
@call SET CUR_DIR=%cd%
@call cd C:\Programming\Oracle\dp_dir\
@call d *
@call cd %CUR_DIR%
goto end

:dp
cd C:\Programming\Oracle\dp_dir"
goto end

:stop
SET CUR_DIR=%cd%
cd C:\Windows\System32\ & net stop OracleServiceXE
cd %CUR_DIR%
goto end

:start
SET CUR_DIR=%cd%
cd C:\Windows\System32\ & net start OracleServiceXE
cd %CUR_DIR%
goto end

:sqldev
start C:\tools\sqldeveloper\sqldeveloper.exe
goto end

:sqlplus1
C:\app\gudiea\product\12.2.0\dbhome_1\bin\sqlplus.exe "sys as sysdba"
goto end 

:sqlplus
start C:\app\gudiea\product\12.2.0\dbhome_1\bin\sqlplus.exe "sys as sysdba"
REM C:\oraclexe\app\oracle\product\11.2.0\server\bin\sqlplus.exe "sys as sysdba"
goto end

:drive
ch https://drive.google.com/drive/folders/1j3kq24dCfRGxvbyVlHZ4KWCglSPCPfF3
goto end

:EMPTY

goto end

:END
