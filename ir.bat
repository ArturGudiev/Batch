@echo off

if "%1"=="server" goto server
if "%1"=="agent" goto agent
if "%1"=="a" goto agent
goto end

:AGENT 
	echo open agent installer
	if "%1"=="65" goto set version=6.5.0
	if "%1"=="64" goto set vesion=6.4.0
	:AGENT_65
	
		set IA_PATH_AGENTS_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\agents
		set IA_PATH_AGENTS_WINDOWS_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\agents\layout\target\win64\
		set IA_PATH_AGENTS_AIX_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\agents\layout\target\aix-ppc64\
		set IA_PATH_AGENTS_HPUX_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\agents\layout\target\hpux-ia64\
		set IA_PATH_AGENTS_LINUX_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\agents\layout\target\linux64\
		set IA_PATH_AGENTS_SOLARIS_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\agents\layout\target\solaris-sparc64\
		set IA_PATH_SERVER_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\server\
		set IA_PATH_STATIC_RESOURCES=C:\Src\EMC\DPA\%version%\installer\server\create\create-dell\src\main\resources

		set AGENTS_WINDOWS_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\agents\layout\target\win64\
		set AGENTS_AIX_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\agents\layout\target\aix-ppc64\
		set AGENTS_HPUX_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\agents\layout\target\hpux-ia64\
		set AGENTS_LINUX_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\agents\layout\target\linux64\
		set AGENTS_SOLARIS_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\agents\layout\target\solaris-sparc64\

		set SERVER_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\server

		"C:\Program Files (x86)\InstallAnywhere 2017\InstallAnywhere.exe"

goto end

:DIRS
set home=%cd%
cd C:\Src\EMC\DPA\6.5.0\installer\agents\layout\target
mkdir aix-ppc64
mkdir hpux-ia64
mkdir linux64
mkdir solaris-sparc64
goto end

:END