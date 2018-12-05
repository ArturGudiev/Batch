@echo off

if "%1"=="uni" goto uninstall
if "%1"=="uninstall" goto uninstall
if "%1"=="install" goto install
if "%1"=="upgrade" goto upgrade
if "%1"=="i" goto install
if "%1"=="sa" goto startagent
if "%1"=="a64" goto AGENT64
if "%1"=="a65" goto AGENT65
if "%1"=="a66" goto AGENT66
if "%1"=="a2000" goto a2000
if "%1"=="a2000custom" goto a2000custom
if "%1"=="custom" goto custom
if "%1"=="NEW" goto NEW
if "%1"=="new" goto NEW
if "%1"=="alog" goto AGENTLOG
if "%1"=="copyactions" goto copyactions
if "%1"=="ca" goto copyactions

if "%1"=="buildactions" goto buildactions
if "%1"=="ba" goto buildactions

if "%1"=="reinstallagent" goto reinstall_agent
if "%1"=="reia" goto reinstall_agent
if "%1"=="stat" goto stat
if "%1"=="s" goto stat

if "%1"=="app" goto APP  
if "%1"=="ds" goto DS  
echo here
if "%1"=="agent" goto AG  
echo here2
if "%1"=="ag" goto AG 

if "%1"=="start" goto START
if "%1"=="silent" goto SILENT_INSTALL
if "%1"=="sil" goto SILENT_INSTALL
if "%1"=="make_silent" goto MAKE_SILENT
if "%1"=="ms" goto MAKE_SILENT
if "%1"=="dpaagent" goto dpaagent
if "%1"=="ui" goto ui

if "%1"=="frenzy" goto frenzy
if "%1"=="fr" goto frenzy
if "%1"=="i" goto install
if "%1"=="install" goto install

if "%1"=="updatepanels" goto :UPDATE_PANELS
if "%1"=="up" goto :UPDATE_PANELS
if "%1"=="uiwar" goto uiwar
if "%1"=="bfu" goto buildflexui
if "%1"=="dash" goto lodash

if "%1"=="copya" goto copyapollo
if "%1"=="copyapollo" goto copyapollo
if "%1"=="copyear" goto copyear
if "%1"=="copyui" goto copyui
if "%1"=="copyre" goto copy_report_engine
if "%1"=="copyreportengine" goto copy_report_engine
if "%1"=="dpaear" goto copyear
if "%1"=="ear" goto copyear
if "%1"=="log" goto log
if "%1"=="updateui" goto updateui
if "%1"=="uui" goto updateui
if "%1"=="http" goto http

if "%1"=="exa" goto exec_app
if "%1"=="ea" goto exec_app
if "%1"=="dellic" goto delete_license
if "%1"=="dl" goto delete_license
if "%1"=="getlic" goto getlic
if "%1"=="gl" goto getlic
if "%1"=="update" goto update
goto end

:update
o uid & git -c core.quotepath=false -c log.showSignature=false fetch origin --progress --prune
goto end

:getlic
	if "%2"=="id" (
		curl -X GET -u administrator:Serverg0d! https://localhost:9002/dpa-api/license/ --insecure | grep id 
		goto end 
	)
curl -X GET -u administrator:Serverg0d! https://localhost:9002/dpa-api/license/ --insecure
goto end

:delete_license
@call curl -X DELETE -u administrator:Serverg0d! https://localhost:9002/dpa-api/license/%2  --insecure
@call idpa getlic
goto end

:copy_report_engine
echo -----------------stop server 
@call app --
@call sleep 5
@call d C:\"Program Files"\EMC\DPA\services\applications\reportengine*
echo -----------------delete reportengine.ear in applications 
@call copy C:\Src\EMC\DPA\trunk\modules\reportengine\reportengine-j2ee\reportengine-ear\target\reportengine.ear C:\"Program Files"\EMC\DPA\services\applications\reportengine.ear
echo -----------------copy new file reportengine.ear to applications 
@call sleep 5
echo -----------------start server
@call app ++
dir  C:\"Program Files"\EMC\DPA\services\applications\reportengine*
@call st b
@call st
goto end 

:exec_app
n+ C:\Program Files\EMC\DPA\services\executive\application-service.conf
goto end

:http
@call app -
@call sleep 5
@call dpa app configure --httpprotocol TRUE
@call app +
@call sleep 5
@call st
@call st b
goto end

:UPDATEUI
@call s ui & mav i
@goto copyui
goto end 

