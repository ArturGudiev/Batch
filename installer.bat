@echo off

set INSTALLER_DIR=C:\Users\gudiea\Desktop\installers

if "%1"=="silent" goto silent
if "%1"=="sil" goto silent
if "%1"=="s" goto silent
if "%1"=="st" goto silent_track
goto end

:silent
    %INSTALLER_DIR%\last.exe -i silent -f myinstaller.properties
goto end

:silent_track
    start @call bbsize 
    %INSTALLER_DIR%\last.exe -i silent -f myinstaller.properties
goto end


:END 
