@echo off

if "%1"=="branches" goto branches
if "%1"=="br" goto branches
if "%1"=="pr" goto pull_requests
if "%1"=="new" goto new
if "%1"=="commits" goto commits
if "%1"=="source" goto source
if "%1"=="network" goto network
start chrome "https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui/browse"
if "%1"=="mpr" goto mypullrequest
goto end

:mypullrequest
ch "https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui/pull-requests?state=OPEN&reviewing=true"
goto end

:BRANCHES
ch "https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui/branches"
goto end

:PULL_REQUESTS
	if "%2"=="" goto PR_EMPTY
	if "%2"=="r" goto PR_REVIEW 
	if "%2"=="-r" goto PR_REVIEW 
	
	:PR_EMPTY
	ch "https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui/pull-requests"
	goto end

	:PR_REVIEW
	
	ch "https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui/pull-requests?state=OPEN&reviewing=true"
	goto end 
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
	if "%2"=="br" ch "https://dpa-stash.lss.emc.com/plugins/servlet/create-branch"
	if "%2"=="pr" ch "https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui/pull-requests?create"
goto end

:END
