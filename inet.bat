@echo off

if "%1"=="clarity" goto clarity
if "%1"=="cl" goto clarity
if "%1"=="europa" goto europa
if "%1"=="eu" goto europa
if "%1"=="euro" goto europa
if "%1"=="music" goto music
if "%1"=="subway" goto subway
goto end

:subway
ch http://www.metro.spb.ru/map1/route.html
goto end

:EUROPA
echo in europa
ch http://www.europaplus.ru/
goto end
:clarity
ch https://vmware.github.io/clarity/documentation/v0.11/get-started
goto end

:MUSIC
echo go to yandex/music
ch yandex.ru/music
goto end

:END
