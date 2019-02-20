@echo off

if "%1"=="" goto EMPTY

set first=%1
set second=%2
start totalcmder /o  /L=%first% /R=%second%


goto end

:EMPTY
    start totalcmder /o  /L=%cd%
goto end

:END