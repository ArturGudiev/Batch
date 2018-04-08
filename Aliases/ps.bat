@echo off

if "%1"=="u" goto UPDATE
if "%1"=="new" goto new
if "%1"=="base" goto base
if "%1"=="all" goto all
if "%1"=="inc" goto increment
if "%1"=="fapl" goto fapl

if "%1"=="soccer" goto soccer

if "%1"=="select" goto select
if "%1"=="s" goto select


goto end

:UPDATE

	if "%2"=="ger" set desc='GerLex'
	if "%2"=="psy" set desc='Psy'
	if "%2"=="phil" set desc='Phil' 
	if "%2"=="des" set desc='Design'
	if "%2"=="design" set desc='Design'
	if "%2"=="lat" set desc='Latin'
	if "%2"=="latin" set desc='Latin'
	if "%2"=="c" set desc='C-book'
	if "%2"=="tw" set desc='twine-6'
	if "%2"=="twine" set desc='twine-6'
	if "%2"=="maven" set desc='Maven'
	if "%2"=="java" set desc='Java'
	if "%2"=="irself" set desc='IrSelf'
	if "%2"=="networks" set desc='Networks'
	if "%2"=="net" set desc='Networks'
	if "%2"=="dsl" set desc='DSL'
	if "%2"=="chess" set desc='Chess'
	if "%2"=="irlit" set desc='IrLit'
	if "%2"=="r59" set desc='Russian59'
	if "%2"=="html" set desc='HTML'
	cc "update public.task set current=%3 where description=%desc%;" 
goto end

:SELECT
	if "%2"=="design" cc "select description, current from public.task where description='Design';"
	if "%2"=="networks" cc "select description, current from public.task where description='Networks';"
	if "%2"=="irself" cc "select description, current from public.task where description='IrSelf';"
	
goto end

:INCREMENT
set var=%2
if "%2"=="" set var=1
cc "update public.records set count=count+%var% where description='fapl' and date=current_date;" 
goto end

:BASE 
open psql
goto end

:NEW
cc "insert into public.task values ('%2',%3,%4,ROUND(cast(%4 as float)/cast(%3 as float), 2),false);"
goto end

:ALL
cc "select description, points,current from public.task where done=false;"
goto end

:FAPL
cc "insert into public.records values ('fapl',current_date, 1);"
goto end

:SOCCER
cc "insert into public.records values ('soccer',current_date, 1);"
goto end




:END