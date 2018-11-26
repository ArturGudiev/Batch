@echo off

if "%1"=="" goto EMPTY
goto end

:EMPTY
ch https://app.yodiz.com/plan/pages/board.vz?cid=41218#/app
goto end

:END