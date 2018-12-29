@echo off

if "%1"=="" goto EMPTY
if "%1"=="dir" goto dir
if "%1"=="nosql" goto nosql
if "%1"=="conn" goto conn
goto end

:conn
docker exec -it 34a064580eb3  /bin/bash
goto end

:nosql
ch https://app.pluralsight.com/player?course=understanding-nosql&author=andrew-brust&name=understanding-nosql-m1-tech-breakdown&clip=3&mode=live
goto end

:dir
cd C:\Artur\University\SUBD\hbase\
goto end

:EMPTY

goto end

:END
