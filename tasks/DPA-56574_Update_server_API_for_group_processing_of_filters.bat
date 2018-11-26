@echo off

if "%1"=="task" goto task 
if "%1"=="t" goto task 

if "%1"=="ht" goto ht
if "%1"=="wiki" goto wiki
if "%1"=="modal" goto modal
if "%1"=="s" goto scheme
if "%1"=="scheme" goto scheme
if "%1"=="d" goto description
if "%1"=="des" goto description
if "%1"=="description" goto description
if "%1"=="rest" goto restapi
if "%1"=="restapi" goto restapi
if "%1"=="all" goto all_filters

if "%1"=="nav" goto nav_to_dir
if "%1"=="dir" goto nav_to_dir
if "%1"=="one" goto onefilter
if "%1"=="m" goto move
if "%1"=="move" goto move
if "%1"=="build" goto build
if "%1"=="fd" goto full_description
if "%1"=="fd1" goto full_description1
goto end

:full_description1
ec DPA-56574_Update_server_API_for_group_processing_of_filters
goto end

:full_description
ec DPA-56574 Update server API for group processing of filters
goto end

:build
s par & mav i
goto end

:move
s par
goto end

:onefilter
n+ C:\Artur\Work\tasks\DPA-56574_Update_server_api_for_group_of_filters_processing\one_filter.xml
goto end

:nav_to_dir
cd C:\Artur\Work\tasks\DPA-56574_Update_server_api_for_group_of_filters_processing"
goto end

:all_filters
n+ C:\Artur\Work\tasks\DPA-56574_Update_server_api_for_group_of_filters_processing\all_filters.xml
goto end 

:restapi
cd C:\Src\EMC\DPA\trunk\server\dpa-parent\dpa-restapi"
goto end

:description
ec Update server API for group processing of filters
goto end

:wiki
n+ C:\Artur\Work\tasks\DPA-56574_Update_server_api_for_group_of_filters_processing\DPA-56574_Update_server_api.txt
goto end

:ht
ec DPA-56440
goto end


:TASK
ec DPA-56574
goto end

:END