:copyui
echo -----------------stop server 
@call app -
@call sleep 3
@call d C:\"Program Files"\EMC\DPA\services\applications\ui*
echo -----------------delete ui.war in applications 
@call copy C:\Src\EMC\DPA\trunk\ui\dpaui-war\target\ui.war C:\"Program Files"\EMC\DPA\services\applications\ui.war
echo -----------------copy new file ui.war to applications 
@call sleep 5
echo -----------------start server
@call app +
dir  C:\"Program Files"\EMC\DPA\services\applications\ui*
@call st b
@call st
goto end

:copyapollo
echo -----------------stop server 
@call app -
copy sleep 3
@call d C:\"Program Files"\EMC\DPA\services\applications\apollo*
echo -----------------delete apollo.ear in applications 
@call copy C:\Src\EMC\DPA\trunk\apollo\server\ear\target\apollo.ear C:\"Program Files"\EMC\DPA\services\applications\apollo.ear
echo -----------------copy file new apollo.ear to applications 
copy sleep 5
echo -----------------start server
@call app +
dir  C:\"Program Files"\EMC\DPA\services\applications\apollo*
@call st b
@call st
REM cf C:\Src\EMC\DPA\trunk\server\dpa-parent\dpa-ejb\dpa-ear\target\dpa.ear
goto end 

:copyear
echo -----------------stop server 
@call app -
copy sleep 3
@call d C:\"Program Files"\EMC\DPA\services\applications\dpa*
echo -----------------delete dpa.ear in applications 
@call copy C:\Src\EMC\DPA\trunk\server\dpa-parent\dpa-ejb\dpa-ear\target\dpa.ear C:\"Program Files"\EMC\DPA\services\applications\dpa.ear
echo -----------------copy file new dpa.ear to applications 
copy sleep 5
echo -----------------start server
@call app +
dir  C:\"Program Files"\EMC\DPA\services\applications\dpa*
@call st b
@call st
REM cf C:\Src\EMC\DPA\trunk\server\dpa-parent\dpa-ejb\dpa-ear\target\dpa.ear
goto end 

:COPYACTIONS
del %DPASRC%\installer\agents\layout\target\installer-actions.jar
copy %DPASRC%\installer\common\actions\target\installer-actions-18.1.0-SNAPSHOT.jar %DPASRC%\installer\agents\layout\target\installer-actions.jar
goto end

:lodash
cc import * as _ from 'lodash';
goto end

:log
	if "1"=="server" goto SERVER_LOG
	if "1"=="s" goto SERVER_LOG
	:SERVER_LOG
		n+ C:\"Program Files"\EMC\DPA\services\logs\server.log
	goto end 
goto end


:buildflexui
cd C:\Src\EMC\DPA\trunk\ui\ & mav i
goto end

:uiwar
@call cd C:\Src\EMC\DPA\trunk\ui\ 
@call mav i
@call app -
@call d C:\"Program Files"\EMC\DPA\services\applications\ui.war
@call d C:\"Program Files"\EMC\DPA\services\applications\ui.war.deployed
@call copy C:\Src\EMC\DPA\trunk\ui\dpaui-war\target\ui.war C:\"Program Files"\EMC\DPA\services\applications\ui.war
sleep 5
@call app +
goto end

:UPDATE_PANELS
@call cd C:\Src\EMC\DPA\trunk\installer\common\panels\
@call mav i
@call d C:\Src\EMC\DPA\trunk\installer\server\create\target\installer-panels.jar
@call copy C:\Src\EMC\DPA\trunk\installer\common\panels\target\installer-panels-18.2.0-SNAPSHOT.jar C:\Src\EMC\DPA\trunk\installer\server\create\target\installer-panels.jar
@call copy C:\Src\EMC\DPA\trunk\installer\common\panels\target\installer-panels-18.2.0-SNAPSHOT.jar C:\Src\EMC\DPA\trunk\installer\agents\layout\target\installer-panels.jar
@call dir C:\Src\EMC\DPA\trunk\installer\server\create\target\
goto end 

:frenzy
ch https://localhost:9002/dpa-api/backupJobsFrenzy
goto end

:UI
	if "%2"=="+" (
		o uid
		npm start
	)
goto end

:DPAAGENT
taskkill /IM dpaagent.exe /F
goto end

:MAKE_SILENT
echo prepare silent installation
start %2.exe -r %2.properties
goto end

