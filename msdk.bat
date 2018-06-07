@echo off

if "%1"=="new" goto new
if "%1"=="e" goto exception
goto end

:exception
cc try{}catch(System.Exception e){}
goto end 

:new
	if "%2"=="class" goto new_class
	
	:NEW_CLASS
	echo . 
	echo 	1) Embedding relationship
	echo 	2) Shape
	echo 	3) Diagram Element Map
	echo 	4) New Element tool (Name, class, icon)
	goto end
goto end

:END