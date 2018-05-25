@echo off

if "%1"=="reg" goto regexp
if "%1"=="zink" goto zink
if "%1"=="larson" goto larson
if "%1"=="scala" goto scala
if "%1"=="vim" goto vim
goto end

:vim
sa C:\Artur\Books\Vim.pdf
goto end

:scala
sa C:\Artur\Books\Scala.pdf
goto end

:larson
sa C:\Artur\University\Pictures\Larson.pdf
goto end

:zink
sa C:\Artur\Books\zink.pdf
goto end

:regexp
sa C:\Artur\Books\RegExp.pdf
goto end

:END
