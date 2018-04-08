@echo off

set protocol=http
set port=9004
set eng=

for %%x in (%*) do (
	if "%%x"=="e" set eng=dpaui.jsp?engMode=true
	if "%%x"=="s" set protocol=https
	if "%%x"=="2" set port=9002
	if "%%x"=="--help" goto HELP
)

start  %protocol%://localhost:%port%/%eng%
echo. 
goto end


:HELP
echo. 
echo  e 	-- Engineering mode
echo  s 	-- Secured https
echo  2 	-- 9002 port
echo. 
goto end


:END

