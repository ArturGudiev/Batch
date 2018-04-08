@echo off

if "%1"=="hotkey" goto hotkey
if "%1"=="h" goto hotkey
goto end

:HOTKEY

	if "%2"=="actions" goto actions
	if "%2"=="a" goto actions
	if "%2"=="w" goto web
	if "%2"=="web" goto web
	if "%2"=="open" goto open 
	if "%2"=="o" goto open
	if "%2"=="all" goto all
	
	
	
printf "\n"
printf "	0 - open some program in windows \n"
printf "	1 - open some program in Web\n"
printf " 	2 - perform some action\n"
goto end

	:ALL
	h h a 
	h h w
	h h o 
	goto end

	:ACTIONS
	printf "\n		Actions \n\n"
	printf "	Numpad2 & r    -   reload Hotkey script\n"
	printf "	Numpad2 & s    -   switch User\n"
	printf "	Numpad2 & c    -   close all windows\n"
	goto end
	
	:Web
	printf "\n		Web\n\n"
    printf "	Numpad1 & j    -   Board\n"
    printf "	Numpad1 & w    -   Work\n"
    printf "	Numpad1 & t    -   Task\n"
    printf "	Numpad1 & c    -   Crucible\n"
    printf "	Numpad1 & l    -   Localhost\n"
    printf "	Numpad1 & m    -   Maps\n"
	goto end
	
	:OPEN
	printf "\n		Open\n\n"
    printf "   Numpad0 & m    -   Moba\n"
    printf "   Numpad0 & c    -   Chrome\n"
    printf "   Numpad0 & i    -   Idea\n"
    printf "   Numpad0 & a    -   Actions\n"
    printf "   Numpad0 & r    -   Reload\n"
    printf "   Numpad0 & h    -   Hotkey tutorial\n"
    printf "   Numpad0 & o    -   Outlook\n"
    printf "   Numpad0 & s    -   Services\n"
	goto end
goto end

:END