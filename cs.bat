@echo off
echo mvn -Dmaven.test.skip=true -DDPA.DEPLOY.DIR=c:\DPA_BUILD -PBuildServer,IncludeVersionInfo,DeployServer -DJENKINS_BUILD_NUMBER=1 -DJENKINS_BUILD_NAME=LOCAL -U clean install 