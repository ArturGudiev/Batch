@echo off

if "%1"=="server" goto server
goto end

:SERVER
n+ "%INSTALLDPASVC%"\logs\server.log
goto end

:END