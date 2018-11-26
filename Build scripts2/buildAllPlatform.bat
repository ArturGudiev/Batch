@set START_TIME=!time!
@set DPA_INSTALL_HOME=C:\EMC\DPA
@set PLATFORM_CODE_HOME=C:\Src\EMC\DPA\trunk\

@cd /D %PLATFORM_CODE_HOME%
@echo building platform
@call mvn clean install -PBuildPlatform -Dmaven.test.skip=true -T4 -X
@IF %ERRORLEVEL% NEQ 0 goto error

@exit /B
:error
@echo OPERATION FAILED. please fix and re-run
@pause
