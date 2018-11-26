@echo off

if "%1"=="task" goto task 
if "%1"=="t" goto task 

if "%1"=="ht" goto HISTORYTASK
if "%1"=="wiki" goto wiki
if "%1"=="d" goto description
if "%1"=="des" goto description
if "%1"=="description" goto description
if "%1"=="fd" goto fd
if "%1"=="fd1" goto full_description1
if "%1"=="dir" goto dir
if "%1"=="br" goto branch
if "%1"=="branch" goto branch
if "%1"=="e" goto edit
if "%1"=="ahk" goto autohotkey 
if "%1"=="a" goto autohotkey 
if "%1"=="wikiapi" goto wikiapi
if "%1"=="wapi" goto wikiapi
if "%1"=="service" goto service
if "%1"=="s" goto service
if "%1"=="0" goto year2010
if "%1"=="10" goto year2010
if "%1"=="2010" goto year2010
if "%1"=="8" goto year2018
if "%1"=="18" goto year2018
if "%1"=="2018" goto year2018
goto end

:year2018
date 03-10-2018
goto end

:year2010
date 03-10-2010
goto end

:service
ch https://dpa-wiki.lss.emc.com/display/API/License+Service
goto end

:wikiapi
ch https://dpa-wiki.lss.emc.com/display/API/Licenses+REST+API+-+work+in+progress
goto end

:AUTOHOTKEY 
	if "%2"=="e" (n+ C:\Artur\Work\tasks\DPA-57095_Modify_license_api_service\ctask.ahk) 
	if "%2"<>"e" (start C:\Artur\Work\tasks\DPA-57095_Modify_license_api_service\ctask.ahk)
goto end 

:TASK
ec DPA-57095
goto end

:HISTORYTASK
	if "%2"=="d" (echo DPA-57091  As a user I want "Licenses Expiration" modal )
	if "%2"=="" (ec DPA-57091)
goto end

:description
ec Modify license-api-service
goto end

:fd
ec DPA-57095 Modify license-api-service
goto end

:full_description1
ec DPA-57095_Modify_license_api_service
goto end

:wiki
n+ C:\Artur\Work\tasks\DPA-57095_Modify_license_api_service\wiki.txt
goto end

:branch
REM ch https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui/compare/commits?sourceBranch=refs%%2Fheads%%2Ffeature%%2FDPA-56770-Implement-policy-tab
goto end

:dir
cd C:\Artur\Work\tasks\DPA-57095_Modify_license_api_service\
goto end

:edit
n+ C:\Programming\Batch\ctask.bat
goto end

:END
