@echo off

if "%1"=="services" goto services
if "%1"=="s" goto services
goto end

:services
ch https://angular.io/tutorial/toh-pt4
goto end

:END