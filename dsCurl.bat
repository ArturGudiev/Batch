@echo off

if "%1"=="" goto EMPTY
if "%1"=="ruleset" goto ruleset
if "%1"=="rs" goto ruleset
goto end

:ruleset
    if "%2"=="" (
        curl --user administrator:Serverg0d! https://localhost:9002/dpa-api/ae-policy/b3505c95-7ea0-41ba-beb6-905f127289bc/rulesets --insecure
        goto end 
    )
    curl --user administrator:Serverg0d! https://localhost:9002/dpa-api/ae-policy/%2/rulesets --insecure
goto end

:EMPTY

goto end

:END