:SILENT_INSTALL
echo installing in silent mode from %2.exe
start %2.exe -i silent -f %2.properties
goto end

:START
@call app +
@call ds + 
@call ag + 
goto end

:AG
	
	echo in agent
	if "%2"=="++" goto AGENT_START_BIN
	if "%2"=="+" goto AGENT_START
	if "%2"=="--" goto AGENT_STOP_BIN
	if "%2"=="-" goto AGENT_STOP
	
	:AGENT_START
		echo starting agent
		@call sc start "EMC DPA Agent Service"
		timeout 1
		st
	goto end

	:AGENT_START_BIN
		echo starting agent
		@call dpa agent start
		timeout 1
		st
	goto end

	:AGENT_STOP
		echo stopping agent
		@call sc stop "EMC DPA Agent Service"
		timeout 1
		st
	goto end
	
	:AGENT_STOP_BIN
		echo stopping agent
		@call dpa agent stop
		timeout 1
		st
	goto end
goto end

:APP 
	SET DIR=%CD%
	if "%2"=="+" goto APP_START
	if "%2"=="++" goto APP_START_PF
	if "%2"=="-" goto APP_STOP
	if "%2"=="--" goto APP_STOP_PF
	if "%2"=="r" goto APP_RESTART
	:APP_START_PF
		echo starting application in program files
		@call bb
		@call dpa app start
		@call sta r
		timeout 1
		st
		cd %DIR%
	goto end
	
		:APP_STOP_PF
		echo stoping application in program files
		@call bb
		@call dpa app stop
		timeout 1
		st
		SET DIR=%CD%
	goto end
	
	:APP_RESTART
		echo ----------------RESTART-APP------------------
		@call sc stop "EMC DPA Application Service"
		sleep 5
		@call sc start "EMC DPA Application Service"
		SET DIR=%CD%
	goto end 
	:APP_START 
		echo starting app
		@call sc start "EMC DPA Application Service"
		timeout 1
		st
		SET DIR=%CD%
	goto end

	:APP_STOP 
		echo stopping app
		@call sc stop "EMC DPA Application Service"
		timeout 1
		st
		SET DIR=%CD%
	goto end
	
	:APP_STOP_PF
	
	goto end 
goto end

:DS

	if "%2"=="+" goto DS_START
	if "%2"=="-" goto DS_STOP
	
	:DS_START 
		echo starting ds
		@call sc start "EMC DPA Datastore Service"
		timeout 1
		st
	goto end

	:DS_STOP 
		echo stopping ds
		@call sc stop "EMC DPA Datastore Service"
		timeout 1
		st
	goto end
goto end

:STAT
	if "%2"=="b" goto stat_bin
sc query "EMC DPA Application Service" | find "STATE" 
sc query "EMC DPA Datastore Service" | find "STATE"
sc query "EMC DPA Agent Service" | find "STATE"
goto end

:STAT_BIN
@call C:\"Program Files"\EMC\DPA\services\bin\dpa svc stat
goto end 

:REINSTALL_AGENT
@call idpa uni agent
@call idpa a64
goto end

:BUILDACTIONS
echo building actions 
@call cd %DPASRC%\installer\common\actions
@call mav i
@call idpa ca
goto end

:NEW
	if "%2"=="explicit" goto NEW_EXPLICIT
	if "%2"=="e" goto NEW_EXPLICIT
	if "%2"=="properties" goto NEW_PROPERTIES
	if "%2"=="pro" goto NEW_PROPERTIES
	
	if "%2"=="1" goto NEW_1
	if "%2"=="2" goto NEW_2
	
echo installing NEW
start C:\Users\gudiea\Desktop\installers\NEW.exe -i silent -f NEW.properties
goto end

:NEW_1
echo first new installation 
REM @call t u 
REM del C:\Users\gudiea\Desktop\installers\NEW.properties
@call C:\Users\gudiea\Desktop\installers\NEW.exe -r NEW.properties
@call idpa new pro
goto end

:NEW_2
REM @call t l
@call C:\Users\gudiea\Desktop\installers\NEW.exe -i silent -f NEW.properties
goto end

:NEW_EXPLICIT
echo explicit installation
@call t l 
start C:\Users\gudiea\Desktop\installers\NEW.exe
goto end 

