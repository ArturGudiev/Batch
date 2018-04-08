@echo off

if "%1"=="r" goto r
if "%1"=="java" goto java
if "%1"=="j" goto java
if "%1"=="html" goto html


cd C:\Programming\
goto end

:html
cd C:\Programming\HTML
goto end

:JAVA
cd C:\Programming\Java
goto end

:R 
cd C:\Programming\R
goto end

:END