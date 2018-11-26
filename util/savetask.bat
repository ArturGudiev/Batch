@echo off
if "%1"==""  (
	echo You need to specify task name
	goto end 
)
echo here
set var=%1
echo here1
move %PROG%\Batch\ctask.bat %PROG%\Batch\tasks\%var%.bat
echo here2
copy %PROG%\Batch\util\tasktemplate.bat %PROG%\Batch\ctask.bat


:END