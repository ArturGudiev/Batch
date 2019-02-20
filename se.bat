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
if "%1"=="pf" goto ProgramFiles
if "%1"=="pf86" goto ProgramFiles86
if "%1"=="german" goto german
if "%1"=="ex" goto ex
if "%1"=="cl" goto classes
if "%1"=="doc" goto doc
if "%1"=="short" goto shortcuts
if "%1"=="shortcuts" goto shortcuts
if "%1"=="down" goto downloads
if "%1"=="art" goto artur
if "%1"=="univ" goto univ
if "%1"=="ct" goto ct
goto end

:ct
	set var=%2
	if "%2"=="" (set var=C:\Users\gudiea)
	echo here
	echo %var%
    start totalcmder /o  /L=%cd% /R=%var%
goto end

:USER_PATH
	start explorer %*
goto end 

:univ
	start explorer C:\Artur\University
goto end

:artur
	start explorer C:\Artur
goto end

:downloads
	start explorer C:\Users\gudiea\Downloads
goto end

:shortcuts
	start explorer C:\Programming\Batch\Aliases\Shortcuts
goto end

:doc
	start explorer C:\Programming\Java\JADE-all-4.5.0\doc"
goto end

:classes
	start explorer C:\Programming\Java\JADE-all-4.5.0\JADE-bin-4.5.0\jade\classes
goto end

:ex
	start explorer C:\Programming\Java\JADE-all-4.5.0\examples\jade\src\examples
goto end

:german
	start explorer C:\Artur\University\Deutsch
goto end

:ProgramFiles86
	start explorer C:\Program Files (x86)
goto end

:ProgramFiles
	start explorer C:\Program Files
goto end

:aliases
	start explorer C:\Programming\Batch\Aliases
goto end

:EMPTY
	start explorer %*
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

