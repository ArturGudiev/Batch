@echo off
set var=%1

copy %PROG%\Batch\util\template.bat %var%.bat
if "%2"=="o" (code %var%.bat)
if "%2"=="e" (code %var%.bat)

