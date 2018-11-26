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
if "%1"=="log" goto log
if "%1"=="r" goto remote
if "%1"=="remote" goto remote
if "%1"=="clear" goto clear
if "%1"=="c" goto copy
if "%1"=="c3" goto copy3
goto end

:copy3
ctask dir & cf dpa_3.ear
goto end

:copy
ctask dir & cf dpa.ear
goto end

:clear
ba & d dpa.ear* & se c
goto end

:remote
ch https://10.98.63.224:9002/flexui
goto end

:log
n+ C:\Artur\Work\tasks\19_DPA-57628_Transaction_rolled_back_error_appears\server.log
goto end

:edit
n+ %PROG%\Batch\ctask.bat
goto end 

:branch
ch 
goto end

:dir
REM todo get c 
cd C:\Artur\Work\tasks\19_DPA-57628_Transaction_rolled_back_error_appears
goto end

:full_description1
ec DPA-57628_Transaction_rolled_back_error_appears
goto end

:full_description
ec DPA-57628 Transaction rolled back error appears
goto end

:description
ec Transaction rolled back error appears
goto end

:TASK
ec DPA-57628
goto end

:HISTORYTASK
ec :HT:
goto end

:wiki
n+ C:\Artur\Work\tasks\19_DPA-57628_Transaction_rolled_back_error_appears\wiki.txt
goto end

:autohotkey 
REM start 
goto end 

:END
