@echo off
if "%1"=="m" goto MORE
start C:\"Program Files"\EMC\DPA\agent\logs\dpaagent.log
goto END
:MORE
more C:\"Program Files"\EMC\DPA\agent\logs\dpaagent.log
:END