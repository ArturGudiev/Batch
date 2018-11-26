@echo off

if "%1"=="" goto EMPTY
if "%1"=="list" goto list
if "%1"=="cheat" goto cheatsheet
if "%1"=="cheatsheet" goto cheatsheet
goto end

:cheatsheet
ch https://www.coursera.org/learn/progfun1/supplement/Sauv3/cheat-sheet
goto end

:list
ec val l = List(1, 2, 3)
goto end

:EMPTY

goto end

:END
