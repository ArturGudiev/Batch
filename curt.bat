@echo off

if "%1"=="" goto EMPTY
if "%1"=="n" goto name
if "%1"=="name" goto name
if "%1"=="sub" goto subtasks
if "%1"=="s" goto subtasks
if "%1"=="h" goto history 
if "%1"=="history" goto history 


goto end

:EMPTY
o s curt
goto end

:SUBTASKS
@call curt n

echo 	  5) Bug with cancel default selection
echo 			++ go to the method when cancel
echo 			++ check selectedHomeGroup after ok
echo 			-- find variable which is for selected
echi 				select configuration
goto end 

:NAME
echo. 	
echo 				Perform OK button
echo. 
goto end 

:HISTORY
echo 	+ 1) Enable ok only by when not condition = second checkbox and not selected item
echo			+ enable and disable by constant and variable
echo 			+ get selected items from tree 
echo		    		++ console.log selected items from tree
echo		    		++ find selected items
echo. 
echo 	+ 2) Close window after ok pushed 
echo. 
echo 	+ 3) Disable selection after cancel is pushed 
echo 		+ a) see it in home-group-form.component.ts
echo 		? b) throw event cancelScopeEvent
echo		+ c) try first cancelScopeEvent 
echo. 
echo 	+ 4) Save selection after ok is pushed
echo 	 5) c
goto end 

:END