@echo off

if "%1"=="" goto EMPTY
goto end

:EMPTY
echo here
C:\tools\Redis\redis-cli.exe < C:\Programming\Redis\script.txt
goto end

:END