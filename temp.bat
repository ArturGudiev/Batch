@echo off
if "%1"=="track" goto track
if "%1"=="map" goto map
if "%1"=="omap" goto omap
if "%1"=="servlet" goto servlet
if "%1"=="s" goto servletgood
if "%1"=="sshort" goto servletshort
if "%1"=="req" goto request

if "%1"=="copy" goto copy
if "%1"=="c" goto copy

if "%1"=="setpwd" goto setpwd
if "%1"=="sp" goto setpwd

if "%1"=="uni" goto uninstall
if "%1"=="uninstall" goto uninstall

if "%1"=="i" goto install
if "%1"=="install" goto install

if "%1"=="fform" goto fform
if "%1"=="api" goto api

if "%1"=="azure" goto azure
if "%1"=="delete" goto delete

if "%1"=="lock" goto lock
if "%1"=="l" goto lock
if "%1"=="unlock" goto unlock
if "%1"=="u" goto unlock

if "%1"=="de" goto DEUTSCH

goto end

:DEUTSCH
@call de %2
@call gn %2
goto end

:delete 
@call C:\"Program Files"\EMC\DPA\services\bin\dpa.bat agent stop
@call C:\"Program Files"\EMC\DPA\services\bin\dpa.bat agent uninstall
goto end

:LOCK
lock C:\"Program Files"\EMC\DPA\agent\bin\dpaagent.exe
goto end 


:UNLOCK
unlock C:\"Program Files"\EMC\DPA\agent\bin\dpaagent.exe
goto end 

:AZURE
cc K9JFP-YYGHC-6FKWJ-WWQQR-TQMDZ
goto end

:SETPWD
echo in setpwd
bb
timeout 1
dpa ds dspwd
timeout 1
Passw0rd!
timeout 1
Passw0rd!

goto end

:FFORM

goto end

:API
ch https://cloud.google.com/translate/docs/reference/libraries#client-libraries-usage-java
goto end

:INSTALL 
start C:\Users\gudiea\Desktop\installer\Current.exe
goto end

:UNINSTALL
start C:\"Program Files"\EMC\DPA\_uninstall\Uninstall_Data_Protection_Advisor.exe
goto end

:COPY
del "%INSTALLDPASVC%"\executive\datastore-service.conf
copy C:\Artur\tasks\February\datastore-service.conf "%INSTALLDPASVC%"\executive\datastore-service.conf
cc Passw0rd!
goto end

:REQUEST
cc "https://localhost:9002/server/status/startup-status"
goto end

:SERVLET
cc "WEB-INF/classes/com/emc/dpa/console/servlet/CheckStatusServlet.class"
goto end

:TRACK
ch https://www.pochta.ru/tracking#EP076438560RU
goto end


:MAP
cc "C:\Src\EMC\DPA\new2\dpa-ui-html\html5-ui-war\overlays\com.emc.dpa.client.war-18.1.0-20180201.013303-20\Help\en_US"
goto end

:OMAP 
n+ "C:\Src\EMC\DPA\new2\dpa-ui-html\html5-ui-war\overlays\com.emc.dpa.client.war-18.1.0-20180201.013303-20\Help\en_US\map.xml"
goto end

:END