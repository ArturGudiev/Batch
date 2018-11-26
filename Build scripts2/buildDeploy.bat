@echo in build deploy
@set RETURN_BACK=%CD%

@REM @call buildAllApp
@call buildAllAppWithoutUI

@cd /D %RETURN_BACK%

@call deployAll