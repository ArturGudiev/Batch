@echo off

if "%1"=="" goto EMPTY
if "%1"=="ieee" goto ieee
if "%1"=="order" goto order
if "%1"=="track" goto track
if "%1"=="tr" goto track
if "%1"=="tr2" goto track2
if "%1"=="order" goto order
goto end

:order
    start C:\Users\gudiea\Desktop\Screen\ScreenShots\order.png
    
goto end 

:track
ch https://www.pochta.ru/tracking#EP043826345RU
goto end 

:track2
ch https://www.pochta.ru/tracking#ED007446000RU
goto end 

:order
ch https://lk.wildberries.ru/
goto end

:ieee
ch https://www.ieee.org/conferences/publishing/templates.html
goto end

:EMPTY

goto end

:END
