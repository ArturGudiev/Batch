@echo off

if "%1"=="task" goto task 
if "%1"=="t" goto task 

if "%1"=="ht" goto HISTORYTASK
if "%1"=="wiki" goto wiki
if "%1"=="d" goto description
if "%1"=="des" goto description
if "%1"=="description" goto description
if "%1"=="fd" goto full_description
if "%1"=="fd1" goto full_description1
if "%1"=="dir" goto dir
if "%1"=="br" goto branch
if "%1"=="branch" goto branch
if "%1"=="e" goto edit
if "%1"=="ahk" goto ahk
if "%1"=="text" goto text
goto end

:text
C:\Artur\Work\tasks\:DIR:\text.txt
goto end 

:edit
code %PROG%\Batch\ctask.bat
goto end 

:branch
ch 
goto end

:dir
REM todo get c 
cd C:\Artur\Work\tasks\:DIR:
goto end

:full_description1
ec :FD1:
goto end

:full_description
ec :FD:
goto end

:description
ec :DESC:
goto end

:TASK
ec :TASK:
goto end

:HISTORYTASK
ec :HT:
goto end

:wiki
n+ C:\Artur\Work\tasks\:DIR:\wiki.txt
goto end

:autohotkey 
REM start 
goto end 

:END
