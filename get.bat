@echo off

if "%1"=="asupwd" goto ApolloSuperUser
if "%1"=="enasupwd" goto EncodeApolloSuperUserPwd
if "%1"=="csri" goto ClusterStatusReportId
if "%1"=="q" goto QUERY1
if "%1"=="q2" goto QUERY2
if "%1"=="deploy" goto DEPLOY
if "%1"=="filer" goto FILER
if "%1"=="c" goto CDIR
if "%1"=="-h" goto help
if "%1"=="--help" goto help
if "%1"=="mvna" goto mvnagent
if "%1"=="p" goto pwd
if "%1"=="ip" goto ip
if "%1"=="qa" goto qa
if "%1"=="share" goto share
if "%1"=="letter" goto letter
if "%1"=="mail" goto mail
if "%1"=="pwd" goto pwd
if "%1"=="mypwd" goto mypwd
if "%1"=="pwd1" goto mypwd

if "%1"=="rule" goto rule
if "%1"=="r" goto rule
if "%1"=="g" goto DEUTCH
if "%1"=="e" goto e
if "%1"=="bb" goto blackboard
if "%1"=="silent1" goto silent1
if "%1"=="sil1" goto silent1
if "%1"=="silent2" goto silent2
if "%1"=="sil2" goto silent2

if "%1"=="bc" goto batchcondition
if "%1"=="chpwd" goto CHROMEPWD
if "%1"=="oninit" goto OnInit
if "%1"=="cpu" goto cpu
if "%1"=="gapi" goto gapi
if "%1"=="pwd2" goto pwd2
if "%1"=="quest" goto quest
if "%1"=="apo" goto apostrophe
if "%1"=="apostrophe" goto apostrophe
if "%1"=="obj" goto obj
if "%1"=="ip" goto ip
if "%1"=="rip" goto rip
if "%1"=="utair" goto utair
if "%1"=="dellnumber" goto dellnumber
if "%1"=="number" goto dellnumber
if "%1"=="badge" goto dellnumber
if "%1"=="megafon" goto megafon
if "%1"=="ae" goto ae
if "%1"=="ssd" goto screenshotdir
if "%1"=="ssdir" goto screenshotdir
if "%1"=="screenshotdir" goto screenshotdir
if "%1"=="ipl" goto ipl
if "%1"=="result" goto commandresult
if "%1"=="res" goto commandresult
if "%1"=="mongo" goto mongo
if "%1"=="tools" goto tools
if "%1"=="jhome" goto jhome
if "%1"=="rvm" goto rvm
if "%1"=="udir" goto userdir
if "%1"=="user" goto userdir
if "%1"=="ba" goto ba
if "%1"=="bdir" goto bdir
if "%1"=="bbdir" goto bbdir
if "%1"=="" goto empty
if "%1"=="ss" goto screenshots
if "%1"=="screen" goto screenshots
if "%1"=="screenshot" goto screenshots
if "%1"=="pf2" goto pf2
goto end

:pf2
cc C:\PROGRA~1
goto end

:screenshots
cc C:\Users\gudiea\Desktop\Screen\ScreenShots
goto end

:EMPTY 
	echo nothing to get
goto end 

:bbdir
	cc C:\Program_Files\EMC\DPA\services\
goto end

:bdir
	cc C:\EMC\DPA\services\
goto end

:ba
cc C:\EMC\DPA\services\applications\
goto end

:userdir
cc C:\Users\gudiea
goto end

:rvm
ec 10.98.62.166
goto end

:jhome
cc C:\PROGRA~1\Java\JDK18~2.0_1
goto end

:tools
cc C:\tools
goto end

:mongo
cc mongo "mongodb+srv://cluster0-jryec.mongodb.net/test" --username user
goto end

:commandresult
clip_content_file.bat C:\Programming\Batch\util/commandresult.txt
goto end


:rip
ec 10.98.62.166
goto end


:ipl
ec https://10.41.42.5:9002
goto end

:screenshotdir
ec C:\Users\gudiea\Desktop\Screen\ScreenShots
goto end

