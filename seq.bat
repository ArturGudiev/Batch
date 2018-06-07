@echo off

if "%1"=="uidev" goto uidev
if "%1"=="ui" goto ui
if "%1"=="jui" goto JustUI
if "%1"=="chair" goto chair
if "%1"=="stat" goto stat

if "%1"=="study" goto study
if "%1"=="war" goto war
if "%1"=="cw" goto copywar
if "%1"=="copywar" goto copywar
if "%1"=="start" goto start
goto end

:start
close skype & close mc & cisco
goto end

:COPYWAR
del C:\Artur\temp\*.war
copy C:\"Program Files"\EMC\DPA\services\applications\ui.war C:\Artur\temp\ui.war
copy C:\"Program Files"\EMC\DPA\services\applications\html5-ui.war C:\Artur\temp\html5-ui.war
copy C:\Users\gudiea\.m2\repository\com\emc\dpa\client\war\18.1.0-SNAPSHOT\war-18.1.0-20180328.003302-75.war C:\Artur\temp\war-18.1.0-20180328.003302-75.war

@call rm -rf C:\Artur\temp\uiwar\ui
@call rm -rf C:\Artur\temp\html5-ui\ui
@call rm -rf C:\Artur\temp\war18\war-18.1.0-20180328.003302-75

7z e C:\Artur\temp\ui.war -oC:\Artur\temp\uiwar\ui * -r
goto end

:WAR
@call app -
cd C:\Program Files\EMC\DPA\services\applications
del ui.war*
echo ----------------delete-------------------
copy C:\Src\EMC\DPA\trunk\ui\dpaui-war\target\ui.war ui.war
echo ----------------copy---------------------
sleep 5
@call app +
goto end

:study
close skype & close mc & sound - & close pu
goto end

:JustUI
o uid 
npm start 
goto end

:STAT
@call stat stepic 
@call start RStudio
@call pro stat
goto end

:CHAIR
start pro chair
start cmd /K "o chair && ng serve --open"
goto end



:UIDEV
start pro ui
start cmd /K "bb && dpa app start && exit"
start cmd /K "o uid && npm start"
start chrome https://localhost:3030/
goto end


:UI
@call start cmd /K "app + && exit"
@call start cmd /K "o uid && npm start"
@call pro ui
REM timeout 200
@call start chrome https://localhost:3030/
goto end

:END
