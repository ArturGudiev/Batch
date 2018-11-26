@echo off

if "%1"=="" goto EMPTY
copy /b NUL %*
goto end

:EMPTY
copy /b NUL %*
goto end

:END