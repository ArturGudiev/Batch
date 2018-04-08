@echo off

if "%1"=="branches" goto branches
if "%1"=="pr" goto pullrequests
if "%1"=="new" goto new
if "%1"=="commits" goto commits
if "%1"=="source" goto source
if "%1"=="network" goto network
start chrome "https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui/browse"
goto end

:BRANCHES
ch "https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui/branches"
goto end

:PULLREQUESTS
ch "https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui/pull-requests"
goto end

:NETWORK
ch "https://dpa-stash.lss.emc.com/plugins/servlet/network/DPA/html-ui"
goto end

:COMMITS
ch "https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui/commits?merges=include"
goto end

:SOURCE
ch "https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui/browse"
goto end

:NEW
	if "%2"=="branch" ch "https://dpa-stash.lss.emc.com/plugins/servlet/create-branch"
	if "%2"=="pr" ch "https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui/pull-requests?create"
goto end

:END