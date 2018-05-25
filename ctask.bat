@echo off

if "%1"=="highcharts" goto highchartscharts
if "%1"=="hc" goto highchartscharts
if "%1"=="column" goto column
if "%1"=="examplereport" goto examplereport
if "%1"=="er" goto examplereport
if "%1"=="switcher" goto switcher
if "%1"=="report" goto report
if "%1"=="l" goto log
if "%1"=="row" goto rowdata
if "%1"=="cl" goto clip
if "%1"=="cl2" goto clip2
if "%1"=="graph" goto graph
if "%1"=="g" goto graph
if "%1"=="patch" goto patch
if "%1"=="api" goto api
if "%1"=="cs" goto cs
if "%1"=="gr" goto wergraphic
if "%1"=="fl" goto fl
if "%1"=="dir" goto dir
if "%1"=="fl2" goto fl2
if "%1"=="unp" goto unprotected
if "%1"=="all" goto all
goto end

:all
n+ C:\Artur\Work\tasks\bullet\AllClients.json
goto end

:unprotected
n+ C:\Artur\Work\tasks\bullet\Unprotected.json
goto end

:fl2
C:\Artur\Work\tasks\bullet\fl2.png
goto end

:dir
cd C:\Artur\Work\tasks\bullet"
goto end

:fl
C:\Artur\Work\tasks\bullet\fl.png
goto end

:wergraphic
ch http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/samples/highcharts/demo/bullet-graph/
goto end

:cs
n+ C:\Artur\Work\tasks\bullet\ClientSeries.xml
goto end

:api
ch https://api.highcharts.com/highcharts/series.bullet
goto end

:patch
n+ C:\Users\gudiea\Desktop\temp\PATCH.patch
goto end

:graph
ch C:\Artur\Work\tasks\bullet\HTML\Bullet.html
goto end

:clip2
type C:\Programming\JS\report2.js | clip
goto end

:clip
type C:\Programming\JS\report.js | clip
goto end

:rowdata
start C:\Users\gudiea\Desktop\Screen\ScreenShots\bullet.png
goto end

:log
set hh=%TIME:~0,2%
set mm=%TIME:~3,2%

C:\Artur\Work\tasks\ctask.txt
goto end

:report
n+ C:\Artur\Work\tasks\bullet\report.xml
goto end

:switcher
echo Server Configuration Changes
goto end

:examplereport
echo 	Unprotected Clients
goto end

:column
ch https://dpa-jira.lss.emc.com/browse/DPA-55403
goto end

:highchartscharts
ch https://www.highcharts.com/docs/chart-and-series-types/bullet-chart 
goto end

:END
