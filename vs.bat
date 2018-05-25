@echo off
echo in vs
REM if "%1"=="12" (goto vs12 & goto end)

if "%1"=="col" goto collapseAll
if "%1"=="exp" goto expandAll
if "%1"=="foldCur" goto foldCurrent
if "%1"=="comment" goto comment
if "%1"=="help" goto help
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
