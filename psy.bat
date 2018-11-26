@echo off

if "%1"=="" goto EMPTY
if "%1"=="doc" goto doc
if "%1"=="docdrive" goto docdrive
if "%1"=="dd" goto docdrive
if "%1"=="table" goto table
if "%1"=="proj" goto proj
goto end

:proj
ch https://docs.google.com/document/d/1wE5TpM42IGYZI3G9YPOU6axf6wUudFmo2W-7-Zmq4Wo/edit
goto end

:table
ch https://docs.google.com/spreadsheets/d/1yqU9l0fSxS92gkDoTSenu3JQemYflIRAnU7LAoAJaoM/edit#gid=0
goto end

:docdrive
ch https://docs.google.com/document/d/1dCuX46-_Wx032HxywbnSOS9RRiWUmmq67S-MKeFboVM/edit
goto end

:doc
sa C:\Artur\University\Psychology\Distant-Mag.pdf
goto end

:EMPTY

goto end

:END
