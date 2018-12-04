@echo off 

if "%1"=="rule" goto rule
if "%1"=="poliy" goto policy
if "%1"=="p" goto policy
if "%1"=="alert" goto alert
if "%1"=="a" goto alert
goto end

:alert
C:\EMC\DPA\services\bin\dpa.bat ds query "SELECT f_id, message, policytype, policyid from apollo.dpa.analysisalert;"
goto end

:policy
C:\EMC\DPA\services\bin\dpa.bat ds query "SELECT f_id, enabled, name from apollo.dpa.analysispolicy;"
goto end


:rule
C:\EMC\DPA\services\bin\dpa.bat ds query "SELECT f_id, enabled, policy_id from apollo.dpa.analysisrule;"
goto end
