@echo off

if "%1"=="" goto EMPTY
if "%1"=="ieee" goto ieee
if "%1"=="order" goto order
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
