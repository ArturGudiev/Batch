@echo off

if "%1"=="main" goto main
if "%1"=="template" goto template
if "%1"=="te" goto template
if "%1"=="client" goto client
if "%1"=="cl" goto client
if "%1"=="cert" goto cert
if "%1"=="adv" goto adv
if "%1"=="EMPTY" goto empty
if "%1"=="er" goto errors
if "%1"=="sph" goto sph
if "%1"=="spv" goto spv
if "%1"=="cell" goto cell
if "%1"=="c" goto cell
goto end

:CELL 
cc new Cell{Content = %2},
goto end 

:SPH
cc new StackPanel{ Children = {}, Orientation = Orientation.Horizontal}
goto end 

:SPV
cc new StackPanel{ Children = {}, Orientation = Orientation.Vertical}
goto end 

:errors
echo don't use 1 element in 2 places
goto end

:EMPTY 

goto end

:adv
ch http://ubiqmobile.com/en/advancedprogramming.html
goto end

:CERTIFICATE
cc 90d0a03b-a780-4a03-b069-df1f2113e441
echo 90d0a03b-a780-4a03-b069-df1f2113e441
goto end

:CLIENT
ch http://ubiqmobile.cloudapp.net/Home/UserProfile
goto end 

:TEMPLATE
ch http://ubiqmobile.com/ru/%%D1%%80%%D0%%B0%%D0%%B7%%D1%%80%%D0%%B0%%D0%%B1%%D0%%BE%%D1%%82%%D1%%87%%D0%%B8%%D0%%BA%%D0%%B0%%D0%%BC/%%D0%%BF%%D0%%BE%%D0%%BF%%D1%%80%%D0%%BE%%D0%%B1%%D0%%BE%%D0%%B2%%D0%%B0%%D1%%82%%D1%%8C-ubiqmobile/%%D0%%BD%%D0%%B0%%D1%%87%%D0%%BD%%D0%%B8%%D1%%82%%D0%%B5-%%D1%%80%%D0%%B0%%D0%%B7%%D1%%80%%D0%%B0%%D0%%B1%%D0%%B0%%D1%%82%%D1%%8B%%D0%%B2%%D0%%B0%%D1%%82%%D1%%8C-%%D0%%BF%%D1%%80%%D0%%B8%%D0%%BB%%D0%%BE%%D0%%B6%%D0%%B5%%D0%%BD%%D0%%B8%%D1%%8F-ubiqmobile/%%D1%%81%%D0%%BE%%D0%%B7%%D0%%B4%%D0%%B0%%D1%%82%%D1%%8C-%%D0%%BF%%D1%%80%%D0%%B8%%D0%%BB%%D0%%BE%%D0%%B6%%D0%%B5%%D0%%BD%%D0%%B8%%D0%%B5-%%D0%%B8%%D0%%B7-%%D1%%88%%D0%%B0%%D0%%B1%%D0%%BB%%D0%%BE%%D0%%BD%%D0%%B0/
goto end

:main
ch http://ubiqmobile.com/
goto end

:END
