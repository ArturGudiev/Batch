@echo off

if "%1"=="m" goto maven
if "%1"=="a" goto azure
if "%1"=="c" goto code
if "%1"=="s" goto stack
goto end

:stack
ch https://stackoverflow.com/questions/50608200/print-javascripts-method-name-in-idea-live-template
goto end

:code
cc 9Z469C
goto end

:code
cc 9Z469C
goto end

:COPY
echo in copy
cc "public static void main(String[] args) {    Boot.main("-agents ".split(" "));}"
goto end

:azure
ch https://stackoverflow.com/questions/50344436/copy-to-clip-in-azure-function-app
goto end

: MAVEN
@call 
@call mav i & sleep 2 & seq war  

goto end 


:END
