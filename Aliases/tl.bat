REM @echo off 

if "%1"=="java" goto java
if "%1"=="j" goto java
if "%1"=="postgres" goto postgres
if "%1"=="p" goto postgres

TASKLIST /NH | SORT

:POSTGRES
tasklist | grep postgres
goto end

:JAVA
cc tasklist | grep java
goto end 

:END