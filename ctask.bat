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
C:\Artur\Work\tasks\26_DPA-58072_Update_server_actions_for_multiple_dashboard_scheduled\text.txt
goto end 

:edit
code %PROG%\Batch\ctask.bat
goto end 

:branch
ch 
goto end

:dir
REM todo get c 
cd C:\Artur\Work\tasks\26_DPA-58072_Update_server_actions_for_multiple_dashboard_scheduled
goto end

:full_description1
ec DPA-58072_Update_server_actions_for_multiple_dashboard_scheduled
goto end

:full_description
ec DPA-58072 Update server actions for multiple dashboard scheduled
goto end

:description
ec Update server actions for multiple dashboard scheduled
goto end

:TASK
ec DPA-58072
goto end

:HISTORYTASK
ec :HT:
goto end

:wiki
code C:\Artur\Work\tasks\26_DPA-58072_Update_server_actions_for_multiple_dashboard_scheduled\wiki.txt
goto end

:autohotkey 
REM start 
goto end 

:END
