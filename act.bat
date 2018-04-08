@echo off
if "%1"=="l" goto blank
echo %*>> C:\Artur\actions.txt
goto end
:BLANK
type C:\Artur\actions.txt

:END