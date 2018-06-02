@echo off

if "%1"=="EMPTY" goto empty 
if "%1"=="seq" goto commit 

goto end 



:COMMIT 

set RESTVAR=
shift
:loop1
if "%1"=="" goto after_loop
set RESTVAR=%RESTVAR% %1
shift
goto loop1

:after_loop

git commit -m "%RESTVAR%"
git push origin master
goto end 

:EMPTY
goto end 

:END 