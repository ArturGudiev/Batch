@echo off
if "%1"=="" goto EMPTY
if "%1"=="launch" goto launch
if "%1"=="dir" goto dir
if "%1"=="ms" goto script
if "%1"=="sh" goto scripth
if "%1"=="script" goto script
if "%1"=="ss" goto ss_script
if "%1"=="ssh" goto ss_scripth
if "%1"=="load" goto load
if "%1"=="l" goto load
if "%1"=="s" goto ms
if "%1"=="ss" goto mss
if "%1"=="scriptedit" goto scriptedit
if "%1"=="se" goto scriptedit
if "%1"=="sse" goto sscriptedit
if "%1"=="cluster" goto cluster
goto end

:cluster
ch https://cloud.mongodb.com/v2/5c149efbcf09a20fa862bf47#clusters
goto end


:sscriptedit
code C:\Artur\University\SUBD\mongo\%2.txt
goto end

:scriptedit
code C:\Artur\University\SUBD\mongo\1.txt
goto end

REM mo ms 1
:ms                      
C:\tools\mongo\mongo.exe ds245347.mlab.com:45347/newdb -u user -p 1234567890MongoDb! --shell < C:\Artur\University\SUBD\mongo\1.txt 
goto end

:mss
    C:\tools\mongo\mongo.exe "mongodb+srv://cluster0-jryec.mongodb.net/test" --username user --password 1234567890MongoDb! --shell < C:\Artur\University\SUBD\mongo\%2.txt 
goto end

:load
cc load('C://Artur//University//SUBD//mongo//%1.js')
goto end


:ss_scripth
C:\tools\mongo\mongo.exe "mongodb+srv://cluster0-jryec.mongodb.net/test" --username user --password 1234567890MongoDb! C:\Artur\University\SUBD\mongo\%2.js --shell
goto end

:ss_script
C:\tools\mongo\mongo.exe "mongodb+srv://cluster0-jryec.mongodb.net/test" --username user --password 1234567890MongoDb! C:\Artur\University\SUBD\mongo\%2.js
goto end

:script
C:\tools\mongo\mongo.exe "mongodb+srv://cluster0-jryec.mongodb.net/test" --username user --password 1234567890MongoDb! C:\Artur\University\SUBD\mongo\script.js
goto end

:scripth
C:\tools\mongo\mongo.exe "mongodb+srv://cluster0-jryec.mongodb.net/test" --username user --password 1234567890MongoDb! C:\Artur\University\SUBD\mongo\script.js --shell
goto end

:dir
cd C:\Artur\University\SUBD\mongo
goto end

:launch
C:\tools\mongo\mongo.exe ds245347.mlab.com:45347/newdb -u user -p 1234567890MongoDb!
REM C:\tools\mongo\mongo.exe "mongodb+srv://cluster0-jryec.mongodb.net/test" --username user --password 1234567890MongoDb!
REM C:\tools\mongo\mongo.exe "mongodb+srv://cluster0-jryec.mongodb.net/test" --username user --password 1234567890MongoDb!
goto end

:EMPTY
C:\tools\mongo\mongo.exe "mongodb+srv://cluster0-jryec.mongodb.net/test" --username user --password 1234567890MongoDb!
goto end

:END
