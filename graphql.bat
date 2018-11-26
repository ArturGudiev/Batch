@echo off

if "%1"=="" goto EMPTY
if "%1"=="tut" goto tut
if "%1"=="forum" goto forum
goto end

:forum
ch https://platform.github.community/u/ArturGudiev/activity/bookmarks
goto end

:tut
ch https://graphql.org/learn/queries/
goto end

:EMPTY

goto end

:END
