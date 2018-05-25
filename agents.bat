@echo off

if "%1"=="" goto EMPTY
if "%1"=="task" goto task
if "%1"=="wiki" goto wiki
if "%1"=="r" goto run
if "%1"=="jade" goto jade
if "%1"=="j" goto jade
if "%1"=="site" goto site
if "%1"=="pg" goto programmingGuide
if "%1"=="porto" goto porto
goto end

:porto
sa C:\Artur\University\Agents
goto end

:programmingGuide
sa C:\Artur\University\Agents\PG.pdf
goto end

:site
ch http://jade.tilab.com/
goto end

:jade
cd C:\Programming\Java\JADE-all-4.5.0\JADE-bin-4.5.0\jade\ & java -cp lib\jade.jar jade.Boot -gui -platform-id MyPlatform
goto end

:RUN 
java –classpath <JADE-classes>;. jade.Boot buyer:BookBuyerAgent
REM java -cp C:\Programming\Java\untitled\out\artifacts\untitled_jar\untitled.jar agents.BookBuyerAgent 
goto end 

:wiki
n+ C:\Artur\University\Agents\wiki.bat
goto end

:task
ch https://docs.google.com/document/d/1JgmJJv3bDRAuREf-o7iL4-pCL7WyLv5-RbzEW90QQXI/edit
goto end

:EMPTY

goto end

:END
