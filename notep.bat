@echo off

if "%1"=="" goto EMPTY
if "%1"=="fold" goto fold
goto end

:fold
echo Alt+0
goto end

:EMPTY

goto end

:END
