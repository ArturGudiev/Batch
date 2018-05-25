@echo off

if "%1"=="welcome" goto welcome
if "%1"=="portal" goto portal
if "%1"=="account" goto account
if "%1"=="subscriptions" goto subscriptions
if "%1"=="sub" goto subscriptions
if "%1"=="tut" goto tut
if "%1"=="net" goto net
if "%1"=="web" goto web
if "%1"=="sec" goto second
if "%1"=="rg" goto rg
if "%1"=="stathelper" goto stathelper
if "%1"=="db" goto db
if "%1"=="r" goto run
if "%1"=="f" goto f
if "%1"=="db2" goto db2
if "%1"=="task" goto task
if "%1"=="web" goto web
if "%1"=="m" goto monitor
goto end

:monitor
ch https://portal.azure.com/#blade/Microsoft_Azure_Monitoring/AzureMonitoringBrowseBlade/overview
goto end

:web
java -cp C:\Programming\Java\untitled\out\artifacts\untitled_jar\untitled.jar azure.Azure unid
goto end

:task
n+ C:\Artur\University\Azure\last.txt
goto end

:db2
ch https://portal.azure.com/#@arturgudiev93gmail.onmicrosoft.com/resource/subscriptions/ca64244b-e3a0-4b88-9ab8-05d66960fd30/resourceGroups/StatisticsGroup/providers/Microsoft.Sql/servers/statisticsserver/databases/mySampleDatabase/queryEditor
goto end

:f
ch https://portal.azure.com/#@arturgudiev93gmail.onmicrosoft.com/resource/subscriptions/ca64244b-e3a0-4b88-9ab8-05d66960fd30/resourceGroups/StatisticsGroup/overview
goto end

:run
start microsoft-edge:https://stathelper.azurewebsites.net/api/HttpTriggerCSharp1?code=yn7OPFSU/qFq4GLj7Vj0YLXsq7aipJ8z9cYGoEjUWaaRwaTuyXX22g==
goto end

:db
ch https://portal.azure.com/#@arturgudiev93gmail.onmicrosoft.com/resource/subscriptions/ca64244b-e3a0-4b88-9ab8-05d66960fd30/resourceGroups/StatisticsGroup/providers/Microsoft.Sql/servers/statisticsserver/databases/Statistics/queryEditor
goto end

:stathelper
ch https://portal.azure.com/#@arturgudiev93gmail.onmicrosoft.com/resource/subscriptions/ca64244b-e3a0-4b88-9ab8-05d66960fd30/resourceGroups/StatisticsGroup/overview
goto end

:rg
ch https://portal.azure.com/#@arturgudiev93gmail.onmicrosoft.com/resource/subscriptions/ca64244b-e3a0-4b88-9ab8-05d66960fd30/resourceGroups/StatisticsGroup/overview
goto end

:second
ch http://mysecondazurewebapp20180410022731.azurewebsites.net/
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
ch https://portal.azure.com/
goto end

:END
