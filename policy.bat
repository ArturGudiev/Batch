@echo off

if "%1"=="" goto EMPTY
if "%1"=="c" goto conf
if "%1"=="conf" goto conf
if "%1"=="adef" goto assigndefault
if "%1"=="unadef" goto unassigndefault
if "%1"=="udef" goto unassigndefault
if "%1"=="undef" goto unassigndefault
if "%1"=="all" goto all
goto end

:all
    @call ds p
goto end

:unassigndefault
    newman run %COLLECT%\UNASSIGN_DEFAULT.json --insecure --silent
goto end

:assigndefault
    newman run %COLLECT%\ASSIGN_DEFAULT.json --insecure --silent
goto end

:conf
    echo. 
    curl -s -X GET -u administrator:Serverg0d! -H 'Content-Type:application/vnd.emc.apollo-v1+xml' "https://localhost:9002/dpa-api/ui/policy-assignation-sources/assignation-by-node?nodeid=8ad04346-9abd-4466-8bd8-05306b63519d&policytype=analysispolicy" --insecure | grep policyName
goto end

:EMPTY

goto end

:END
