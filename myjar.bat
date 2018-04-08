@echo off

if "%1"=="classes" goto classes
if "%1"=="c" goto classes
goto end

:classes
jar tvf %2
goto end

:END