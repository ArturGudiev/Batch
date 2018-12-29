@echo off 
set par=
set fist=
set last=
if [%1]==[] goto end 
set par=%1
set first=%par:~-1%
set last=%par:~0,1%
if "%first:"=""%" == """" IF "%last:"=""%" == """" (
    set par2=%par:~1,-1%
    echo %par:~1,-1%
    goto end 
)
echo %par%

:END
