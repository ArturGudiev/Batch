@echo off

if "%1"=="" goto EMPTY
more C:\Programming\Batch\%1.bat
goto end

:EMPTY

goto end

:END