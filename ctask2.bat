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
if "%1"=="dpr" goto daninpullrequest
if "%1"=="daninpr" goto daninpullrequest
if "%1"=="shot" goto screenshot
if "%1"=="sh" goto screenshot
if "%1"=="ss" goto screenshot
if "%1"=="ss2" goto screenshot2
if "%1"=="qcdir" goto qcdir
if "%1"=="qcd" goto qcdir
if "%1"=="reports" goto reports
if "%1"=="r" goto reports
if "%1"=="clean" goto clean
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

:reports`
start C:\Artur\Work\tasks\31_DPA-58396_Create_auto-tests_for_Create_Scheduler_Report_dialog\reports.png
goto end

:qcdir
cd C:\Artur\Work\tasks\31_DPA-58396_Create_auto-tests_for_Create_Scheduler_Report_dialog\KatyaQC"
goto end

:screenshot2
start C:\Artur\Work\tasks\31_DPA-58396_Create_auto-tests_for_Create_Scheduler_Report_dialog\createScheduledReport2.png
goto end

:screenshot
start C:\Artur\Work\tasks\31_DPA-58396_Create_auto-tests_for_Create_Scheduler_Report_dialog\CreateScheduledReport.png
goto end

:daninpullrequest
ch https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui-automation-tests/pull-requests/46/overview
goto end

:getdir 
cc C:\Artur\Work\tasks\31_DPA-58396_Create_auto-tests_for_Create_Scheduler_Report_dialog
goto end 

:text
C:\Artur\Work\tasks\31_DPA-58396_Create_auto-tests_for_Create_Scheduler_Report_dialog\text.txt
goto end 

:edit
code %PROG%\Batch\ctask.bat
goto end 

:branch
ch 
goto end

:dir
REM todo get c 
cd C:\Artur\Work\tasks\31_DPA-58396_Create_auto-tests_for_Create_Scheduler_Report_dialog
goto end

:dirtotalcmder
tcmder C:\Artur\Work\tasks\31_DPA-58396_Create_auto-tests_for_Create_Scheduler_Report_dialog %2
goto end

:full_description1
ec DPA-58396_Create_auto-tests_for_Create_Scheduler_Report_dialog
goto end

:full_description
ec DPA-58396 Create auto-tests for Create Scheduler Report dialog
goto end

:description
ec Create auto-tests for Create Scheduler Report dialog
goto end

:TASK
ec DPA-58396
goto end

:HISTORYTASK
ec DPA-56196
goto end

:wiki
n+ C:\Artur\Work\tasks\31_DPA-58396_Create_auto-tests_for_Create_Scheduler_Report_dialog\wiki.txt
goto end

:autohotkey 
REM start 
goto end 

:END
