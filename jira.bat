@echo off
if "%1"=="closed" goto closed
if "%1"=="--help" goto help
if "%1"=="task" goto task
if "%1"=="task2" goto task2

if "%1"=="board" goto board
if "%1"=="b" goto board
if "%1"=="ob" goto old_board
if "%1"=="bu" goto burndown
if "%1"=="burn" goto burndown
if "%1"=="denis" goto denis
goto end

:denis
ch https://jira.cec.lab.emc.com:8443/secure/Dashboard.jspa?selectPageId=14305 
goto end

:burndown
ch "https://jira.cec.lab.emc.com:8443/secure/RapidBoard.jspa?rapidView=984&view=reporting&chart=burndownChart&sprint=3599"
goto end

:old_board
ch "https://dpa-jira.lss.emc.com/secure/RapidBoard.jspa?rapidView&sprint=1337"
goto end 

:CLOSED
start https://dpa-crucible.lss.emc.com/cru?filter=closed
goto end

:BOARD
ch "https://jira.cec.lab.emc.com:8443/secure/RapidBoard.jspa?rapidView=984&sprint=3599"
goto end

:TASK
start https://dpa-jira.lss.emc.com/browse/DPA-55326
goto end

:HELP

:END
