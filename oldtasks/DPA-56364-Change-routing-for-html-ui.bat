@echo off

if "%1"=="link" goto link
if "%1"=="" goto EMPTY
if "%1"=="ports" goto ports
if "%1"=="c" goto command
if "%1"=="command" goto command
if "%1"=="upgradecommand" goto upgradecommand
if "%1"=="uc" goto upgradecommand


if "%1"=="e" goto edit
if "%1"=="perm" goto perm
goto end

:perm
ec apollo.systemsettings.readwrite
goto end

:edit
o s ctask
goto end

:UPGRADECOMMAND
echo upgrading
initdb -D "pg_ctl -D ^"C^:^\Artur^\temp^\db^\^\^" -lC:\Program Files\EMC\DPA\services\datastore\data2

pg_upgrade -d "C:\Program Files\EMC\DPA\services\datastore\data" -D "C:\Program Files\EMC\DPA\services\datastore\data2" -b "C:\Program Files\EMC\DPA\services\datastore\engine\bin" -B "C:\Program Files\PostgresPro\10\bin\"
pg_upgrade -b C:\"Program Files"\PostgreSQL\9.6\bin\ -B C:\"Program Files"\PostgresPro\10\bin\ -d C:\"Program Files"\EMC\DPA\services\datastore\data -D C:\"Program Files"\EMC\DPA\services\datastore\data2
pg_upgrade -b C:\"Program Files"\EMC\DPA\services\datastore\engine\bin -B C:\"Program Files"\EMC\DPA\services\datastore\engine\bin2 -d C:\"Program Files"\EMC\DPA\services\datastore\data -D C:\Program Files\EMC\DPA\services\datastore\data2
goto end

:command
ec pg_upgrade
goto end

:ports
echo 5432 - ps10 & echo 5433 - ps9
goto end

:EMPTY
tk
goto end

:link
ch https://dpa-jira.lss.emc.com/browse/DS-112
goto end



:END
