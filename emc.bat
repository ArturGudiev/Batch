@echo off

if "%1"=="" goto EMPTY
if "%1"=="m" goto monitor
if "%1"=="monitor" goto monitor
goto end

:monitor
echo https://dell.service-now.com/esp/ --- emc legacy catalog --- desktop andemc laptops
goto end

:EMPTY

goto end

:END