:ae
cc �
goto end

:megafon
ec +79312303920
goto end

:dellnumber
cc 1113410
goto end

:utair
cc 1024099176
goto end

:ip
REM ec 10.77.4.74
ec 10.41.42.5
goto end

:obj
cc {_text: , _attributes: {}}
goto end

:apostrophe
cc `
goto end

:quest
cc \\NASRUSP102v1\Russia_CoE_All\Photos\2018_goFika_Quest
goto end

:pwd2
cc 362044Dpa!
goto end

:gapi
cc https://api.github.com/
goto end

:cpu
wmic cpu get loadpercentage
goto end

:OnInit
cc import {OnInit} from '@angular/core';
echo import {OnInit} from '@angular/core';
goto end

:CHROMEPWD
cc chrome://settings/passwords
goto end

:HELP
echo. 
echo 	asupwd 		-- Copy ApolloSuperUser default password to clipboard
echo 	csri 		-- Copy Cluster status report id to clipboard
echo 	q, q2		-- queries
echo 	mvna		--	mvn command for agent_errors
echo 	filer		--	filer status
echo 	qa			-- folder in QA
echo 	share		-- share folder in 628

goto end

:batchcondition
cc if "%%1"=="%2" goto %2
goto end

:SILENT1 
cc %2.exe -r %2.properties 
echo %2.exe -r %2.properties 
goto end

:SILENT2
cc %2.exe -i silent -f %2.properties 
goto end

:BLACKBOARD
cc ju9zi9Ej
goto end

:EncodeApolloSuperUserPwd
cc Zkn6iucEmYWjB+TcqDxD3Byw5PwQUFbF+mwqsZTMVAk\=
goto end

:MYPWD
cc Passw0rd!
goto end

:E
�?�? ё
goto end



:MAIL
cc "Artur.Gudiev@emc.com"
goto end

:RULE
cc "if "%%1"=="%2" goto %2"
goto end

:LETTER
chcp 65001
echo | set /p=æ| clip
goto end

:QA
echo | set/p=\\10.98.60.38\qa\Temp\Artur| \\10.98.60.38\qa\Temp\Arturclip
goto end

:SHARE
echo | set /p=\\10.98.62.8\628-share| clip
goto end

:IP
echo | set /p=10.77.4.74| clip
goto end

:PWD
	if "%2"=="hash" goto HASH_PWD
	if "%2"=="h" goto HASH_PWD
cc Serverg0d! 
goto end 

:HASH_PWD
cc HP1CD1B8C59E9951E2A^|321D7192570B4B7713E0D6E0284339036CA07E94E6F75E2B861EEE3605B71655
goto end

:MVNAGENT
echo | set /p=mvn clean install -Pwin-x86_64| clip
goto end

:CDIR
echo | set /p=%cd%\%2| clip
goto end

:DEPLOY 
echo | set /p= mvn -U -DDPA.DEPLOY.DIR=C:\EMC\DPA clean install -PDeployServer,DeployUI| clip
goto end 

:QUERY1
echo clip first query  %nl%
echo | set /p=INSERT INTO dpa.agent_errors (f_id, f_agent_id, f_agent_name, f_endtime, f_module, f_node_id, f_starttime, f_sub_name, f_invalidationtime,f_wysdm_server,f_error_id,f_error_msg,f_request_id) SELECT f_id, f_agent_id, f_agent_name, f_endtime, f_module, f_node_id, f_starttime, f_sub_name, f_invalidationtime,'local_wysdm','25005','Agent responce is failed',f_request_id FROM dpa.agent_status; | clip
goto end

:ApolloSuperUser
echo | set /p=3g1;23#6hFd 05(}c8/F5rB2lL1J79| clip
goto end

:ClusterStatusReportId
echo | set /p=ef145bdd-f690-41b1-8c99-16b624ee1cf7| clip
goto end

:PM
start https://trello.com/b/q1SsfrNe/work
goto end

:FILER
echo | set /p=\\dpa-filer.datadomain.com\CIBuilds\dpa| clip
goto end

:END
