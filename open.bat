@echo off

if "%1"=="mvndir" goto MVNDIR
if "%1"=="board" goto board
if "%1"=="ps" goto PS



if "%1"=="actions" goto actions
if "%1"=="act" goto actions

if "%1"=="art" goto artur
if "%1"=="artur" goto artur

if "%1"=="d" goto downloads
if "%1"=="down" goto downloads


if "%1"=="s" goto script
if "%1"=="script" goto script

if "%1"=="ali" goto alias

if "%1"=="tm" goto TASKMGR

if "%1"=="psql" goto psql 

if "%1"=="studies" goto studies 

if "%1"=="ticket" goto ticket
if "%1"=="screen" goto screen 

if "%1"=="angry" goto angry

if "%1"=="uid" goto uidir

if "%1"=="ddata" goto ddata
if "%1"=="data" goto end

if "%1"=="dpa" goto dpa
if "%1"=="chair" goto chair
if "%1"=="music" goto music
if "%1"=="telegram" goto telegram
if "%1"=="tele" goto telegram
if "%1"=="plan" goto plan
if "%1"=="pf" goto programfiles

if "%1"=="tt" goto TIMETABLE
if "%1"=="timetable" goto TIMETABLE

if "%1"=="winhk" goto windowhotkey
if "%1"=="winkey" goto windowhotkey
if "%1"=="cort" goto cortana
if "%1"=="cortana" goto cortana

if "%1"=="screenshot" goto screenshots
if "%1"=="ss" goto screenshots

if "%1"=="wp" goto WinProcess
if "%1"=="winprocess" goto WinProcess

if "%1"=="util" goto util

if "%1"=="--help" goto HELP


goto end 

:HELP
echo.
echo 	cbook, c 		- 	open C book
echo 	actions, a 		- 	action.txt in my folder 
echo 	s, script 		- 	script in Batch folder
echo 	art, artur		- 	folder C:\Artur
echo 	d, down			- 	
echo 	act, actions	- 	
echo 	agent
echo 	al, agentlog
echo 	abin, asbin
echo 	ang				- 	angular
echo 	dpa 			- 	C:\Program Files\EMC\DPA
echo 	angry			- 	open angry file in artur
goto end

:UTIL
n+ C:\Programming\Batch\util\%2.bat
goto end

:WinProcess
start C:\tools\ProcessExplorer\procexp64.exe
goto end

:SCREENSHOTS
se C:\Users\gudiea\Desktop\Screen\ScreenShots
goto end

:CORTANA
ch https://www.cnet.com/how-to/the-complete-list-of-cortana-commands/
goto end

:WINDOWHOTKEY
ch https://support.microsoft.com/ru-ru/help/12445/windows-keyboard-shortcuts
goto end

:TIMETABLE
ch https://timetable.spbu.ru/MATH/StudentGroupEvents/Primary/13712
goto end

:PROGRAMFILES
cd "C:\Program Files"
goto end

:PLAN
ch "http://www.math.spbu.ru/ru/mmeh/PLANS/1/17_5665_020403mMOiAIS_16_12_15.pdf"
goto end

:TELEGRAM
start C:\Users\gudiea\AppData\Roaming\"Telegram Desktop"\Telegram.exe
goto end

:MUSIC
ch yandex.ru/music
goto end

:CHAIR
cd C:\Programming\Web\math-chair\
goto end

:DPA
if "%1"=="agent" goto AGENT
if "%2"=="agentlog" goto agentlogs
if "%2"=="al" goto agentlogs
if "%2"=="abin" goto ABIN
if "%2"=="adata" goto ADATA
if "%2"=="ad" goto ADATA
if "%2"=="asbin" goto ASBIN
if "%2"=="alog" goto ALOG

cd C:\Program Files\EMC\DPA
goto end
	:ADATA
	cd C:\Program Files\EMC\DPA\agent\data
	goto end

	:ALOG
	cd C:\Program Files\EMC\DPA\agent\logs
	goto end

	:ABIN
	start explorer C:\"Program Files"\EMC\DPA\agent\bin
	goto end

	:ASBIN
	start explorer C:\Src\EMC\DPA\6.5.0\agent\build\x64-Release\bin
	goto end

	:AGENTLOGS
	cd C:\"Program Files"\EMC\DPA\agent\logs
	goto end

	:AGENT
	cd C:\"Program Files"\EMC\DPA\agent\
	goto end
goto end



:DDATA
n+ C:\Program Files\EMC\DPA\services\executive\datastore-service.conf
goto end

:UIDIR
cd C:\Src\EMC\DPA\new2\dpa-ui-html\angular-app
goto end

:SCREEN
start screen
goto end

:ANGRY
n+ %ARTUR%\angry.txt
goto end

:TICKET 
start chrome https://dell.service-now.com/esp/create_ticket.do 
goto end

:STUDIES
start chrome https://go.comapping.com/comapping.html#mapid=156187 
goto end

:PSQL 
psql postgres postgres
goto end

:PS
n+ C:\Artur\mine\psql.txt
goto end


:DOWNLOADS
cd C:\Users\gudiea\Downloads
goto end

:TASKMGR
taskmgr
goto end


:ARTUR
cd C:\Artur
goto end

:SCRIPT
n+ C:\Programming\Batch\%2.bat
goto end

:ALIAS
n+ C:\Programming\Batch\Aliases\%2.bat
goto end 

:ACTIONS 
n+ C:\Artur\actions.txt
goto end

:BOARD
start chrome https://dpa-jira.lss.emc.com/secure/RapidBoard.jspa?rapidView=65&view=detail
goto end

:MVNDIR
cd %DPASRC%\tools\maven-dev-profiles
goto end

:END