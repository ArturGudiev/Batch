@echo off

if "%1"=="uidev" goto uidev
if "%1"=="ui" goto ui
if "%1"=="chair" goto chair
if "%1"=="stat" goto stat

goto end

:STAT
@call stat stepic 
@call start RStudio
@call pro stat
goto end

:CHAIR
start pro chair
start cmd /K "o chair && ng serve --open"
goto end



:UIDEV
start pro ui
start cmd /K "bb && dpa app start && exit"
start cmd /K "o uid && npm start"
start chrome https://localhost:3030/
goto end


:UI
start cmd /K "bb && dpa app start && exit"
start cmd /K "o uid && npm start"
start chrome https://localhost:3030/
goto end

:END