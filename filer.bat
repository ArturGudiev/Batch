 
 @echo off

if "%1"=="l" goto licenses 
if "%1"=="licenses" goto licenses 
if "%1"=="" goto empty 
goto end 

:EMPTY 
    REM start \\dpa-filer.datadomain.com\CIBuilds\dpa
    start totalcmder /o  /L=\\dpa-filer.datadomain.com /R=C:\Users\gudiea\Desktop\installers\
goto end 

:LICENSES
    start \\10.98.60.38\qa\Licenses\
goto end 

:END 