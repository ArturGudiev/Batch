@echo off
set var=%1

copy %PROG%\Batch\util\template.bat %var%.bat
n+ %var%.bat

