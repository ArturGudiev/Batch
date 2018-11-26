@echo off

if "%1"=="" goto EMPTY
if "%1"=="pk" goto primarykey
if "%1"=="fk" goto fk
if "%1"=="addcolumn" goto addcolumn
if "%1"=="column" goto addcolumn
if "%1"=="ac" goto addcolumn
if "%1"=="s" goto select
if "%1"=="dc" goto dropcolumn
if "%1"=="dropcolumn" goto dropcolumn
if "%1"=="apk" goto addprimarykey
if "%1"=="rename" goto rename
if "%1"=="rc" goto renamecolumn
if "%1"=="renamecolumn" goto renamecolumn
if "%1"=="tag" goto tag
goto end

:tag
ec select tasks.task FROM tasks left join tags ON (tasks.task_id = tags.task_id) where tags.tag='life';
goto end

:renamecolumn
ec ALTER TABLE table_name RENAME COLUMN old_col_name TO new_col_name;
goto end

:rename
ec RENAME TABLE `group` TO `member`;
goto end

:addprimarykey
cc alter table %2 add column %3 int(10) unsigned primary KEY AUTO_INCREMENT;
goto end

:dropcolumn
cc alter table %2 drop column %3;
goto end

:select
cc SELECT * FROM %2;
goto end

:addcolumn
cc  ALTER TABLE %2 ADD %3 INT NOT NULL DEFAULT 0; 
goto end

:fk
cc ALTER TABLE %2 ADD CONSTRAINT fk_%3 FOREIGN KEY (%3) REFERENCES %4; 
goto end

:primarykey
ec create table task_tag (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY);
goto end

:EMPTY

goto end

:END
