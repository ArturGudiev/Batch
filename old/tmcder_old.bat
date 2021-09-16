@echo off

if "%1"=="" goto EMPTY
if "%1"=="remote" goto remote

set first=%1
set second=%2
start totalcmder /o  /L=%first% /R=%second%


goto end

:EMPTY
    start totalcmder /o  /L=%cd%
goto end

:remote
    start totalcmder /o  /L=C:\Users\gudiea\Desktop\installers\ /R=\\10.98.62.166\\
goto end 

:END