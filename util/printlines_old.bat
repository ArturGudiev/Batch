@echo OFF
echo %*
set n=1
if NOT "%2"=="" set n=%2
:: Get the number of lines in the file
set LINES=0
for /f "delims==" %%I in (%1) do (
    set /a LINES=LINES+1
)

:: Print the last 10 lines (suggestion to use more courtsey of dmityugov)
set /a LINES=LINES-n
echo %LINES%
more +%LINES% < %1