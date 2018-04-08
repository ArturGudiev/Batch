@echo off
if "%1"=="l" goto blank
echo %*>> C:\Artur\todo.txt
goto end
:BLANK
type C:\Artur\todo.txt

:END