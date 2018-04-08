@echo off
if "%1"=="advanced" goto advanced
if "%1"=="adv" goto advanced
if "%1"=="svc" goto svc
if "%1"=="settings" goto settings
if "%1"=="s" goto settings
goto end


:SETTINGS
start ms-settings:
goto end
:ADVANCED
C:\windows\system32\SystemPropertiesAdvanced.exe
goto end

:SVC
start services.msc
goto end

:WORK
start https://trello.com/b/q1SsfrNe/work
goto end

:PM
start https://trello.com/b/q1SsfrNe/work
goto end

:END