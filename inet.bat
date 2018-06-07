@echo off

if "%1"=="clarity" goto clarity
if "%1"=="cl" goto clarity
if "%1"=="europa" goto europa
if "%1"=="eu" goto europa
if "%1"=="euro" goto europa
if "%1"=="music" goto music
if "%1"=="subway" goto subway
if "%1"=="train1" goto train1
if "%1"=="tr1" goto train1
if "%1"=="train2" goto train2
if "%1"=="tr2" goto train2
if "%1"=="tt" goto timetable
if "%1"=="habr" goto habr
if "%1"=="bet" goto bethoven
if "%1"=="json" goto json
if "%1"=="t" goto temp
if "%1"=="color" goto color
if "%1"=="mvn" goto mvn
if "%1"=="git" goto git
if "%1"=="stack" goto stack
if "%1"=="p" goto ping
goto end

:ping
ping 8.8.8.8
goto end

:stack
ch stackoverflow.com
goto end

:git
ch github.com/ArturGudiev
goto end

:mvn
ch https://mvnrepository.com/search?q=%2
goto end

:color
set currentParameter=%2
set currentParameter=%currentParameter:~2,-1%
ch http://www.color-hex.com/color/%currentParameter%
goto end

:temp
echo in temp
links https://yandex.ru/search/?text=%%D0%%BF%%D0%%BE%%D0%%B3%%D0%%BE%%D0%%B4%%D0%%B0%%D1%%8F%%20%%D0%%B2%%20%%D1%%81%%D0%%BF%%D0%%B1^&from=os^&clid=1836588^&lr=2
goto end

:json
ch http://json.parser.online.fr/
goto end

:bethoven
ch http://beethoven.ru/
goto end

:habr
ch http://habrahabr.ru
goto end

:timetable
ch https://timetable.spbu.ru/MATH/StudentGroupEvents/Primary/13712
goto end

:TRAIN1
echo in train1
ch "https://www.tutu.ru/spb/rasp.php?st1=181&st2=2181"
goto end 

:TRAIN2
ch "https://www.tutu.ru/spb/rasp.php?st1=2181&st2=181"
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
