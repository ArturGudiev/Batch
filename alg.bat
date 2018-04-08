@echo off
echo.
echo ---1---
echo cd C:\Src\EMC\DPA\6.2.3\tools\maven-dev-profiles 
echo mvn -U -DDPA.DEPLOY.DIR=C:\EMC\DPA clean install -PDeployServer,DeployUI
echo ---2---
echo datastore-service.conf
echo PGDATA=C:\EMC\DPA\services\datastore\data
echo ds install 