@echo off

if "%1"=="" goto EMPTY
if "%1"=="rest" goto restapi
if "%1"=="restapi" goto restapi
if "%1"=="parent" goto parent
if "%1"=="par" goto parent
if "%1"=="dpa" goto parent
goto end

:parent
    @call cd C:\Src\EMC\DPA\trunk\server\dpa-parent
    @call mav i 
    @call timeout 2
    @call cd C:\Src\EMC\DPA\trunk\server\dpa-parent\dpa-ejb\dpa-ear\target\
goto end

:restapi
    @call cd C:\Src\EMC\DPA\trunk\server\dpa-parent\dpa-restapi\
    @call mav i 
    timeout 2
    @call target rest
    REM @call cf C:\Src\EMC\DPA\trunk\server\dpa-parent\dpa-restapi\dpa-restapi-war\target\dpa-restapi-war-18.3.0-SNAPSHOT.war
goto end

:EMPTY

goto end

:END
