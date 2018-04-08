@echo off

if "%1"=="c" goto CONJUGATE

:TRANSLATE
for %%x in (%*) do (
	start chrome "https://en.bab.la/dictionary/german-russian/%%x"
	timeout 1
)
goto end

:CONJUGATE
start https://en.bab.la/conjugation/german/%2
goto end

:END