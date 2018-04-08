@echo off

if "%1"=="tut" goto tutorial
if "%1"=="tutorial" goto tutorial
if "%1"=="new" goto tutorial
if "%1"=="hotkeys" goto hotkeys
if "%1"=="hk" goto hotkeys
if "%1"=="lab" goto lab
goto end

:lab
ch https://code.msdn.microsoft.com/Visualization-and-Modeling-313535db#content
goto end

:tutorial
ch https://docs.microsoft.com/en-us/visualstudio/modeling/embedding-a-diagram-in-a-windows-form
goto end

:hotkeys
	echo 	Cntrl+Up 	- Move class up
	echo 	Cntrl+Down  - Move class down 
goto end


:END