@echo off
setlocal enabledelayedexpansion

set args=0
for %%I in (%*) do set /a "args+=1"
for /l %%I in (1,1,%args%) do (
    set /a idx=0
    for %%a in (%*) do (
        set /a "idx+=1"
        if !idx! geq %%I set /p "=%%a "<NUL
    )
    echo;
)