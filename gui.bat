@echo off

if "%1"=="" goto EMPTY
if "%1"=="ellie" goto ellie
if "%1"=="kal" goto kal
if "%1"=="metro" goto metro
goto end

:metro
Ch https://amdm.ru/akkordi/raznie_pesni/160768/metro_2033/
goto end

:kal
start C:\Artur\mine\guitar\Kalinin.pdf
goto end

:ellie
ch https://chordify.net/chords/ellies-song-through-the-valley-guitar-tab-the-last-of-us-part-ii-guitar-tab-alan-adair
goto end

:EMPTY

goto end

:END
