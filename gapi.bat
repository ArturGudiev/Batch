@echo off

if "%1"=="" goto EMPTY
if "%1"=="main" goto main
goto end

:main
ch https://console.developers.google.com/
goto end

:EMPTY

goto end

:END
