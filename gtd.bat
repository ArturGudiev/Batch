@echo off

if "%1"=="" goto EMPTY
if "%1"=="t" goto task
if "%1"=="task" goto task
goto end

:task
n+ C:\Artur\gtd\task.bat
goto end

:EMPTY

goto end

:END
