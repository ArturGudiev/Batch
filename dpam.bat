@echo off

if "%1"=="" goto EMPTY
if "%1"=="wiki" goto wiki
if "%1"=="dir" goto dir
if "%1"=="plural" goto plural
goto end

:plural
ch https://app.pluralsight.com/player?course=react-native-getting-started&author=hendrik-swanepoel&name=fb4b3582-e735-4fc7-aab7-be4d304feb37&clip=2&mode=live
goto end

:dir
cd C:\Programming\ReactNative\mobile-monitor
goto end

:wiki
ch https://confluence.cec.lab.emc.com:8443/display/DPA/DPA+Monitor+mobile+app
goto end

:EMPTY

goto end

:END
