@echo off
if "%1"=="closed" goto closed
if "%1"=="--help" goto help
if "%1"=="task" goto task
if "%1"=="task2" goto task2

if "%1"=="board" goto board
if "%1"=="b" goto board
goto end


:CLOSED
start https://dpa-crucible.lss.emc.com/cru?filter=closed
goto end

:BOARD
ch "https://dpa-jira.lss.emc.com/secure/RapidBoard.jspa?rapidView&sprint=1337"
goto end

:TASK
start https://dpa-jira.lss.emc.com/browse/DPA-55326
goto end

:HELP

:END
echo in end