@echo off

if "%1"=="t" goto truncated

code --goto "%DPA%\services\logs\server.log:100000"
goto end 

:TRUNCATED
	@call bbl
	@call d server_truncated.log
	@call logreader server.log
	@call code --goto server_truncated.log:100000
goto end 

:END
