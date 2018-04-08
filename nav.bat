@echo off

if "%1"=="desktop" goto desktop
if "%1"=="desktop" goto desktop
if "%1"=="down" goto downloads
if "%1"=="scanner" goto scanner
if "%1"=="installers" goto installers
if "%1"=="i" goto installers
if "%1"=="agent" goto agent
if "%1"=="wiki" goto wiki
if "%1"=="images" goto images
if "%1"=="agent65" goto agent65
if "%1"=="a65" goto agent65
if "%1"=="dpa" goto dpa
if "%1"=="wiki" goto WIKI
if "%1"=="ut" goto util
goto end

:util
cd C:\Programming\Batch\util
goto end

:WIKI
if "%2"=="dpa" (
	cd C:\Artur\Wiki\DPA\
	goto end
)
cd C:\Artur\Wiki\
goto end

:DPA 
cd %DPA%
goto end

:AGENT65
cd C:\Src\EMC\DPA\6.5.0\installer\agents\
goto end

:images
cd C:\Programming\Python\images
goto end

:WIKI
cd C:\Artur\Wiki
goto end

:AGENT
cd C:\Program Files\EMC\DPA\agent
goto end

:DOWNLOADS
cd C:\Users\gudiea\Downloads
goto end

:SCANNER
se \\Nasrusp102v1\scanner
goto end

:DESKTOP
cd %DESKTOP%
goto end

:INSTALLERS
cd C:\Users\gudiea\Desktop\installers
goto end

:END
