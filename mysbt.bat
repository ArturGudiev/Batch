@echo off

if "%1"=="" goto EMPTY
if "%1"=="submit" goto submit
goto end

:submit
ch https://www.coursera.org/learn/progfun1/supplement/uV974/sbt-tutorial
goto end

:EMPTY

goto end

:END
