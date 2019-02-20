@echo off

if "%1"=="" goto EMPTY
if "%1"=="dpa" goto dpa
if "%1"=="dpal" goto dpal
if "%1"=="ui" goto ui
if "%1"=="uil" goto uil
goto end

:uil
    @call app --
    @call timeout 2 
    @call d C:\EMC\DPA\services\applications\ui.war*
    @call dir C:\EMC\DPA\services\applications\
    @call copy C:\Src\EMC\DPA\trunk\flexui\dpaui-war\target\ui.war C:\EMC\DPA\services\applications\ui.war
    @call dir C:\EMC\DPA\services\applications\
    @call timeout 2 
    @call app ++r
goto end 

:ui
    @call app --
    @call timeout 2 
    @call d C:\"Program Files"\EMC\DPA\services\applications\ui.war*
    @call dir C:\"Program Files"\EMC\DPA\services\applications
    @call copy C:\Src\EMC\DPA\trunk\ui\dpaui-war\target\ui.war C:\"Program Files"\EMC\DPA\services\applications\ui.war
    @call dir C:\"Program Files"\EMC\DPA\services\applications
    @call timeout 2 
    @call app ++r 
goto end

:dpa
    @call app --
    @call timeout 2 
    @call d C:\"Program Files"\EMC\DPA\services\applications\dpa.ear*
    @call copy C:\Src\EMC\DPA\trunk\server\dpa-parent\dpa-ejb\dpa-ear\target\dpa.ear C:\"Program Files"\EMC\DPA\services\applications\dpa.ear
    @call timeout 2 
    @call app ++r 
goto end


:dpal
    @call app --
    @call timeout 2 
    @call d C:\EMC\DPA\services\applications\dpa.ear*
    @call copy C:\Src\EMC\DPA\trunk\server\dpa-parent\dpa-ejb\dpa-ear\target\dpa.ear C:\EMC\DPA\services\applications\dpa.ear
    @call timeout 2 
    @call app ++r
goto end

:EMPTY

goto end

:END
