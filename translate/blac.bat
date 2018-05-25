@echo off

for %%x in (%*) do (
	start https://en.bab.la/conjugation/german/%%x
	timeout 1
)