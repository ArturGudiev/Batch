@echo off

if "%1"=="" goto EMPTY
if "%1"=="slack" goto slack
if "%1"=="portal" goto portal
if "%1"=="id" goto id
if "%1"=="site" goto site
goto end

:site
ch https://sites.google.com/site/mediaservicescentre2018/home
goto end

:id
echo 954742 & cc 954742
goto end

:portal
ch https://ems.fifa.com/volunteer/Login/RUSSIA/
goto end

:slack
ch https://mediaservicescentre.slack.com/messages/DADDTPZE1/
goto end

:EMPTY

goto end

:END
