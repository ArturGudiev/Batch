@echo off

if "%1"=="" goto EMPTY
if "%1"=="d" goto dir
if "%1"=="dir" goto dir
goto end

:dir
cd C:\Artur\University\SUBD\cassandra
goto end

:EMPTY

goto end

:END
