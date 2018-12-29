@echo off
if "%1"=="desktop" goto desktop
if "%1"=="desktop" goto desktop
if "%1"=="down" goto downloads
if "%1"=="scanner" goto scanner
if "%1"=="installers" goto installers
if "%1"=="i" goto installers
if "%1"=="agent" goto agent
if "%1"=="wiki" goto wiki
if "%1"=="images" goto images
if "%1"=="agent65" goto agent65
if "%1"=="a65" goto agent65
if "%1"=="dpa" goto dpa
if "%1"=="wiki" goto WIKI
if "%1"=="ut" goto util
if "%1"=="mus" goto music
if "%1"=="german" goto german
if "%1"=="de" goto de
if "%1"=="home" goto home
if "%1"=="app" goto navapp
if "%1"=="jade" goto jade
if "%1"=="ex" goto ex
if "%1"=="cl" goto classes
if "%1"=="univ" goto univer
if "%1"=="u" goto univer
if "%1"=="dsl" goto dsl
if "%1"=="sc" goto schedule
if "%1"=="vol" goto volunteer
if "%1"=="util" goto util
if "%1"=="sh" goto shortcuts
if "%1"=="pf" goto pf
if "%1"=="pf86" goto pf86
if "%1"=="pic" goto pictures
if "%1"=="pictures" goto pictures
if "%1"=="short" goto shortcuts
if "%1"=="shortcuts" goto shortcuts
if "%1"=="music" goto music
if "%1"=="tasks" goto tasks
if "%1"=="t" goto tasks
if "%1"=="artifactory" goto artifactory
if "%1"=="art" goto artifactory
if "%1"=="user" goto gudiea
if "%1"=="gudiea" goto gudiea
if "%1"=="dpa" goto dpa
if "%1"=="bdpa" goto bdpa
if "%1"=="books" goto books
if "%1"=="da" goto dairies
if "%1"=="dairies" goto dairies
if "%1"=="sports" goto sports
if "%1"=="gtd" goto gt
if "%1"=="temp" goto temp
if "%1"=="poems" goto poems
if "%1"=="demo" goto demo
if "%1"=="cisco" goto cisco
if "%1"=="m2" goto m2
if "%1"=="subd" goto subd
if "%1"=="doc" goto docs
if "%1"=="docs" goto docs
if "%1"=="tool" goto tools
if "%1"=="tools" goto tools
if "%1"=="or" goto oracle
if "%1"=="oracle" goto oracle
if "%1"=="or12" goto or12
if "%1"=="mongo" goto mongo
if "%1"=="triz" goto triz
goto end

:triz
cd C:\Artur\University\TRIZ
goto end

:mongo
cd C:\tools\mongo\
goto end 

:or12
REM cd C:\app\gudiea\virtual\product\12.2.0\dbhome_1\network\admin"
cd C:\app\gudiea\product\12.2.0\dbhome_1\bin\
cc C:\app\gudiea\product\12.2.0\dbhome_1\bin\
goto end

:oracle
cd C:\oraclexe\app\oracle\product\11.2.0\server\bin"
goto end

:tools
cd C:\tools
goto end

:docs
cd C:\Users\gudiea\Documents"
goto end

:subd
cd C:\Artur\University\SUBD"
goto end

:m2
cd C:\Users\gudiea\.m2"
goto end

:cisco
cd C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client"
goto end

:demo
start \\corpeufs12\dpa_sprint_demos\18.2
goto end

:poems
cd C:\Artur\mine\poems"
goto end

:temp
cd C:\Artur\temp"
goto end

:gt
cd C:\Artur\gtd"
goto end

:sports
cd C:\Programming\Angular\SportsStore
goto end

:dairies
cd C:\Artur\mine\dairies
goto end

:books
cd C:\Artur\Books
goto end

:bdpa
	set bdpapath=C:\Program Files\EMC\DPA
	if "%2"=="logs" goto BDPA_LOGS
	if "%2"=="log" goto BDPA_LOGS
	if "%2"=="l" goto BDPA_LOGS
	goto end 
	
	:BDPA_LOGS
		echo %bdpapath%\services\logs\
		cd %bdpapath%\services\logs\
	goto end  
goto end



