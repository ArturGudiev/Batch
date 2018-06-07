@echo off
REM if "%1"=="12" (goto vs12 & goto end)
if "%1"=="col" goto collapseAll
if "%1"=="exp" goto expandAll
if "%1"=="foldCur" goto foldCurrent
if "%1"=="comment" goto comment
if "%1"=="help" goto help
if "%1"=="sol" goto solutionexplorer
if "%1"=="exc" goto exception
if "%1"=="e" goto exception
if "%1"=="toolbox" goto toolbox
if "%1"=="errors" goto errors
goto end

:ERRORS
echo only 1 shape for 1 element
goto end

:toolbox
echo Cntrl+Alt+X
goto end

:exception
echo here
cc try{}catch(System.Exception e){}
goto end

:solutionexplorer
echo Cntrl+Alt+L
goto end

:help
echo in potions
REM echo cntrl+.
goto end

:comment
Cntrl+K, Cntrl+C
goto end

:foldCurrent
Cntrl+M, Cntrl+M
goto end

:expandAll
echo CTRL+M+L
goto end

:collapseAll
echo CTRL + M + O
goto end

:vs12
start vs12
goto end

:END
