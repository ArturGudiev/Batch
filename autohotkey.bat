@echo off

if "%1"=="" goto EMPTY
if "%1"=="message" goto message
if "%1"=="keys" goto keys
if "%1"=="l" goto login
if "%1"=="login" goto login
if "%1"=="lf" goto loginflex
if "%1"=="lofinflex" goto loginflex
if "%1"=="f" goto focus
if "%1"=="focus" goto focus
goto end

:focus
start focus_idea.ahk
goto end

:loginflex
start loginflex.ahk
goto end

:login
start login.ahk
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