:dpa
	set dpapath=C:\Src\EMC\DPA\trunk
	if "%2"=="i" goto DPA_INSTALLER
	if "%2"=="is" goto DPA_INSTALLER_SERVER
	if "%2"=="ic" goto DPA_INSTALLER_COMMON
	if "%2"=="ist" goto DPA_IST
	if "%2"=="installer" goto DPA_INSTALLER
	if "%2"=="ip" goto DPA_INSTALLER_PANELS
	if "%2"=="app" goto DPA_APP
	if "%2"=="a" goto DPA_APP
	if "%2"=="l" goto DPA_LOG
	if "%2"=="log" goto DPA_LOG
	if "%2"=="logs" goto DPA_LOG
	if "%2"=="e" goto DPA_EXEC
	if "%2"=="exec" goto DPA_EXEC
	cd C:\Program Files\EMC\DPA\
	goto end 
	
	:DPA_EXEC
		cd C:\"Program Files"\EMC\DPA\services\executive
	goto end 
	:DPA_LOG
		cd C:\Program Files\EMC\DPA\services\logs\
	goto end 
	
	:DPA_APP
		cd C:\Program Files\EMC\DPA\services\applications\
	goto end 
	
	:DPA_INSTALLER_COMMON
	cd C:\Src\EMC\DPA\trunk\installer\common
	goto end 
	
	:DPA_INSTALLER_PANELS
	cd C:\Src\EMC\DPA\trunk\installer\common\panels\
	goto end 
	
	:DPA_LOGS
		echo %dpapath%\services\logs\
		cd %dpapath%\services\logs\
	goto end 
	:DPA_INSTALLER
		cd %dpapath%\installer\
	goto end 
	:DPA_INSTALLER_SERVER
		cd %dpapath%\installer\server\
	goto end 
	
	:DPA_IST
	cd %dpapath%\installer\server\create\target\
	goto end 
	
	
goto end

:gudiea
cd C:\Users\gudiea
goto end

:artifactory
cd C:\Users\gudiea\.m2"
goto end

:tasks
cd C:\Artur\Work\tasks
goto end

:music
cd C:\Artur\Music
goto end

:shortcuts
cd C:\Programming\Batch\Aliases\Shortcuts
goto end

:pictures
cd C:\Users\gudiea\Pictures
goto end

:pf
cd C:\"Program Files"
goto end

:pf86
cd C:\Program Files (x86)"
goto end

:shortcuts
cd C:\Programming\Batch\Aliases\Shortcuts
goto end

:util
cd C:\Programming\Batch\util
goto end

:volunteer
cd C:\Programming\C#\Volunteer"
goto end

:schedule
cd C:\Programming\C#\Schedule"
goto end

:dsl
cd C:\Artur\University\DSL
goto end

:univer
cd C:\Artur\University
goto end

:classes
cd C:\Programming\Java\JADE-all-4.5.0\JADE-bin-4.5.0\jade\classes
goto end

:ex
cd C:\Programming\Java\JADE-all-4.5.0\examples\jade\src\examples
goto end

:jade
cd C:\Programming\Java\JADE-all-4.5.0\JADE-bin-4.5.0\jade"
goto end

:NAVAPP
cd "C:\Program Files\EMC\DPA\services\applications\"
goto end

:home
cd C:\Users\gudiea"
goto end

:de
cd C:\Artur\University\Deutsch"
goto end

:german
cd C:\Artur\University\Deutsch"
goto end

:music
cd C:\Artur\Music\
goto end

:util
cd C:\Programming\Batch\util
goto end

:WIKI
	if "%2"=="dpa" (
		cd C:\Artur\Wiki\DPA\
		goto end
	)
	if "%2"=="stat" (
		cd C:\Artur\Wiki\Stat\
		goto end
	)
cd C:\Artur\Wiki\
goto end

:AGENT65
cd C:\Src\EMC\DPA\6.5.0\installer\agents\
goto end

:images
cd C:\Programming\Python\images
goto end

:WIKI
cd C:\Artur\Wiki
goto end

:AGENT
cd C:\Program Files\EMC\DPA\agent
goto end

:DOWNLOADS
cd C:\Users\gudiea\Downloads
goto end

:SCANNER
se \\Nasrusp102v1\scanner
goto end

:DESKTOP
cd %DESKTOP%
goto end

:INSTALLERS
cd C:\Users\gudiea\Desktop\installers
goto end

:END
