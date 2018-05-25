@echo off
if "%1"=="r" goto r
if "%1"=="java" goto java
if "%1"=="j" goto java
if "%1"=="html" goto html


if "%1"=="js" goto js
if "%1"=="" goto EMPTY
if "%1"=="vim" goto vim
goto end

:vim
cd C:\Programming\Vim
goto end

:EMPTY
cd C:\Programming\
goto end

:js
cd C:\Programming\JS"
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
