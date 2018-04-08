@echo off

if "%1"=="ss" goto special
if "%1"=="special" goto special
goto end

:SPECIAL
echo echo sd^^^|as
goto end

:END