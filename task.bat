@echo off

if "%1"=="german" goto german
goto end

:german
java -cp C:\Programming\Java\untitled\out\artifacts\untitled_jar\untitled.jar;C:\Programming\Java\untitled\lib\postgresql-42.2.1.jar utilities/User german
goto end

:END