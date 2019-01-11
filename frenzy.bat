@echo off

if "%1"=="" goto EMPTY
if "%1"=="l" goto local
if "%1"=="local" goto local
if "%1"=="remote" goto remote
if "%1"=="r" goto remote
goto end

:EMPTY
set num=%1
set prefix=%2
if [num]==[] ( set num=10 )
if [prefix]==[] ( set prefix=artur )
curl -X POST -u administrator:Serverg0d! -H 'Content-Type: application/x-www-form-urlencoded' -d "host=dpadwin2016_artur&client_prefix=%prefix%&job_name=SnoopDogg&job_level=Full&backup_job_status=failed&backup_job_size=2048&jobs_num=%num%&start_time=1546136482&backup_job_duration=24" https://localhost:9002/dpa-api/backupJobsFrenzy --insecure  
goto end


:local
set num=%2
set prefix=%3
if [num]==[] ( set num=10 )
if [prefix]==[] ( set prefix=artur )
curl -X POST -u administrator:Serverg0d! -H 'Content-Type: application/x-www-form-urlencoded' -d "host=dpadwin2016_artur&client_prefix=%prefix%&job_name=SnoopDogg&job_level=Full&backup_job_status=failed&backup_job_size=2048&jobs_num=%num%&start_time=1546136482&backup_job_duration=24" https://localhost:9002/dpa-api/backupJobsFrenzy --insecure  
goto end


:REMOTE
set num=%2
set prefix=%3
if [num]==[] ( set num=10 )
if [prefix]==[] ( set prefix=artur )
curl -X POST -u administrator:Serverg0d! -H 'Content-Type: application/x-www-form-urlencoded' -d "host=dpadwin2016_artur&client_prefix=%prefix%&job_name=SnoopDogg&job_level=Full&backup_job_status=failed&backup_job_size=2048&jobs_num=%num%&start_time=1546136482&backup_job_duration=24" https://10.98.62.166:9002/dpa-api/backupJobsFrenzy --insecure  
goto end

:END