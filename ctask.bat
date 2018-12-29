@echo off
set ctaskdir=C:\Artur\Work\tasks\25_DPA-57944_Pie_report_doesn't_reflect_autorefresh\
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
if "%1"=="desc" goto desc
if "%1"=="desce" goto desce
goto end

:desce
code %ctaskdir%\desc.txt
goto end

:desc
more %ctaskdir%\desc.txt
goto end

:edit
code %PROG%\Batch\ctask.bat
goto end 

:branch
ch 
goto end

:dir
REM todo get c 
cd C:\Artur\Work\tasks\25_DPA-57944_Pie_report_doesn't_reflect_autorefresh
goto end

:full_description1
ec DPA-57944_Pie_report_doesn't_reflect_autorefresh
goto end

:full_description
ec DPA-57944 Pie report doesn't reflect autorefresh
goto end

:description
ec Pie report doesn't reflect autorefresh
goto end

:TASK
ec DPA-57944
goto end

:HISTORYTASK
ec :HT:
goto end

:wiki
n+ C:\Artur\Work\tasks\25_DPA-57944_Pie_report_doesn't_reflect_autorefresh\wiki.txt
goto end

:autohotkey 
REM start 
goto end 

:END
