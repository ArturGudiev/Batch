@echo off

if "%1"=="" goto EMPTY
if "%1"=="u" goto users
if "%1"=="o" goto open
if "%1"=="ug" goto userget
if "%1"=="e" goto echo
if "%1"=="u1" goto user1
if "%1"=="c1" goto course1
if "%1"=="c2" goto course2
goto end

:course2
ch https://www.coursera.org/learn/scala-spark-big-data/lecture/io6qQ/introduction-logistics-what-you-ll-learn
goto end

:course1
ch https://www.coursera.org/learn/progfun1/lecture/fsEgN/course-introduction
goto end

:user1
echo https://api.github.com/users/arturgudiev & cc https://api.github.com/users/arturgudiev
goto end

:echo
es infosearch
goto end

:userget
echo https://api.github.com/users?since=
cc https://api.github.com/users?since=
goto end

:open
o s infosearch
goto end

:users
ch https://api.github.com/users?since=%2
goto end

:EMPTY

goto end

:END
