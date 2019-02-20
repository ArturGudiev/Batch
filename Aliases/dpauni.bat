@echo off

if "%1"=="s" goto silent 
if "%1"=="st" goto silent_track 

start C:\"Program Files"\EMC\DPA\_uninstall\Uninstall_Data_Protection_Advisor.exe
goto end 

:silent 
start C:\"Program Files"\EMC\DPA\_uninstall\Uninstall_Data_Protection_Advisor.exe -i silent
goto end 

:silent_track
start C:\"Program Files"\EMC\DPA\_uninstall\Uninstall_Data_Protection_Advisor.exe -i silent
bbsize i 
goto end 
:END 