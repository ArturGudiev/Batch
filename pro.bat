@echo off

if "%1"=="ui" goto ui

if "%1"=="63" goto p63
if "%1"=="64" goto p64
if "%1"=="65" goto p65
if "%1"=="trunk" goto trunk
if "%1"=="untitled" goto untitled
if "%1"=="stat" goto stat

if "%1"=="chair" goto chair
if "%1"=="heroes" goto heroes
if "%1"=="images" goto images
if "%1"=="sbt" goto sbt
if "%1"=="search" goto search
if "%1"=="ubiq1" goto ubiq1
if "%1"=="ubiqg" goto ubiqgenerate
if "%1"=="schedule" goto schedule
if "%1"=="sc" goto schedule
if "%1"=="chat" goto chat
if "%1"=="cont" goto controller
if "%1"=="vol" goto volunteer
if "%1"=="dsl" goto mobiledsl
if "%1"=="ui" goto ui
if "%1"=="181" goto v181
if "%1"=="here" goto here
if "%1"=="todo" goto todo
if "%1"=="sports" goto sports
if "%1"=="at" goto test
if "%1"=="autotest" goto test
if "%1"=="uitest" goto test
if "%1"=="test" goto test
if "%1"=="flexui" goto flexui
if "%1"=="f" goto flexui
goto end

:flexui
start idea.lnk C:\Src\EMC\DPA\flexui
goto end

:test
	start idea.lnk C:\Src\EMC\DPA\html-ui-automation-tests
goto end

:sports
start idea.lnk C:\Programming\Angular\SportsStore\
goto end

:todo
start idea.lnk C:\Programming\Angular\todo"
goto end

:here
start idea.lnk %cd%
goto end

:v181
start idea.lnk C:\Src\EMC\DPA\18.1.0\
goto end 

:ui
REM start idea.lnk C:\Src\EMC\DPA\ui\html-ui\
start webstorm.lnk C:\Src\EMC\DPA\ui\html-ui\angular-app
goto end

:mobiledsl
if "%2"=="r" (
		start rider C:\Users\gudiea\source\repos\MobileDSL\MobileDSL.sln
		goto end 
	)
start vs17.lnk C:\Users\gudiea\source\repos\MobileDSL\MobileDSL.sln
goto end

:volunteer
	if "%2"=="r" (
		start rider C:\Programming\C#\Volunteer\Volunteer.sln
		goto end 
	)
	start vs12.lnk C:\Programming\C#\Volunteer\Volunteer.sln
:goto end

:controller
start vs12.lnk "c:\Users\gudiea\Documents\Visual Studio 2012\Projects\Service App Template4\Service App Template4.sln"
goto end 

:chat
start vs12.lnk "C:\Programming\C#\Test Chat App Sample1\Test Chat App Sample1.sln"
goto end

:schedule
if "%2"=="r" (
	start rider C:\Programming\C#\Schedule\Schedule.sln
	goto end 
)
start vs12.lnk C:\Programming\C#\Schedule\Schedule.sln
goto end

:ubiqgenerate
start vs12.lnk "C:\Programming\C#\Empty Template6\Empty Template6.sln"
goto end

:ubiq1
start vs12.lnk "C:\Programming\C#\Empty Template2\Empty Template2.sln"
goto end

:search
start ideac.lnk C:\Programming\Scala\infosearch"
goto end

:SBT
start ideac.lnk C:\Users\gudiea\IdeaProjects\Sbt
goto end

:IMAGES
start pycharm.lnk C:\Programming\Python\images
goto end

:STAT
start idea.lnk C:\Programming\R\Stat
goto end

:HEROES
start idea.lnk C:\Programming\Angular\angular-tour-of-heroes
goto end

:CHAIR
start idea.lnk C:\Programming\Web\math-chair
goto end

:HTML 
start https://www.w3schools.com/html/html_basic.asp
start cmd /K "cd C:\Programming\HTML"
goto end


:UNTITLED
start idea.lnk C:\Programming\Java\untitled\
goto end


:UI
start idea.lnk C:\Src\EMC\DPA\new2\dpa-ui-html\angular-app
goto end

:TRUNK
start idea.lnk C:\Src\EMC\DPA\trunk\
goto end

:END
