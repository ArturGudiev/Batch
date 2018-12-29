@echo off

if "%1"=="" goto EMPTY
if "%1"=="d" goto dir
if "%1"=="dir" goto dir
if "%1"=="dir2" goto dir2
if "%1"=="2" goto dir2
if "%1"=="d2" goto dir2
if "%1"=="bin" goto bin
if "%1"=="b" goto bin
goto end

:bin
cd C:\tools\hadoop-2.9.2\bin"
goto end

:dir2
cd C:\tools\hadoop-2.9.2\etc\hadoop
goto end

:dir
cd C:\tools\hadoop-2.9.2
goto end

:EMPTY

goto end

:END
