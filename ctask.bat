@echo off

if "%1"=="chart" goto chart
if "%1"=="column" goto column
if "%1"=="bullet" goto bullet
if "%1"=="switcher" goto switcher
if "%1"=="report" goto report
goto end

:report
n+ C:\Artur\Work\tasks\bullet\report.xml
goto end

:switcher
echo Server Configuration Changes
goto end

:bullet
echo 	Exposure Details & echo.	Unprotected Clients
goto end

:column
ch https://dpa-jira.lss.emc.com/browse/DPA-55403
goto end

:chart
ch https://www.highcharts.com/docs/chart-and-series-types/bullet-chart 
goto end

:END
