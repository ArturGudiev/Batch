@echo off

if "%1"=="tut" goto tutorial
if "%1"=="tutorial" goto tutorial
if "%1"=="new" goto tutorial
if "%1"=="hotkeys" goto hotkeys
if "%1"=="hk" goto hotkeys
if "%1"=="lab" goto lab
if "%1"=="icon" goto icon
if "%1"=="icon1" goto icon1
if "%1"=="tex" goto tex
if "%1"=="c" goto combined
if "%1"=="comb" goto combined
if "%1"=="ps" goto ps
if "%1"=="dir" goto dir
if "%1"=="copyus" goto copyusersection
if "%1"=="copyc" goto copycontroller
goto end

:copycontroller
more C:\Users\gudiea\source\repos\MobileDSL\Debugging\Controller.cs | clip
goto end

:copyusersection
more C:\Users\gudiea\source\repos\MobileDSL\Debugging\UserSection.cs | clip
goto end

:dir
cd C:\Users\gudiea\source\repos\MobileDSL
goto end

:ps
nav dsl & sa 444.pdf
goto end

:combined
sa C:\Artur\University\DSL\combinepdf.pdf
goto end

:tex
ch https://www.papeeria.com/p/2442f49b35f61a63a47c17d136683f1c#/wm+manager+and+GUI+primitives.tex
goto end

:icon1
cc resources\exampleconnectortoolbitmap.bmp
goto end

:icon
cc resources\exampleshapetoolbitmap.bmp
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
