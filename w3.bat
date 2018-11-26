@echo off

if "%1"=="" goto EMPTY
if "%1"=="css" goto css
goto end

:css
echo go to css
ch https://www.w3schools.com/css/css_font.asp
goto end

:EMPTY

goto end

:END
