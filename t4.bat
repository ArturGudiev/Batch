@echo off

if "%1"=="" goto EMPTY
if "%1"=="video" goto video
if "%1"=="vid" goto video
if "%1"=="v" goto value
if "%1"=="b" goto button
goto end

:button
cc Pressed += (x,y) =^> ^{ };
goto end

:value
cc ^<^#=%2^#^>
goto end

:video
ch https://youtu.be/8OZ12Lp-Jjg
goto end

:EMPTY

goto end

:END
