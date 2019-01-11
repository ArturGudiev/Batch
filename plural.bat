@echo off

if "%1"=="" goto EMPTY
if "%1"=="java" goto java
if "%1"=="rem" goto remote
if "%1"=="r" goto remote
goto end

:remote
ch https://app.pluralsight.com/library/
goto end

:java
ch https://app.pluralsight.com/library/courses/java-ee-big-picture
goto end

:EMPTY
    start pluralsight.lnk
goto end

:END
