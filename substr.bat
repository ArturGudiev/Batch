@echo off

echo.%1 | findstr /C:"%2" 1>nul

if errorlevel 1 (
	set result=False  
) ELSE (
	set result=True
)

:END