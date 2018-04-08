@echo off

if "%1"=="studies" goto STUDIES

start chrome http://www.comapping.com/index.php
goto end

:STUDIES
start chrome https://go.comapping.com/comapping.html#mapid=156187 
goto end
:END