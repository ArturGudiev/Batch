@echo off

if "%1"=="" goto EMPTY
if "%1"=="l" goto logoff
if "%1"=="r" goto restart
if "%1"=="restart" goto restart
goto end

:restart
shutdown /r /t 0
goto end

:logoff
shutdown /L
goto end
:EMPTY
shutdown /s /t 0
goto end 
:END
