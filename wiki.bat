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


if "%1"=="js" goto js
if "%1"=="bunchie" goto bunchie
if "%1"=="sass" goto sass
if "%1"=="css" goto css
if "%1"=="" goto empty
if "%1"=="ng" goto angular
if "%1"=="angular" goto angular
if "%1"=="errors" goto errors
if "%1"=="7z" goto 7z
if "%1"=="newtask" goto newtask
if "%1"=="nt" goto newtask
if "%1"=="time" goto time
if "%1"=="alerts" goto alerts
if "%1"=="install" goto install
if "%1"=="flexui" goto flexui
if "%1"=="softtoken" goto softtoken
if "%1"=="soft" goto softtoken
if "%1"=="dpa" goto dpa
if "%1"=="perf" goto perfomance
if "%1"=="perfomance" goto perfomance
if "%1"=="vim" goto vim
if "%1"=="ns" goto newsession
if "%1"=="newsession" goto newsession
if "%1"=="backup" goto backup
if "%1"=="database" goto database
if "%1"=="db" goto database
if "%1"=="en" goto english
if "%1"=="english" goto english
if "%1"=="e" goto english
if "%1"=="istest" goto ideasystemtest
if "%1"=="ideasystemtest" goto ideasystemtest
if "%1"=="stest" goto systemtest
if "%1"=="systest" goto systemtest
if "%1"=="systemtest" goto systemtest
if "%1"=="sharepoint" goto sharepoint
if "%1"=="share" goto sharepoint
goto end

:sharepoint
ch "https://confluence.cec.lab.emc.com:8443/pages/viewpage.action?spaceKey=DPA&title=Testing+with+SharePoint+in+the+DPA+lab"
goto end

:systemtest
ch https://confluence.cec.lab.emc.com:8443/display/DPA/Running+system+tests+from+the+command+line
goto end

:ideasystemtest
ch https://confluence.cec.lab.emc.com:8443/display/DPA/Running+system+tests+from+IntelliJ+Idea
goto end

:english
start C:\Artur\Wiki\English.mm
start focus.ahk English.mm
goto end

:database
ch https://confluence.cec.lab.emc.com:8443/display/DPA/Databases
goto end

:backup
ch https://confluence.cec.lab.emc.com:8443/display/DPA/Backup+Applications
goto end

:newsession
	if "%2"=="e" (n+ C:\Artur\Wiki\newsession.txt & goto end )
more C:\Artur\Wiki\newsession.txt
goto end

:vim
n+ C:\Artur\Wiki\Vim\wiki.txt
goto end

:perfomance
more C:\Artur\Wiki\perfomance.txt
goto end

:dpa
n+ C:\Artur\Wiki\DPA\DPA.txt
goto end

:softtoken
echo 1) OPEN RSA 
echo 2) Enter you PIN CODE 
echo 3) GET PASS CODE 
echo 4) OPEN CISCO 
echo 5) SELECT IRELAND 
echo 6) ENTER login and passcode 
goto end

:flexui
ch https://confluence.cec.lab.emc.com:8443/display/DPA/Configure+JetBrains+IDEA+with+DPA+6.x+UI+Flex+project
goto end

:install
more C:\Artur\Wiki\DPA\install.txt
goto end

:alerts
ch https://confluence.cec.lab.emc.com:8443/display/DPA/How+to+generate+different+alerts+in+DPA
goto end

:time
n+ C:\Artur\Wiki\DPA\time.txt
goto end

:newtask
	if "%2"=="e" (
		n+ C:\Artur\Wiki\DPA\newtask.txt
		goto end 
	)
	more C:\Artur\Wiki\DPA\newtask.txt
goto end

:7z
echo 7z e archive.zip -oPathToFolder & echo 7z a archive.zip file.txt
goto end

:errors
echo opening Errors.txt
n+ C:\Artur\Wiki\DPA\Errors.txt
goto end

:angular
start C:\Artur\Wiki\Angular.mm
REM n+ C:\Artur\Wiki\Angular\Ang.txt
goto end

:EMPTY
start chrome https://confluence.cec.lab.emc.com:8443/display/DPA/DPA+Home
goto end 

:css
start C:\Artur\Wiki\CSS.mm
goto end

:sass
n+ C:\Artur\Wiki\Sass.txt
goto end

:bunchie
ch https://confluence.cec.lab.emc.com:8443/display/DPP/Bunchie+Team
goto end

:SEARCH
echo in search
REM @call replace %2 " " "+" > tempFileOutput.txt
REM @call set /p v=<tempFileOutput.txt
REM del tempFileOutput.txt
ch https://confluence.cec.lab.emc.com:8443/dosearchsite.action?queryString=%2

goto end

:js
n+ C:\Artur\Wiki\Javascript.txt
goto end

:NEWBIE
start https://confluence.cec.lab.emc.com:8443/display/DPA/DPA+6.x+for+newbie
goto end 

:PASSWORD
ch https://confluence.cec.lab.emc.com:8443/display/RE/How+to+get+encrypted+Artifactory+password
goto end


:SPACE
ch https://confluence.cec.lab.emc.com:8443/spaces/viewspace.action?key=~gudiea
goto end

:UI
ch https://confluence.cec.lab.emc.com:8443/display/DPA/HTML5+UI+-+HOWTO
goto end

:COMVAULT
start chrome  https://confluence.cec.lab.emc.com:8443/display/PUB/How+to+discover+Commvault+in+DPA
goto END

:COLLECT
start chrome https://confluence.cec.lab.emc.com:8443/display/DPA/Configure+DPA+version+6.5+Agent+to+go+back+and+collect+backup+application+data
goto END

:AVAMAR
start chrome https://confluence.cec.lab.emc.com:8443/display/DPA/Backup+Applications
goto END
 
:SPb
start https://confluence.cec.lab.emc.com:8443/display/VSPHER/QA+virtual+machines+in+US+lab
goto END

:MY
start chrome https://confluence.cec.lab.emc.com:8443/display/DPA/Wiki
goto END

:END
