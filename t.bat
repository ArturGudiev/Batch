@echo off
temp %*
if "%1"=="a" goto azure
goto end

:azure
ch https://stackoverflow.com/questions/50344436/copy-to-clip-in-azure-function-app
goto end
