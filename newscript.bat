@echo off
set var=%1

copy %PROG%\Batch\util\template.bat %var%.bat
if "%2"=="o" (n+ %var%.bat)
if "%2"=="e" (n+ %var%.bat)

