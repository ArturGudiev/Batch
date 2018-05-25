@echo off

if "%1"=="" goto EMPTY
if "%1"=="l" goto logoff
goto end

:logoff
shutdown /L
goto end
:EMPTY
shutdown /s /t 0
goto end 
:END
