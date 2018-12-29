if "%1"=="export" goto export
goto end

:export
cc docker export -o /C/Programming/Docker/a.tar
goto end
