 @echo off
 
if "%1"=="svc" goto svc 
if "%1"=="agent" goto agent 
if "%1"=="a" goto agent 

java -cp C:\Programming\Java\untitled\out\artifacts\untitled_jar\untitled.jar utilities.FolderSize %*
goto end

:SVC
java -cp C:\Programming\Java\untitled\out\artifacts\untitled_jar\untitled.jar utilities.GetFolderSize "C:\Program Files\EMC\DPA\services" %2
goto end 


:AGENT

java -cp C:\Programming\Java\untitled\out\artifacts\untitled_jar\untitled.jar utilities.GetFolderSize "C:\Program Files\EMC\DPA\agent" %2 
goto end 

:END