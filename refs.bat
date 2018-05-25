@echo off

if "%1"=="" goto EMPTY
if "%1"=="git" goto git
goto end

:git
ch https://try.github.io/
goto end

:EMPTY

goto end

:END
