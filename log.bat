@echo off

if "%1"=="agent" goto agent_log
if "%1"=="a" goto agent_log
goto end

:AGENT_LOG
pl "C:\Program Files\EMC\DPA\agent\logs\dpaagent.log" %2
goto end

:END