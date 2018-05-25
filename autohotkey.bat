@echo off

if "%1"=="" goto EMPTY
if "%1"=="message" goto message
if "%1"=="keys" goto keys
goto end

:keys
ch https://autohotkey.com/docs/KeyList.htm
goto end

:message
echo MsgBox, Hello
cc MsgBox, Hello
goto end

:EMPTY

goto end

:END
