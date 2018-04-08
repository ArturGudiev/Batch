@echo off

if "%1"=="conf" goto conf
if "%1"=="lib" goto conf
goto end

:conf
echo 	Shift+Alt+F10
echo 	0
goto end

:END