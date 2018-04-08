@echo off
if "%1"=="new" goto NEW

start chrome https://wordpress.com/view/pmcourse1718.wordpress.com
goto end


:NEW
start chrome /new-window https://wordpress.com/post/pmcourse1718.wordpress.com/405 https://wordpress.com/post/pmcourse1718.wordpress.com
start explorer C:\Artur\University\Summary\"Project Managment"
:END