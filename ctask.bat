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
if "%1"=="gd" goto getdir
if "%1"=="dirt" goto dirtotalcmder

if "%1"=="br" goto branch
if "%1"=="branch" goto branch
if "%1"=="e" goto edit
if "%1"=="ahk" goto ahk
if "%1"=="text" goto text
if "%1"=="clean" goto clean
if "%1"=="tn" goto testname
if "%1"=="gb" goto getbranch
if "%1"=="lt" goto lasttest
if "%1"=="qcd" goto qc d
goto end

:qcd
start C:\Artur\Work\tasks\33_DPA-58584_Create_auto-tests_for_Publish_Settings_Modal\Publish-settings.doc
goto end 

:lasttest
ec ScheduledReportsDialogTests#defaultStateOfSaveAsScheduledReportWithReportTemplate
goto end

:getbranch
ec feature/DPA-58396-Create-Scheduled-Report-modal
goto end

:testname
ec ScheduledReportsDialogTests
goto end

:clean
    @call node C:\Programming\NodeJS\requests\scheduled_reports.js
    @call node C:\Programming\NodeJS\requests\custom_report_templates.js
    @call node C:\Programming\NodeJS\requests\custom_dashboard_templates.js
    @call node C:\Programming\NodeJS\requests\schedules.js
    @call node C:\Programming\NodeJS\requests\custom_group.js
    @call node C:\Programming\NodeJS\requests\sites.js
    @call node C:\Programming\NodeJS\requests\users.js
goto end

:getdir 
cc C:\Artur\Work\tasks\33_DPA-58584_Create_auto-tests_for_Publish_Settings_Modal
goto end 

:text
C:\Artur\Work\tasks\33_DPA-58584_Create_auto-tests_for_Publish_Settings_Modal\text.txt
goto end 

:edit
code %PROG%\Batch\ctask.bat
goto end 

:branch
ch 
goto end

:dir
REM todo get c 
cd C:\Artur\Work\tasks\33_DPA-58584_Create_auto-tests_for_Publish_Settings_Modal
goto end

:dirtotalcmder
tcmder C:\Artur\Work\tasks\33_DPA-58584_Create_auto-tests_for_Publish_Settings_Modal %2
goto end

:full_description1
ec DPA-58584_Create_auto-tests_for_Publish_Settings_Modal
goto end

:full_description
ec DPA-58584 Create auto-tests for Publish Settings Modal
goto end

:description
ec Create auto-tests for Publish Settings Modal
goto end

:TASK
ec DPA-58584
goto end

:HISTORYTASK
ec DPA-58382
goto end

:wiki
code C:\Artur\Work\tasks\33_DPA-58584_Create_auto-tests_for_Publish_Settings_Modal\wiki.txt
goto end

:autohotkey 
REM start 
goto end 

:END
