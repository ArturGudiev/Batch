@echo off

if "%1"=="cmd" goto cmd
if "%1"=="del" goto del
goto end

:del
echo rm -rf
goto end

:cmd
echo Shift+F10
echo W
goto end

:END
