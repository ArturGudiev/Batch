@echo off

if "%1"=="l" goto licenses 
if "%1"=="licenses" goto licenses 
if "%1"=="" goto empty 
goto end 

:EMPTY 
start \\dpa-filer.datadomain.com\CIBuilds\dpa
goto end 

:LICENSES
start \\10.98.60.38\qa\Licenses\
goto end 

:END 