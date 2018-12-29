@echo off
set first=%1
set RESTVAR=
shift
:loop1
if "%1"=="" goto after_loop
set RESTVAR=%RESTVAR% %1
shift
goto loop1

:after_loop

powershell  "& ""C:\Programming\PowerShell\%first%.ps1 %restvar%"""
