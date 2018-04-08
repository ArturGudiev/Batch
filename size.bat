@echo off

if "%1"=="c" goto CD
goto end

:CD
echo off
@echo off
setLocal EnableDelayedExpansion
set /a value=0
set /a sum=0
FOR /R %1 %%I IN (*) DO (
set /a value=%%~zI/1024
set /a sum=!sum!+!value!
)
@echo %CD%:!sum! k
goto end

:END