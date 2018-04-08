@echo off

if "%1"=="" goto EMPTY
if "%1"=="sop" goto sop
goto end

:sop
ch https://t.me/topfootb
goto end

:EMPTY

goto end

:END
