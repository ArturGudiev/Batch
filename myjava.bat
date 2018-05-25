@echo off

if "%1"=="" goto EMPTY
if "%1"=="jar" goto jar
goto end

:jar
echo jar tvf jarfile.jar
goto end

:EMPTY

goto end

:END
