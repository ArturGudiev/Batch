@echo off

if "%1"=="cloud" goto cloud
if "%1"=="mace" goto mace
if "%1"=="bb" goto blackboard
if "%1"=="Azure" goto azure
if "%1"=="zink" goto zink
if "%1"=="imagine" goto imagine
if "%1"=="im" goto imagine
if "%1"=="tt" goto timetable
goto end

:timetable
ch https://timetable.spbu.ru/MATH/StudentGroupEvents/Primary/13712
goto end

:IMAGINE
ch https://e5.onthehub.com/WebStore/Welcome.aspx?ws=20794e6d-8f09-e111-a703-f04da23e67f6
goto end

:AZURE
ch https://docs.microsoft.com/ru-ru/azure/#pivot=get-started&panel=get-started1
goto end

:ZINK
sa C:\Artur\University\Pictures\Zink.pdf
goto end 

:CLOUD
start C:\Artur\University\Azure\Cloud.docx
goto end

:BLACKBOARD
cc ju9zi9Ej
goto end

:MACE
sa C:\Artur\University\Multiagent\MACE.pdf
goto end

:END
