@echo off

if "%1"=="" goto EMPTY
if "%1"=="l" goto launch
if "%1"=="lplatform" goto launchplatform
if "%1"=="c" goto compile
if "%1"=="compile" goto compile
if "%1"=="ping" goto ping
if "%1"=="2ping" goto 2ping
if "%1"=="ping2" goto 2ping
if "%1"=="container" goto container
if "%1"=="cl" goto classes
if "%1"=="classes" goto classes
if "%1"=="ra" goto runagent
if "%1"=="r" goto runagent
if "%1"=="examples" goto examples
if "%1"=="doc" goto doc
if "%1"=="hw" goto hw
if "%1"=="clean" goto clean 
if "%1"=="conf" goto conf 
if "%1"=="tut" goto tut
goto end

:tut
ch http://jade.tilab.com/documentation/tutorials-guides/
goto end

:conf 
	if "%2"=="hw" cc -agents Artur:HelloWorldAgent;Alan:HelloWorldAgent
	if "%2"=="ping" cc -agents ping1:PingAgent;ping2:PingAgent
goto end 

:clean 
@call rm -rf C:\Programming\Java\JADE-all-4.5.0\JADE-bin-4.5.0\jade\classes\examples
@call mkdir C:\Programming\Java\JADE-all-4.5.0\JADE-bin-4.5.0\jade\classes\examples
goto end 

:HW
@call rm -rf C:\Programming\Java\JADE-all-4.5.0\JADE-bin-4.5.0\jade\classes\examples
@call mkdir C:\Programming\Java\JADE-all-4.5.0\JADE-bin-4.5.0\jade\classes\examples

@call cd C:\Programming\Java\JADE-all-4.5.0\examples\jade\ 
@call javac -classpath lib\jade.jar -d C:\Programming\Java\JADE-all-4.5.0\JADE-bin-4.5.0\jade\classes src\examples\hello\*.java

@call nav jade
@call java -classpath lib\jade.jar;classes jade.Boot -agents Artur:examples.hello.HelloWorldAgent;Alan:examples.hello.HelloWorldAgent

goto end

:doc
cd C:\Programming\Java\JADE-all-4.5.0\doc"
goto end

:compile
cd C:\Programming\Java\JADE-all-4.5.0\examples\jade\ 
javac -classpath lib\jade.jar -d C:\Programming\Java\JADE-all-4.5.0\JADE-bin-4.5.0\jade\classes src\examples\PingAgent\*.java
REM javac -classpath lib\jade.jar -d C:\Programming\Java\JADE-all-4.5.0\JADE-bin-4.5.0\jade\classes src\examples\hello\*.java
goto end

:runagent
@call nav jade 
java -classpath lib\jade.jar;classes jade.Boot -agents Artur:examples.hello.HelloWorldAgent;Alan:examples.hello.HelloWorldAgent
REM nav jade & java -classpath lib\jade.jar;classes jade.Boot -agents buyer:examples.bookTrading.BookBuyerAgent(The-Lord-of-the-rings)
REM        java -classpath ..\..\..\lib\jade.jar;. jade.Boot -agents buyer:examples.bookTrading.BookBuyerAgent
goto end

:examples
start explorer "C:\Programming\Java\JADE-all-4.5.0\examples\jade\src\examples"
goto end
REM javac –classpath ..\..\..\lib\jade.jar BookBuyerAgent.java
REM java –classpath ..\..\..\lib\jade.jar;. jade.Boot -agents buyer:bookTrading.BookBuyerAgent

:classes
tree C:\Programming\Java\JADE-all-4.5.0\JADE-bin-4.5.0\jade\classes\examples /F
REM start explorer C:\Programming\Java\JADE-all-4.5.0\JADE-bin-4.5.0\jade\classes\examples
goto end

:container
nav jade & java -cp lib\jade.jar;classes jade.Boot -container
goto end

:2ping
nav jade & java -cp lib\jade.jar;classes jade.Boot -gui -agents ping1:examples.PingAgent.PingAgent;ping2:examples.PingAgent.PingAgent 
goto end

:ping
nav jade & java -cp lib\jade.jar;classes jade.Boot -gui -agents ping1:examples.PingAgent.PingAgent
goto end


:launchplatform
nav jade & java -cp lib\jade.jar jade.Boot -gui -platform-id MyPlatform
goto end

:launch
nav jade & java -cp lib\jade.jar jade.Boot -gui
goto end

:EMPTY

goto end

:END
