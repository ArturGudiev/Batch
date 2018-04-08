@echo off


if "%1"=="words" goto words
if "%1"=="interesting" goto intersting
if "%1"=="reasonings" goto reasonings
if "%1"=="r" goto reasonings

ch drive.google.com
goto end

:REASONINGS

goto end

:INTERESTING
ch https://docs.google.com/document/d/12sFAHRPZ03jkrlZ37NSnkD5Gu27sHMwVT16CmMMGttE/edit
goto end

:WORDS 
start chrome https://docs.google.com/document/d/11rz4_M95mQrTaA9gkBm2Kp2PrFOxBC6VcOl3SuqnD24/edit
goto end  
:END