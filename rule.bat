@echo off

if "%1"=="" goto EMPTY
if "%1"=="copybackup" goto copybackup
if "%1"=="cback" goto copybackup
if "%1"=="cback2" goto copybackup2
goto end

:copybackup
    newman run %COLLECT%\COPY_BACKUP_FAILED.json --insecure --silent
goto end

:copybackup2
    newman run %COLLECT%\DEFAULT_COPY_BACKUP_FAILED.json --insecure --silent
goto end

:EMPTY

goto end

:END
