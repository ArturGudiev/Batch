@echo off

if "%1"=="a" goto APP
if "%1"=="app" goto APP

if "%1"=="d" goto DS
if "%1"=="ds" goto DS

goto END

:APP
n+ %INSTALLDPASVC%\executive\application-service.conf
goto end

:DS
n+ %INSTALLDPASVC%\executive\datastore-service.conf
goto end

:END