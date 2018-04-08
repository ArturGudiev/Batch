@echo off

if "%1"=="site" goto site
if "%1"=="chair" goto chair 
if "%1"=="trello" goto trello
goto end

:TRELLO
REM https://trello.com/b/fvS9ancA/%D0%BA%D0%B0%D1%84%D0%B5%D0%B4%D1%80%D0%B0-%D0%BC%D0%B0%D1%82%D0%B5%D0%BC%D0%B0%D1%82%D0%B8%D0%BA%D0%B8
ch https://trello.com/b/fvS9ancA/%%D0%%BA%%D0%%B0%%D1%%84%%D0%%B5%%D0%%B4%%D1%%80%%D0%%B0-%%D0%%BC%%D0%%B0%%D1%%82%%D0%%B5%%D0%%BC%%D0%%B0%%D1%%82%%D0%%B8%%D0%%BA%%D0%%B8
goto end

:CHAIR
cd C:\Programming\Web\math-chair\
goto end

:SITE
start chrome https://sites.google.com/site/school47math/
goto end

:END