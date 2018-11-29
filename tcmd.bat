@echo off

if "%1"=="" goto EMPTY
if "%1"=="app" goto app
goto end

:app
start totalcmder /o  
goto end

:EMPTY

goto end

:END
