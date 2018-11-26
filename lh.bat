@echo off

set protocol=https
set port=3030
set eng=


REM start  %protocol%://localhost:%port%/%eng%
REM echo. 
if "%1"=="alerts" goto alerts
if "%1"=="a" goto alerts
if "%1"=="my" goto my
if "%1"=="my2" goto my2
goto end

:my2
ch https://localhost:3030/my2
goto end

:my
ch https://localhost:3030/my
goto end

:alerts
ch https://localhost:3030/alerts
goto end


:HELP
echo. 
echo  e 	-- Engineering mode
echo  s 	-- Secured https
echo  2 	-- 9002 port
echo. 
goto end



:END

