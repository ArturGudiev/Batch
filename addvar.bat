@echo off

if "%1"=="" goto EMPTY


set var_name=%1
set new_value=%2
FOR /F "tokens=* USEBACKQ" %%F IN (`getvar %1`) DO (
	SET value=%%F
)
@call echo %value% 
@call setx %var_name% "%value%;%new_value%"
@call refreshvars > nul 
@call getvar %var_name%

goto end

:EMPTY
    echo empty 
goto end

:END