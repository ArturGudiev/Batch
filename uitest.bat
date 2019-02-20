@echo off

if "%1"=="" goto EMPTY
if "%1"=="testchrome" goto test_chrome
if "%1"=="tc" goto test_chrome
if "%1"=="ch" goto test_chrome
goto end

:test_chrome
mvn clean test -PTestChrome
goto end

:EMPTY

goto end

:END
