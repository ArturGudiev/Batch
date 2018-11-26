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


if "%1"=="ahk" goto autohotkey
if "%1"=="node" goto node
if "%1"=="mc" goto mc
if "%1"=="npm" goto npm
if "%1"=="sm" goto skypemcaffee
if "%1"=="t" goto torrent
if "%1"=="tor" goto torrent
if "%1"=="torrent" goto torrent
if "%1"=="recorder" goto recorder
if "%1"=="ss" goto recorder
if "%1"=="screen" goto recorder
if "%1"=="outlook" goto outlook
if "%1"=="flash" goto flash
goto end

:flash
taskkill /im flashplayer_31_sa_debug.exe /F
goto end

:outlook
taskkill /IM OUTLOOK.EXE
goto end

:recorder
taskkill /im recorder.exe
goto end

:torrent
taskkill /IM utorrentie.exe
goto end

:skypemcaffee
close skype & close mc
goto end

:npm
taskkill /IM node.exe /F
goto end

:mc
taskkill /im "McAfee Safe Connect.exe" /F
goto end

:node
taskkill /im node.exe /F
goto end

:autohotkey
taskkill /im AutoHotkey.exe /F
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
