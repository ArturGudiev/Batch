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

if "%1"=="buildinstaller" goto buildinstaller
if "%1"=="bi" goto buildinstaller

if "%1"=="deploy" goto deploy

if "%1"=="installservices" goto INSTALLSERVICES
if "%1"=="is" goto INSTALLSERVICES
if "%1"=="build" goto build
if "%1"=="ng" goto angular
if "%1"=="work" goto work 
if "%1"=="w" goto work 
if "%1"=="artifactory" goto artifactory
if "%1"=="arti" goto artifactory
if "%1"=="home" goto home
goto end

:home
app -- & dpa ds stop & close skype & close mc
goto end

:artifactory
n+ C:\Users\gudiea\.m2\settings.xml & ch https://dpa-mvn.lss.emc.com/artifactory/webapp/#/profile
goto end

:work 
@call hk 
@call close mc 
REM @call far 
@call tm 
pro trunk 
REM ch https://localhost:9002
goto end 

:angular
@call pro todo
@call start cmd /K "p ng"
@call book ng
@call wiki ng
goto end 

:build
@call s
@call mvn clean install -PBuildServer -DskipTests -T6
goto end

:INSTALLSERVICES
@call b
@call dpa ds install 
@call dpa app install
echo =============== installed services 
sleep 1
@call dpa ds recreate 
@call dpa ds start 
@call dpa ds cts 
echo =============== recreate 
@call dpa app start 
goto end 

:DEPLOY
@call d C:\EMC\DPA
@call d C:\EMC\DPA
@call cd C:\Src\EMC\DPA\trunk\
@call mvn -U -DDPA.DEPLOY.DIR=C:\EMC\DPA clean install -PDeployServer,DeployUI
goto end 

:BUILDINSTALLER 
@call cd C:\Src\EMC\DPA\trunk\installer\common\panels
@call mav i 
@call d C:\Src\EMC\DPA\trunk\installer\server\create\target\installer-panels.jar
@call copy C:\Src\EMC\DPA\trunk\installer\common\panels\target\installer-panels-18.2.0-SNAPSHOT.jar C:\Src\EMC\DPA\trunk\installer\server\create\target\installer-panels.jar
@call cd C:\Src\EMC\DPA\trunk\installer\server\
@call mav i

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
@call hk
REM timeout 200
@call start chrome https://localhost:3030/
goto end

:END
