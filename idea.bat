@echo off

if "%1"=="conf" goto conf
if "%1"=="lib" goto conf
if "%1"=="mem" goto members
if "%1"=="diagram" goto diagram
if "%1"=="scratch" goto scratch
if "%1"=="fold" goto fold
if "%1"=="foldlevel" goto foldlevel
if "%1"=="appearance" goto appearance
if "%1"=="update" goto update
if "%1"=="returntype" goto returntype
if "%1"=="rt" goto returntype
if "%1"=="todo" goto todo
if "%1"=="h" goto hierarchy
if "%1"=="hierarchy" goto hierarchy

if "%1"=="col" goto collapseAll
if "%1"=="collapseAll" goto collapseAll
if "%1"=="exp" goto collapseAll
if "%1"=="expandAll" goto collapseAll
goto end

:collapseAll
Cntrl + Shift + +
goto end

:collapseAll
Cntrl + Shift + -
goto end

:hierarchy
echo Cntrl+H
goto end

:todo
project tab -> current file | scope based
goto end

:returntype
ec Cntrl-Q
goto end

:update
echo Cntrl+T
goto end

:appearance
echo Cntrl+`
goto end

:foldlevel
echo Cntrl+Numpad-*,Number
goto end

:fold
echo Cntrl+.
goto end

:scratch
echo Cntrl + Shift + Alt + Insert
goto end

:diagram
echo Cntrl+Alt+U
goto end

:members
echo Cntrl+F12
goto end

:conf
echo 	Shift+Alt+F10
echo 	0
goto end

:END
