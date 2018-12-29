@echo off

REM C:\"Program Files"\PostgresPro\10\bin\psql.exe -U postgres -d postgres -a -c %* 
psql -U postgres -d postgres -a -c %* 
