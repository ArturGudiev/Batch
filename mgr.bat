@echo off

if "%1"=="go" goto go
if "%1"=="g" goto go
if "%1"=="task" goto task
if "%1"=="t" goto task
if "%1"=="discussion" goto discussion
if "%1"=="discussion" goto discussion
if "%1"=="d" goto discussion
if "%1"=="dir" goto dir
if "%1"=="home" goto home
if "%1"=="table" goto table
if "%1"=="tar" goto tar
if "%1"=="pres" goto pres

goto end

:pres
start C:\Artur\University\Managment\3\Upravlenie_izmeneniami_v2.pdf
goto end 

:raf
ch C:\Artur\University\Managment\2\2_raf.pdf
goto end

:tar
ch C:\Artur\University\Managment\3\tar.pdf
goto end

:mar
ch C:\Artur\University\Managment\2\2_mar.pdf
goto end

:table
ch https://docs.google.com/spreadsheets/d/1yqU9l0fSxS92gkDoTSenu3JQemYflIRAnU7LAoAJaoM/edit#gid=1759048971
goto end

:diag
ch https://realtimeboard.com/app/board/o9J_kyXpjLg=/
goto end

:home
ch https://vk.com/wall-170783355_29
goto end

:printothers
    echo. 
    echo        Elona raf
    echo        Shindarev shi
    echo        Valentin val 
    echo        Galaktionov gal
    echo        Tarasova tar 
goto end

:dir
cd C:\Artur\University\Managment
goto end

:discussion
ch https://vk.com/topic-170783355_39863620
goto end

:task
code C:\Artur\University\Managment\3\task.txt
goto end

:go
ch https://vk.com/club170783355
goto end

:END
