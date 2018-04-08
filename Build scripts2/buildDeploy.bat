@set RETURN_BACK=%CD%

@call buildAllApp

@REM @call buildAllAppWithoutUI

@cd /D %RETURN_BACK%

@call deployAll