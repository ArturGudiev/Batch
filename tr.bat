@echo off


if "%1"=="g" goto DEUTCH
if "%1"=="gr" goto DR
if "%1"=="r" goto RUSSIAN
if "%1"=="o" goto OSSETIAN
if "%1"=="os" goto OSSETIAN
if "%1"=="l" goto LATIN
if "%1"=="--help" goto HELP
goto ENGLISH

:HELP
echo.
echo 	g 	--	German
echo 	r 	--	Russian
goto end

REM for /f "tokens=1,* delims= " %%a in ("%*") do set ALL_BUT_FIRST=%%b
REM echo all but first: %ALL_BUT_FIRST%

:LATIN
start chrome https://translate.google.com/#la/ru/"%*"
goto end

:ENGLISH
for %%x in (%*) do (
	start chrome https://translate.google.com/#en/ru/%%x
	timeout 1 
)
goto end

:RUSSIAN
start https://translate.google.com/#ru/en/"%2"
goto end

:DEUTCH

start https://translate.google.com/#de/ru/%2
goto end

:DR
start https://translate.google.com/#ru/de/%2
goto end

:OSSETIAN
for /f "tokens=1,* delims= " %%a in ("%*") do set ALL_BUT_FIRST=%%b

for %%x in (%ALL_BUT_FIRST%) do (
	start chrome "http://slovar.iriston.com/index.php?q=%%x&showcat=jump&f=-1&PHPSESSID=d749223cdab15630902b1d253a660471"
	timeout 1
)

goto end



:END