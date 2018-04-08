@echo off

if "%1"=="" goto EMPTY
if "%1"=="-" goto MINUS
if "%1"=="+" goto PLUS
set /A num=65536/100*%1
start nircmd changesysvolume %num%
goto end

:EMPTY

goto end

:MINUS
sound -100
goto end

:PLUS
sound +50
goto end

:END