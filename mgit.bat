@echo off

if "%1"=="" goto EMPTY
if "%1"=="do" goto do
if "%1"=="update" goto update
goto end

:update
REM git -c core.quotepath=false -c log.showSignature=false merge origin/master --no-stat -v
git -c core.quotepath=false -c log.showSignature=false fetch origin --progress --prune
goto end

:do
git add --all & git commit -m "%2" & git push origin master
goto end

:EMPTY

goto end

:END
