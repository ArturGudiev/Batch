@echo off

if "%1"=="m" goto maven
if "%1"=="a" goto azure
if "%1"=="c" goto code
if "%1"=="s" goto stack
if "%1"=="u" goto u
if "%1"=="ang" goto ang
if "%1"=="ticket" goto ticket
if "%1"=="inst" goto inst
if "%1"=="mps" goto mps
if "%1"=="request" goto request
if "%1"=="req" goto request
if "%1"=="gta" goto gta
goto end

:gta
ch https://www.youtube.com/watch?v=n_FsUCChqpU&t=6223s
goto end

:request
REM ch "https://emcesm.service-now.com/ieo/?id=sc_request&table=sc_request&sys_id=2dc5e16cdb5a6740f9095ac4dc96195a"
ch "https://emcesm.service-now.com/ieo/?id=form&table=sc_req_item&sys_id=edc5e16cdb5a6740f9095ac4dc96195a&view=sp"
goto end

:mps
ch https://mps-support.jetbrains.com/hc/en-us/community/posts/360001626339-Generation-language
goto end

:inst
ch https://www.instagram.com/p/Bp4E9sAnWyK/
goto end

:ticket
ch https://dell.service-now.com/sp?sys_id=863ff3c3dbf75f00558796c4db9619d0&id=sc_request&table=sc_req_item
goto end

:ang
ch https://stackoverflow.com/questions/51504138/radio-buttons-ng-checked-attribute-doesnt-work-in-angular
goto end

:U 
java -cp C:\Programming\Java\untitled\out\artifacts\untitled_jar\untitled.jar marketyp.Temp %2
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
