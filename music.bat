@echo off

if "%1"=="" goto EMPTY
if "%1"=="inlove" goto inlove
if "%1"=="wantyou" goto wantyou
if "%1"=="wy" goto wantyou
if "%1"=="el" goto ellie
if "%1"=="ellie" goto ellie
if "%1"=="el" goto ellie
if "%1"=="ellie" goto ellie
if "%1"=="sana" goto sanava
if "%1"=="sa" goto sanava
if "%1"=="ce" goto central
if "%1"=="central" goto central
goto end

:central
start C:\Artur\Music\central.mp3
goto end

:sanava
start C:\Artur\Music\miyagi-endshpil_-_sanavabich.mp3
goto end

:ellie
start C:\Artur\Music\"Ellies Song (Through the Valley) - The Last Of Us Part II.mp3"
goto end


:wantyou
start C:\Artur\Music\"Want you.mp3"
goto end

:inlove
start C:\Artur\Music\miyagi-endshpil-feat-kadi_-_in-love.mp3
goto end

:EMPTY

goto end

:END
