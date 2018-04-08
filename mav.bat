@echo off

if "%1"=="install" goto install
if "%1"=="i" goto install
if "%1"=="r" goto referinstall
if "%1"=="ri" goto referinstall
if "%1"=="referiinstall" goto referinstall
if "%1"=="agentbuild" goto agentbuild
if "%1"=="ab" goto agentbuild
goto end

:INSTALL
mvn clean install -Dmaven.test.skip=true
goto end

:REFERINSTALL
cc mvn clean install -Dmaven.test.skip=true -rf :
goto end

:AGENTBUILD 
cd %DPASRC%\installer\agents
mav i
goto end

:END