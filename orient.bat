@echo off

if "%1"=="" goto EMPTY
if "%1"=="server" goto server
if "%1"=="lh" goto lh
if "%1"=="dir" goto dir
if "%1"=="se" goto scriptedit
if "%1"=="scriptedit" goto scriptedit
if "%1"=="console" goto console
if "%1"=="loadscript" goto loadscript
if "%1"=="ls" goto loadscript
if "%1"=="conn" goto conn
if "%1"=="start" goto start
if "%1"=="drop" goto drop
if "%1"=="dr" goto drop
goto end

:drop
cc drop class WorksAt unsafe; drop class Person unsafe;drop class Company unsafe;

goto end

:CONN
    cc CONNECT remote:localhost/demodb root 1234
   
goto end 

:start
    @call start C:\tools\orientdb-3.0.12\bin\server.bat
    timeout 3 
    @call C:\tools\orientdb-3.0.12\bin\console.bat
    @call cc CONNECT remote:localhost/demodb root 1234
    @call start cmd
    REM cc load script C:\Artur\University\SUBD\OrientDB\script.txt
goto end

:loadscript
cc load script C:\Artur\University\SUBD\OrientDB\script.txt
goto end
REM load script C:\Artur\University\SUBD\OrientDB\script.txt
REN CONNECT remote:localhost/demodb root 1234

:console
C:\tools\orientdb-3.0.12\bin\console.bat
goto end

:scriptedit
code C:\Artur\University\SUBD\OrientDB\script.txt
goto end

:dir
cd C:\Artur\University\SUBD\OrientDB
goto end

:lh
ch  http://localhost:2480
goto end

:server
start C:\tools\orientdb-3.0.12\bin\server.bat
goto end

:EMPTY

goto end

:END
