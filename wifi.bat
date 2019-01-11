@echo off

if "%1"=="" goto EMPTY
if "%1"=="on" goto on
if "%1"=="++" goto on
if "%1"=="+" goto on
if "%1"=="off" goto off
if "%1"=="--" goto off
if "%1"=="-" goto off
goto end

:off
netsh interface set interface Wi-Fi disable
goto end

:on
netsh interface set interface Wi-Fi enable
goto end

:EMPTY

goto end

:END
