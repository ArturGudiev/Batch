@echo off

if "%1"=="cmd" goto cmd
if "%1"=="del" goto del
if "%1"=="u" goto uninstall
if "%1"=="uni" goto uninstall
if "%1"=="uninstall" goto uninstall
goto end

:uninstall
start appwiz.cpl
goto end

:del
echo rm -rf
goto end

:cmd
echo Shift+F10
echo W
goto end

:END
