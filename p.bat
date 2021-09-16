@echo off
if "%1"=="r" goto r
if "%1"=="java" goto java
if "%1"=="j" goto java
if "%1"=="html" goto html


if "%1"=="js" goto js
if "%1"=="" goto EMPTY
if "%1"=="vim" goto vim
if "%1"=="s" goto scala
if "%1"=="scala" goto scala
if "%1"=="ahk" goto ahk
if "%1"=="a" goto ahk
if "%1"=="ng" goto angular
if "%1"=="m" goto m
if "%1"=="pow" goto powershell
if "%1"=="power" goto powershell
if "%1"=="p" goto powershell
if "%1"=="C++" goto C++
if "%1"=="sh" goto sh
if "%1"=="redis" goto redis
if "%1"=="red" goto redis
if "%1"=="re" goto redis
if "%1"=="rea" goto react
if "%1"=="react" goto react
if "%1"=="py" goto python
if "%1"=="python" goto python
if "%1"=="node" goto node
goto end

:node
cd C:\Programming\NodeJS
goto end

:python
cd C:\Programming\Python
goto end

:react
cd C:\Programming\ReactNative
goto end

:redis
cd C:\Programming\Redis
goto end

:sh
cd C:\Programming\Shell
goto end

:C++
cd C:\Programming\C++
goto end

:powershell
cd C:\Programming\PowerShell
goto end

:m
cd C:\Programming\MM"
goto end

:angular
cd C:\Programming\Angular"
goto end

:ahk
cd C:\Programming\Autohotkey"
goto end

:scala
cd C:\Programming\Scala
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
