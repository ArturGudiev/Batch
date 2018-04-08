@echo off

if "%1"=="" goto EMPTY
set /A num=65536/100*%1
start nircmd changesysvolume %num%
goto end

:EMPTY

goto end

:END