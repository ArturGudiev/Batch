@echo off
if "%1"=="" goto EMPTY
if "%1"=="dpa" goto dpa 
if "%1"=="fui" goto fui
if "%1"=="ui" goto ui
if "%1"=="cui" goto cui
if "%1"=="dpa" goto dpa
if "%1"=="restc" goto restclasses
if "%1"=="restclasses" goto restclasses
if "%1"=="restc" goto restclasses

if "%1"=="rest" goto rest
goto end

:rest
    cd C:\Src\EMC\DPA\trunk\server\dpa-parent\dpa-restapi\dpa-restapi-war\target
goto end

:EMPTY 
    cd %DPASRC%\installer\agents\create\target

goto end

:restclasses
    if "%2"=="c" (
        cc C:\Src\EMC\DPA\trunk\server\dpa-parent\dpa-restapi\dpa-restapi-classes\target
    )
    cd C:\Src\EMC\DPA\trunk\server\dpa-parent\dpa-restapi\dpa-restapi-classes\target
goto end

:dpa
    cd C:\Src\EMC\DPA\trunk\server\dpa-parent\dpa-ejb\dpa-ear\target\
goto end

:fui
    cd C:\Src\EMC\DPA\trunk\ui\dpaui-war\target
goto end

:ui
    cd C:\Src\EMC\DPA\ui\html-ui\html5-ui-war\target\
goto end

:cui
    set dir=%CD%
    cd C:\Src\EMC\DPA\ui\html-ui\html5-ui-war\target\
    cf html5-ui-war-19.1.0-SNAPSHOT.war

goto end

:dpa_old
    cd C:\Src\EMC\DPA\trunk\server\dpa-parent\dpa-ejb\dpa-ear\target
goto end

:END 
