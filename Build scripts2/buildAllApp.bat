@set DPA_INSTALL_HOME=C:\EMC\DPA1
@set DPA_CODE_HOME=C:\Src\EMC\DPA\6.5.0_1\
 
@cd /D %DPA_CODE_HOME%\
@echo build server
@call mvn clean install -Dmaven.test.skip=false -PBuildServer -T4
@IF %ERRORLEVEL% NEQ 0 goto error


@cd /D %DPA_CODE_HOME%\
@echo build ui
@call mvn clean install -Dmaven.test.skip=true -PBuildUI 
@IF %ERRORLEVEL% NEQ 0 goto error

@exit /B

:error
@echo OPERATION FAILED. please fix and re-run
@pause

