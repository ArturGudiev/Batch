@echo off

if "%1" == e (
    code C:\Programming\Python\perf.py
    goto end 
)

python C:\Programming\Python\perf.py %*
:end