:NEW_PROPERTIES
echo adding properties 
echo.  >> C:\Users\gudiea\Desktop\installers\65\LastServer.properties
echo VAR_APOLLO_USER_PASSWORD=Serverg0d! >> C:\Users\gudiea\Desktop\installers\NEW.properties
echo VAR_AGENT_PASSWORD=Serverg0d! >> C:\Users\gudiea\Desktop\installers\NEW.properties
echo VAR_ADMIN_PASSWORD=Serverg0d! >> C:\Users\gudiea\Desktop\installers\NEW.properties
goto end

:ADD_PROPERTIES
echo adding properties 
echo.  >> C:\Users\gudiea\Desktop\installers\65\LastServer.properties
echo VAR_APOLLO_USER_PASSWORD=Serverg0d! >> C:\Users\gudiea\Desktop\installers\NEW.properties
echo VAR_AGENT_PASSWORD=Serverg0d! >> C:\Users\gudiea\Desktop\installers\NEW.properties
echo VAR_ADMIN_PASSWORD=Serverg0d! >> C:\Users\gudiea\Desktop\installers\NEW.properties
goto end

:INSTALL 
	if "%2"=="a64" goto AGENT64
	if "%2"=="a65" goto AGENT65
	if "%2"=="server" goto INSTALLSERVER
	if "%2"=="e" goto INSTALLEXP
	if "%2"=="exp" goto INSTALLEXP
REM timeout 100
REM 377
goto end

:INSTALLEXP
start C:\Src\EMC\DPA\trunk\installer\server\create\target\DPA-Server-Windows-x86_64-18.2.0.103470.exe
goto end 

:A2000CUSTOM
echo installing Agent2000CustomError
start C:\Users\gudiea\Desktop\installers\Agent2000CustomError.exe -i silent -f Agent2000CustomError.properties
goto end

:CUSTOM
start C:\Users\gudiea\Desktop\installers\CustomError.exe -i silent -f CustomError.properties
goto end

:A2000
echo installing Agent2000
start C:\Users\gudiea\Desktop\installers\Agent2000.exe -i silent -f Agent2000.properties
goto end

:AGENTLOG
se C:\Program Files\EMC\DPA\_install
goto end

:UPGRADE
start C:\Users\gudiea\Desktop\installers\2103.exe -i silent -f 2103.properties
goto end

:INSTALLSERVER
start C:\Users\gudiea\Desktop\installers\2003.exe -i silent -f 2003.properties
goto end

:STARTAGENT
@call C:\"Program Files"\EMC\DPA\services\bin\dpa.bat agent install
timeout 1
@call C:\"Program Files"\EMC\DPA\services\bin\dpa.bat agent start
goto end

:AGENT64
echo installing agent 6.4.0 
start C:\Users\gudiea\Desktop\installers\a64.exe -i silent -f a64.properties
goto end

:AGENT65
echo installing agent 6.5.0 
start C:\Users\gudiea\Desktop\installers\a65.exe -i silent -f a65.properties
goto end

:AGENT66
echo installing agent from trunk
start C:\Users\gudiea\Desktop\installers\a66.exe -i silent -f a66.properties
goto end

:UNINSTALL
	echo uninstalling...
	if "%2"=="explicitly" goto UNIEXP
	if "%2"=="e" goto UNIEXP
	if "%2"=="agent" goto UNIAGENT
	if "%2"=="agents" goto UNIAGENT
	if "%2"=="a" goto UNIAGENT
	if "%2"=="ap" goto UNIAGENTPROCESS
	if "%2"=="server" goto UNINSTALLSERVER
	start C:\"Program Files"\EMC\DPA\_uninstall\Uninstall_Data_Protection_Advisor.exe
	goto end

:UNINSTALLSERVER
echo uninstalling server
REM echo prohibit now
start C:\"Program Files"\EMC\DPA\_uninstall\Uninstall_Data_Protection_Advisor.exe -i silent
goto end

:UNIAGENTPROCESS
@call C:\"Program Files"\EMC\DPA\services\bin\dpa.bat agent stop
timeout 1
@call C:\"Program Files"\EMC\DPA\services\bin\dpa.bat agent uninstall
goto end

:UNIAGENT
echo uninstalling agent
@call C:\"Program Files"\EMC\DPA\services\bin\dpa.bat agent stop
timeout 1
@call C:\"Program Files"\EMC\DPA\services\bin\dpa.bat agent uninstall
@call rmdir /s /q "C:\Program Files\EMC\DPA\agent\"
goto end

:UNIEXP
start C:\"Program Files"\EMC\DPA\_uninstall\Uninstall_Data_Protection_Advisor.exe
goto end

:END
