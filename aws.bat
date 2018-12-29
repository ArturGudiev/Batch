@echo off

if "%1"=="" goto EMPTY
if "%1"=="create" goto create
if "%1"=="ssh" goto ssh
if "%1"=="cl" goto clusters
if "%1"=="clusters" goto clusters
goto end

:clusters
ch https://us-east-2.console.aws.amazon.com/elasticmapreduce/home?region=us-east-2#cluster-list:
goto end

:ssh
ch https://docs.aws.amazon.com/en_us/emr/latest/ManagementGuide/emr-connect-master-node-ssh.html
goto end

:create
ch https://docs.aws.amazon.com/en_us/emr/latest/ReleaseGuide/emr-hbase-create.html
goto end

:EMPTY

goto end

:END
