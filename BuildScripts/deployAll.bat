@set START_TIME=!time!
@set DPA_INSTALL_HOME=C:\EMC\DPA2
@set DPA_CODE_HOME=c:\Src\EMC\DPA\6.4.0\tools\maven-dev-profiles  


@cd /D %DPA_INSTALL_HOME%\services\bin

@set APP_SERVICE_STATE=NONE
@for /f "tokens=4*" %%a in ('sc query "EMC DPA Application Service" ^| findstr "STATE"') do set APP_SERVICE_STATE=%%a
@echo app service state is %APP_SERVICE_STATE%

@echo stopping app service
@call dpa app stop
ping 1.1.1.1 -n 1 -w 10000

@set DB_SERVICE_STATE=NONE
@for /f "tokens=4*" %%a in ('sc query "EMC DPA Datastore Service" ^| findstr "STATE"') do set DB_SERVICE_STATE=%%a
@echo db service state is %DB_SERVICE_STATE%

@echo stopping db service
@call dpa ds stop
ping 1.1.1.1 -n 1 -w 10000

ping 1.1.1.1 -n 1 -w 1000
@echo deleting deployment directory %DPA_INSTALL_HOME%
@rmdir /s /q %DPA_INSTALL_HOME%\services
ping 1.1.1.1 -n 1 -w 1000

@cd /D %DPA_CODE_HOME%
@echo running deployer to %DPA_INSTALL_HOME%
@call mvn -U clean install -PDeployServer,DeployUI,DeployBinaries -DDPA.DEPLOY.DIR=%DPA_INSTALL_HOME%
@IF %ERRORLEVEL% NEQ 0 goto error


@cd /D %DPA_INSTALL_HOME%
@echo wrapper.java.additional.25=-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8787 >> .\services\executive\application-service.conf
@echo PGDATA=%DPA_INSTALL_HOME%\\services\\datastore\\data >> .\services\executive\datastore-service.conf
@cd /D %DPA_INSTALL_HOME%\services\bin

@echo starting service
@call dpa ds install
@call dpa app install
@call dpa ds start
@call dpa ds cts

@call dpa ds query "CREATE TABLE apollo.public.adminuser ( f_password VARCHAR(255) );"
@call dpa ds query "INSERT INTO apollo.public.adminuser VALUES ('HP12DC4AE7F4AB1E8D2|D63494124890E14AB82241FA8907839277766CD28F3E7F30D5C0C73484A5F8F4');"
@call dpa ds query "GRANT ALL ON TABLE apollo.public.adminuser TO apollouser;"

@call dpa app start
@REM Serverg0d!


@exit /B

:error
@echo OPERATION FAILED. please fix and re-run
@pause