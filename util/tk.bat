 @echo off
  
if "%1"=="s" goto SET_TASk
if "%1"=="setting" goto SET_TASK
if "%1"=="script" goto script 
 
echo going to task
start java -cp C:\Programming\Java\untitled\out\artifacts\untitled_jar\untitled.jar;C:\Programming\Java\untitled\lib\postgresql-42.2.1.jar utilities/User task
goto end 

:SET_TASK
start java -cp C:\Programming\Java\untitled\out\artifacts\untitled_jar\untitled.jar;C:\Programming\Java\untitled\lib\postgresql-42.2.1.jar utilities/User settask %2
:END



goto end