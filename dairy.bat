@echo off

set hh=%TIME:~0,2%
set mm=%TIME:~3,2%

if "%1"=="l" goto blank
if "%1"=="save" goto save
echo %hh%:%mm% %*>> C:\Artur\mine\dairy.txt
goto end

:BLANK
type C:\Artur\mine\dairy.txt
goto end 


:SAVE
:: yesterdays date
@echo off
cd C:\Artur\mine
set day=0
echo >"%temp%\%~n0.vbs" s=DateAdd("d",%day%,now) : d=weekday(s)
echo>>"%temp%\%~n0.vbs" WScript.Echo year(s)^& right(100+month(s),2)^& right(100+day(s),2)
for /f %%a in ('cscript /nologo "%temp%\%~n0.vbs"') do set "result=%%a"
del "%temp%\%~n0.vbs"
set "YYYY=%result:~0,4%"
set "MM=%result:~4,2%"
set "DD=%result:~6,2%"
set "data=%dd%-%mm%"
set "name=Dairy%data%.txt"

echo %name% has added to C:\Artur\mine\dairies

ren dairy.txt %name%
move %name% dairies
echo. 2> dairy.txt
goto end 
:END