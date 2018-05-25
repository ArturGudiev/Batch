@echo off
if "%1"=="u" goto ui

cd %DPASRC%
goto end

:UI
cd %DPASRC%\ui

:END