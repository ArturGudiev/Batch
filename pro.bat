@echo off

if "%1"=="ui" goto ui

if "%1"=="63" goto p63
if "%1"=="64" goto p64
if "%1"=="65" goto p65
if "%1"=="trunk" goto trunk
if "%1"=="untitled" goto untitled
if "%1"=="stat" goto stat

if "%1"=="chair" goto chair
if "%1"=="heroes" goto heroes
if "%1"=="images" goto images
goto end

:IMAGES
start pycharm.lnk C:\Programming\Python\images
goto end

:STAT
start idea.lnk C:\Programming\R\Stat
goto end

:HEROES
start idea.lnk C:\Programming\Web\angular-tour-of-heroes
goto end

:CHAIR
start idea.lnk C:\Programming\Web\math-chair
goto end

:HTML 
start https://www.w3schools.com/html/html_basic.asp
start cmd /K "cd C:\Programming\HTML"
goto end


:UNTITLED
start idea.lnk C:\Programming\Java\untitled\
goto end


:UI
start idea.lnk C:\Src\EMC\DPA\new2\dpa-ui-html
goto end

:P63
start idea.lnk C:\Src\EMC\DPA\6.3.0\
goto end

:P64
start idea.lnk C:\Src\EMC\DPA\6.4.0\
goto end

:P65
start idea.lnk C:\Src\EMC\DPA\6.5.0\
goto end

:TRUNK
start idea.lnk C:\Src\EMC\DPA\trunk\
goto end




:END