@echo off

if "%1"=="welcome" goto welcome
if "%1"=="portal" goto portal
if "%1"=="account" goto account
if "%1"=="subscriptions" goto subscriptions
if "%1"=="sub" goto subscriptions
if "%1"=="tut" goto tut
if "%1"=="net" goto net
if "%1"=="web" goto web
goto end

:WEB
ch https://docs.microsoft.com/en-us/azure/app-service/
goto end

:NET
ch https://docs.microsoft.com/en-us/azure/app-service/app-service-web-get-started-dotnet
goto end

:TUT
ch https://docs.microsoft.com/en-us/azure/
goto end

:Subscriptions
ch https://account.windowsazure.com/Subscriptions
goto end

:account
ch https://account.windowsazure.com/Subscriptions
goto end

:welcome
ch 	https://azure.microsoft.com/en-us/get-started/welcome-to-azure/?subscriptionId=a90676d7-a4f0-4b62-a5cf-d7203eb5516f
goto end

:portal
ch https://portal.azure.com/#@studentspburu.onmicrosoft.com/dashboard/private/be29f330-1b12-410a-9583-a09fcb92a010
goto end

:END