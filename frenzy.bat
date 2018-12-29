@echo off

if "%1"=="" goto EMPTY
goto end

:EMPTY
REM curl -X POST -H 'Content-Type: application/json' -d '{"username":"davidwalsh","password":"something"}' http://domain.tld/login
goto end

:END