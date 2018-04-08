@echo off

if "%1"=="flex" goto flex
if "%1"=="clarity" goto clarity
if "%1"=="cl" goto clarity
goto end

:CLARITY
ch https://vmware.github.io/clarity/documentation/v0.11/get-started
goto end

:flex
ch http://html5.by/blog/flexbox/
goto end

:END