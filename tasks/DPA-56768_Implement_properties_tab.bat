@echo off

if "%1"=="task" goto task 
if "%1"=="t" goto task 

if "%1"=="ht" goto ht
if "%1"=="wiki" goto wiki
if "%1"=="d" goto description
if "%1"=="des" goto description
if "%1"=="description" goto description
if "%1"=="fd" goto full_description
if "%1"=="fd1" goto full_description1
if "%1"=="dir" goto dir
if "%1"=="br" goto branch
if "%1"=="branch" goto branch
goto end

:branch
ch https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui/browse?at=refs%%2Fheads%%2Ffeature%%2FDPA-56768-Implement-properties-tab
goto end

:dir
cd C:\Artur\Work\tasks\DPA-56574_Implement_properties_tab
goto end

:full_description1
ec DPA-56768_Implement_properties_tab
goto end

:full_description
ec DPA-56768 Implement properties tab
goto end

:description
ec Implement properties tab
goto end

:TASK
ec DPA-56768
goto end

:ht
ec DPA-56718
goto end

:wiki
n+ C:\Artur\Work\tasks\DPA-56574_Implement_properties_tab\wiki.txt
goto endc
:END
