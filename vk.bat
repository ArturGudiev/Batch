@echo off

if "%1"=="ch" goto CHELSEA

if "%1"=="groups" goto groups
if "%1"=="gr" goto groups
if "%1"=="g" goto groups

if "%1"=="nart" goto nart
if "%1"=="maga" goto maga
if "%1"=="im" goto im
if "%1"=="football" goto football
if "%1"=="fb" goto fb
goto end

:fb
ch https://vk.com/rb_army
goto end

:IM 
start chrome https://vk.com/im
goto end

:CHELSEA
start chrome https://vk.com/chelseanews
goto end

:GROUPS
start chrome https://vk.com/groups
goto end

:NART
start chrome https://vk.com/nartspb
goto end

:MAGA
start chrome https://vk.com/matobes_maga_2017
goto end

:END
goto end