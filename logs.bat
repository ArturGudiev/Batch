@echo off 
echo here 
if "%1"=="server" goto server
goto end

:server
echo in logs server
n+ C:\EMC\DPA\services\logs\server.log
goto end

:END 