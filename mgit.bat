@echo off

if "%1"=="" goto EMPTY
if "%1"=="do" goto do
if "%1"=="update" goto update
if "%1"=="po" goto po
if "%1"=="p" goto po
if "%1"=="2" goto po
if "%1"=="ac" goto addcommit
if "%1"=="1" goto addcommit
if "%1"=="addcommit" goto addcommit
if "%1"=="message" goto message
if "%1"=="l" goto log
if "%1"=="log" goto log
if "%1"=="ll" goto log5
if "%1"=="l5" goto log5
if "%1"=="log5" goto log5
if "%1"=="acp" goto addcommitpush
if "%1"=="addcommitpush" goto addcommitpush
if "%1"=="c" goto checkout
if "%1"=="ch" goto checkout
if "%1"=="checkout" goto checkout
if "%1"=="b" goto branch
if "%1"=="branch" goto branch
if "%1"=="rb" goto remote_branch
if "%1"=="rbranch" goto remote_branch
if "%1"=="rev" goto revert
if "%1"=="revert" goto revert
if "%1"=="remote_checkout" goto remote_checkout
if "%1"=="remc" goto remote_checkout
if "%1"=="rc" goto remote_checkout
if "%1"=="curbr" goto cur_branch
if "%1"=="" goto cur_branch
if "%1"=="cb" goto cur_branch
if "%1"=="master" goto master
if "%1"=="m" goto master
if "%1"=="ser" goto server
if "%1"=="server" goto server
goto end

:addcommitpush
echo --
echo --------------------- add ^& commit ---------------------
echo --
    @call git add --all
    @call git commit -m %2 
echo --
echo ------------------------ push ---------------------------
echo --
@call git push origin master
echo -- 
goto end


:server
git remote show origin | grep Fetch
goto end

:master
git checkout master
goto end

:cur_branch
git branch
goto end

:remote_checkout
git -c core.quotepath=false -c log.showSignature=false checkout -b %2 origin/%2 --
goto end

:revert
git chekcout .
goto end

:remote_branch
git branch -r
goto end

:branch
git branch
goto end

:checkout
git checkout %2
goto end

:log5
git log -n 5 --oneline
goto end

:log
git log --oneline
goto end

:message
git commit -m %2 
goto end

:addcommit
git add --all & git commit -m %2
goto end

:po
git push origin master
goto end

:update
REM git -c core.quotepath=false -c log.showSignature=false merge origin/master --no-stat -v
@call git -c core.quotepath=false -c log.showSignature=false fetch origin --progress --prune
@call git -c core.quotepath=false -c log.showSignature=false merge 
goto end

:do
git add --all & git commit -m "%2" & git push origin master
goto end

:EMPTY

goto end

:END
