@echo off

if "%1"=="" goto EMPTY
if "%1"=="dpa" goto dpa 
if "%1"=="ui" goto ui
goto END 

:EMPTY 
cd %DPASRC%\installer\agents\create\target
if "%1"=="dpa" goto dpa
goto end

:dpa
cd C:\Src\EMC\DPA\trunk\server\dpa-parent\dpa-ejb\dpa-ear\target\
goto end

:ui
cd C:\Src\EMC\DPA\trunk\ui\dpaui-war\target
goto end

:dpa_old
cd C:\Src\EMC\DPA\trunk\server\dpa-parent\dpa-ejb\dpa-ear\target
goto end

:END 
