@echo off 

if "%1"=="r" goto repeat
if "%1"=="curl" goto curl 
if "%1"=="c" goto curl 

@call curl -s https://localhost:9002/server/status/startup-status --insecure > C:\Artur\temp\status.xml
@call xpath C:\Artur\temp\status.xml "serverStatus/status"

goto end 

:CURL 
	curl -s https://localhost:9002/server/status/startup-status --insecure
goto end 

:REPEAT
	@call curl -s https://localhost:9002/server/status/startup-status --insecure > C:\Artur\temp\status.xml
	REM @call xpath C:\Artur\temp\status.xml "serverStatus/status"
	FOR /F "tokens=* USEBACKQ" %%F IN (`@call xpath C:\Artur\temp\status.xml "serverStatus/status/name"`) DO (
		SET var=%%F
	)
	REM if "%var%"=="URL:file:///C:/Artur/temp/status.xml" (
		REM SET var="No status"
	REM )
	if NOT "%var%"=="UPGRADING" (
		if "%var%"=="URL:file:///C:/Artur/temp/status.xml" (
			echo 	NO STATUS
			goto repeat
		) 
		ECHO 	%var%
		
	)
	if "%var%"=="STARTED" goto end 
	if "%var%"=="UPGRADING" (
		FOR /F "tokens=* USEBACKQ" %%F IN (`@call xpath C:\Artur\temp\status.xml "serverStatus/status/currentStep"`) DO (
			SET var2=%%F
		)
			FOR /F "tokens=* USEBACKQ" %%F IN (`@call xpath C:\Artur\temp\status.xml "serverStatus/status/totalSteps"`) DO (
			SET var3=%%F
		)
		echo 	UPGRADING: 	step %var2% from %var3%
	)

goto repeat
goto end 
:END 