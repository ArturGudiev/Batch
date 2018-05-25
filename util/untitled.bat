@echo off 

set RESTVAR=
set first=%1
shift
:loop1
if "%1"=="" goto after_loop
set RESTVAR=%RESTVAR% %1
shift
goto loop1

:after_loop


java -cp C:\Programming\Java\untitled\out\artifacts\untitled_jar\untitled.jar %first% %RESTVAR%