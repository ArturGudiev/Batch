@echo off 

REM set DPAPATH=C:\EMC\DPA\services\bin\dpa.bat
set DPAPATH=C:\"Program Files"\EMC\DPA\services\bin\dpa.bat

if "%1"=="rule" goto rule
if "%1"=="r" goto rule
if "%1"=="rules" goto rule_schema
if "%1"=="rs" goto rule_schema
if "%1"=="policy" goto policy
if "%1"=="p" goto policy
if "%1"=="ps" goto policy_schema
if "%1"=="alert" goto alert
if "%1"=="a" goto alert
if "%1"=="all" goto all
if "%1"=="ur" goto userroles
if "%1"=="assignpolicy" goto assignpolicy
if "%1"=="asspol" goto assignpolicy
if "%1"=="confpolicy" goto confpolicy
if "%1"=="confpol" goto confpolicy
if "%1"=="cpol" goto confpolicy
if "%1"=="adef" goto assigndefault
if "%1"=="assdef" goto assigndefault
if "%1"=="udef" goto unassigndefault
if "%1"=="unadef" goto unassigndefault
if "%1"=="customrule" goto custom_rule
if "%1"=="crule" goto custom_rule
if "%1"=="copyrule" goto custom_rule_copy
if "%1"=="corule" goto custom_rule_copy
if "%1"=="crule2" goto custom_rule2
if "%1"=="delrule" goto delrule
goto end

:delrule
    curl -s -X DELETE -u administrator:Serverg0d! -H 'Content-Type:application/vnd.emc.apollo-v1+xml' "https://localhost:9002/dpa-api/ae-ruleset/%2" --insecure  
    goto custom_rule
goto end 

:custom_rule_copy
    curl -s -X GET -u administrator:Serverg0d! -H 'Content-Type:application/vnd.emc.apollo-v1+xml' "https://localhost:9002/dpa-api/ae-ruleset/?page=1&pagesize=100&query=system%%3Dfalse" --insecure > %ATEMP%\crule.xml 
    node C:\Programming\JS\copycrule.js %ATEMP%\crule.xml
goto end 

:custom_rule
    curl -s -X GET -u administrator:Serverg0d! -H 'Content-Type:application/vnd.emc.apollo-v1+xml' "https://localhost:9002/dpa-api/ae-ruleset/?page=1&pagesize=100&query=system%%3Dfalse" --insecure > %ATEMP%\crule.xml 
    REM pause
    node C:\Programming\JS\readcrule.js %ATEMP%\crule.xml
goto end


:custom_rule2
    node C:\Programming\JS\readcrule.js %ATEMP%\crule.xml
goto end

REM ------------------------------POLICY Start------------------------------------------
:unassigndefault
    newman run %COLLECT%\UNASSIGN_DEFAULT.json --insecure --silent
goto end

:assigndefault
    newman run %COLLECT%\ASSIGN_DEFAULT.json --insecure --silent
goto end

:confpolicy
    echo. 
    curl -s -X GET -u administrator:Serverg0d! -H 'Content-Type:application/vnd.emc.apollo-v1+xml' "https://localhost:9002/dpa-api/ui/policy-assignation-sources/assignation-by-node?nodeid=8ad04346-9abd-4466-8bd8-05306b63519d&policytype=analysispolicy" --insecure | grep policyName
goto end

:assignpolicy
set policy_id=%2
curl -s -X PUT -u administrator:Serverg0d! -H 'Content-Type:application/vnd.emc.apollo-v1+xml' -d "<policyassignation version="1"> <enabled>true</enabled> <nodeId>8ad04346-9abd-4466-8bd8-05306b63519d</nodeId> <policyId>18116be2-749a-4e1c-9aa9-37384a60dfc4</policyId> <policytype>analysispolicy</policytype> <inherited>false</inherited> </policyassignation>" https://localhost:9002/dpa-api/nodes/8ad04346-9abd-4466-8bd8-05306b63519d/analysispolicy/ --insecure  
goto end

:userroles

goto end

:all
REM %DPAPATH% ds query "SELECT f_id, raalert, severity from apollo.dpa.analysisalert;"
%DPAPATH% ds query "SELECT * from apollo.dpa.analysisalert;"
goto end

:policy
%DPAPATH% ds query "SELECT f_id, enabled, name from apollo.dpa.analysispolicy;"
goto end

:policy_schema 
%DPAPATH% ds query "\d+ apollo.dpa.analysispolicy;"
goto end

REM ------------------------------POLICY Stop------------------------------------------

:alert
%DPAPATH% ds query "SELECT f_id, message, policytype, policyid, severity from apollo.dpa.analysisalert order by severity;"
goto end



REM ------------------------------RULE Start------------------------------------------

:rule
%DPAPATH% ds query "SELECT f_id, enabled, policy_id, facilityname from apollo.dpa.analysisrule;"
goto end

:rule_schema 
%DPAPATH% ds query "\d+ apollo.dpa.analysisrule;"
goto end
REM ------------------------------RULE Stop------------------------------------------

:end
