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
if "%1"=="error" goto error
if "%1"=="test1" goto test1
if "%1"=="test2" goto test2
if "%1"=="alert" goto alert
if "%1"=="a" goto alert
if "%1"=="alert" goto alert
if "%1"=="policy" goto policy
if "%1"=="p" goto policy
if "%1"=="rule" goto rule
if "%1"=="r" goto rule
goto end


:rule
C:\EMC\DPA\services\bin\dpa.bat ds query "SELECT f_id, enabled, policy_id from apollo.dpa.analysisrule;"
goto end


:policy
C:\EMC\DPA\services\bin\dpa.bat ds query "SELECT f_id, enabled, name from apollo.dpa.analysispolicy;"
goto end

:alert
C:\EMC\DPA\services\bin\dpa.bat ds query "SELECT f_id, message, policytype, policyid from apollo.dpa.analysisalert;"
goto end


:test1
@call s
powershell "mvn clean install -PSystemTests-AE.pack1 -DDPA.DEPLOY.DIR=C:\EMC\DPA | tee C:\Artur\temp\test1.log"
goto end

:test2
@call s
powershell "mvn clean install -PSystemTests-AE.pack2 -DDPA.DEPLOY.DIR=C:\EMC\DPA | tee C:\Artur\temp\test2.log"
goto end

:error
n+ C:\Artur\Work\tasks\20_DPA-57758_Related_reports_from_Copy_of_Alert_rule_are_not_loaded_and_shown_in_report_section\error.txt
goto end

:edit
code %PROG%\Batch\ctask.bat
goto end 

:branch
ch 
goto end

:dir
REM todo get c 
cd C:\Artur\Work\tasks\20_DPA-57758_Related_reports_from_Copy_of_Alert_rule_are_not_loaded_and_shown_in_report_section
goto end

:full_description1
ec DPA-57758_Related_reports_from_Copy_of_Alert_rule_are_not_loaded_and_shown_in_report_section
goto end

:full_description
ec DPA-57758 Related reports from Copy of Alert rule are not loaded and shown in report section
goto end

:description
ec Related reports from Copy of Alert rule are not loaded and shown in report section
goto end

:TASK
ec DPA-57758
goto end

:HISTORYTASK
ec :HT:
goto end

:wiki
n+ C:\Artur\Work\tasks\20_DPA-57758_Related_reports_from_Copy_of_Alert_rule_are_not_loaded_and_shown_in_report_section\wiki.txt
goto end

:autohotkey 
REM start 
goto end 

:END
