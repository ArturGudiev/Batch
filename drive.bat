@echo off


if "%1"=="words" goto words
if "%1"=="interesting" goto intersting
if "%1"=="reasonings" goto reasonings
if "%1"=="r" goto reasonings
if "%1"=="cal" goto calendar
if "%1"=="calendar" goto calendar
if "%1"=="" goto EMPTY
if "%1"=="t" goto touching
if "%1"=="to" goto touching
if "%1"=="touching" goto touching
goto end

:touching
ch https://docs.google.com/document/d/19O3CPJwQKBTnpPyxQwgtTi2UzIJWy0npgkqNXOAL78Y/edit
goto end

:EMPTY
ch drive.google.com
goto end 

:calendar
ch https://docs.google.com/spreadsheets/d/1GeUJUAjR0GmpXwaluEf1z926D6ll_hBRxjXsTx5K35Q/edit
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
