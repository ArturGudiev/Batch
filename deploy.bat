@echo off                                       
cd C:\Src\EMC\DPA\6.5.0\tools\maven-dev-profiles
mvn -U -DDPA.DEPLOY.DIR=%1 clean install -PDeployServer,DeployUI