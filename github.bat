@echo off

if "%1"=="" goto EMPTY
if "%1"=="rep" goto repository
goto end

:repository
ch https://github.com/ArturGudiev?tab=repositories
goto end

:EMPTY

goto end

:END
