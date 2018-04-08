@echo off

if "%1"=="spb" goto SPb
if "%1"=="my" goto MY

if "%1"=="avamar" goto avamar
if "%1"=="a" goto avamar

if "%1"=="comvault" goto comvault
if "%1"=="c" goto comvault


if "%1"=="collect" goto collect
if "%1"=="ui" goto ui

if "%1"=="space" goto space
if "%1"=="password" goto password

if "%1"=="newbie" goto newbie
if "%1"=="search" goto search
if "%1"=="s" goto search

start chrome https://dpa-wiki.lss.emc.com/display/DPA/DPA+Development+Information
goto END 

:SEARCH
echo in search
@call replace %2 " " "+" > tempFileOutput.txt
@call set /p v=<tempFileOutput.txt
del tempFileOutput.txt
ch https://dpa-wiki.lss.emc.com/dosearchsite.action?queryString=%v%
goto end

:NEWBIE
ch https://dpa-wiki.lss.emc.com/display/DPA/DPA+6.x+for+newbie
goto end 

:PASSWORD
ch https://dpa-wiki.lss.emc.com/display/RE/How+to+get+encrypted+Artifactory+password
goto end


:SPACE
ch https://dpa-wiki.lss.emc.com/spaces/viewspace.action?key=~gudiea
goto end

:UI
start https://dpa-stash.lss.emc.com/projects/POC/repos/dpa-ui-html/browse
goto end

:COMVAULT
start chrome  https://dpa-wiki.lss.emc.com/display/PUB/How+to+discover+Commvault+in+DPA
goto END

:COLLECT
start chrome https://dpa-wiki.lss.emc.com/display/DPA/Configure+DPA+version+6.5+Agent+to+go+back+and+collect+backup+application+data
goto END

:AVAMAR
start chrome https://dpa-wiki.lss.emc.com/display/DPA/Backup+Applications
goto END
 
:SPb
start https://dpa-wiki.lss.emc.com/display/DREL/SPb+machines+in+US+lab
goto END

:MY
start chrome https://dpa-wiki.lss.emc.com/display/DPA/Wiki
goto END

:END