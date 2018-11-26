@echo off

if "%1"=="task" goto task 
if "%1"=="t" goto task 
if "%1"=="e" goto edit

if "%1"=="u" goto url
if "%1"=="url" goto url
if "%1"=="h" goto history
if "%1"=="history" goto history
if "%1"=="q" goto query
if "%1"=="query" goto query
if "%1"=="i" goto installer
if "%1"=="installer" goto installer
goto end

:installer
ch https://dpa-jira.lss.emc.com/browse/DPA-55098
goto end

:query
echo "https://localhost:9002/dpa-api/alert/alerts?page=1&pagesize=100&orderby=lastUpdated_D"
cc https://localhost:9002/dpa-api/alert/alerts?page=1^&pagesize=100^&orderby=lastUpdated_D
goto end

:history
ch https://dpa-jira.lss.emc.com/browse/DPA-56424
goto end

:url
ec https://dpa-jira.lss.emc.com/browse/DPA-56429
goto end

:EDIT
n+ C:\Programming\Batch\ctask.bat
goto end

:TASK
ec DPA-56429
goto end

:END
