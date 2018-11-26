@echo off

if "%1"=="task" goto task 
if "%1"=="t" goto task 

if "%1"=="ht" goto ht
if "%1"=="wiki" goto wiki
if "%1"=="modal" goto modal
if "%1"=="s" goto scheme
if "%1"=="scheme" goto scheme
goto end

:scheme
echo. 
echo 	my.component.ts           ---    alerts.component.ts              ---    user-properties-form.component.ts
echo         home-group.component.ts   ---    scope-filter-form.component.ts   ---    home-group-form.component.ts
echo. 
goto end 

:modal
ch https://dpa-jira.lss.emc.com/browse/DPA-56466
goto end

:wiki
n+ C:\Artur\Work\tasks\DPA-56467_Add_scope_tree.txt
goto end

:ht
ec DPA-56440
goto end


:TASK
ec DPA-56574
goto end

:END
