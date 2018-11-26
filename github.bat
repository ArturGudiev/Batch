@echo off

if "%1"=="" goto repository
if "%1"=="rep" goto repository
if "%1"=="schedule" goto schedule
if "%1"=="sc" goto schedule
if "%1"=="vol" goto volunteer
if "%1"=="s" goto infosearch
if "%1"=="search" goto infosearch
if "%1"=="client" goto clientid
if "%1"=="cid" goto clientid
if "%1"=="id" goto clientid
if "%1"=="secret" goto secret
if "%1"=="s" goto secret
if "%1"=="st" goto secret
if "%1"=="token" goto token
if "%1"=="t" goto token
if "%1"=="authreq" goto authreq
goto end

:authreq
copyfile C:\Artur\University\Search\request.txt
goto end

:token
cc 5fc474d63a2f3ad99bbcfd979e1820d84bcfff32
goto end

:secret
cc 70567223ba5b84767c51df0d5bbc092718f6b582
goto end

:clientid
cc 624a3dce5fdb7f9c8f7c
goto end

:infosearch
ch https://github.com/ArturGudiev/infosearch
goto end

:volunteer
ch https://github.com/ArturGudiev/VolunteerPortal
goto end

:schedule
ch https://github.com/ArturGudiev/TrainSchedule/blob/master/Application0/Controller.cs
goto end

:repository
ch https://github.com/ArturGudiev?tab=repositories
goto end

:EMPTY

goto end

:END
