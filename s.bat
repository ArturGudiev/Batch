@echo off
if "%1"=="u" goto ui

cd %DPASRC%
if "%1"=="u" goto ui
if "%1"=="ui" goto ui
if "%1"=="181" goto v181
if "%1"=="s" goto server
if "%1"=="server" goto server
if "%1"=="p" goto parent
if "%1"=="par" goto parent
if "%1"=="parent" goto parent
if "%1"=="a" goto apollo
if "%1"=="ap" goto apollo
if "%1"=="apollo" goto apollo
if "%1"=="m" goto modules
if "%1"=="modules" goto modules
if "%1"=="r" goto root
if "%1"=="root" goto root
if "%1"=="f" goto flexui
if "%1"=="flex" goto flexui
if "%1"=="flexui" goto flexui
if "%1"=="te" goto tests
if "%1"=="tests" goto tests
goto end

:tests
cd C:\Src\EMC\DPA\html-ui-automation-tests
goto end

:flexui
cd C:\Src\EMC\DPA\flexui
goto end

:root
cd C:\Src\EMC\DPA
goto end

:modules
cd C:\Src\EMC\DPA\trunk\modules"
goto end

:apollo
cd C:\Src\EMC\DPA\trunk\apollo"
goto end

:parent
cd C:\Src\EMC\DPA\trunk\server\dpa-parent
goto end

:server
cd C:\Src\EMC\DPA\trunk\server
goto end

:v181
cd C:\Src\EMC\DPA\18.1.0"
goto end

:ui
cd C:\Src\EMC\DPA\trunk\ui"
goto end

:UI
cd %DPASRC%\ui

:END
