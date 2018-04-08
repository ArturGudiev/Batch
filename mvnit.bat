@echo off
echo mvn -Dmaven.test.failure.ignore=false -DDPA.DEPLOY.DIR=C:\EMC\DPA1\ -PSystemTests-Configuration.pack1 -U clean install