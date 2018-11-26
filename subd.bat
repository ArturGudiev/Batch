@echo off

if "%1"=="" goto EMPTY
if "%1"=="drive" goto drive
if "%1"=="sqlplus" goto sqlplus
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
start C:\tools\sqldeveloper-18.2.0.183.1748-x64\sqldeveloper\sqldeveloper.exe
goto end

:sqlplus1
sqlplus.exe "sys as sysdba"
goto end 

:sqlplus
cd C:\oraclexe\app\oracle\product\11.2.0\server\bin\
sqlplus.exe "sys as sysdba"
REM C:\oraclexe\app\oracle\product\11.2.0\server\bin\sqlplus.exe "sys as sysdba"
goto end

:drive
ch https://drive.google.com/drive/folders/1j3kq24dCfRGxvbyVlHZ4KWCglSPCPfF3
goto end

:EMPTY

goto end

:END
