@echo off

FOR /F "tokens=* USEBACKQ" %%F IN (`%*`) DO (
	SET var=%%F
)
ec %var%
