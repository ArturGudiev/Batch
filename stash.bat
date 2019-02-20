@echo off

if "%1"=="branches" goto branches
if "%1"=="br" goto branches
if "%1"=="pr" goto pull_requests
if "%1"=="new" goto new
if "%1"=="commits" goto commits
if "%1"=="source" goto source
if "%1"=="network" goto network
if "%1"=="mypr" goto mypullrequest
if "%1"=="mpr" goto merged_pull_requests
if "%1"=="" goto empty
if "%1"=="at" goto at
if "%1"=="ut" goto at
goto end

:at
	if [%2]==[] goto AT_EMPTY 
	if [%2]==[branches] goto AUTOTESTS_BRANCHES 
	if [%2]==[br] goto AUTOTESTS_BRANCHES 
	if [%2]==[pr] goto AUTOTESTS_PULL_REQUESTS 
	if [%2]==[mpr] goto AUTOTESTS_PULL_REQUESTS_MERGED
	if [%2]==[new] goto AUTOTESTS_NEW
	goto end 

	:AUTOTESTS_NEW
	REM if "%2"=="br" ch "https://dpa-stash.lss.emc.com/plugins/servlet/create-branch"
	REM if "%2"=="pr" ch "https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui/pull-requests?create"
		if [%3]==[br] (
			ch https://dpa-stash.lss.emc.com/plugins/servlet/create-branch
			goto end 
		)
		if [%3]==[pr] (
				ch https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui-automation-tests/pull-requests?create
			goto end 
		)

		goto end 
	goto end 

	:AT_EMPTY
		ch https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui-automation-tests/browse
	goto end 

	:AUTOTESTS_BRANCHES 
		ch https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui-automation-tests/branches
	goto end 
	
	:AUTOTESTS_PULL_REQUESTS
		ch https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui-automation-tests/pull-requests
	goto end 

	:AUTOTESTS_PULL_REQUESTS_MERGED
		ch "https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui-automation-tests/pull-requests?state=merged"
	goto end 

goto end

:empty 
	start chrome "https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui/browse"
goto end 

:merged_pull_requests
	ch "https://dpa-stash.lss.emc.com/projects/DPA/repos/html-ui/pull-requests?state=merged"
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
