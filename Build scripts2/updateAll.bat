
@set DPA_CODE_HOME=C:\Src\EMC\DPA\trunk\


@cd /D %DPA_CODE_HOME%
@echo updating dpa
@call tortoiseproc /command:update /closeonend:2 /path:"%DPA_CODE_HOME%"
@IF %ERRORLEVEL% NEQ 0 goto error





