@echo off

if "%1"=="web" goto web
if "%1"=="prob" goto prob

:WEB
start chrome https://stepik.org/course/154/syllabus
goto end 

:PROB
ch `https://stepik.org/course/3089/continue
goto end
:END