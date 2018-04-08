@echo off 

if "%1"=="pu" goto PUNTO
if "%1"=="p" goto PUNTO
if "%1"=="punto" goto PUNTO

if "%1"=="o" goto ONEDRIVE
if "%1"=="od" goto ONEDRIVE
if "%1"=="onedrive" goto ONEDRIVE

if "%1"=="s" goto SYNPLICITY
if "%1"=="ch" goto chrome
if "%1"=="chrome" goto chrome

if "%1"=="skype" goto skype
if "%1"=="dpa" goto dpa
if "%1"=="--help" goto help

:HELP
echo. 
echo 	p, pu, punto 		-- close punto switcher punto 
echo 	o, od, onedrive 	-- close onedrive
echo 	s, syn, synplicity 	-- close synplicity
goto end

:DPA 
@call app -
@call ds -
@call ag - 
goto end

:SKYPE
taskkill /IM "lync.exe" /F 
goto end

:CHROME 
taskkill /IM chrome.exe /F
goto end

:PUNTO
taskkill /IM punto.exe /F
goto end

:ONEDRIVE
taskkill /IM OneDrive.exe
goto end

:SYNPLICITY
taskkill /IM Syncplicity.exe
goto end
:END