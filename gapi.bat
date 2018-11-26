@echo off

if "%1"=="" goto EMPTY
if "%1"=="repos" goto repos
goto end

:repos
ch  https://api.github.com/users/ArturGudiev/repos
goto end

:EMPTY

goto end

:END
