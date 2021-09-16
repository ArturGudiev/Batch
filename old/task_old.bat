@echo off

if "%1"=="psy" goto PSY
if "%1"=="r59" goto R59
if "%1"=="phil" goto phil
if "%1"=="cbook" goto CBOOK
if "%1"=="c" goto CBOOK

if "%1"=="java" goto JAVA

if "%1"=="maven" goto MAVEN
if "%1"=="mvn" goto MAVEN
if "%1"=="dsl" goto DSL

if "%1"=="ang" goto angular
if "%1"=="networks" goto NETWORKS 
if "%1"=="maven" goto MAVEN 
if "%1"=="mvn" goto MAVEN
if "%1"=="design" goto design 
if "%1"=="gerlex" goto gerlex
if "%1"=="phil" goto PHIL
if "%1"=="tutorial" goto tutorial 
if "%1"=="t" goto tutorial 
if "%1"=="chess" goto chess
if "%1"=="html" goto html
if "%1"=="jquery" goto jquery
if "%1"=="ajax" goto ajax
goto end

:AJAX 
ch https://www.w3schools.com/xml/ajax_xmlhttprequest_send.asp
goto end 

:JQUERY
ch https://www.codecademy.com/courses/learn-jquery-introduction/lessons/jquery-setup/exercises/jquery-methods?action=resume_content_item&course_redirect=learn-jquery
goto end 

:HTML
start chrome https://www.w3schools.com/html/default.asp
goto end

:PHIL
start chrome "https://www.coursera.org/learn/osnovy-filosofii/home/welcome"
open studies
goto end


:TUTORIAL
start chrome https://angular.io/tutorial
goto end

:GERLEX
sa %UNIVER%\Deutsch\GerLex.pdf
goto end

:R59
sa %BOOKS%\School\Russian59.pdf %2
goto end

:CBOOK
sa C:\Artur\Books\thecbook.pdf %2
start cmd /K "cd C:\Programming\C"

:ANGULAR
sa %BOOKS%\Angular.pdf
goto end

:NETWORKS
start chrome https://go.comapping.com/comapping.html#mapid=156187 
start chrome "https://www.youtube.com/watch?v=OLFA0soYGhw&list=PLtPJ9lKvJ4oiNMvYbOzCmWy6cRzYAh9B1"
goto end


:MAVEN
start cmd.exe /K "cd C:\Programming\Maven" 
sa %BOOKS%\Maven.pdf %2
goto end

:DESIGN
start chrome https://courses.openedu.ru/courses/course-v1:spbu+DSGNMT+fall_2017/courseware/f81534af89254046a6d69242ef197557/e89edaaeb5df46cba90ff8dffc5dd0b3/
goto end

:JAVA
pro untitled
start cmd /K "cd C:\Programming\Java"
sa C:\Artur\Books\Java.pdf %2
goto end


:CHESS
sa %BOOKS%\Chess.pdf %2
goto end


:PSY
start chrome "https://courses.openedu.ru/courses/course-v1:spbu+PSYCON+fall_2017/courseware/5a53203a5e9b4793b79c184a2f8e0ebd/b915f90bf2304bdbb015bf0982853434/"
goto end

:DSL
sa C:\Artur\Books\DSL.pdf 36
n+ C:\Artur\University\Summary\DSM
start chrome https://docs.google.com/presentation/d/1S-p5HCntapf0AoKzITGJLczpIUnIez2q_8J6hRnjCLo/edit
goto end


:END