@echo off

if "%1"=="conf" goto conf
if "%1"=="lib" goto conf
if "%1"=="mem" goto members
if "%1"=="diagram" goto diagram
if "%1"=="scratch" goto scratch
if "%1"=="fold" goto fold
if "%1"=="foldlevel" goto foldlevel
if "%1"=="appearance" goto appearance
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
Cntrl+Alt+U
goto end

:members
echo Cntrl+F12
goto end

:conf
echo 	Shift+Alt+F10
echo 	0
goto end

:END
