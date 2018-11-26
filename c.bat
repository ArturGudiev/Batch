@echo off
set filepath=C:\Artur\Work\tasks\ctask.txt
set hh=%TIME:~0,2%
set mm=%TIME:~3,2%
set ss=%TIME:~6,2%

if "%1"=="l" goto blank
if "%1"=="ll" (c l 10)
if "%1"=="save" goto save
echo %hh%:%mm%:%ss% "%*">> %filepath%
goto end

:BLANK
if NOT "%2"=="" (
pl %filepath% %2
goto endlast
)
type %filepath%
goto endlast 


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
set "data=%mm%-%dd%"
set "name=%data%.txt"

@call copy C:\Artur\Work\tasks\ctask.txt C:\Artur\mine\dairies\%name%
@call echo C:\Artur\Work\tasks\ctask.txt C:\Artur\mine\dairies\%name%
@call d C:\Artur\Work\tasks\ctask.txt
 
echo. C:\Artur\Work\tasks\ctask.txt
goto endlast 

:END
cls

:ENDLAST