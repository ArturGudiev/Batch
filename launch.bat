@echo off

if "%1"=="ia" goto IA
goto end

:IA
echo starting ia
start C:\"Program Files (x86)"\"InstallAnywhere 2017"\InstallAnywhere.exe 
REM C:\Src\EMC\DPA\trunk\installer\agents\create\src\main\config\DPA6_Agents_Installer.iap_xml
goto end

:END