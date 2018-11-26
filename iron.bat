@echo off

if "%1"=="news" goto news
if "%1"=="n" goto news
if "%1"=="tv" goto tv
if "%1"=="self" goto self


:TV
start chrome https://www.youtube.com/channel/UCYkQwqgSyQbaiDJSqg4CvOA/videos
if "%1"=="k9" goto k9
goto end

:k9
start C:\Artur\Books\School\Iron\9.djvu
goto end

:NEWS
start chrome https://www.youtube.com/results?search_query=%%D0%%B2%%D0%%B5%%D1%%81%%D1%%82%%D0%%B8+%%D0%%B8%%D1%%80%%D1%%8B%%D1%%81%%D1%%82%%D0%%BE%%D0%%BD
goto end 

:SELF
SET var=%2
IF /I %2 LEQ 9 ( 
	set var=0%2
) ELSE (
 set var=%2
 )
echo %var%
echo http://www.allingvo.ru/LANGUAGE/Self-taught/lesson_%var%.htm
start chrome "http://www.allingvo.ru/LANGUAGE/Self-taught/lesson_%var%.htm"
goto end
:END
