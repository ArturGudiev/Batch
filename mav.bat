@echo off

if "%1"=="install" goto install
if "%1"=="i" goto install
if "%1"=="r" goto referinstall
if "%1"=="ri" goto referinstall
if "%1"=="referiinstall" goto referinstall
if "%1"=="agentbuild" goto agentbuild
if "%1"=="ab" goto agentbuild
if "%1"=="rf" goto rf
if "%1"=="deploy" goto deploy
goto end

:deploy
@call cd C:\Src\EMC\DPA\trunk\tools\maven-dev-profiles\
@call mvn -U -DDPA.DEPLOY.DIR=C:\EMC\DPA clean install -PDeployServer,DeployUI
@call cc PGDATA=C:\EMC\DPA\services\datastore\data
@call vim C:\EMC\DPA\services\executive\datastore-service.conf
goto end

:rf
mvn clean install -Dmaven.test.skip=true -rf %*
goto end

:INSTALL
mvn clean install -Dmaven.test.skip=true
goto end

:REFERINSTALL
cc mvn clean install -Dmaven.test.skip=true -rf 
goto end

:AGENTBUILD 
cd %DPASRC%\installer\agents
mav i
goto end

:END
