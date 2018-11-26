@echo off 
	
set RESTVAR=
set first=%1
shift

:loop1
	if [%1]==[] goto after_loop
	set RESTVAR=%RESTVAR% %1
	shift
	goto loop1
:after_loop

echo %RESTVAR%

REM SET "fname=a.b.c.d.e.f.g"

REM FOR %%a IN (%fname%) DO FOR %%b IN (%%~na) DO ECHO %%~xb%%~xa