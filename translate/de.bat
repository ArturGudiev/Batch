@echo off
if "%2"=="1" (
bla "%1"
goto end
)

translate -s de -t ru "%*"

:end