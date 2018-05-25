@echo off

set hh=%TIME:~0,2%
set mm=%TIME:~3,2%

if "%1"=="l" goto blank
echo %hh%:%mm% %*>> C:\Artur\mine\log.txt
goto end

:BLANK
	if NOT "%2"=="" goto PL
type C:\Artur\mine\log.txt
goto end

:PL
pl C:\Artur\mine\log.txt %2
goto end

:END