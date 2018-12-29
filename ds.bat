@echo off 

REM set DPAPATH=C:\EMC\DPA\services\bin\dpa.bat
set DPAPATH=C:\"Program Files"\EMC\DPA\services\bin\dpa.bat

if "%1"=="rule" goto rule
if "%1"=="poliy" goto policy
if "%1"=="p" goto policy
if "%1"=="alert" goto alert
if "%1"=="a" goto alert
if "%1"=="all" goto all
if "%1"=="ur" goto userroles
goto end

:userroles

goto end

:all
REM %DPAPATH% ds query "SELECT f_id, raalert, severity from apollo.dpa.analysisalert;"
%DPAPATH% ds query "SELECT * from apollo.dpa.analysisalert;"
goto end

:alert
%DPAPATH% ds query "SELECT f_id, message, policytype, policyid, severity from apollo.dpa.analysisalert order by severity;"
goto end

:policy
%DPAPATH% ds query "SELECT f_id, enabled, name from apollo.dpa.analysispolicy;"
goto end


:rule
%DPAPATH% ds query "SELECT f_id, enabled, policy_id from apollo.dpa.analysisrule;"
goto end
