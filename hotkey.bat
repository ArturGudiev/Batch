@echo off

if "%1"=="text" goto text
if "%1"=="t" goto text

if "%1"=="navigate" goto navigate
if "%1"=="nav" goto navigate

if "%1"=="deutsch" goto deutsch
if "%1"=="de" goto deutsch

if "%1"=="portuguese" goto portuguese
if "%1"=="p" goto portuguese

if "%1"=="edit" goto edit
if "%1"=="e" goto edit

if "%1"=="ek" goto edit_kotlin

start C:\Programming\Autohotkey\Hotkeys\Hotkeys.ahk
goto end

:portuguese
goto end 

:EDIT
	if "%2"=="navigate" goto edit_navigate
	if "%2"=="nav" goto edit_navigate
code C:\Programming\Autohotkey\Hotkeys\Hotkeys.ahk
goto end

:edit_kotlin
code C:\Programming\Autohotkey\Hotkeys\Hotkeys_Kotlin.ahk
goto end

:EDIT_NAVIGATE
n+ C:\Users\gudiea\Desktop\Hotkeys\Navigate.ahk
goto end

:DEUTSCH
start %DESKTOP%\Hotkeys\Deutsch.ahk
goto end

:navigate 
start %DESKTOP%\Hotkeys\Navigate.ahk
goto end

:text
	if "%2"=="navigate" goto TEXT_NAVIGATE
	if "%2"=="nav" goto TEXT_NAVIGATE
	n+ %DESKTOP%\Hotkeys\Hotkeys.ahk
	goto end
	
	:TEXT_NAVIGATE
	n+ %DESKTOP%\Hotkeys\Navigate.ahk	
	goto end
	
goto end

:END