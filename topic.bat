@echo off

set hh=%TIME:~0,2%
set mm=%TIME:~3,2%

if "%1"=="l" goto blank
echo %hh%:%mm% %*>> C:\Artur\mine\topic.txt
goto end

:END