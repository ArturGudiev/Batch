@echo off

if "%1"=="c" goto CD
if "%1"=="dpa" goto dpa
if "%1"=="installlogs" goto installogs
if "%1"=="il" goto installogs
if "%1"=="hotkeys" goto hotkeys
if "%1"=="hk" goto hotkeys

if "%1"=="gudiea" goto gudiea
if "%1"=="gu" goto gudiea

if "%1"=="agentinstaller" goto agentinstaller
if "%1"=="ai" goto agentinstaller
if "%1"=="i" goto installers
if "%1"=="installer" goto installers
if "%1"=="downloads" goto downloads
if "%1"=="" goto EMPTY
if "%1"=="down" goto downloads
if "%1"=="al" goto aliases
if "%1"=="ali" goto aliases
goto end

:aliases
se C:\Programming\Batch\Aliases
goto end

:EMPTY
start explorer 
goto end

:downloads
start explorer C:\Users\gudiea\Downloads
goto end

:EMPTY
start explorer %*
goto end 

:INSTALLERS
if "%2"=="65" (
	start explorer C:\Users\gudiea\Desktop\installers\65
	goto end
	)
if "%2"=="trunk" (
	start explorer C:\Users\gudiea\Desktop\installers\trunk
	goto end
	)
start explorer C:\Users\gudiea\Desktop\installers
goto end

:AGENTINSTALLER
start explorer C:\Src\EMC\DPA\trunk\installer\agents\create\target
goto end

:installogs
start explorer "C:\Program Files\EMC\DPA\_install"
goto end

:DPA
start explorer "C:\Program Files\EMC\DPA"
goto end

:CD
start explorer %cd%
goto end

:HOTKEYS
se C:\Users\gudiea\Desktop\Hotkeys
goto end

:GUDIEA
start explorer C:\Users\gudiea
goto end

:END

