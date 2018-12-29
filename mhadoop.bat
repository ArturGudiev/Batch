@echo off
REM set hpath=C:\tools\hadoop-2.9.2
set hpath=C:\Users\gudiea\Downloads\hadoop-2.8.0
if "%1"=="" goto EMPTY
if "%1"=="d" goto dir
if "%1"=="dir" goto dir
if "%1"=="dir2" goto dir2
if "%1"=="2" goto dir2
if "%1"=="d2" goto dir2
if "%1"=="e" goto dir2
if "%1"=="bin" goto bin
goto end

:bin
cd %hpath%\bin"
goto end

:dir2
cd %hpath%\etc\hadoop
goto end

:dir
cd %hpath%
goto end

:EMPTY

goto end

:END
