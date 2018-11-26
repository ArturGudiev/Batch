@echo off

if "%1"=="" goto EMPTY
if "%1"=="java" goto java
goto end

:java
ch https://app.pluralsight.com/library/courses/java-ee-big-picture
goto end

:EMPTY

goto end

:END
