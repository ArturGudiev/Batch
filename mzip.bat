@echo off

if "%1"=="" goto EMPTY
if "%1"=="targz" goto targz
goto end

:targz
    set archivename=%2
    set name_tar=%archivename:~0,-3%
    set name=%archivename:~0,-7%
    echo %name_tar%
    echo %name%
    @call 7z e %archivename%  
    @call 7z x %name_tar% -o%3
goto end

:EMPTY

goto end

:END
