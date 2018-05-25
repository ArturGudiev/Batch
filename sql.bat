@echo off

if "%1"=="" goto EMPTY
if "%1"=="gtd" goto gtd
goto end

:gtd
cc insert into public.gtd values (%2)
goto end

:EMPTY

goto end

:END
