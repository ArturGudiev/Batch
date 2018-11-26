@echo off

if "%1"=="review" goto review
if "%1"=="" goto empty
if "%1"=="myreview" goto my_review
if "%1"=="mr" goto my_review
if "%1"=="r" goto reviews
if "%1"=="review" goto reviews
goto end

:reviews
ch https://dpa-crucible.lss.emc.com/cru?filter=toReview
goto end

:my_review
ch https://dpa-crucible.lss.emc.com/cru?filter=outbox
goto end

:EMPTY
ch https://dpa-crucible.lss.emc.com/user/gudiea
goto end 

:REVIEW
ch https://dpa-crucible.lss.emc.com/cru?filter=outbox
goto end

:END
