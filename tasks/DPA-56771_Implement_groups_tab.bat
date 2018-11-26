@echo off

if "%1"=="task" goto task 
if "%1"=="t" goto task 

if "%1"=="ht" goto HISTORYTASK
if "%1"=="wiki" goto wiki
if "%1"=="d" goto description
if "%1"=="des" goto description
if "%1"=="description" goto description
if "%1"=="fd" goto full_description
if "%1"=="fd1" goto full_description1
if "%1"=="dir" goto dir
if "%1"=="br" goto branch
if "%1"=="branch" goto branch
if "%1"=="e" goto edit
goto end

:branch
ch https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui/compare/commits?sourceBranch=refs%%2Fheads%%2Ffeature%%2FDPA-56770-Implement-policy-tab
goto end


:full_description1
ec DPA-56771_Implement_groups_tab
goto end

:full_description
ec DPA-56771 Implement groups tab
goto end

:description
ec Implement groups tab
goto end

:TASK
ec DPA-56771
goto end

:HISTORYTASK
	if "%2"=="" (ec DPA-56718)
	if "%2"=="d" (echo DPA-56718 See selected alert details)
goto end


:dir
cd C:\Artur\Work\tasks\DPA-56771_Implement_groups_tab\
goto end

:wiki
n+ C:\Artur\Work\tasks\DPA-56771_Implement_groups_tab\wiki.txt
goto end



:edit
n+ C:\Programming\Batch\ctask.bat
goto end

:END
