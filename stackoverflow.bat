@echo off

if "%1"=="" goto EMPTY
if "%1"=="grid" goto grid
goto end

:grid
ch https://stackoverflow.com/questions/51303986/center-content-in-clarity-datagrid-cell
goto end

:EMPTY

goto end

:END
