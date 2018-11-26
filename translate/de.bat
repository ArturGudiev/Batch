@echo off
if "%2"=="1" (
bla "%1"
goto end
)

if "%2"=="2" (
	gn "%1"
)

translate -s de -t ru "%*"

:end