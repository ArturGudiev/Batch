@echo off

if "%1"=="e" goto every

takeown /f %*
goto end 

:EVERY
icacls %* /t  /grant Everyone:F
goto end 

:END