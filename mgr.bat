@echo off

if "%1"=="go" goto go
if "%1"=="g" goto go
if "%1"=="task" goto task
if "%1"=="t" goto task
if "%1"=="discussion" goto discussion
if "%1"=="discussion" goto discussion
if "%1"=="d" goto discussion
if "%1"=="dir" goto dir
if "%1"=="others" goto others
if "%1"=="shi" goto shindarev
if "%1"=="raf" goto raf
if "%1"=="raf1" goto raf1
if "%1"=="raf2" goto raf2
if "%1"=="gal" goto gal
if "%1"=="val" goto val
if "%1"=="tar" goto tar
if "%1"=="tar1" goto tar1
if "%1"=="tar2" goto tar2
if "%1"=="po" goto printothers
if "%1"=="home" goto home
if "%1"=="diag" goto diag
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

:tar2
ch https://vk.com/doc29046511_493135221?hash=a7f35f56cb9815132a&dl=e04f99aec87b766140
goto end

:tar1
ch https://vk.com/doc29046511_493135211?hash=3976079b264eab67a3&dl=a8330d37dd6a624e29
goto end

:tar
ch https://vk.com/doc29046511_493135184?hash=3c0f1c648e30dc3212&dl=18fe500cdc2430337e
goto end

:val
ch https://vk.com/doc37620214_491983437?hash=e720d169b347f70d96&dl=9e07c773318c5185fe
goto end

:gal
ch https://vk.com/doc19197026_492402714?hash=8cca5c9535399b4caa&dl=5de58b31489cd3b3ba
goto end

:raf2
ch https://vk.com/doc12759910_492530792?hash=391256c2037c848eec&dl=faa6504394cc1bcde1
goto end

:raf1
ch https://vk.com/doc12759910_492530785?hash=263630ea02b18669b1&dl=035a95d42c5fdc323c
goto end

:raf
start C:\Artur\University\Managment\others\raf.pdf
goto end

:shindarev
ch "https://vk.com/doc6408999_491584111?hash=497d7de3976241404a&dl=ff4a8c4e870d91ed56"
goto end

:others
cd C:\Artur\University\Managment\others
goto end

:dir
cd C:\Artur\University\Managment
goto end

:discussion
ch https://vk.com/topic-170783355_39831712
goto end

:task
start C:\Artur\University\Managment/task.pdf
goto end

:go
ch https://vk.com/club170783355
goto end

:END
