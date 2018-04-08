@echo off

if "%1"=="reg" goto regexp
if "%1"=="zink" goto zink
goto end

:zink
sa C:\Artur\Books\zink.pdf
goto end

:regexp
sa C:\Artur\Books\RegExp.pdf
goto end

:END
